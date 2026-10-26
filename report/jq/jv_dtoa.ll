Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv_dtoa?download=true
inline.NumInlined: 82
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@jvp_strtod:bb.a
  %i.kc = add i32 %i.jy, 55574528
  store i32 %i.kc, ptr %i.jn, align 4, !tbaa !21
  br label %bb.cn

bb.bw:                                            ; preds = %bb.av
  %i.kd = icmp slt i32 %i.hp, 0
  br i1 %i.kd, label %bb.bx, label %bb.cn

bb.bx:                                            ; preds = %bb.bw
  %i.ke = sub nsw i32 0, %i.hp                    ; 4 uses
  %i.kf = and i32 %i.ke, 15                       ; 2 uses
  %.not541 = icmp eq i32 %i.kf, 0
  br i1 %.not541, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.kg
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !23
  %i.kj = fdiv double %i.hn, %i.ki                ; 2 uses
  store double %i.kj, ptr %3, align 8, !tbaa !21
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.promoted = phi double [ %i.kj, %bb.by ], [ %i.hn, %bb.bx ]
  %i.kk = lshr i32 %i.ke, 4                       ; 2 uses
  %.not542 = icmp eq i32 %i.kk, 0
  br i1 %.not542, label %bb.cn, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kl = icmp samesign ugt i32 %i.ke, 511
  br i1 %i.kl, label %bb.cm, label %.preheader1398

.preheader1398:                                   ; preds = %bb.ca, %bb.cc
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cc ], [ 0, %bb.ca ] ; 2 uses
  %.1478966 = phi i32 [ %i.ks, %bb.cc ], [ %i.kk, %bb.ca ] ; 2 uses
  %i.km = phi double [ %i.kr, %bb.cc ], [ %.promoted, %bb.ca ] ; 2 uses
  %i.kn = and i32 %.1478966, 1
  %.not546 = icmp eq i32 %i.kn, 0
  br i1 %.not546, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.preheader1398
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !23
  %i.kq = fmul double %i.kp, %i.km
  br label %bb.cc

bb.cc:                                            ; preds = %.preheader1398, %bb.cb
  %i.kr = phi double [ %i.km, %.preheader1398 ], [ %i.kq, %bb.cb ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ks = lshr i32 %.1478966, 1                   ; 2 uses
  %.not544 = icmp eq i32 %i.ks, 0
  br i1 %.not544, label %bb.cd, label %.preheader1398, !llvm.loop !41

bb.cd:                                            ; preds = %bb.cc
  %.not543 = icmp samesign ult i32 %i.ke, 256     ; 2 uses
  %spec.select769 = select i1 %.not543, i32 0, i32 106
  store double %i.kr, ptr %3, align 8
  %i.kt = bitcast double %i.kr to i64             ; 2 uses
  %i.ku = lshr i64 %i.kt, 32
  %i.kv = trunc nuw i64 %i.ku to i32              ; 2 uses
  %i.kw = trunc i64 %i.kt to i32
  br i1 %.not543, label %bb.cl, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ky = lshr i32 %i.kv, 20
  %i.kz = and i32 %i.ky, 2047                     ; 6 uses
  %i.la = sub nuw nsw i32 107, %i.kz
  %i.lb = icmp samesign ult i32 %i.kz, 107
  br i1 %i.lb, label %bb.cf, label %thread-pre-split

bb.cf:                                            ; preds = %bb.ce
  %i.lc = icmp samesign ult i32 %i.kz, 76
  br i1 %i.lc, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.ld = icmp samesign ult i32 %i.kz, 53
  br i1 %i.ld, label %bb.cm, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %3, align 8, !tbaa !21
  %i.le = icmp samesign ult i32 %i.kz, 55
  br i1 %i.le, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 57671680, ptr %i.kx, align 4, !tbaa !21
  br label %thread-pre-split

bb.cj:                                            ; preds = %bb.ch
  %i.lf = sub nuw nsw i32 75, %i.kz
  %i.lg = shl nsw i32 -1, %i.lf
  %i.lh = and i32 %i.lg, %i.kv
  store i32 %i.lh, ptr %i.kx, align 4, !tbaa !21
  br label %thread-pre-split

bb.ck:                                            ; preds = %bb.cf
  %i.li = shl nsw i32 -1, %i.la
  %i.lj = and i32 %i.li, %i.kw
  store i32 %i.lj, ptr %3, align 8, !tbaa !21
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ce, %bb.ci, %bb.cj, %bb.ck
  %.pr = load double, ptr %3, align 8, !tbaa !21
  br label %bb.cl

bb.cl:                                            ; preds = %thread-pre-split, %bb.cd
  %i.lk = phi double [ %.pr, %thread-pre-split ], [ %i.kr, %bb.cd ]
  %i.ll = fcmp une double %i.lk, 0.000000e+00
  br i1 %i.ll, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %sulp.exit646, %bb.eq, %bb.ix, %bb.fi, %bb.cl, %bb.cg, %bb.ca
  %.2405 = phi ptr [ %.4407, %bb.ix ], [ %.4407, %bb.eq ], [ null, %bb.cl ], [ %.4407, %bb.fi ], [ null, %bb.ca ], [ null, %bb.cg ], [ %.4407, %sulp.exit646 ]
  %.2400 = phi ptr [ %.4402, %bb.ix ], [ %.4402, %bb.eq ], [ null, %bb.cl ], [ %.4402, %bb.fi ], [ null, %bb.ca ], [ null, %bb.cg ], [ %.4402, %sulp.exit646 ]
  %.2397 = phi ptr [ null, %bb.ix ], [ %.231.lcssa.i, %bb.eq ], [ null, %bb.cl ], [ %.231.lcssa.i, %bb.fi ], [ null, %bb.ca ], [ null, %bb.cg ], [ %.231.lcssa.i, %sulp.exit646 ]
  %.2392 = phi ptr [ %.4394, %bb.ix ], [ %.4394, %bb.eq ], [ null, %bb.cl ], [ %.4394, %bb.fi ], [ null, %bb.ca ], [ null, %bb.cg ], [ %.4394, %sulp.exit646 ]
  %.2 = phi ptr [ %.5, %bb.ix ], [ %.3, %bb.eq ], [ null, %bb.cl ], [ %i.ti, %bb.fi ], [ null, %bb.ca ], [ null, %bb.cg ], [ %i.ti, %sulp.exit646 ]
  store double 0.000000e+00, ptr %3, align 8, !tbaa !21
  br label %bb.ba

bb.cn:                                            ; preds = %bb.bw, %bb.cl, %bb.bz, %bb.ay, %bb.bv, %bb.bu
  %.sroa.47706.1 = phi i32 [ 0, %bb.ay ], [ 0, %bb.bu ], [ 0, %bb.bv ], [ 0, %bb.bz ], [ %spec.select769, %bb.cl ], [ 0, %bb.bw ] ; 5 uses
  %i.lm = sub nsw i32 %.5460, %.4441              ; 6 uses
  %i.ln = icmp sgt i32 %.5460, 40
  br i1 %i.ln, label %bb.co, label %.loopexit785

bb.co:                                            ; preds = %bb.cn
  %i.lo = icmp slt i32 %spec.select577, 18
  %i.lp = add nsw i32 %.sroa.12.0, 18
  %.2464 = select i1 %i.lo, i32 %i.lp, i32 18
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %bb.co
  %.1470 = phi i32 [ 18, %bb.co ], [ %i.lt, %bb.cp ] ; 12 uses
  %.3465 = phi i32 [ %.2464, %bb.co ], [ %.4466, %bb.cp ] ; 3 uses
  %.not549 = icmp sgt i32 %.3465, %.sroa.6.2
  %spec.select578 = tail call i32 @llvm.smin.i32(i32 %.3465, i32 %.sroa.0.2)
  %.4466.in = select i1 %.not549, i32 %.3465, i32 %spec.select578
  %.4466 = add nsw i32 %.4466.in, -1              ; 2 uses
  %i.lq = sext i32 %.4466 to i64
  %i.lr = getelementptr inbounds i8, ptr %.2433, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !21
  %.not551 = icmp eq i8 %i.ls, 48
  %i.lt = add nsw i32 %.1470, -1
  br i1 %.not551, label %bb.cp, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lu = sub nsw i32 %.5460, %.1470
  %i.lv = add nsw i32 %i.lu, %i.gc                ; 4 uses
  %spec.select579 = tail call i32 @llvm.smin.i32(i32 %spec.select577, i32 %.1470) ; 9 uses
  %i.lw = icmp slt i32 %.1470, 9
  br i1 %i.lw, label %.preheader786, label %.loopexit785

.preheader786:                                    ; preds = %bb.cq
  %i.lx = icmp sgt i32 %spec.select579, 0
  br i1 %i.lx, label %.lr.ph979.preheader, label %.preheader784

.lr.ph979.preheader:                              ; preds = %.preheader786
  %wide.trip.count = zext nneg i32 %spec.select579 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ly = icmp ult i32 %spec.select579, 4
  br i1 %i.ly, label %.lr.ph979.epil.preheader, label %.lr.ph979.preheader.new

.lr.ph979.preheader.new:                          ; preds = %.lr.ph979.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph979

.preheader784.loopexit.unr-lcssa:                 ; preds = %.lr.ph979
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader784, label %.lr.ph979.epil.preheader

.lr.ph979.epil.preheader:                         ; preds = %.preheader784.loopexit.unr-lcssa, %.lr.ph979.preheader
  %indvars.iv1112.epil.init = phi i64 [ 0, %.lr.ph979.preheader ], [ %indvars.iv.next1113.3, %.preheader784.loopexit.unr-lcssa ]
  %.9978.epil.init = phi i32 [ 0, %.lr.ph979.preheader ], [ %i.nr, %.preheader784.loopexit.unr-lcssa ]
  %lcmp.mod1635 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1635)
  br label %.lr.ph979.epil

.lr.ph979.epil:                                   ; preds = %.lr.ph979.epil, %.lr.ph979.epil.preheader
  %indvars.iv1112.epil = phi i64 [ %indvars.iv1112.epil.init, %.lr.ph979.epil.preheader ], [ %indvars.iv.next1113.epil, %.lr.ph979.epil ] ; 2 uses
  %.9978.epil = phi i32 [ %.9978.epil.init, %.lr.ph979.epil.preheader ], [ %i.me, %.lr.ph979.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph979.epil.preheader ], [ %epil.iter.next, %.lr.ph979.epil ]
  %i.lz = mul i32 %.9978.epil, 10
  %i.ma = getelementptr inbounds nuw i8, ptr %.2433, i64 %indvars.iv1112.epil
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !21
  %i.mc = sext i8 %i.mb to i32
  %i.md = add i32 %i.lz, -48
  %i.me = add i32 %i.md, %i.mc                    ; 2 uses
  %indvars.iv.next1113.epil = add nuw nsw i64 %indvars.iv1112.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader784, label %.lr.ph979.epil, !llvm.loop !42

.preheader784:                                    ; preds = %.preheader784.loopexit.unr-lcssa, %.lr.ph979.epil, %.preheader786
  %.2471.lcssa = phi i32 [ 0, %.preheader786 ], [ %spec.select579, %.lr.ph979.epil ], [ %spec.select579, %.preheader784.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa = phi i32 [ 0, %.preheader786 ], [ %i.nr, %.preheader784.loopexit.unr-lcssa ], [ %i.me, %.lr.ph979.epil ] ; 3 uses
  %i.mf = icmp slt i32 %.2471.lcssa, %.1470
  br i1 %i.mf, label %.lr.ph985.preheader, label %._crit_edge.thread.i

.lr.ph985.preheader:                              ; preds = %.preheader784
  %i.mg = sext i32 %.sroa.6.2 to i64              ; 2 uses
  %i.mh = sub nsw i32 %.1470, %.2471.lcssa
  %xtraiter1636 = and i32 %i.mh, 3                ; 2 uses
  %lcmp.mod1637.not = icmp eq i32 %xtraiter1636, 0
  br i1 %lcmp.mod1637.not, label %.lr.ph985.prol.loopexit, label %.lr.ph985.prol

.lr.ph985.prol:                                   ; preds = %.lr.ph985.preheader, %.lr.ph985.prol
  %indvars.iv1117.prol = phi i64 [ %indvars.iv.next1118.prol, %.lr.ph985.prol ], [ %i.mg, %.lr.ph985.preheader ] ; 2 uses
  %.10984.prol = phi i32 [ %i.mn, %.lr.ph985.prol ], [ %.9.lcssa, %.lr.ph985.preheader ]
  %.3472982.prol = phi i32 [ %i.mo, %.lr.ph985.prol ], [ %.2471.lcssa, %.lr.ph985.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph985.prol ], [ 0, %.lr.ph985.preheader ]
  %i.mi = mul i32 %.10984.prol, 10
  %indvars.iv.next1118.prol = add nsw i64 %indvars.iv1117.prol, 1 ; 2 uses
  %i.mj = getelementptr inbounds i8, ptr %.2433, i64 %indvars.iv1117.prol
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !21
  %i.ml = sext i8 %i.mk to i32
  %i.mm = add i32 %i.mi, -48
  %i.mn = add i32 %i.mm, %i.ml                    ; 3 uses
  %i.mo = add nuw nsw i32 %.3472982.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1636
  br i1 %prol.iter.cmp.not, label %.lr.ph985.prol.loopexit, label %.lr.ph985.prol, !llvm.loop !43

.lr.ph985.prol.loopexit:                          ; preds = %.lr.ph985.prol, %.lr.ph985.preheader
  %.lcssa1612.unr = phi i32 [ poison, %.lr.ph985.preheader ], [ %i.mn, %.lr.ph985.prol ]
  %indvars.iv1117.unr = phi i64 [ %i.mg, %.lr.ph985.preheader ], [ %indvars.iv.next1118.prol, %.lr.ph985.prol ]
  %.10984.unr = phi i32 [ %.9.lcssa, %.lr.ph985.preheader ], [ %i.mn, %.lr.ph985.prol ]
  %.3472982.unr = phi i32 [ %.2471.lcssa, %.lr.ph985.preheader ], [ %i.mo, %.lr.ph985.prol ]
  %i.mp = sub i32 %.2471.lcssa, %.1470
  %i.mq = icmp ugt i32 %i.mp, -4
  br i1 %i.mq, label %._crit_edge.thread.i, label %.lr.ph985

.lr.ph979:                                        ; preds = %.lr.ph979, %.lr.ph979.preheader.new
  %indvars.iv1112 = phi i64 [ 0, %.lr.ph979.preheader.new ], [ %indvars.iv.next1113.3, %.lr.ph979 ] ; 5 uses
  %.9978 = phi i32 [ 0, %.lr.ph979.preheader.new ], [ %i.nr, %.lr.ph979 ]
  %niter = phi i64 [ 0, %.lr.ph979.preheader.new ], [ %niter.next.3, %.lr.ph979 ]
  %i.mr = mul i32 %.9978, 10
  %i.ms = getelementptr inbounds nuw i8, ptr %.2433, i64 %indvars.iv1112
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !21
  %i.mu = sext i8 %i.mt to i32
  %i.mv = add i32 %i.mr, -48
  %i.mw = add i32 %i.mv, %i.mu
  %i.mx = mul i32 %i.mw, 10
  %i.my = getelementptr inbounds nuw i8, ptr %.2433, i64 %indvars.iv1112
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !21
  %i.nb = sext i8 %i.na to i32
  %i.nc = add i32 %i.mx, -48
  %i.nd = add i32 %i.nc, %i.nb
  %i.ne = mul i32 %i.nd, 10
  %i.nf = getelementptr inbounds nuw i8, ptr %.2433, i64 %indvars.iv1112
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 2
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !21
  %i.ni = sext i8 %i.nh to i32
  %i.nj = add i32 %i.ne, -48
  %i.nk = add i32 %i.nj, %i.ni
  %i.nl = mul i32 %i.nk, 10
  %i.nm = getelementptr inbounds nuw i8, ptr %.2433, i64 %indvars.iv1112
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 3
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !21
  %i.np = sext i8 %i.no to i32
  %i.nq = add i32 %i.nl, -48
  %i.nr = add i32 %i.nq, %i.np                    ; 3 uses
  %indvars.iv.next1113.3 = add nuw nsw i64 %indvars.iv1112, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader784.loopexit.unr-lcssa, label %.lr.ph979, !llvm.loop !44

.lr.ph985:                                        ; preds = %.lr.ph985.prol.loopexit, %.lr.ph985
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118.3, %.lr.ph985 ], [ %indvars.iv1117.unr, %.lr.ph985.prol.loopexit ] ; 5 uses
  %.10984 = phi i32 [ %i.os, %.lr.ph985 ], [ %.10984.unr, %.lr.ph985.prol.loopexit ]
  %.3472982 = phi i32 [ %i.ot, %.lr.ph985 ], [ %.3472982.unr, %.lr.ph985.prol.loopexit ]
  %i.ns = mul i32 %.10984, 10
  %i.nt = getelementptr inbounds i8, ptr %.2433, i64 %indvars.iv1117
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !21
  %i.nv = sext i8 %i.nu to i32
  %i.nw = add i32 %i.ns, -48
  %i.nx = add i32 %i.nw, %i.nv
  %i.ny = mul i32 %i.nx, 10
  %i.nz = getelementptr i8, ptr %.2433, i64 %indvars.iv1117
  %i.oa = getelementptr i8, ptr %i.nz, i64 1
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !21
  %i.oc = sext i8 %i.ob to i32
  %i.od = add i32 %i.ny, -48
  %i.oe = add i32 %i.od, %i.oc
  %i.of = mul i32 %i.oe, 10
  %i.og = getelementptr i8, ptr %.2433, i64 %indvars.iv1117
  %i.oh = getelementptr i8, ptr %i.og, i64 2
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !21
  %i.oj = sext i8 %i.oi to i32
  %i.ok = add i32 %i.of, -48
  %i.ol = add i32 %i.ok, %i.oj
  %i.om = mul i32 %i.ol, 10
  %indvars.iv.next1118.3 = add nsw i64 %indvars.iv1117, 4
  %i.on = getelementptr i8, ptr %.2433, i64 %indvars.iv1117
  %i.oo = getelementptr i8, ptr %i.on, i64 3
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !21
  %i.oq = sext i8 %i.op to i32
  %i.or = add i32 %i.om, -48
  %i.os = add i32 %i.or, %i.oq                    ; 2 uses
  %i.ot = add nuw nsw i32 %.3472982, 4            ; 2 uses
  %exitcond1121.not.3 = icmp eq i32 %i.ot, %.1470
  br i1 %exitcond1121.not.3, label %._crit_edge.thread.i, label %.lr.ph985, !llvm.loop !45

