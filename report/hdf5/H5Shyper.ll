Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Shyper?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 71
begin_hunk_0_@H5S__hyper_serialize:bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %bb.aj ], [ %indvars.iv.next.1, %.preheader345.unr-lcssa ] ; 3 uses
  %lcmp.mod494 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod494)
  %i.ki = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.epil.init ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !42
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !18
  %i.km = load i64, ptr %i.ki, align 8, !tbaa !50
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !18
  br label %.preheader345

.preheader345:                                    ; preds = %.preheader345.unr-lcssa, %.epil.preheader
  %i.ko = add i32 %i.p, -1                        ; 2 uses
  %i.kp = add nuw nsw i32 %.0300, 4
  %i.kq = zext i32 %i.ko to i64                   ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.kq ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kq ; 2 uses
  %.not317 = icmp eq i32 %i.ko, 0
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.kw = add i32 %i.p, -2                        ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, -1
  %i.ky = shl i32 %i.p, 3
  %xtraiter498 = and i64 %wide.trip.count, 1
  %i.kz = icmp eq i64 %i.kg, 0
  %unroll_iter502 = and i64 %wide.trip.count, 4294967294
  %lcmp.mod500.not = icmp eq i64 %xtraiter498, 0
  %lcmp.mod501 = trunc i32 %i.p to i1
  br label %.preheader344

bb.ak:                                            ; preds = %bb.ak, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.ak ] ; 5 uses
  %niter496 = phi i64 [ 0, %.new ], [ %niter496.next.1, %bb.ak ]
  %i.la = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !42
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.lc, ptr %i.ld, align 16, !tbaa !18
  %i.le = load i64, ptr %i.la, align 8, !tbaa !50
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.le, ptr %i.lf, align 16, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.lg = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.next ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !42
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store i64 %i.li, ptr %i.lj, align 8, !tbaa !18
  %i.lk = load i64, ptr %i.lg, align 8, !tbaa !50
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store i64 %i.lk, ptr %i.ll, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter496.next.1 = add i64 %niter496, 2         ; 2 uses
  %niter496.ncmp.1 = icmp eq i64 %niter496.next.1, %unroll_iter495
  br i1 %niter496.ncmp.1, label %.preheader345.unr-lcssa, label %bb.ak, !llvm.loop !94

.loopexit343.unr-lcssa:                           ; preds = %._crit_edge364.new
  br i1 %lcmp.mod500.not, label %.loopexit343, label %.epil.preheader497

.epil.preheader497:                               ; preds = %.loopexit343.unr-lcssa, %._crit_edge364
  %indvars.iv421.epil.init = phi i64 [ 0, %._crit_edge364 ], [ %indvars.iv.next422.1, %.loopexit343.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod501)
  %i.lm = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv421.epil.init ; 3 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !50
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !51
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !42
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv421.epil.init
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !18
  %i.lu = sub i64 %i.lr, %i.lt
  %i.lv = mul i64 %i.lu, %i.lp
  %i.lw = add i64 %i.lv, %i.ln
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv421.epil.init
  store i64 %i.lw, ptr %i.lx, align 8, !tbaa !18
  br label %.loopexit343

.loopexit343:                                     ; preds = %.loopexit343.unr-lcssa, %.epil.preheader497
  br i1 %.1294.lcssa, label %.preheader344, label %.loopexit.loopexit405, !llvm.loop !95

