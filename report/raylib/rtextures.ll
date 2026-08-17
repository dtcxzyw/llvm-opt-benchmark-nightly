inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbir__alloc_internal_mem_and_build_samplers:bb.a
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %._crit_edge
  %i.hq = load i32, ptr %i.ea, align 4
  %i.hr = sext i32 %i.hq to i64                   ; 4 uses
  %i.hs = load i32, ptr %i.eb, align 8
  %i.ht = sext i32 %i.hs to i64                   ; 2 uses
  %i.hu = add nsw i64 %i.ht, %i.hr
  %.not332 = icmp ult i64 %i.ee, %i.hu
  br i1 %.not332, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not3313108, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hv = getelementptr inbounds nuw i8, ptr %.1289, i64 416 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 16
  %i.hx = load ptr, ptr %i.hw, align 8
  store ptr %i.hx, ptr %i.ef, align 8
  %i.hy = load ptr, ptr %i.hv, align 16
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 %i.hr
  store ptr %i.ia, ptr %i.eg, align 8
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  %i.ib = add i64 %.0296.in.lcssa, 15             ; 3 uses
  br i1 %.not330, label %.thread6, label %bb.ah

.thread6:                                         ; preds = %bb.ag
  %i.ic = or i64 %i.ib, 15
  %i.id = add i64 %i.ic, %i.hr
  %i.ie = and i64 %i.id, -16
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.if = and i64 %i.ib, -16
  %i.ig = inttoptr i64 %i.if to ptr
  store ptr %i.ig, ptr %i.ef, align 8
  %i.ih = or i64 %i.ib, 15
  %i.ii = add i64 %i.ih, %i.hr
  %i.ij = and i64 %i.ii, -16                      ; 2 uses
  %i.ik = inttoptr i64 %i.ij to ptr
  store ptr %i.ik, ptr %i.eg, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.thread6, %bb.ah
  %i.il = phi i64 [ %i.ie, %.thread6 ], [ %i.ij, %bb.ah ]
  %i.im = add i64 %i.il, %i.ht
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af, %bb.ae, %._crit_edge
  %.2298 = phi i64 [ %.0296.in.lcssa, %._crit_edge ], [ %.0296.in.lcssa, %bb.af ], [ %.0296.in.lcssa, %bb.ae ], [ %i.im, %bb.ai ]
  %i.in = add i64 %.2298, 15                      ; 3 uses
  br i1 %.not330, label %.thread7, label %bb.ak

.thread7:                                         ; preds = %bb.aj
  %i.io = load i32, ptr %i.eh, align 4
  %i.ip = sext i32 %i.io to i64
  %i.iq = or i64 %i.in, 15
  %i.ir = add i64 %i.iq, %i.ip
  %i.is = and i64 %i.ir, -16
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.it = and i64 %i.in, -16
  %i.iu = inttoptr i64 %i.it to ptr
  store ptr %i.iu, ptr %0, align 8
  %i.iv = load i32, ptr %i.eh, align 4
  %i.iw = sext i32 %i.iv to i64
  %i.ix = or i64 %i.in, 15
  %i.iy = add i64 %i.ix, %i.iw
  %i.iz = and i64 %i.iy, -16                      ; 2 uses
  %i.ja = inttoptr i64 %i.iz to ptr
  store ptr %i.ja, ptr %i.ei, align 8
  br label %bb.al

bb.al:                                            ; preds = %.thread7, %bb.ak
  %i.jb = phi i64 [ %i.is, %.thread7 ], [ %i.iz, %bb.ak ]
  %i.jc = load i32, ptr %i.dk, align 8
  %i.jd = sext i32 %i.jc to i64
  %i.je = add i64 %i.jb, %i.jd                    ; 2 uses
  %i.jf = load ptr, ptr %i.dl, align 8
  %i.jg = load ptr, ptr %i.dm, align 8
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.am, label %.thread8

bb.am:                                            ; preds = %bb.al
  %i.ji = load ptr, ptr %i.ej, align 8
  %i.jj = load ptr, ptr %i.ek, align 8
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %bb.an, label %.thread8

bb.an:                                            ; preds = %bb.am
  %i.jl = load i32, ptr %i.el, align 8
  %i.jm = load i32, ptr %i.em, align 8
  %i.jn = icmp eq i32 %i.jl, %i.jm
  br i1 %i.jn, label %bb.ao, label %.thread8

bb.ao:                                            ; preds = %bb.an
  %i.jo = load i32, ptr %i.bf, align 4
  %i.jp = load i32, ptr %i.a, align 4
  %i.jq = icmp eq i32 %i.jo, %i.jp
  br i1 %i.jq, label %bb.ap, label %.thread8

bb.ap:                                            ; preds = %bb.ao
  %i.jr = load float, ptr %i.bd, align 8
  %i.js = load float, ptr %i.bj, align 8
  %i.jt = fsub float %i.jr, %i.js
  %i.ju = load float, ptr %i.en, align 8
  %i.jv = load float, ptr %i.eo, align 8
  %i.jw = fsub float %i.ju, %i.jv
  %.0286 = tail call float @llvm.fabs.f32(float %i.jt)
  %.0 = tail call float @llvm.fabs.f32(float %i.jw)
  %i.jx = fcmp ole float %.0286, f0x03800000
  %i.jy = fcmp ole float %.0, f0x03800000
  %or.cond23 = select i1 %i.jx, i1 %i.jy, i1 false
  br i1 %or.cond23, label %bb.aq, label %.thread8

bb.aq:                                            ; preds = %bb.ap
  %i.jz = load i32, ptr %i.ep, align 8
  %i.ka = load i32, ptr %i.bl, align 8
  %i.kb = icmp eq i32 %i.jz, %i.ka
  br i1 %i.kb, label %bb.at, label %.thread8

.thread8:                                         ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %.2292 = phi ptr [ null, %bb.al ], [ null, %bb.ao ], [ null, %bb.an ], [ null, %bb.am ], [ null, %bb.ap ], [ %0, %bb.aq ]
  %i.kc = add i64 %i.je, 15                       ; 3 uses
  br i1 %.not330, label %.thread12, label %bb.ar

.thread12:                                        ; preds = %.thread8
  %i.kd = load i32, ptr %i.eq, align 4
  %i.ke = sext i32 %i.kd to i64
  %i.kf = or i64 %i.kc, 15
  %i.kg = add i64 %i.kf, %i.ke
  %i.kh = and i64 %i.kg, -16
  br label %bb.as

bb.ar:                                            ; preds = %.thread8
  %i.ki = and i64 %i.kc, -16
  %i.kj = inttoptr i64 %i.ki to ptr
  store ptr %i.kj, ptr %1, align 8
  %i.kk = load i32, ptr %i.eq, align 4
  %i.kl = sext i32 %i.kk to i64
  %i.km = or i64 %i.kc, 15
  %i.kn = add i64 %i.km, %i.kl
  %i.ko = and i64 %i.kn, -16                      ; 2 uses
  %i.kp = inttoptr i64 %i.ko to ptr
  store ptr %i.kp, ptr %i.er, align 8
  br label %bb.as

bb.as:                                            ; preds = %.thread12, %bb.ar
  %i.kq = phi i64 [ %i.kh, %.thread12 ], [ %i.ko, %bb.ar ]
  %i.kr = load i32, ptr %i.es, align 8
  %i.ks = sext i32 %i.kr to i64
  %i.kt = add i64 %i.kq, %i.ks
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.as
  %.3299.in = phi i64 [ %i.kt, %bb.as ], [ %i.je, %bb.aq ]
  %.not333 = phi i1 [ true, %bb.as ], [ false, %bb.aq ]
  %.3 = phi ptr [ %.2292, %bb.as ], [ null, %bb.aq ]
  br i1 %.not3313108, label %.thread13, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call fastcc void @stbir__calculate_filters(ptr noundef %0, ptr noundef null, ptr noundef %8)
  %i.ku = getelementptr inbounds [8 x i8], ptr @stbir__horizontal_gather_n_coeffs_funcs, i64 %i.aw
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.kx = load i32, ptr %i.kw, align 4
  %i.ky = and i32 %i.kx, 3
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.kz
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %.1289, i64 440 ; 2 uses
  store ptr %i.lb, ptr %i.lc, align 8
  %i.ld = load i32, ptr %i.kw, align 4            ; 2 uses
  %i.le = icmp slt i32 %i.ld, 13
  br i1 %i.le, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.lf = getelementptr inbounds [8 x i8], ptr @stbir__horizontal_gather_channels_funcs, i64 %i.aw
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = sext i32 %i.ld to i64
  %i.li = getelementptr [8 x i8], ptr %i.lg, i64 %i.lh
  %i.lj = getelementptr i8, ptr %i.li, i64 -8
  %i.lk = load ptr, ptr %i.lj, align 8
  store ptr %i.lk, ptr %i.lc, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ex, i64 368
  store i32 %.0.val, ptr %i.ll, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %.1289, i64 372 ; 2 uses
  store i32 %.4.val, ptr %i.lm, align 4
  %i.ln = load i32, ptr %i.el, align 8            ; 3 uses
  %i.lo = load ptr, ptr %0, align 8               ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lq = load i32, ptr %i.bf, align 4            ; 4 uses
  %i.lr = load i32, ptr %i.lp, align 8            ; 12 uses
  %i.ls = sub i32 0, %i.lr                        ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.lu = load i32, ptr %i.lt, align 4            ; 2 uses
  %i.lv = icmp sgt i32 %i.lq, 0
  br i1 %i.lv, label %.lr.ph.i343, label %._crit_edge.i

.lr.ph248.preheader.i:                            ; preds = %.lr.ph.i343
  %i.lw = zext nneg i32 %i.lq to i64
  br label %.lr.ph248.i