.loopexit785:                                     ; preds = %bb.cq, %bb.cn
  %.2481 = phi i32 [ %i.gc, %bb.cn ], [ %i.lv, %bb.cq ] ; 3 uses
  %.6461 = phi i32 [ %.5460, %bb.cn ], [ %.1470, %bb.cq ] ; 5 uses
  %.2454 = phi i32 [ %spec.select577, %bb.cn ], [ %spec.select579, %bb.cq ] ; 3 uses
  %i.ou = add nuw nsw i32 %.6461, 8
  %i.ov = sdiv i32 %i.ou, 9
  %i.ow = icmp sgt i32 %.6461, 9
  br i1 %i.ow, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.loopexit785, %.lr.ph.i
  %.040.i = phi i32 [ %i.ox, %.lr.ph.i ], [ 1, %.loopexit785 ]
  %.02739.i = phi i32 [ %i.oy, %.lr.ph.i ], [ 0, %.loopexit785 ] ; 2 uses
  %i.ox = shl i32 %.040.i, 1                      ; 2 uses
  %i.oy = add nuw nsw i32 %.02739.i, 1            ; 3 uses
  %i.oz = icmp sgt i32 %i.ov, %i.ox
  br i1 %i.oz, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.pa = icmp samesign ult i32 %.02739.i, 7
  br i1 %i.pa, label %._crit_edge.thread.i, label %bb.cs

._crit_edge.thread.i:                             ; preds = %.lr.ph985.prol.loopexit, %.lr.ph985, %.preheader784, %._crit_edge.i, %.loopexit785
  %.111269 = phi i32 [ %.8422, %._crit_edge.i ], [ %.8422, %.loopexit785 ], [ %.9.lcssa, %.preheader784 ], [ %.lcssa1612.unr, %.lr.ph985.prol.loopexit ], [ %i.os, %.lr.ph985 ] ; 2 uses
  %.24541266 = phi i32 [ %.2454, %._crit_edge.i ], [ %.2454, %.loopexit785 ], [ %spec.select579, %.preheader784 ], [ %spec.select579, %.lr.ph985 ], [ %spec.select579, %.lr.ph985.prol.loopexit ] ; 2 uses
  %.64611263 = phi i32 [ %.6461, %._crit_edge.i ], [ %.6461, %.loopexit785 ], [ %.1470, %.preheader784 ], [ %.1470, %.lr.ph985 ], [ %.1470, %.lr.ph985.prol.loopexit ] ; 2 uses
  %.24811260 = phi i32 [ %.2481, %._crit_edge.i ], [ %.2481, %.loopexit785 ], [ %i.lv, %.preheader784 ], [ %i.lv, %.lr.ph985 ], [ %i.lv, %.lr.ph985.prol.loopexit ] ; 2 uses
  %.027.lcssa57.i = phi i32 [ %i.oy, %._crit_edge.i ], [ 0, %.loopexit785 ], [ 0, %.preheader784 ], [ 0, %.lr.ph985 ], [ 0, %.lr.ph985.prol.loopexit ] ; 2 uses
  %i.pb = zext nneg i32 %.027.lcssa57.i to i64
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.pb ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.pd, null
  br i1 %.not.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge.thread.i
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !18
  store ptr %i.pe, ptr %i.pc, align 8, !tbaa !16
  br label %Balloc.exit.i

bb.cs:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.111268 = phi i32 [ %.111269, %._crit_edge.thread.i ], [ %.8422, %._crit_edge.i ]
  %.24541265 = phi i32 [ %.24541266, %._crit_edge.thread.i ], [ %.2454, %._crit_edge.i ]
  %.64611262 = phi i32 [ %.64611263, %._crit_edge.thread.i ], [ %.6461, %._crit_edge.i ]
  %.24811259 = phi i32 [ %.24811260, %._crit_edge.thread.i ], [ %.2481, %._crit_edge.i ]
  %.027.lcssa56.i = phi i32 [ %.027.lcssa57.i, %._crit_edge.thread.i ], [ %i.oy, %._crit_edge.i ] ; 2 uses
  %i.pf = shl nuw i32 1, %.027.lcssa56.i          ; 2 uses
  %i.pg = add nsw i32 %i.pf, -1
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = shl nuw nsw i64 %i.ph, 2
  %i.pj = add nuw nsw i64 %i.pi, 32
  %i.pk = tail call ptr @jv_mem_alloc(i64 noundef %i.pj) #10 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store i32 %.027.lcssa56.i, ptr %i.pl, align 8, !tbaa !19
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  store i32 %i.pf, ptr %i.pm, align 4, !tbaa !25
  br label %Balloc.exit.i

Balloc.exit.i:                                    ; preds = %bb.cs, %bb.cr
  %.111267 = phi i32 [ %.111269, %bb.cr ], [ %.111268, %bb.cs ]
  %.24541264 = phi i32 [ %.24541266, %bb.cr ], [ %.24541265, %bb.cs ] ; 3 uses
  %.64611261 = phi i32 [ %.64611263, %bb.cr ], [ %.64611262, %bb.cs ] ; 4 uses
  %.24811258 = phi i32 [ %.24811260, %bb.cr ], [ %.24811259, %bb.cs ] ; 3 uses
  %.0.i.i = phi ptr [ %i.pd, %bb.cr ], [ %i.pk, %bb.cs ] ; 5 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store i32 0, ptr %i.po, align 8, !tbaa !26
  %i.pp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store i32 %.111267, ptr %i.pp, align 8, !tbaa !27
  store i32 1, ptr %i.pn, align 4, !tbaa !28
  %i.pq = icmp sgt i32 %.24541264, 9
  br i1 %i.pq, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %Balloc.exit.i
  %i.pr = getelementptr inbounds nuw i8, ptr %.2433, i64 9
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %.032.i = phi ptr [ %i.pr, %bb.ct ], [ %i.ps, %bb.cu ] ; 2 uses
  %.029.i = phi ptr [ %.0.i.i, %bb.ct ], [ %i.pw, %bb.cu ]
  %.028.i = phi i32 [ 9, %bb.ct ], [ %i.px, %bb.cu ]
  %i.ps = getelementptr inbounds nuw i8, ptr %.032.i, i64 1 ; 2 uses
  %i.pt = load i8, ptr %.032.i, align 1, !tbaa !21
  %i.pu = sext i8 %i.pt to i32
  %i.pv = add nsw i32 %i.pu, -48
  %i.pw = tail call fastcc ptr @multadd(ptr noundef %0, ptr noundef %.029.i, i32 noundef 10, i32 noundef %i.pv) ; 2 uses
  %i.px = add nuw nsw i32 %.028.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.px, %.24541264
  br i1 %exitcond.not.i, label %bb.cv, label %bb.cu, !llvm.loop !47

bb.cv:                                            ; preds = %bb.cu
  %i.py = sext i32 %.sroa.12.0 to i64
  %i.pz = getelementptr inbounds i8, ptr %i.ps, i64 %i.py
  br label %bb.cx

bb.cw:                                            ; preds = %Balloc.exit.i
  %i.qa = sext i32 %.sroa.12.0 to i64
  %i.qb = getelementptr i8, ptr %.2433, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 9
  br label %bb.cx
end_hunk_0
begin_hunk_1_@jvp_strtod:bb.a
  br i1 %exitcond52.not.i, label %s2b.exit, label %.lr.ph45.i, !llvm.loop !48

s2b.exit:                                         ; preds = %.lr.ph45.i, %bb.cx
  %.231.lcssa.i = phi ptr [ %.130.i, %bb.cx ], [ %i.qi, %.lr.ph45.i ] ; 12 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.231.lcssa.i, i64 8 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.231.lcssa.i, i64 16
  %i.qm = getelementptr inbounds nuw i8, ptr %.231.lcssa.i, i64 20
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.qo = icmp sgt i32 %.24811258, -1             ; 2 uses
  %i.qp = sub nsw i32 0, %.24811258
  %.0494 = select i1 %i.qo, i32 0, i32 %i.qp      ; 3 uses
  %.0490 = select i1 %i.qo, i32 %.24811258, i32 0 ; 3 uses
  %.1492 = add i32 %.0490, %.sroa.47706.1
  %.not552 = icmp eq i32 %.0494, 0
  %i.qq = icmp sgt i32 %.0490, 0
  %i.qr = icmp sgt i32 %i.lm, %.64611261          ; 6 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 14 uses
  %i.qt = icmp ne i32 %.sroa.47706.1, 0           ; 9 uses
  %i.qu = icmp eq i32 %i.lm, %.64611261
  %.not1129 = xor i1 %i.qt, true
  %or.cond44.not774 = and i1 %i.qu, %.not1129
  br label %Bfree.exit662

Bfree.exit662:                                    ; preds = %Bfree.exit662.backedge, %s2b.exit
  %i.qv = load i32, ptr %i.qk, align 8, !tbaa !19 ; 4 uses
  %i.qw = icmp slt i32 %i.qv, 8
  br i1 %i.qw, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %Bfree.exit662
  %i.qx = sext i32 %i.qv to i64
  %i.qy = getelementptr inbounds [8 x i8], ptr %0, i64 %i.qx ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !16 ; 3 uses
  %.not.i619 = icmp eq ptr %i.qz, null
  br i1 %.not.i619, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !18
  store ptr %i.ra, ptr %i.qy, align 8, !tbaa !16
  br label %Balloc.exit

bb.da:                                            ; preds = %bb.cy, %Bfree.exit662
  %i.rb = shl nuw i32 1, %i.qv                    ; 2 uses
  %i.rc = add nsw i32 %i.rb, -1
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = shl nuw nsw i64 %i.rd, 2
  %i.rf = add nuw nsw i64 %i.re, 32
  %i.rg = tail call ptr @jv_mem_alloc(i64 noundef %i.rf) #10 ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store i32 %i.qv, ptr %i.rh, align 8, !tbaa !19
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 12
  store i32 %i.rb, ptr %i.ri, align 4, !tbaa !25
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.cz, %bb.da
  %.0.i618 = phi ptr [ %i.qz, %bb.cz ], [ %i.rg, %bb.da ] ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.i618, i64 20
  store i32 0, ptr %i.rj, align 4, !tbaa !28
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.i618, i64 16 ; 2 uses
  store i32 0, ptr %i.rk, align 8, !tbaa !26
  %i.rl = load i32, ptr %i.qm, align 4, !tbaa !28
  %i.rm = sext i32 %i.rl to i64
  %i.rn = shl nsw i64 %i.rm, 2
  %i.ro = add nsw i64 %i.rn, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rk, ptr nonnull align 8 %i.ql, i64 %i.ro, i1 false)
  %i.rp = call fastcc ptr @d2b(ptr noundef %0, ptr noundef %3, ptr noundef %i.e, ptr noundef %i.f) ; 7 uses
  %i.rq = load ptr, ptr %i.qn, align 8, !tbaa !16 ; 3 uses
  %.not.i.i620 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i620, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %Balloc.exit
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !18
  store ptr %i.rr, ptr %i.qn, align 8, !tbaa !16
  br label %i2b.exit

bb.dc:                                            ; preds = %Balloc.exit
  %i.rs = tail call ptr @jv_mem_alloc(i64 noundef 36) #10 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store i32 1, ptr %i.rt, align 8, !tbaa !19
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 12
  store i32 2, ptr %i.ru, align 4, !tbaa !25
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.db, %bb.dc
  %.0.i.i622 = phi ptr [ %i.rq, %bb.db ], [ %i.rs, %bb.dc ] ; 5 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.i.i622, i64 20
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.i.i622, i64 16
  store i32 0, ptr %i.rw, align 8, !tbaa !26
  %i.rx = getelementptr inbounds nuw i8, ptr %.0.i.i622, i64 24
  store i32 1, ptr %i.rx, align 8, !tbaa !27
  store i32 1, ptr %i.rv, align 4, !tbaa !28
  %i.ry = load i32, ptr %i.e, align 4, !tbaa !27  ; 4 uses
  %i.rz = icmp sgt i32 %i.ry, -1                  ; 2 uses
  %i.sa = select i1 %i.rz, i32 %i.ry, i32 0
  %.1496 = add nuw nsw i32 %i.sa, %.0494          ; 3 uses
  %i.sb = select i1 %i.rz, i32 0, i32 %i.ry
  %i.sc = sub nsw i32 %i.ry, %.sroa.47706.1
  %i.sd = load i32, ptr %i.f, align 4, !tbaa !27  ; 2 uses
  %i.se = add nsw i32 %i.sc, %i.sd                ; 5 uses
  %i.sf = sub nsw i32 54, %i.sd                   ; 2 uses
  %i.sg = icmp slt i32 %i.se, -1021
  br i1 %i.sg, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %i2b.exit
  %i.sh = sub nuw nsw i32 -1021, %i.se            ; 2 uses
  %i.si = sub nsw i32 %i.sf, %i.sh                ; 3 uses
  %i.sj = icmp samesign ugt i32 %i.se, -1053
  br i1 %i.sj, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.sk = shl nuw i32 1, %i.sh
  br label %bb.dh

bb.df:                                            ; preds = %bb.dd
  %i.sl = icmp samesign ugt i32 %i.se, -1073
  br i1 %i.sl, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.sm = sub nuw nsw i32 -1053, %i.se
  %i.sn = shl nuw nsw i32 1, %i.sm
  br label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.de, %bb.dg, %i2b.exit
  %.6468 = phi i32 [ %i.si, %bb.de ], [ %i.si, %bb.dg ], [ %i.sf, %i2b.exit ], [ %i.si, %bb.df ] ; 2 uses
  %.0388 = phi i32 [ %i.sk, %bb.de ], [ 1, %bb.dg ], [ 1, %i2b.exit ], [ 1, %bb.df ]
  %.0387 = phi i32 [ 0, %bb.de ], [ %i.sn, %bb.dg ], [ 0, %i2b.exit ], [ 2146435072, %bb.df ] ; 2 uses
  %i.so = add nsw i32 %.6468, %.1496              ; 2 uses
  %i.sp = sub i32 %.1492, %i.sb
  %i.sq = add i32 %i.sp, %.6468                   ; 2 uses
  %i.sr = tail call i32 @llvm.smin.i32(i32 %i.so, i32 %i.sq)
  %spec.select580 = tail call i32 @llvm.smin.i32(i32 %i.sr, i32 %.1496)
  %i.ss = tail call i32 @llvm.smax.i32(i32 %spec.select580, i32 0) ; 3 uses
  %.2497 = sub nsw i32 %i.so, %i.ss               ; 2 uses
  %.2493 = sub nsw i32 %i.sq, %i.ss               ; 2 uses
  %.0489 = sub nsw i32 %.1496, %i.ss              ; 2 uses
  br i1 %.not552, label %Bfree.exit624, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.st = tail call fastcc ptr @pow5mult(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i622, i32 noundef %.0494) ; 4 uses
  %i.su = tail call fastcc ptr @mult(ptr noundef nonnull %0, ptr noundef %i.st, ptr noundef %i.rp) ; 3 uses
  %.not.i623 = icmp eq ptr %i.rp, null
  br i1 %.not.i623, label %Bfree.exit624, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.sv = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !19 ; 2 uses
  %i.sx = icmp sgt i32 %i.sw, 7
  br i1 %i.sx, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  tail call void @jv_mem_free(ptr noundef nonnull %i.rp) #10
  br label %Bfree.exit624

