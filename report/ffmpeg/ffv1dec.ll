Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1dec?download=true
inline.NumInlined: 99
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@decode_slice:bb.a
bb.cz:                                            ; preds = %bb.cx, %bb.cy
  %i.vd = phi i32 [ %i.vb, %bb.cy ], [ 2, %bb.cx ]
  %i.ve = phi i32 [ %i.vc, %bb.cy ], [ 3, %bb.cx ]
  call fastcc void @decode_plane(ptr noundef nonnull %i.n, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.ux, i32 noundef %i.je, i32 noundef %i.jg, i32 noundef %i.uu, i32 noundef %i.vd, i32 noundef %i.ve, i32 noundef 1, i32 noundef %i.ai)
  br label %bb.hv

bb.da:                                            ; preds = %bb.ct
  %i.vf = load ptr, ptr %i.u, align 8, !tbaa !130
  %i.vg = mul nsw i32 %i.ji, %i.s
  %i.vh = sext i32 %i.vg to i64                   ; 2 uses
  %i.vi = getelementptr inbounds i8, ptr %i.vf, i64 %i.vh
  %i.vj = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !29 ; 2 uses
  %i.vl = mul nsw i32 %i.vk, %i.jk
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds i8, ptr %i.vi, i64 %i.vm
  call fastcc void @decode_plane(ptr noundef nonnull %i.n, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.vn, i32 noundef %i.je, i32 noundef %i.jg, i32 noundef %i.vk, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef %i.ai)
  %i.vo = load ptr, ptr %i.u, align 8, !tbaa !130
  %i.vp = getelementptr inbounds i8, ptr %i.vo, i64 %i.vh
  %i.vq = load i32, ptr %i.vj, align 8, !tbaa !29 ; 2 uses
  %i.vr = mul nsw i32 %i.vq, %i.jk
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds i8, ptr %i.vp, i64 %i.vs
  %i.vu = ashr i32 %i.s, 1
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds i8, ptr %i.vt, i64 %i.vv
  call fastcc void @decode_plane(ptr noundef nonnull %i.n, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.vw, i32 noundef %i.je, i32 noundef %i.jg, i32 noundef %i.vq, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef %i.ai)
  br label %bb.hv

bb.db:                                            ; preds = %bb.cr
  %i.vx = getelementptr inbounds nuw i8, ptr %i.n, i64 25168
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !72
  %.not251 = icmp eq i32 %i.vy, 0
  br i1 %.not251, label %bb.ej, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.vz = load ptr, ptr %i.u, align 8, !tbaa !130 ; 15 uses
  %i.wa = mul i32 %i.ji, %i.s
  %i.wb = sext i32 %i.wa to i64                   ; 15 uses
  %i.wc = getelementptr i8, ptr %i.vz, i64 %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !29 ; 4 uses
  %i.wf = mul i32 %i.we, %i.jk
  %i.wg = sext i32 %i.wf to i64                   ; 15 uses
  %i.wh = getelementptr i8, ptr %i.wc, i64 %i.wg  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.wi = load i32, ptr %i.ac, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.wj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !59
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 652
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !105
  call void @ff_ffv1_compute_bits_per_plane(ptr noundef nonnull %i.n, ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, i32 noundef %i.wm) #11
  %i.wn = ashr i32 %i.je, 1                       ; 11 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !144
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !169 ; 9 uses
  %i.ws = add nsw i32 %i.wn, 6
  %i.wt = sext i32 %i.ws to i64                   ; 7 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 12
  store ptr %i.wu, ptr %i.e, align 16, !tbaa !154
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %i.wt
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 12
  %i.wx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ww, ptr %i.wx, align 8, !tbaa !154
  %.idx.i = shl nsw i64 %i.wt, 3
  %i.wy = getelementptr inbounds i8, ptr %i.wr, i64 %.idx.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 12
  %i.xa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.wz, ptr %i.xa, align 16, !tbaa !154
  %.idx226.i = mul nsw i64 %i.wt, 12
  %i.xb = getelementptr inbounds i8, ptr %i.wr, i64 %.idx226.i
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 12
  %i.xd = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.xc, ptr %i.xd, align 8, !tbaa !154
  %.idx227.i = shl nsw i64 %i.wt, 4
  %i.xe = getelementptr inbounds i8, ptr %i.wr, i64 %.idx227.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 12
  %i.xg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.xf, ptr %i.xg, align 16, !tbaa !154
  %.idx228.i = mul nsw i64 %i.wt, 20
  %i.xh = getelementptr inbounds i8, ptr %i.wr, i64 %.idx228.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 12
  %i.xj = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  store ptr %i.xi, ptr %i.xj, align 8, !tbaa !154
  %.idx229.i = mul nsw i64 %i.wt, 24
  %i.xk = getelementptr inbounds i8, ptr %i.wr, i64 %.idx229.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 12
  %i.xm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.xl, ptr %i.xm, align 16, !tbaa !154
  %.idx230.i = mul nsw i64 %i.wt, 28
  %i.xn = getelementptr inbounds i8, ptr %i.wr, i64 %.idx230.i
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 12
  %i.xp = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  store ptr %i.xo, ptr %i.xp, align 8, !tbaa !154
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i32 0, ptr %i.xq, align 8, !tbaa !170
  %i.xr = shl i32 %i.wn, 3
  %i.xs = add i32 %i.xr, 48
  %i.xt = sext i32 %i.xs to i64
  %i.xu = shl nsw i64 %i.xt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.wr, i8 0, i64 %i.xu, i1 false)
  %i.xv = icmp sgt i32 %i.jg, 0
  br i1 %i.xv, label %.preheader138.lr.ph.i, label %decode_bayer_frame.exit

