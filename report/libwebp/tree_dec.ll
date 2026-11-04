Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/tree_dec?download=true
inline.NumInlined: 18
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@VP8ParseIntraModeRow:bb.a
  %i.gu = sub i64 %i.gm, %i.gt                    ; 2 uses
  store i64 %i.gu, ptr %0, align 8, !tbaa !29, !alias.scope !112
  br label %VP8GetBit.exit98.i

bb.am:                                            ; preds = %VP8LoadNewBytes.exit.i94.i
  %i.gv = add nuw nsw i32 %i.gl, 1
  br label %VP8GetBit.exit98.i

VP8GetBit.exit98.i:                               ; preds = %bb.am, %bb.al
  %i.gw = phi i64 [ %i.gu, %bb.al ], [ %i.gm, %bb.am ] ; 4 uses
  %.0.i95.i = phi i32 [ %i.gq, %bb.al ], [ %i.gv, %bb.am ] ; 2 uses
  %i.gx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.i95.i, i1 true)
  %i.gy = xor i32 %i.gx, 24                       ; 2 uses
  %i.gz = shl i32 %.0.i95.i, %i.gy
  %i.ha = sub nsw i32 %i.gj, %i.gy                ; 6 uses
  store i32 %i.ha, ptr %i.j, align 4, !tbaa !26, !alias.scope !112
  %i.hb = add i32 %i.gz, -1                       ; 5 uses
  store i32 %i.hb, ptr %i.i, align 8, !tbaa !25, !alias.scope !112
  %i.hc = icmp slt i32 %i.ha, 0                   ; 2 uses
  br i1 %.not135.i, label %bb.an, label %bb.at

bb.an:                                            ; preds = %VP8GetBit.exit98.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  br i1 %i.hc, label %bb.ao, label %VP8LoadNewBytes.exit.i99.i

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.hd = load ptr, ptr %i.k, align 8, !tbaa !27, !alias.scope !117 ; 3 uses
  %i.he = load ptr, ptr %i.l, align 8, !tbaa !28, !alias.scope !117
  %i.hf = icmp ult ptr %i.hd, %i.he
  br i1 %i.hf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %.0.copyload.i.i102.i = load i64, ptr %i.hd, align 1, !noalias !117
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 7
  store ptr %i.hg, ptr %i.k, align 8, !tbaa !27, !alias.scope !117
  %i.hh = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i102.i)
  %i.hi = tail call i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.hh, i64 56) ; 2 uses
  store i64 %i.hi, ptr %0, align 8, !tbaa !29, !alias.scope !117
  %i.hj = add nsw i32 %i.ha, 56
  br label %VP8LoadNewBytes.exit.i99.i

bb.aq:                                            ; preds = %bb.ao
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #7
  %.pre.i101.i = load i32, ptr %i.j, align 4, !tbaa !26, !alias.scope !115
  %.pre165.i = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !115
  br label %VP8LoadNewBytes.exit.i99.i

VP8LoadNewBytes.exit.i99.i:                       ; preds = %bb.aq, %bb.ap, %bb.an
  %i.hk = phi i64 [ %.pre165.i, %bb.aq ], [ %i.hi, %bb.ap ], [ %i.gw, %bb.an ] ; 2 uses
  %i.hl = phi i32 [ %.pre.i101.i, %bb.aq ], [ %i.hj, %bb.ap ], [ %i.ha, %bb.an ] ; 3 uses
  %i.hm = lshr i32 %i.hb, 1
  %i.hn = and i32 %i.hm, 16777215                 ; 4 uses
  %i.ho = zext i32 %i.hl to i64                   ; 2 uses
  %i.hp = lshr i64 %i.hk, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %.not136.i = icmp ult i32 %i.hn, %i.hq
  br i1 %.not136.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %VP8LoadNewBytes.exit.i99.i
  %i.hr = sub i32 %i.hb, %i.hn
  %i.hs = add nuw nsw i32 %i.hn, 1
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = shl i64 %i.ht, %i.ho
  %i.hv = sub i64 %i.hk, %i.hu
  store i64 %i.hv, ptr %0, align 8, !tbaa !29, !alias.scope !115
  br label %VP8GetBit.exit103.i