.preheader344:                                    ; preds = %.preheader345, %.loopexit343
  %i.ly = phi ptr [ %i.kf, %.preheader345 ], [ %i.od, %.loopexit343 ] ; 2 uses
  %.1301369 = phi i32 [ %i.kp, %.preheader345 ], [ %.2302.lcssa, %.loopexit343 ] ; 2 uses
  %.promoted = load i64, ptr %i.kr, align 8, !tbaa !18 ; 3 uses
  %.not316354 = icmp eq i64 %.promoted, 0
  br i1 %.not316354, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader344
  %.promoted359 = load i64, ptr %i.ku, align 8, !tbaa !18
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.an
  %i.lz = phi ptr [ %i.ly, %.lr.ph ], [ %i.nw, %bb.an ]
  %i.ma = phi i64 [ %.promoted359, %.lr.ph ], [ %i.ny, %bb.an ]
  %i.mb = phi i64 [ %.promoted, %.lr.ph ], [ %i.nz, %bb.an ]
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.am
  %i.mc = phi ptr [ %i.lz, %bb.al ], [ %i.mq, %bb.am ]
  %indvars.iv411 = phi i64 [ 0, %bb.al ], [ %indvars.iv.next412, %bb.am ] ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv411
  %i.me = load i64, ptr %i.md, align 8, !tbaa !18 ; 4 uses
  %i.mf = trunc i64 %i.me to i8
  store i8 %i.mf, ptr %i.mc, align 1, !tbaa !24
  %i.mg = load ptr, ptr %i.e, align 8, !tbaa !46  ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 1 ; 2 uses
  store ptr %i.mh, ptr %i.e, align 8, !tbaa !46
  %i.mi = lshr i64 %i.me, 8
  %i.mj = trunc i64 %i.mi to i8
  store i8 %i.mj, ptr %i.mh, align 1, !tbaa !24
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 2 ; 2 uses
  store ptr %i.mk, ptr %i.e, align 8, !tbaa !46
  %i.ml = lshr i64 %i.me, 16
  %i.mm = trunc i64 %i.ml to i8
  store i8 %i.mm, ptr %i.mk, align 1, !tbaa !24
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 3 ; 2 uses
  store ptr %i.mn, ptr %i.e, align 8, !tbaa !46
  %i.mo = lshr i64 %i.me, 24
  %i.mp = trunc i64 %i.mo to i8
  store i8 %i.mp, ptr %i.mn, align 1, !tbaa !24
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mg, i64 4 ; 3 uses
  store ptr %i.mq, ptr %i.e, align 8, !tbaa !46
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1 ; 2 uses
  %exitcond415.not = icmp eq i64 %indvars.iv.next412, %wide.trip.count
  br i1 %exitcond415.not, label %.preheader342, label %bb.am, !llvm.loop !96

