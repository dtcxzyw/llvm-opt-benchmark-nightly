Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/matrix_ops?download=true
inline.NumInlined: 30
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@power_iteration:bb.a
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv368
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !16 ; 11 uses
  br i1 %i.le, label %.lr.ph.i264.epil.preheader, label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %.lr.ph.preheader.i262, %.lr.ph.i264
  %indvars.iv.i265 = phi i64 [ %indvars.iv.next.i267.3, %.lr.ph.i264 ], [ 0, %.lr.ph.preheader.i262 ] ; 6 uses
  %.010.i266 = phi double [ %i.nz, %.lr.ph.i264 ], [ 0.000000e+00, %.lr.ph.preheader.i262 ]
  %niter587 = phi i64 [ %niter587.next.3, %.lr.ph.i264 ], [ 0, %.lr.ph.preheader.i262 ]
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.i265
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !18
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.i265
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !18
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nh, double %i.nj, double %.010.i266)
  %indvars.iv.next.i267 = or disjoint i64 %indvars.iv.i265, 1 ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.next.i267
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !18
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.next.i267
  %i.no = load double, ptr %i.nn, align 8, !tbaa !18
  %i.np = tail call double @llvm.fmuladd.f64(double %i.nm, double %i.no, double %i.nk)
  %indvars.iv.next.i267.1 = or disjoint i64 %indvars.iv.i265, 2 ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.next.i267.1
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !18
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.next.i267.1
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !18
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.nt, double %i.np)
  %indvars.iv.next.i267.2 = or disjoint i64 %indvars.iv.i265, 3 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.next.i267.2
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !18
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.next.i267.2
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !18
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.nw, double %i.ny, double %i.nu) ; 3 uses
  %indvars.iv.next.i267.3 = add nuw nsw i64 %indvars.iv.i265, 4 ; 2 uses
  %niter587.next.3 = add i64 %niter587, 4         ; 2 uses
  %niter587.ncmp.3 = icmp eq i64 %niter587.next.3, %unroll_iter586
  br i1 %niter587.ncmp.3, label %vectors_inner_product.exit269.loopexit.unr-lcssa, label %.lr.ph.i264, !llvm.loop !0

vectors_inner_product.exit269.loopexit.unr-lcssa: ; preds = %.lr.ph.i264
  br i1 %lcmp.mod583.not, label %vectors_inner_product.exit269.loopexit, label %.lr.ph.i264.epil.preheader

.lr.ph.i264.epil.preheader:                       ; preds = %vectors_inner_product.exit269.loopexit.unr-lcssa, %.lr.ph.preheader.i262
  %indvars.iv.i265.epil.init = phi i64 [ 0, %.lr.ph.preheader.i262 ], [ %indvars.iv.next.i267.3, %vectors_inner_product.exit269.loopexit.unr-lcssa ]
  %.010.i266.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i262 ], [ %i.nz, %vectors_inner_product.exit269.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod585)
  br label %.lr.ph.i264.epil

.lr.ph.i264.epil:                                 ; preds = %.lr.ph.i264.epil, %.lr.ph.i264.epil.preheader
  %indvars.iv.i265.epil = phi i64 [ %indvars.iv.i265.epil.init, %.lr.ph.i264.epil.preheader ], [ %indvars.iv.next.i267.epil, %.lr.ph.i264.epil ] ; 3 uses
  %.010.i266.epil = phi double [ %.010.i266.epil.init, %.lr.ph.i264.epil.preheader ], [ %i.oe, %.lr.ph.i264.epil ]
  %epil.iter582 = phi i64 [ 0, %.lr.ph.i264.epil.preheader ], [ %epil.iter582.next, %.lr.ph.i264.epil ]
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.i265.epil
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !18
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.i265.epil
  %i.od = load double, ptr %i.oc, align 8, !tbaa !18
  %i.oe = tail call double @llvm.fmuladd.f64(double %i.ob, double %i.od, double %.010.i266.epil) ; 2 uses
  %indvars.iv.next.i267.epil = add nuw nsw i64 %indvars.iv.i265.epil, 1
  %epil.iter582.next = add i64 %epil.iter582, 1   ; 2 uses
  %epil.iter582.cmp.not = icmp eq i64 %epil.iter582.next, %xtraiter581
  br i1 %epil.iter582.cmp.not, label %vectors_inner_product.exit269.loopexit, label %.lr.ph.i264.epil, !llvm.loop !76