bb.as:                                            ; preds = %VP8LoadNewBytes.exit.i99.i
  %i.hw = add nuw nsw i32 %i.hn, 1
  br label %VP8GetBit.exit103.i

bb.at:                                            ; preds = %VP8GetBit.exit98.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  br i1 %i.hc, label %bb.au, label %VP8LoadNewBytes.exit.i104.i

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.hx = load ptr, ptr %i.k, align 8, !tbaa !27, !alias.scope !120 ; 3 uses
  %i.hy = load ptr, ptr %i.l, align 8, !tbaa !28, !alias.scope !120
  %i.hz = icmp ult ptr %i.hx, %i.hy
  br i1 %i.hz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.0.copyload.i.i107.i = load i64, ptr %i.hx, align 1, !noalias !120
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 7
  store ptr %i.ia, ptr %i.k, align 8, !tbaa !27, !alias.scope !120
  %i.ib = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i107.i)
  %i.ic = tail call i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.ib, i64 56) ; 2 uses
  store i64 %i.ic, ptr %0, align 8, !tbaa !29, !alias.scope !120
  %i.id = add nsw i32 %i.ha, 56
  br label %VP8LoadNewBytes.exit.i104.i

bb.aw:                                            ; preds = %bb.au
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #7
  %.pre.i106.i = load i32, ptr %i.j, align 4, !tbaa !26, !alias.scope !118
  %.pre164.i = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !118
  br label %VP8LoadNewBytes.exit.i104.i

VP8LoadNewBytes.exit.i104.i:                      ; preds = %bb.aw, %bb.av, %bb.at
  %i.ie = phi i64 [ %.pre164.i, %bb.aw ], [ %i.ic, %bb.av ], [ %i.gw, %bb.at ] ; 2 uses
  %i.if = phi i32 [ %.pre.i106.i, %bb.aw ], [ %i.id, %bb.av ], [ %i.ha, %bb.at ] ; 3 uses
  %i.ig = mul i32 %i.hb, 163
  %i.ih = lshr i32 %i.ig, 8                       ; 4 uses
  %i.ii = zext i32 %i.if to i64                   ; 2 uses
  %i.ij = lshr i64 %i.ie, %i.ii
  %i.ik = trunc i64 %i.ij to i32
  %.not137.i = icmp ult i32 %i.ih, %i.ik
  br i1 %.not137.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %VP8LoadNewBytes.exit.i104.i
  %i.il = sub i32 %i.hb, %i.ih
  %i.im = add nuw nsw i32 %i.ih, 1
  %i.in = zext nneg i32 %i.im to i64
  %i.io = shl i64 %i.in, %i.ii
  %i.ip = sub i64 %i.ie, %i.io
  store i64 %i.ip, ptr %0, align 8, !tbaa !29, !alias.scope !118
  br label %VP8GetBit.exit103.i

bb.ay:                                            ; preds = %VP8LoadNewBytes.exit.i104.i
  %i.iq = add nuw nsw i32 %i.ih, 1
  br label %VP8GetBit.exit103.i

