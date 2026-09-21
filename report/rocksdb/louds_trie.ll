Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/louds_trie?download=true
inline.NumInlined: 2107
inline.NumDeleted: 725
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7rocksdb10trie_index17LoudsTrieIterator8SeekImplILb1EEEbRKNS_5SliceE:bb.a
  store i32 %i.te, ptr %i.c, align 8, !tbaa !36
  %i.tf = zext i32 %i.td to i64
  %i.tg = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.tf
  store i8 %i.tc, ptr %i.th, align 1, !tbaa !62
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.0508.lcssa1580
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !62
  %i.tk = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0508.lcssa1580
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !62
  %i.tm = icmp ult i8 %i.tj, %i.tl
  br i1 %i.tm, label %bb.cc, label %bb.cf

.lr.ph1271:                                       ; preds = %.critedge, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit647
  %i.tn = phi ptr [ %i.ud, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit647 ], [ %i.lc, %.critedge ]
  %.05061270 = phi i16 [ %i.vq, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit647 ], [ 0, %.critedge ]
  %.05071269 = phi i64 [ %i.vp, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit647 ], [ %i.mu, %.critedge ]
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 736
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !80
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.05071269
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ts = zext i32 %i.tr to i64                   ; 2 uses
  store i64 %i.ts, ptr %5, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.tt = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 384
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !74
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.ts
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !62
  %i.ty = load i32, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.tz = add i32 %i.ty, 1
  store i32 %i.tz, ptr %i.c, align 8, !tbaa !36
  %i.ua = zext i32 %i.ty to i64
  %i.ub = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.ua
  store i8 %i.tx, ptr %i.uc, align 1, !tbaa !62
  %i.ud = load ptr, ptr %i.j, align 8, !tbaa !41  ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 400 ; 4 uses
  %i.uf = add i32 %i.tr, 1
  %i.ug = zext i32 %i.uf to i64                   ; 3 uses
  %i.uh = lshr i64 %i.ug, 8                       ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ud, i64 408
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !69
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.uh
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !70
  %i.um = zext i32 %i.ul to i64                   ; 4 uses
  %i.un = shl nuw nsw i64 %i.uh, 2                ; 4 uses
  %i.uo = lshr i64 %i.ug, 6                       ; 2 uses
  %i.up = sub nsw i64 %i.uo, %i.un
  switch i64 %i.up, label %bb.ca [
    i64 3, label %bb.bx
    i64 2, label %._crit_edge.i644
    i64 1, label %._crit_edge20.i637
  ]

._crit_edge20.i637:                               ; preds = %.lr.ph1271
  %.pre21.i638 = load ptr, ptr %i.ue, align 8, !tbaa !64
  br label %bb.bz

._crit_edge.i644:                                 ; preds = %.lr.ph1271
  %.pre.i645 = load ptr, ptr %i.ue, align 8, !tbaa !64
  br label %bb.by

bb.bx:                                            ; preds = %.lr.ph1271
  %i.uq = load ptr, ptr %i.ue, align 8, !tbaa !64 ; 2 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.uq, i64 %i.un
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !65
  %i.uu = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ut)
  %i.uv = add nuw nsw i64 %i.uu, %i.um
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %._crit_edge.i644
  %i.uw = phi ptr [ %i.uq, %bb.bx ], [ %.pre.i645, %._crit_edge.i644 ] ; 2 uses
  %.0.i646 = phi i64 [ %i.uv, %bb.bx ], [ %i.um, %._crit_edge.i644 ]
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.un
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !65
  %i.va = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.uz)
  %i.vb = add nuw nsw i64 %i.va, %.0.i646
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge20.i637
  %i.vc = phi ptr [ %i.uw, %bb.by ], [ %.pre21.i638, %._crit_edge20.i637 ]
  %.1.i639 = phi i64 [ %i.vb, %bb.by ], [ %i.um, %._crit_edge20.i637 ]
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.un
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !65
  %i.vf = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ve)
  %i.vg = add nuw nsw i64 %i.vf, %.1.i639
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.lr.ph1271
  %.2.i640 = phi i64 [ %i.um, %.lr.ph1271 ], [ %i.vg, %bb.bz ] ; 2 uses
  %i.vh = and i64 %i.ug, 63                       ; 2 uses
  %.not.i641 = icmp eq i64 %i.vh, 0
  br i1 %.not.i641, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit647, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %notmask.i642 = shl nsw i64 -1, %i.vh
  %i.vi = xor i64 %notmask.i642, -1
  %i.vj = load ptr, ptr %i.ue, align 8, !tbaa !64
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.uo
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !65
  %i.vm = and i64 %i.vl, %i.vi
  %i.vn = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.vm)
  %i.vo = add nuw nsw i64 %i.vn, %.2.i640
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit647

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit647: ; preds = %bb.ca, %bb.cb
  %.3.i643 = phi i64 [ %i.vo, %bb.cb ], [ %.2.i640, %bb.ca ]
  %i.vp = add nsw i64 %.3.i643, -1                ; 2 uses
  %i.vq = add nuw i16 %.05061270, 1               ; 2 uses
  %exitcond1496.not = icmp eq i16 %i.vq, %.0508.lcssa
  br i1 %exitcond1496.not, label %._crit_edge1272.loopexit, label %.lr.ph1271, !llvm.loop !183

bb.cc:                                            ; preds = %._crit_edge1272
  %i.vr = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 400
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !64
  %i.vu = lshr i64 %i.sx, 6
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.vu
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !65
  %i.vx = and i64 %i.sx, 63
  %i.vy = lshr i64 %i.vw, %i.vx
  %i.vz = trunc i64 %i.vy to i1
  br i1 %i.vz, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wa = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.sx)
  store i64 %i.wa, ptr %i.b, align 8, !tbaa !35
  store i8 1, ptr %i.a, align 8, !tbaa !34
  br label %.thread920

bb.ce:                                            ; preds = %bb.cc
  %i.wb = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.sx)
  %i.wc = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext false, i64 noundef %i.wb)
  br label %.thread920

bb.cf:                                            ; preds = %._crit_edge1272
  %i.wd = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(281) %0)
  br label %.thread920