vectors_inner_product.exit269.loopexit:           ; preds = %.lr.ph.i264.epil, %vectors_inner_product.exit269.loopexit.unr-lcssa
  %.lcssa = phi double [ %i.nz, %vectors_inner_product.exit269.loopexit.unr-lcssa ], [ %i.oe, %.lr.ph.i264.epil ]
  %i.of = fneg double %.lcssa                     ; 6 uses
  br i1 %min.iters.check506, label %.lr.ph.i271.preheader, label %vector.memcheck499

vector.memcheck499:                               ; preds = %vectors_inner_product.exit269.loopexit
  %scevgep501 = getelementptr i8, ptr %i.nf, i64 %i.lc
  %bound0502 = icmp ult ptr %i.lt, %scevgep501
  %bound1503 = icmp ult ptr %i.nf, %scevgep500
  %found.conflict504 = and i1 %bound0502, %bound1503
  br i1 %found.conflict504, label %.lr.ph.i271.preheader, label %vector.ph507

vector.ph507:                                     ; preds = %vector.memcheck499
  %i.og = getelementptr i8, ptr %i.nf, i64 %i.lk
  %broadcast.splatinsert509 = insertelement <2 x double> poison, double %i.of, i64 0
  %broadcast.splat510 = shufflevector <2 x double> %broadcast.splatinsert509, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph507
  %index512 = phi i64 [ 0, %vector.ph507 ], [ %index.next519, %vector.body511 ] ; 2 uses
  %i.oh = shl i64 %index512, 3                    ; 2 uses
  %next.gep513 = getelementptr i8, ptr %i.nf, i64 %i.oh ; 2 uses
  %next.gep514 = getelementptr i8, ptr %i.lt, i64 %i.oh ; 3 uses
  %i.oi = getelementptr i8, ptr %next.gep513, i64 16
  %wide.load515 = load <2 x double>, ptr %next.gep513, align 8, !tbaa !18, !alias.scope !101
  %wide.load516 = load <2 x double>, ptr %i.oi, align 8, !tbaa !18, !alias.scope !101
  %i.oj = getelementptr i8, ptr %next.gep514, i64 16 ; 2 uses
  %wide.load517 = load <2 x double>, ptr %next.gep514, align 8, !tbaa !18, !alias.scope !102, !noalias !101
  %wide.load518 = load <2 x double>, ptr %i.oj, align 8, !tbaa !18, !alias.scope !102, !noalias !101
  %i.ok = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat510, <2 x double> %wide.load515, <2 x double> %wide.load517)
  %i.ol = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat510, <2 x double> %wide.load516, <2 x double> %wide.load518)
  store <2 x double> %i.ok, ptr %next.gep514, align 8, !tbaa !18, !alias.scope !102, !noalias !101
  store <2 x double> %i.ol, ptr %i.oj, align 8, !tbaa !18, !alias.scope !102, !noalias !101
  %index.next519 = add nuw i64 %index512, 4       ; 2 uses
  %i.om = icmp eq i64 %index.next519, %n.vec508
  br i1 %i.om, label %middle.block520, label %vector.body511, !llvm.loop !80

middle.block520:                                  ; preds = %vector.body511
  br i1 %cmp.n521, label %scadd.exit276.loopexit, label %.lr.ph.i271.preheader

.lr.ph.i271.preheader:                            ; preds = %vector.memcheck499, %vectors_inner_product.exit269.loopexit, %middle.block520
  %.010.i272.ph = phi i32 [ %1, %vector.memcheck499 ], [ %1, %vectors_inner_product.exit269.loopexit ], [ %i.lj, %middle.block520 ] ; 4 uses
  %.059.i273.ph = phi ptr [ %i.nf, %vector.memcheck499 ], [ %i.nf, %vectors_inner_product.exit269.loopexit ], [ %i.og, %middle.block520 ] ; 2 uses
  %.068.i274.ph = phi ptr [ %i.lt, %vector.memcheck499 ], [ %i.lt, %vectors_inner_product.exit269.loopexit ], [ %i.lu, %middle.block520 ] ; 2 uses
  %i.on = add nsw i32 %.010.i272.ph, -1
  %xtraiter588 = and i32 %.010.i272.ph, 3         ; 2 uses
  %lcmp.mod589.not = icmp eq i32 %xtraiter588, 0
  br i1 %lcmp.mod589.not, label %.lr.ph.i271.prol.loopexit, label %.lr.ph.i271.prol