.lr.ph.i343:                                      ; preds = %bb.aw, %.lr.ph.i343
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i343 ], [ 0, %bb.aw ] ; 3 uses
  %.0166242.i = phi i32 [ %.1167.i, %.lr.ph.i343 ], [ %i.lq, %bb.aw ]
  %.0174241.i = phi i32 [ %.1175.i, %.lr.ph.i343 ], [ 2147483647, %bb.aw ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv.i
  %i.ly = load i32, ptr %i.lx, align 4            ; 2 uses
  %i.lz = icmp slt i32 %i.ly, %.0174241.i
  %i.ma = trunc i64 %indvars.iv.i to i32
  %i.mb = add i32 %i.lu, %i.ma
  %spec.select.i344 = tail call i32 @llvm.smin.i32(i32 %i.mb, i32 %i.lq)
  %.1175.i = tail call i32 @llvm.smin.i32(i32 %i.ly, i32 %.0174241.i) ; 2 uses
  %.1167.i = select i1 %i.lz, i32 %spec.select.i344, i32 %.0166242.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mc = sext i32 %.1167.i to i64
  %i.md = icmp slt i64 %indvars.iv.next.i, %i.mc
  br i1 %i.md, label %.lr.ph.i343, label %.lr.ph248.preheader.i

.lr.ph248.i:                                      ; preds = %.lr.ph248.i, %.lr.ph248.preheader.i
  %indvars.iv264.i = phi i64 [ %i.lw, %.lr.ph248.preheader.i ], [ %indvars.iv.next265.i, %.lr.ph248.i ]
  %.2168246.i = phi i32 [ 0, %.lr.ph248.preheader.i ], [ %.3169.i, %.lr.ph248.i ]
  %.0178245.i = phi i32 [ -2147483647, %.lr.ph248.preheader.i ], [ %.1179.i, %.lr.ph248.i ] ; 2 uses
  %indvars.iv.next265.i = add nsw i64 %indvars.iv264.i, -1 ; 4 uses
  %i.me = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %indvars.iv.next265.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %i.mg = load i32, ptr %i.mf, align 4            ; 2 uses
  %i.mh = icmp sgt i32 %i.mg, %.0178245.i
  %i.mi = trunc i64 %indvars.iv.next265.i to i32
  %i.mj = sub i32 %i.mi, %i.lu
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.mj, i32 0)
  %.1179.i = tail call i32 @llvm.smax.i32(i32 %i.mg, i32 %.0178245.i) ; 2 uses
  %.3169.i = select i1 %i.mh, i32 %spec.store.select.i, i32 %.2168246.i ; 2 uses
  %i.mk = zext nneg i32 %.3169.i to i64
  %.not.not.i = icmp sgt i64 %indvars.iv.next265.i, %i.mk
  br i1 %.not.not.i, label %.lr.ph248.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph248.i, %bb.aw
  %.0174.lcssa275.i = phi i32 [ 2147483647, %bb.aw ], [ %.1175.i, %.lr.ph248.i ] ; 3 uses
  %.0178.lcssa.i = phi i32 [ -2147483647, %bb.aw ], [ %.1179.i, %.lr.ph248.i ] ; 3 uses
  %spec.select211.i = tail call i32 @llvm.smax.i32(i32 %.0174.lcssa275.i, i32 0) ; 8 uses
  %i.ml = tail call i32 @llvm.smin.i32(i32 %.0174.lcssa275.i, i32 0) ; 2 uses
  %spec.select212.i = sub nsw i32 0, %i.ml        ; 3 uses
  %.not.i338 = icmp slt i32 %.0178.lcssa.i, %i.lr
  %reass.sub48 = sub i32 %.0178.lcssa.i, %i.lr
  %i.mm = add i32 %reass.sub48, 1
  %i.mn = add nsw i32 %i.lr, -1                   ; 4 uses
  %.2180.i = tail call i32 @llvm.smin.i32(i32 %.0178.lcssa.i, i32 %i.mn) ; 5 uses
  %.0172.i = select i1 %.not.i338, i32 0, i32 %i.mm ; 5 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.1289, i64 376 ; 2 uses
  store i32 %spec.select212.i, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %.1289, i64 380 ; 2 uses
  store i32 %.0172.i, ptr %i.mp, align 4
  %i.mq = getelementptr inbounds nuw i8, ptr %.1289, i64 384 ; 8 uses
  store i32 %spec.select211.i, ptr %i.mq, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %.1289, i64 388 ; 3 uses
  store i32 %.2180.i, ptr %i.mr, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %.1289, i64 392 ; 3 uses
  store i32 %spec.select211.i, ptr %i.ms, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %.1289, i64 396 ; 8 uses
  store i32 0, ptr %i.mt, align 4
  %i.mu = getelementptr inbounds nuw i8, ptr %.1289, i64 400 ; 5 uses
  store i32 -1, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %.1289, i64 404 ; 3 uses
  store i32 0, ptr %i.mv, align 4
  %i.mw = icmp eq i32 %i.ln, 3
  br i1 %i.mw, label %stbir__get_extents.exit, label %.preheader235.i

.preheader235.i:                                  ; preds = %._crit_edge.i
  %i.mx = icmp slt i32 %.0174.lcssa275.i, 0
  br i1 %i.mx, label %.lr.ph253.i, label %.preheader.i

.preheader.i:                                     ; preds = %stbir__edge_wrap.exit.i, %.preheader235.i
  %.0188.lcssa.i = phi i32 [ -2147483647, %.preheader235.i ], [ %.1189.i, %stbir__edge_wrap.exit.i ] ; 4 uses
  %.0182.lcssa.i = phi i32 [ 2147483647, %.preheader235.i ], [ %spec.select213.i, %stbir__edge_wrap.exit.i ] ; 7 uses
  %i.my = add nsw i32 %.0172.i, %i.lr
  %i.mz = icmp sgt i32 %.0172.i, 0
  br i1 %i.mz, label %.lr.ph259.i, label %._crit_edge260.i

.lr.ph259.i:                                      ; preds = %.preheader.i
  %i.na = shl nsw i32 %i.lr, 1                    ; 2 uses
  br label %bb.ax

.lr.ph253.i:                                      ; preds = %.preheader235.i, %stbir__edge_wrap.exit.i
  %.2252.i = phi i32 [ %i.nf, %stbir__edge_wrap.exit.i ], [ %i.ml, %.preheader235.i ] ; 4 uses
  %.0182251.i = phi i32 [ %spec.select213.i, %stbir__edge_wrap.exit.i ], [ 2147483647, %.preheader235.i ]
  %.0188250.i = phi i32 [ %.1189.i, %stbir__edge_wrap.exit.i ], [ -2147483647, %.preheader235.i ]
  switch i32 %i.ln, label %default.switch.case.unreachable.i.i [
    i32 0, label %stbir__edge_wrap.exit.i
    i32 1, label %call.1.i.i
    i32 2, label %call.2.i.i
    i32 3, label %stbir__edge_wrap.exit.i
  ], !prof !514

default.switch.case.unreachable.i.i:              ; preds = %.lr.ph253.i
  unreachable

call.1.i.i:                                       ; preds = %.lr.ph253.i
  %i.nb = icmp sgt i32 %.2252.i, %i.ls
  %i.nc = sub nsw i32 0, %.2252.i
  %spec.select233.i = select i1 %i.nb, i32 %i.nc, i32 %i.mn
  br label %stbir__edge_wrap.exit.i

call.2.i.i:                                       ; preds = %.lr.ph253.i
  %i.nd = srem i32 %.2252.i, %i.lr                ; 2 uses
  %.not.i11.i.i = icmp eq i32 %i.nd, 0
  %i.ne = add nsw i32 %i.nd, %i.lr
  %spec.select.i12.i.i = select i1 %.not.i11.i.i, i32 0, i32 %i.ne
  br label %stbir__edge_wrap.exit.i

stbir__edge_wrap.exit.i:                          ; preds = %call.2.i.i, %call.1.i.i, %.lr.ph253.i, %.lr.ph253.i
  %.0.i.i = phi i32 [ 0, %.lr.ph253.i ], [ %spec.select.i12.i.i, %call.2.i.i ], [ %spec.select233.i, %call.1.i.i ], [ 0, %.lr.ph253.i ] ; 2 uses
  %spec.select213.i = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0182251.i) ; 2 uses
  %.1189.i = tail call i32 @llvm.smax.i32(i32 %.0.i.i, i32 %.0188250.i) ; 2 uses
  %i.nf = add i32 %.2252.i, 1                     ; 2 uses
  %exitcond.not.i342 = icmp eq i32 %i.nf, 0
  br i1 %exitcond.not.i342, label %.preheader.i, label %.lr.ph253.i

bb.ax:                                            ; preds = %stbir__edge_wrap.exit232.i, %.lr.ph259.i
  %.3258.i = phi i32 [ %i.lr, %.lr.ph259.i ], [ %i.np, %stbir__edge_wrap.exit232.i ] ; 14 uses
  %.0184257.i = phi i32 [ -2147483647, %.lr.ph259.i ], [ %.1185.i, %stbir__edge_wrap.exit232.i ]
  %.0186256.i = phi i32 [ 2147483647, %.lr.ph259.i ], [ %spec.select214.i, %stbir__edge_wrap.exit232.i ]
  %9 = icmp sgt i32 %.3258.i, -1
  %10 = icmp slt i32 %.3258.i, %i.lr              ; 2 uses
  %or.cond.i219.i = and i1 %9, %10
  br i1 %or.cond.i219.i, label %stbir__edge_wrap.exit232.i, label %11

11:                                               ; preds = %bb.ax
  switch i32 %i.ln, label %default.switch.case.unreachable.i231.i [
    i32 0, label %call.0.i228.i
    i32 1, label %call.1.i225.i
    i32 2, label %call.2.i221.i
  ], !prof !514

default.switch.case.unreachable.i231.i:           ; preds = %11
  unreachable

call.0.i228.i:                                    ; preds = %11
  %i.ng = icmp slt i32 %.3258.i, 0
  %spec.select.i.i229.i = tail call i32 @llvm.smin.i32(i32 %.3258.i, i32 %i.mn)
  %.0.i.i230.i = select i1 %i.ng, i32 0, i32 %spec.select.i.i229.i
  br label %stbir__edge_wrap.exit232.i

call.1.i225.i:                                    ; preds = %11
  %i.nh = icmp slt i32 %.3258.i, 0
  br i1 %i.nh, label %bb.ay, label %12

bb.ay:                                            ; preds = %call.1.i225.i
  %i.ni = icmp sgt i32 %.3258.i, %i.ls
  %i.nj = sub nsw i32 0, %.3258.i
  %spec.select234.i = select i1 %i.ni, i32 %i.nj, i32 %i.mn
  br label %stbir__edge_wrap.exit232.i