bb.cg:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit625
  %.not539 = icmp eq i32 %i.pf, 0
  br i1 %.not539, label %bb.da, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.we = load ptr, ptr %1, align 8, !tbaa !61
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.w
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 1 ; 2 uses
  %i.wh = zext nneg i32 %i.pf to i64
  %i.wi = call i32 @memcmp(ptr noundef nonnull %i.wg, ptr noundef %i.pb, i64 noundef %i.wh) #25 ; 2 uses
  %i.wj = icmp slt i32 %i.wi, 0
  br i1 %i.wj, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.mu
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.wm = zext i32 %i.wl to i64                   ; 6 uses
  store i64 %i.wm, ptr %7, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.wn = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 384
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !74
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 %i.wm
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !62
  %i.ws = load i32, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.wt = add i32 %i.ws, 1
  store i32 %i.wt, ptr %i.c, align 8, !tbaa !36
  %i.wu = zext i32 %i.ws to i64
  %i.wv = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.wu
  store i8 %i.wr, ptr %i.ww, align 1, !tbaa !62
  %i.wx = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 400
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !64
  %i.xa = lshr i64 %i.wm, 6
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.xa
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !65
  %i.xd = and i64 %i.wm, 63
  %i.xe = lshr i64 %i.xc, %i.xd
  %i.xf = trunc i64 %i.xe to i1
  br i1 %i.xf, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.xg = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.wm)
  store i64 %i.xg, ptr %i.b, align 8, !tbaa !35
  store i8 1, ptr %i.a, align 8, !tbaa !34
  br label %.thread920

bb.ck:                                            ; preds = %bb.ci
  %i.xh = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.wm)
  %i.xi = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext false, i64 noundef %i.xh)
  br label %.thread920

bb.cl:                                            ; preds = %bb.ch
  %.not540 = icmp eq i32 %i.wi, 0
  br i1 %.not540, label %.preheader, label %.preheader965

.preheader965:                                    ; preds = %bb.cl, %bb.cm
  %indvars.iv1501 = phi i64 [ %indvars.iv.next1502, %bb.cm ], [ 0, %bb.cl ] ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wg, i64 %indvars.iv1501
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !62
  %i.xl = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv1501
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !62
  %i.xn = icmp eq i8 %i.xk, %i.xm
  br i1 %i.xn, label %bb.cm, label %.critedge6

bb.cm:                                            ; preds = %.preheader965
  %indvars.iv.next1502 = add nuw i64 %indvars.iv1501, 1 ; 3 uses
  %22 = trunc nuw i64 %indvars.iv.next1502 to i32
  %23 = icmp ugt i32 %i.pf, %22
  br i1 %23, label %.preheader965, label %.critedge6, !llvm.loop !184

.critedge6:                                       ; preds = %bb.cm, %.preheader965
  %.0477.lcssa.in = phi i64 [ %indvars.iv.next1502, %bb.cm ], [ %indvars.iv1501, %.preheader965 ]
  %.0477.lcssa = trunc i64 %.0477.lcssa.in to i16 ; 2 uses
  %.not1290 = icmp eq i16 %.0477.lcssa, 0
  br i1 %.not1290, label %._crit_edge1278, label %.lr.ph1277

._crit_edge1278.loopexit:                         ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit658
  %.phi.trans.insert1505 = getelementptr inbounds nuw i8, ptr %i.yt, i64 736
  %.pre1506 = load ptr, ptr %.phi.trans.insert1505, align 8, !tbaa !80
  br label %._crit_edge1278

._crit_edge1278:                                  ; preds = %._crit_edge1278.loopexit, %.critedge6
  %i.xo = phi ptr [ %i.mq, %.critedge6 ], [ %.pre1506, %._crit_edge1278.loopexit ]
  %.0476.lcssa = phi i64 [ %i.mu, %.critedge6 ], [ %i.aaf, %._crit_edge1278.loopexit ]
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %.0476.lcssa
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.xr = zext i32 %i.xq to i64                   ; 2 uses
  store i64 %i.xr, ptr %9, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.xs = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 384
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !74
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.xr
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !62
  %i.xx = load i32, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.xy = add i32 %i.xx, 1
  store i32 %i.xy, ptr %i.c, align 8, !tbaa !36
  %i.xz = zext i32 %i.xx to i64
  %i.ya = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.xz
  store i8 %i.xw, ptr %i.yb, align 1, !tbaa !62
  %i.yc = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(281) %0)
  br label %.thread920

.lr.ph1277:                                       ; preds = %.critedge6, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit658
  %i.yd = phi ptr [ %i.yt, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit658 ], [ %i.lc, %.critedge6 ]
  %.04751276 = phi i16 [ %i.aag, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit658 ], [ 0, %.critedge6 ]
  %.04761275 = phi i64 [ %i.aaf, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit658 ], [ %i.mu, %.critedge6 ]
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 736
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !80
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %.04761275
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.yi = zext i32 %i.yh to i64                   ; 2 uses
  store i64 %i.yi, ptr %8, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.yj = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 384
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !74
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.yi
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !62
  %i.yo = load i32, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.yp = add i32 %i.yo, 1
  store i32 %i.yp, ptr %i.c, align 8, !tbaa !36
  %i.yq = zext i32 %i.yo to i64
  %i.yr = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.yq
  store i8 %i.yn, ptr %i.ys, align 1, !tbaa !62
  %i.yt = load ptr, ptr %i.j, align 8, !tbaa !41  ; 4 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 400 ; 4 uses
  %i.yv = add i32 %i.yh, 1
  %i.yw = zext i32 %i.yv to i64                   ; 3 uses
  %i.yx = lshr i64 %i.yw, 8                       ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yt, i64 408
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !69
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.yx
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !70
  %i.zc = zext i32 %i.zb to i64                   ; 4 uses
  %i.zd = shl nuw nsw i64 %i.yx, 2                ; 4 uses
  %i.ze = lshr i64 %i.yw, 6                       ; 2 uses
  %i.zf = sub nsw i64 %i.ze, %i.zd
  switch i64 %i.zf, label %bb.cq [
    i64 3, label %bb.cn
    i64 2, label %._crit_edge.i655
    i64 1, label %._crit_edge20.i648
  ]