.preheader138.lr.ph.i:                            ; preds = %bb.dc
  %i.xw = icmp ne i32 %i.wp, 1
  %i.xx = sext i32 %i.wn to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 7 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.n, i64 4320
  %.not.i107128.i = icmp eq i32 %i.wi, 0
  %.not.i107.i = select i1 %i.xw, i1 %.not.i107128.i, i1 false ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 6 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ye = icmp sgt i32 %i.wn, 0                   ; 4 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %invariant.op.i = add nsw i32 %i.wn, -1         ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 5 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.yj = sext i32 %invariant.op.i to i64         ; 2 uses
  %i.yk = zext i32 %i.wn to i64                   ; 10 uses
  %i.yl = shl nuw nsw i64 %i.yk, 2                ; 2 uses
  %i.ym = sext i32 %i.we to i64                   ; 10 uses
  %i.yn = zext nneg i32 %i.jg to i64              ; 3 uses
  %i.yo = add nsw i64 %i.yn, -1                   ; 2 uses
  %i.yp = lshr i64 %i.yo, 1
  %i.yq = mul i64 %i.yp, %i.ym
  %i.yr = shl i64 %i.yq, 1                        ; 2 uses
  %i.ys = shl nuw nsw i64 %i.yk, 2                ; 4 uses
  %i.yt = getelementptr i8, ptr %i.vz, i64 %i.yr
  %i.yu = getelementptr i8, ptr %i.yt, i64 %i.ys
  %i.yv = getelementptr i8, ptr %i.yu, i64 %i.wg
  %i.yw = getelementptr i8, ptr %i.yv, i64 %i.wb
  %scevgep = getelementptr i8, ptr %i.yw, i64 -2  ; 3 uses
  %i.yx = getelementptr i8, ptr %i.vz, i64 %i.wg
  %i.yy = getelementptr i8, ptr %i.yx, i64 %i.wb
  %scevgep576 = getelementptr i8, ptr %i.yy, i64 2 ; 3 uses
  %i.yz = getelementptr i8, ptr %i.vz, i64 %i.yr
  %i.za = getelementptr i8, ptr %i.yz, i64 %i.ys
  %i.zb = getelementptr i8, ptr %i.za, i64 %i.wg
  %scevgep577 = getelementptr i8, ptr %i.zb, i64 %i.wb ; 3 uses
  %i.zc = getelementptr i8, ptr %i.vz, i64 %i.ym
  %i.zd = getelementptr i8, ptr %i.zc, i64 %i.wg
  %scevgep578 = getelementptr i8, ptr %i.zd, i64 %i.wb ; 3 uses
  %i.ze = or i64 %i.yo, 1
  %i.zf = mul nsw i64 %i.ze, %i.ym                ; 2 uses
  %i.zg = getelementptr i8, ptr %i.vz, i64 %i.zf
  %i.zh = getelementptr i8, ptr %i.zg, i64 %i.ys
  %i.zi = getelementptr i8, ptr %i.zh, i64 %i.wg
  %i.zj = getelementptr i8, ptr %i.zi, i64 %i.wb
  %scevgep579 = getelementptr i8, ptr %i.zj, i64 -2 ; 3 uses
  %i.zk = getelementptr i8, ptr %i.vz, i64 %i.ym
  %i.zl = getelementptr i8, ptr %i.zk, i64 %i.wg
  %i.zm = getelementptr i8, ptr %i.zl, i64 %i.wb
  %scevgep580 = getelementptr i8, ptr %i.zm, i64 2 ; 3 uses
  %i.zn = getelementptr i8, ptr %i.vz, i64 %i.zf
  %i.zo = getelementptr i8, ptr %i.zn, i64 %i.ys
  %i.zp = getelementptr i8, ptr %i.zo, i64 %i.wg
  %scevgep581 = getelementptr i8, ptr %i.zp, i64 %i.wb ; 3 uses
  %i.zq = add nsw i64 %i.yn, -1                   ; 2 uses
  %i.zr = lshr i64 %i.zq, 1
  %i.zs = mul i64 %i.zr, %i.ym
  %i.zt = shl i64 %i.zs, 1                        ; 2 uses
  %i.zu = shl nuw nsw i64 %i.yk, 2                ; 4 uses
  %i.zv = getelementptr i8, ptr %i.vz, i64 %i.zt
  %i.zw = getelementptr i8, ptr %i.zv, i64 %i.zu
  %i.zx = getelementptr i8, ptr %i.zw, i64 %i.wg
  %i.zy = getelementptr i8, ptr %i.zx, i64 %i.wb
  %scevgep621 = getelementptr i8, ptr %i.zy, i64 -2 ; 3 uses
  %i.zz = getelementptr i8, ptr %i.vz, i64 %i.wg
  %i.aaa = getelementptr i8, ptr %i.zz, i64 %i.wb
  %scevgep622 = getelementptr i8, ptr %i.aaa, i64 2 ; 3 uses
  %i.aab = getelementptr i8, ptr %i.vz, i64 %i.zt
  %i.aac = getelementptr i8, ptr %i.aab, i64 %i.zu
  %i.aad = getelementptr i8, ptr %i.aac, i64 %i.wg
  %scevgep623 = getelementptr i8, ptr %i.aad, i64 %i.wb ; 3 uses
  %i.aae = getelementptr i8, ptr %i.vz, i64 %i.ym
  %i.aaf = getelementptr i8, ptr %i.aae, i64 %i.wg
  %scevgep624 = getelementptr i8, ptr %i.aaf, i64 %i.wb ; 3 uses
  %i.aag = or i64 %i.zq, 1
  %i.aah = mul nsw i64 %i.aag, %i.ym              ; 2 uses
  %i.aai = getelementptr i8, ptr %i.vz, i64 %i.aah
  %i.aaj = getelementptr i8, ptr %i.aai, i64 %i.zu
  %i.aak = getelementptr i8, ptr %i.aaj, i64 %i.wg
  %i.aal = getelementptr i8, ptr %i.aak, i64 %i.wb
  %scevgep625 = getelementptr i8, ptr %i.aal, i64 -2 ; 3 uses
  %i.aam = getelementptr i8, ptr %i.vz, i64 %i.ym
  %i.aan = getelementptr i8, ptr %i.aam, i64 %i.wg
  %i.aao = getelementptr i8, ptr %i.aan, i64 %i.wb
  %scevgep626 = getelementptr i8, ptr %i.aao, i64 2 ; 3 uses
  %i.aap = getelementptr i8, ptr %i.vz, i64 %i.aah
  %i.aaq = getelementptr i8, ptr %i.aap, i64 %i.zu
  %i.aar = getelementptr i8, ptr %i.aaq, i64 %i.wg
  %scevgep627 = getelementptr i8, ptr %i.aar, i64 %i.wb ; 3 uses
  %3 = zext nneg i32 %i.wn to i64
  %4 = add nsw i64 %3, -2
  %i.aas = add nsw i32 %i.wn, -12
  %or.cond743.a = icmp ult i32 %i.aas, 536870901
  %bound0628 = icmp ult ptr %i.wh, %scevgep623
  %bound1629 = icmp ult ptr %scevgep622, %scevgep621
  %found.conflict630 = and i1 %bound0628, %bound1629
  %bound0633 = icmp ult ptr %i.wh, %scevgep625
  %bound1634 = icmp ult ptr %scevgep624, %scevgep621
  %found.conflict635 = and i1 %bound0633, %bound1634
  %stride.check636 = icmp slt i32 %i.we, 0
  %i.aat = or i1 %found.conflict635, %stride.check636
  %conflict.rdx638 = or i1 %found.conflict630, %i.aat
  %bound0639 = icmp ult ptr %i.wh, %scevgep627
  %bound1640 = icmp ult ptr %scevgep626, %scevgep621
  %found.conflict641 = and i1 %bound0639, %bound1640
  %conflict.rdx644 = or i1 %found.conflict641, %conflict.rdx638
  %bound0645 = icmp ult ptr %scevgep622, %scevgep625
  %bound1646 = icmp ult ptr %scevgep624, %scevgep623
  %found.conflict647 = and i1 %bound0645, %bound1646
  %conflict.rdx650 = or i1 %found.conflict647, %conflict.rdx644
  %bound0651 = icmp ult ptr %scevgep622, %scevgep627
  %bound1652 = icmp ult ptr %scevgep626, %scevgep623
  %found.conflict653 = and i1 %bound0651, %bound1652
  %conflict.rdx656 = or i1 %found.conflict653, %conflict.rdx650
  %bound0657 = icmp ult ptr %scevgep624, %scevgep627
  %bound1658 = icmp ult ptr %scevgep626, %scevgep625
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx662 = or i1 %found.conflict659, %conflict.rdx656
  %n.vec666 = and i64 %i.yk, 1073741820           ; 3 uses
  %cmp.n681 = icmp eq i64 %n.vec666, %i.yk
  %i.aau = add nsw i32 %i.wn, -24
  %or.cond742.a = icmp ult i32 %i.aau, 536870889
  %bound0 = icmp ult ptr %i.wh, %scevgep577
  %bound1 = icmp ult ptr %scevgep576, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0583 = icmp ult ptr %i.wh, %scevgep579
  %bound1584 = icmp ult ptr %scevgep578, %scevgep
  %found.conflict585 = and i1 %bound0583, %bound1584
  %stride.check586 = icmp slt i32 %i.we, 0
  %i.aav = or i1 %found.conflict585, %stride.check586
  %conflict.rdx = or i1 %found.conflict, %i.aav
  %bound0588 = icmp ult ptr %i.wh, %scevgep581
  %bound1589 = icmp ult ptr %scevgep580, %scevgep
  %found.conflict590 = and i1 %bound0588, %bound1589
  %conflict.rdx593 = or i1 %found.conflict590, %conflict.rdx
  %bound0594 = icmp ult ptr %scevgep576, %scevgep579
  %bound1595 = icmp ult ptr %scevgep578, %scevgep577
  %found.conflict596 = and i1 %bound0594, %bound1595
  %conflict.rdx599 = or i1 %found.conflict596, %conflict.rdx593
  %bound0600 = icmp ult ptr %scevgep576, %scevgep581
  %bound1601 = icmp ult ptr %scevgep580, %scevgep577
  %found.conflict602 = and i1 %bound0600, %bound1601
  %conflict.rdx605 = or i1 %found.conflict602, %conflict.rdx599
  %bound0606 = icmp ult ptr %scevgep578, %scevgep581
  %bound1607 = icmp ult ptr %scevgep580, %scevgep579
  %found.conflict608 = and i1 %bound0606, %bound1607
  %conflict.rdx611 = or i1 %found.conflict608, %conflict.rdx605
  %n.vec = and i64 %i.yk, 1073741820              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.yk
  br label %.preheader138.i