VP8GetBit.exit103.i:                              ; preds = %bb.ay, %bb.ax, %bb.as, %bb.ar
  %.0.i105.sink237.i = phi i32 [ %i.hw, %bb.as ], [ %i.hr, %bb.ar ], [ %i.il, %bb.ax ], [ %i.iq, %bb.ay ] ; 2 uses
  %.sink233.i = phi i32 [ %i.hl, %bb.as ], [ %i.hl, %bb.ar ], [ %i.if, %bb.ax ], [ %i.if, %bb.ay ]
  %i.ir = phi i8 [ 3, %bb.as ], [ 1, %bb.ar ], [ 2, %bb.ax ], [ 0, %bb.ay ] ; 3 uses
  %i.is = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.i105.sink237.i, i1 true)
  %i.it = xor i32 %i.is, 24                       ; 2 uses
  %i.iu = shl i32 %.0.i105.sink237.i, %i.it
  %i.iv = sub nsw i32 %.sink233.i, %i.it
  store i32 %i.iv, ptr %i.j, align 4, !tbaa !26
  %storemerge.i = add i32 %i.iu, -1
  store i32 %storemerge.i, ptr %i.i, align 8, !tbaa !25
  %i.iw = getelementptr inbounds nuw i8, ptr %i.u, i64 769
  store i8 %i.ir, ptr %i.iw, align 1, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.s, i8 %i.ir, i64 4, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.e, i8 %i.ir, i64 4, i1 false)
  br label %.loopexit.i

