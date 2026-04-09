begin_hunk_0_@adler32_simd_:bb.a
  br i1 %.not135, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0139 = phi ptr [ %i.y, %bb.c ], [ %1, %bb.a ]
  %.0112138 = phi i32 [ %i.ao, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.0116137 = phi i32 [ %i.ap, %bb.c ], [ %i.b, %bb.a ]
  %.0123136 = phi i64 [ %i.aa, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %spec.select131 = tail call i64 @llvm.umin.i64(i64 %.0123136, i64 173) ; 2 uses
  %spec.select = trunc nuw nsw i64 %spec.select131 to i32 ; 2 uses
  %i.e = mul nuw nsw i32 %.0112138, %spec.select
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.e, i64 0
end_hunk_0
begin_hunk_1_@adler32_simd_:bb.a
  %i.v = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.k, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.w = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.v, <8 x i16> splat (i16 1))
  %i.x = add <4 x i32> %i.r, %i.w                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 32 ; 3 uses
  %i.z = add i32 %.1125, -1                       ; 2 uses
  %.not129 = icmp eq i32 %i.z, 0
  br i1 %.not129, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.aa = sub i64 %.0123136, %spec.select131      ; 2 uses
  %i.ab = shl <4 x i32> %i.l, splat (i32 5)
  %i.ac = add <4 x i32> %i.x, %i.ab               ; 2 uses
  %i.ad = shufflevector <4 x i32> %i.u, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
end_hunk_1
begin_hunk_2_@adler32_simd_:bb.a
._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0116.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.ap, %bb.c ] ; 3 uses
  %.0112.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.ao, %bb.c ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.y, %bb.c ] ; 18 uses
  %.not127 = icmp eq i64 %i.d, 0
  br i1 %.not127, label %bb.f, label %bb.d

end_hunk_2
