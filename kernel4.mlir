func @main(%alpha: f32, %beta: f32, %C: memref<4x4xf32>, %A: memref<4x4xf32>, %B: memref<4x4xf32>) {
  affine.for %i = 0 to 4 {
    affine.for %j = 0 to 4 {
      %0 = affine.load %C[%i, %j] : memref<4x4xf32>
      %1 = arith.mulf %beta, %0 : f32
      affine.store %1, %C[%i, %j] : memref<4x4xf32>
      affine.for %k = 0 to 4 {
        %2 = affine.load %A[%i, %k] : memref<4x4xf32>
        %3 = affine.load %B[%k, %j] : memref<4x4xf32>
        %4 = affine.load %C[%i, %j] : memref<4x4xf32>
        %5 = arith.mulf %alpha, %2 : f32
        %6 = arith.mulf %5, %3 : f32
        %7 = arith.addf %4, %6 : f32
        affine.store %7, %C[%i, %j] : memref<4x4xf32>
      }
    }
  }
  return
}