12:                                               ; preds = %call.1.i225.i
  br i1 %10, label %stbir__edge_wrap.exit232.i, label %bb.az

bb.az:                                            ; preds = %12
  %.not17.i.i226.i = icmp slt i32 %.3258.i, %i.na
  %i.nk = xor i32 %.3258.i, -1
  %i.nl = add i32 %i.na, %i.nk
  %.0.i10.i227.i = select i1 %.not17.i.i226.i, i32 %i.nl, i32 0
  br label %stbir__edge_wrap.exit232.i

call.2.i221.i:                                    ; preds = %11
  %i.nm = srem i32 %.3258.i, %i.lr                ; 3 uses
  %.not.i11.i222.i = icmp eq i32 %i.nm, 0
  %i.nn = add nsw i32 %i.nm, %i.lr
  %spec.select.i12.i223.i = select i1 %.not.i11.i222.i, i32 0, i32 %i.nn
  %i.no = icmp slt i32 %.3258.i, 0
  %.010.i.i224.i = select i1 %i.no, i32 %spec.select.i12.i223.i, i32 %i.nm
  br label %stbir__edge_wrap.exit232.i

stbir__edge_wrap.exit232.i:                       ; preds = %call.2.i221.i, %bb.az, %12, %bb.ay, %call.0.i228.i, %bb.ax
  %.0.i220.i = phi i32 [ %.3258.i, %bb.ax ], [ %.0.i.i230.i, %call.0.i228.i ], [ %.3258.i, %12 ], [ %.010.i.i224.i, %call.2.i221.i ], [ %spec.select234.i, %bb.ay ], [ %.0.i10.i227.i, %bb.az ] ; 2 uses
  %spec.select214.i = tail call i32 @llvm.smin.i32(i32 %.0.i220.i, i32 %.0186256.i) ; 2 uses
  %.1185.i = tail call i32 @llvm.smax.i32(i32 %.0.i220.i, i32 %.0184257.i) ; 2 uses
  %i.np = add nsw i32 %.3258.i, 1                 ; 2 uses
  %i.nq = icmp slt i32 %i.np, %i.my
  br i1 %i.nq, label %bb.ax, label %._crit_edge260.i

._crit_edge260.i:                                 ; preds = %stbir__edge_wrap.exit232.i, %.preheader.i
  %.0186.lcssa.i = phi i32 [ 2147483647, %.preheader.i ], [ %spec.select214.i, %stbir__edge_wrap.exit232.i ] ; 7 uses
  %.0184.lcssa.i = phi i32 [ -2147483647, %.preheader.i ], [ %.1185.i, %stbir__edge_wrap.exit232.i ] ; 4 uses
  %i.nr = icmp ne i32 %.0182.lcssa.i, 2147483647  ; 2 uses
  br i1 %i.nr, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %._crit_edge260.i
  %.not203.i = icmp sgt i32 %.0182.lcssa.i, %spec.select211.i
  %i.ns = add nsw i32 %.0188.lcssa.i, 16
  %.not204.i = icmp slt i32 %i.ns, %spec.select211.i
  %or.cond215.i = select i1 %.not203.i, i1 true, i1 %.not204.i
  br i1 %or.cond215.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.not205.i = icmp sgt i32 %spec.select211.i, %.0182.lcssa.i
  %i.nt = add nsw i32 %.2180.i, 16
  %.not206.i = icmp slt i32 %i.nt, %.0188.lcssa.i
  %or.cond216.i = select i1 %.not205.i, i1 true, i1 %.not206.i
  br i1 %or.cond216.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.nu = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 %spec.select211.i, i32 range(i32 -2147483648, 2147483647) %.0182.lcssa.i) ; 3 uses
  store i32 %i.nu, ptr %i.mq, align 8
  %i.nv = tail call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %.2180.i, i32 range(i32 -2147483647, -2147483648) %.0188.lcssa.i) ; 2 uses
  store i32 %i.nv, ptr %i.mr, align 4
  store i32 %i.nu, ptr %i.ms, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %._crit_edge260.i
  %.3181.i = phi i32 [ %i.nv, %bb.bc ], [ %.2180.i, %._crit_edge260.i ], [ %.2180.i, %bb.bb ] ; 4 uses
  %.3177.i = phi i32 [ %i.nu, %bb.bc ], [ %spec.select211.i, %._crit_edge260.i ], [ %spec.select211.i, %bb.bb ] ; 6 uses
  %.1171.i = phi i32 [ 0, %bb.bc ], [ %spec.select212.i, %._crit_edge260.i ], [ %spec.select212.i, %bb.bb ] ; 3 uses
  %i.nw = sub nsw i32 0, %.1171.i
  %i.nx = icmp ne i32 %.0186.lcssa.i, 2147483647  ; 2 uses
  br i1 %i.nx, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %.not207.i = icmp sgt i32 %.0186.lcssa.i, %.3177.i
  %i.ny = add nsw i32 %.0184.lcssa.i, 16
  %.not208.i = icmp slt i32 %i.ny, %.3177.i
  %or.cond217.i = select i1 %.not207.i, i1 true, i1 %.not208.i
  br i1 %or.cond217.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %.not209.i = icmp sgt i32 %.3177.i, %.0186.lcssa.i
  %i.nz = add nsw i32 %.3181.i, 16
  %.not210.i = icmp slt i32 %i.nz, %.0184.lcssa.i
  %or.cond218.i = select i1 %.not209.i, i1 true, i1 %.not210.i
  br i1 %or.cond218.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.oa = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 %.3177.i, i32 range(i32 -2147483648, 2147483647) %.0186.lcssa.i) ; 3 uses
  store i32 %i.oa, ptr %i.mq, align 8
  %i.ob = tail call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %.3181.i, i32 range(i32 -2147483647, -2147483648) %.0184.lcssa.i) ; 2 uses
  store i32 %i.ob, ptr %i.mr, align 4
  store i32 %i.oa, ptr %i.ms, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.bd
  %i.oc = phi i32 [ %i.ob, %bb.bg ], [ %.3181.i, %bb.bd ], [ %.3181.i, %bb.bf ] ; 2 uses
  %i.od = phi i32 [ %i.oa, %bb.bg ], [ %.3177.i, %bb.bd ], [ %.3177.i, %bb.bf ] ; 6 uses
  %.1173.i = phi i32 [ 0, %bb.bg ], [ %.0172.i, %bb.bd ], [ %.0172.i, %bb.bf ]
  %i.oe = icmp ne i32 %.1171.i, 0
  %or.cond.i339 = and i1 %i.nr, %i.oe
  br i1 %or.cond.i339, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.of = icmp slt i32 %.0182.lcssa.i, %i.od
  br i1 %i.of, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.od, ptr %i.mv, align 4
  store i32 %i.od, ptr %i.mt, align 4
  store i32 %i.oc, ptr %i.mu, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0164.i = phi ptr [ %i.mq, %bb.bj ], [ %i.mt, %bb.bi ] ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.0164.i, i64 8
  store i32 %.0182.lcssa.i, ptr %i.og, align 4
  store i32 %i.nw, ptr %.0164.i, align 4
  %i.oh = add i32 %.0182.lcssa.i, %.1171.i
  %i.oi = sub i32 %.0188.lcssa.i, %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %.0164.i, i64 4
  store i32 %i.oi, ptr %i.oj, align 4
  store i32 0, ptr %i.mo, align 8
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bh
  %i.ok = icmp ne i32 %.1173.i, 0
  %or.cond3.i340 = and i1 %i.nx, %i.ok
  br i1 %or.cond3.i340, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.ol = icmp slt i32 %.0186.lcssa.i, %i.od
  br i1 %i.ol, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 %i.od, ptr %i.mv, align 4
  store i32 %i.od, ptr %i.mt, align 4
  store i32 %i.oc, ptr %i.mu, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0.i341 = phi ptr [ %i.mq, %bb.bn ], [ %i.mt, %bb.bm ] ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.0.i341, i64 8
  store i32 %.0186.lcssa.i, ptr %i.om, align 4
  %i.on = load i32, ptr %i.mu, align 8
  %i.oo = add nsw i32 %i.on, 1                    ; 2 uses
  store i32 %i.oo, ptr %.0.i341, align 4
  %i.op = sub i32 %.0184.lcssa.i, %.0186.lcssa.i
  %i.oq = add nsw i32 %i.op, %i.oo
  %i.or = getelementptr inbounds nuw i8, ptr %.0.i341, i64 4
  store i32 %i.oq, ptr %i.or, align 4
  store i32 0, ptr %i.mp, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl, %bb.bk
  %i.os = load i32, ptr %i.mu, align 8
  %i.ot = load i32, ptr %i.mt, align 4            ; 2 uses
  %i.ou = icmp sgt i32 %i.os, %i.ot
  br i1 %i.ou, label %bb.bq, label %stbir__get_extents.exit

bb.bq:                                            ; preds = %bb.bp
  %i.ov = load i32, ptr %i.mq, align 8
  %i.ow = icmp sgt i32 %i.ov, %i.ot
  br i1 %i.ow, label %bb.br, label %stbir__get_extents.exit

bb.br:                                            ; preds = %bb.bq
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.mq, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.mq, ptr noundef nonnull align 4 dereferenceable(12) %i.mt, i64 12, i1 false)
  store <3 x i32> %.sroa.0.0.copyload, ptr %i.mt, align 4
  br label %stbir__get_extents.exit

stbir__get_extents.exit:                          ; preds = %._crit_edge.i, %bb.bp, %bb.bq, %bb.br
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.oy = load i32, ptr %i.ox, align 8            ; 4 uses
  %i.oz = load ptr, ptr %0, align 8               ; 2 uses
  %i.pa = load ptr, ptr %i.ei, align 8            ; 29 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4            ; 2 uses
  %i.pd = load i32, ptr %i.kw, align 4            ; 12 uses
  %i.pe = load i32, ptr %i.lm, align 4            ; 2 uses
  %i.pf = add i32 %i.pe, 1                        ; 3 uses
  %.not.i345 = icmp eq i32 %i.pc, %i.pd
  %.pre354.i = mul nsw i32 %i.pd, %i.oy
  %.pre356.i = sext i32 %.pre354.i to i64         ; 2 uses
  br i1 %.not.i345, label %.loopexit.i, label %bb.bs