bb.dl:                                            ; preds = %bb.dj
  %i.sy = sext i32 %i.sw to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.sy ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !16
  store ptr %i.ta, ptr %i.rp, align 8, !tbaa !18
  store ptr %i.rp, ptr %i.sz, align 8, !tbaa !16
  br label %Bfree.exit624

Bfree.exit624:                                    ; preds = %bb.dl, %bb.dk, %bb.di, %bb.dh
  %.3406 = phi ptr [ %i.rp, %bb.dh ], [ %i.su, %bb.di ], [ %i.su, %bb.dk ], [ %i.su, %bb.dl ] ; 2 uses
  %.3393 = phi ptr [ %.0.i.i622, %bb.dh ], [ %i.st, %bb.di ], [ %i.st, %bb.dk ], [ %i.st, %bb.dl ] ; 2 uses
  %i.tb = icmp sgt i32 %.2497, 0
  br i1 %i.tb, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %Bfree.exit624
  %i.tc = tail call fastcc ptr @lshift(ptr noundef nonnull %0, ptr noundef %.3406, i32 noundef %.2497)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %Bfree.exit624
  %.4407 = phi ptr [ %i.tc, %bb.dm ], [ %.3406, %Bfree.exit624 ] ; 18 uses
  br i1 %i.qq, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.td = tail call fastcc ptr @pow5mult(ptr noundef nonnull %0, ptr noundef nonnull %.0.i618, i32 noundef %.0490)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.3401 = phi ptr [ %i.td, %bb.do ], [ %.0.i618, %bb.dn ] ; 2 uses
  %i.te = icmp sgt i32 %.2493, 0
  br i1 %i.te, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.tf = tail call fastcc ptr @lshift(ptr noundef nonnull %0, ptr noundef %.3401, i32 noundef %.2493)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.4402 = phi ptr [ %i.tf, %bb.dq ], [ %.3401, %bb.dp ] ; 18 uses
  %i.tg = icmp sgt i32 %.0489, 0
  br i1 %i.tg, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.th = tail call fastcc ptr @lshift(ptr noundef nonnull %0, ptr noundef %.3393, i32 noundef %.0489)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.4394 = phi ptr [ %i.th, %bb.ds ], [ %.3393, %bb.dr ] ; 21 uses
  %i.ti = tail call fastcc ptr @diff(ptr noundef nonnull %0, ptr noundef %.4407, ptr noundef %.4402) ; 27 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16 ; 2 uses
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !26 ; 15 uses
  store i32 0, ptr %i.tj, align 8, !tbaa !26
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 20
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !28 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.4394, i64 20 ; 3 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !28 ; 2 uses
  %i.tp = sub nsw i32 %i.tm, %i.to                ; 2 uses
  %.not.i625 = icmp eq i32 %i.tp, 0
  br i1 %.not.i625, label %bb.du, label %cmp.exit

bb.du:                                            ; preds = %bb.dt
  %i.tq = sext i32 %i.to to i64                   ; 2 uses
  %.idx.i = shl nsw i64 %i.tq, 2
  %.add.i = add nsw i64 %.idx.i, 24
  %i.tr = getelementptr inbounds nuw i8, ptr %.4394, i64 24
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.tq
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dx, %bb.du
  %.017.idx.i = phi i64 [ %.add.i, %bb.du ], [ %.017.add.i, %bb.dx ] ; 2 uses
  %.0.i626 = phi ptr [ %i.ts, %bb.du ], [ %i.tu, %bb.dx ]
  %.017.add.i = add nsw i64 %.017.idx.i, -4       ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.ti, i64 %.017.add.i
  %i.tt = load i32, ptr %.ptr.i, align 4, !tbaa !27 ; 2 uses
  %i.tu = getelementptr inbounds i8, ptr %.0.i626, i64 -4 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !27 ; 2 uses
  %.not23.i = icmp eq i32 %i.tt, %i.tv
  br i1 %.not23.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tw = icmp ult i32 %i.tt, %i.tv
  %i.tx = select i1 %i.tw, i32 -1, i32 1
  br label %cmp.exit

bb.dx:                                            ; preds = %bb.dv
  %.not24.i = icmp sgt i64 %.017.idx.i, 28
  br i1 %.not24.i, label %bb.dv, label %cmp.exit.thread

cmp.exit:                                         ; preds = %bb.dt, %bb.dw
  %.018.i = phi i32 [ %i.tp, %bb.dt ], [ %i.tx, %bb.dw ] ; 2 uses
  %i.ty = icmp slt i32 %.018.i, 1
  %or.cond17 = and i1 %i.qr, %i.ty
  br i1 %or.cond17, label %bb.dy, label %bb.dz

cmp.exit.thread:                                  ; preds = %bb.dx
  br i1 %i.qr, label %bb.dy, label %bb.eh

bb.dy:                                            ; preds = %cmp.exit.thread, %cmp.exit
  %.not553 = icmp eq i32 %i.tk, 0
  br i1 %.not553, label %.thread762, label %cmp.exit637.thread

bb.dz:                                            ; preds = %cmp.exit
  %i.tz = icmp slt i32 %.018.i, 0
  br i1 %i.tz, label %.thread762, label %bb.fb

.thread762:                                       ; preds = %bb.dy, %bb.dz
  %i.ua = icmp ne i32 %i.tk, 0
  %i.ub = load i32, ptr %3, align 8
  %i.uc = icmp ne i32 %i.ub, 0
  %or.cond20 = select i1 %i.ua, i1 true, i1 %i.uc
  br i1 %or.cond20, label %cmp.exit637.thread, label %bb.ea

bb.ea:                                            ; preds = %.thread762
  %i.ud = load i32, ptr %i.qs, align 4, !tbaa !21 ; 4 uses
  %i.ue = and i32 %i.ud, 1048575
  %.not566 = icmp ne i32 %i.ue, 0
  %i.uf = and i32 %i.ud, 2146435072
  %i.ug = icmp samesign ult i32 %i.uf, 112197633
  %or.cond582 = select i1 %.not566, i1 true, i1 %i.ug
  br i1 %or.cond582, label %cmp.exit637.thread, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ti, i64 24
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !27
  %.not567 = icmp eq i32 %i.ui, 0
  %i.uj = icmp slt i32 %i.tm, 2
  %or.cond770 = and i1 %i.uj, %.not567
  br i1 %or.cond770, label %cmp.exit637.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.uk = tail call fastcc ptr @lshift(ptr noundef %0, ptr noundef nonnull %i.ti, i32 noundef 1) ; 7 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 20
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !28 ; 3 uses
  %i.un = load i32, ptr %i.tn, align 4, !tbaa !28 ; 2 uses
  %.not.i627 = icmp eq i32 %i.um, %i.un
  br i1 %.not.i627, label %bb.ed, label %cmp.exit637

bb.ed:                                            ; preds = %bb.ec
  %i.uo = sext i32 %i.um to i64                   ; 2 uses
  %.idx.i629 = shl nsw i64 %i.uo, 2
  %.add.i630 = add nsw i64 %.idx.i629, 24
  %i.up = getelementptr inbounds nuw i8, ptr %.4394, i64 24
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.uo
  br label %bb.ee

bb.ee:                                            ; preds = %bb.eg, %bb.ed
  %.017.idx.i631 = phi i64 [ %.add.i630, %bb.ed ], [ %.017.add.i633, %bb.eg ] ; 2 uses
  %.0.i632 = phi ptr [ %i.uq, %bb.ed ], [ %i.us, %bb.eg ]
  %.017.add.i633 = add nsw i64 %.017.idx.i631, -4 ; 2 uses
  %.ptr.i634 = getelementptr inbounds i8, ptr %i.uk, i64 %.017.add.i633
  %i.ur = load i32, ptr %.ptr.i634, align 4, !tbaa !27 ; 2 uses
  %i.us = getelementptr inbounds i8, ptr %.0.i632, i64 -4 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !27 ; 2 uses
  %.not23.i635 = icmp eq i32 %i.ur, %i.ut
  br i1 %.not23.i635, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.uu = icmp ult i32 %i.ur, %i.ut
  br i1 %i.uu, label %cmp.exit637.thread, label %cmp.exit637.thread765

bb.eg:                                            ; preds = %bb.ee
  %.not24.i636 = icmp sgt i64 %.017.idx.i631, 28
  br i1 %.not24.i636, label %bb.ee, label %cmp.exit637.thread

cmp.exit637:                                      ; preds = %bb.ec
  %i.uv = icmp sgt i32 %i.um, %i.un
  br i1 %i.uv, label %cmp.exit637.thread765, label %cmp.exit637.thread

bb.eh:                                            ; preds = %cmp.exit.thread
  %.not560 = icmp eq i32 %i.tk, 0                 ; 2 uses
  %i.uw = load i32, ptr %i.qs, align 4, !tbaa !21 ; 9 uses
  %i.ux = and i32 %i.uw, 1048575                  ; 2 uses
  br i1 %.not560, label %bb.ep, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.uy = icmp eq i32 %i.ux, 1048575
  br i1 %i.uy, label %bb.ej, label %.loopexit783

bb.ej:                                            ; preds = %bb.ei
  %i.uz = load i32, ptr %3, align 8, !tbaa !21    ; 2 uses
  br i1 %i.qt, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.va = and i32 %i.uw, 2146435072               ; 2 uses
  %i.vb = icmp samesign ult i32 %i.va, 111149057
  br i1 %i.vb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.vc = lshr exact i32 %i.va, 20
  %i.vd = sub nuw nsw i32 107, %i.vc
  %i.ve = shl nsw i32 -1, %i.vd
  br label %bb.em

bb.em:                                            ; preds = %bb.ej, %bb.ek, %bb.el
  %i.vf = phi i32 [ %i.ve, %bb.el ], [ -1, %bb.ek ], [ -1, %bb.ej ]
  %i.vg = icmp eq i32 %i.uz, %i.vf
  br i1 %i.vg, label %bb.en, label %.loopexit783

bb.en:                                            ; preds = %bb.em
  %i.vh = icmp eq i32 %i.uw, 2146435071
  %i.vi = icmp eq i32 %i.uz, -1
  %or.cond23 = select i1 %i.vh, i1 %i.vi, i1 false
  br i1 %or.cond23, label %.loopexit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.vj = and i32 %i.uw, 2146435072
  %i.vk = add nuw i32 %i.vj, 1048576
  store i32 %i.vk, ptr %i.qs, align 4, !tbaa !21
  store i32 0, ptr %3, align 8, !tbaa !21
  br label %cmp.exit637.thread

bb.ep:                                            ; preds = %bb.eh
  %i.vl = icmp ne i32 %i.ux, 0
  %i.vm = load i32, ptr %3, align 8
  %i.vn = icmp ne i32 %i.vm, 0
  %or.cond26 = select i1 %i.vl, i1 true, i1 %i.vn
  br i1 %or.cond26, label %.loopexit783, label %cmp.exit637.thread765

cmp.exit637.thread765:                            ; preds = %bb.ef, %bb.ep, %cmp.exit637
  %i.vo = phi i32 [ %i.ud, %cmp.exit637 ], [ %i.uw, %bb.ep ], [ %i.ud, %bb.ef ]
  %.3 = phi ptr [ %i.uk, %cmp.exit637 ], [ %i.ti, %bb.ep ], [ %i.uk, %bb.ef ] ; 4 uses
  %i.vp = and i32 %i.vo, 2146435072               ; 3 uses
  %i.vq = icmp samesign ult i32 %i.vp, 112197633
  %or.cond1395 = select i1 %i.qt, i1 %i.vq, i1 false
  br i1 %or.cond1395, label %bb.eq, label %cmp.exit637.thread765._crit_edge

bb.eq:                                            ; preds = %cmp.exit637.thread765
  %i.vr = icmp samesign ugt i32 %i.vp, 57671680
  %brmerge = or i1 %i.qr, %i.vr
  br i1 %brmerge, label %cmp.exit637.thread, label %bb.cm

cmp.exit637.thread765._crit_edge:                 ; preds = %cmp.exit637.thread765
  %i.vs = add nsw i32 %i.vp, -1
  store i32 %i.vs, ptr %i.qs, align 4, !tbaa !21
  store i32 -1, ptr %3, align 8, !tbaa !21
  br i1 %i.qr, label %bb.ga, label %cmp.exit637.thread

.loopexit783:                                     ; preds = %bb.ep, %bb.ei, %bb.em
  %4 = phi i32 [ %i.tk, %bb.em ], [ %i.tk, %bb.ei ], [ 0, %bb.ep ] ; 3 uses
  %.not562 = icmp eq i32 %.0387, 0
  br i1 %.not562, label %bb.es, label %bb.er

bb.er:                                            ; preds = %.loopexit783
  %i.vt = and i32 %i.uw, %.0387
  %.not564 = icmp eq i32 %i.vt, 0
  br i1 %.not564, label %cmp.exit637.thread, label %bb.et

bb.es:                                            ; preds = %.loopexit783
  %i.vu = load i32, ptr %3, align 8, !tbaa !21
  %i.vv = and i32 %i.vu, %.0388
  %.not563 = icmp eq i32 %i.vv, 0
  br i1 %.not563, label %cmp.exit637.thread, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.vw = and i32 %i.uw, 2146435072
  %i.vx = add nsw i32 %i.vw, -54525952
  %.sroa.0.4.insert.ext.i.i640 = zext i32 %i.vx to i64
  %.sroa.0.4.insert.shift.i.i641 = shl nuw i64 %.sroa.0.4.insert.ext.i.i640, 32
  %i.vy = bitcast i64 %.sroa.0.4.insert.shift.i.i641 to double ; 6 uses
  br i1 %.not560, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  br i1 %i.qt, label %bb.ev, label %sulp.exit

bb.ev:                                            ; preds = %bb.eu
  %i.vz = lshr i32 %i.uw, 20
  %i.wa = and i32 %i.vz, 2047                     ; 2 uses
  %i.wb = icmp samesign ugt i32 %i.wa, 106
  br i1 %i.wb, label %sulp.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.wc = shl nuw nsw i32 %i.wa, 20
  %i.wd = sub nuw nsw i32 1184890880, %i.wc
  %.sroa.0.4.insert.ext.i = zext nneg i32 %i.wd to i64
  %.sroa.0.4.insert.shift.i = shl nuw nsw i64 %.sroa.0.4.insert.ext.i, 32
  %i.we = bitcast i64 %.sroa.0.4.insert.shift.i to double
  %i.wf = fmul double %i.vy, %i.we
  br label %sulp.exit

sulp.exit:                                        ; preds = %bb.eu, %bb.ev, %bb.ew
  %.0.i639 = phi double [ %i.wf, %bb.ew ], [ %i.vy, %bb.ev ], [ %i.vy, %bb.eu ]
  %i.wg = load double, ptr %3, align 8, !tbaa !21
  %i.wh = fadd double %.0.i639, %i.wg
  store double %i.wh, ptr %3, align 8, !tbaa !21
  br label %bb.fa

bb.ex:                                            ; preds = %bb.et
  br i1 %i.qt, label %bb.ey, label %sulp.exit646

bb.ey:                                            ; preds = %bb.ex
  %i.wi = lshr i32 %i.uw, 20
  %i.wj = and i32 %i.wi, 2047                     ; 2 uses
  %i.wk = icmp samesign ugt i32 %i.wj, 106
  br i1 %i.wk, label %sulp.exit646, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.wl = shl nuw nsw i32 %i.wj, 20
  %i.wm = sub nuw nsw i32 1184890880, %i.wl
  %.sroa.0.4.insert.ext.i643 = zext nneg i32 %i.wm to i64
  %.sroa.0.4.insert.shift.i644 = shl nuw nsw i64 %.sroa.0.4.insert.ext.i643, 32
  %i.wn = bitcast i64 %.sroa.0.4.insert.shift.i644 to double
  %i.wo = fmul double %i.vy, %i.wn
  br label %sulp.exit646

sulp.exit646:                                     ; preds = %bb.ex, %bb.ey, %bb.ez
  %.0.i645 = phi double [ %i.wo, %bb.ez ], [ %i.vy, %bb.ey ], [ %i.vy, %bb.ex ]
  %i.wp = load double, ptr %3, align 8, !tbaa !21
  %i.wq = fsub double %i.wp, %.0.i645             ; 2 uses
  store double %i.wq, ptr %3, align 8, !tbaa !21
  %i.wr = fcmp une double %i.wq, 0.000000e+00
  br i1 %i.wr, label %bb.fa, label %bb.cm

bb.fa:                                            ; preds = %sulp.exit646, %sulp.exit
  %i.ws = sub nsw i32 1, %4
  br label %cmp.exit637.thread