.preheader138.i:                                  ; preds = %._crit_edge170.i, %.preheader138.lr.ph.i
  %indvars.iv212.i = phi i64 [ 0, %.preheader138.lr.ph.i ], [ %indvars.iv.next213.i, %._crit_edge170.i ] ; 3 uses
  br label %bb.dd

.preheader137.i:                                  ; preds = %.loopexit133.i
  br i1 %i.ye, label %.lr.ph169.i, label %._crit_edge170.i

.lr.ph169.i:                                      ; preds = %.preheader137.i
  %i.aaw = load ptr, ptr %i.wx, align 8, !tbaa !154 ; 4 uses
  %i.aax = load ptr, ptr %i.xd, align 8, !tbaa !154 ; 4 uses
  %i.aay = load ptr, ptr %i.xj, align 8, !tbaa !154 ; 4 uses
  %i.aaz = load ptr, ptr %i.xp, align 8, !tbaa !154 ; 4 uses
  %i.aba = load i32, ptr %i.wo, align 4, !tbaa !144
  %.not.i288 = icmp eq i32 %i.aba, 1
  %i.abb = load i32, ptr %i.h, align 4            ; 4 uses
  %i.abc = mul nsw i64 %indvars.iv212.i, %i.ym    ; 6 uses
  %i.abd = or disjoint i64 %indvars.iv212.i, 1
  %i.abe = mul nsw i64 %i.abd, %i.ym              ; 6 uses
  br i1 %.not.i288, label %.lr.ph169.split.us.i.preheader, label %.lr.ph169.split.i

.lr.ph169.split.us.i.preheader:                   ; preds = %.lr.ph169.i
  %or.cond742.not = xor i1 %or.cond742.a, true
  %brmerge = select i1 %or.cond742.not, i1 true, i1 %conflict.rdx611
  br i1 %brmerge, label %.lr.ph169.split.us.i.preheader762, label %vector.body

vector.body:                                      ; preds = %.lr.ph169.split.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph169.split.us.i.preheader ] ; 6 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %index
  %wide.load = load <4 x i32>, ptr %i.abf, align 4, !tbaa !29
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %index
  %wide.load612 = load <4 x i32>, ptr %i.abg, align 4, !tbaa !29
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %index
  %wide.load613 = load <4 x i32>, ptr %i.abh, align 4, !tbaa !29
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %index
  %wide.load614 = load <4 x i32>, ptr %i.abi, align 4, !tbaa !29
  %i.abj = shl nuw nsw i64 %index, 2
  %i.abk = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.abj ; 2 uses
  %i.abl = getelementptr inbounds i8, ptr %i.abk, i64 %i.abc
  %i.abm = shufflevector <4 x i32> %wide.load614, <4 x i32> %wide.load, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.abm to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.abl, align 2, !tbaa !157
  %i.abn = getelementptr inbounds i8, ptr %i.abk, i64 %i.abe
  %i.abo = shufflevector <4 x i32> %wide.load612, <4 x i32> %wide.load613, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec615 = trunc <8 x i32> %i.abo to <8 x i16>
  store <8 x i16> %interleaved.vec615, ptr %i.abn, align 2, !tbaa !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abp = icmp eq i64 %index.next, %n.vec
  br i1 %i.abp, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge170.i, label %.lr.ph169.split.us.i.preheader762

.lr.ph169.split.us.i.preheader762:                ; preds = %.lr.ph169.split.us.i.preheader, %middle.block
  %indvars.iv207.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph169.split.us.i.preheader ]
  br label %.lr.ph169.split.us.i

