inline.NumInlined: 158
inline.NumDeleted: 36
begin_hunk_0_@tdefl_compress_block:bb.a
bb.as:                                            ; preds = %bb.ar
  %i.sl = getelementptr i8, ptr %0, i64 36939
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !7
  %.not.28.i = icmp eq i8 %i.sm, 0
  %spec.select.i.a = select i1 %.not.28.i, i32 257, i32 258
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0.lcssa.i.a = phi i32 [ 286, %bb.q ], [ 268, %bb.ai ], [ 285, %bb.r ], [ %spec.select.i.a, %bb.as ], [ 284, %bb.s ], [ 271, %bb.af ], [ 283, %bb.t ], [ 259, %bb.ar ], [ 282, %bb.u ], [ 265, %bb.al ], [ 281, %bb.v ], [ 260, %bb.aq ], [ 280, %bb.w ], [ 270, %bb.ag ], [ 279, %bb.x ], [ 261, %bb.ap ], [ 278, %bb.y ], [ 267, %bb.aj ], [ 277, %bb.z ], [ 262, %bb.ao ], [ 276, %bb.aa ], [ 269, %bb.ah ], [ 275, %bb.ab ], [ 263, %bb.an ], [ 274, %bb.ac ], [ 266, %bb.ak ], [ 273, %bb.ad ], [ 264, %bb.am ], [ 272, %bb.ae ] ; 3 uses
  %i.sn = getelementptr i8, ptr %0, i64 36999
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !7
  %.not297.i = icmp eq i8 %i.so, 0
end_hunk_0
begin_hunk_1_@tdefl_compress_block:bb.a
bb.bv:                                            ; preds = %bb.bu
  %i.ur = getelementptr i8, ptr %0, i64 36971
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !7
  %.not297.28.i = icmp eq i8 %i.us, 0
  %spec.select479.i = select i1 %.not297.28.i, i32 1, i32 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.0261.lcssa.i.a = phi i32 [ 30, %bb.at ], [ 12, %bb.bl ], [ 29, %bb.au ], [ %spec.select479.i, %bb.bv ], [ 28, %bb.av ], [ 15, %bb.bi ], [ 27, %bb.aw ], [ 3, %bb.bu ], [ 26, %bb.ax ], [ 9, %bb.bo ], [ 25, %bb.ay ], [ 4, %bb.bt ], [ 24, %bb.az ], [ 14, %bb.bj ], [ 23, %bb.ba ], [ 5, %bb.bs ], [ 22, %bb.bb ], [ 11, %bb.bm ], [ 21, %bb.bc ], [ 6, %bb.br ], [ 20, %bb.bd ], [ 13, %bb.bk ], [ 19, %bb.be ], [ 7, %bb.bq ], [ 18, %bb.bf ], [ 10, %bb.bn ], [ 17, %bb.bg ], [ 8, %bb.bp ], [ 16, %bb.bh ] ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %2 = zext nneg i32 %.0.lcssa.i.a to i64         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 2 dereferenceable(1) %i.ut, i64 %2, i1 false)
  %i.uu = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 36970
  %3 = zext nneg i32 %.0261.lcssa.i.a to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.uu, ptr noundef nonnull align 2 dereferenceable(1) %i.uv, i64 %3, i1 false)
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 34378 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %i.uw, i8 0, i64 38, i1 false)
  %i.ux = add nuw nsw i32 %.0261.lcssa.i.a, %.0.lcssa.i.a
end_hunk_1