bb.bs:                                            ; preds = %stbir__get_extents.exit
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.pa, i64 %.pre356.i ; 13 uses
  %i.ph = sext i32 %i.pc to i64                   ; 13 uses
  switch i32 %i.pd, label %.preheader290.i [
    i32 1, label %.preheader291.i
    i32 2, label %.preheader293.i
    i32 3, label %.preheader295.i
    i32 4, label %.preheader297.i
    i32 5, label %.preheader299.i
    i32 6, label %.preheader301.i
    i32 7, label %.preheader303.i
    i32 8, label %.preheader305.i
    i32 9, label %.preheader307.i
    i32 10, label %.preheader309.i
    i32 11, label %.preheader311.i
    i32 12, label %.preheader313.i
  ]

.preheader290.i:                                  ; preds = %bb.bs
  %i.pi = sext i32 %i.pd to i64
  br label %bb.bt

.preheader291.i:                                  ; preds = %bb.bs, %.preheader291.i
  %.0252.i = phi ptr [ %i.pl, %.preheader291.i ], [ %i.pa, %bb.bs ] ; 2 uses
  %.0.i349 = phi ptr [ %i.pk, %.preheader291.i ], [ %i.pa, %bb.bs ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0.i349) #52, !srcloc !515
  %i.pj = load i32, ptr %.0252.i, align 4
  store i32 %i.pj, ptr %.0.i349, align 4
  %i.pk = getelementptr inbounds nuw i8, ptr %.0.i349, i64 4 ; 2 uses
  %i.pl = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.ph
  %i.pm = icmp ult ptr %i.pk, %i.pg
  br i1 %i.pm, label %.preheader291.i, label %.loopexit.i, !llvm.loop !516

.preheader293.i:                                  ; preds = %bb.bs, %.preheader293.i
  %.1253.i = phi ptr [ %i.pp, %.preheader293.i ], [ %i.pa, %bb.bs ] ; 2 uses
  %.1.i = phi ptr [ %i.po, %.preheader293.i ], [ %i.pa, %bb.bs ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1.i) #52, !srcloc !517
  %i.pn = load i64, ptr %.1253.i, align 8
  store i64 %i.pn, ptr %.1.i, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  %i.pp = getelementptr inbounds [4 x i8], ptr %.1253.i, i64 %i.ph
  %i.pq = icmp ult ptr %i.po, %i.pg
  br i1 %i.pq, label %.preheader293.i, label %.loopexit.i, !llvm.loop !518

.preheader295.i:                                  ; preds = %bb.bs, %.preheader295.i
end_hunk_0
begin_hunk_1_@stbir__calculate_filters:bb.a
  br i1 %.not.i162, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = icmp slt i32 %.0182, %i.hl
  br i1 %i.hx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hy = sub nsw i32 %i.hn, %.0182
  %.not60.not.i = icmp slt i32 %i.hy, %i.gv
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.hz = sub nsw i32 %i.hl, %.0182               ; 2 uses
  %i.ia = sub i32 %i.hn, %i.hl                    ; 2 uses
  %i.ib = zext i32 %i.ia to i64                   ; 4 uses
  %i.ic = sext i32 %i.hz to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0137174, i64 %i.ic ; 6 uses
  %i.id = add nuw nsw i64 %i.ib, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ia, 7
  %i.ie = shl nsw i64 %i.ic, 2
  %diff.check = icmp ugt i64 %i.ie, -32
  %or.cond207 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond207, label %.lr.ph.i164.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.id, 8589934584              ; 3 uses
  %i.if = sub nsw i64 %i.ib, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ig = sub i64 %i.ib, %index                   ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0137174, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -12
  %i.ij = getelementptr inbounds i8, ptr %i.ih, i64 -28
  %wide.load = load <4 x float>, ptr %i.ii, align 4
  %wide.load206 = load <4 x float>, ptr %i.ij, align 4
  %i.ik = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ig ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 -12
  %i.im = getelementptr i8, ptr %i.ik, i64 -28
  store <4 x float> %wide.load, ptr %i.il, align 4
  store <4 x float> %wide.load206, ptr %i.im, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !585

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.id, %n.vec
  br i1 %cmp.n, label %.preheader.i.loopexit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i165.ph = phi i64 [ %i.ib, %.lr.ph.preheader.i ], [ %i.if, %middle.block ] ; 4 uses
  %i.io = add nsw i64 %indvars.iv.i165.ph, 1
  %xtraiter = and i64 %i.io, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %indvars.iv.i165.prol = phi i64 [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0137174, i64 %indvars.iv.i165.prol
  %i.iq = load float, ptr %i.ip, align 4
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.iq, ptr %gep.i.prol, align 4
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !586

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.ir = icmp ult i64 %indvars.iv.i165.ph, 3
  br i1 %i.ir, label %.preheader.i.loopexit, label %.lr.ph.i164

.preheader.i.loopexit:                            ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block
  %i.is = icmp sgt i32 %i.hz, 1
  br i1 %i.is, label %.lr.ph63.preheader.i, label %._crit_edge.i163

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %scevgep.i = getelementptr i8, ptr %.0137174, i64 4
  %i.it = add i32 %i.hl, %i.he
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.iv, i1 false)
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.0137174, i64 %indvars.iv.i165
  %i.ix = load float, ptr %i.iw, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.ix, ptr %gep.i, align 4
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0137174, i64 %indvars.iv.next.i166
  %i.iz = load float, ptr %i.iy, align 4
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.iz, ptr %gep.i.1, align 4
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0137174, i64 %indvars.iv.next.i166.1
  %i.jb = load float, ptr %i.ja, align 4
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.jb, ptr %gep.i.2, align 4
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.0137174, i64 %indvars.iv.next.i166.2
  %i.jd = load float, ptr %i.jc, align 4
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.2
  store float %i.jd, ptr %gep.i.3, align 4
  %indvars.iv.next.i166.3 = add nsw i64 %indvars.iv.i165, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i166.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !587

._crit_edge.i163:                                 ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.hi, ptr %.0137174, align 4
  store i32 %.0182, ptr %.0149171, align 4
  br label %stbir__insert_coeff.exit

bb.ah:                                            ; preds = %bb.af
  %i.je = sub nsw i32 %.0182, %i.hl
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.0137174, i64 %i.jf ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4
  %i.ji = fadd float %i.hi, %i.jh
  store float %i.ji, ptr %i.jg, align 4
  br label %stbir__insert_coeff.exit

