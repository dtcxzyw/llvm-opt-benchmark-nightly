inline.NumInlined: 514
inline.NumDeleted: 215
begin_hunk_0_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.preheader.3, %bb.l, %bb.k, %bb.j, %.preheader.2, %bb.i, %bb.h, %bb.g, %.preheader.1, %bb.f, %bb.e, %bb.d, %.preheader
  %.1183286.lcssa = phi i64 [ %.0.copyload.i161, %.preheader ], [ %i.ab, %bb.d ], [ %i.ao, %bb.e ], [ %i.bb, %bb.f ], [ %.0.copyload.i163, %.preheader.1 ], [ %i.cb, %bb.g ], [ %i.co, %bb.h ], [ %i.db, %bb.i ], [ %.0.copyload.i163.1, %.preheader.2 ], [ %i.eb, %bb.j ], [ %i.eo, %bb.k ], [ %i.fb, %bb.l ], [ %.0.copyload.i163.2, %.preheader.3 ], [ %i.gb, %bb.m ], [ %i.go, %bb.n ], [ %i.hb, %bb.o ]
  %.lcssa302.wide = phi i8 [ 0, %.preheader ], [ 4, %bb.d ], [ 8, %bb.e ], [ 12, %bb.f ], [ 16, %.preheader.1 ], [ 20, %bb.g ], [ 24, %bb.h ], [ 28, %bb.i ], [ 32, %.preheader.2 ], [ 36, %bb.j ], [ 40, %bb.k ], [ 44, %bb.l ], [ 48, %.preheader.3 ], [ 52, %bb.m ], [ 56, %bb.n ], [ 60, %bb.o ]
  %.lcssa302.wide.a = phi i64 [ 0, %.preheader ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %.preheader.1 ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %.preheader.2 ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %.preheader.3 ], [ 13, %bb.m ], [ 14, %bb.n ], [ 15, %bb.o ] ; 2 uses
  %.lcssa300 = phi i64 [ %i.y, %.preheader ], [ %i.ak, %bb.d ], [ %i.ax, %bb.e ], [ %i.bk, %bb.f ], [ %i.bx, %.preheader.1 ], [ %i.ck, %bb.g ], [ %i.cx, %bb.h ], [ %i.dk, %bb.i ], [ %i.dx, %.preheader.2 ], [ %i.ek, %bb.j ], [ %i.ex, %bb.k ], [ %i.fk, %bb.l ], [ %i.fx, %.preheader.3 ], [ %i.gk, %bb.m ], [ %i.gx, %bb.n ], [ %i.hk, %bb.o ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa300
  store i8 %.lcssa302.wide, ptr %.0117, align 1, !tbaa !7
  %i.hr = getelementptr inbounds nuw i8, ptr %.0117, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hr, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0118, i64 16, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.m, i64 %.lcssa302.wide.a
end_hunk_0
