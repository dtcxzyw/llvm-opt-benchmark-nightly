begin_hunk_0
inline.NumInlined: 35
inline.NumDeleted: 12
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1_@Predictor10_SSE2:bb.a
  %i.m = bitcast <16 x i8> %i.l to <8 x i16>
  %i.n = bitcast <16 x i8> %i.i to <8 x i16>
  %i.o = add nuw nsw <8 x i16> %i.m, %i.n
  %i.p = lshr <8 x i16> %i.o, splat (i16 1)
  %i.q = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.d, i64 0
  %i.r = bitcast <4 x i32> %i.q to <16 x i8>
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
end_hunk_1
begin_hunk_2_@Predictor10_SSE2:bb.a
  %i.w = bitcast <16 x i8> %i.v to <8 x i16>
  %i.x = bitcast <16 x i8> %i.s to <8 x i16>
  %i.y = add nuw nsw <8 x i16> %i.w, %i.x
  %i.z = lshr <8 x i16> %i.y, splat (i16 1)
  %i.aa = add nuw nsw <8 x i16> %i.z, %i.p
  %2 = lshr <8 x i16> %i.aa, splat (i16 1)
  %i.ab = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %2, <8 x i16> poison)
  %i.ac = bitcast <16 x i8> %i.ab to <4 x i32>
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  ret i32 %i.ad
end_hunk_2