bb.ai:                                            ; preds = %bb.ae
  %i.jj = sub nsw i32 %.0182, %i.hl               ; 3 uses
  %.not59.not.i = icmp slt i32 %i.jj, %i.gv
  br i1 %.not59.not.i, label %bb.aj, label %stbir__insert_coeff.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jk = sub nsw i32 %i.hn, %i.hl
  %.05464.i = add nsw i32 %i.jk, 1                ; 2 uses
  %i.jl = icmp slt i32 %.05464.i, %i.jj
  br i1 %i.jl, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.aj
  %i.jm = sext i32 %.05464.i to i64
  %i.jn = shl nsw i64 %i.jm, 2
  %scevgep73.i = getelementptr i8, ptr %.0137174, i64 %i.jn
  %i.jo = sub i32 %i.hf, %i.hn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = shl nuw nsw i64 %i.jp, 2
  %i.jr = add nuw nsw i64 %i.jq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.jr, i1 false)
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.aj
  %i.js = sext i32 %i.jj to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %.0137174, i64 %i.js
  store float %i.hi, ptr %i.jt, align 4
  store i32 %.0182, ptr %i.hm, align 4
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %._crit_edge68.i, %bb.ai, %bb.ah, %._crit_edge.i163, %bb.ag, %._crit_edge, %bb.aa
  %.2148 = phi i32 [ %.0145173, %._crit_edge ], [ %.1147172, %bb.aa ], [ %.1147172, %bb.ag ], [ %.1147172, %._crit_edge.i163 ], [ %.1147172, %bb.ah ], [ %.1147172, %bb.ai ], [ %.1147172, %._crit_edge68.i ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0149171, i64 8
  %i.jv = getelementptr inbounds [4 x i8], ptr %.0137174, i64 %i.hg
  %i.jw = add i32 %.0145173, 1
  %exitcond.not = icmp eq i32 %.0145173, %i.gu
  br i1 %exitcond.not, label %._crit_edge178, label %bb.aa

._crit_edge178:                                   ; preds = %stbir__insert_coeff.exit, %bb.z
  %.1147.lcssa = phi i32 [ %.0146179, %bb.z ], [ %.2148, %stbir__insert_coeff.exit ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.2181, i64 8
  %i.jy = getelementptr inbounds [4 x i8], ptr %.2142180, i64 %i.gr
  %i.jz = add nuw nsw i32 %.0182, 1               ; 2 uses
  %exitcond192.not = icmp eq i32 %i.jz, %.1
  br i1 %exitcond192.not, label %._crit_edge185, label %bb.z

._crit_edge185:                                   ; preds = %._crit_edge178, %bb.y
  %.0146.lcssa = phi i32 [ %i.gp, %bb.y ], [ %.1147.lcssa, %._crit_edge178 ]
  %i.ka = load ptr, ptr %0, align 8               ; 2 uses
  %i.kb = add nsw i32 %.0146.lcssa, %i.cp
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr [8 x i8], ptr %i.ka, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.j, align 8
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.kf ; 2 uses
  %.0133187 = getelementptr i8, ptr %i.kd, i64 8  ; 2 uses
  %i.kh = icmp ult ptr %.0133187, %i.kg
  br i1 %i.kh, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %._crit_edge185, %.lr.ph191
  %.0133189 = phi ptr [ %.0133, %.lr.ph191 ], [ %.0133187, %._crit_edge185 ] ; 3 uses
  %.pn188 = phi ptr [ %.0133189, %.lr.ph191 ], [ %i.kd, %._crit_edge185 ]
  store i32 0, ptr %.0133189, align 4
  %i.ki = getelementptr i8, ptr %.pn188, i64 12
  store i32 -1, ptr %i.ki, align 4
  %.0133 = getelementptr i8, ptr %.0133189, i64 8 ; 2 uses
  %i.kj = icmp ult ptr %.0133, %i.kg
  br i1 %i.kj, label %.lr.ph191, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph191, %._crit_edge185, %stbir__calculate_coefficients_for_gather_downsample.exit, %stbir__calculate_coefficients_for_gather_upsample.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbir__cleanup_gathered_coefficients(i32 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, i32 noundef %6) unnamed_addr #24 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 8 uses
  %i.b = add nsw i32 %i.a, -1                     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 4              ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = load i32, ptr %i.e, align 4              ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp slt i32 %i.d, %3
  %i.k = select i1 %i.i, i1 %i.j, i1 false        ; 2 uses
  %spec.select = select i1 %i.k, i32 %i.d, i32 %3 ; 2 uses
  %i.l = icmp sgt i32 %spec.select, 0
  br i1 %i.l, label %.lr.ph319, label %._crit_edge320

.lr.ph319:                                        ; preds = %bb.a
  %i.m = sext i32 %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph319, %.loopexit292
  %.0183317 = phi i32 [ 0, %.lr.ph319 ], [ %i.bj, %.loopexit292 ]
  %.0202315 = phi ptr [ %5, %.lr.ph319 ], [ %i.bi, %.loopexit292 ] ; 9 uses
  %.0205314 = phi ptr [ %4, %.lr.ph319 ], [ %i.bh, %.loopexit292 ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0205314, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = load i32, ptr %.0205314, align 4         ; 3 uses
  %.not232307 = icmp slt i32 %i.o, %i.p
  br i1 %.not232307, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = add i32 %i.o, 1
  %i.r = sub i32 %i.q, %i.p                       ; 3 uses
  %wide.trip.count = zext i32 %i.r to i64         ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = add i32 %i.r, -1
  %i.t = icmp ult i32 %i.s, 3
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0204309 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0202315, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4
  %i.w = fpext float %i.v to double
  %i.x = fadd double %.0204309, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0202315, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fpext float %i.aa to double
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0202315, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fpext float %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0202315, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.ah, %i.al                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0204309.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.unr-lcssa ]
  %lcmp.mod635 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod635)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0204309.epil = phi double [ %.0204309.epil.init, %.lr.ph.epil.preheader ], [ %i.aq, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0202315, i64 %indvars.iv.epil
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %.0204309.epil, %i.ap       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !588

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa633 = phi double [ %i.am, %._crit_edge.unr-lcssa ], [ %i.aq, %.lr.ph.epil ] ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %.lcssa633)
  %or.cond = fcmp olt double %i.ar, f0x3870000000000000
  br i1 %or.cond, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  store i32 %i.p, ptr %i.n, align 4
  store float 0.000000e+00, ptr %.0202315, align 4
  br label %.loopexit292

bb.c:                                             ; preds = %._crit_edge
  %or.cond3 = fcmp ueq double %.lcssa633, 1.000000e+00
  br i1 %or.cond3, label %.loopexit292, label %.lr.ph313.preheader

.lr.ph313.preheader:                              ; preds = %bb.c
  %i.as = fdiv nnan double 1.000000e+00, %.lcssa633 ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph313.preheader632, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph313.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.0202315, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.at, align 4
  %wide.load533 = load <4 x float>, ptr %i.au, align 4
  %i.av = fpext <4 x float> %wide.load to <4 x double>
  %i.aw = fpext <4 x float> %wide.load533 to <4 x double>
  %i.ax = fmul <4 x double> %broadcast.splat, %i.av
  %i.ay = fmul <4 x double> %broadcast.splat, %i.aw
  %i.az = fptrunc <4 x double> %i.ax to <4 x float>
  %i.ba = fptrunc <4 x double> %i.ay to <4 x float>
  store <4 x float> %i.az, ptr %i.at, align 4
  store <4 x float> %i.ba, ptr %i.au, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !589

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit292, label %.lr.ph313.preheader632

.lr.ph313.preheader632:                           ; preds = %.lr.ph313.preheader, %middle.block
  %indvars.iv366.ph = phi i64 [ 0, %.lr.ph313.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph313

.lr.ph313:                                        ; preds = %.lr.ph313.preheader632, %.lr.ph313
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %.lr.ph313 ], [ %indvars.iv366.ph, %.lr.ph313.preheader632 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.0202315, i64 %indvars.iv366 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4
  %i.be = fpext float %i.bd to double
  %i.bf = fmul double %i.as, %i.be
  %i.bg = fptrunc double %i.bf to float
  store float %i.bg, ptr %i.bc, align 4
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count
  br i1 %exitcond370.not, label %.loopexit292, label %.lr.ph313, !llvm.loop !590

.loopexit292:                                     ; preds = %.lr.ph313, %middle.block, %bb.c, %._crit_edge.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %.0205314, i64 8
  %i.bi = getelementptr inbounds [4 x i8], ptr %.0202315, i64 %i.m
  %i.bj = add nuw nsw i32 %.0183317, 1            ; 2 uses
  %exitcond371.not = icmp eq i32 %i.bj, %spec.select
  br i1 %exitcond371.not, label %._crit_edge320, label %bb.b

._crit_edge320:                                   ; preds = %.loopexit292, %bb.a
  br i1 %i.k, label %bb.d, label %stbir_overlapping_memcpy.exit

bb.d:                                             ; preds = %._crit_edge320
  %i.bk = sext i32 %i.d to i64                    ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %4, i64 %i.bk ; 7 uses
  %i.bm = xor i32 %i.d, -1
  %i.bn = add i32 %3, %i.bm                       ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check556 = icmp ult i32 %i.bn, 37
  br i1 %min.iters.check556, label %scalar.ph555.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.bq = shl nsw i64 %i.bk, 3                    ; 2 uses
  %i.br = xor i32 %i.d, -1
  %i.bs = add i32 %3, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3                ; 3 uses
  %i.bv = add nsw i64 %i.bq, %i.bu                ; 2 uses
  %i.bw = getelementptr i8, ptr %4, i64 %i.bv
  %scevgep534.a = getelementptr i8, ptr %i.bw, i64 4 ; 3 uses
  %i.bx = getelementptr i8, ptr %4, i64 %i.bq
  %scevgep535.a = getelementptr i8, ptr %i.bx, i64 4 ; 3 uses
  %i.by = getelementptr i8, ptr %4, i64 %i.bv
  %scevgep536.a = getelementptr i8, ptr %i.by, i64 8 ; 3 uses
  %i.bz = getelementptr i8, ptr %4, i64 %i.bu
  %scevgep537 = getelementptr i8, ptr %i.bz, i64 4 ; 2 uses
  %scevgep538 = getelementptr i8, ptr %4, i64 4   ; 2 uses
  %i.ca = getelementptr i8, ptr %4, i64 %i.bu
  %scevgep539 = getelementptr i8, ptr %i.ca, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.bl, %scevgep536.a
  %bound1 = icmp ult ptr %scevgep535.a, %scevgep534.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0540.a = icmp ult ptr %i.bl, %scevgep537
  %bound1541.a = icmp ult ptr %4, %scevgep534.a
  %found.conflict542.a = and i1 %bound0540.a, %bound1541.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict542.a
  %bound0543 = icmp ult ptr %i.bl, %scevgep539
  %bound1544 = icmp ult ptr %scevgep538, %scevgep534.a
  %found.conflict545 = and i1 %bound0543, %bound1544
  %conflict.rdx546 = or i1 %conflict.rdx, %found.conflict545
  %bound0547 = icmp ult ptr %scevgep535.a, %scevgep537
  %bound1548 = icmp ult ptr %4, %scevgep536.a
  %found.conflict549 = and i1 %bound0547, %bound1548
  %conflict.rdx550 = or i1 %conflict.rdx546, %found.conflict549
  %bound0551 = icmp ult ptr %scevgep535.a, %scevgep539
  %bound1552 = icmp ult ptr %scevgep538, %scevgep536.a
  %found.conflict553 = and i1 %bound0551, %bound1552
  %conflict.rdx554 = or i1 %conflict.rdx550, %found.conflict553
  br i1 %conflict.rdx554, label %scalar.ph555.preheader, label %vector.ph557

vector.ph557:                                     ; preds = %vector.memcheck
  %n.vec558 = and i64 %i.bp, 8589934590           ; 4 uses
  %i.cb = trunc i64 %n.vec558 to i32
  %i.cc = add i32 %i.d, %i.cb
  %i.cd = shl nuw nsw i64 %n.vec558, 3            ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bl, i64 %i.cd
  %i.cf = getelementptr i8, ptr %4, i64 %i.cd
  %broadcast.splatinsert559 = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.cg = shufflevector <2 x i32> %broadcast.splatinsert559, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph557
  %index562 = phi i64 [ 0, %vector.ph557 ], [ %index.next565, %vector.body561 ] ; 2 uses
  %i.ch = shl i64 %index562, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.ch
  %next.gep563 = getelementptr i8, ptr %4, i64 %i.ch
  %wide.vec = load <4 x i32>, ptr %next.gep563, align 4
  %interleaved.vec = add nsw <4 x i32> %wide.vec, %i.cg
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4
  %index.next565 = add nuw i64 %index562, 2       ; 2 uses
  %i.ci = icmp eq i64 %index.next565, %n.vec558
  br i1 %i.ci, label %middle.block566, label %vector.body561, !llvm.loop !591

middle.block566:                                  ; preds = %vector.body561
  %cmp.n567 = icmp eq i64 %i.bp, %n.vec558
  br i1 %cmp.n567, label %.loopexit624, label %scalar.ph555.preheader

scalar.ph555.preheader:                           ; preds = %vector.memcheck, %bb.d, %middle.block566
  %.1323.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %bb.d ], [ %i.cc, %middle.block566 ] ; 4 uses
  %.0200322.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %bb.d ], [ %i.ce, %middle.block566 ] ; 4 uses
  %.0201321.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %bb.d ], [ %i.cf, %middle.block566 ] ; 4 uses
  %i.cj = sub i32 %3, %.1323.ph
  %.neg = add i32 %.1323.ph, 1
  %xtraiter636 = and i32 %i.cj, 1
  %lcmp.mod637.not = icmp eq i32 %xtraiter636, 0
  br i1 %lcmp.mod637.not, label %scalar.ph555.prol.loopexit, label %scalar.ph555.prol