.lr.ph169.split.us.i:                             ; preds = %.lr.ph169.split.us.i.preheader762, %.lr.ph169.split.us.i
  %indvars.iv207.i = phi i64 [ %indvars.iv.next208.i, %.lr.ph169.split.us.i ], [ %indvars.iv207.i.ph, %.lr.ph169.split.us.i.preheader762 ] ; 7 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %indvars.iv207.i
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !29
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %indvars.iv207.i
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !29
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %indvars.iv207.i
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !29
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv207.i
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !29
  %i.aby = trunc i32 %i.abx to i16
  %i.abz = shl nuw nsw i64 %indvars.iv207.i, 2
  %i.aca = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.abz ; 2 uses
  %i.acb = getelementptr inbounds i8, ptr %i.aca, i64 %i.abc
  store i16 %i.aby, ptr %i.acb, align 2, !tbaa !157
  %i.acc = trunc i32 %i.abr to i16
  %sext231.i = shl nuw i64 %indvars.iv207.i, 34
  %i.acd = ashr exact i64 %sext231.i, 32
  %i.ace = getelementptr i8, ptr %i.wh, i64 %i.acd
  %i.acf = getelementptr i8, ptr %i.ace, i64 2    ; 2 uses
  %i.acg = getelementptr inbounds i8, ptr %i.acf, i64 %i.abc
  store i16 %i.acc, ptr %i.acg, align 2, !tbaa !157
  %i.ach = trunc i32 %i.abt to i16
  %i.aci = getelementptr inbounds i8, ptr %i.aca, i64 %i.abe
  store i16 %i.ach, ptr %i.aci, align 2, !tbaa !157
  %i.acj = trunc i32 %i.abv to i16
  %i.ack = getelementptr inbounds i8, ptr %i.acf, i64 %i.abe
  store i16 %i.acj, ptr %i.ack, align 2, !tbaa !157
  %indvars.iv.next208.i = add nuw nsw i64 %indvars.iv207.i, 1 ; 2 uses
  %exitcond211.not.i = icmp eq i64 %indvars.iv.next208.i, %i.yk
  br i1 %exitcond211.not.i, label %._crit_edge170.i, label %.lr.ph169.split.us.i, !llvm.loop !174

.lr.ph169.split.i:                                ; preds = %.lr.ph169.i
  %i.acl = load i32, ptr %i.ba, align 8, !tbaa !145 ; 2 uses
  %i.acm = load i32, ptr %i.bb, align 4, !tbaa !146 ; 2 uses
  %or.cond743.not = xor i1 %or.cond743.a, true
  %brmerge812 = select i1 %or.cond743.not, i1 true, i1 %conflict.rdx662
  br i1 %brmerge812, label %scalar.ph663.preheader, label %vector.ph665

vector.ph665:                                     ; preds = %.lr.ph169.split.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.acl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert667 = insertelement <4 x i32> poison, i32 %i.acm, i64 0
  %broadcast.splat668 = shufflevector <4 x i32> %broadcast.splatinsert667, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert669 = insertelement <4 x i32> poison, i32 %i.abb, i64 0
  %broadcast.splat670 = shufflevector <4 x i32> %broadcast.splatinsert669, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body671

vector.body671:                                   ; preds = %vector.body671, %vector.ph665
  %index672 = phi i64 [ 0, %vector.ph665 ], [ %index.next679, %vector.body671 ] ; 6 uses
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %index672
  %wide.load673 = load <4 x i32>, ptr %i.acn, align 4, !tbaa !29
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %index672
  %wide.load674 = load <4 x i32>, ptr %i.aco, align 4, !tbaa !29
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %index672
  %wide.load675 = load <4 x i32>, ptr %i.acp, align 4, !tbaa !29
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %index672
  %wide.load676 = load <4 x i32>, ptr %i.acq, align 4, !tbaa !29
  %i.acr = sub nsw <4 x i32> %wide.load675, %broadcast.splat670 ; 2 uses
  %i.acs = sub nsw <4 x i32> %wide.load676, %broadcast.splat670 ; 2 uses
  %i.act = mul nsw <4 x i32> %i.acr, %broadcast.splat
  %i.acu = mul nsw <4 x i32> %i.acs, %broadcast.splat668
  %i.acv = add nsw <4 x i32> %i.acu, %i.act
  %i.acw = ashr <4 x i32> %i.acv, splat (i32 2)
  %i.acx = sub nsw <4 x i32> %wide.load673, %i.acw ; 3 uses
  %i.acy = add nsw <4 x i32> %i.acx, %i.acr
  %i.acz = add nsw <4 x i32> %i.acx, %i.acs
  %i.ada = sub nsw <4 x i32> %wide.load674, %broadcast.splat670 ; 2 uses
  %i.adb = ashr <4 x i32> %i.ada, splat (i32 1)
  %i.adc = sub nsw <4 x i32> %i.acx, %i.adb       ; 2 uses
  %i.add = add nsw <4 x i32> %i.adc, %i.ada
  %i.ade = shl nuw nsw i64 %index672, 2
  %i.adf = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.ade ; 2 uses
  %i.adg = getelementptr inbounds i8, ptr %i.adf, i64 %i.abc
  %i.adh = shufflevector <4 x i32> %i.acz, <4 x i32> %i.add, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec677 = trunc <8 x i32> %i.adh to <8 x i16>
  store <8 x i16> %interleaved.vec677, ptr %i.adg, align 2, !tbaa !157
  %i.adi = getelementptr inbounds i8, ptr %i.adf, i64 %i.abe
  %i.adj = shufflevector <4 x i32> %i.adc, <4 x i32> %i.acy, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec678 = trunc <8 x i32> %i.adj to <8 x i16>
  store <8 x i16> %interleaved.vec678, ptr %i.adi, align 2, !tbaa !157
  %index.next679 = add nuw i64 %index672, 4       ; 2 uses
  %i.adk = icmp eq i64 %index.next679, %n.vec666
  br i1 %i.adk, label %middle.block680, label %vector.body671, !llvm.loop !175
end_hunk_0
begin_hunk_1_@decode_slice:bb.a

bb.dr:                                            ; preds = %bb.dq
  br i1 %.not.i107.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.agi = load i32, ptr %i.yb, align 8, !tbaa !69
  %i.agj = icmp sgt i32 %i.agi, 2
  br i1 %i.agj, label %decode_bayer_frame.exit, label %is_input_end.exit114.i

bb.dt:                                            ; preds = %bb.dr
  %.val.i111.i = load i32, ptr %i.yc, align 8, !tbaa !168
  %.val3.i112.i = load i32, ptr %i.yd, align 4, !tbaa !166
  %.not4.i113.i = icmp sgt i32 %.val3.i112.i, %.val.i111.i
  br i1 %.not4.i113.i, label %is_input_end.exit114.i, label %decode_bayer_frame.exit