bb.fb:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.wt = call fastcc double @b2d(ptr noundef nonnull readonly %i.ti, ptr noundef %i.c) ; 2 uses
  %i.wu = call fastcc double @b2d(ptr noundef readonly %.4394, ptr noundef %i.d) ; 2 uses
  %i.wv = load i32, ptr %i.c, align 4, !tbaa !27
  %i.ww = load i32, ptr %i.d, align 4, !tbaa !27
  %i.wx = sub nsw i32 %i.wv, %i.ww
  %i.wy = load i32, ptr %i.tn, align 4, !tbaa !28
  %i.wz = sub nsw i32 %i.tm, %i.wy
  %i.xa = shl nsw i32 %i.wz, 5
  %i.xb = add nsw i32 %i.xa, %i.wx                ; 3 uses
  %i.xc = icmp sgt i32 %i.xb, 0
  br i1 %i.xc, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.xd = shl nuw nsw i32 %i.xb, 20
  %i.xe = bitcast double %i.wt to i64             ; 2 uses
  %.sroa.04.4.extract.shift.i = lshr i64 %i.xe, 32
  %.sroa.04.4.extract.trunc.i = trunc nuw i64 %.sroa.04.4.extract.shift.i to i32
  %i.xf = add i32 %i.xd, %.sroa.04.4.extract.trunc.i
  %.sroa.04.4.insert.ext.i = zext i32 %i.xf to i64
  %.sroa.04.4.insert.shift.i = shl nuw i64 %.sroa.04.4.insert.ext.i, 32
  %.sroa.04.4.insert.mask.i = and i64 %i.xe, 4294967295
  %.sroa.04.4.insert.insert.i = or disjoint i64 %.sroa.04.4.insert.shift.i, %.sroa.04.4.insert.mask.i
  %i.xg = bitcast i64 %.sroa.04.4.insert.insert.i to double
  br label %ratio.exit

bb.fd:                                            ; preds = %bb.fb
  %i.xh = bitcast double %i.wu to i64             ; 2 uses
  %.sroa.0.4.extract.shift.i = lshr i64 %i.xh, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.xi = shl i32 %i.xb, 20
  %i.xj = sub i32 %.sroa.0.4.extract.trunc.i, %i.xi
  %.sroa.0.4.insert.ext.i647 = zext i32 %i.xj to i64
  %.sroa.0.4.insert.shift.i648 = shl nuw i64 %.sroa.0.4.insert.ext.i647, 32
  %.sroa.0.4.insert.mask.i = and i64 %i.xh, 4294967295
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i648, %.sroa.0.4.insert.mask.i
  %i.xk = bitcast i64 %.sroa.0.4.insert.insert.i to double
  br label %ratio.exit

ratio.exit:                                       ; preds = %bb.fc, %bb.fd
  %.sroa.04.0.i = phi double [ %i.xg, %bb.fc ], [ %i.wt, %bb.fd ]
  %.sroa.0.0.i = phi double [ %i.wu, %bb.fc ], [ %i.xk, %bb.fd ]
  %i.xl = fdiv double %.sroa.04.0.i, %.sroa.0.0.i ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.xm = fcmp ugt double %i.xl, 2.000000e+00
  br i1 %i.xm, label %bb.fk, label %bb.fe

bb.fe:                                            ; preds = %ratio.exit
  %.not555 = icmp eq i32 %i.tk, 0
  br i1 %.not555, label %bb.ff, label %.thread767

bb.ff:                                            ; preds = %bb.fe
  %i.xn = load i32, ptr %3, align 8, !tbaa !21    ; 2 uses
  %.not556 = icmp eq i32 %i.xn, 0
  br i1 %.not556, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.xo = load i32, ptr %i.qs, align 4, !tbaa !21
  %i.xp = and i32 %i.xo, 1048575
  %.not557 = icmp eq i32 %i.xp, 0
  br i1 %.not557, label %bb.fj, label %.thread767

bb.fh:                                            ; preds = %bb.ff
  %i.xq = icmp ne i32 %i.xn, 1
  %i.xr = load i32, ptr %i.qs, align 4
  %i.xs = icmp ne i32 %i.xr, 0
  %or.cond29 = select i1 %i.xq, i1 true, i1 %i.xs
  br i1 %or.cond29, label %.thread767, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  br i1 %i.qr, label %cmp.exit637.thread, label %bb.cm

bb.fj:                                            ; preds = %bb.fg
  %i.xt = fcmp olt double %i.xl, 1.000000e+00
  %i.xu = fmul nnan double %i.xl, 5.000000e-01
  %.0426 = select i1 %i.xt, double 5.000000e-01, double %i.xu ; 2 uses
  %i.xv = fneg double %.0426
  br label %.thread767

bb.fk:                                            ; preds = %ratio.exit
  %i.xw = fmul double %i.xl, 5.000000e-01         ; 4 uses
  %.not554 = icmp eq i32 %i.tk, 0
  %i.xx = fneg double %i.xw
  %i.xy = select i1 %.not554, double %i.xx, double %i.xw ; 2 uses
  %i.xz = tail call i32 @llvm.get.rounding()
  %i.ya = icmp eq i32 %i.xz, 0
  br i1 %i.ya, label %bb.fl, label %.thread767

bb.fl:                                            ; preds = %bb.fk
  %i.yb = fadd double %i.xy, 5.000000e-01
  br label %.thread767

.thread767:                                       ; preds = %bb.fg, %bb.fh, %bb.fe, %bb.fk, %bb.fl, %bb.fj
  %.1427 = phi double [ %i.xw, %bb.fk ], [ 1.000000e+00, %bb.fe ], [ %.0426, %bb.fj ], [ %i.xw, %bb.fl ], [ 1.000000e+00, %bb.fh ], [ 1.000000e+00, %bb.fg ] ; 5 uses
  %.0424 = phi double [ %i.xy, %bb.fk ], [ 1.000000e+00, %bb.fe ], [ %i.xv, %bb.fj ], [ %i.yb, %bb.fl ], [ -1.000000e+00, %bb.fh ], [ -1.000000e+00, %bb.fg ] ; 3 uses
  %i.yc = load i32, ptr %i.qs, align 4, !tbaa !21 ; 2 uses
  %i.yd = and i32 %i.yc, 2146435072               ; 6 uses
  %i.ye = icmp eq i32 %i.yd, 2145386496
  br i1 %i.ye, label %bb.fm, label %bb.fq

bb.fm:                                            ; preds = %.thread767
  %i.yf = load i64, ptr %3, align 8, !tbaa !21
  %i.yg = add nsw i32 %i.yc, -55574528
  store i32 %i.yg, ptr %i.qs, align 4, !tbaa !21
  %i.yh = fmul double %.0424, f0x7950000000000000
  %i.yi = load double, ptr %3, align 8, !tbaa !21
  %i.yj = fadd double %i.yh, %i.yi                ; 2 uses
  store double %i.yj, ptr %3, align 8, !tbaa !21
  %i.yk = bitcast double %i.yj to i64             ; 2 uses
  %i.yl = lshr i64 %i.yk, 32
  %i.ym = trunc nuw i64 %i.yl to i32              ; 2 uses
  %i.yn = and i32 %i.ym, 2145386496
  %i.yo = icmp samesign ugt i32 %i.yn, 2090860543
  br i1 %i.yo, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %or.cond32 = icmp eq i64 %i.yf, 9218868437227405311
  br i1 %or.cond32, label %.loopexit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  store i32 2146435071, ptr %i.qs, align 4, !tbaa !21
  store i32 -1, ptr %3, align 8, !tbaa !21
  br label %bb.ga

bb.fp:                                            ; preds = %bb.fm
  %i.yp = add i32 %i.ym, 55574528                 ; 2 uses
  store i32 %i.yp, ptr %i.qs, align 4, !tbaa !21
  br label %bb.fw

bb.fq:                                            ; preds = %.thread767
  %i.yq = icmp samesign ult i32 %i.yd, 111149057
  %or.cond34 = select i1 %i.qt, i1 %i.yq, i1 false
  br i1 %or.cond34, label %bb.fr, label %bb.fv

bb.fr:                                            ; preds = %bb.fq
  %i.yr = fcmp ugt double %.1427, f0x41DFFFFFFFC00000
  br i1 %i.yr, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ys = fptoui double %.1427 to i32
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.ys, i32 1)
  %i.yt = uitofp i32 %spec.store.select to double ; 3 uses
  %.not558 = icmp eq i32 %i.tk, 0
  %i.yu = fneg double %i.yt
  %i.yv = select i1 %.not558, double %i.yu, double %i.yt
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.2428 = phi double [ %i.yt, %bb.fs ], [ %.1427, %bb.fr ]
  %.1425 = phi double [ %i.yv, %bb.fs ], [ %.0424, %bb.fr ]
  %i.yw = bitcast double %.1425 to i64            ; 2 uses
  %.sroa.0114.4.extract.shift = lshr i64 %i.yw, 32
  %.sroa.0114.4.extract.trunc = trunc nuw i64 %.sroa.0114.4.extract.shift to i32
  %reass.sub987 = sub i32 %.sroa.0114.4.extract.trunc, %i.yd
  %i.yx = add i32 %reass.sub987, 112197632
  %.sroa.0114.4.insert.ext = zext i32 %i.yx to i64
  %.sroa.0114.4.insert.shift = shl nuw i64 %.sroa.0114.4.insert.ext, 32
  %.sroa.0114.4.insert.mask = and i64 %i.yw, 4294967295
  %.sroa.0114.4.insert.insert = or disjoint i64 %.sroa.0114.4.insert.shift, %.sroa.0114.4.insert.mask
  %i.yy = bitcast i64 %.sroa.0114.4.insert.insert to double
  %i.yz = add nsw i32 %i.yd, -54525952
  %.sroa.0.4.insert.ext.i651 = zext i32 %i.yz to i64
  %.sroa.0.4.insert.shift.i652 = shl nuw i64 %.sroa.0.4.insert.ext.i651, 32
  %i.za = bitcast i64 %.sroa.0.4.insert.shift.i652 to double
  %i.zb = fmul double %i.za, %i.yy
  %i.zc = load double, ptr %3, align 8, !tbaa !21
  %i.zd = fadd double %i.zc, %i.zb                ; 3 uses
  store double %i.zd, ptr %3, align 8, !tbaa !21
  %i.ze = fcmp oeq double %i.zd, 0.000000e+00
  %i.zf = bitcast double %i.zd to i64             ; 2 uses
  %i.zg = lshr i64 %i.zf, 32
  %i.zh = trunc nuw i64 %i.zg to i32
  br i1 %i.ze, label %bb.fu, label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  %spec.select771 = select i1 %i.qr, i32 1, i32 %i.tk
  br label %cmp.exit637.thread

bb.fv:                                            ; preds = %bb.fq
  %i.zi = add nsw i32 %i.yd, -54525952
  %.sroa.0.4.insert.ext.i653 = zext i32 %i.zi to i64
  %.sroa.0.4.insert.shift.i654 = shl nuw i64 %.sroa.0.4.insert.ext.i653, 32
  %i.zj = bitcast i64 %.sroa.0.4.insert.shift.i654 to double
  %i.zk = fmul double %.0424, %i.zj
  %i.zl = load double, ptr %3, align 8, !tbaa !21
  %i.zm = fadd double %i.zk, %i.zl                ; 2 uses
  store double %i.zm, ptr %3, align 8, !tbaa !21
  %i.zn = bitcast double %i.zm to i64             ; 2 uses
  %i.zo = lshr i64 %i.zn, 32
  %i.zp = trunc nuw i64 %i.zo to i32
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.ft, %bb.fp
  %.in = phi i64 [ %i.yk, %bb.fp ], [ %i.zf, %bb.ft ], [ %i.zn, %bb.fv ]
  %i.zq = phi i32 [ %i.yp, %bb.fp ], [ %i.zh, %bb.ft ], [ %i.zp, %bb.fv ] ; 2 uses
  %.3429 = phi double [ %.1427, %bb.fp ], [ %.2428, %bb.ft ], [ %.1427, %bb.fv ] ; 2 uses
  %i.zr = and i32 %i.zq, 2146435072
  %i.zs = icmp eq i32 %i.yd, %i.zr
  %or.cond584 = select i1 %or.cond44.not774, i1 %i.zs, i1 false
  br i1 %or.cond584, label %bb.fx, label %bb.ga

bb.fx:                                            ; preds = %bb.fw
  %i.zt = fptosi double %.3429 to i32
  %i.zu = sitofp i32 %i.zt to double
  %i.zv = fsub double %.3429, %i.zu               ; 3 uses
  %i.zw = icmp eq i32 %i.tk, 0
  %i.zx = and i64 %.in, 4294967295
  %i.zy = icmp eq i64 %i.zx, 0
  %or.cond37.not777 = select i1 %i.zw, i1 %i.zy, i1 false
  %i.zz = and i32 %i.zq, 1048575
  %.not559 = icmp eq i32 %i.zz, 0
  %or.cond585 = select i1 %or.cond37.not777, i1 %.not559, i1 false
  br i1 %or.cond585, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aaa = fcmp olt double %i.zv, f0x3FDFFFFF94A03595
  %i.aab = fcmp ogt double %i.zv, f0x3FE0000035AFE535
  %or.cond39 = or i1 %i.aaa, %i.aab
  br i1 %or.cond39, label %cmp.exit637.thread, label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.aac = fcmp olt double %i.zv, f0x3FCFFFFF94A03595
  br i1 %i.aac, label %cmp.exit637.thread, label %bb.ga

bb.ga:                                            ; preds = %bb.fw, %bb.fz, %bb.fy, %cmp.exit637.thread765._crit_edge, %bb.fo
  %.4 = phi ptr [ %.3, %cmp.exit637.thread765._crit_edge ], [ %i.ti, %bb.fo ], [ %i.ti, %bb.fw ], [ %i.ti, %bb.fy ], [ %i.ti, %bb.fz ] ; 4 uses
  %.not.i655 = icmp eq ptr %.4407, null
  br i1 %.not.i655, label %Bfree.exit656, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aad = getelementptr inbounds nuw i8, ptr %.4407, i64 8
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !19 ; 2 uses
  %i.aaf = icmp sgt i32 %i.aae, 7
  br i1 %i.aaf, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  tail call void @jv_mem_free(ptr noundef nonnull %.4407) #10
  br label %Bfree.exit656

bb.gd:                                            ; preds = %bb.gb
  %i.aag = sext i32 %i.aae to i64
  %i.aah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aag ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !16
  store ptr %i.aai, ptr %.4407, align 8, !tbaa !18
  store ptr %.4407, ptr %i.aah, align 8, !tbaa !16
  br label %Bfree.exit656

Bfree.exit656:                                    ; preds = %bb.ga, %bb.gc, %bb.gd
  %.not.i657 = icmp eq ptr %.4402, null
  br i1 %.not.i657, label %Bfree.exit658, label %bb.ge

bb.ge:                                            ; preds = %Bfree.exit656
  %i.aaj = getelementptr inbounds nuw i8, ptr %.4402, i64 8
  %i.aak = load i32, ptr %i.aaj, align 8, !tbaa !19 ; 2 uses
  %i.aal = icmp sgt i32 %i.aak, 7
  br i1 %i.aal, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  tail call void @jv_mem_free(ptr noundef nonnull %.4402) #10
  br label %Bfree.exit658

bb.gg:                                            ; preds = %bb.ge
  %i.aam = sext i32 %i.aak to i64
  %i.aan = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aam ; 2 uses
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !16
  store ptr %i.aao, ptr %.4402, align 8, !tbaa !18
  store ptr %.4402, ptr %i.aan, align 8, !tbaa !16
  br label %Bfree.exit658

Bfree.exit658:                                    ; preds = %Bfree.exit656, %bb.gf, %bb.gg
  %.not.i659 = icmp eq ptr %.4394, null
  br i1 %.not.i659, label %Bfree.exit660, label %bb.gh

bb.gh:                                            ; preds = %Bfree.exit658
  %i.aap = getelementptr inbounds nuw i8, ptr %.4394, i64 8
  %i.aaq = load i32, ptr %i.aap, align 8, !tbaa !19 ; 2 uses
  %i.aar = icmp sgt i32 %i.aaq, 7
  br i1 %i.aar, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  tail call void @jv_mem_free(ptr noundef nonnull %.4394) #10
  br label %Bfree.exit660

bb.gj:                                            ; preds = %bb.gh
  %i.aas = sext i32 %i.aaq to i64
  %i.aat = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aas ; 2 uses
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !16
  store ptr %i.aau, ptr %.4394, align 8, !tbaa !18
  store ptr %.4394, ptr %i.aat, align 8, !tbaa !16
  br label %Bfree.exit660

Bfree.exit660:                                    ; preds = %bb.gj, %bb.gi, %Bfree.exit658
  %i.aav = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !19 ; 2 uses
  %i.aax = icmp sgt i32 %i.aaw, 7
  br i1 %i.aax, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %Bfree.exit660
  tail call void @jv_mem_free(ptr noundef nonnull %.4) #10
  br label %Bfree.exit662.backedge

Bfree.exit662.backedge:                           ; preds = %bb.gk, %bb.gl
  br label %Bfree.exit662

bb.gl:                                            ; preds = %Bfree.exit660
  %i.aay = sext i32 %i.aaw to i64
  %i.aaz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aay ; 2 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !16
  store ptr %i.aba, ptr %.4, align 8, !tbaa !18
  store ptr %.4, ptr %i.aaz, align 8, !tbaa !16
  br label %Bfree.exit662.backedge