scalar.ph555.prol:                                ; preds = %scalar.ph555.preheader
  %i.ck = load i32, ptr %.0201321.ph, align 4
  %i.cl = add nsw i32 %i.ck, %i.f
  store i32 %i.cl, ptr %.0200322.ph, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.0201321.ph, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = add nsw i32 %i.cn, %i.f
  %i.cp = getelementptr inbounds nuw i8, ptr %.0200322.ph, i64 4
  store i32 %i.co, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.0200322.ph, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.0201321.ph, i64 8
  %i.cs = add nsw i32 %.1323.ph, 1
  br label %scalar.ph555.prol.loopexit

scalar.ph555.prol.loopexit:                       ; preds = %scalar.ph555.prol, %scalar.ph555.preheader
  %.1323.unr = phi i32 [ %.1323.ph, %scalar.ph555.preheader ], [ %i.cs, %scalar.ph555.prol ]
  %.0200322.unr = phi ptr [ %.0200322.ph, %scalar.ph555.preheader ], [ %i.cq, %scalar.ph555.prol ]
  %.0201321.unr = phi ptr [ %.0201321.ph, %scalar.ph555.preheader ], [ %i.cr, %scalar.ph555.prol ]
  %i.ct = icmp eq i32 %3, %.neg
  br i1 %i.ct, label %.loopexit624, label %scalar.ph555

scalar.ph555:                                     ; preds = %scalar.ph555.prol.loopexit, %scalar.ph555
  %.1323 = phi i32 [ %i.dk, %scalar.ph555 ], [ %.1323.unr, %scalar.ph555.prol.loopexit ]
  %.0200322 = phi ptr [ %i.di, %scalar.ph555 ], [ %.0200322.unr, %scalar.ph555.prol.loopexit ] ; 5 uses
  %.0201321 = phi ptr [ %i.dj, %scalar.ph555 ], [ %.0201321.unr, %scalar.ph555.prol.loopexit ] ; 5 uses
  %i.cu = load i32, ptr %.0201321, align 4
  %i.cv = add nsw i32 %i.cu, %i.f
  store i32 %i.cv, ptr %.0200322, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.0201321, i64 4
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = add nsw i32 %i.cx, %i.f
  %i.cz = getelementptr inbounds nuw i8, ptr %.0200322, i64 4
  store i32 %i.cy, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.0200322, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.0201321, i64 8
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = add nsw i32 %i.dc, %i.f
  store i32 %i.dd, ptr %i.da, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %.0201321, i64 12
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = add nsw i32 %i.df, %i.f
  %i.dh = getelementptr inbounds nuw i8, ptr %.0200322, i64 12
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.0200322, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.0201321, i64 16
  %i.dk = add nsw i32 %.1323, 2                   ; 2 uses
  %exitcond372.not.1 = icmp eq i32 %i.dk, %3
  br i1 %exitcond372.not.1, label %.loopexit624, label %scalar.ph555, !llvm.loop !592

.loopexit624:                                     ; preds = %scalar.ph555.prol.loopexit, %scalar.ph555, %middle.block566
  %i.dl = mul nsw i32 %i.d, %6                    ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = sub nsw i32 %3, %i.d
  %i.do = mul nsw i32 %i.dn, %6
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 2                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 %i.dq ; 2 uses
  %.idx = shl nsw i64 %i.dm, 2                    ; 2 uses
  %i.ds = icmp sgt i32 %i.dl, 3
  br i1 %i.ds, label %bb.e, label %.preheader630

bb.e:                                             ; preds = %.loopexit624
  %i.dt = and i64 %i.dq, -16
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 %i.dt
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.025.i = phi ptr [ %5, %bb.e ], [ %i.dx, %bb.f ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.025.i) #52, !srcloc !593
  %i.dv = load <4 x float>, ptr %.025.i, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.025.i, i64 %.idx
  store <4 x float> %i.dv, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.025.i, i64 16 ; 4 uses
  %i.dy = icmp ult ptr %i.dx, %i.du
  br i1 %i.dy, label %bb.f, label %bb.g, !llvm.loop !594

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.dx, %i.dr
  br i1 %.not.i, label %stbir_overlapping_memcpy.exit, label %.preheader630

.preheader630:                                    ; preds = %bb.g, %.loopexit624
  %.2.i.ph = phi ptr [ %5, %.loopexit624 ], [ %i.dx, %bb.g ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader630, %bb.h
  %.2.i = phi ptr [ %i.eb, %bb.h ], [ %.2.i.ph, %.preheader630 ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2.i) #52, !srcloc !595
  %i.dz = load i32, ptr %.2.i, align 4
  %i.ea = getelementptr inbounds i8, ptr %.2.i, i64 %.idx
  store i32 %i.dz, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %.2.i, i64 4 ; 2 uses
  %i.ec = icmp ult ptr %i.eb, %i.dr
  br i1 %i.ec, label %bb.h, label %stbir_overlapping_memcpy.exit

stbir_overlapping_memcpy.exit:                    ; preds = %bb.h, %bb.g, %._crit_edge320
  %i.ed = icmp sgt i32 %3, 0
  br i1 %i.ed, label %.lr.ph354, label %._crit_edge355

.lr.ph354:                                        ; preds = %stbir_overlapping_memcpy.exit
  %i.ee = icmp eq i32 %0, 3
  %or.cond5 = icmp ult i32 %0, 2
  %i.ef = sext i32 %6 to i64
  %i.eg = sext i32 %i.a to i64
  %trunc = trunc nuw i32 %0 to i1                 ; 3 uses
  %i.eh = shl nsw i32 %i.a, 1                     ; 4 uses
  %i.ei = sub nsw i32 0, %i.a                     ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph354, %.loopexit
  %.2353 = phi i32 [ 0, %.lr.ph354 ], [ %i.oa, %.loopexit ]
  %.0185352 = phi i32 [ 2147483647, %.lr.ph354 ], [ %.3, %.loopexit ] ; 4 uses
  %.0188351 = phi i32 [ -2147483647, %.lr.ph354 ], [ %.3191, %.loopexit ] ; 4 uses
  %.0192350 = phi i32 [ -1, %.lr.ph354 ], [ %.2194, %.loopexit ] ; 4 uses
  %.1203347 = phi ptr [ %5, %.lr.ph354 ], [ %i.nz, %.loopexit ] ; 50 uses
  %.1206346 = phi ptr [ %4, %.lr.ph354 ], [ %i.ny, %.loopexit ] ; 19 uses
  br i1 %i.ee, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.1206346, i64 4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4            ; 2 uses
  %.not227 = icmp slt i32 %i.ek, %i.a
  br i1 %.not227, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.b, ptr %i.ej, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.el = phi i32 [ %i.b, %bb.k ], [ %i.ek, %bb.j ] ; 3 uses
  %i.em = load i32, ptr %.1206346, align 4        ; 2 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %bb.m, label %stbir__insert_coeff.exit274

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.1206346, align 4
  %i.eo = icmp sgt i32 %i.el, -1
  br i1 %i.eo, label %.preheader.preheader, label %stbir__insert_coeff.exit274

.preheader.preheader:                             ; preds = %bb.m
  %i.ep = sext i32 %i.em to i64                   ; 2 uses
  %i.eq = add nuw i32 %i.el, 1
  %wide.trip.count383 = zext i32 %i.eq to i64     ; 3 uses
  %min.iters.check572 = icmp ult i32 %i.el, 7
  br i1 %min.iters.check572, label %.preheader.preheader625, label %vector.ph573

vector.ph573:                                     ; preds = %.preheader.preheader
  %n.vec574 = and i64 %wide.trip.count383, 4294967288 ; 3 uses
  br label %vector.body575

vector.body575:                                   ; preds = %vector.body575, %vector.ph573
  %index576 = phi i64 [ 0, %vector.ph573 ], [ %index.next579, %vector.body575 ] ; 3 uses
  %i.er = sub nsw i64 %index576, %i.ep
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load577 = load <4 x float>, ptr %i.es, align 4
  %wide.load578 = load <4 x float>, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %index576 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x float> %wide.load577, ptr %i.eu, align 4
  store <4 x float> %wide.load578, ptr %i.ev, align 4
  %index.next579 = add nuw i64 %index576, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next579, %n.vec574
  br i1 %i.ew, label %middle.block580, label %vector.body575, !llvm.loop !596

middle.block580:                                  ; preds = %vector.body575
  %cmp.n581 = icmp eq i64 %n.vec574, %wide.trip.count383
  br i1 %cmp.n581, label %stbir__insert_coeff.exit274, label %.preheader.preheader625

.preheader.preheader625:                          ; preds = %.preheader.preheader, %middle.block580
  %indvars.iv380.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec574, %middle.block580 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader625, %.preheader
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %.preheader ], [ %indvars.iv380.ph, %.preheader.preheader625 ] ; 3 uses
  %i.ex = sub nsw i64 %indvars.iv380, %i.ep
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv380
  store float %i.ez, ptr %i.fa, align 4
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next381, %wide.trip.count383
  br i1 %exitcond384.not, label %stbir__insert_coeff.exit274, label %.preheader, !llvm.loop !597

bb.n:                                             ; preds = %bb.i
  br i1 %or.cond5, label %bb.o, label %stbir__insert_coeff.exit274

bb.o:                                             ; preds = %bb.n
  %i.fb = getelementptr inbounds nuw i8, ptr %.1206346, i64 4 ; 12 uses
  %i.fc = load i32, ptr %i.fb, align 4            ; 2 uses
  %.not = icmp slt i32 %i.fc, %i.a
  %.pre392 = load i32, ptr %.1206346, align 4     ; 2 uses
  br i1 %.not, label %.loopexit291, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.b, ptr %i.fb, align 4
  %scevgep.i = getelementptr i8, ptr %.1203347, i64 4
  %i.fd = sext i32 %.pre392 to i64
  %i.fe = add i32 %i.fc, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %stbir__insert_coeff.exit
  %indvars.iv373 = phi i64 [ %i.eg, %bb.p ], [ %indvars.iv.next374, %stbir__insert_coeff.exit ] ; 4 uses
  %i.ff = trunc nsw i64 %indvars.iv373 to i32     ; 7 uses
  %i.fg = icmp slt i64 %indvars.iv373, 0          ; 2 uses
  br i1 %trunc, label %call.1, label %call.0