is_input_end.exit114.i:                           ; preds = %bb.dt, %bb.ds, %bb.dq
  %i.agk = sext i32 %.2134.i152.i to i64          ; 11 uses
  %i.agl = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.agk ; 3 uses
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.adp, i64 %i.agk ; 3 uses
  %i.agn = getelementptr inbounds i8, ptr %i.agm, i64 -4
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !29 ; 5 uses
  %i.agp = load i32, ptr %i.agm, align 4, !tbaa !29 ; 5 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agm, i64 4
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !29 ; 2 uses
  %i.ags = getelementptr inbounds i8, ptr %i.agl, i64 -4
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !29 ; 4 uses
  %i.agu = load i16, ptr %i.aeo, align 2, !tbaa !157
  %.not.i115.i = icmp eq i16 %i.agu, 0
  br i1 %.not.i115.i, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %is_input_end.exit114.i
  %i.agv = load i16, ptr %i.aep, align 2, !tbaa !157
  %.not32.i.i = icmp eq i16 %i.agv, 0
  br i1 %.not32.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du, %is_input_end.exit114.i
  %i.agw = load i32, ptr %i.agl, align 4, !tbaa !29
  %i.agx = getelementptr inbounds i8, ptr %i.agl, i64 -8
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !29
  %i.agz = sub nsw i32 %i.agt, %i.ago
  %i.aha = and i32 %i.agz, 255
  %i.ahb = zext nneg i32 %i.aha to i64
  %i.ahc = getelementptr inbounds nuw [2 x i8], ptr %i.aeg, i64 %i.ahb
  %i.ahd = load i16, ptr %i.ahc, align 2, !tbaa !157
  %i.ahe = sext i16 %i.ahd to i32
  %i.ahf = sub nsw i32 %i.ago, %i.agp
  %i.ahg = and i32 %i.ahf, 255
  %i.ahh = zext nneg i32 %i.ahg to i64
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %i.aeq, i64 %i.ahh
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !157
  %i.ahk = sext i16 %i.ahj to i32
  %i.ahl = add nsw i32 %i.ahk, %i.ahe
  %i.ahm = sub nsw i32 %i.agp, %i.agr
  %i.ahn = and i32 %i.ahm, 255
  %i.aho = zext nneg i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw [2 x i8], ptr %i.aer, i64 %i.aho
  %i.ahq = load i16, ptr %i.ahp, align 2, !tbaa !157
  %i.ahr = sext i16 %i.ahq to i32
  %i.ahs = add nsw i32 %i.ahl, %i.ahr
  %i.aht = sub nsw i32 %i.agy, %i.agt
  %i.ahu = and i32 %i.aht, 255
  %i.ahv = zext nneg i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw [2 x i8], ptr %i.aen, i64 %i.ahv
  %i.ahx = load i16, ptr %i.ahw, align 2, !tbaa !157
  %i.ahy = sext i16 %i.ahx to i32
  %i.ahz = add nsw i32 %i.ahs, %i.ahy
  %i.aia = sub nsw i32 %i.agw, %i.agp
  br label %get_context32.exit.i

bb.dw:                                            ; preds = %bb.du
  %i.aib = sub nsw i32 %i.agt, %i.ago
  %i.aic = and i32 %i.aib, 255
  %i.aid = zext nneg i32 %i.aic to i64
  %i.aie = getelementptr inbounds nuw [2 x i8], ptr %i.aeg, i64 %i.aid
  %i.aif = load i16, ptr %i.aie, align 2, !tbaa !157
  %i.aig = sext i16 %i.aif to i32
  %i.aih = sub nsw i32 %i.ago, %i.agp
  %i.aii = and i32 %i.aih, 255
  %i.aij = zext nneg i32 %i.aii to i64
  %i.aik = getelementptr inbounds nuw [2 x i8], ptr %i.aeq, i64 %i.aij
  %i.ail = load i16, ptr %i.aik, align 2, !tbaa !157
  %i.aim = sext i16 %i.ail to i32
  %i.ain = add nsw i32 %i.aim, %i.aig
  %i.aio = sub nsw i32 %i.agp, %i.agr
  br label %get_context32.exit.i

get_context32.exit.i:                             ; preds = %bb.dw, %bb.dv
  %.sink39.i.i = phi i32 [ %i.aio, %bb.dw ], [ %i.aia, %bb.dv ]
  %i.aip = phi i64 [ 1024, %bb.dw ], [ 2048, %bb.dv ]
  %.sink.i.i = phi i32 [ %i.ain, %bb.dw ], [ %i.ahz, %bb.dv ]
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aeg, i64 %i.aip
  %i.air = and i32 %.sink39.i.i, 255
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw [2 x i8], ptr %i.aiq, i64 %i.ais
  %i.aiu = load i16, ptr %i.ait, align 2, !tbaa !157
  %i.aiv = sext i16 %i.aiu to i32
  %i.aiw = add nsw i32 %.sink.i.i, %i.aiv         ; 3 uses
  %.0116.i.i = call i32 @llvm.abs.i32(i32 %i.aiw, i1 true) ; 3 uses
  br i1 %.not.i107.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %get_context32.exit.i
  %i.aix = load ptr, ptr %i.aes, align 8, !tbaa !178
  %i.aiy = zext nneg i32 %.0116.i.i to i64
  %i.aiz = getelementptr inbounds nuw [32 x i8], ptr %i.aix, i64 %i.aiy
  %i.aja = call fastcc i32 @get_symbol_inline(ptr noundef nonnull %i.xz, ptr noundef %i.aiz, i32 noundef 1)
  br label %bb.ei

bb.dy:                                            ; preds = %get_context32.exit.i
  %i.ajb = icmp eq i32 %i.aiw, 0
  %i.ajc = icmp eq i32 %.0123.i154.i, 0
  %or.cond.i.i = select i1 %i.ajb, i1 %i.ajc, i1 false
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 1, i32 %.0123.i154.i ; 3 uses
  %.not154.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not154.i.i, label %bb.eh, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ajd = icmp eq i32 %.0127.i153.i, 0
  %i.aje = icmp eq i32 %spec.store.select.i.i, 1
  %or.cond3.i.i = and i1 %i.ajd, %i.aje
  br i1 %or.cond3.i.i, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  %i.ajf = load i32, ptr %i.yc, align 8, !tbaa !168 ; 4 uses
  %i.ajg = load ptr, ptr %2, align 8, !tbaa !164  ; 2 uses
  %i.ajh = lshr i32 %i.ajf, 3
  %i.aji = zext nneg i32 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %i.aji
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !68
  %i.ajl = load i32, ptr %i.yf, align 8, !tbaa !167 ; 2 uses
  %i.ajm = icmp slt i32 %i.ajf, %i.ajl
  %i.ajn = zext i1 %i.ajm to i32
  %spec.select.i116.i = add i32 %i.ajf, %i.ajn    ; 4 uses
  %i.ajo = zext i8 %i.ajk to i32
  %i.ajp = and i32 %i.ajf, 7
  store i32 %spec.select.i116.i, ptr %i.yc, align 8, !tbaa !168
  %i.ajq = lshr exact i32 128, %i.ajp
  %i.ajr = and i32 %i.ajq, %i.ajo
  %.not155.i.i = icmp eq i32 %i.ajr, 0
  %i.ajs = sext i32 %.0121.i155.i to i64
  %i.ajt = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.ajs
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !68 ; 3 uses
  br i1 %.not155.i.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ajv = zext nneg i8 %i.aju to i32
  %i.ajw = shl nuw i32 1, %i.ajv                  ; 2 uses
  %i.ajx = add nsw i32 %i.ajw, %.2134.i152.i
  %.not158.i.i = icmp sle i32 %i.ajx, %i.wn
  %i.ajy = zext i1 %.not158.i.i to i32
  %spec.select.i.i292 = add nsw i32 %.0121.i155.i, %i.ajy
  br label %bb.ef