.preheader342:                                    ; preds = %bb.am, %.preheader342
  %i.mr = phi ptr [ %i.nw, %.preheader342 ], [ %i.mq, %bb.am ]
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %.preheader342 ], [ 0, %bb.am ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv416
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !18 ; 4 uses
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv416
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24 ; 4 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !52
  %i.mx = add i64 %i.mt, 255
  %i.my = add i64 %i.mx, %i.mw
  %i.mz = trunc i64 %i.my to i8
  store i8 %i.mz, ptr %i.mr, align 1, !tbaa !24
  %i.na = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1 ; 2 uses
  store ptr %i.nb, ptr %i.e, align 8, !tbaa !46
  %i.nc = load i64, ptr %i.mv, align 8, !tbaa !52
  %i.nd = add i64 %i.mt, 65535
  %i.ne = add i64 %i.nd, %i.nc
  %i.nf = lshr i64 %i.ne, 8
  %i.ng = trunc i64 %i.nf to i8
  store i8 %i.ng, ptr %i.nb, align 1, !tbaa !24
  %i.nh = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 1 ; 2 uses
  store ptr %i.ni, ptr %i.e, align 8, !tbaa !46
  %i.nj = load i64, ptr %i.mv, align 8, !tbaa !52
  %i.nk = add i64 %i.mt, 16777215
  %i.nl = add i64 %i.nk, %i.nj
  %i.nm = lshr i64 %i.nl, 16
  %i.nn = trunc i64 %i.nm to i8
  store i8 %i.nn, ptr %i.ni, align 1, !tbaa !24
  %i.no = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 1 ; 2 uses
  store ptr %i.np, ptr %i.e, align 8, !tbaa !46
  %i.nq = load i64, ptr %i.mv, align 8, !tbaa !52
  %i.nr = add i64 %i.mt, 4294967295
  %i.ns = add i64 %i.nr, %i.nq
  %i.nt = lshr i64 %i.ns, 24
  %i.nu = trunc i64 %i.nt to i8
  store i8 %i.nu, ptr %i.np, align 1, !tbaa !24
  %i.nv = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 1 ; 4 uses
  store ptr %i.nw, ptr %i.e, align 8, !tbaa !46
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 2 uses
  %exitcond420.not = icmp eq i64 %indvars.iv.next417, %wide.trip.count
  br i1 %exitcond420.not, label %bb.an, label %.preheader342, !llvm.loop !97

bb.an:                                            ; preds = %.preheader342
  %i.nx = load i64, ptr %i.kt, align 8, !tbaa !51
  %i.ny = add i64 %i.ma, %i.nx                    ; 2 uses
  store i64 %i.ny, ptr %i.ku, align 8, !tbaa !18
  %i.nz = add i64 %i.mb, -1                       ; 2 uses
  %.not316 = icmp eq i64 %i.nz, 0
  br i1 %.not316, label %._crit_edge.loopexit, label %bb.al, !llvm.loop !98

._crit_edge.loopexit:                             ; preds = %bb.an
  %i.oa = trunc i64 %.promoted to i32
  %i.ob = mul i32 %i.ky, %i.oa
  %i.oc = add i32 %.1301369, %i.ob
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader344
  %i.od = phi ptr [ %i.ly, %.preheader344 ], [ %i.nw, %._crit_edge.loopexit ]
  %.2302.lcssa = phi i32 [ %.1301369, %.preheader344 ], [ %i.oc, %._crit_edge.loopexit ] ; 2 uses
  br i1 %.not317, label %.loopexit.loopexit405, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  %i.oe = load i64, ptr %i.kv, align 8, !tbaa !42
  store i64 %i.oe, ptr %i.kr, align 8, !tbaa !18
  br i1 %i.kx, label %.lr.ph363, label %._crit_edge364

.lr.ph363:                                        ; preds = %bb.ao, %bb.ap
  %.0261361 = phi i32 [ %i.om, %bb.ap ], [ %i.kw, %bb.ao ] ; 4 uses
  %i.of = zext nneg i32 %.0261361 to i64          ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.of ; 3 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !18
  %i.oi = add i64 %i.oh, -1                       ; 2 uses
  store i64 %i.oi, ptr %i.og, align 8, !tbaa !18
  %.not318 = icmp eq i64 %i.oi, 0
  br i1 %.not318, label %bb.ap, label %._crit_edge364

bb.ap:                                            ; preds = %.lr.ph363
  %i.oj = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.of
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !42
  store i64 %i.ol, ptr %i.og, align 8, !tbaa !18
  %i.om = add nsw i32 %.0261361, -1
  %i.on = icmp sgt i32 %.0261361, 0
  br i1 %i.on, label %.lr.ph363, label %._crit_edge364.loopexit.split.loop.exit462, !llvm.loop !99

._crit_edge364.loopexit.split.loop.exit462:       ; preds = %bb.ap
  %3 = icmp ne i32 %.0261361, 0
  br label %._crit_edge364

._crit_edge364:                                   ; preds = %.lr.ph363, %._crit_edge364.loopexit.split.loop.exit462, %bb.ao
  %.1294.lcssa = phi i1 [ true, %bb.ao ], [ %3, %._crit_edge364.loopexit.split.loop.exit462 ], [ true, %.lr.ph363 ]
  br i1 %i.kz, label %.epil.preheader497, label %._crit_edge364.new

._crit_edge364.new:                               ; preds = %._crit_edge364, %._crit_edge364.new
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.1, %._crit_edge364.new ], [ 0, %._crit_edge364 ] ; 5 uses
  %niter503 = phi i64 [ %niter503.next.1, %._crit_edge364.new ], [ 0, %._crit_edge364 ]
  %i.oo = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv421 ; 3 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !50
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !51
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !42
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv421
  %i.ov = load i64, ptr %i.ou, align 16, !tbaa !18
  %i.ow = sub i64 %i.ot, %i.ov
  %i.ox = mul i64 %i.ow, %i.or
  %i.oy = add i64 %i.ox, %i.op
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv421
  store i64 %i.oy, ptr %i.oz, align 16, !tbaa !18
  %indvars.iv.next422 = or disjoint i64 %indvars.iv421, 1 ; 3 uses
  %i.pa = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.next422 ; 3 uses
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !50
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !51
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !42
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next422
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !18
  %i.pi = sub i64 %i.pf, %i.ph
  %i.pj = mul i64 %i.pi, %i.pd
  %i.pk = add i64 %i.pj, %i.pb
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next422
  store i64 %i.pk, ptr %i.pl, align 8, !tbaa !18
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 2 uses
  %niter503.next.1 = add i64 %niter503, 2         ; 2 uses
  %niter503.ncmp.1 = icmp eq i64 %niter503.next.1, %unroll_iter502
  br i1 %niter503.ncmp.1, label %.loopexit343.unr-lcssa, label %._crit_edge364.new, !llvm.loop !100

