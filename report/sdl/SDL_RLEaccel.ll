inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_RLEAlphaBlit:bb.a
  %i.iq = sext i32 %i.hy to i64
  %i.ir = sub nsw i64 %i.ip, %i.iq
  %i.is = shl nsw i64 %i.ir, 2
  %scevgep539 = getelementptr i8, ptr %scevgep538, i64 %i.is
  %bound0540 = icmp ult ptr %i.ij, %scevgep539
  %bound1541 = icmp ult ptr %i.im, %scevgep537
  %found.conflict542 = and i1 %bound0540, %bound1541
  br i1 %found.conflict542, label %scalar.ph543.preheader, label %vector.ph545

vector.ph545:                                     ; preds = %vector.memcheck536
  %n.vec546 = and i64 %wide.trip.count464.i, 2147483644 ; 3 uses
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph545
  %index548 = phi i64 [ 0, %vector.ph545 ], [ %index.next551, %vector.body547 ] ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index548
  %wide.load549 = load <4 x i32>, ptr %i.it, align 4, !alias.scope !165 ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %index548 ; 2 uses
  %wide.load550 = load <4 x i16>, ptr %i.iu, align 2, !alias.scope !168, !noalias !165
  %i.iv = zext <4 x i16> %wide.load550 to <4 x i32> ; 2 uses
  %i.iw = lshr <4 x i32> %wide.load549, splat (i32 5)
  %i.ix = and <4 x i32> %i.iw, splat (i32 31)
  %i.iy = and <4 x i32> %wide.load549, splat (i32 65043487)
  %i.iz = shl nuw <4 x i32> %i.iv, splat (i32 16)
  %i.ja = or disjoint <4 x i32> %i.iz, %i.iv
  %i.jb = and <4 x i32> %i.ja, splat (i32 65043487) ; 2 uses
  %i.jc = sub nsw <4 x i32> %i.iy, %i.jb
  %i.jd = mul nsw <4 x i32> %i.jc, %i.ix
  %i.je = lshr <4 x i32> %i.jd, splat (i32 5)
  %i.jf = add nuw nsw <4 x i32> %i.je, %i.jb
  %i.jg = and <4 x i32> %i.jf, splat (i32 65043487) ; 2 uses
  %i.jh = lshr <4 x i32> %i.jg, splat (i32 16)
  %i.ji = or disjoint <4 x i32> %i.jh, %i.jg
  %i.jj = trunc <4 x i32> %i.ji to <4 x i16>
  store <4 x i16> %i.jj, ptr %i.iu, align 2, !alias.scope !168, !noalias !165
  %index.next551 = add nuw i64 %index548, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next551, %n.vec546
  br i1 %i.jk, label %middle.block552, label %vector.body547, !llvm.loop !170

middle.block552:                                  ; preds = %vector.body547
  %cmp.n553 = icmp eq i64 %n.vec546, %wide.trip.count464.i
  br i1 %cmp.n553, label %.loopexit446.i, label %scalar.ph543.preheader

scalar.ph543.preheader:                           ; preds = %vector.memcheck536, %bb.au, %middle.block552
  %indvars.iv461.i.ph = phi i64 [ 0, %vector.memcheck536 ], [ 0, %bb.au ], [ %n.vec546, %middle.block552 ]
  br label %scalar.ph543