bb.ec:                                            ; preds = %bb.ea
  %.not156.i.i = icmp eq i8 %i.aju, 0
  br i1 %.not156.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ajz = zext i8 %i.aju to i32                  ; 2 uses
  %i.aka = lshr i32 %spec.select.i116.i, 3
  %i.akb = zext nneg i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %i.akb
  %i.akd = load i32, ptr %i.akc, align 1, !tbaa !68
  %i.ake = call i32 @llvm.bswap.i32(i32 %i.akd)
  %i.akf = and i32 %spec.select.i116.i, 7
  %i.akg = shl i32 %i.ake, %i.akf
  %i.akh = sub nsw i32 32, %i.ajz
  %i.aki = lshr i32 %i.akg, %i.akh
  %i.akj = add i32 %spec.select.i116.i, %i.ajz
  %i.akk = call i32 @llvm.umin.i32(i32 %i.ajl, i32 %i.akj)
  store i32 %i.akk, ptr %i.yc, align 8, !tbaa !168
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.1128.i.i = phi i32 [ %i.aki, %bb.ed ], [ 0, %bb.ec ]
  %spec.select160.i.i = call i32 @llvm.usub.sat.i32(i32 %.0121.i155.i, i32 1)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.eb, %bb.dz
  %.2129.i.i = phi i32 [ %.0127.i153.i, %bb.dz ], [ %i.ajw, %bb.eb ], [ %.1128.i.i, %bb.ee ] ; 7 uses
  %.1124.i.i = phi i32 [ %spec.store.select.i.i, %bb.dz ], [ 1, %bb.eb ], [ 2, %bb.ee ]
  %.2.i.i = phi i32 [ %.0121.i155.i, %bb.dz ], [ %spec.select.i.i292, %bb.eb ], [ %spec.select160.i.i, %bb.ee ] ; 2 uses
  %i.akl = icmp eq i32 %i.agt, %i.ago
  %i.akm = icmp sgt i32 %.2129.i.i, 1
  %i.akn = icmp slt i32 %.2134.i152.i, %invariant.op.i
  %i.ako = select i1 %i.akm, i1 %i.akn, i1 false  ; 2 uses
  br i1 %i.akl, label %.preheader129.i, label %.preheader130.i

.preheader130.i:                                  ; preds = %bb.ef
  br i1 %i.ako, label %.lr.ph.i289.preheader, label %.loopexit.i

.lr.ph.i289.preheader:                            ; preds = %.preheader130.i
  %i.akp = shl nsw i64 %i.agk, 2
  %scevgep737 = getelementptr i8, ptr %scevgep736, i64 %i.akp
  %load_initial738 = load i32, ptr %scevgep737, align 4
  br label %.lr.ph.i289

.preheader129.i:                                  ; preds = %bb.ef
  br i1 %i.ako, label %.lr.ph149.i.preheader, label %.loopexit.i

.lr.ph149.i.preheader:                            ; preds = %.preheader129.i
  %i.akq = sub nsw i64 %4, %i.agk
  %i.akr = freeze i64 %i.akq
  %i.aks = add nsw i32 %.2129.i.i, -2
  %i.akt = zext i32 %i.aks to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.akr, i64 %i.akt) ; 2 uses
  %i.aku = add nuw nsw i64 %umin, 1               ; 2 uses
  %min.iters.check685 = icmp samesign ult i64 %umin, 7
  %or.cond744 = or i1 %min.iters.check685, %diff.check
  br i1 %or.cond744, label %.lr.ph149.i.preheader761, label %vector.ph686

vector.ph686:                                     ; preds = %.lr.ph149.i.preheader
  %n.vec687 = and i64 %i.aku, 8589934584          ; 4 uses
  %i.akv = add nsw i64 %n.vec687, %i.agk          ; 2 uses
  %i.akw = trunc i64 %n.vec687 to i32
  %i.akx = sub i32 %.2129.i.i, %i.akw             ; 2 uses
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph686
  %index689 = phi i64 [ 0, %vector.ph686 ], [ %index.next692, %vector.body688 ] ; 2 uses
  %i.aky = add i64 %index689, %i.agk              ; 2 uses
  %i.akz = getelementptr inbounds [4 x i8], ptr %i.adp, i64 %i.aky ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 16
  %wide.load690 = load <4 x i32>, ptr %i.akz, align 4, !tbaa !29
  %wide.load691 = load <4 x i32>, ptr %i.ala, align 4, !tbaa !29
  %i.alb = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.aky ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  store <4 x i32> %wide.load690, ptr %i.alb, align 4, !tbaa !29
  store <4 x i32> %wide.load691, ptr %i.alc, align 4, !tbaa !29
  %index.next692 = add nuw i64 %index689, 8       ; 2 uses
  %i.ald = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.ald, label %middle.block693, label %vector.body688, !llvm.loop !179

middle.block693:                                  ; preds = %vector.body688
  %cmp.n694 = icmp eq i64 %i.aku, %n.vec687
  br i1 %cmp.n694, label %.loopexit.loopexit.i, label %.lr.ph149.i.preheader761

.lr.ph149.i.preheader761:                         ; preds = %.lr.ph149.i.preheader, %middle.block693
  %indvars.iv185.i.ph = phi i64 [ %i.agk, %.lr.ph149.i.preheader ], [ %i.akv, %middle.block693 ]
  %.3130.i148.i.ph = phi i32 [ %.2129.i.i, %.lr.ph149.i.preheader ], [ %i.akx, %middle.block693 ]
  br label %.lr.ph149.i