._crit_edge20.i648:                               ; preds = %.lr.ph1277
  %.pre21.i649 = load ptr, ptr %i.yu, align 8, !tbaa !64
  br label %bb.cp

._crit_edge.i655:                                 ; preds = %.lr.ph1277
  %.pre.i656 = load ptr, ptr %i.yu, align 8, !tbaa !64
  br label %bb.co

bb.cn:                                            ; preds = %.lr.ph1277
  %i.zg = load ptr, ptr %i.yu, align 8, !tbaa !64 ; 2 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.zd
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !65
  %i.zk = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.zj)
  %i.zl = add nuw nsw i64 %i.zk, %i.zc
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %._crit_edge.i655
  %i.zm = phi ptr [ %i.zg, %bb.cn ], [ %.pre.i656, %._crit_edge.i655 ] ; 2 uses
  %.0.i657 = phi i64 [ %i.zl, %bb.cn ], [ %i.zc, %._crit_edge.i655 ]
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.zd
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !65
  %i.zq = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.zp)
  %i.zr = add nuw nsw i64 %i.zq, %.0.i657
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge20.i648
  %i.zs = phi ptr [ %i.zm, %bb.co ], [ %.pre21.i649, %._crit_edge20.i648 ]
  %.1.i650 = phi i64 [ %i.zr, %bb.co ], [ %i.zc, %._crit_edge20.i648 ]
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %i.zd
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !65
  %i.zv = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.zu)
  %i.zw = add nuw nsw i64 %i.zv, %.1.i650
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.lr.ph1277
  %.2.i651 = phi i64 [ %i.zc, %.lr.ph1277 ], [ %i.zw, %bb.cp ] ; 2 uses
  %i.zx = and i64 %i.yw, 63                       ; 2 uses
  %.not.i652 = icmp eq i64 %i.zx, 0
  br i1 %.not.i652, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit658, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %notmask.i653 = shl nsw i64 -1, %i.zx
  %i.zy = xor i64 %notmask.i653, -1
  %i.zz = load ptr, ptr %i.yu, align 8, !tbaa !64
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %i.ze
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !65
  %i.aac = and i64 %i.aab, %i.zy
  %i.aad = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.aac)
  %i.aae = add nuw nsw i64 %i.aad, %.2.i651
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit658

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit658: ; preds = %bb.cq, %bb.cr
  %.3.i654 = phi i64 [ %i.aae, %bb.cr ], [ %.2.i651, %bb.cq ]
  %i.aaf = add nsw i64 %.3.i654, -1               ; 2 uses
  %i.aag = add nuw i16 %.04751276, 1              ; 2 uses
  %exitcond1497.not = icmp eq i16 %i.aag, %.0477.lcssa
  br i1 %exitcond1497.not, label %._crit_edge1278.loopexit, label %.lr.ph1277, !llvm.loop !185

bb.cs:                                            ; preds = %bb.cz
  %i.aah = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 736
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !80
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %.1436
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !70
  %i.aam = zext i32 %i.aal to i64
  %i.aan = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.aam)
  %i.aao = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext false, i64 noundef %i.aan)
  br label %.thread920

.preheader:                                       ; preds = %bb.cl, %bb.cz
  %.04341281 = phi i32 [ %i.abf, %bb.cz ], [ 0, %bb.cl ]
  %.04351280 = phi i64 [ %.1436, %bb.cz ], [ %i.mu, %bb.cl ] ; 2 uses
  %i.aap = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 736
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !80
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %.04351280
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.aau = zext i32 %i.aat to i64                 ; 2 uses
  store i64 %i.aau, ptr %10, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.aav = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 384
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !74
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.aau
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !62
  %i.aba = load i32, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.abb = add i32 %i.aba, 1
  store i32 %i.abb, ptr %i.c, align 8, !tbaa !36
  %i.abc = zext i32 %i.aba to i64
  %i.abd = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.abc
  store i8 %i.aaz, ptr %i.abe, align 1, !tbaa !62
  %i.abf = add nuw i32 %.04341281, 1              ; 3 uses
  %i.abg = icmp ult i32 %i.abf, %i.pf
  br i1 %i.abg, label %bb.ct, label %bb.cz

bb.ct:                                            ; preds = %.preheader
  %i.abh = load ptr, ptr %i.j, align 8, !tbaa !41 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 400 ; 4 uses
  %i.abj = add i32 %i.aat, 1
  %i.abk = zext i32 %i.abj to i64                 ; 3 uses
  %i.abl = lshr i64 %i.abk, 8                     ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abh, i64 408
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !69
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %i.abl
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !70
  %i.abq = zext i32 %i.abp to i64                 ; 4 uses
  %i.abr = shl nuw nsw i64 %i.abl, 2              ; 4 uses
  %i.abs = lshr i64 %i.abk, 6                     ; 2 uses
  %i.abt = sub nsw i64 %i.abs, %i.abr
  switch i64 %i.abt, label %bb.cx [
    i64 3, label %bb.cu
    i64 2, label %._crit_edge.i666
    i64 1, label %._crit_edge20.i659
  ]

._crit_edge20.i659:                               ; preds = %bb.ct
  %.pre21.i660 = load ptr, ptr %i.abi, align 8, !tbaa !64
  br label %bb.cw