scalar.ph543:                                     ; preds = %scalar.ph543.preheader, %scalar.ph543
  %indvars.iv461.i = phi i64 [ %indvars.iv.next462.i, %scalar.ph543 ], [ %indvars.iv461.i.ph, %scalar.ph543.preheader ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv461.i
  %i.jm = load i32, ptr %i.jl, align 4            ; 2 uses
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %indvars.iv461.i ; 2 uses
  %i.jo = load i16, ptr %i.jn, align 2
  %i.jp = zext i16 %i.jo to i32                   ; 2 uses
  %i.jq = lshr i32 %i.jm, 5
  %i.jr = and i32 %i.jq, 31
  %i.js = and i32 %i.jm, 65043487
  %i.jt = shl nuw i32 %i.jp, 16
  %i.ju = or disjoint i32 %i.jt, %i.jp
  %i.jv = and i32 %i.ju, 65043487                 ; 2 uses
  %i.jw = sub nsw i32 %i.js, %i.jv
  %i.jx = mul nsw i32 %i.jw, %i.jr
  %i.jy = lshr i32 %i.jx, 5
  %i.jz = add nuw nsw i32 %i.jy, %i.jv
  %i.ka = and i32 %i.jz, 65043487                 ; 2 uses
  %i.kb = lshr i32 %i.ka, 16
  %i.kc = or disjoint i32 %i.kb, %i.ka
  %i.kd = trunc i32 %i.kc to i16
  store i16 %i.kd, ptr %i.jn, align 2
  %indvars.iv.next462.i = add nuw nsw i64 %indvars.iv461.i, 1 ; 2 uses
  %exitcond465.not.i = icmp eq i64 %indvars.iv.next462.i, %wide.trip.count464.i
  br i1 %exitcond465.not.i, label %.loopexit446.i, label %scalar.ph543, !llvm.loop !171

.loopexit446.i:                                   ; preds = %scalar.ph543, %middle.block552, %bb.at
  %i.ke = shl nuw nsw i32 %i.ib, 2
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.kf
  %i.kh = add i32 %i.hy, %i.ib
  br label %bb.av

bb.av:                                            ; preds = %.loopexit446.i, %bb.as
  %.4338.i = phi i32 [ %i.kh, %.loopexit446.i ], [ %i.hy, %bb.as ] ; 2 uses
  %.12.i = phi ptr [ %i.kg, %.loopexit446.i ], [ %i.ic, %bb.as ] ; 2 uses
  %i.ki = icmp slt i32 %.4338.i, %i.b
  br i1 %i.ki, label %bb.as, label %bb.aw, !llvm.loop !172

bb.aw:                                            ; preds = %bb.av
  %i.kj = load i32, ptr %i.m, align 8
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds i8, ptr %.2304.i, i64 %i.kk
  %i.km = add nsw i32 %.0339.i, -1                ; 2 uses
  %.not393.i = icmp eq i32 %i.km, 0
  br i1 %.not393.i, label %RLEAlphaClipBlit.exit, label %bb.al, !llvm.loop !173

bb.ax:                                            ; preds = %bb.t
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = add nsw i32 %i.kq, %i.bv                ; 2 uses
  %i.ks = sext i32 %i.bv to i64
  %.neg.i = mul nsw i64 %i.ks, -4
  %i.kt = getelementptr inbounds i8, ptr %i.w, i64 %.neg.i
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bh, %bb.ax
  %.0321.i = phi i32 [ %i.ko, %bb.ax ], [ %i.ok, %bb.bh ]
  %.4306.i = phi ptr [ %i.kt, %bb.ax ], [ %i.oj, %bb.bh ] ; 4 uses
  %.14.i = phi ptr [ %.12372, %bb.ax ], [ %.19.i, %bb.bh ]
  br label %bb.az

bb.az:                                            ; preds = %bb.bd, %bb.ay
  %.0316.i = phi i32 [ 0, %bb.ay ], [ %.2318443.i, %bb.bd ]
  %.15.i = phi ptr [ %.14.i, %bb.ay ], [ %.17444.i, %bb.bd ] ; 3 uses
  %i.ku = load i16, ptr %.15.i, align 2
  %i.kv = zext i16 %i.ku to i32
  %i.kw = add nsw i32 %.0316.i, %i.kv             ; 6 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.15.i, i64 2
  %i.ky = load i16, ptr %i.kx, align 2            ; 3 uses
  %i.kz = zext i16 %i.ky to i32                   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.15.i, i64 4 ; 3 uses
  %.not.i = icmp eq i16 %i.ky, 0
  br i1 %.not.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lb = sub nsw i32 %i.bv, %i.kw                ; 2 uses
  %i.lc = icmp sgt i32 %i.lb, 0
  %spec.select410.i = select i1 %i.lc, i32 %i.bv, i32 %i.kw ; 3 uses
  %i.ld = tail call i32 @llvm.smax.i32(i32 %i.lb, i32 0)
  %spec.select411.i = sub nsw i32 %i.kz, %i.ld
  %i.le = sub nsw i32 %i.kr, %spec.select410.i
  %.1314.i = tail call i32 @llvm.smin.i32(i32 %spec.select411.i, i32 %i.le) ; 2 uses
  %i.lf = icmp sgt i32 %.1314.i, 0
  br i1 %i.lf, label %bb.bb, label %.thread438.i

bb.bb:                                            ; preds = %bb.ba
  %i.lg = sext i32 %spec.select410.i to i64
  %i.lh = shl nsw i64 %i.lg, 2
  %i.li = getelementptr inbounds nuw i8, ptr %.4306.i, i64 %i.lh
  %i.lj = sub nsw i32 %spec.select410.i, %i.kw
  %i.lk = sext i32 %i.lj to i64
  %i.ll = shl nsw i64 %i.lk, 2
  %i.lm = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ll
  %i.ln = zext nneg i32 %.1314.i to i64
  %i.lo = shl nuw nsw i64 %i.ln, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.li, ptr nonnull align 1 %i.lm, i64 %i.lo, i1 false)
  br label %.thread438.i