bb.az:                                            ; preds = %VP8GetBit.exit93.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.u, i64 769
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bm, %bb.az
  %indvars.iv155.i = phi i64 [ 0, %bb.az ], [ %indvars.iv.next156.i, %bb.bm ] ; 2 uses
  %.063151.i = phi ptr [ %i.ix, %bb.az ], [ %i.md, %bb.bm ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv155.i ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !24
  %i.ja = zext i8 %i.iz to i32
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i, %bb.ba
  %indvars.iv.i = phi i64 [ 0, %bb.ba ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.061149.i = phi i32 [ %i.ja, %bb.ba ], [ %i.ma, %._crit_edge.i ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !24
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [90 x i8], ptr @kBModesProba, i64 %i.jd
  %i.jf = zext nneg i32 %.061149.i to i64
  %i.jg = getelementptr inbounds nuw [9 x i8], ptr %i.je, i64 %i.jf ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !24
  %i.ji = zext i8 %i.jh to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.jj = load i32, ptr %i.i, align 8, !tbaa !25, !alias.scope !121 ; 2 uses
  %i.jk = load i32, ptr %i.j, align 4, !tbaa !26, !alias.scope !121 ; 3 uses
  %i.jl = icmp slt i32 %i.jk, 0
  br i1 %i.jl, label %bb.bc, label %VP8LoadNewBytes.exit.i109.i

bb.bc:                                            ; preds = %bb.bb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.jm = load ptr, ptr %i.k, align 8, !tbaa !27, !alias.scope !123 ; 3 uses
  %i.jn = load ptr, ptr %i.l, align 8, !tbaa !28, !alias.scope !123
  %i.jo = icmp ult ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %.0.copyload.i.i112.i = load i64, ptr %i.jm, align 1, !noalias !123
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 7
  store ptr %i.jp, ptr %i.k, align 8, !tbaa !27, !alias.scope !123
  %i.jq = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i112.i)
  %i.jr = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !123
  %i.js = tail call i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jq, i64 56)
  store i64 %i.js, ptr %0, align 8, !tbaa !29, !alias.scope !123
  %i.jt = add nsw i32 %i.jk, 56
  br label %VP8LoadNewBytes.exit.i109.i

bb.be:                                            ; preds = %bb.bc
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #7
  %.pre.i111.i = load i32, ptr %i.j, align 4, !tbaa !26, !alias.scope !121
  br label %VP8LoadNewBytes.exit.i109.i

VP8LoadNewBytes.exit.i109.i:                      ; preds = %bb.be, %bb.bd, %bb.bb
  %i.ju = phi i32 [ %.pre.i111.i, %bb.be ], [ %i.jt, %bb.bd ], [ %i.jk, %bb.bb ] ; 2 uses
  %i.jv = mul i32 %i.jj, %i.ji
  %i.jw = lshr i32 %i.jv, 8                       ; 4 uses
  %i.jx = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !121 ; 3 uses
  %i.jy = zext i32 %i.ju to i64                   ; 2 uses
  %i.jz = lshr i64 %i.jx, %i.jy
  %i.ka = trunc i64 %i.jz to i32
  %i.kb = icmp ult i32 %i.jw, %i.ka               ; 3 uses
  br i1 %i.kb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %VP8LoadNewBytes.exit.i109.i
  %i.kc = sub i32 %i.jj, %i.jw
  %i.kd = add nuw nsw i32 %i.jw, 1
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = shl i64 %i.ke, %i.jy
  %i.kg = sub i64 %i.jx, %i.kf                    ; 2 uses
  store i64 %i.kg, ptr %0, align 8, !tbaa !29, !alias.scope !121
  br label %VP8GetBit.exit113.i

bb.bg:                                            ; preds = %VP8LoadNewBytes.exit.i109.i
  %i.kh = add nuw nsw i32 %i.jw, 1
  br label %VP8GetBit.exit113.i

VP8GetBit.exit113.i:                              ; preds = %bb.bg, %bb.bf
  %i.ki = phi i64 [ %i.kg, %bb.bf ], [ %i.jx, %bb.bg ]
  %.0.i110.i = phi i32 [ %i.kc, %bb.bf ], [ %i.kh, %bb.bg ] ; 2 uses
  %i.kj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.i110.i, i1 true)
  %i.kk = xor i32 %i.kj, 24                       ; 2 uses
  %i.kl = shl i32 %.0.i110.i, %i.kk
  %i.km = sub nsw i32 %i.ju, %i.kk                ; 2 uses
  store i32 %i.km, ptr %i.j, align 4, !tbaa !26, !alias.scope !121
  %i.kn = add i32 %i.kl, -1                       ; 2 uses
  store i32 %i.kn, ptr %i.i, align 8, !tbaa !25, !alias.scope !121
  %.pn143.i = zext i1 %i.kb to i64
  %.0.in.in144.i = getelementptr inbounds nuw i8, ptr @kYModesIntra4, i64 %.pn143.i
  %.0.in145.i = load i8, ptr %.0.in.in144.i, align 1, !tbaa !24
  %.0146.i = sext i8 %.0.in145.i to i32           ; 2 uses
  br i1 %i.kb, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %VP8GetBit.exit113.i, %VP8GetBit.exit118.i
  %i.ko = phi i64 [ %i.ls, %VP8GetBit.exit118.i ], [ %i.ki, %VP8GetBit.exit113.i ] ; 2 uses
  %i.kp = phi i32 [ %i.lx, %VP8GetBit.exit118.i ], [ %i.km, %VP8GetBit.exit113.i ] ; 3 uses
  %i.kq = phi i32 [ %i.ly, %VP8GetBit.exit118.i ], [ %i.kn, %VP8GetBit.exit113.i ] ; 2 uses
  %.0148.i = phi i32 [ %.0.i, %VP8GetBit.exit118.i ], [ %.0146.i, %VP8GetBit.exit113.i ] ; 2 uses
  %i.kr = shl nuw nsw i32 %.0148.i, 1
  %i.ks = zext nneg i32 %.0148.i to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !24
  %i.kv = zext i8 %i.ku to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.kw = icmp slt i32 %i.kp, 0
  br i1 %i.kw, label %bb.bh, label %VP8LoadNewBytes.exit.i114.i

bb.bh:                                            ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.kx = load ptr, ptr %i.k, align 8, !tbaa !27, !alias.scope !126 ; 3 uses
  %i.ky = load ptr, ptr %i.l, align 8, !tbaa !28, !alias.scope !126
  %i.kz = icmp ult ptr %i.kx, %i.ky
  br i1 %i.kz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.0.copyload.i.i117.i = load i64, ptr %i.kx, align 1, !noalias !126
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 7
  store ptr %i.la, ptr %i.k, align 8, !tbaa !27, !alias.scope !126
  %i.lb = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i117.i)
  %i.lc = tail call i64 @llvm.fshl.i64(i64 %i.ko, i64 %i.lb, i64 56) ; 2 uses
  store i64 %i.lc, ptr %0, align 8, !tbaa !29, !alias.scope !126
  %i.ld = add nsw i32 %i.kp, 56
  br label %VP8LoadNewBytes.exit.i114.i