.lr.ph149.i:                                      ; preds = %.lr.ph149.i.preheader761, %.lr.ph149.i
  %indvars.iv185.i = phi i64 [ %indvars.iv.next186.i, %.lr.ph149.i ], [ %indvars.iv185.i.ph, %.lr.ph149.i.preheader761 ] ; 3 uses
  %.3130.i148.i = phi i32 [ %i.alh, %.lr.ph149.i ], [ %.3130.i148.i.ph, %.lr.ph149.i.preheader761 ] ; 2 uses
  %i.ale = getelementptr inbounds [4 x i8], ptr %i.adp, i64 %indvars.iv185.i
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !29
  %i.alg = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %indvars.iv185.i
  store i32 %i.alf, ptr %i.alg, align 4, !tbaa !29
  %indvars.iv.next186.i = add nsw i64 %indvars.iv185.i, 1 ; 3 uses
  %i.alh = add nsw i32 %.3130.i148.i, -1          ; 2 uses
  %i.ali = icmp samesign ugt i32 %.3130.i148.i, 2
  %i.alj = icmp slt i64 %indvars.iv.next186.i, %i.yj
  %i.alk = select i1 %i.ali, i1 %i.alj, i1 false
  br i1 %i.alk, label %.lr.ph149.i, label %.loopexit.loopexit.i, !llvm.loop !180

.lr.ph.i289:                                      ; preds = %.lr.ph.i289.preheader, %.lr.ph.i289
  %store_forwarded739 = phi i32 [ %load_initial738, %.lr.ph.i289.preheader ], [ %i.alr, %.lr.ph.i289 ] ; 3 uses
  %indvars.iv.i290 = phi i64 [ %i.agk, %.lr.ph.i289.preheader ], [ %indvars.iv.next.i291, %.lr.ph.i289 ] ; 3 uses
  %.4131.i144.i = phi i32 [ %.2129.i.i, %.lr.ph.i289.preheader ], [ %i.als, %.lr.ph.i289 ] ; 2 uses
  %i.all = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %indvars.iv.i290
  %i.alm = getelementptr inbounds [4 x i8], ptr %i.adp, i64 %indvars.iv.i290 ; 2 uses
  %i.aln = getelementptr i8, ptr %i.alm, i64 -4
  %.val102.i = load i32, ptr %i.aln, align 4, !tbaa !29
  %.val103.i = load i32, ptr %i.alm, align 4, !tbaa !29 ; 2 uses
  %i.alo = sub i32 %store_forwarded739, %.val102.i
  %i.alp = add i32 %i.alo, %.val103.i             ; 2 uses
  %..i.i.i = call i32 @llvm.smax.i32(i32 %store_forwarded739, i32 %i.alp)
  %.20.i.i.i = call i32 @llvm.smin.i32(i32 %store_forwarded739, i32 %i.alp)
  %i.alq = call i32 @llvm.smin.i32(i32 %.val103.i, i32 %..i.i.i)
  %i.alr = call noundef i32 @llvm.smax.i32(i32 %i.alq, i32 %.20.i.i.i) ; 2 uses
  store i32 %i.alr, ptr %i.all, align 4, !tbaa !29
  %indvars.iv.next.i291 = add nsw i64 %indvars.iv.i290, 1 ; 3 uses
  %i.als = add nsw i32 %.4131.i144.i, -1          ; 2 uses
  %i.alt = icmp samesign ugt i32 %.4131.i144.i, 2
  %i.alu = icmp slt i64 %indvars.iv.next.i291, %i.yj
  %i.alv = select i1 %i.alt, i1 %i.alu, i1 false
  br i1 %i.alv, label %.lr.ph.i289, label %.loopexit.loopexit172.i, !llvm.loop !181

.loopexit.loopexit.i:                             ; preds = %.lr.ph149.i, %middle.block693
  %indvars.iv.next186.i.lcssa = phi i64 [ %i.akv, %middle.block693 ], [ %indvars.iv.next186.i, %.lr.ph149.i ]
  %.lcssa560 = phi i32 [ %i.akx, %middle.block693 ], [ %i.alh, %.lr.ph149.i ]
  %i.alw = trunc nsw i64 %indvars.iv.next186.i.lcssa to i32
  br label %.loopexit.thread.i

.loopexit.loopexit172.i:                          ; preds = %.lr.ph.i289
  %i.alx = trunc nsw i64 %indvars.iv.next.i291 to i32
  br label %.loopexit.thread.i

.loopexit.i:                                      ; preds = %.preheader129.i, %.preheader130.i
  %i.aly = icmp slt i32 %.2129.i.i, 1
  br i1 %i.aly, label %bb.eg, label %.loopexit.thread.i

bb.eg:                                            ; preds = %.loopexit.i
  %i.alz = load ptr, ptr %i.aet, align 8, !tbaa !182
  %i.ama = zext nneg i32 %.0116.i.i to i64
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %i.alz, i64 %i.ama
  %i.amc = call fastcc i32 @get_vlc_symbol(ptr noundef nonnull %2, ptr noundef %i.amb, i32 noundef %i.aeb) ; 2 uses
  %i.amd = icmp sgt i32 %i.amc, -1
  %i.ame = zext i1 %i.amd to i32
  %spec.select161.i.i = add nuw nsw i32 %i.amc, %i.ame
  br label %bb.ei

.loopexit.thread.i:                               ; preds = %.loopexit.i, %.loopexit.loopexit172.i, %.loopexit.loopexit.i
  %.5.i235.i = phi i32 [ %.2129.i.i, %.loopexit.i ], [ %i.als, %.loopexit.loopexit172.i ], [ %.lcssa560, %.loopexit.loopexit.i ]
  %.5137.i234.i = phi i32 [ %.2134.i152.i, %.loopexit.i ], [ %i.alx, %.loopexit.loopexit172.i ], [ %i.alw, %.loopexit.loopexit.i ] ; 2 uses
  %i.amf = add nsw i32 %.5.i235.i, -1
  %.pre432 = sext i32 %.5137.i234.i to i64
  br label %bb.ei