.lr.ph.i271.prol:                                 ; preds = %.lr.ph.i271.preheader, %.lr.ph.i271.prol
  %.010.i272.prol = phi i32 [ %i.ot, %.lr.ph.i271.prol ], [ %.010.i272.ph, %.lr.ph.i271.preheader ]
  %.059.i273.prol = phi ptr [ %i.oo, %.lr.ph.i271.prol ], [ %.059.i273.ph, %.lr.ph.i271.preheader ] ; 2 uses
  %.068.i274.prol = phi ptr [ %i.oq, %.lr.ph.i271.prol ], [ %.068.i274.ph, %.lr.ph.i271.preheader ] ; 3 uses
  %prol.iter590 = phi i32 [ %prol.iter590.next, %.lr.ph.i271.prol ], [ 0, %.lr.ph.i271.preheader ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.059.i273.prol, i64 8 ; 2 uses
  %i.op = load double, ptr %.059.i273.prol, align 8, !tbaa !18
  %i.oq = getelementptr inbounds nuw i8, ptr %.068.i274.prol, i64 8 ; 2 uses
  %i.or = load double, ptr %.068.i274.prol, align 8, !tbaa !18
  %i.os = tail call double @llvm.fmuladd.f64(double %i.of, double %i.op, double %i.or)
  store double %i.os, ptr %.068.i274.prol, align 8, !tbaa !18
  %i.ot = add nsw i32 %.010.i272.prol, -1         ; 2 uses
  %prol.iter590.next = add i32 %prol.iter590, 1   ; 2 uses
  %prol.iter590.cmp.not = icmp eq i32 %prol.iter590.next, %xtraiter588
  br i1 %prol.iter590.cmp.not, label %.lr.ph.i271.prol.loopexit, label %.lr.ph.i271.prol, !llvm.loop !81

.lr.ph.i271.prol.loopexit:                        ; preds = %.lr.ph.i271.prol, %.lr.ph.i271.preheader
  %.010.i272.unr = phi i32 [ %.010.i272.ph, %.lr.ph.i271.preheader ], [ %i.ot, %.lr.ph.i271.prol ]
  %.059.i273.unr = phi ptr [ %.059.i273.ph, %.lr.ph.i271.preheader ], [ %i.oo, %.lr.ph.i271.prol ]
  %.068.i274.unr = phi ptr [ %.068.i274.ph, %.lr.ph.i271.preheader ], [ %i.oq, %.lr.ph.i271.prol ]
  %i.ou = icmp ult i32 %i.on, 3
  br i1 %i.ou, label %scadd.exit276.loopexit, label %.lr.ph.i271

.lr.ph.i271:                                      ; preds = %.lr.ph.i271.prol.loopexit, %.lr.ph.i271
  %.010.i272 = phi i32 [ %i.pp, %.lr.ph.i271 ], [ %.010.i272.unr, %.lr.ph.i271.prol.loopexit ]
  %.059.i273 = phi ptr [ %i.pk, %.lr.ph.i271 ], [ %.059.i273.unr, %.lr.ph.i271.prol.loopexit ] ; 5 uses
  %.068.i274 = phi ptr [ %i.pm, %.lr.ph.i271 ], [ %.068.i274.unr, %.lr.ph.i271.prol.loopexit ] ; 6 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.059.i273, i64 8
  %i.ow = load double, ptr %.059.i273, align 8, !tbaa !18
  %i.ox = getelementptr inbounds nuw i8, ptr %.068.i274, i64 8 ; 2 uses
  %i.oy = load double, ptr %.068.i274, align 8, !tbaa !18
  %i.oz = tail call double @llvm.fmuladd.f64(double %i.of, double %i.ow, double %i.oy)
  store double %i.oz, ptr %.068.i274, align 8, !tbaa !18
  %i.pa = getelementptr inbounds nuw i8, ptr %.059.i273, i64 16
  %i.pb = load double, ptr %i.ov, align 8, !tbaa !18
  %i.pc = getelementptr inbounds nuw i8, ptr %.068.i274, i64 16 ; 2 uses
  %i.pd = load double, ptr %i.ox, align 8, !tbaa !18
  %i.pe = tail call double @llvm.fmuladd.f64(double %i.of, double %i.pb, double %i.pd)
  store double %i.pe, ptr %i.ox, align 8, !tbaa !18
  %i.pf = getelementptr inbounds nuw i8, ptr %.059.i273, i64 24
  %i.pg = load double, ptr %i.pa, align 8, !tbaa !18
  %i.ph = getelementptr inbounds nuw i8, ptr %.068.i274, i64 24 ; 2 uses
  %i.pi = load double, ptr %i.pc, align 8, !tbaa !18
  %i.pj = tail call double @llvm.fmuladd.f64(double %i.of, double %i.pg, double %i.pi)
  store double %i.pj, ptr %i.pc, align 8, !tbaa !18
  %i.pk = getelementptr inbounds nuw i8, ptr %.059.i273, i64 32
  %i.pl = load double, ptr %i.pf, align 8, !tbaa !18
  %i.pm = getelementptr inbounds nuw i8, ptr %.068.i274, i64 32
  %i.pn = load double, ptr %i.ph, align 8, !tbaa !18
  %i.po = tail call double @llvm.fmuladd.f64(double %i.of, double %i.pl, double %i.pn)
  store double %i.po, ptr %i.ph, align 8, !tbaa !18
  %i.pp = add nsw i32 %.010.i272, -4              ; 2 uses
  %.not.i275.3 = icmp eq i32 %i.pp, 0
  br i1 %.not.i275.3, label %scadd.exit276.loopexit, label %.lr.ph.i271, !llvm.loop !82

scadd.exit276.loopexit:                           ; preds = %.lr.ph.i271.prol.loopexit, %.lr.ph.i271, %middle.block520
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %exitcond372.not = icmp eq i64 %indvars.iv.next369, %indvars.iv373
  br i1 %exitcond372.not, label %.lr.ph.i.i248.preheader, label %.lr.ph.preheader.i262, !llvm.loop !83

.lr.ph323.preheader:                              ; preds = %bb.o, %.lr.ph328
  %indvars.iv383 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next384, %bb.o ] ; 7 uses
  %indvars.iv376 = phi i64 [ 1, %.lr.ph328 ], [ %indvars.iv.next377, %bb.o ] ; 5 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv383 ; 2 uses
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !18 ; 4 uses
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.ps = trunc nuw nsw i64 %indvars.iv383 to i32 ; 2 uses
  %i.pt = sub nsw i64 %indvars.iv383, %wide.trip.count381
  %i.pu = and i64 %i.pt, 1
  %lcmp.mod599.not.not = icmp eq i64 %i.pu, 0
  br i1 %lcmp.mod599.not.not, label %.lr.ph323.prol, label %.lr.ph323.prol.loopexit