bb.bj:                                            ; preds = %bb.bh
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #7
  %.pre.i116.i = load i32, ptr %i.j, align 4, !tbaa !26, !alias.scope !124
  %.pre166.i = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !124
  br label %VP8LoadNewBytes.exit.i114.i

VP8LoadNewBytes.exit.i114.i:                      ; preds = %bb.bj, %bb.bi, %.lr.ph.i
  %i.le = phi i64 [ %.pre166.i, %bb.bj ], [ %i.lc, %bb.bi ], [ %i.ko, %.lr.ph.i ] ; 3 uses
  %i.lf = phi i32 [ %.pre.i116.i, %bb.bj ], [ %i.ld, %bb.bi ], [ %i.kp, %.lr.ph.i ] ; 2 uses
  %i.lg = mul i32 %i.kq, %i.kv
  %i.lh = lshr i32 %i.lg, 8                       ; 4 uses
  %i.li = zext i32 %i.lf to i64                   ; 2 uses
  %i.lj = lshr i64 %i.le, %i.li
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = icmp ult i32 %i.lh, %i.lk               ; 2 uses
  br i1 %i.ll, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %VP8LoadNewBytes.exit.i114.i
  %i.lm = sub i32 %i.kq, %i.lh
  %i.ln = add nuw nsw i32 %i.lh, 1
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = shl i64 %i.lo, %i.li
  %i.lq = sub i64 %i.le, %i.lp                    ; 2 uses
  store i64 %i.lq, ptr %0, align 8, !tbaa !29, !alias.scope !124
  br label %VP8GetBit.exit118.i

bb.bl:                                            ; preds = %VP8LoadNewBytes.exit.i114.i
  %i.lr = add nuw nsw i32 %i.lh, 1
  br label %VP8GetBit.exit118.i

VP8GetBit.exit118.i:                              ; preds = %bb.bl, %bb.bk
  %i.ls = phi i64 [ %i.lq, %bb.bk ], [ %i.le, %bb.bl ]
  %.0.i115.i = phi i32 [ %i.lm, %bb.bk ], [ %i.lr, %bb.bl ] ; 2 uses
  %i.lt = zext i1 %i.ll to i32
  %i.lu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.i115.i, i1 true)
  %i.lv = xor i32 %i.lu, 24                       ; 2 uses
  %i.lw = shl i32 %.0.i115.i, %i.lv
  %i.lx = sub nsw i32 %i.lf, %i.lv                ; 2 uses
  store i32 %i.lx, ptr %i.j, align 4, !tbaa !26, !alias.scope !124
  %i.ly = add i32 %i.lw, -1                       ; 2 uses
  store i32 %i.ly, ptr %i.i, align 8, !tbaa !25, !alias.scope !124
  %i.lz = or disjoint i32 %i.kr, %i.lt
  %.pn.i = zext nneg i32 %i.lz to i64             ; 2 uses
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr @kYModesIntra4, i64 %.pn.i
  %.0.in.i = load i8, ptr %.0.in.in.i, align 1, !tbaa !24
  %.0.i = sext i8 %.0.in.i to i32                 ; 2 uses
  %2 = shl nuw i64 1, %.pn.i
  %3 = and i64 %2, 41706
  %.not142.i = icmp eq i64 %3, 0
  br i1 %.not142.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !73

._crit_edge.i:                                    ; preds = %VP8GetBit.exit118.i, %VP8GetBit.exit113.i
  %.0.lcssa.i = phi i32 [ %.0146.i, %VP8GetBit.exit113.i ], [ %.0.i, %VP8GetBit.exit118.i ]
  %i.ma = sub nsw i32 0, %.0.lcssa.i              ; 2 uses
  %i.mb = trunc nuw i32 %i.ma to i8               ; 2 uses
  store i8 %i.mb, ptr %i.jb, align 1, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.bm, label %bb.bb, !llvm.loop !74