cmp.exit637.thread:                               ; preds = %bb.eb, %bb.ef, %bb.dy, %bb.fz, %bb.fy, %cmp.exit637.thread765._crit_edge, %cmp.exit637, %.thread762, %bb.ea, %bb.eg, %bb.fu, %bb.eq, %bb.fi, %bb.es, %bb.er, %bb.fa, %bb.eo
  %.sroa.18.0 = phi i32 [ %i.ws, %bb.fa ], [ %4, %bb.er ], [ 0, %bb.eo ], [ %spec.select771, %bb.fu ], [ %i.tk, %bb.eq ], [ 0, %bb.fi ], [ 0, %bb.eg ], [ %4, %bb.es ], [ 0, %bb.ea ], [ 0, %bb.eb ], [ %i.tk, %cmp.exit637.thread765._crit_edge ], [ 0, %cmp.exit637 ], [ 0, %bb.ef ], [ 0, %bb.fz ], [ %i.tk, %bb.fy ], [ %i.tk, %bb.dy ], [ %i.tk, %.thread762 ]
  %.5 = phi ptr [ %i.ti, %bb.fa ], [ %i.ti, %bb.er ], [ %i.ti, %bb.eo ], [ %i.ti, %bb.fu ], [ %.3, %bb.eq ], [ %i.ti, %bb.fi ], [ %i.uk, %bb.eg ], [ %i.ti, %bb.es ], [ %i.ti, %bb.ea ], [ %i.ti, %bb.eb ], [ %.3, %cmp.exit637.thread765._crit_edge ], [ %i.uk, %cmp.exit637 ], [ %i.uk, %bb.ef ], [ %i.ti, %bb.fz ], [ %i.ti, %bb.fy ], [ %i.ti, %bb.dy ], [ %i.ti, %.thread762 ] ; 7 uses
  %.not569 = phi i1 [ true, %bb.fa ], [ true, %bb.er ], [ true, %bb.eo ], [ true, %bb.fu ], [ true, %bb.eq ], [ true, %bb.fi ], [ true, %bb.eg ], [ true, %bb.es ], [ true, %bb.ea ], [ true, %bb.eb ], [ true, %cmp.exit637.thread765._crit_edge ], [ true, %cmp.exit637 ], [ true, %bb.ef ], [ true, %bb.fz ], [ true, %bb.fy ], [ false, %bb.dy ], [ true, %.thread762 ]
  %.not.i663 = icmp eq ptr %.4407, null
  br i1 %.not.i663, label %Bfree.exit664, label %bb.gm

bb.gm:                                            ; preds = %cmp.exit637.thread
  %i.abb = getelementptr inbounds nuw i8, ptr %.4407, i64 8
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !19 ; 2 uses
  %i.abd = icmp sgt i32 %i.abc, 7
  br i1 %i.abd, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  tail call void @jv_mem_free(ptr noundef nonnull %.4407) #10
  br label %Bfree.exit664

bb.go:                                            ; preds = %bb.gm
  %i.abe = sext i32 %i.abc to i64
  %i.abf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.abe ; 2 uses
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !16
  store ptr %i.abg, ptr %.4407, align 8, !tbaa !18
  store ptr %.4407, ptr %i.abf, align 8, !tbaa !16
  br label %Bfree.exit664

Bfree.exit664:                                    ; preds = %cmp.exit637.thread, %bb.gn, %bb.go
  %.not.i665 = icmp eq ptr %.4402, null
  br i1 %.not.i665, label %Bfree.exit666, label %bb.gp

bb.gp:                                            ; preds = %Bfree.exit664
  %i.abh = getelementptr inbounds nuw i8, ptr %.4402, i64 8
  %i.abi = load i32, ptr %i.abh, align 8, !tbaa !19 ; 2 uses
  %i.abj = icmp sgt i32 %i.abi, 7
  br i1 %i.abj, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  tail call void @jv_mem_free(ptr noundef nonnull %.4402) #10
  br label %Bfree.exit666

bb.gr:                                            ; preds = %bb.gp
  %i.abk = sext i32 %i.abi to i64
  %i.abl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.abk ; 2 uses
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !16
  store ptr %i.abm, ptr %.4402, align 8, !tbaa !18
  store ptr %.4402, ptr %i.abl, align 8, !tbaa !16
  br label %Bfree.exit666

Bfree.exit666:                                    ; preds = %Bfree.exit664, %bb.gq, %bb.gr
  %.not.i667 = icmp eq ptr %.4394, null
  br i1 %.not.i667, label %Bfree.exit668, label %bb.gs

bb.gs:                                            ; preds = %Bfree.exit666
  %i.abn = getelementptr inbounds nuw i8, ptr %.4394, i64 8
  %i.abo = load i32, ptr %i.abn, align 8, !tbaa !19 ; 2 uses
  %i.abp = icmp sgt i32 %i.abo, 7
  br i1 %i.abp, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  tail call void @jv_mem_free(ptr noundef nonnull %.4394) #10
  br label %Bfree.exit668

bb.gu:                                            ; preds = %bb.gs
  %i.abq = sext i32 %i.abo to i64
  %i.abr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.abq ; 2 uses
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !16
  store ptr %i.abs, ptr %.4394, align 8, !tbaa !18
  store ptr %.4394, ptr %i.abr, align 8, !tbaa !16
  br label %Bfree.exit668

Bfree.exit668:                                    ; preds = %Bfree.exit666, %bb.gt, %bb.gu
  %.not.i669 = icmp eq ptr %.231.lcssa.i, null
  br i1 %.not.i669, label %Bfree.exit670, label %bb.gv

bb.gv:                                            ; preds = %Bfree.exit668
  %i.abt = load i32, ptr %i.qk, align 8, !tbaa !19 ; 2 uses
  %i.abu = icmp sgt i32 %i.abt, 7
  br i1 %i.abu, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  tail call void @jv_mem_free(ptr noundef nonnull %.231.lcssa.i) #10
  br label %Bfree.exit670

bb.gx:                                            ; preds = %bb.gv
  %i.abv = sext i32 %i.abt to i64
  %i.abw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.abv ; 2 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !16
  store ptr %i.abx, ptr %.231.lcssa.i, align 8, !tbaa !18
  store ptr %.231.lcssa.i, ptr %i.abw, align 8, !tbaa !16
  br label %Bfree.exit670

Bfree.exit670:                                    ; preds = %Bfree.exit668, %bb.gw, %bb.gx
  %.not.i671 = icmp eq ptr %.5, null
  br i1 %.not.i671, label %Bfree.exit672, label %bb.gy

bb.gy:                                            ; preds = %Bfree.exit670
  %i.aby = getelementptr inbounds nuw i8, ptr %.5, i64 8
  %i.abz = load i32, ptr %i.aby, align 8, !tbaa !19 ; 2 uses
  %i.aca = icmp sgt i32 %i.abz, 7
  br i1 %i.aca, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  tail call void @jv_mem_free(ptr noundef nonnull %.5) #10
  br label %Bfree.exit672

bb.ha:                                            ; preds = %bb.gy
  %i.acb = sext i32 %i.abz to i64
  %i.acc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.acb ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !16
  store ptr %i.acd, ptr %.5, align 8, !tbaa !18
  store ptr %.5, ptr %i.acc, align 8, !tbaa !16
  br label %Bfree.exit672

Bfree.exit672:                                    ; preds = %Bfree.exit670, %bb.gz, %bb.ha
  br i1 %.not569, label %bb.iy, label %bb.hb

bb.hb:                                            ; preds = %Bfree.exit672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ace = add i32 %i.gc, %.5460                  ; 5 uses
  %i.acf = add nsw i32 %i.ace, -1
  %i.acg = load double, ptr %3, align 8, !tbaa !21
  %i.ach = fcmp une double %i.acg, 0.000000e+00   ; 2 uses
  br i1 %i.ach, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aci = load ptr, ptr %i.qn, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aci, null
  br i1 %.not.i.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !18
  store ptr %i.acj, ptr %i.qn, align 8, !tbaa !16
  br label %i2b.exit.i

bb.he:                                            ; preds = %bb.hc
  %i.ack = tail call ptr @jv_mem_alloc(i64 noundef 36) #10 ; 3 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  store i32 1, ptr %i.acl, align 8, !tbaa !19
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 12
  store i32 2, ptr %i.acm, align 4, !tbaa !25
  br label %i2b.exit.i

i2b.exit.i:                                       ; preds = %bb.he, %bb.hd
  %.0.i.i.i = phi ptr [ %i.aci, %bb.hd ], [ %i.ack, %bb.he ] ; 4 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.aco = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 0, ptr %i.aco, align 8, !tbaa !26
  %i.acp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store i32 1, ptr %i.acp, align 8, !tbaa !27
  store i32 1, ptr %i.acn, align 4, !tbaa !28
  store i32 1, ptr %i.a, align 4, !tbaa !27
  store i32 57671680, ptr %i.qs, align 4, !tbaa !21
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hb
  %i.acq = call fastcc ptr @d2b(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.b, ptr noundef %i.a)
  %i.acr = load i32, ptr %i.b, align 4, !tbaa !27
  %i.acs = sub nsw i32 %i.acr, %.sroa.47706.1     ; 2 uses
  %i.act = load i32, ptr %i.a, align 4, !tbaa !27
  %i.acu = sub nsw i32 53, %i.act
  %i.acv = add nsw i32 %i.acs, 1074
  %spec.select.i681 = tail call i32 @llvm.smin.i32(i32 %i.acu, i32 %i.acv) ; 2 uses
  %.neg221.i = xor i32 %spec.select.i681, -1
  %i.acw = add nsw i32 %spec.select.i681, 1
  %i.acx = tail call fastcc ptr @lshift(ptr noundef %0, ptr noundef %i.acq, i32 noundef %i.acw) ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 24 ; 2 uses
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !27
  %i.ada = or i32 %i.acz, 1
  store i32 %i.ada, ptr %i.acy, align 8, !tbaa !27
  %i.adb = icmp eq i32 %.sroa.18.0, 0
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %i2b.exit.i
  %i.adc = phi i32 [ -1075, %i2b.exit.i ], [ %i.acs, %bb.hf ]
  %.0122.i = phi ptr [ %.0.i.i.i, %i2b.exit.i ], [ %i.acx, %bb.hf ] ; 3 uses
  %.0111.i = phi i1 [ true, %i2b.exit.i ], [ %i.adb, %bb.hf ] ; 3 uses
  %.1.neg222.i = phi i32 [ 0, %i2b.exit.i ], [ %.neg221.i, %bb.hf ]
  %reass.sub = sub i32 %i.adc, %i.ace
  %.neg189.i = add i32 %reass.sub, 1
  %i.add = add i32 %.neg189.i, %.1.neg222.i       ; 3 uses
  store i32 %i.add, ptr %i.b, align 4, !tbaa !27
  %i.ade = load ptr, ptr %i.qn, align 8, !tbaa !16 ; 3 uses
  %.not.i.i163.i = icmp eq ptr %i.ade, null
  br i1 %.not.i.i163.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !18
  store ptr %i.adf, ptr %i.qn, align 8, !tbaa !16
  br label %i2b.exit165.i

bb.hi:                                            ; preds = %bb.hg
  %i.adg = tail call ptr @jv_mem_alloc(i64 noundef 36) #10 ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  store i32 1, ptr %i.adh, align 8, !tbaa !19
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adg, i64 12
  store i32 2, ptr %i.adi, align 4, !tbaa !25
  br label %i2b.exit165.i

i2b.exit165.i:                                    ; preds = %bb.hi, %bb.hh
  %.0.i.i164.i = phi ptr [ %i.ade, %bb.hh ], [ %i.adg, %bb.hi ] ; 6 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.0.i.i164.i, i64 20
  %i.adk = getelementptr inbounds nuw i8, ptr %.0.i.i164.i, i64 16
end_hunk_1
begin_hunk_2_@pow5mult:bb.a

.preheader:                                       ; preds = %bb.d, %.sink.split
  %.129.ph48 = phi ptr [ %.129.ph, %.sink.split ], [ %.028, %bb.d ]
  %.027.ph49 = phi i32 [ %.027.ph, %.sink.split ], [ %i.g, %bb.d ]
  %.1.ph = phi ptr [ %.sink, %.sink.split ], [ %i.i, %bb.d ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.m
  %.129 = phi ptr [ %.2, %bb.m ], [ %.129.ph48, %.preheader ] ; 7 uses
  %.027 = phi i32 [ %i.aa, %bb.m ], [ %.027.ph49, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %i.ab, %bb.m ], [ %.1.ph, %.preheader ] ; 5 uses
  %i.s = and i32 %.027, 1
  %.not38 = icmp eq i32 %i.s, 0
  br i1 %.not38, label %Bfree.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call fastcc ptr @mult(ptr noundef %0, ptr noundef %.129, ptr noundef nonnull %.1) ; 3 uses
  %.not.i = icmp eq ptr %.129, null
  br i1 %.not.i, label %Bfree.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.129, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 7
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @jv_mem_free(ptr noundef nonnull %.129) #10
  br label %Bfree.exit

bb.l:                                             ; preds = %bb.j
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  store ptr %i.z, ptr %.129, align 8, !tbaa !18
  store ptr %.129, ptr %i.y, align 8, !tbaa !16
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %.2 = phi ptr [ %.129, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.k ], [ %i.t, %bb.l ] ; 3 uses
  %i.aa = lshr i32 %.027, 1                       ; 3 uses
  %.not39 = icmp eq i32 %i.aa, 0
  br i1 %.not39, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %Bfree.exit
  %i.ab = load ptr, ptr %.1, align 8, !tbaa !18   ; 2 uses
  %.not40 = icmp eq ptr %i.ab, null
  br i1 %.not40, label %bb.n, label %bb.h

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call fastcc ptr @mult(ptr noundef %0, ptr noundef nonnull %.1, ptr noundef nonnull %.1) ; 2 uses
  store ptr %i.ac, ptr %.1, align 8, !tbaa !18
  br label %.sink.split

.loopexit:                                        ; preds = %Bfree.exit, %bb.c
  %.030 = phi ptr [ %.028, %bb.c ], [ %.2, %Bfree.exit ]
  ret ptr %.030
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mult(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  %i.e = icmp slt i32 %i.b, %i.d                  ; 2 uses
  %spec.select = select i1 %i.e, ptr %2, ptr %1   ; 4 uses
  %spec.select66 = select i1 %i.e, ptr %1, ptr %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select66, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28   ; 3 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = icmp sgt i32 %i.l, %i.n
  %i.p = zext i1 %i.o to i32
  %.060 = add nsw i32 %i.g, %i.p                  ; 4 uses
  %i.q = icmp slt i32 %.060, 8
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = sext i32 %.060 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  store ptr %i.u, ptr %i.s, align 8, !tbaa !16
  br label %Balloc.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.v = shl nuw i32 1, %.060                     ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 32
  %i.aa = tail call ptr @jv_mem_alloc(i64 noundef %i.z) #10 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %.060, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %i.v, ptr %i.ac, align 4, !tbaa !25
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.t, %bb.c ], [ %i.aa, %bb.d ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 2 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !26
  %i.af = getelementptr i8, ptr %.0.i, i64 24     ; 3 uses
  %i.ag = sext i32 %i.l to i64
  %.idx = shl nsw i64 %i.ag, 2                    ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %.idx
  %i.ai = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Balloc.exit
  %.0.i81 = ptrtoaddr ptr %.0.i to i64            ; 3 uses
  %i.aj = add i64 %.idx, %.0.i81
  %i.ak = add i64 %i.aj, 24
  %i.al = add i64 %.0.i81, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.al)
  %i.am = add i64 %umax, -25
  %i.an = sub i64 %i.am, %.0.i81
  %i.ao = and i64 %i.an, -4
  %i.ap = add i64 %i.ao, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.ap, i1 false), !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %Balloc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 24 ; 2 uses
  %i.ar = sext i32 %i.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select66, i64 24 ; 2 uses
  %i.au = sext i32 %i.k to i64
  %.idx79 = shl nsw i64 %i.au, 2
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %.idx79
  %i.aw = icmp sgt i32 %i.k, 0
  br i1 %i.aw, label %.lr.ph73, label %.preheader

.preheader:                                       ; preds = %bb.g, %._crit_edge
  br i1 %i.ai, label %.lr.ph76, label %.critedge