call.0:                                           ; preds = %bb.q
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.b)
  %.0.i = select i1 %i.fg, i32 0, i32 %spec.select.i
  br label %.tail

call.1:                                           ; preds = %bb.q
  br i1 %i.fg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %call.1
  %7 = icmp sgt i32 %i.ff, %i.ei
  %8 = sub nsw i32 0, %i.ff
  %spec.select463 = select i1 %7, i32 %8, i32 %i.b
  br label %.tail

bb.s:                                             ; preds = %call.1
  %.not.i446 = icmp sgt i32 %i.a, %i.ff
  br i1 %.not.i446, label %.tail, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not17.i = icmp sgt i32 %i.eh, %i.ff
  %i.fh = xor i32 %i.ff, -1
  %i.fi = add i32 %i.eh, %i.fh
  %.0.i447 = select i1 %.not17.i, i32 %i.fi, i32 0
  br label %.tail

.tail:                                            ; preds = %bb.r, %bb.t, %bb.s, %call.0
  %9 = phi i32 [ %.0.i, %call.0 ], [ %spec.select463, %bb.r ], [ %i.ff, %bb.s ], [ %.0.i447, %bb.t ] ; 13 uses
  %i.fj = sub nsw i64 %indvars.iv373, %i.fd
  %i.fk = getelementptr inbounds [4 x i8], ptr %.1203347, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4          ; 4 uses
  %i.fm = load i32, ptr %i.fb, align 4            ; 6 uses
  %i.fn = load i32, ptr %.1206346, align 4        ; 9 uses
  %i.fo = icmp slt i32 %i.fm, %i.fn
  br i1 %i.fo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.tail
  store i32 %9, ptr %i.fb, align 4
  store i32 %9, ptr %.1206346, align 4
  store float %i.fl, ptr %.1203347, align 4
  br label %stbir__insert_coeff.exit

bb.v:                                             ; preds = %.tail
  %.not.i236 = icmp sgt i32 %9, %i.fm
  br i1 %.not.i236, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fp = icmp slt i32 %9, %i.fn
  br i1 %i.fp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fq = sub nsw i32 %i.fm, %9
  %.not60.not.i = icmp slt i32 %i.fq, %6
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.x
  %i.fr = sub nsw i32 %i.fn, %9                   ; 2 uses
  %i.fs = sub i32 %i.fm, %i.fn                    ; 2 uses
  %i.ft = zext i32 %i.fs to i64                   ; 5 uses
  %i.fu = sext i32 %i.fr to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %.1203347, i64 %i.fu ; 6 uses
  %i.fv = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check613 = icmp ult i32 %i.fs, 7
  br i1 %min.iters.check613, label %.lr.ph.i.preheader, label %vector.memcheck610

vector.memcheck610:                               ; preds = %.lr.ph.preheader.i
  %i.fw = sext i32 %9 to i64
  %i.fx = sext i32 %i.fn to i64
  %i.fy = sub nsw i64 %i.fw, %i.fx
  %i.fz = shl nsw i64 %i.fy, 2
  %i.ga = add nsw i64 %i.fz, -1
  %diff.check611 = icmp ult i64 %i.ga, 31
  br i1 %diff.check611, label %.lr.ph.i.preheader, label %vector.ph614

vector.ph614:                                     ; preds = %vector.memcheck610
  %n.vec615 = and i64 %i.fv, 8589934584           ; 3 uses
  %i.gb = sub nsw i64 %i.ft, %n.vec615
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph614
  %index617 = phi i64 [ 0, %vector.ph614 ], [ %index.next620, %vector.body616 ] ; 2 uses
  %i.gc = sub i64 %i.ft, %index617                ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -12
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 -28
  %wide.load618 = load <4 x float>, ptr %i.ge, align 4
  %wide.load619 = load <4 x float>, ptr %i.gf, align 4
  %i.gg = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.gc ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -12
  %i.gi = getelementptr i8, ptr %i.gg, i64 -28
  store <4 x float> %wide.load618, ptr %i.gh, align 4
  store <4 x float> %wide.load619, ptr %i.gi, align 4
  %index.next620 = add nuw i64 %index617, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next620, %n.vec615
  br i1 %i.gj, label %middle.block621, label %vector.body616, !llvm.loop !598

middle.block621:                                  ; preds = %vector.body616
  %cmp.n622 = icmp eq i64 %i.fv, %n.vec615
  br i1 %cmp.n622, label %.preheader.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck610, %.lr.ph.preheader.i, %middle.block621
  %indvars.iv.i.ph = phi i64 [ %i.ft, %vector.memcheck610 ], [ %i.ft, %.lr.ph.preheader.i ], [ %i.gb, %middle.block621 ] ; 4 uses
  %i.gk = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter638 = and i64 %i.gk, 3                 ; 2 uses
  %lcmp.mod639.not = icmp eq i64 %xtraiter638, 0
  br i1 %lcmp.mod639.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv.i.prol
  %i.gm = load float, ptr %i.gl, align 4
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  store float %i.gm, ptr %gep.i.prol, align 4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter638
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !599

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.gn = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.gn, label %.preheader.i.loopexit, label %.lr.ph.i

.preheader.i.loopexit:                            ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block621
  %i.go = icmp sgt i32 %i.fr, 1
  br i1 %i.go, label %.lr.ph63.preheader.i, label %._crit_edge.i

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %i.gp = xor i32 %9, -1
  %i.gq = add i32 %i.fn, %i.gp
  %i.gr = zext i32 %i.gq to i64
  %i.gs = shl nuw nsw i64 %i.gr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.gs, i1 false)
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv.i
  %i.gu = load float, ptr %i.gt, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %i.gu, ptr %gep.i, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv.next.i
  %i.gw = load float, ptr %i.gv, align 4
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store float %i.gw, ptr %gep.i.1, align 4
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv.next.i.1
  %i.gy = load float, ptr %i.gx, align 4
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store float %i.gy, ptr %gep.i.2, align 4
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv.next.i.2
  %i.ha = load float, ptr %i.gz, align 4
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store float %i.ha, ptr %gep.i.3, align 4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !600

._crit_edge.i:                                    ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.fl, ptr %.1203347, align 4
  store i32 %9, ptr %.1206346, align 4
  br label %stbir__insert_coeff.exit

bb.y:                                             ; preds = %bb.w
  %i.hb = sub nsw i32 %9, %i.fn
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %i.hc ; 2 uses
  %i.he = load float, ptr %i.hd, align 4
  %i.hf = fadd float %i.fl, %i.he
  store float %i.hf, ptr %i.hd, align 4
  br label %stbir__insert_coeff.exit

bb.z:                                             ; preds = %bb.v
  %i.hg = sub nsw i32 %9, %i.fn                   ; 3 uses
  %.not59.not.i = icmp slt i32 %i.hg, %6
  br i1 %.not59.not.i, label %bb.aa, label %stbir__insert_coeff.exit

bb.aa:                                            ; preds = %bb.z
  %i.hh = sub nsw i32 %i.fm, %i.fn
  %.05464.i = add nsw i32 %i.hh, 1                ; 2 uses
  %i.hi = icmp slt i32 %.05464.i, %i.hg
  br i1 %i.hi, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.aa
  %i.hj = sext i32 %.05464.i to i64
  %i.hk = shl nsw i64 %i.hj, 2
  %scevgep73.i = getelementptr i8, ptr %.1203347, i64 %i.hk
  %i.hl = add i32 %9, -2
  %i.hm = sub i32 %i.hl, %i.fm
  %i.hn = zext i32 %i.hm to i64
  %i.ho = shl nuw nsw i64 %i.hn, 2
  %i.hp = add nuw nsw i64 %i.ho, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.hp, i1 false)
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.aa
  %i.hq = sext i32 %i.hg to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %.1203347, i64 %i.hq
  store float %i.fl, ptr %i.hr, align 4
  store i32 %9, ptr %i.fb, align 4
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %bb.u, %bb.x, %._crit_edge.i, %bb.y, %bb.z, %._crit_edge68.i
  %indvars.iv.next374 = add nsw i64 %indvars.iv373, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next374 to i32
  %exitcond376.not = icmp eq i32 %i.fe, %lftr.wideiv
  br i1 %exitcond376.not, label %.loopexit291.loopexit, label %bb.q

.loopexit291.loopexit:                            ; preds = %stbir__insert_coeff.exit
  %.pre = load i32, ptr %.1206346, align 4
  br label %.loopexit291

.loopexit291:                                     ; preds = %.loopexit291.loopexit, %bb.o
  %i.hs = phi i32 [ %.pre, %.loopexit291.loopexit ], [ %.pre392, %bb.o ] ; 4 uses
  %i.ht = icmp slt i32 %i.hs, 0
  br i1 %i.ht, label %bb.ab, label %stbir__insert_coeff.exit274

bb.ab:                                            ; preds = %.loopexit291
  %narrow = xor i32 %i.hs, -1
  %i.hu = zext nneg i32 %narrow to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %i.hu ; 2 uses
  %.not427 = icmp eq i32 %i.hs, -1
  br i1 %.not427, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.ab
  %scevgep.i242 = getelementptr i8, ptr %.1203347, i64 4
  br label %.tail276

.tail276:                                         ; preds = %.lr.ph328, %stbir__insert_coeff.exit255
  %i.hw = phi i32 [ %i.hs, %.lr.ph328 ], [ %i.kh, %stbir__insert_coeff.exit255 ] ; 9 uses
  %.0182326 = phi ptr [ %i.hv, %.lr.ph328 ], [ %i.ia, %stbir__insert_coeff.exit255 ] ; 2 uses
  %.1197325 = phi i32 [ -1, %.lr.ph328 ], [ %i.kg, %stbir__insert_coeff.exit255 ] ; 3 uses
  %i.hx = icmp sgt i32 %.1197325, %i.ei
  %i.hy = sub nsw i32 0, %.1197325
  %spec.select464 = select i1 %i.hx, i32 %i.hy, i32 %i.b
  %i.hz = select i1 %trunc, i32 %spec.select464, i32 0 ; 13 uses
  %i.ia = getelementptr inbounds i8, ptr %.0182326, i64 -4 ; 2 uses
  %i.ib = load float, ptr %.0182326, align 4      ; 4 uses
  %i.ic = load i32, ptr %i.fb, align 4            ; 6 uses
  %i.id = icmp slt i32 %i.ic, %i.hw
  br i1 %i.id, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.tail276
  store i32 %i.hz, ptr %i.fb, align 4
  store i32 %i.hz, ptr %.1206346, align 4
  store float %i.ib, ptr %.1203347, align 4
  br label %stbir__insert_coeff.exit255