.lr.ph323.prol:                                   ; preds = %.lr.ph323.preheader
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv376
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !18 ; 2 uses
  %i.px = fcmp olt double %i.pr, %i.pw            ; 2 uses
  %i.py = trunc nuw nsw i64 %indvars.iv376 to i32
  %.1154.prol = select i1 %i.px, i32 %i.py, i32 %i.ps ; 2 uses
  %.1.prol = select i1 %i.px, double %i.pw, double %i.pr ; 2 uses
  %indvars.iv.next379.prol = add nuw nsw i64 %indvars.iv376, 1
  br label %.lr.ph323.prol.loopexit

.lr.ph323.prol.loopexit:                          ; preds = %.lr.ph323.prol, %.lr.ph323.preheader
  %.1154.lcssa.unr = phi i32 [ poison, %.lr.ph323.preheader ], [ %.1154.prol, %.lr.ph323.prol ]
  %.1.lcssa.unr = phi double [ poison, %.lr.ph323.preheader ], [ %.1.prol, %.lr.ph323.prol ]
  %indvars.iv378.unr = phi i64 [ %indvars.iv376, %.lr.ph323.preheader ], [ %indvars.iv.next379.prol, %.lr.ph323.prol ]
  %.0152320.unr = phi double [ %i.pr, %.lr.ph323.preheader ], [ %.1.prol, %.lr.ph323.prol ]
  %.0153319.unr = phi i32 [ %i.ps, %.lr.ph323.preheader ], [ %.1154.prol, %.lr.ph323.prol ]
  %i.pz = icmp eq i64 %i.lr, %indvars.iv383
  br i1 %i.pz, label %._crit_edge324, label %.lr.ph323