.lr.ph73:                                         ; preds = %._crit_edge, %bb.g
  %.05471 = phi ptr [ %i.bn, %bb.g ], [ %i.af, %._crit_edge ] ; 2 uses
  %.05670 = phi ptr [ %i.ax, %bb.g ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05670, i64 4 ; 2 uses
  %i.ay = load i32, ptr %.05670, align 4, !tbaa !27 ; 2 uses
  %.not65 = icmp eq i32 %i.ay, 0
  br i1 %.not65, label %bb.g, label %.preheader67

.preheader67:                                     ; preds = %.lr.ph73
  %i.az = zext i32 %i.ay to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader67, %bb.e
  %.158 = phi ptr [ %i.ba, %bb.e ], [ %i.aq, %.preheader67 ] ; 2 uses
  %.055 = phi ptr [ %i.bk, %bb.e ], [ %.05471, %.preheader67 ] ; 3 uses
  %.0 = phi i64 [ %i.bi, %bb.e ], [ 0, %.preheader67 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.158, i64 4 ; 2 uses
  %i.bb = load i32, ptr %.158, align 4, !tbaa !27
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.az
  %i.be = load i32, ptr %.055, align 4, !tbaa !27
  %i.bf = zext i32 %i.be to i64
  %i.bg = add nuw nsw i64 %.0, %i.bf
  %i.bh = add nuw i64 %i.bg, %i.bd                ; 2 uses
  %i.bi = lshr i64 %i.bh, 32                      ; 2 uses
  %i.bj = trunc i64 %i.bh to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %.055, i64 4 ; 2 uses
  store i32 %i.bj, ptr %.055, align 4, !tbaa !27
  %i.bl = icmp ult ptr %i.ba, %i.as
  br i1 %i.bl, label %bb.e, label %bb.f, !llvm.loop !51

bb.f:                                             ; preds = %bb.e
  %i.bm = trunc nuw i64 %i.bi to i32
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph73, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.05471, i64 4
  %i.bo = icmp ult ptr %i.ax, %i.av
  br i1 %i.bo, label %.lr.ph73, label %.preheader, !llvm.loop !52

.lr.ph76:                                         ; preds = %.preheader, %bb.h
  %.175 = phi ptr [ %i.bp, %bb.h ], [ %i.ah, %.preheader ]
  %.05974 = phi i32 [ %i.br, %bb.h ], [ %i.l, %.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.175, i64 -4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !27
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph76
  %i.br = add nsw i32 %.05974, -1
  %3 = icmp samesign ugt i32 %.05974, 1
  br i1 %3, label %.lr.ph76, label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %.lr.ph76, %bb.h, %.preheader
  %.059.lcssa = phi i32 [ %i.l, %.preheader ], [ 0, %bb.h ], [ %.05974, %.lr.ph76 ]
  store i32 %.059.lcssa, ptr %i.ad, align 4, !tbaa !28
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lshift(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 -2147483593, -2147483648) %2) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ashr i32 %2, 5                           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %i.g = add nsw i32 %i.f, %i.b                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25   ; 2 uses
  %.not53 = icmp slt i32 %i.g, %i.i
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04455 = phi i32 [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %.04554 = phi i32 [ %i.k, %.lr.ph ], [ %i.i, %bb.a ]
  %i.j = add nsw i32 %.04455, 1                   ; 2 uses
  %i.k = shl i32 %.04554, 1                       ; 2 uses
  %.not = icmp slt i32 %i.g, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.044.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.j, %.lr.ph ] ; 4 uses
  %i.l = icmp slt i32 %.044.lcssa, 8
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.m = sext i32 %.044.lcssa to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  store ptr %i.p, ptr %i.n, align 8, !tbaa !16
  br label %Balloc.exit

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %i.q = shl nuw i32 1, %.044.lcssa               ; 2 uses
  %i.r = add nsw i32 %i.q, -1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 32
  %i.v = tail call ptr @jv_mem_alloc(i64 noundef %i.u) #10 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %.044.lcssa, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.q, ptr %i.x, align 4, !tbaa !25
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.c ], [ %i.v, %bb.d ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.z, align 8, !tbaa !26
  %i.aa = getelementptr i8, ptr %.0.i, i64 24     ; 2 uses
  %i.ab = icmp sgt i32 %i.b, 0
  br i1 %i.ab, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %Balloc.exit
  %i.ac = zext nneg i32 %i.b to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ad, i1 false), !tbaa !27
  %i.ae = add nsw i32 %i.b, -1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = getelementptr i8, ptr %.0.i, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ah, i64 28
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %.lr.ph58.preheader, %Balloc.exit
  %.040.lcssa = phi ptr [ %i.aa, %Balloc.exit ], [ %scevgep, %.lr.ph58.preheader ] ; 6 uses
  %.040.lcssa75 = ptrtoaddr ptr %.040.lcssa to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !28
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = and i32 %2, 31                          ; 3 uses
  %.not49 = icmp eq i32 %i.am, 0
  br i1 %.not49, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %._crit_edge59
  %i.an = shl nsw i64 %i.ak, 2
  %i.ao = add i64 %i.an, %i.a
  %i.ap = add i64 %i.ao, 24
  %i.aq = add i64 %i.a, 28
  %i.ar = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.aq)
  %i.as = add i64 %i.ar, -25
  %i.at = sub i64 %i.as, %i.a                     ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 60
  br i1 %min.iters.check, label %.preheader.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.aw = sub i64 %.040.lcssa75, %i.a
  %i.ax = add i64 %i.aw, -25
  %diff.check = icmp ult i64 %i.ax, 31
  br i1 %diff.check, label %.preheader.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ai, i64 %i.ay
  %i.ba = getelementptr i8, ptr %.040.lcssa, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.bb ; 2 uses
  %next.gep76 = getelementptr i8, ptr %.040.lcssa, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !27
  %wide.load77 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !27
  %i.bd = getelementptr i8, ptr %next.gep76, i64 16
  store <4 x i32> %wide.load, ptr %next.gep76, align 4, !tbaa !27
  store <4 x i32> %wide.load77, ptr %i.bd, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader79

.preheader.preheader79:                           ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.142.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.preheader.preheader ], [ %i.az, %middle.block ]
  %.2.ph = phi ptr [ %.040.lcssa, %vector.memcheck ], [ %.040.lcssa, %.preheader.preheader ], [ %i.ba, %middle.block ]
  br label %.preheader

bb.e:                                             ; preds = %._crit_edge59
  %i.bf = sub nuw nsw i32 32, %i.am
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.041 = phi ptr [ %i.ai, %bb.e ], [ %i.bk, %bb.f ] ; 3 uses
  %.1 = phi ptr [ %.040.lcssa, %bb.e ], [ %i.bj, %bb.f ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.e ], [ %i.bm, %bb.f ]
  %i.bg = load i32, ptr %.041, align 4, !tbaa !27
  %i.bh = shl i32 %i.bg, %i.am
  %i.bi = or i32 %i.bh, %.0
  %i.bj = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  store i32 %i.bi, ptr %.1, align 4, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %.041, i64 4 ; 2 uses
  %i.bl = load i32, ptr %.041, align 4, !tbaa !27
  %i.bm = lshr i32 %i.bl, %i.bf                   ; 3 uses
  %i.bn = icmp ult ptr %i.bk, %i.al
  br i1 %i.bn, label %bb.f, label %bb.g, !llvm.loop !56

bb.g:                                             ; preds = %bb.f
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !27
  %.not50 = icmp ne i32 %i.bm, 0
  %i.bo = zext i1 %.not50 to i32
  %spec.select = add nsw i32 %i.g, %i.bo
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader79, %.preheader
  %.142 = phi ptr [ %i.bp, %.preheader ], [ %.142.ph, %.preheader.preheader79 ] ; 2 uses
  %.2 = phi ptr [ %i.br, %.preheader ], [ %.2.ph, %.preheader.preheader79 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.142, i64 4 ; 2 uses
  %i.bq = load i32, ptr %.142, align 4, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i32 %i.bq, ptr %.2, align 4, !tbaa !27
  %i.bs = icmp ult ptr %i.bp, %i.al
  br i1 %i.bs, label %.preheader, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.g
  %.043 = phi i32 [ %spec.select, %bb.g ], [ %i.g, %middle.block ], [ %i.g, %.preheader ]
  store i32 %.043, ptr %i.y, align 4, !tbaa !28
  %i.bt = load i32, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 7
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit
  tail call void @jv_mem_free(ptr noundef nonnull %1) #10
  br label %Bfree.exit

bb.i:                                             ; preds = %.loopexit
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !16
  store ptr %i.bx, ptr %1, align 8, !tbaa !18
  store ptr %1, ptr %i.bw, align 8, !tbaa !16
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.h, %bb.i
  ret ptr %.0.i
end_hunk_2
begin_hunk_3_@jvp_dtoa:bb.a
  %.sroa.075.0 = phi double [ %.sroa.0.1, %bb.ax ], [ %i.fw, %._crit_edge875 ], [ %i.fw, %bb.au ] ; 2 uses
  %i.gm = fptosi double %.promoted891 to i32      ; 2 uses
  %i.gn = sitofp i32 %i.gm to double
  %i.go = fsub double %.promoted891, %i.gn        ; 2 uses
  %i.gp = trunc i32 %i.gm to i8
  %i.gq = add i8 %i.gp, 48
  store i8 %i.gq, ptr %.ptr750.ptr, align 4, !tbaa !21
  %i.gr = fsub double 1.000000e+00, %i.go
  %i.gs = fcmp olt double %i.gr, %.sroa.075.0
  br i1 %i.gs, label %.loopexit764, label %.lr.ph887.preheader

.lr.ph887.preheader:                              ; preds = %bb.ay
  %i.gt = add nuw i32 %.1490, 4
  %wide.trip.count = zext i32 %i.gt to i64
  br label %.lr.ph887

.lr.ph887:                                        ; preds = %.lr.ph887.preheader, %bb.ba
  %.0.add885 = phi i64 [ %.0.add, %bb.ba ], [ 5, %.lr.ph887.preheader ] ; 4 uses
  %i.gu = phi double [ %i.ha, %bb.ba ], [ %i.go, %.lr.ph887.preheader ] ; 2 uses
  %.sroa.075.1884 = phi double [ %i.gw, %bb.ba ], [ %.sroa.075.0, %.lr.ph887.preheader ] ; 2 uses
  %i.gv = fcmp olt double %i.gu, %.sroa.075.1884
  br i1 %i.gv, label %Bfree.exit695.loopexit765, label %bb.az

bb.az:                                            ; preds = %.lr.ph887
  %exitcond.not = icmp eq i64 %.0.add885, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit766, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gw = fmul double %.sroa.075.1884, 1.000000e+01 ; 2 uses
  %i.gx = fmul double %i.gu, 1.000000e+01         ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.0.add885
  %i.gy = fptosi double %i.gx to i32              ; 2 uses
  %i.gz = sitofp i32 %i.gy to double
  %i.ha = fsub double %i.gx, %i.gz                ; 2 uses
  %i.hb = trunc i32 %i.gy to i8
  %i.hc = add i8 %i.hb, 48
  %.0.add = add nuw nsw i64 %.0.add885, 1         ; 2 uses
  store i8 %i.hc, ptr %.0.ptr, align 1, !tbaa !21
  %i.hd = fsub double 1.000000e+00, %i.ha
  %i.he = fcmp olt double %i.hd, %i.gw
  br i1 %i.he, label %.loopexit764, label %.lr.ph887

bb.bb:                                            ; preds = %bb.at
  %i.hf = fmul double %i.fu, %i.fl                ; 2 uses
  %i.hg = fptosi double %.promoted891 to i32      ; 2 uses
  %i.hh = sitofp i32 %i.hg to double
  %i.hi = fsub double %.promoted891, %i.hh        ; 3 uses
  %i.hj = fcmp oeq double %i.hi, 0.000000e+00
  %i.hk = trunc i32 %i.hg to i8
  %i.hl = add i8 %i.hk, 48
  store i8 %i.hl, ptr %.ptr750.ptr, align 4, !tbaa !21
  %i.hm = icmp eq i32 %.1490, 1
  %i.hn = or i1 %i.hj, %i.hm
  br i1 %i.hn, label %._crit_edge900, label %.lr.ph899

._crit_edge900:                                   ; preds = %.lr.ph899, %bb.bb
  %.lcssa892 = phi double [ %i.hi, %bb.bb ], [ %i.ia, %.lr.ph899 ] ; 2 uses
  %.1.add.lcssa890 = phi i64 [ 5, %bb.bb ], [ %.1.add, %.lr.ph899 ] ; 2 uses
  %i.ho = fadd double %i.hf, 5.000000e-01
  %i.hp = fcmp ogt double %.lcssa892, %i.ho
  br i1 %i.hp, label %.loopexit764, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge900
  %i.hq = fsub double 5.000000e-01, %i.hf
  %i.hr = fcmp olt double %.lcssa892, %i.hq
  br i1 %i.hr, label %.preheader762.preheader, label %.loopexit766

.preheader762.preheader:                          ; preds = %bb.bc
  %.ptr753.le = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.1.add.lcssa890
  br label %.preheader762

.preheader762:                                    ; preds = %.preheader762.preheader, %.preheader762
  %.2 = phi ptr [ %i.hs, %.preheader762 ], [ %.ptr753.le, %.preheader762.preheader ] ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %.2, i64 -1 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !21
  %i.hu = icmp eq i8 %i.ht, 48
  br i1 %i.hu, label %.preheader762, label %Bfree.exit695, !llvm.loop !67

.lr.ph899:                                        ; preds = %bb.bb, %.lr.ph899
  %.1.add897 = phi i64 [ %.1.add, %.lr.ph899 ], [ 5, %bb.bb ] ; 2 uses
  %spec.select593896 = phi i32 [ %spec.select593, %.lr.ph899 ], [ %.1490, %bb.bb ]
  %i.hv = phi double [ %i.ia, %.lr.ph899 ], [ %i.hi, %bb.bb ]
  %.6508895 = phi i32 [ %i.hw, %.lr.ph899 ], [ 1, %bb.bb ]
  %i.hw = add nuw nsw i32 %.6508895, 1            ; 3 uses
  %i.hx = fmul double %i.hv, 1.000000e+01         ; 2 uses
  %.1.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.1.add897
  %i.hy = fptosi double %i.hx to i32              ; 2 uses
  %i.hz = sitofp i32 %i.hy to double
  %i.ia = fsub double %i.hx, %i.hz                ; 3 uses
  %i.ib = fcmp une double %i.ia, 0.000000e+00
  %spec.select593 = select i1 %i.ib, i32 %spec.select593896, i32 %i.hw ; 2 uses
  %i.ic = trunc i32 %i.hy to i8
  %i.id = add i8 %i.ic, 48
  %.1.add = add nuw nsw i64 %.1.add897, 1         ; 2 uses
  store i8 %i.id, ptr %.1.ptr, align 1, !tbaa !21
  %i.ie = icmp eq i32 %i.hw, %spec.select593
  br i1 %i.ie, label %._crit_edge900, label %.lr.ph899

.loopexit766:                                     ; preds = %bb.az, %bb.bc, %bb.as, %bb.ao
  store double %i.dt, ptr %7, align 8, !tbaa !21
  %i.if = bitcast double %i.dt to i64             ; 2 uses
  %i.ig = trunc i64 %i.if to i32
  %i.ih = lshr i64 %i.if, 32
  %i.ii = trunc nuw i64 %i.ih to i32
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit766, %rv_alloc.exit
  %i.ij = phi i32 [ %i.ig, %.loopexit766 ], [ %i.cn, %rv_alloc.exit ] ; 2 uses
  %i.ik = phi i32 [ %i.ii, %.loopexit766 ], [ %i.co, %rv_alloc.exit ] ; 2 uses
  %i.il = load i32, ptr %i.b, align 4, !tbaa !27  ; 2 uses
  %i.im = icmp sgt i32 %i.il, -1
  %i.in = icmp slt i32 %.2474, 15
  %or.cond16 = and i1 %i.in, %i.im
  br i1 %or.cond16, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %bb.bd
  %i.io = sext i32 %.2474 to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr @tens, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !23 ; 7 uses
  %i.ir = icmp slt i32 %.0523704, 0
  %i.is = icmp slt i32 %.0489707, 1
  %or.cond18 = and i1 %i.is, %i.ir
  br i1 %or.cond18, label %bb.bf, label %.preheader

.preheader:                                       ; preds = %bb.be
  %.promoted911 = load double, ptr %7, align 8, !tbaa !21 ; 2 uses
  %i.it = fdiv double %.promoted911, %i.iq
  %i.iu = fptosi double %i.it to i32              ; 3 uses
  %i.iv = sitofp i32 %i.iu to double
  %i.iw = fneg double %i.iv
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.iw, double %i.iq, double %.promoted911) ; 3 uses
  %i.iy = trunc i32 %i.iu to i8
  %i.iz = add i8 %i.iy, 48
  store i8 %i.iz, ptr %.ptr750.ptr, align 4, !tbaa !21
  %i.ja = fcmp une double %i.ix, 0.000000e+00
  br i1 %i.ja, label %.lr.ph917.preheader, label %Bfree.exit695.loopexit

.lr.ph917.preheader:                              ; preds = %.preheader
  %i.jb = icmp eq i32 %.0489707, 1
  br i1 %i.jb, label %.lr.ph917._crit_edge, label %.lr.ph1279

bb.bf:                                            ; preds = %bb.be
  %i.jc = icmp slt i32 %.0489707, 0
  br i1 %i.jc, label %cmp.exit641.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jd = load double, ptr %7, align 8, !tbaa !21
  %i.je = fmul double %i.iq, 5.000000e+00
  %i.jf = fcmp ugt double %i.jd, %i.je
  br i1 %i.jf, label %cmp.exit641.thread724, label %cmp.exit641.thread