bb.ad:                                            ; preds = %.tail276
  %.not.i237 = icmp sgt i32 %i.hz, %i.ic
  br i1 %.not.i237, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ie = icmp slt i32 %i.hz, %i.hw
  br i1 %i.ie, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.if = sub nsw i32 %i.ic, %i.hz
  %.not60.not.i238 = icmp slt i32 %i.if, %6
  br i1 %.not60.not.i238, label %.lr.ph.preheader.i243, label %stbir__insert_coeff.exit255

.lr.ph.preheader.i243:                            ; preds = %bb.af
  %i.ig = sub nsw i32 %i.hw, %i.hz                ; 2 uses
  %i.ih = sub i32 %i.ic, %i.hw                    ; 2 uses
  %i.ii = zext i32 %i.ih to i64                   ; 5 uses
  %i.ij = sext i32 %i.ig to i64
  %invariant.gep.i244 = getelementptr [4 x i8], ptr %.1203347, i64 %i.ij ; 6 uses
  %i.ik = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check599 = icmp ult i32 %i.ih, 7
  br i1 %min.iters.check599, label %.lr.ph.i245.preheader, label %vector.memcheck596

vector.memcheck596:                               ; preds = %.lr.ph.preheader.i243
  %i.il = sext i32 %i.hz to i64
  %i.im = sext i32 %i.hw to i64
  %i.in = sub nsw i64 %i.il, %i.im
  %i.io = shl nsw i64 %i.in, 2
  %i.ip = add nsw i64 %i.io, -1
  %diff.check597 = icmp ult i64 %i.ip, 31
  br i1 %diff.check597, label %.lr.ph.i245.preheader, label %vector.ph600

vector.ph600:                                     ; preds = %vector.memcheck596
  %n.vec601 = and i64 %i.ik, 8589934584           ; 3 uses
  %i.iq = sub nsw i64 %i.ii, %n.vec601
  br label %vector.body602

vector.body602:                                   ; preds = %vector.body602, %vector.ph600
  %index603 = phi i64 [ 0, %vector.ph600 ], [ %index.next606, %vector.body602 ] ; 2 uses
  %i.ir = sub i64 %i.ii, %index603                ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -12
  %i.iu = getelementptr inbounds i8, ptr %i.is, i64 -28
  %wide.load604 = load <4 x float>, ptr %i.it, align 4
  %wide.load605 = load <4 x float>, ptr %i.iu, align 4
  %i.iv = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %i.ir ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -12
  %i.ix = getelementptr i8, ptr %i.iv, i64 -28
  store <4 x float> %wide.load604, ptr %i.iw, align 4
  store <4 x float> %wide.load605, ptr %i.ix, align 4
  %index.next606 = add nuw i64 %index603, 8       ; 2 uses
  %i.iy = icmp eq i64 %index.next606, %n.vec601
  br i1 %i.iy, label %middle.block607, label %vector.body602, !llvm.loop !601

middle.block607:                                  ; preds = %vector.body602
  %cmp.n608 = icmp eq i64 %i.ik, %n.vec601
  br i1 %cmp.n608, label %.preheader.i239.loopexit, label %.lr.ph.i245.preheader

.lr.ph.i245.preheader:                            ; preds = %vector.memcheck596, %.lr.ph.preheader.i243, %middle.block607
  %indvars.iv.i246.ph = phi i64 [ %i.ii, %vector.memcheck596 ], [ %i.ii, %.lr.ph.preheader.i243 ], [ %i.iq, %middle.block607 ] ; 4 uses
  %i.iz = add nsw i64 %indvars.iv.i246.ph, 1
  %xtraiter640.a = and i64 %i.iz, 3               ; 2 uses
  %lcmp.mod641.not.a = icmp eq i64 %xtraiter640.a, 0
  br i1 %lcmp.mod641.not.a, label %.lr.ph.i245.prol.loopexit, label %.lr.ph.i245.prol

.lr.ph.i245.prol:                                 ; preds = %.lr.ph.i245.preheader, %.lr.ph.i245.prol
  %indvars.iv.i246.prol = phi i64 [ %indvars.iv.next.i248.prol, %.lr.ph.i245.prol ], [ %indvars.iv.i246.ph, %.lr.ph.i245.preheader ] ; 3 uses
  %prol.iter642.a = phi i64 [ %prol.iter642.next.a, %.lr.ph.i245.prol ], [ 0, %.lr.ph.i245.preheader ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv.i246.prol
  %i.jb = load float, ptr %i.ja, align 4
  %gep.i247.prol = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.i246.prol
  store float %i.jb, ptr %gep.i247.prol, align 4
  %indvars.iv.next.i248.prol = add nsw i64 %indvars.iv.i246.prol, -1 ; 2 uses
  %prol.iter642.next.a = add i64 %prol.iter642.a, 1 ; 2 uses
  %prol.iter642.cmp.not.a = icmp eq i64 %prol.iter642.next.a, %xtraiter640.a
  br i1 %prol.iter642.cmp.not.a, label %.lr.ph.i245.prol.loopexit, label %.lr.ph.i245.prol, !llvm.loop !602

.lr.ph.i245.prol.loopexit:                        ; preds = %.lr.ph.i245.prol, %.lr.ph.i245.preheader
  %indvars.iv.i246.unr = phi i64 [ %indvars.iv.i246.ph, %.lr.ph.i245.preheader ], [ %indvars.iv.next.i248.prol, %.lr.ph.i245.prol ]
  %i.jc = icmp ult i64 %indvars.iv.i246.ph, 3
  br i1 %i.jc, label %.preheader.i239.loopexit, label %.lr.ph.i245

.preheader.i239.loopexit:                         ; preds = %.lr.ph.i245.prol.loopexit, %.lr.ph.i245, %middle.block607
  %i.jd = icmp sgt i32 %i.ig, 1
  br i1 %i.jd, label %.lr.ph63.preheader.i241, label %._crit_edge.i240

.lr.ph63.preheader.i241:                          ; preds = %.preheader.i239.loopexit
  %i.je = xor i32 %i.hz, -1
  %i.jf = add i32 %i.hw, %i.je
  %i.jg = zext i32 %i.jf to i64
  %i.jh = shl nuw nsw i64 %i.jg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i242, i8 0, i64 %i.jh, i1 false)
  br label %._crit_edge.i240

.lr.ph.i245:                                      ; preds = %.lr.ph.i245.prol.loopexit, %.lr.ph.i245
  %indvars.iv.i246 = phi i64 [ %indvars.iv.next.i248.3, %.lr.ph.i245 ], [ %indvars.iv.i246.unr, %.lr.ph.i245.prol.loopexit ] ; 6 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv.i246
  %i.jj = load float, ptr %i.ji, align 4
  %gep.i247 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.i246
  store float %i.jj, ptr %gep.i247, align 4
  %indvars.iv.next.i248 = add nsw i64 %indvars.iv.i246, -1 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv.next.i248
  %i.jl = load float, ptr %i.jk, align 4
  %gep.i247.1 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248
  store float %i.jl, ptr %gep.i247.1, align 4
  %indvars.iv.next.i248.1 = add nsw i64 %indvars.iv.i246, -2 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv.next.i248.1
  %i.jn = load float, ptr %i.jm, align 4
  %gep.i247.2 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248.1
  store float %i.jn, ptr %gep.i247.2, align 4
  %indvars.iv.next.i248.2 = add nsw i64 %indvars.iv.i246, -3 ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %indvars.iv.next.i248.2
  %i.jp = load float, ptr %i.jo, align 4
  %gep.i247.3 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248.2
  store float %i.jp, ptr %gep.i247.3, align 4
  %indvars.iv.next.i248.3 = add nsw i64 %indvars.iv.i246, -4
  %.not81.i249.3 = icmp eq i64 %indvars.iv.next.i248.2, 0
  br i1 %.not81.i249.3, label %.preheader.i239.loopexit, label %.lr.ph.i245, !llvm.loop !603

._crit_edge.i240:                                 ; preds = %.lr.ph63.preheader.i241, %.preheader.i239.loopexit
  store float %i.ib, ptr %.1203347, align 4
  store i32 %i.hz, ptr %.1206346, align 4
  br label %stbir__insert_coeff.exit255

bb.ag:                                            ; preds = %bb.ae
  %i.jq = sub nsw i32 %i.hz, %i.hw
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.1203347, i64 %i.jr ; 2 uses
  %i.jt = load float, ptr %i.js, align 4
  %i.ju = fadd float %i.ib, %i.jt
  store float %i.ju, ptr %i.js, align 4
  br label %stbir__insert_coeff.exit255

bb.ah:                                            ; preds = %bb.ad
  %i.jv = sub nsw i32 %i.hz, %i.hw                ; 3 uses
  %.not59.not.i250 = icmp slt i32 %i.jv, %6
  br i1 %.not59.not.i250, label %bb.ai, label %stbir__insert_coeff.exit255

bb.ai:                                            ; preds = %bb.ah
  %i.jw = sub nsw i32 %i.ic, %i.hw
  %.05464.i251 = add nsw i32 %i.jw, 1             ; 2 uses
  %i.jx = icmp slt i32 %.05464.i251, %i.jv
  br i1 %i.jx, label %.lr.ph67.preheader.i253, label %._crit_edge68.i252

.lr.ph67.preheader.i253:                          ; preds = %bb.ai
  %i.jy = sext i32 %.05464.i251 to i64
  %i.jz = shl nsw i64 %i.jy, 2
  %scevgep73.i254 = getelementptr i8, ptr %.1203347, i64 %i.jz
  %reass.sub475 = sub i32 %i.hz, %i.ic
  %i.ka = add i32 %reass.sub475, -2
  %i.kb = zext i32 %i.ka to i64
  %i.kc = shl nuw nsw i64 %i.kb, 2
end_hunk_1