._crit_edge324:                                   ; preds = %.lr.ph323, %.lr.ph323.prol.loopexit
  %.1154.lcssa = phi i32 [ %.1154.lcssa.unr, %.lr.ph323.prol.loopexit ], [ %.1154.1, %.lr.ph323 ]
  %.1.lcssa = phi double [ %.1.lcssa.unr, %.lr.ph323.prol.loopexit ], [ %.1.1, %.lr.ph323 ]
  %i.qa = zext i32 %.1154.lcssa to i64            ; 3 uses
  %.not177 = icmp eq i64 %indvars.iv383, %i.qa
  br i1 %.not177, label %bb.o, label %.lr.ph.preheader.i281

.lr.ph323:                                        ; preds = %.lr.ph323.prol.loopexit, %.lr.ph323
  %indvars.iv378 = phi i64 [ %indvars.iv.next379.1, %.lr.ph323 ], [ %indvars.iv378.unr, %.lr.ph323.prol.loopexit ] ; 4 uses
  %.0152320 = phi double [ %.1.1, %.lr.ph323 ], [ %.0152320.unr, %.lr.ph323.prol.loopexit ] ; 2 uses
  %.0153319 = phi i32 [ %.1154.1, %.lr.ph323 ], [ %.0153319.unr, %.lr.ph323.prol.loopexit ]
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv378
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !18 ; 2 uses
  %i.qd = fcmp olt double %.0152320, %i.qc        ; 2 uses
  %i.qe = trunc nuw nsw i64 %indvars.iv378 to i32
  %.1154 = select i1 %i.qd, i32 %i.qe, i32 %.0153319
  %.1 = select i1 %i.qd, double %i.qc, double %.0152320 ; 2 uses
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.next379
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !18 ; 2 uses
  %i.qh = fcmp olt double %.1, %i.qg              ; 2 uses
  %i.qi = trunc nuw nsw i64 %indvars.iv.next379 to i32
  %.1154.1 = select i1 %i.qh, i32 %i.qi, i32 %.1154 ; 2 uses
  %.1.1 = select i1 %i.qh, double %i.qg, double %.1 ; 2 uses
  %indvars.iv.next379.1 = add nuw nsw i64 %indvars.iv378, 2 ; 2 uses
  %exitcond382.not.1 = icmp eq i64 %indvars.iv.next379.1, %wide.trip.count381
  br i1 %exitcond382.not.1, label %._crit_edge324, label %.lr.ph323, !llvm.loop !84

.lr.ph.preheader.i281:                            ; preds = %._crit_edge324
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv383
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.p, ptr readonly align 8 %i.qk, i64 %i.lq, i1 false), !tbaa !18, !alias.scope !103
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.qa
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.qk, ptr readonly align 8 %i.qm, i64 %i.lq, i1 false), !tbaa !18, !alias.scope !104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.qm, ptr readonly align 8 %i.p, i64 %i.lq, i1 false), !tbaa !18, !alias.scope !105
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.qa
  store double %i.pr, ptr %i.qn, align 8, !tbaa !18
  store double %.1.lcssa, ptr %i.pq, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.preheader.i281, %._crit_edge324
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1
  %exitcond387.not = icmp eq i64 %indvars.iv.next384, %wide.trip.count386
  br i1 %exitcond387.not, label %._crit_edge329, label %.lr.ph323.preheader, !llvm.loop !94