bb.bm:                                            ; preds = %._crit_edge.i
  %i.mc = load i32, ptr %i.s, align 1
  store i32 %i.mc, ptr %.063151.i, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %.063151.i, i64 4
  store i8 %i.mb, ptr %i.iy, align 1, !tbaa !24
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i, 1 ; 2 uses
  %exitcond158.not.i = icmp eq i64 %indvars.iv.next156.i, 4
  br i1 %exitcond158.not.i, label %.loopexit.i, label %bb.ba, !llvm.loop !75

.loopexit.i:                                      ; preds = %bb.bm, %VP8GetBit.exit103.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.me = load i32, ptr %i.i, align 8, !tbaa !25, !alias.scope !127 ; 2 uses
  %i.mf = load i32, ptr %i.j, align 4, !tbaa !26, !alias.scope !127 ; 3 uses
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %bb.bn, label %VP8LoadNewBytes.exit.i119.i

bb.bn:                                            ; preds = %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.mh = load ptr, ptr %i.k, align 8, !tbaa !27, !alias.scope !129 ; 3 uses
  %i.mi = load ptr, ptr %i.l, align 8, !tbaa !28, !alias.scope !129
  %i.mj = icmp ult ptr %i.mh, %i.mi
  br i1 %i.mj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %.0.copyload.i.i122.i = load i64, ptr %i.mh, align 1, !noalias !129
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 7
  store ptr %i.mk, ptr %i.k, align 8, !tbaa !27, !alias.scope !129
  %i.ml = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i122.i)
  %i.mm = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !129
  %i.mn = tail call i64 @llvm.fshl.i64(i64 %i.mm, i64 %i.ml, i64 56)
  store i64 %i.mn, ptr %0, align 8, !tbaa !29, !alias.scope !129
  %i.mo = add nsw i32 %i.mf, 56
  br label %VP8LoadNewBytes.exit.i119.i

bb.bp:                                            ; preds = %bb.bn
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #7
  %.pre.i121.i = load i32, ptr %i.j, align 4, !tbaa !26, !alias.scope !127
  br label %VP8LoadNewBytes.exit.i119.i

VP8LoadNewBytes.exit.i119.i:                      ; preds = %bb.bp, %bb.bo, %.loopexit.i
  %i.mp = phi i32 [ %.pre.i121.i, %bb.bp ], [ %i.mo, %bb.bo ], [ %i.mf, %.loopexit.i ] ; 2 uses
  %i.mq = mul i32 %i.me, 142
  %i.mr = lshr i32 %i.mq, 8                       ; 4 uses
  %i.ms = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !127 ; 3 uses
  %i.mt = zext i32 %i.mp to i64                   ; 2 uses
  %i.mu = lshr i64 %i.ms, %i.mt
  %i.mv = trunc i64 %i.mu to i32
  %.not139.i = icmp ult i32 %i.mr, %i.mv          ; 2 uses
  br i1 %.not139.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %VP8LoadNewBytes.exit.i119.i
  %i.mw = sub i32 %i.me, %i.mr
  %i.mx = add nuw nsw i32 %i.mr, 1
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = shl i64 %i.my, %i.mt
  %i.na = sub i64 %i.ms, %i.mz                    ; 2 uses
  store i64 %i.na, ptr %0, align 8, !tbaa !29, !alias.scope !127
  br label %VP8GetBit.exit123.i

bb.br:                                            ; preds = %VP8LoadNewBytes.exit.i119.i
  %i.nb = add nuw nsw i32 %i.mr, 1
  br label %VP8GetBit.exit123.i