bb.aq:                                            ; preds = %bb.t
  %i.pm = load i8, ptr %i.g, align 1, !tbaa !24   ; 2 uses
  switch i8 %i.pm, label %bb.at [
    i8 2, label %bb.ar
    i8 4, label %bb.as
    i8 8, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.aq
  store i64 %.0298, ptr %i.eq, align 1, !tbaa !24
  br label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.pn = trunc i64 %.0298 to i8
  store i8 %i.pn, ptr %i.eq, align 1, !tbaa !24
  %i.po = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 1 ; 2 uses
  store ptr %i.pp, ptr %i.e, align 8, !tbaa !46
  %i.pq = lshr i64 %.0298, 8
  %i.pr = trunc i64 %i.pq to i8
  store i8 %i.pr, ptr %i.pp, align 1, !tbaa !24
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.ps = trunc i64 %.0298 to i8
  store i8 %i.ps, ptr %i.eq, align 1, !tbaa !24
  %i.pt = load ptr, ptr %i.e, align 8, !tbaa !46  ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 1 ; 2 uses
  store ptr %i.pu, ptr %i.e, align 8, !tbaa !46
  %i.pv = lshr i64 %.0298, 8
  %i.pw = trunc i64 %i.pv to i8
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !24
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 2 ; 2 uses
  store ptr %i.px, ptr %i.e, align 8, !tbaa !46
  %i.py = lshr i64 %.0298, 16
  %i.pz = trunc i64 %i.py to i8
  store i8 %i.pz, ptr %i.px, align 1, !tbaa !24
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 3 ; 2 uses
  store ptr %i.qa, ptr %i.e, align 8, !tbaa !46
  %i.qb = lshr i64 %.0298, 24
  %i.qc = trunc i64 %i.qb to i8
  store i8 %i.qc, ptr %i.qa, align 1, !tbaa !24
  br label %bb.au

bb.at:                                            ; preds = %bb.aq
  %i.qd = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.qe = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !18
  %i.qf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_serialize, i32 noundef 4199, i64 noundef %i.qd, i64 noundef %i.qe, ptr noundef nonnull @.str.71) #14 ; 0 uses
  br label %bb.aw

bb.au:                                            ; preds = %.preheader.preheader, %bb.as, %bb.ar
  %.sink476 = phi i64 [ 8, %.preheader.preheader ], [ 1, %bb.as ], [ 1, %bb.ar ]
  %i.qg = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 %.sink476
  store ptr %i.qh, ptr %i.e, align 8, !tbaa !46
  %i.qi = icmp eq i32 %i.ct, 1
  %i.qj = shl i32 %i.p, 3
  %i.qk = trunc i64 %.0298 to i32
  %i.ql = mul i32 %i.qj, %i.qk
  %i.qm = or disjoint i32 %i.ql, 4
  %i.qn = select i1 %i.qi, i32 %i.qm, i32 0
  %.3303 = add i32 %.0300, %i.qn
  %i.qo = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 2584
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !23
  call fastcc void @H5S__hyper_serialize_helper(ptr noundef %i.qq, ptr noundef %i.c, ptr noundef %i.d, i64 noundef 0, i8 noundef zeroext %i.pm, ptr noundef %i.e)
  br label %.loopexit

.loopexit.loopexit405:                            ; preds = %.loopexit343, %._crit_edge
  %.pre443 = load i32, ptr %i.f, align 4, !tbaa !26
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.ab
  store ptr %storemerge327, ptr %i.e, align 8, !tbaa !46
  br label %.loopexit

.loopexit.loopexit457:                            ; preds = %bb.ah
  store ptr %storemerge323, ptr %i.e, align 8, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit457, %.loopexit.loopexit, %.loopexit.loopexit405, %.preheader331, %.preheader330, %._crit_edge391, %bb.au
  %i.qr = phi i32 [ %i.ct, %bb.au ], [ %i.ct, %.preheader331 ], [ %i.ct, %.loopexit.loopexit ], [ %i.ct, %._crit_edge391 ], [ %i.ct, %.preheader330 ], [ %.pre443, %.loopexit.loopexit405 ], [ %i.ct, %.loopexit.loopexit457 ]
  %.4304 = phi i32 [ %.3303, %bb.au ], [ %.0300, %.preheader331 ], [ %.0300, %.loopexit.loopexit ], [ %.0300, %._crit_edge391 ], [ %.0300, %.preheader330 ], [ %.2302.lcssa, %.loopexit.loopexit405 ], [ %.0300, %.loopexit.loopexit457 ]
  %i.qs = icmp ult i32 %i.qr, 3
  br i1 %i.qs, label %.loopexit.thread, label %bb.av