._crit_edge329:                                   ; preds = %bb.o, %.preheader
  tail call void @free(ptr noundef %i.lm) #23
  tail call void @free(ptr noundef %i.p) #23
  tail call void @free(ptr noundef %i.q) #23
  %i.qo = icmp sle i32 %.2167395, %i.r
  ret i1 %i.qo
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden double @vectors_inner_product(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %0, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.010 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call double @llvm.fmuladd.f64(double %i.d, double %i.f, double %.010)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.i = load double, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.k = load double, ptr %i.j, align 8, !tbaa !18
  %i.l = tail call double @llvm.fmuladd.f64(double %i.i, double %i.k, double %i.g)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.n = load double, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.p = load double, ptr %i.o, align 8, !tbaa !18
  %i.q = tail call double @llvm.fmuladd.f64(double %i.n, double %i.p, double %i.l)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.u = load double, ptr %i.t, align 8, !tbaa !18
  %i.v = tail call double @llvm.fmuladd.f64(double %i.s, double %i.u, double %i.q) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.010.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.010.epil = phi double [ %.010.epil.init, %.lr.ph.epil.preheader ], [ %i.aa, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.x = load double, ptr %i.w, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.z = load double, ptr %i.y, align 8, !tbaa !18
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.x, double %i.z, double %.010.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !106

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @scadd(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 6 uses
  %.not7 = icmp eq i32 %i.a, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 6
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = zext i32 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 8                  ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.e
  %scevgep11 = getelementptr i8, ptr %3, i64 %i.e
  %bound0 = icmp ult ptr %0, %scevgep11
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4294967292               ; 4 uses
  %i.f = trunc nuw i64 %n.vec to i32
  %i.g = sub i32 %i.a, %i.f
  %i.h = shl nuw nsw i64 %n.vec, 3                ; 2 uses
  %i.i = getelementptr i8, ptr %3, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  %broadcast.splatinsert = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.k  ; 2 uses
  %next.gep12 = getelementptr i8, ptr %0, i64 %i.k ; 3 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !18, !alias.scope !113
  %wide.load13 = load <2 x double>, ptr %i.l, align 8, !tbaa !18, !alias.scope !113
  %i.m = getelementptr i8, ptr %next.gep12, i64 16 ; 2 uses
  %wide.load14 = load <2 x double>, ptr %next.gep12, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  %wide.load15 = load <2 x double>, ptr %i.m, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load14)
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load13, <2 x double> %wide.load15)
  store <2 x double> %i.n, ptr %next.gep12, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  store <2 x double> %i.o, ptr %i.m, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.010.ph = phi i32 [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.preheader ], [ %i.g, %middle.block ] ; 4 uses
  %.059.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.i, %middle.block ] ; 2 uses
  %.068.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.j, %middle.block ] ; 2 uses
  %i.q = add nsw i32 %.010.ph, -1
  %xtraiter = and i32 %.010.ph, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader18, %.lr.ph.prol
  %.010.prol = phi i32 [ %i.w, %.lr.ph.prol ], [ %.010.ph, %.lr.ph.preheader18 ]
  %.059.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.059.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.068.prol = phi ptr [ %i.t, %.lr.ph.prol ], [ %.068.ph, %.lr.ph.preheader18 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader18 ]
  %i.r = getelementptr inbounds nuw i8, ptr %.059.prol, i64 8 ; 2 uses
  %i.s = load double, ptr %.059.prol, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.068.prol, i64 8 ; 2 uses
  %i.u = load double, ptr %.068.prol, align 8, !tbaa !18
  %i.v = tail call double @llvm.fmuladd.f64(double %2, double %i.s, double %i.u)
  store double %i.v, ptr %.068.prol, align 8, !tbaa !18
  %i.w = add nsw i32 %.010.prol, -1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !111

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader18
  %.010.unr = phi i32 [ %.010.ph, %.lr.ph.preheader18 ], [ %i.w, %.lr.ph.prol ]
  %.059.unr = phi ptr [ %.059.ph, %.lr.ph.preheader18 ], [ %i.r, %.lr.ph.prol ]
  %.068.unr = phi ptr [ %.068.ph, %.lr.ph.preheader18 ], [ %i.t, %.lr.ph.prol ]
  %i.x = icmp ult i32 %i.q, 3
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.010 = phi i32 [ %i.as, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ]
  %.059 = phi ptr [ %i.an, %.lr.ph ], [ %.059.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.068 = phi ptr [ %i.ap, %.lr.ph ], [ %.068.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.z = load double, ptr %.059, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.068, i64 8 ; 2 uses
  %i.ab = load double, ptr %.068, align 8, !tbaa !18
  %i.ac = tail call double @llvm.fmuladd.f64(double %2, double %i.z, double %i.ab)
  store double %i.ac, ptr %.068, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.ae = load double, ptr %i.y, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.068, i64 16 ; 2 uses
end_hunk_0
