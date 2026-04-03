begin_hunk_0
  %.0291423.i = phi i64 [ 1, %.loopexit357.i ], [ %i.hf, %.preheader361._crit_edge.i ] ; 28 uses
  %i.iu = add nuw nsw i64 %.0291423.i, 1          ; 12 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0291423.i ; 3 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !111 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0291423.i ; 6 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !111 ; 2 uses
  %invariant.gep383.i = getelementptr [8 x i8], ptr %i.f, i64 %i.iy ; 3 uses
end_hunk_0
begin_hunk_1
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !111
  store i64 %i.mc, ptr %i.iv, align 8, !tbaa !111
  store i64 %i.iw, ptr %i.mb, align 8, !tbaa !111
  br label %.lr.ph421.i

.lr.ph421.i:                                      ; preds = %bb.t, %.loopexit359.i
  %4 = load i64, ptr %i.iv, align 8, !tbaa !111   ; 3 uses
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %4 ; 4 uses
  %i.me = load i64, ptr %i.ix, align 8, !tbaa !111 ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.me
end_hunk_1