._crit_edge.i666:                                 ; preds = %bb.ct
  %.pre.i667 = load ptr, ptr %i.abi, align 8, !tbaa !64
  br label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.abu = load ptr, ptr %i.abi, align 8, !tbaa !64 ; 2 uses
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %i.abr
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !65
  %i.aby = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.abx)
  %i.abz = add nuw nsw i64 %i.aby, %i.abq
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %._crit_edge.i666
  %i.aca = phi ptr [ %i.abu, %bb.cu ], [ %.pre.i667, %._crit_edge.i666 ] ; 2 uses
  %.0.i668 = phi i64 [ %i.abz, %bb.cu ], [ %i.abq, %._crit_edge.i666 ]
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %i.abr
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !65
  %i.ace = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.acd)
  %i.acf = add nuw nsw i64 %i.ace, %.0.i668
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge20.i659
  %i.acg = phi ptr [ %i.aca, %bb.cv ], [ %.pre21.i660, %._crit_edge20.i659 ]
  %.1.i661 = phi i64 [ %i.acf, %bb.cv ], [ %i.abq, %._crit_edge20.i659 ]
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %i.abr
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !65
  %i.acj = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aci)
  %i.ack = add nuw nsw i64 %i.acj, %.1.i661
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ct
  %.2.i662 = phi i64 [ %i.abq, %bb.ct ], [ %i.ack, %bb.cw ] ; 2 uses
  %i.acl = and i64 %i.abk, 63                     ; 2 uses
  %.not.i663 = icmp eq i64 %i.acl, 0
  br i1 %.not.i663, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit669, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %notmask.i664 = shl nsw i64 -1, %i.acl
  %i.acm = xor i64 %notmask.i664, -1
  %i.acn = load ptr, ptr %i.abi, align 8, !tbaa !64
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %i.abs
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !65
  %i.acq = and i64 %i.acp, %i.acm
  %i.acr = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.acq)
  %i.acs = add nuw nsw i64 %i.acr, %.2.i662
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit669

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit669: ; preds = %bb.cx, %bb.cy
  %.3.i665 = phi i64 [ %i.acs, %bb.cy ], [ %.2.i662, %bb.cx ]
  %i.act = add nsw i64 %.3.i665, -1
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit669, %.preheader
  %.1436 = phi i64 [ %i.act, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit669 ], [ %.04351280, %.preheader ] ; 2 uses
  %exitcond1498.not = icmp eq i32 %i.abf, %i.pf
  br i1 %exitcond1498.not, label %bb.cs, label %.preheader, !llvm.loop !186

bb.da:                                            ; preds = %bb.cg
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.mu
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.acw = zext i32 %i.acv to i64                 ; 6 uses
  store i64 %i.acw, ptr %11, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.acx = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 384
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !74
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.acw
  %i.adb = load i8, ptr %i.ada, align 1, !tbaa !62
  %i.adc = load i32, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.add = add i32 %i.adc, 1
  store i32 %i.add, ptr %i.c, align 8, !tbaa !36
  %i.ade = zext i32 %i.adc to i64
  %i.adf = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.ade
  store i8 %i.adb, ptr %i.adg, align 1, !tbaa !62
  %i.adh = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 400
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !64
  %i.adk = lshr i64 %i.acw, 6
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %i.adk
  %i.adm = load i64, ptr %i.adl, align 8, !tbaa !65
  %i.adn = and i64 %i.acw, 63
  %i.ado = lshr i64 %i.adm, %i.adn
  %i.adp = trunc i64 %i.ado to i1
  br i1 %i.adp, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.adq = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.acw)
  store i64 %i.adq, ptr %i.b, align 8, !tbaa !35
  store i8 1, ptr %i.a, align 8, !tbaa !34
  br label %.thread920

bb.dc:                                            ; preds = %bb.da
  %i.adr = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.acw)
  %i.ads = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext false, i64 noundef %i.adr)
  br label %.thread920

bb.dd:                                            ; preds = %bb.bh, %bb.bg
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.mu
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !70
  %i.adv = zext i32 %i.adu to i64
  %i.adw = getelementptr inbounds nuw i8, ptr %i.lc, i64 760
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !80
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.mu
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !70
  %i.aea = zext i32 %i.adz to i64
  br label %.thread873

bb.de:                                            ; preds = %bb.bf
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.lc, i64 40
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !81
  switch i64 %i.lt, label %bb.dg [
    i64 3, label %bb.df
    i64 2, label %._crit_edge.i.i678
    i64 1, label %._crit_edge20.i.i670
  ]

bb.df:                                            ; preds = %bb.de
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lr
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 16
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !65
  %i.aeg = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aef)
  %i.aeh = add nuw nsw i64 %i.aeg, %i.lq
  br label %._crit_edge.i.i678

._crit_edge.i.i678:                               ; preds = %bb.de, %bb.df
  %.0.i.i680 = phi i64 [ %i.aeh, %bb.df ], [ %i.lq, %bb.de ]
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lr
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  %i.aek = load i64, ptr %i.aej, align 8, !tbaa !65
end_hunk_0
begin_hunk_1_@_ZN7rocksdb10trie_index17LoudsTrieIterator8SeekImplILb1EEEbRKNS_5SliceE:bb.a
  store i32 %i.atx, ptr %i.c, align 8, !tbaa !36
  %i.aty = zext i32 %i.atw to i64
  %i.atz = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 %i.aty
  store i8 %i.atv, ptr %i.aua, align 1, !tbaa !62
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aps, i64 %.0411.lcssa1586
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !62
  %i.aud = getelementptr inbounds nuw i8, ptr %i.apk, i64 %.0411.lcssa1586
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !62
  %i.auf = icmp ult i8 %i.auc, %i.aue
  br i1 %i.auf, label %bb.fn, label %bb.fq

.lr.ph1253:                                       ; preds = %.critedge8, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit772
  %i.aug = phi ptr [ %i.auw, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit772 ], [ %i.ake, %.critedge8 ]
  %.04091252 = phi i16 [ %i.awj, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit772 ], [ 0, %.critedge8 ]
  %.04101251 = phi i64 [ %i.awi, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit772 ], [ %i.amy, %.critedge8 ]
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 736
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !80
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.aui, i64 %.04101251
  %i.auk = load i32, ptr %i.auj, align 4, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.aul = zext i32 %i.auk to i64                 ; 2 uses
  store i64 %i.aul, ptr %15, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.aum = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 384
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !74
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 %i.aul
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !62
  %i.aur = load i32, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.aus = add i32 %i.aur, 1
  store i32 %i.aus, ptr %i.c, align 8, !tbaa !36
  %i.aut = zext i32 %i.aur to i64
  %i.auu = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 %i.aut
  store i8 %i.auq, ptr %i.auv, align 1, !tbaa !62
  %i.auw = load ptr, ptr %i.j, align 8, !tbaa !41 ; 4 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 400 ; 4 uses
  %i.auy = add i32 %i.auk, 1
  %i.auz = zext i32 %i.auy to i64                 ; 3 uses
  %i.ava = lshr i64 %i.auz, 8                     ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auw, i64 408
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !69
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %i.ava
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !70
  %i.avf = zext i32 %i.ave to i64                 ; 4 uses
  %i.avg = shl nuw nsw i64 %i.ava, 2              ; 4 uses
  %i.avh = lshr i64 %i.auz, 6                     ; 2 uses
  %i.avi = sub nsw i64 %i.avh, %i.avg
  switch i64 %i.avi, label %bb.fl [
    i64 3, label %bb.fi
    i64 2, label %._crit_edge.i769
    i64 1, label %._crit_edge20.i762
  ]

