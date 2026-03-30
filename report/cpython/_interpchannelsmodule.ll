begin_hunk_0
  %i.l = getelementptr [16 x i8], ptr %i.g, i64 %.0173.i ; 2 uses
  %i.m = load i64, ptr %.0164.i, align 8, !tbaa !51
  %i.n = getelementptr i8, ptr %i.j, i64 24
  %2 = load i64, ptr %i.n, align 8
  store i64 %i.m, ptr %i.l, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
end_hunk_0