.thread438.i:                                     ; preds = %bb.bb, %bb.ba
  %i.lp = zext i16 %i.ky to i64
  %i.lq = shl nuw nsw i64 %i.lp, 2
  %i.lr = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lq
  %i.ls = add i32 %i.kw, %i.kz
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %.not386.not.i = icmp eq i32 %i.kw, 0
  br i1 %.not386.not.i, label %RLEAlphaClipBlit.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread438.i
  %.17444.i = phi ptr [ %i.lr, %.thread438.i ], [ %i.la, %bb.bc ] ; 2 uses
  %.2318443.i = phi i32 [ %i.ls, %.thread438.i ], [ %i.kw, %bb.bc ] ; 2 uses
  %i.lt = icmp slt i32 %.2318443.i, %i.b
  br i1 %i.lt, label %bb.az, label %.preheader.i, !llvm.loop !174

.preheader.i:                                     ; preds = %bb.bd, %bb.bg
  %.3319.i = phi i32 [ %.4320.i, %bb.bg ], [ 0, %bb.bd ]
  %.18.i = phi ptr [ %.19.i, %bb.bg ], [ %.17444.i, %bb.bd ] ; 4 uses
  %i.lu = load i16, ptr %.18.i, align 2
  %i.lv = zext i16 %i.lu to i32
  %i.lw = add i32 %.3319.i, %i.lv                 ; 6 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.18.i, i64 2
  %i.ly = load i16, ptr %i.lx, align 2            ; 2 uses
  %i.lz = zext i16 %i.ly to i32                   ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.18.i, i64 4 ; 3 uses
  %.not387.i = icmp eq i16 %i.ly, 0
  br i1 %.not387.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.preheader.i
  %i.mb = sub nsw i32 %i.bv, %i.lw                ; 2 uses
  %i.mc = icmp sgt i32 %i.mb, 0
  %spec.select412.i = select i1 %i.mc, i32 %i.bv, i32 %i.lw ; 3 uses
  %i.md = tail call i32 @llvm.smax.i32(i32 %i.mb, i32 0)
  %spec.select413.i = sub nsw i32 %i.lz, %i.md
  %i.me = sub nsw i32 %i.kr, %spec.select412.i
  %.1311.i = tail call i32 @llvm.smin.i32(i32 %spec.select413.i, i32 %i.me) ; 3 uses
  %i.mf = icmp sgt i32 %.1311.i, 0
  br i1 %i.mf, label %bb.bf, label %.loopexit449.i