._crit_edge20.i762:                               ; preds = %.lr.ph1253
  %.pre21.i763 = load ptr, ptr %i.aux, align 8, !tbaa !64
  br label %bb.fk

._crit_edge.i769:                                 ; preds = %.lr.ph1253
  %.pre.i770 = load ptr, ptr %i.aux, align 8, !tbaa !64
  br label %bb.fj

bb.fi:                                            ; preds = %.lr.ph1253
  %i.avj = load ptr, ptr %i.aux, align 8, !tbaa !64 ; 2 uses
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %i.avg
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 16
  %i.avm = load i64, ptr %i.avl, align 8, !tbaa !65
  %i.avn = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.avm)
  %i.avo = add nuw nsw i64 %i.avn, %i.avf
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %._crit_edge.i769
  %i.avp = phi ptr [ %i.avj, %bb.fi ], [ %.pre.i770, %._crit_edge.i769 ] ; 2 uses
  %.0.i771 = phi i64 [ %i.avo, %bb.fi ], [ %i.avf, %._crit_edge.i769 ]
  %i.avq = getelementptr inbounds nuw [8 x i8], ptr %i.avp, i64 %i.avg
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 8
  %i.avs = load i64, ptr %i.avr, align 8, !tbaa !65
  %i.avt = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.avs)
  %i.avu = add nuw nsw i64 %i.avt, %.0.i771
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %._crit_edge20.i762
  %i.avv = phi ptr [ %i.avp, %bb.fj ], [ %.pre21.i763, %._crit_edge20.i762 ]
  %.1.i764 = phi i64 [ %i.avu, %bb.fj ], [ %i.avf, %._crit_edge20.i762 ]
  %i.avw = getelementptr inbounds nuw [8 x i8], ptr %i.avv, i64 %i.avg
  %i.avx = load i64, ptr %i.avw, align 8, !tbaa !65
  %i.avy = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.avx)
  %i.avz = add nuw nsw i64 %i.avy, %.1.i764
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph1253
  %.2.i765 = phi i64 [ %i.avf, %.lr.ph1253 ], [ %i.avz, %bb.fk ] ; 2 uses
  %i.awa = and i64 %i.auz, 63                     ; 2 uses
  %.not.i766 = icmp eq i64 %i.awa, 0
  br i1 %.not.i766, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit772, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %notmask.i767 = shl nsw i64 -1, %i.awa
  %i.awb = xor i64 %notmask.i767, -1
  %i.awc = load ptr, ptr %i.aux, align 8, !tbaa !64
  %i.awd = getelementptr inbounds nuw [8 x i8], ptr %i.awc, i64 %i.avh
  %i.awe = load i64, ptr %i.awd, align 8, !tbaa !65
  %i.awf = and i64 %i.awe, %i.awb
  %i.awg = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.awf)
  %i.awh = add nuw nsw i64 %i.awg, %.2.i765
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit772

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit772: ; preds = %bb.fl, %bb.fm
  %.3.i768 = phi i64 [ %i.awh, %bb.fm ], [ %.2.i765, %bb.fl ]
  %i.awi = add nsw i64 %.3.i768, -1               ; 2 uses
  %i.awj = add nuw i16 %.04091252, 1              ; 2 uses
  %exitcond1485.not = icmp eq i16 %i.awj, %.0411.lcssa
  br i1 %exitcond1485.not, label %._crit_edge1254.loopexit, label %.lr.ph1253, !llvm.loop !189

bb.fn:                                            ; preds = %._crit_edge1254
  %i.awk = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 400
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !64
  %i.awn = lshr i64 %i.atq, 6
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %i.awm, i64 %i.awn
  %i.awp = load i64, ptr %i.awo, align 8, !tbaa !65
  %i.awq = and i64 %i.atq, 63
  %i.awr = lshr i64 %i.awp, %i.awq
  %i.aws = trunc i64 %i.awr to i1
  br i1 %i.aws, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.awt = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.atq)
  store i64 %i.awt, ptr %i.b, align 8, !tbaa !35
  store i8 1, ptr %i.a, align 8, !tbaa !34
  br label %.thread920

bb.fp:                                            ; preds = %bb.fn
  %i.awu = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.atq)
  %i.awv = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext false, i64 noundef %i.awu)
  br label %.thread920

bb.fq:                                            ; preds = %._crit_edge1254
  %i.aww = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(281) %0)
  br label %.thread920

bb.fr:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit750
  %.not536 = icmp eq i32 %i.apo, 0
  br i1 %.not536, label %bb.gl, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.awx = load ptr, ptr %1, align 8, !tbaa !61
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 %i.w
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 1 ; 2 uses
  %i.axa = zext nneg i32 %i.apo to i64
  %i.axb = call i32 @memcmp(ptr noundef nonnull %i.awz, ptr noundef %i.apk, i64 noundef %i.axa) #25 ; 2 uses
  %i.axc = icmp slt i32 %i.axb, 0
  br i1 %i.axc, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %i.ana, i64 %i.amy
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.axf = zext i32 %i.axe to i64                 ; 6 uses
  store i64 %i.axf, ptr %17, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.axg = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 384
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !74
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 %i.axf
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !62
  %i.axl = load i32, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.axm = add i32 %i.axl, 1
  store i32 %i.axm, ptr %i.c, align 8, !tbaa !36
  %i.axn = zext i32 %i.axl to i64
  %i.axo = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 %i.axn
  store i8 %i.axk, ptr %i.axp, align 1, !tbaa !62
  %i.axq = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 400
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !64
  %i.axt = lshr i64 %i.axf, 6
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %i.axs, i64 %i.axt
  %i.axv = load i64, ptr %i.axu, align 8, !tbaa !65
  %i.axw = and i64 %i.axf, 63
  %i.axx = lshr i64 %i.axv, %i.axw
  %i.axy = trunc i64 %i.axx to i1
  br i1 %i.axy, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.axz = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.axf)
  store i64 %i.axz, ptr %i.b, align 8, !tbaa !35
  store i8 1, ptr %i.a, align 8, !tbaa !34
  br label %.thread920