.loopexit.thread:                                 ; preds = %._crit_edge391, %.loopexit
  %.4304456 = phi i32 [ %.4304, %.loopexit ], [ %.lcssa, %._crit_edge391 ]
  store i32 %.4304456, ptr %.0305, align 1
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.thread, %.loopexit
  %i.qt = load ptr, ptr %i.e, align 8, !tbaa !46
  store ptr %i.qt, ptr %1, align 8, !tbaa !46
  br label %bb.aw

bb.aw:                                            ; preds = %bb.c, %bb.h, %bb.ai, %bb.at, %bb.av, %bb.a
  %.0292 = phi i32 [ -1, %bb.c ], [ -1, %bb.h ], [ -1, %bb.ai ], [ 0, %bb.av ], [ -1, %bb.at ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0292
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5S__hyper_deserialize(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 4 uses
  %i.b = alloca [32 x i64], align 16              ; 29 uses
  %i.c = alloca [32 x i64], align 16              ; 25 uses
  %i.d = alloca [32 x i64], align 16              ; 7 uses
  %i.e = alloca [32 x i64], align 16              ; 7 uses
  %i.f = alloca [32 x i64], align 16              ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.g = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = xor i1 %i.j, true
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %bb.b, label %.thread525, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !46     ; 7 uses
  br i1 %3, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.p = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !18
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4275, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.72) #14 ; 0 uses
  br label %.thread525

bb.e:                                             ; preds = %bb.c
  %.add = add nsw i64 %2, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.0445.idx = phi i64 [ %.add, %bb.e ], [ 0, %bb.b ] ; 7 uses
  %.0445.ptr = getelementptr inbounds i8, ptr %i.m, i64 %.0445.idx ; 18 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @H5S_create(i32 noundef 1) #14 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.v = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !18
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4286, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.73) #14 ; 0 uses
  br label %.thread525
end_hunk_0
begin_hunk_1_@H5Sget_select_hyper_blocklist:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 2584
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !38
  %i.cp = load i32, ptr %i.bl, align 8, !tbaa !33
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.co, i64 %i.cr, i1 false)
  %i.cs = load ptr, ptr %i.ax, align 8, !tbaa !24
  store i32 2, ptr %i.cs, align 8, !tbaa !25
  br label %H5S__hyper_rebuild.exit.i

H5S__hyper_rebuild.exit.i:                        ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.pre.i = load ptr, ptr %i.ax, align 8, !tbaa !24 ; 2 uses
  %.pre149.i = load i32, ptr %.pre.i, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %H5S__hyper_rebuild.exit.i, %bb.u
  %i.ct = phi i32 [ %.pre149.i, %H5S__hyper_rebuild.exit.i ], [ %i.br, %bb.u ]
  %i.cu = phi ptr [ %.pre.i, %H5S__hyper_rebuild.exit.i ], [ %i.ay, %bb.u ] ; 3 uses
  %i.cv = icmp eq i32 %i.ct, 2
  br i1 %i.cv, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.cw = load i32, ptr %i.bl, align 8, !tbaa !33 ; 6 uses
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 2568
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !34
  %i.da = icmp slt i32 %i.cz, 0
  %.082.v.i = select i1 %i.da, i64 8, i64 1032
  %.082.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.082.v.i ; 6 uses
  %.not136.i = icmp eq i32 %i.cw, 0               ; 2 uses
  br i1 %.not136.i, label %.lr.ph130.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.z
  %wide.trip.count.i = zext i32 %i.cw to i64      ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.db = icmp eq i32 %i.cw, 1
  br i1 %i.db, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph130.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph130.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph130.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.lr.ph130.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod71 = trunc i32 %i.cw to i1
  call void @llvm.assume(i1 %lcmp.mod71)
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %.082.i, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !42
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.epil.init
  store i64 %i.de, ptr %i.df, align 8, !tbaa !18
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !50 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.epil.init
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !52
  %i.dk = add i64 %i.dg, -1
  %i.dl = add i64 %i.dk, %i.dj
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.epil.init
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !18
  br label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.lr.ph130.i.loopexit.unr-lcssa, %bb.z
  %.pre-phi = phi i64 [ 0, %bb.z ], [ %wide.trip.count.i, %.lr.ph130.i.loopexit.unr-lcssa ], [ %wide.trip.count.i, %.lr.ph.i.epil.preheader ] ; 4 uses
  %i.dn = zext i32 %i.cx to i64                   ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dn ; 3 uses
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %.082.i, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dn ; 4 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dn ; 4 uses
  %i.dt = shl nuw nsw i64 %.pre-phi, 3            ; 2 uses
  %i.du = icmp ne i32 %i.cx, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dw = add i32 %i.cw, -2                       ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br label %bb.aa

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %.082.i, i64 %indvars.iv.i ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !42
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store i64 %i.ea, ptr %i.eb, align 16, !tbaa !18
  %i.ec = load i64, ptr %i.dy, align 8, !tbaa !50 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  store i64 %i.ec, ptr %i.ed, align 16, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !52
  %i.eg = add i64 %i.ec, -1
  %i.eh = add i64 %i.eg, %i.ef
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  store i64 %i.eh, ptr %i.ei, align 16, !tbaa !18
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %.082.i, i64 %indvars.iv.next.i ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !42
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i
  store i64 %i.el, ptr %i.em, align 8, !tbaa !18
  %i.en = load i64, ptr %i.ej, align 8, !tbaa !50 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !52
  %i.er = add i64 %i.en, -1
  %i.es = add i64 %i.er, %i.eq
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i
  store i64 %i.es, ptr %i.et, align 8, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph130.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !156