VP8GetBit.exit123.i:                              ; preds = %bb.br, %bb.bq
  %i.nc = phi i64 [ %i.na, %bb.bq ], [ %i.ms, %bb.br ] ; 2 uses
  %.0.i120.i = phi i32 [ %i.mw, %bb.bq ], [ %i.nb, %bb.br ] ; 2 uses
  %i.nd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.i120.i, i1 true)
  %i.ne = xor i32 %i.nd, 24                       ; 2 uses
  %i.nf = shl i32 %.0.i120.i, %i.ne
  %i.ng = sub nsw i32 %i.mp, %i.ne                ; 4 uses
  store i32 %i.ng, ptr %i.j, align 4, !tbaa !26, !alias.scope !127
  %i.nh = add i32 %i.nf, -1                       ; 3 uses
  store i32 %i.nh, ptr %i.i, align 8, !tbaa !25, !alias.scope !127
  br i1 %.not139.i, label %bb.bs, label %ParseIntraMode.exit

bb.bs:                                            ; preds = %VP8GetBit.exit123.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.ni = icmp slt i32 %i.ng, 0
  br i1 %i.ni, label %bb.bt, label %VP8LoadNewBytes.exit.i124.i

bb.bt:                                            ; preds = %bb.bs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.nj = load ptr, ptr %i.k, align 8, !tbaa !27, !alias.scope !132 ; 3 uses
  %i.nk = load ptr, ptr %i.l, align 8, !tbaa !28, !alias.scope !132
  %i.nl = icmp ult ptr %i.nj, %i.nk
  br i1 %i.nl, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %.0.copyload.i.i127.i = load i64, ptr %i.nj, align 1, !noalias !132
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 7
  store ptr %i.nm, ptr %i.k, align 8, !tbaa !27, !alias.scope !132
  %i.nn = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i127.i)
  %i.no = tail call i64 @llvm.fshl.i64(i64 %i.nc, i64 %i.nn, i64 56) ; 2 uses
  store i64 %i.no, ptr %0, align 8, !tbaa !29, !alias.scope !132
  %i.np = add nsw i32 %i.ng, 56
  br label %VP8LoadNewBytes.exit.i124.i

bb.bv:                                            ; preds = %bb.bt
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #7
  %.pre.i126.i = load i32, ptr %i.j, align 4, !tbaa !26, !alias.scope !130
  %.pre167.i = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !130
  br label %VP8LoadNewBytes.exit.i124.i

VP8LoadNewBytes.exit.i124.i:                      ; preds = %bb.bv, %bb.bu, %bb.bs
  %i.nq = phi i64 [ %.pre167.i, %bb.bv ], [ %i.no, %bb.bu ], [ %i.nc, %bb.bs ] ; 3 uses
  %i.nr = phi i32 [ %.pre.i126.i, %bb.bv ], [ %i.np, %bb.bu ], [ %i.ng, %bb.bs ] ; 2 uses
  %i.ns = mul i32 %i.nh, 114
  %i.nt = lshr i32 %i.ns, 8                       ; 4 uses
  %i.nu = zext i32 %i.nr to i64                   ; 2 uses
  %i.nv = lshr i64 %i.nq, %i.nu
  %i.nw = trunc i64 %i.nv to i32
  %.not140.i = icmp ult i32 %i.nt, %i.nw          ; 2 uses
  br i1 %.not140.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %VP8LoadNewBytes.exit.i124.i
  %i.nx = sub i32 %i.nh, %i.nt
  %i.ny = add nuw nsw i32 %i.nt, 1
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = shl i64 %i.nz, %i.nu
  %i.ob = sub i64 %i.nq, %i.oa                    ; 2 uses
  store i64 %i.ob, ptr %0, align 8, !tbaa !29, !alias.scope !130
  br label %VP8GetBit.exit128.i

bb.bx:                                            ; preds = %VP8LoadNewBytes.exit.i124.i
  %i.oc = add nuw nsw i32 %i.nt, 1
  br label %VP8GetBit.exit128.i