bb.fv:                                            ; preds = %bb.ft
  %i.aya = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.axf)
  %i.ayb = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext false, i64 noundef %i.aya)
  br label %.thread920

bb.fw:                                            ; preds = %bb.fs
  %.not537 = icmp eq i32 %i.axb, 0
  br i1 %.not537, label %.preheader967, label %.preheader968

.preheader968:                                    ; preds = %bb.fw, %bb.fx
  %indvars.iv1486 = phi i64 [ %indvars.iv.next1487, %bb.fx ], [ 0, %bb.fw ] ; 4 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.awz, i64 %indvars.iv1486
  %i.ayd = load i8, ptr %i.ayc, align 1, !tbaa !62
  %i.aye = getelementptr inbounds nuw i8, ptr %i.apk, i64 %indvars.iv1486
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !62
  %i.ayg = icmp eq i8 %i.ayd, %i.ayf
  br i1 %i.ayg, label %bb.fx, label %.critedge10

bb.fx:                                            ; preds = %.preheader968
  %indvars.iv.next1487 = add nuw i64 %indvars.iv1486, 1 ; 3 uses
  %24 = trunc nuw i64 %indvars.iv.next1487 to i32
  %25 = icmp ugt i32 %i.apo, %24
  br i1 %25, label %.preheader968, label %.critedge10, !llvm.loop !190

.critedge10:                                      ; preds = %bb.fx, %.preheader968
  %.0388.lcssa.in = phi i64 [ %indvars.iv.next1487, %bb.fx ], [ %indvars.iv1486, %.preheader968 ]
  %.0388.lcssa = trunc i64 %.0388.lcssa.in to i16 ; 2 uses
  %.not1286 = icmp eq i16 %.0388.lcssa, 0
  br i1 %.not1286, label %._crit_edge1260, label %.lr.ph1259

._crit_edge1260.loopexit:                         ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit783
  %.phi.trans.insert1500 = getelementptr inbounds nuw i8, ptr %i.azm, i64 736
  %.pre1501 = load ptr, ptr %.phi.trans.insert1500, align 8, !tbaa !80
  br label %._crit_edge1260

._crit_edge1260:                                  ; preds = %._crit_edge1260.loopexit, %.critedge10
  %i.ayh = phi ptr [ %i.ana, %.critedge10 ], [ %.pre1501, %._crit_edge1260.loopexit ]
  %.0387.lcssa = phi i64 [ %i.amy, %.critedge10 ], [ %i.bay, %._crit_edge1260.loopexit ]
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %i.ayh, i64 %.0387.lcssa
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.ayk = zext i32 %i.ayj to i64                 ; 2 uses
  store i64 %i.ayk, ptr %19, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.ayl = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 384
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !74
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 %i.ayk
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !62
  %i.ayq = load i32, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.ayr = add i32 %i.ayq, 1
  store i32 %i.ayr, ptr %i.c, align 8, !tbaa !36
  %i.ays = zext i32 %i.ayq to i64
  %i.ayt = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 %i.ays
  store i8 %i.ayp, ptr %i.ayu, align 1, !tbaa !62
  %i.ayv = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(281) %0)
  br label %.thread920

.lr.ph1259:                                       ; preds = %.critedge10, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit783
  %i.ayw = phi ptr [ %i.azm, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit783 ], [ %i.ake, %.critedge10 ]
  %.03861258 = phi i16 [ %i.baz, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit783 ], [ 0, %.critedge10 ]
  %.03871257 = phi i64 [ %i.bay, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit783 ], [ %i.amy, %.critedge10 ]
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 736
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !80
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.ayy, i64 %.03871257
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.azb = zext i32 %i.aza to i64                 ; 2 uses
  store i64 %i.azb, ptr %18, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.azc = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 384
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !74
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 %i.azb
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !62
  %i.azh = load i32, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.azi = add i32 %i.azh, 1
  store i32 %i.azi, ptr %i.c, align 8, !tbaa !36
  %i.azj = zext i32 %i.azh to i64
  %i.azk = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 %i.azj
  store i8 %i.azg, ptr %i.azl, align 1, !tbaa !62
  %i.azm = load ptr, ptr %i.j, align 8, !tbaa !41 ; 4 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 400 ; 4 uses
  %i.azo = add i32 %i.aza, 1
  %i.azp = zext i32 %i.azo to i64                 ; 3 uses
  %i.azq = lshr i64 %i.azp, 8                     ; 2 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azm, i64 408
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !69
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr %i.azs, i64 %i.azq
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !70
  %i.azv = zext i32 %i.azu to i64                 ; 4 uses
  %i.azw = shl nuw nsw i64 %i.azq, 2              ; 4 uses
  %i.azx = lshr i64 %i.azp, 6                     ; 2 uses
  %i.azy = sub nsw i64 %i.azx, %i.azw
  switch i64 %i.azy, label %bb.gb [
    i64 3, label %bb.fy
    i64 2, label %._crit_edge.i780
    i64 1, label %._crit_edge20.i773
  ]

._crit_edge20.i773:                               ; preds = %.lr.ph1259
  %.pre21.i774 = load ptr, ptr %i.azn, align 8, !tbaa !64
  br label %bb.ga

._crit_edge.i780:                                 ; preds = %.lr.ph1259
  %.pre.i781 = load ptr, ptr %i.azn, align 8, !tbaa !64
  br label %bb.fz