.lr.ph917:                                        ; preds = %.lr.ph1279
  %i.jg = add nuw nsw i32 %.75099151278, 1        ; 2 uses
  %i.jh = icmp eq i32 %i.jg, %.0489707
  br i1 %i.jh, label %.lr.ph917._crit_edge, label %.lr.ph1279

.lr.ph917._crit_edge:                             ; preds = %.lr.ph917, %.lr.ph917.preheader
  %.4.add916.lcssa = phi i64 [ 5, %.lr.ph917.preheader ], [ %.4.add, %.lr.ph917 ] ; 3 uses
  %.lcssa1199 = phi double [ %i.ix, %.lr.ph917.preheader ], [ %i.jy, %.lr.ph917 ]
  %.lcssa1197 = phi i32 [ %i.iu, %.lr.ph917.preheader ], [ %i.jv, %.lr.ph917 ]
  %i.ji = fmul double %.lcssa1199, 2.000000e+00   ; 2 uses
  %i.jj = fcmp ogt double %i.ji, %i.iq
  br i1 %i.jj, label %.loopexit764, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph917._crit_edge
  %.ptr755.le = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.4.add916.lcssa
  %i.jk = fcmp une double %i.ji, %i.iq
  %i.jl = and i32 %.lcssa1197, 1
  %.not582 = icmp eq i32 %i.jl, 0
  %or.cond594 = or i1 %.not582, %i.jk
  br i1 %or.cond594, label %Bfree.exit695, label %.loopexit764

.loopexit764:                                     ; preds = %bb.ba, %bb.ay, %bb.bh, %.lr.ph917._crit_edge, %._crit_edge900
  %.5477 = phi i32 [ %.2474, %.lr.ph917._crit_edge ], [ %.2474, %bb.bh ], [ %.3475, %._crit_edge900 ], [ %.3475, %bb.ay ], [ %.3475, %bb.ba ] ; 2 uses
  %.5.idx = phi i64 [ %.4.add916.lcssa, %.lr.ph917._crit_edge ], [ %.4.add916.lcssa, %bb.bh ], [ %.1.add.lcssa890, %._crit_edge900 ], [ 5, %bb.ay ], [ %.0.add, %bb.ba ]
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %.loopexit764
  %.6.idx = phi i64 [ %.5.idx, %.loopexit764 ], [ %.6.add, %bb.bj ] ; 2 uses
  %.6.add = add nsw i64 %.6.idx, -1               ; 4 uses
  %.ptr752 = getelementptr inbounds i8, ptr %.0.i.i, i64 %.6.add
  %i.jm = load i8, ptr %.ptr752, align 1, !tbaa !21 ; 2 uses
  %i.jn = icmp eq i8 %i.jm, 57
  br i1 %i.jn, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %bb.bi
  %i.jo = icmp eq i64 %.6.add, 4
  br i1 %i.jo, label %bb.bk, label %bb.bi, !llvm.loop !68

bb.bk:                                            ; preds = %bb.bj
  %i.jp = add nsw i32 %.5477, 1
  store i8 48, ptr %.ptr750.ptr, align 4, !tbaa !21
  br label %bb.bl

.loopexit:                                        ; preds = %bb.bi
  %.ptr752.le = getelementptr inbounds i8, ptr %.0.i.i, i64 %.6.add
  %i.jq = add i8 %i.jm, 1
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit, %bb.bk
  %.6.idx1285 = phi i64 [ 5, %bb.bk ], [ %.6.idx, %.loopexit ]
  %i.jr = phi i8 [ 49, %bb.bk ], [ %i.jq, %.loopexit ]
  %.ptr752770 = phi ptr [ %.ptr750.ptr, %bb.bk ], [ %.ptr752.le, %.loopexit ]
  %.6478 = phi i32 [ %i.jp, %bb.bk ], [ %.5477, %.loopexit ]
  %.6.ptr772 = getelementptr inbounds i8, ptr %.0.i.i, i64 %.6.idx1285
  store i8 %i.jr, ptr %.ptr752770, align 1, !tbaa !21
  br label %Bfree.exit695

.lr.ph1279:                                       ; preds = %.lr.ph917.preheader, %.lr.ph917
  %.75099151278 = phi i32 [ %i.jg, %.lr.ph917 ], [ 1, %.lr.ph917.preheader ]
  %i.js = phi double [ %i.jy, %.lr.ph917 ], [ %i.ix, %.lr.ph917.preheader ]
  %.4.add9161277 = phi i64 [ %.4.add, %.lr.ph917 ], [ 5, %.lr.ph917.preheader ] ; 2 uses
  %i.jt = fmul double %i.js, 1.000000e+01         ; 2 uses
  %.4.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.4.add9161277
  %i.ju = fdiv double %i.jt, %i.iq
  %i.jv = fptosi double %i.ju to i32              ; 3 uses
  %i.jw = sitofp i32 %i.jv to double
  %i.jx = fneg double %i.jw
  %i.jy = tail call double @llvm.fmuladd.f64(double %i.jx, double %i.iq, double %i.jt) ; 3 uses
  %i.jz = trunc i32 %i.jv to i8
  %i.ka = add i8 %i.jz, 48
  %.4.add = add nuw nsw i64 %.4.add9161277, 1     ; 3 uses
  store i8 %i.ka, ptr %.4.ptr, align 1, !tbaa !21
  %i.kb = fcmp une double %i.jy, 0.000000e+00
  br i1 %i.kb, label %.lr.ph917, label %Bfree.exit695.loopexit

bb.bm:                                            ; preds = %bb.bd
  %i.kc = icmp eq i32 %.2470715, 0                ; 5 uses
  br i1 %i.kc, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kd = add nsw i32 %i.il, 1075
  %i.ke = sub nsw i32 54, %i.cp
  %i.kf = select i1 %.not555.not, i32 %i.kd, i32 %i.ke ; 2 uses
  %i.kg = add nsw i32 %i.kf, %.1517
  %i.kh = add nsw i32 %i.kf, %.1463
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !16 ; 3 uses
  %.not.i.i623 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i623, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !18
  store ptr %i.kk, ptr %i.ki, align 8, !tbaa !16
  br label %i2b.exit

bb.bp:                                            ; preds = %bb.bn
  %i.kl = tail call ptr @jv_mem_alloc(i64 noundef 36) #10 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i32 1, ptr %i.km, align 8, !tbaa !19
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  store i32 2, ptr %i.kn, align 4, !tbaa !25
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.bo, %bb.bp
  %.0.i.i624 = phi ptr [ %i.kj, %bb.bo ], [ %i.kl, %bb.bp ] ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i.i624, i64 20
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i.i624, i64 16
  store i32 0, ptr %i.kp, align 8, !tbaa !26
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i.i624, i64 24
  store i32 1, ptr %i.kq, align 8, !tbaa !27
  store i32 1, ptr %i.ko, align 4, !tbaa !28
  br label %bb.bq

bb.bq:                                            ; preds = %i2b.exit, %bb.bm
  %.2518 = phi i32 [ %i.kg, %i2b.exit ], [ %.1517, %bb.bm ] ; 2 uses
  %.2464 = phi i32 [ %i.kh, %i2b.exit ], [ %.1463, %bb.bm ] ; 4 uses
  %.0423 = phi ptr [ %.0.i.i624, %i2b.exit ], [ null, %bb.bm ] ; 3 uses
  %i.kr = icmp sgt i32 %.1517, 0
  %i.ks = icmp sgt i32 %.2464, 0
  %or.cond20 = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond20, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.kt = tail call i32 @llvm.umin.i32(i32 %.1517, i32 %.2464) ; 3 uses
  %i.ku = sub nsw i32 %.2518, %i.kt
  %i.kv = sub nsw i32 %.1517, %i.kt
  %i.kw = sub nsw i32 %.2464, %i.kt
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.3519 = phi i32 [ %i.ku, %bb.br ], [ %.2518, %bb.bq ] ; 3 uses
  %.0467 = phi i32 [ %i.kv, %bb.br ], [ %.1517, %bb.bq ]
  %.3465 = phi i32 [ %i.kw, %bb.br ], [ %.2464, %bb.bq ] ; 3 uses
  %.not566 = icmp eq i32 %.0515, 0
  br i1 %.not566, label %Bfree.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.kc, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kx = tail call fastcc ptr @pow5mult(ptr noundef %0, ptr noundef %.0423, i32 noundef %.0515) ; 4 uses
  %i.ky = tail call fastcc ptr @mult(ptr noundef %0, ptr noundef %i.kx, ptr noundef %i.ap) ; 3 uses
  %.not.i625 = icmp eq ptr %i.ap, null
  br i1 %.not.i625, label %Bfree.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !19 ; 2 uses
  %i.lb = icmp sgt i32 %i.la, 7
  br i1 %i.lb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  tail call void @jv_mem_free(ptr noundef nonnull %i.ap) #10
  br label %Bfree.exit

bb.bx:                                            ; preds = %bb.bv
  %i.lc = sext i32 %i.la to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %0, i64 %i.lc ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !16
  store ptr %i.le, ptr %i.ap, align 8, !tbaa !18
  store ptr %i.ap, ptr %i.ld, align 8, !tbaa !16
  br label %Bfree.exit

bb.by:                                            ; preds = %bb.bt
  %i.lf = tail call fastcc ptr @pow5mult(ptr noundef %0, ptr noundef %i.ap, i32 noundef %.0515)
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.by, %bb.bs
  %.1445 = phi ptr [ %i.ap, %bb.bs ], [ %i.lf, %bb.by ], [ %i.ky, %bb.bu ], [ %i.ky, %bb.bw ], [ %i.ky, %bb.bx ] ; 2 uses
  %.2425 = phi ptr [ %.0423, %bb.bs ], [ %.0423, %bb.by ], [ %i.kx, %bb.bu ], [ %i.kx, %bb.bw ], [ %i.kx, %bb.bx ] ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !16 ; 3 uses
  %.not.i.i626 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i626, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %Bfree.exit
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !18
  store ptr %i.li, ptr %i.lg, align 8, !tbaa !16
  br label %i2b.exit628

bb.ca:                                            ; preds = %Bfree.exit
  %i.lj = tail call ptr @jv_mem_alloc(i64 noundef 36) #10 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i32 1, ptr %i.lk, align 8, !tbaa !19
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  store i32 2, ptr %i.ll, align 4, !tbaa !25
  br label %i2b.exit628