bb.bf:                                            ; preds = %bb.be
  %i.mg = sext i32 %spec.select412.i to i64       ; 2 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %.4306.i, i64 %i.mg ; 3 uses
  %i.mi = sub nsw i32 %spec.select412.i, %i.lw
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %i.mj ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.1311.i to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %.1311.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bf
  %4 = shl nsw i64 %i.mg, 2                       ; 2 uses
  %i.ml = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %5 = getelementptr i8, ptr %.4306.i, i64 %4
  %scevgep = getelementptr i8, ptr %5, i64 %i.ml
  %scevgep533 = getelementptr i8, ptr %.18.i, i64 4
  %6 = add nsw i64 %4, %i.ml
  %i.mm = sext i32 %i.lw to i64
  %7 = shl nsw i64 %i.mm, 2
  %8 = sub nsw i64 %6, %7
  %scevgep534 = getelementptr i8, ptr %scevgep533, i64 %8
  %bound0 = icmp ult ptr %i.mh, %scevgep534
  %bound1 = icmp ult ptr %i.mk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index
  %wide.load = load <4 x i32>, ptr %i.mn, align 4, !alias.scope !175 ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index ; 2 uses
  %wide.load535 = load <4 x i32>, ptr %i.mo, align 4, !alias.scope !178, !noalias !175 ; 2 uses
  %i.mp = lshr <4 x i32> %wide.load, splat (i32 24) ; 2 uses
  %i.mq = and <4 x i32> %wide.load, splat (i32 16711935)
  %i.mr = and <4 x i32> %wide.load535, splat (i32 16711935) ; 2 uses
  %i.ms = sub nsw <4 x i32> %i.mq, %i.mr
  %i.mt = mul <4 x i32> %i.ms, %i.mp
  %i.mu = lshr <4 x i32> %i.mt, splat (i32 8)
  %i.mv = add nuw nsw <4 x i32> %i.mu, %i.mr
  %i.mw = and <4 x i32> %i.mv, splat (i32 16711935)
  %i.mx = and <4 x i32> %wide.load, splat (i32 65280)
  %i.my = and <4 x i32> %wide.load535, splat (i32 65280) ; 2 uses
  %i.mz = sub nsw <4 x i32> %i.mx, %i.my
  %i.na = mul nsw <4 x i32> %i.mz, %i.mp
  %i.nb = lshr exact <4 x i32> %i.na, splat (i32 8)
  %i.nc = add nuw nsw <4 x i32> %i.nb, %i.my
  %i.nd = and <4 x i32> %i.nc, splat (i32 65280)
  %i.ne = or disjoint <4 x i32> %i.mw, %i.nd
  %i.nf = or disjoint <4 x i32> %i.ne, splat (i32 -16777216)
  store <4 x i32> %i.nf, ptr %i.mo, align 4, !alias.scope !178, !noalias !175
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit449.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.bf, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.bf ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.i
  %i.ni = load i32, ptr %i.nh, align 4            ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.i ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4            ; 2 uses
  %i.nl = lshr i32 %i.ni, 24                      ; 2 uses
  %i.nm = and i32 %i.ni, 16711935
  %i.nn = and i32 %i.nk, 16711935                 ; 2 uses
  %i.no = sub nsw i32 %i.nm, %i.nn
  %i.np = mul i32 %i.no, %i.nl
  %i.nq = lshr i32 %i.np, 8
  %i.nr = add nuw nsw i32 %i.nq, %i.nn
  %i.ns = and i32 %i.nr, 16711935
  %i.nt = and i32 %i.ni, 65280
  %i.nu = and i32 %i.nk, 65280                    ; 2 uses
  %i.nv = sub nsw i32 %i.nt, %i.nu
  %i.nw = mul nsw i32 %i.nv, %i.nl
  %i.nx = lshr exact i32 %i.nw, 8
  %i.ny = add nuw nsw i32 %i.nx, %i.nu
  %i.nz = and i32 %i.ny, 65280
  %i.oa = or disjoint i32 %i.ns, %i.nz
  %i.ob = or disjoint i32 %i.oa, -16777216
  store i32 %i.ob, ptr %i.nj, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit449.i, label %scalar.ph, !llvm.loop !181

.loopexit449.i:                                   ; preds = %scalar.ph, %middle.block, %bb.be
  %i.oc = shl nuw nsw i32 %i.lz, 2
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.od
  %i.of = add i32 %i.lw, %i.lz
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit449.i, %.preheader.i
  %.4320.i = phi i32 [ %i.of, %.loopexit449.i ], [ %i.lw, %.preheader.i ] ; 2 uses
  %.19.i = phi ptr [ %i.oe, %.loopexit449.i ], [ %i.ma, %.preheader.i ] ; 2 uses
  %i.og = icmp slt i32 %.4320.i, %i.b
  br i1 %i.og, label %.preheader.i, label %bb.bh, !llvm.loop !182

bb.bh:                                            ; preds = %bb.bg
  %i.oh = load i32, ptr %i.m, align 8
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds i8, ptr %.4306.i, i64 %i.oi
  %i.ok = add nsw i32 %.0321.i, -1                ; 2 uses
  %.not388.i = icmp eq i32 %i.ok, 0
  br i1 %.not388.i, label %RLEAlphaClipBlit.exit, label %bb.ay, !llvm.loop !183