bb.fy:                                            ; preds = %.lr.ph1259
  %i.azz = load ptr, ptr %i.azn, align 8, !tbaa !64 ; 2 uses
  %i.baa = getelementptr inbounds nuw [8 x i8], ptr %i.azz, i64 %i.azw
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 16
  %i.bac = load i64, ptr %i.bab, align 8, !tbaa !65
  %i.bad = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bac)
  %i.bae = add nuw nsw i64 %i.bad, %i.azv
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %._crit_edge.i780
  %i.baf = phi ptr [ %i.azz, %bb.fy ], [ %.pre.i781, %._crit_edge.i780 ] ; 2 uses
  %.0.i782 = phi i64 [ %i.bae, %bb.fy ], [ %i.azv, %._crit_edge.i780 ]
  %i.bag = getelementptr inbounds nuw [8 x i8], ptr %i.baf, i64 %i.azw
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  %i.bai = load i64, ptr %i.bah, align 8, !tbaa !65
  %i.baj = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bai)
  %i.bak = add nuw nsw i64 %i.baj, %.0.i782
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %._crit_edge20.i773
  %i.bal = phi ptr [ %i.baf, %bb.fz ], [ %.pre21.i774, %._crit_edge20.i773 ]
  %.1.i775 = phi i64 [ %i.bak, %bb.fz ], [ %i.azv, %._crit_edge20.i773 ]
  %i.bam = getelementptr inbounds nuw [8 x i8], ptr %i.bal, i64 %i.azw
  %i.ban = load i64, ptr %i.bam, align 8, !tbaa !65
  %i.bao = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ban)
  %i.bap = add nuw nsw i64 %i.bao, %.1.i775
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %.lr.ph1259
  %.2.i776 = phi i64 [ %i.azv, %.lr.ph1259 ], [ %i.bap, %bb.ga ] ; 2 uses
  %i.baq = and i64 %i.azp, 63                     ; 2 uses
  %.not.i777 = icmp eq i64 %i.baq, 0
  br i1 %.not.i777, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit783, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %notmask.i778 = shl nsw i64 -1, %i.baq
  %i.bar = xor i64 %notmask.i778, -1
  %i.bas = load ptr, ptr %i.azn, align 8, !tbaa !64
  %i.bat = getelementptr inbounds nuw [8 x i8], ptr %i.bas, i64 %i.azx
  %i.bau = load i64, ptr %i.bat, align 8, !tbaa !65
  %i.bav = and i64 %i.bau, %i.bar
  %i.baw = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.bav)
  %i.bax = add nuw nsw i64 %i.baw, %.2.i776
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit783

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit783: ; preds = %bb.gb, %bb.gc
  %.3.i779 = phi i64 [ %i.bax, %bb.gc ], [ %.2.i776, %bb.gb ]
  %i.bay = add nsw i64 %.3.i779, -1               ; 2 uses
  %i.baz = add nuw i16 %.03861258, 1              ; 2 uses
  %exitcond1486.not = icmp eq i16 %i.baz, %.0388.lcssa
  br i1 %exitcond1486.not, label %._crit_edge1260.loopexit, label %.lr.ph1259, !llvm.loop !191

bb.gd:                                            ; preds = %bb.gk
  %i.bba = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 736
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !80
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %i.bbc, i64 %.1346
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !70
  %i.bbf = zext i32 %i.bbe to i64
  %i.bbg = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.bbf)
  %i.bbh = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext false, i64 noundef %i.bbg)
  br label %.thread920

.preheader967:                                    ; preds = %bb.fw, %bb.gk
  %.03441263 = phi i32 [ %i.bby, %bb.gk ], [ 0, %bb.fw ]
  %.03451262 = phi i64 [ %.1346, %bb.gk ], [ %i.amy, %bb.fw ] ; 2 uses
  %i.bbi = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 736
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !80
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.bbk, i64 %.03451262
  %i.bbm = load i32, ptr %i.bbl, align 4, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.bbn = zext i32 %i.bbm to i64                 ; 2 uses
  store i64 %i.bbn, ptr %20, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.bbo = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 384
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !74
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 %i.bbn
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !62
  %i.bbt = load i32, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.bbu = add i32 %i.bbt, 1
  store i32 %i.bbu, ptr %i.c, align 8, !tbaa !36
  %i.bbv = zext i32 %i.bbt to i64
  %i.bbw = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 %i.bbv
  store i8 %i.bbs, ptr %i.bbx, align 1, !tbaa !62
  %i.bby = add nuw i32 %.03441263, 1              ; 3 uses
  %i.bbz = icmp ult i32 %i.bby, %i.apo
  br i1 %i.bbz, label %bb.ge, label %bb.gk

bb.ge:                                            ; preds = %.preheader967
  %i.bca = load ptr, ptr %i.j, align 8, !tbaa !41 ; 2 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 400 ; 4 uses
  %i.bcc = add i32 %i.bbm, 1
  %i.bcd = zext i32 %i.bcc to i64                 ; 3 uses
  %i.bce = lshr i64 %i.bcd, 8                     ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bca, i64 408
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !69
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %i.bce
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !70
  %i.bcj = zext i32 %i.bci to i64                 ; 4 uses
  %i.bck = shl nuw nsw i64 %i.bce, 2              ; 4 uses
  %i.bcl = lshr i64 %i.bcd, 6                     ; 2 uses
  %i.bcm = sub nsw i64 %i.bcl, %i.bck
  switch i64 %i.bcm, label %bb.gi [
    i64 3, label %bb.gf
    i64 2, label %._crit_edge.i791
    i64 1, label %._crit_edge20.i784
  ]

._crit_edge20.i784:                               ; preds = %bb.ge
  %.pre21.i785 = load ptr, ptr %i.bcb, align 8, !tbaa !64
  br label %bb.gh