i2b.exit628:                                      ; preds = %bb.bz, %bb.ca
  %.0.i.i627 = phi ptr [ %i.lh, %bb.bz ], [ %i.lj, %bb.ca ] ; 5 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i.i627, i64 20
  %i.ln = getelementptr inbounds nuw i8, ptr %.0.i.i627, i64 16
  store i32 0, ptr %i.ln, align 8, !tbaa !26
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.i.i627, i64 24
  store i32 1, ptr %i.lo, align 8, !tbaa !27
  store i32 1, ptr %i.lm, align 4, !tbaa !28
  %i.lp = icmp sgt i32 %.0461, 0
  br i1 %i.lp, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %i2b.exit628
  %i.lq = tail call fastcc ptr @pow5mult(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i627, i32 noundef %.0461)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %i2b.exit628
  %.0418 = phi ptr [ %i.lq, %bb.cb ], [ %.0.i.i627, %i2b.exit628 ] ; 4 uses
  %i.lr = icmp sgt i32 %spec.select592, 1
  %or.cond22.not569 = and i1 %i.lr, %i.kc
  %i.ls = icmp ne i32 %i.ij, 0
  %or.cond32 = select i1 %or.cond22.not569, i1 true, i1 %i.ls
  br i1 %or.cond32, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lt = and i32 %i.ik, 1048575
  %.not570 = icmp ne i32 %i.lt, 0
  %i.lu = and i32 %i.ik, 2145386496
  %.not571 = icmp eq i32 %i.lu, 0
  %or.cond595 = or i1 %.not570, %.not571
  br i1 %or.cond595, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lv = add nsw i32 %.3519, 1
  %i.lw = add nsw i32 %.3465, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce, %bb.cc
  %.4520 = phi i32 [ %.3519, %bb.cc ], [ %.3519, %bb.cd ], [ %i.lv, %bb.ce ]
  %.4466 = phi i32 [ %.3465, %bb.cc ], [ %.3465, %bb.cd ], [ %i.lw, %bb.ce ] ; 2 uses
  %.not575 = phi i1 [ true, %bb.cc ], [ true, %bb.cd ], [ false, %bb.ce ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.0418, i64 20
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !28
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr [4 x i8], ptr %.0418, i64 %i.lz
  %i.mb = getelementptr i8, ptr %i.ma, i64 20
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !27 ; 3 uses
  %.not.i.i629 = icmp ult i32 %i.mc, 65536        ; 2 uses
  %i.md = shl nuw i32 %i.mc, 16
  %spec.select.i.i = select i1 %.not.i.i629, i32 %i.md, i32 %i.mc ; 3 uses
  %spec.select26.i.i = select i1 %.not.i.i629, i32 16, i32 0 ; 2 uses
  %.not21.i.i = icmp ult i32 %spec.select.i.i, 16777216 ; 2 uses
  %i.me = or disjoint i32 %spec.select26.i.i, 8
  %i.mf = shl nuw i32 %spec.select.i.i, 8
  %.117.i.i = select i1 %.not21.i.i, i32 %i.mf, i32 %spec.select.i.i ; 3 uses
  %.1.i.i = select i1 %.not21.i.i, i32 %i.me, i32 %spec.select26.i.i ; 2 uses
  %.not22.i.i = icmp ult i32 %.117.i.i, 268435456 ; 2 uses
  %i.mg = or disjoint i32 %.1.i.i, 4
  %i.mh = shl nuw i32 %.117.i.i, 4
  %.218.i.i = select i1 %.not22.i.i, i32 %i.mh, i32 %.117.i.i ; 3 uses
  %.2.i.i = select i1 %.not22.i.i, i32 %i.mg, i32 %.1.i.i ; 2 uses
  %.not23.i.i = icmp ult i32 %.218.i.i, 1073741824 ; 2 uses
  %i.mi = or disjoint i32 %.2.i.i, 2
  %i.mj = shl nuw i32 %.218.i.i, 2
  %.319.i.i = select i1 %.not23.i.i, i32 %i.mj, i32 %.218.i.i ; 2 uses
  %.3.i.i = select i1 %.not23.i.i, i32 %i.mi, i32 %.2.i.i ; 2 uses
  %i.mk = add nuw nsw i32 %.3.i.i, 1
end_hunk_3
begin_hunk_4_@quorem:bb.a
  %i.al = sext i32 %i.aj to i64                   ; 2 uses
  %.idx.i = shl nsw i64 %i.al, 2
  %.add.i = add nsw i64 %.idx.i, 24
  %i.am = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.017.idx.i = phi i64 [ %.add.i, %bb.g ], [ %.017.add.i, %bb.j ] ; 2 uses
  %.0.i = phi ptr [ %i.am, %bb.g ], [ %i.ao, %bb.j ]
  %.017.add.i = add nsw i64 %.017.idx.i, -4       ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %0, i64 %.017.add.i
  %i.an = load i32, ptr %.ptr.i, align 4, !tbaa !27 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.0.i, i64 -4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27 ; 2 uses
  %.not23.i = icmp eq i32 %i.an, %i.ap
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ult i32 %i.an, %i.ap
  br i1 %i.aq, label %cmp.exit.thread2, label %cmp.exit.thread.preheader

bb.j:                                             ; preds = %bb.h
  %.not24.i = icmp sgt i64 %.017.idx.i, 28
  br i1 %.not24.i, label %bb.h, label %cmp.exit.thread.preheader

cmp.exit:                                         ; preds = %bb.f
  %.not4 = icmp slt i32 %i.aj, %i.ak
  br i1 %.not4, label %cmp.exit.thread2, label %cmp.exit.thread.preheader

cmp.exit.thread.preheader:                        ; preds = %bb.j, %bb.i, %cmp.exit
  br label %cmp.exit.thread

cmp.exit.thread:                                  ; preds = %cmp.exit.thread.preheader, %cmp.exit.thread
  %.170 = phi ptr [ %i.bb, %cmp.exit.thread ], [ %.ptr80.ptr, %cmp.exit.thread.preheader ] ; 3 uses
  %.165 = phi ptr [ %i.ar, %cmp.exit.thread ], [ %i.f, %cmp.exit.thread.preheader ] ; 2 uses
  %.163 = phi i64 [ %i.az, %cmp.exit.thread ], [ 0, %cmp.exit.thread.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.165, i64 4 ; 2 uses
  %i.as = load i32, ptr %.165, align 4, !tbaa !27
  %i.at = zext i32 %i.as to i64
  %i.au = load i32, ptr %.170, align 4, !tbaa !27
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %.163, %i.at
  %i.ax = sub nsw i64 %i.av, %i.aw                ; 2 uses
  %i.ay = lshr i64 %i.ax, 32
  %i.az = and i64 %i.ay, 1
  %i.ba = trunc i64 %i.ax to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.170, i64 4
  store i32 %i.ba, ptr %.170, align 4, !tbaa !27
  %.not83 = icmp ugt ptr %i.ar, %i.i
  br i1 %.not83, label %bb.k, label %cmp.exit.thread, !llvm.loop !75

bb.k:                                             ; preds = %cmp.exit.thread
  %i.bc = add i32 %i.n, 1                         ; 2 uses
  %i.bd = sext i32 %.172 to i64
  %.idx85 = shl nsw i64 %i.bd, 2                  ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 %.idx85
  %.ptr87 = getelementptr i8, ptr %i.be, i64 24
  %i.bf = load i32, ptr %.ptr87, align 4, !tbaa !27
  %.not84 = icmp eq i32 %i.bf, 0
  br i1 %.not84, label %.preheader, label %cmp.exit.thread2

.preheader:                                       ; preds = %bb.k
  %i.bg = icmp sgt i32 %.172, 1
  br i1 %i.bg, label %.lr.ph21.preheader, label %.critedge2

.lr.ph21.preheader:                               ; preds = %.preheader
  %.168.add18 = add nuw nsw i64 %.idx85, 20
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %bb.l
  %.168.add20 = phi i64 [ %.168.add, %bb.l ], [ %.168.add18, %.lr.ph21.preheader ] ; 3 uses
  %.219 = phi i32 [ %i.bi, %bb.l ], [ %.172, %.lr.ph21.preheader ] ; 2 uses
  %.ptr86 = getelementptr inbounds i8, ptr %0, i64 %.168.add20
  %i.bh = load i32, ptr %.ptr86, align 4, !tbaa !27
  %.not88 = icmp eq i32 %i.bh, 0
  br i1 %.not88, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %.lr.ph21
  %i.bi = add nsw i32 %.219, -1                   ; 2 uses
  %.168.add = add nsw i64 %.168.add20, -4
  %i.bj = icmp sgt i64 %.168.add20, 28
  br i1 %i.bj, label %.lr.ph21, label %.critedge2, !llvm.loop !76

.critedge2:                                       ; preds = %.lr.ph21, %bb.l, %.preheader
  %.2.lcssa = phi i32 [ %.172, %.preheader ], [ %i.bi, %bb.l ], [ %.219, %.lr.ph21 ]
  store i32 %.2.lcssa, ptr %i.c, align 4, !tbaa !28
  br label %cmp.exit.thread2

cmp.exit.thread2:                                 ; preds = %bb.i, %cmp.exit, %.critedge2, %bb.k, %bb.a
  %.073 = phi i32 [ 0, %bb.a ], [ %i.bc, %bb.k ], [ %i.bc, %.critedge2 ], [ %i.n, %cmp.exit ], [ %i.n, %bb.i ]
  ret i32 %.073
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jvp_dtoa_fmt(ptr nofree noundef captures(none) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) %1, double noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = call ptr @jvp_dtoa(ptr noundef %0, double noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 10 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !27
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.044 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 11 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !27   ; 9 uses
  %i.h = icmp eq i32 %i.g, 9999
  br i1 %i.h, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c, %.preheader
  %.145 = phi ptr [ %i.k, %.preheader ], [ %.044, %bb.c ] ; 2 uses
  %.041 = phi ptr [ %i.i, %.preheader ], [ %i.d, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.041, i64 1
  %i.j = load i8, ptr %.041, align 1, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.145, i64 1
  store i8 %i.j, ptr %.145, align 1, !tbaa !21
  %.not57 = icmp eq i8 %i.j, 0
  br i1 %.not57, label %.loopexit, label %.preheader, !llvm.loop !77

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i32 %i.g, -3
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %i.g to i64
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.d to i64
  %reass.sub = sub i64 %i.o, %i.p
  %i.q = add i64 %reass.sub, 15
  %i.r = icmp slt i64 %i.q, %i.m
  br i1 %i.r, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.t = load i8, ptr %i.d, align 1, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %.044, i64 1 ; 2 uses
  store i8 %i.t, ptr %.044, align 1, !tbaa !21
  %i.v = load i8, ptr %i.s, align 1, !tbaa !21
  %.not54 = icmp eq i8 %i.v, 0
  br i1 %.not54, label %.loopexit60, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.044, i64 2 ; 3 uses
  store i8 46, ptr %i.u, align 1, !tbaa !21
  %i.x = load i8, ptr %i.s, align 1, !tbaa !21    ; 2 uses
  store i8 %i.x, ptr %i.w, align 1, !tbaa !21
  %.not5575 = icmp eq i8 %i.x, 0
  br i1 %.not5575, label %.loopexit60, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.g, %.lr.ph79
  %.14277 = phi ptr [ %i.y, %.lr.ph79 ], [ %i.s, %bb.g ]
  %.24676 = phi ptr [ %i.z, %.lr.ph79 ], [ %i.w, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %.14277, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.24676, i64 1 ; 3 uses
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !21   ; 2 uses
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !21
  %.not55 = icmp eq i8 %i.aa, 0
  br i1 %.not55, label %.loopexit60, label %.lr.ph79, !llvm.loop !78

.loopexit60:                                      ; preds = %.lr.ph79, %bb.g, %bb.f
  %.347 = phi ptr [ %i.u, %bb.f ], [ %i.w, %bb.g ], [ %i.z, %.lr.ph79 ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.347, i64 1 ; 2 uses
  store i8 101, ptr %.347, align 1, !tbaa !21
  %i.ac = icmp slt i32 %i.g, 1
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit60
  store i8 45, ptr %i.ab, align 1, !tbaa !21
  %i.ad = sub nsw i32 1, %i.g
  br label %bb.j

bb.i:                                             ; preds = %.loopexit60
  %i.ae = add nsw i32 %i.g, -1
  store i8 43, ptr %i.ab, align 1, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi i32 [ %i.ae, %bb.i ], [ %i.ad, %bb.h ] ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.043 = phi i32 [ 10, %bb.j ], [ %i.ag, %bb.k ] ; 10 uses
  %.0 = phi i32 [ 2, %bb.j ], [ %i.ah, %bb.k ]    ; 6 uses
  %i.ag = mul nuw nsw i32 %.043, 10               ; 2 uses
  %.not56 = icmp samesign ugt i32 %i.ag, %i.af
  %i.ah = add nuw nsw i32 %.0, 1
  br i1 %.not56, label %.preheader59, label %bb.k, !llvm.loop !79

.preheader59:                                     ; preds = %bb.k
  %.4 = getelementptr inbounds nuw i8, ptr %.347, i64 2
  %3 = udiv i32 %i.af, %.043                      ; 3 uses
  %.recomposed = urem i32 %i.af, %.043
  %i.ai = trunc i32 %3 to i8
  %i.aj = add i8 %i.ai, 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.347, i64 3 ; 3 uses
  store i8 %i.aj, ptr %.4, align 1, !tbaa !21
  %i.al = icmp samesign ult i32 %.0, 2
  br i1 %i.al, label %.loopexit.sink.split, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.preheader59
  %i.am = and i32 %.0, 1
  %lcmp.mod.not.not = icmp eq i32 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph82.prol, label %.lr.ph82.prol.loopexit

.lr.ph82.prol:                                    ; preds = %.lr.ph82.preheader
  %i.an = add nsw i32 %.0, -1
  %i.ao = mul nuw nsw i32 %3, %.043               ; 0 uses
  %i.ap = mul nsw i32 %.recomposed, 10            ; 2 uses
  %i.aq = sdiv i32 %i.ap, %.043                   ; 2 uses
  %i.ar = trunc i32 %i.aq to i8
  %i.as = add i8 %i.ar, 48
  %i.at = getelementptr inbounds nuw i8, ptr %.347, i64 4 ; 2 uses
  store i8 %i.as, ptr %i.ak, align 1, !tbaa !21
  br label %.lr.ph82.prol.loopexit

.lr.ph82.prol.loopexit:                           ; preds = %.lr.ph82.prol, %.lr.ph82.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph82.preheader ], [ %i.at, %.lr.ph82.prol ]
  %.unr = phi i32 [ %i.af, %.lr.ph82.preheader ], [ %i.ap, %.lr.ph82.prol ]
  %.unr120 = phi ptr [ %i.ak, %.lr.ph82.preheader ], [ %i.at, %.lr.ph82.prol ]
  %.unr121 = phi i32 [ %3, %.lr.ph82.preheader ], [ %i.aq, %.lr.ph82.prol ]
  %.181.unr = phi i32 [ %.0, %.lr.ph82.preheader ], [ %i.an, %.lr.ph82.prol ]
  %i.au = icmp eq i32 %.0, 2
  br i1 %i.au, label %.loopexit.sink.split, label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82
  %i.av = phi i32 [ %i.bh, %.lr.ph82 ], [ %.unr, %.lr.ph82.prol.loopexit ]
  %i.aw = phi ptr [ %i.bl, %.lr.ph82 ], [ %.unr120, %.lr.ph82.prol.loopexit ] ; 3 uses
  %i.ax = phi i32 [ %i.bi, %.lr.ph82 ], [ %.unr121, %.lr.ph82.prol.loopexit ]
  %.181 = phi i32 [ %i.bf, %.lr.ph82 ], [ %.181.unr, %.lr.ph82.prol.loopexit ] ; 2 uses
  %i.ay = mul nsw i32 %i.ax, %.043
  %i.az = sub nsw i32 %i.av, %i.ay
  %i.ba = mul nsw i32 %i.az, 10                   ; 2 uses
  %i.bb = sdiv i32 %i.ba, %.043                   ; 2 uses
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = add i8 %i.bc, 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.bd, ptr %i.aw, align 1, !tbaa !21
  %i.bf = add nsw i32 %.181, -2
  %i.bg = mul nsw i32 %i.bb, %.043                ; 0 uses
  %.recomposed127 = srem i32 %i.ba, %.043
  %i.bh = mul nsw i32 %.recomposed127, 10         ; 2 uses
  %i.bi = sdiv i32 %i.bh, %.043                   ; 2 uses
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = add i8 %i.bj, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 2 ; 2 uses
  store i8 %i.bk, ptr %i.be, align 1, !tbaa !21
  %i.bm = icmp slt i32 %.181, 4
  br i1 %i.bm, label %.loopexit.sink.split, label %.lr.ph82

bb.l:                                             ; preds = %bb.e
  %i.bn = icmp slt i32 %i.g, 1
  br i1 %i.bn, label %bb.m, label %.preheader63

.preheader63:                                     ; preds = %bb.l
  %i.bo = load i8, ptr %i.d, align 1, !tbaa !21   ; 2 uses
  store i8 %i.bo, ptr %.044, align 1, !tbaa !21
  %.not5164 = icmp eq i8 %i.bo, 0
  br i1 %.not5164, label %.lr.ph67.preheader, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.044, i64 1
  store i8 48, ptr %.044, align 1, !tbaa !21
  %i.bq = getelementptr i8, ptr %.044, i64 2      ; 2 uses
  store i8 46, ptr %i.bp, align 1, !tbaa !21
  %i.br = icmp slt i32 %i.g, 0
  br i1 %i.br, label %.lr.ph72.preheader, label %.preheader61.preheader

.lr.ph72.preheader:                               ; preds = %bb.m
  %i.bs = xor i32 %i.g, -1
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i8 48, i64 %i.bu, i1 false), !tbaa !21
  %i.bv = getelementptr i8, ptr %.044, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.bv, i64 3
  br label %.preheader61.preheader

.preheader61.preheader:                           ; preds = %.lr.ph72.preheader, %bb.m
  %.7.ph = phi ptr [ %scevgep, %.lr.ph72.preheader ], [ %i.bq, %bb.m ]
  br label %.preheader61

.preheader61:                                     ; preds = %.preheader61.preheader, %.preheader61
  %.7 = phi ptr [ %i.by, %.preheader61 ], [ %.7.ph, %.preheader61.preheader ] ; 2 uses
  %.2 = phi ptr [ %i.bw, %.preheader61 ], [ %i.d, %.preheader61.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.bx = load i8, ptr %.2, align 1, !tbaa !21    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.bx, ptr %.7, align 1, !tbaa !21
  %.not53 = icmp eq i8 %i.bx, 0
  br i1 %.not53, label %.loopexit, label %.preheader61, !llvm.loop !80

.lr.ph:                                           ; preds = %.preheader63, %bb.p
  %.pn = phi ptr [ %i.bz, %bb.p ], [ %i.d, %.preheader63 ]
  %.865 = phi ptr [ %.9, %bb.p ], [ %.044, %.preheader63 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.865, i64 1 ; 4 uses
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !27
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !27
  %i.cd = icmp eq i32 %i.cc, 0
  %.pre91 = load i8, ptr %i.bz, align 1, !tbaa !21 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %.not52 = icmp eq i8 %.pre91, 0
  br i1 %.not52, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  store i8 0, ptr %i.ca, align 1, !tbaa !21
  br label %thread-pre-split

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.865, i64 2
  store i8 46, ptr %i.ca, align 1, !tbaa !21
  %.pre = load i8, ptr %i.bz, align 1, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph
  %i.cf = phi i8 [ %.pre, %bb.o ], [ %.pre91, %.lr.ph ] ; 2 uses
  %.9 = phi ptr [ %i.ce, %bb.o ], [ %i.ca, %.lr.ph ] ; 3 uses
  store i8 %i.cf, ptr %.9, align 1, !tbaa !21
  %.not51 = icmp eq i8 %i.cf, 0
  br i1 %.not51, label %thread-pre-split, label %.lr.ph, !llvm.loop !81

thread-pre-split:                                 ; preds = %bb.p, %.thread
  %.998 = phi ptr [ %i.ca, %.thread ], [ %.9, %bb.p ] ; 2 uses
  %.pr58.pre = load i32, ptr %i.a, align 4, !tbaa !27
  %i.cg = icmp sgt i32 %.pr58.pre, 0
  br i1 %i.cg, label %.lr.ph67.preheader, label %.loopexit.sink.split

.lr.ph67.preheader:                               ; preds = %.preheader63, %thread-pre-split
  %.1066.ph = phi ptr [ %.044, %.preheader63 ], [ %.998, %thread-pre-split ]
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %.1066 = phi ptr [ %i.ch, %.lr.ph67 ], [ %.1066.ph, %.lr.ph67.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1066, i64 1 ; 2 uses
  store i8 48, ptr %.1066, align 1, !tbaa !21
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !27  ; 2 uses
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.a, align 4, !tbaa !27
  %i.ck = icmp sgt i32 %i.ci, 1
  br i1 %i.ck, label %.lr.ph67, label %.loopexit.sink.split, !llvm.loop !82

.loopexit.sink.split:                             ; preds = %.lr.ph67, %.lr.ph82.prol.loopexit, %.lr.ph82, %thread-pre-split, %.preheader59
  %.lcssa.sink = phi ptr [ %i.bl, %.lr.ph82 ], [ %i.ak, %.preheader59 ], [ %.998, %thread-pre-split ], [ %.lcssa.unr, %.lr.ph82.prol.loopexit ], [ %i.ch, %.lr.ph67 ]
  store i8 0, ptr %.lcssa.sink, align 1, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader61, %.preheader, %.loopexit.sink.split
  %i.cl = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !27 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !19
  %i.co = shl nuw i32 1, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !25
  %i.cq = icmp sgt i32 %i.cm, 7
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  call void @jv_mem_free(ptr noundef nonnull %i.cl) #10
  br label %jvp_freedtoa.exit

bb.r:                                             ; preds = %.loopexit
  %i.cr = sext i32 %i.cm to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cr ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !16
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !18
  store ptr %i.cl, ptr %i.cs, align 8, !tbaa !16
  br label %jvp_freedtoa.exit

jvp_freedtoa.exit:                                ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %1
}

declare ptr @jv_mem_alloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc double @b2d(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !28   ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr i8, ptr %i.a, i64 %.idx    ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -4       ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27   ; 7 uses
  %.not.i = icmp ult i32 %i.g, 65536              ; 2 uses
  %i.h = shl nuw i32 %i.g, 16
  %spec.select.i = select i1 %.not.i, i32 %i.h, i32 %i.g ; 3 uses
  %spec.select26.i = select i1 %.not.i, i32 16, i32 0 ; 2 uses
  %.not21.i = icmp ult i32 %spec.select.i, 16777216 ; 2 uses
  %i.i = or disjoint i32 %spec.select26.i, 8
  %i.j = shl nuw i32 %spec.select.i, 8
  %.117.i = select i1 %.not21.i, i32 %i.j, i32 %spec.select.i ; 3 uses
  %.1.i = select i1 %.not21.i, i32 %i.i, i32 %spec.select26.i ; 2 uses
  %.not22.i = icmp ult i32 %.117.i, 268435456     ; 2 uses
  %i.k = or disjoint i32 %.1.i, 4
  %i.l = shl nuw i32 %.117.i, 4
  %.218.i = select i1 %.not22.i, i32 %i.l, i32 %.117.i ; 3 uses
  %.2.i = select i1 %.not22.i, i32 %i.k, i32 %.1.i ; 2 uses
  %.not23.i = icmp ult i32 %.218.i, 1073741824    ; 2 uses
  %i.m = or disjoint i32 %.2.i, 2
end_hunk_4