bb.eh:                                            ; preds = %bb.dy
  %i.amg = load ptr, ptr %i.aet, align 8, !tbaa !182
  %i.amh = zext nneg i32 %.0116.i.i to i64
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %i.amh
  %i.amj = call fastcc i32 @get_vlc_symbol(ptr noundef nonnull %2, ptr noundef %i.ami, i32 noundef %i.aeb)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.loopexit.thread.i, %bb.eg, %bb.dx
  %.pre-phi = phi i64 [ %i.agk, %bb.eh ], [ %.pre432, %.loopexit.thread.i ], [ %i.agk, %bb.eg ], [ %i.agk, %bb.dx ] ; 2 uses
  %.6138.i.i = phi i32 [ %.2134.i152.i, %bb.eh ], [ %.5137.i234.i, %.loopexit.thread.i ], [ %.2134.i152.i, %bb.eg ], [ %.2134.i152.i, %bb.dx ]
  %.6.i.i = phi i32 [ %.0127.i153.i, %bb.eh ], [ %i.amf, %.loopexit.thread.i ], [ 0, %bb.eg ], [ %.0127.i153.i, %bb.dx ]
  %.2125.i.i = phi i32 [ 0, %bb.eh ], [ %.1124.i.i, %.loopexit.thread.i ], [ 0, %bb.eg ], [ %.0123.i154.i, %bb.dx ]
  %.3.i.i = phi i32 [ %.0121.i155.i, %bb.eh ], [ %.2.i.i, %.loopexit.thread.i ], [ %.2.i.i, %bb.eg ], [ %.0121.i155.i, %bb.dx ] ; 2 uses
  %.0117.i.i = phi i32 [ %i.amj, %bb.eh ], [ 0, %.loopexit.thread.i ], [ %spec.select161.i.i, %bb.eg ], [ %i.aja, %bb.dx ] ; 2 uses
  %i.amk = sub i32 0, %.0117.i.i
  %i.aml = icmp slt i32 %i.aiw, 0
  %spec.select162.i.i = select i1 %i.aml, i32 %i.amk, i32 %.0117.i.i
  %i.amm = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %.pre-phi ; 2 uses
  %i.amn = getelementptr inbounds [4 x i8], ptr %i.adp, i64 %.pre-phi ; 2 uses
  %i.amo = getelementptr i8, ptr %i.amm, i64 -4
  %.val104.i = load i32, ptr %i.amo, align 4, !tbaa !29 ; 3 uses
  %i.amp = getelementptr i8, ptr %i.amn, i64 -4
  %.val105.i = load i32, ptr %i.amp, align 4, !tbaa !29
  %.val106.i = load i32, ptr %i.amn, align 4, !tbaa !29 ; 2 uses
  %i.amq = sub i32 %.val104.i, %.val105.i
  %i.amr = add i32 %i.amq, %.val106.i             ; 2 uses
  %..i.i117.i = call i32 @llvm.smax.i32(i32 %.val104.i, i32 %i.amr)
  %.20.i.i118.i = call i32 @llvm.smin.i32(i32 %.val104.i, i32 %i.amr)
  %i.ams = call i32 @llvm.smin.i32(i32 %.val106.i, i32 %..i.i117.i)
  %i.amt = call noundef i32 @llvm.smax.i32(i32 %i.ams, i32 %.20.i.i118.i)
  %i.amu = add i32 %i.amt, %spec.select162.i.i
  %i.amv = and i32 %i.amu, %i.aeu
  store i32 %i.amv, ptr %i.amm, align 4, !tbaa !29
  %i.amw = add nsw i32 %.6138.i.i, 1              ; 2 uses
  %i.amx = icmp slt i32 %i.amw, %i.wn
  br i1 %i.amx, label %bb.dq, label %._crit_edge.i287, !llvm.loop !183

._crit_edge.i287:                                 ; preds = %bb.ei, %.preheader136.i
  %.0121.i.lcssa.i = phi i32 [ %i.aeh, %.preheader136.i ], [ %.3.i.i, %bb.ei ]
  store i32 %.0121.i.lcssa.i, ptr %i.xq, align 8, !tbaa !170
  br label %.loopexit133.i

.loopexit133.i:                                   ; preds = %._crit_edge161.us.i, %._crit_edge.i287, %.preheader.preheader.i, %.preheader134.i, %.lr.ph166.preheader.i, %.preheader132.i
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 1 ; 2 uses
  %exitcond201.not.i = icmp eq i64 %indvars.iv.next199.i, 4
  br i1 %exitcond201.not.i, label %.preheader137.i, label %bb.dd, !llvm.loop !184

scalar.ph663:                                     ; preds = %scalar.ph663.preheader, %scalar.ph663
  %indvars.iv202.i = phi i64 [ %indvars.iv.next203.i, %scalar.ph663 ], [ %indvars.iv202.i.ph, %scalar.ph663.preheader ] ; 7 uses
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %indvars.iv202.i
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !29
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %indvars.iv202.i
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !29
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %indvars.iv202.i
  %i.and = load i32, ptr %i.anc, align 4, !tbaa !29
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv202.i
  %i.anf = load i32, ptr %i.ane, align 4, !tbaa !29
  %i.ang = sub nsw i32 %i.and, %i.abb             ; 2 uses
  %i.anh = sub nsw i32 %i.anf, %i.abb             ; 2 uses
  %i.ani = mul nsw i32 %i.ang, %i.acl
  %i.anj = mul nsw i32 %i.anh, %i.acm
  %i.ank = add nsw i32 %i.anj, %i.ani
  %i.anl = ashr i32 %i.ank, 2
  %i.anm = sub nsw i32 %i.amz, %i.anl             ; 3 uses
  %i.ann = add nsw i32 %i.anm, %i.ang
  %i.ano = add nsw i32 %i.anm, %i.anh
  %i.anp = sub nsw i32 %i.anb, %i.abb             ; 2 uses
  %i.anq = ashr i32 %i.anp, 1
  %i.anr = sub nsw i32 %i.anm, %i.anq             ; 2 uses
  %i.ans = add nsw i32 %i.anr, %i.anp
  %i.ant = trunc i32 %i.ano to i16
  %i.anu = shl nuw nsw i64 %indvars.iv202.i, 2
  %i.anv = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.anu ; 2 uses
  %i.anw = getelementptr inbounds i8, ptr %i.anv, i64 %i.abc
  store i16 %i.ant, ptr %i.anw, align 2, !tbaa !157
  %i.anx = trunc i32 %i.ans to i16
  %sext.i = shl nuw i64 %indvars.iv202.i, 34
  %i.any = ashr exact i64 %sext.i, 32
  %i.anz = getelementptr i8, ptr %i.wh, i64 %i.any
  %i.aoa = getelementptr i8, ptr %i.anz, i64 2    ; 2 uses
  %i.aob = getelementptr inbounds i8, ptr %i.aoa, i64 %i.abc
  store i16 %i.anx, ptr %i.aob, align 2, !tbaa !157
  %i.aoc = trunc i32 %i.anr to i16
  %i.aod = getelementptr inbounds i8, ptr %i.anv, i64 %i.abe
  store i16 %i.aoc, ptr %i.aod, align 2, !tbaa !157
  %i.aoe = trunc i32 %i.ann to i16
  %i.aof = getelementptr inbounds i8, ptr %i.aoa, i64 %i.abe
  store i16 %i.aoe, ptr %i.aof, align 2, !tbaa !157
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %exitcond206.not.i = icmp eq i64 %indvars.iv.next203.i, %i.yk
  br i1 %exitcond206.not.i, label %._crit_edge170.i, label %scalar.ph663, !llvm.loop !185

end_hunk_1