bb.aa:                                            ; preds = %.loopexit.i, %.lr.ph130.i
  %.lcssa100122128.i = phi i64 [ %2, %.lr.ph130.i ], [ %.lcssa100.i, %.loopexit.i ] ; 3 uses
  %i.eu = phi i64 [ %1, %.lr.ph130.i ], [ %i.fs, %.loopexit.i ] ; 5 uses
  %.lcssa102126127.i = phi ptr [ %3, %.lr.ph130.i ], [ %.lcssa102.i, %.loopexit.i ] ; 3 uses
  %.not.i = icmp eq i64 %i.eu, 0
  %.promoted.pre.i = load i64, ptr %i.do, align 8, !tbaa !18 ; 4 uses
  br i1 %.not.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not89.i = icmp ult i64 %i.eu, %.promoted.pre.i
  br i1 %.not89.i, label %bb.ac, label %.thread.i

.thread.i:                                        ; preds = %bb.ab
  %i.ev = sub nuw i64 %i.eu, %.promoted.pre.i
  br label %._crit_edge.i

bb.ac:                                            ; preds = %bb.ab
  %i.ew = load i64, ptr %i.dq, align 8, !tbaa !51
  %i.ex = mul i64 %i.ew, %i.eu                    ; 2 uses
  %i.ey = load i64, ptr %i.dr, align 8, !tbaa !18
  %i.ez = add i64 %i.ey, %i.ex
  store i64 %i.ez, ptr %i.dr, align 8, !tbaa !18
  %i.fa = load i64, ptr %i.ds, align 8, !tbaa !18
  %i.fb = add i64 %i.fa, %i.ex
  store i64 %i.fb, ptr %i.ds, align 8, !tbaa !18
  %i.fc = sub nuw i64 %.promoted.pre.i, %i.eu
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.promoted.i = phi i64 [ %.promoted.pre.i, %bb.aa ], [ %i.fc, %bb.ac ] ; 2 uses
  %.not154.i = icmp eq i64 %.promoted.i, 0
  br i1 %.not154.i, label %._crit_edge.i, label %.lr.ph103.i

.lr.ph103.i:                                      ; preds = %bb.ad
  %.promoted109.i = load i64, ptr %i.dr, align 8, !tbaa !18
  %.promoted110.i = load i64, ptr %i.ds, align 8, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph103.i
  %i.fd = phi i64 [ %.promoted110.i, %.lr.ph103.i ], [ %i.fn, %bb.ae ]
  %i.fe = phi i64 [ %.promoted109.i, %.lr.ph103.i ], [ %i.fm, %bb.ae ]
  %i.ff = phi i64 [ %.promoted.i, %.lr.ph103.i ], [ %i.fo, %bb.ae ]
  %i.fg = phi i64 [ %.lcssa100122128.i, %.lr.ph103.i ], [ %i.fk, %bb.ae ]
  %i.fh = phi ptr [ %.lcssa102126127.i, %.lr.ph103.i ], [ %i.fj, %bb.ae ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.fh, ptr nonnull align 16 %i.e, i64 %i.dt, i1 false)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.pre-phi ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.fi, ptr nonnull align 16 %i.f, i64 %i.dt, i1 false)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.pre-phi ; 2 uses
  %i.fk = add i64 %i.fg, -1                       ; 3 uses
  %i.fl = load i64, ptr %i.dq, align 8, !tbaa !51 ; 2 uses
  %i.fm = add i64 %i.fl, %i.fe                    ; 2 uses
  store i64 %i.fm, ptr %i.dr, align 8, !tbaa !18
  %i.fn = add i64 %i.fl, %i.fd                    ; 2 uses
  store i64 %i.fn, ptr %i.ds, align 8, !tbaa !18
  %i.fo = add i64 %i.ff, -1                       ; 3 uses
  %i.fp = icmp ne i64 %i.fo, 0
  %i.fq = icmp ne i64 %i.fk, 0                    ; 2 uses
  %i.fr = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %i.fr, label %bb.ae, label %._crit_edge.i, !llvm.loop !157