bb.bi:                                            ; preds = %bb.s
  switch i8 %i.s, label %RLEAlphaClipBlit.exit [
    i8 2, label %bb.bj
    i8 4, label %bb.ci
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.ol = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.om = load i32, ptr %i.ol, align 4
  %i.on = icmp eq i32 %i.om, 2016
  br i1 %i.on, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.op = load i32, ptr %i.oo, align 4
  %i.oq = icmp eq i32 %i.op, 2016
  br i1 %i.oq, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.or = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.os = load i32, ptr %i.or, align 4
  %i.ot = icmp eq i32 %i.os, 2016
  br i1 %i.ot, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bl
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ov = load i32, ptr %i.ou, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bw, %bb.bm
  %.0294 = phi i32 [ %i.ov, %bb.bm ], [ %i.rz, %bb.bw ]
  %.0250 = phi ptr [ %i.w, %bb.bm ], [ %i.ry, %bb.bw ] ; 4 uses
  %.13 = phi ptr [ %.12372, %bb.bm ], [ %.19, %bb.bw ]
  br label %bb.bo

bb.bo:                                            ; preds = %bb.br, %bb.bn
  %.0295 = phi i32 [ 0, %bb.bn ], [ %.2297.ph, %bb.br ]
  %.14 = phi ptr [ %.13, %bb.bn ], [ %.16.ph, %bb.br ] ; 3 uses
  %i.ow = load i8, ptr %.14, align 1
  %i.ox = zext i8 %i.ow to i32
  %i.oy = add nsw i32 %.0295, %i.ox               ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.pa = load i8, ptr %i.oz, align 1             ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.14, i64 2 ; 3 uses
  %.not345 = icmp eq i8 %i.pa, 0
  br i1 %.not345, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pc = zext i8 %i.pa to i32
  %i.pd = sext i32 %i.oy to i64
  %i.pe = shl nsw i64 %i.pd, 1
  %i.pf = getelementptr inbounds nuw i8, ptr %.0250, i64 %i.pe
  %i.pg = zext i8 %i.pa to i64
  %i.ph = shl nuw nsw i64 %i.pg, 1                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pf, ptr nonnull align 1 %i.pb, i64 %i.ph, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ph
  %i.pj = add i32 %i.oy, %i.pc
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %.not346 = icmp eq i32 %i.oy, 0
  br i1 %.not346, label %RLEAlphaClipBlit.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.2297.ph = phi i32 [ %i.pj, %bb.bp ], [ %i.oy, %bb.bq ] ; 2 uses
  %.16.ph = phi ptr [ %i.pi, %bb.bp ], [ %i.pb, %bb.bq ] ; 3 uses
  %i.pk = icmp slt i32 %.2297.ph, %i.b
  br i1 %i.pk, label %bb.bo, label %bb.bs, !llvm.loop !184

bb.bs:                                            ; preds = %bb.br
  %i.pl = ptrtoint ptr %.16.ph to i64
  %i.pm = and i64 %i.pl, 2
  %i.pn = getelementptr inbounds nuw i8, ptr %.16.ph, i64 %i.pm
  %scevgep622 = getelementptr i8, ptr %.0250, i64 2
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %.3298 = phi i32 [ 0, %bb.bs ], [ %.4299, %bb.bv ]
  %.17 = phi ptr [ %i.pn, %bb.bs ], [ %.19, %bb.bv ] ; 4 uses
  %i.po = load i16, ptr %.17, align 2
  %i.pp = zext i16 %i.po to i32
  %i.pq = add i32 %.3298, %i.pp                   ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.17, i64 2
  %i.ps = load i16, ptr %i.pr, align 2            ; 4 uses
  %i.pt = zext i16 %i.ps to i32                   ; 3 uses
  %i.pu = getelementptr i8, ptr %.17, i64 4       ; 6 uses
  %.not347 = icmp eq i16 %i.ps, 0
  br i1 %.not347, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pv = sext i32 %i.pq to i64                   ; 2 uses
  %i.pw = getelementptr [2 x i8], ptr %.0250, i64 %i.pv ; 5 uses
  %i.px = zext i16 %i.ps to i64                   ; 2 uses
  %min.iters.check630 = icmp ult i16 %i.ps, 4
  br i1 %min.iters.check630, label %scalar.ph629.preheader, label %vector.memcheck621

vector.memcheck621:                               ; preds = %bb.bu
  %i.py = add nsw i32 %i.pt, -1
  %i.pz = zext i32 %i.py to i64                   ; 2 uses
  %i.qa = add nsw i64 %i.pv, %i.pz
  %i.qb = shl nsw i64 %i.qa, 1
  %scevgep623 = getelementptr i8, ptr %scevgep622, i64 %i.qb
  %scevgep624 = getelementptr i8, ptr %.17, i64 8
  %i.qc = shl nuw nsw i64 %i.pz, 2
  %scevgep625 = getelementptr i8, ptr %scevgep624, i64 %i.qc
  %bound0626 = icmp ult ptr %i.pw, %scevgep625
end_hunk_0