VP8GetBit.exit128.i:                              ; preds = %bb.bx, %bb.bw
  %i.od = phi i64 [ %i.ob, %bb.bw ], [ %i.nq, %bb.bx ] ; 2 uses
  %.0.i125.i = phi i32 [ %i.nx, %bb.bw ], [ %i.oc, %bb.bx ] ; 2 uses
  %i.oe = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.i125.i, i1 true)
  %i.of = xor i32 %i.oe, 24                       ; 2 uses
  %i.og = shl i32 %.0.i125.i, %i.of
  %i.oh = sub nsw i32 %i.nr, %i.of                ; 4 uses
  store i32 %i.oh, ptr %i.j, align 4, !tbaa !26, !alias.scope !130
  %i.oi = add i32 %i.og, -1                       ; 3 uses
  store i32 %i.oi, ptr %i.i, align 8, !tbaa !25, !alias.scope !130
  br i1 %.not140.i, label %bb.by, label %ParseIntraMode.exit

bb.by:                                            ; preds = %VP8GetBit.exit128.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.oj = icmp slt i32 %i.oh, 0
  br i1 %i.oj, label %bb.bz, label %VP8LoadNewBytes.exit.i129.i

bb.bz:                                            ; preds = %bb.by
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.ok = load ptr, ptr %i.k, align 8, !tbaa !27, !alias.scope !135 ; 3 uses
  %i.ol = load ptr, ptr %i.l, align 8, !tbaa !28, !alias.scope !135
  %i.om = icmp ult ptr %i.ok, %i.ol
  br i1 %i.om, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %.0.copyload.i.i132.i = load i64, ptr %i.ok, align 1, !noalias !135
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 7
  store ptr %i.on, ptr %i.k, align 8, !tbaa !27, !alias.scope !135
  %i.oo = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i132.i)
  %i.op = tail call i64 @llvm.fshl.i64(i64 %i.od, i64 %i.oo, i64 56) ; 2 uses
  store i64 %i.op, ptr %0, align 8, !tbaa !29, !alias.scope !135
  %i.oq = add nsw i32 %i.oh, 56
  br label %VP8LoadNewBytes.exit.i129.i

bb.cb:                                            ; preds = %bb.bz
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #7
  %.pre.i131.i = load i32, ptr %i.j, align 4, !tbaa !26, !alias.scope !133
  %.pre168.i = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !133
  br label %VP8LoadNewBytes.exit.i129.i

VP8LoadNewBytes.exit.i129.i:                      ; preds = %bb.cb, %bb.ca, %bb.by
  %i.or = phi i64 [ %.pre168.i, %bb.cb ], [ %i.op, %bb.ca ], [ %i.od, %bb.by ] ; 2 uses
  %i.os = phi i32 [ %.pre.i131.i, %bb.cb ], [ %i.oq, %bb.ca ], [ %i.oh, %bb.by ] ; 2 uses
  %i.ot = mul i32 %i.oi, 183
  %i.ou = lshr i32 %i.ot, 8                       ; 4 uses
  %i.ov = zext i32 %i.os to i64                   ; 2 uses
  %i.ow = lshr i64 %i.or, %i.ov
  %i.ox = trunc i64 %i.ow to i32
  %.not141.i = icmp ult i32 %i.ou, %i.ox
  br i1 %.not141.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %VP8LoadNewBytes.exit.i129.i
  %i.oy = sub i32 %i.oi, %i.ou
  %i.oz = add nuw nsw i32 %i.ou, 1
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = shl i64 %i.pa, %i.ov
  %i.pc = sub i64 %i.or, %i.pb
  store i64 %i.pc, ptr %0, align 8, !tbaa !29, !alias.scope !133
  br label %VP8GetBit.exit133.i

bb.cd:                                            ; preds = %VP8LoadNewBytes.exit.i129.i
  %i.pd = add nuw nsw i32 %i.ou, 1
  br label %VP8GetBit.exit133.i
end_hunk_0