._crit_edge.i:                                    ; preds = %bb.ae, %bb.ad, %.thread.i
  %i.fs = phi i64 [ 0, %bb.ad ], [ %i.ev, %.thread.i ], [ 0, %bb.ae ]
  %.lcssa102.i = phi ptr [ %.lcssa102126127.i, %bb.ad ], [ %.lcssa102126127.i, %.thread.i ], [ %i.fj, %bb.ae ]
  %.lcssa100.i = phi i64 [ %.lcssa100122128.i, %bb.ad ], [ %.lcssa100122128.i, %.thread.i ], [ %i.fk, %bb.ae ] ; 2 uses
  %.lcssa98.i = phi i64 [ 0, %bb.ad ], [ 0, %.thread.i ], [ %i.fo, %bb.ae ]
  %.lcssa.i = phi i1 [ true, %bb.ad ], [ true, %.thread.i ], [ %i.fq, %bb.ae ]
  store i64 %.lcssa98.i, ptr %i.do, align 8
  %or.cond.i = select i1 %i.du, i1 %.lcssa.i, i1 false
  br i1 %or.cond.i, label %bb.af, label %.loopexit93.i

bb.af:                                            ; preds = %._crit_edge.i
  %i.ft = load i64, ptr %i.dv, align 8, !tbaa !42
  store i64 %i.ft, ptr %i.do, align 8, !tbaa !18
  br i1 %i.dx, label %.loopexit93.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %bb.af, %bb.ag
  %.0113.i = phi i32 [ %i.gb, %bb.ag ], [ %i.dw, %bb.af ] ; 3 uses
  %i.fu = zext nneg i32 %.0113.i to i64           ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fu ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !18
  %i.fx = add i64 %i.fw, -1                       ; 2 uses
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !18
  %.not92.i = icmp eq i64 %i.fx, 0
  br i1 %.not92.i, label %bb.ag, label %.loopexit93.i

bb.ag:                                            ; preds = %.lr.ph115.i
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %.082.i, i64 %i.fu
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !42
  store i64 %i.ga, ptr %i.fv, align 8, !tbaa !18
  %i.gb = add nsw i32 %.0113.i, -1
  %i.gc = icmp slt i32 %.0113.i, 1
  br i1 %i.gc, label %._crit_edge131.i, label %.lr.ph115.i, !llvm.loop !158

.loopexit93.i:                                    ; preds = %.lr.ph115.i, %bb.af, %._crit_edge.i
  br i1 %.not136.i, label %.loopexit.i, label %.lr.ph120.i

.lr.ph120.i:                                      ; preds = %.loopexit93.i, %.lr.ph120.i
  %indvars.iv144.i = phi i64 [ %indvars.iv.next145.i, %.lr.ph120.i ], [ 0, %.loopexit93.i ] ; 5 uses
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %.082.i, i64 %indvars.iv144.i ; 4 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !50
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !51
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !42
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv144.i
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !18
  %i.gl = sub i64 %i.gi, %i.gk
  %i.gm = mul i64 %i.gl, %i.gg
  %i.gn = add i64 %i.gm, %i.ge                    ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv144.i
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !52
  %i.gr = add i64 %i.gq, -1
  %i.gs = add i64 %i.gr, %i.gn
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv144.i
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !18
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 2 uses
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next145.i, %.pre-phi
  br i1 %exitcond148.not.i, label %.loopexit.i, label %.lr.ph120.i, !llvm.loop !159

.loopexit.i:                                      ; preds = %.lr.ph120.i, %.loopexit93.i
  %i.gu = icmp eq i64 %.lcssa100.i, 0
  br i1 %i.gu, label %._crit_edge131.i, label %bb.aa, !llvm.loop !160

._crit_edge131.i:                                 ; preds = %.loopexit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %H5S__get_select_hyper_blocklist.exit