._crit_edge.i791:                                 ; preds = %bb.ge
  %.pre.i792 = load ptr, ptr %i.bcb, align 8, !tbaa !64
  br label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.bcn = load ptr, ptr %i.bcb, align 8, !tbaa !64 ; 2 uses
  %i.bco = getelementptr inbounds nuw [8 x i8], ptr %i.bcn, i64 %i.bck
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 16
  %i.bcq = load i64, ptr %i.bcp, align 8, !tbaa !65
  %i.bcr = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bcq)
  %i.bcs = add nuw nsw i64 %i.bcr, %i.bcj
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %._crit_edge.i791
  %i.bct = phi ptr [ %i.bcn, %bb.gf ], [ %.pre.i792, %._crit_edge.i791 ] ; 2 uses
  %.0.i793 = phi i64 [ %i.bcs, %bb.gf ], [ %i.bcj, %._crit_edge.i791 ]
  %i.bcu = getelementptr inbounds nuw [8 x i8], ptr %i.bct, i64 %i.bck
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 8
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !65
  %i.bcx = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bcw)
  %i.bcy = add nuw nsw i64 %i.bcx, %.0.i793
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %._crit_edge20.i784
  %i.bcz = phi ptr [ %i.bct, %bb.gg ], [ %.pre21.i785, %._crit_edge20.i784 ]
  %.1.i786 = phi i64 [ %i.bcy, %bb.gg ], [ %i.bcj, %._crit_edge20.i784 ]
  %i.bda = getelementptr inbounds nuw [8 x i8], ptr %i.bcz, i64 %i.bck
  %i.bdb = load i64, ptr %i.bda, align 8, !tbaa !65
  %i.bdc = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bdb)
  %i.bdd = add nuw nsw i64 %i.bdc, %.1.i786
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ge
  %.2.i787 = phi i64 [ %i.bcj, %bb.ge ], [ %i.bdd, %bb.gh ] ; 2 uses
  %i.bde = and i64 %i.bcd, 63                     ; 2 uses
  %.not.i788 = icmp eq i64 %i.bde, 0
  br i1 %.not.i788, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit794, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %notmask.i789 = shl nsw i64 -1, %i.bde
  %i.bdf = xor i64 %notmask.i789, -1
  %i.bdg = load ptr, ptr %i.bcb, align 8, !tbaa !64
  %i.bdh = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %i.bcl
  %i.bdi = load i64, ptr %i.bdh, align 8, !tbaa !65
  %i.bdj = and i64 %i.bdi, %i.bdf
  %i.bdk = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.bdj)
  %i.bdl = add nuw nsw i64 %i.bdk, %.2.i787
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit794

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit794: ; preds = %bb.gi, %bb.gj
  %.3.i790 = phi i64 [ %i.bdl, %bb.gj ], [ %.2.i787, %bb.gi ]
  %i.bdm = add nsw i64 %.3.i790, -1
  br label %bb.gk

bb.gk:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit794, %.preheader967
  %.1346 = phi i64 [ %i.bdm, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit794 ], [ %.03451262, %.preheader967 ] ; 2 uses
  %exitcond1487.not = icmp eq i32 %i.bby, %i.apo
  br i1 %exitcond1487.not, label %bb.gd, label %.preheader967, !llvm.loop !192

bb.gl:                                            ; preds = %bb.fr
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %i.ana, i64 %i.amy
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.bdp = zext i32 %i.bdo to i64                 ; 6 uses
  store i64 %i.bdp, ptr %21, align 8
  call void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.bdq = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 384
  %i.bds = load ptr, ptr %i.bdr, align 8, !tbaa !74
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 %i.bdp
  %i.bdu = load i8, ptr %i.bdt, align 1, !tbaa !62
  %i.bdv = load i32, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.bdw = add i32 %i.bdv, 1
  store i32 %i.bdw, ptr %i.c, align 8, !tbaa !36
  %i.bdx = zext i32 %i.bdv to i64
  %i.bdy = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 %i.bdx
  store i8 %i.bdu, ptr %i.bdz, align 1, !tbaa !62
  %i.bea = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 400
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !64
  %i.bed = lshr i64 %i.bdp, 6
  %i.bee = getelementptr inbounds nuw [8 x i8], ptr %i.bec, i64 %i.bed
  %i.bef = load i64, ptr %i.bee, align 8, !tbaa !65
  %i.beg = and i64 %i.bdp, 63
  %i.beh = lshr i64 %i.bef, %i.beg
  %i.bei = trunc i64 %i.beh to i1
  br i1 %i.bei, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.bej = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.bdp)
  store i64 %i.bej, ptr %i.b, align 8, !tbaa !35
  store i8 1, ptr %i.a, align 8, !tbaa !34
  br label %.thread920

bb.gn:                                            ; preds = %bb.gl
  %i.bek = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.bdp)
  %i.bel = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext false, i64 noundef %i.bek)
  br label %.thread920

bb.go:                                            ; preds = %bb.es, %bb.er
  %i.bem = getelementptr inbounds nuw [4 x i8], ptr %i.ana, i64 %i.amy
  %i.ben = load i32, ptr %i.bem, align 4, !tbaa !70
  %i.beo = zext i32 %i.ben to i64
  %i.bep = getelementptr inbounds nuw i8, ptr %i.ake, i64 760
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !80
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.beq, i64 %i.amy
  %i.bes = load i32, ptr %i.ber, align 4, !tbaa !70
  %i.bet = zext i32 %i.bes to i64
  br label %.thread873

bb.gp:                                            ; preds = %bb.eq, %bb.ep
  %i.beu = getelementptr inbounds nuw i8, ptr %i.ake, i64 40
  %i.bev = load i64, ptr %i.beu, align 8, !tbaa !81
  switch i64 %i.akw, label %bb.gr [
    i64 3, label %bb.gq
    i64 2, label %._crit_edge.i.i803
    i64 1, label %._crit_edge20.i.i795
  ]

bb.gq:                                            ; preds = %bb.gp
  %i.bew = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %i.aku
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 16
  %i.bey = load i64, ptr %i.bex, align 8, !tbaa !65
  %i.bez = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bey)
  %i.bfa = add nuw nsw i64 %i.bez, %i.akt
  br label %._crit_edge.i.i803

._crit_edge.i.i803:                               ; preds = %bb.gp, %bb.gq
  %.0.i.i805 = phi i64 [ %i.bfa, %bb.gq ], [ %i.akt, %bb.gp ]
  %i.bfb = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %i.aku
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 8
  %i.bfd = load i64, ptr %i.bfc, align 8, !tbaa !65
end_hunk_1