bb.ah:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2584
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !23
  call fastcc void @H5S__hyper_span_blocklist(ptr noundef %i.gw, ptr noundef %i.g, ptr noundef %i.h, i64 noundef 0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %H5S__get_select_hyper_blocklist.exit

H5S__get_select_hyper_blocklist.exit:             ; preds = %bb.r, %bb.t, %._crit_edge131.i, %bb.ah
  %.083.i = phi i32 [ -1, %bb.t ], [ 0, %._crit_edge131.i ], [ 0, %bb.ah ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ai

.thread38:                                        ; preds = %bb.p, %bb.n, %bb.l, %bb.j
  %i.gx = call i32 @H5CX_pop(i1 noundef zeroext true) #14 ; 0 uses
  br label %.thread32

bb.ai:                                            ; preds = %bb.q, %H5S__get_select_hyper_blocklist.exit
  %.019.ph = phi i32 [ 0, %bb.q ], [ %.083.i, %H5S__get_select_hyper_blocklist.exit ]
  %i.gy = call i32 @H5CX_pop(i1 noundef zeroext true) #14 ; 0 uses
  br label %bb.aj

.thread32:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread38
  %i.gz = call i32 @H5E_dump_api_stack() #14      ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread32
  %.0192735 = phi i32 [ -1, %.thread32 ], [ %.019.ph, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.0192735
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_hyper_add_span_element(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !13
  %i.g = tail call i32 @H5S__init_package() #14
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14
  %.pre48 = load i8, ptr @H5_libterm_g, align 1, !range !14
  %.pre49 = trunc nuw i8 %.pre to i1
  %.pre50 = trunc nuw i8 %.pre48 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !13
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !18
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !18
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_hyper_add_span_element, i32 noundef 6191, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.2) #14 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi51 = phi i1 [ %.pre50, %._crit_edge ], [ %i.e, %bb.a ]
  %.pre-phi = phi i1 [ %.pre49, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = xor i1 %.pre-phi51, true
  %i.m = select i1 %.pre-phi, i1 true, i1 %i.l
  br i1 %i.m, label %bb.e, label %.thread, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i32 %1, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.t = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !18
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_new_span_info, i32 noundef 2833, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.95) #14 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.v = shl i32 %1, 1
  %i.w = zext i32 %i.v to i64
  %i.x = tail call noalias ptr @H5FL_arr_calloc(ptr noundef nonnull @H5_hbounds_t_arr_free_list, i64 noundef %i.w) #14 ; 9 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.aa = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.ab = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_new_span_info, i32 noundef 2837, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.9) #14 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.ac = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.ad = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_hyper_add_span_element, i32 noundef 6202, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.9) #14 ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !38
  %i.ah = zext i32 %1 to i64                      ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !38
  %i.ak = shl nuw nsw i64 %i.ah, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %2, i64 %i.ak, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %2, i64 %i.ak, i1 false)
  store i32 1, ptr %i.x, align 8, !tbaa !26
  %i.al = tail call fastcc ptr @H5S__hyper_coord_to_span(i32 noundef %1, ptr noundef %2) ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr %i.al, ptr %i.am, align 8, !tbaa !59
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.ap = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.aq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_hyper_add_span_element, i32 noundef 6213, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.10) #14 ; 0 uses
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !59
  %i.as = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_hyper_sel_t_reg_free_list) #14 ; 5 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !24
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.av = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.aw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_hyper_add_span_element, i32 noundef 6220, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.11) #14 ; 0 uses
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 2584
  store ptr %i.x, ptr %i.ax, align 8, !tbaa !23
  store ptr @H5S_sel_hyper, ptr %i.n, align 8, !tbaa !47
  store i32 1, ptr %i.as, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 2568
  store i32 -1, ptr %i.ay, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 1, ptr %i.az, align 8, !tbaa !36
  br label %.thread

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 -1, ptr %i.a, align 4, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 2584
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23
  %i.bc = call fastcc i32 @H5S__hyper_add_span_element_helper(ptr noundef %i.bb, i32 noundef %1, ptr noundef %2, ptr noundef %i.a)
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.bf = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !18
  %i.bg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_hyper_add_span_element, i32 noundef 6243, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.12) #14 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !36
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.037 = phi i32 [ -1, %bb.q ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread

bb.t:                                             ; preds = %bb.l, %bb.n
  %i.bk = tail call fastcc i32 @H5S__hyper_free_span_info(ptr noundef nonnull %i.x)
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.bm = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.bn = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !18
  %i.bo = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_hyper_add_span_element, i32 noundef 6253, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.13) #14 ; 0 uses
end_hunk_1
