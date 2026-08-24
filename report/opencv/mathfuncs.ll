Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mathfuncs?download=true
inline.NumInlined: 427
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN2cv9solvePolyERKNS_11_InputArrayERKNS_12_OutputArrayEi:bb.a
  %i.ll = mul i64 %i.hz, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ll
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.lj
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bp
  %.0.i304 = phi ptr [ %i.kz, %bb.bp ], [ %i.lc, %bb.br ], [ %i.le, %bb.bt ], [ %i.ln, %bb.bu ]
  store double %i.kx, ptr %.0.i304, align 8, !tbaa !103
  %i.lo = add nsw i32 %.0151404, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZN2cv3Mat2atIdEERT_i.exit293
  %.1152 = phi i32 [ %i.lo, %bb.bv ], [ %.0151404, %_ZN2cv3Mat2atIdEERT_i.exit293 ] ; 3 uses
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %exitcond489.not = icmp eq i64 %indvars.iv.next486, %wide.trip.count488
  br i1 %exitcond489.not, label %._crit_edge410, label %.peel.next, !llvm.loop !225

._crit_edge410:                                   ; preds = %bb.bw
  %i.lp = icmp sgt i32 %.1152, 2
  br i1 %i.lp, label %bb.bx, label %._crit_edge410.thread

bb.bx:                                            ; preds = %._crit_edge410
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store i32 0, ptr %22, align 8, !tbaa !147
  %i.lq = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 0, ptr %i.lq, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  store i32 0, ptr %23, align 8, !tbaa !147
  %i.lr = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 0, ptr %i.lr, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.ls = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.ls, align 8, !tbaa !164
  %i.lt = getelementptr inbounds nuw i8, ptr %24, i64 20
  store i32 0, ptr %i.lt, align 4, !tbaa !165
  store i32 16842752, ptr %24, align 8, !tbaa !108
  %i.lu = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %18, ptr %i.lu, align 8, !tbaa !18
  %i.lv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.by unwind label %bb.ce

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %22, ptr noundef nonnull align 8 dereferenceable(24) %i.lv)
          to label %bb.bz unwind label %bb.ce

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.lw = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.lw, align 8, !tbaa !164
  %i.lx = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.lx, align 4, !tbaa !165
  store i32 16842752, ptr %25, align 8, !tbaa !108
  %i.ly = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %20, ptr %i.ly, align 8, !tbaa !18
  %i.lz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef null, ptr noundef null, ptr noundef nonnull %23, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.lz)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  %.sroa.031.0.copyload = load i64, ptr %22, align 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !162
  %i.mc = icmp slt i32 %i.mb, 2
  %i.md = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !122
  %i.mf = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.mg = load i64, ptr %i.mf, align 8
  %i.mh = ashr i64 %.sroa.031.0.copyload, 32
  %i.mi = mul i64 %i.mg, %i.mh
  %.sink.idx.i = select i1 %i.mc, i64 0, i64 %i.mi
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.me, i64 %.sink.idx.i
  %sext.i = shl i64 %.sroa.031.0.copyload, 32
  %i.mj = ashr exact i64 %sext.i, 29
  %i.mk = getelementptr inbounds i8, ptr %.sink.i, i64 %i.mj
  store double 0.000000e+00, ptr %i.mk, align 8, !tbaa !103
  %.sroa.030.0.copyload = load i64, ptr %23, align 8 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !162
  %i.mn = icmp slt i32 %i.mm, 2
  %i.mo = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !122
  %i.mq = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.mr = load i64, ptr %i.mq, align 8
  %i.ms = ashr i64 %.sroa.030.0.copyload, 32
  %i.mt = mul i64 %i.mr, %i.ms
  %.sink.idx.i306 = select i1 %i.mn, i64 0, i64 %i.mt
  %.sink.i307 = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.sink.idx.i306
  %sext.i308 = shl i64 %.sroa.030.0.copyload, 32
  %i.mu = ashr exact i64 %sext.i308, 29
  %i.mv = getelementptr inbounds i8, ptr %.sink.i307, i64 %i.mu
  store double 0.000000e+00, ptr %i.mv, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.mw = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 0, ptr %i.mw, align 8, !tbaa !164
  %i.mx = getelementptr inbounds nuw i8, ptr %27, i64 20
  store i32 0, ptr %i.mx, align 4, !tbaa !165
  store i32 16842752, ptr %27, align 8, !tbaa !108
  %i.my = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %18, ptr %i.my, align 8, !tbaa !18
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.mz = load double, ptr %26, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.na = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 0, ptr %i.na, align 8, !tbaa !164
  %i.nb = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %i.nb, align 4, !tbaa !165
  store i32 16842752, ptr %29, align 8, !tbaa !108
  %i.nc = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %20, ptr %i.nc, align 8, !tbaa !18
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  %i.nd = load double, ptr %28, align 8, !tbaa !103
  %i.ne = fadd double %i.mz, %i.nd
  %i.nf = shl nuw nsw i32 %.1152, 1
  %i.ng = add nsw i32 %i.nf, -2
  %i.nh = uitofp nneg i32 %i.ng to double
  %i.ni = fdiv double %i.ne, %i.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %._crit_edge410.thread

bb.ce:                                            ; preds = %bb.by, %bb.bx
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.cj

bb.cf:                                            ; preds = %bb.ca, %bb.bz
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.cj

bb.cg:                                            ; preds = %bb.cb
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cc
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %.pn206.pn.pn = phi { ptr, i32 } [ %i.nl, %bb.cg ], [ %i.nm, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cf, %bb.ce
  %.pn206.pn.pn.pn = phi { ptr, i32 } [ %.pn206.pn.pn, %bb.ci ], [ %i.nk, %bb.cf ], [ %i.nj, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.ej

._crit_edge410.thread:                            ; preds = %bb.as, %bb.aw, %bb.ar, %bb.cd, %._crit_edge410
  %.0150 = phi double [ %i.ni, %bb.cd ], [ 1.000000e+00, %._crit_edge410 ], [ 1.000000e+00, %bb.ar ], [ 1.000000e+00, %bb.aw ], [ 1.000000e+00, %bb.as ]
  %i.nn = sitofp i32 %.0155.lcssa to double
  %i.no = fdiv double f0x401921FB54442D18, %i.nn  ; 2 uses
  %i.np = call double @cos(double noundef %i.no) #25 ; 2 uses
  %i.nq = call double @sin(double noundef %i.no) #25 ; 2 uses
  %i.nr = icmp sgt i32 %.0155.lcssa, 0
  br i1 %i.nr, label %.lr.ph416, label %.split456.us.thread

.lr.ph416:                                        ; preds = %._crit_edge410.thread
  %i.ns = fneg double %i.nq
  %wide.trip.count494 = zext nneg i32 %.0155.lcssa to i64 ; 4 uses
  %i.nt = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.0150, i64 0 ; 2 uses
  %i.nu = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.nv = insertelement <2 x double> %i.nu, double %i.np, i64 1 ; 2 uses
  %i.nw = insertelement <2 x double> poison, double %i.np, i64 0
  %i.nx = insertelement <2 x double> %i.nw, double %i.nq, i64 1 ; 2 uses
  %xtraiter593 = and i64 %wide.trip.count494, 1
  %i.ny = icmp eq i32 %.0155.lcssa, 1
  br i1 %i.ny, label %.epil.preheader, label %.lr.ph416.new

.lr.ph416.new:                                    ; preds = %.lr.ph416
  %unroll_iter597 = and i64 %wide.trip.count494, 2147483646
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph416.new
  %indvars.iv491 = phi i64 [ 0, %.lr.ph416.new ], [ %indvars.iv.next492.1, %bb.ck ] ; 3 uses
  %i.nz = phi <2 x double> [ %i.nt, %.lr.ph416.new ], [ %i.oj, %bb.ck ] ; 4 uses
  %niter598 = phi i64 [ 0, %.lr.ph416.new ], [ %niter598.next.1, %bb.ck ]
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv491 ; 2 uses
  %36 = extractelement <2 x double> %i.nz, i64 0
  store double %36, ptr %i.oa, align 8, !tbaa !103
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %37 = extractelement <2 x double> %i.nz, i64 1
  store double %37, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !103
  %i.ob = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oc = fmul <2 x double> %i.nv, %i.ob
  %i.od = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %i.nx, <2 x double> %i.oc) ; 4 uses
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv491 ; 2 uses
  %38 = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %39 = extractelement <2 x double> %i.oe, i64 0
  store double %39, ptr %38, align 8, !tbaa !103
  %.sroa.13.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %40 = extractelement <2 x double> %i.oe, i64 1
  store double %40, ptr %.sroa.13.0..sroa_idx.1, align 8, !tbaa !103
  %i.og = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oh = fmul <2 x double> %i.nv, %i.og
  %i.oi = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oi, <2 x double> %i.nx, <2 x double> %i.oh) ; 2 uses
  %indvars.iv.next492.1 = add nuw nsw i64 %indvars.iv491, 2 ; 2 uses
  %niter598.next.1 = add i64 %niter598, 2         ; 2 uses
  %niter598.ncmp.1 = icmp eq i64 %niter598.next.1, %unroll_iter597
  br i1 %niter598.ncmp.1, label %.preheader386.us.preheader.unr-lcssa, label %bb.ck, !llvm.loop !227

.preheader386.us.preheader.unr-lcssa:             ; preds = %bb.ck
  %lcmp.mod595.not = icmp eq i64 %xtraiter593, 0
  br i1 %lcmp.mod595.not, label %.preheader386.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader386.us.preheader.unr-lcssa, %.lr.ph416
  %indvars.iv491.epil.init = phi i64 [ 0, %.lr.ph416 ], [ %indvars.iv.next492.1, %.preheader386.us.preheader.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.nt, %.lr.ph416 ], [ %i.oj, %.preheader386.us.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod596 = trunc i32 %.0155.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod596)
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv491.epil.init ; 2 uses
  %41 = extractelement <2 x double> %.epil.init, i64 0
  store double %41, ptr %i.ok, align 8, !tbaa !103
  %.sroa.13.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %42 = extractelement <2 x double> %.epil.init, i64 1
  store double %42, ptr %.sroa.13.0..sroa_idx.epil, align 8, !tbaa !103
  br label %.preheader386.us.preheader

.preheader386.us.preheader:                       ; preds = %.preheader386.us.preheader.unr-lcssa, %.epil.preheader
  %i.ol = icmp slt i32 %2, 1
  %i.om = select i1 %i.ol, i32 1000, i32 %2
  %i.on = zext nneg i32 %.0155.lcssa to i64       ; 4 uses
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %30, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %30, i64 84 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %30, i64 88 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %30, i64 12 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %30, i64 128 ; 6 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ow = getelementptr inbounds nuw i8, ptr %32, i64 20
  %i.ox = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.pa = getelementptr inbounds nuw i8, ptr %31, i64 24
  %wide.trip.count505 = zext nneg i32 %.0155.lcssa to i64 ; 2 uses
  %i.pb = getelementptr [16 x i8], ptr %i.au, i64 %i.on
  br label %.preheader386.us

.preheader386.us:                                 ; preds = %.preheader386.us.preheader, %._crit_edge444.us
  %.0147446.us = phi i32 [ %i.vz, %._crit_edge444.us ], [ 0, %.preheader386.us.preheader ]
  br label %.lr.ph425.us

.lr.ph425.us:                                     ; preds = %.preheader386.us, %bb.dp
  %indvars.iv502 = phi i64 [ 0, %.preheader386.us ], [ %indvars.iv.next503, %bb.dp ] ; 3 uses
  %.1379441.us = phi double [ 0.000000e+00, %.preheader386.us ], [ %.sroa.speculated.us, %bb.dp ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv502 ; 2 uses
  %i.pd = load <2 x double>, ptr %i.pc, align 8, !tbaa !103 ; 5 uses
  %i.pe = load <2 x double>, ptr %i.oo, align 8, !tbaa !103 ; 2 uses
  %i.pf = fneg <2 x double> %i.pd
  %i.pg = shufflevector <2 x double> %i.pf, <2 x double> %i.pd, <2 x i32> <i32 1, i32 2>
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph425.us, %bb.cp
  %indvars.iv496 = phi i64 [ 0, %.lr.ph425.us ], [ %indvars.iv.next497, %bb.cp ] ; 4 uses
  %.0423.us = phi i32 [ 1, %.lr.ph425.us ], [ %.1.us, %bb.cp ] ; 3 uses
  %i.ph = phi <2 x double> [ %i.pe, %.lr.ph425.us ], [ %i.qf, %bb.cp ] ; 4 uses
  %i.pi = phi <2 x double> [ %i.pe, %.lr.ph425.us ], [ %i.pq, %bb.cp ] ; 2 uses
  %i.pj = xor i64 %indvars.iv496, -1
  %i.pk = getelementptr [16 x i8], ptr %i.pb, i64 %i.pj
  %i.pl = shufflevector <2 x double> %i.pi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pm = fmul <2 x double> %i.pl, %i.pg
  %i.pn = shufflevector <2 x double> %i.pi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.po = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.pd, <2 x double> %i.pm)
  %i.pp = load <2 x double>, ptr %i.pk, align 8, !tbaa !103
  %i.pq = fadd <2 x double> %i.po, %i.pp          ; 4 uses
  %.not220.us = icmp eq i64 %indvars.iv496, %indvars.iv502
  br i1 %.not220.us, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pr = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv496
  %i.ps = load <2 x double>, ptr %i.pr, align 8, !tbaa !103
  %i.pt = fsub <2 x double> %i.pd, %i.ps          ; 5 uses
  %i.pu = extractelement <2 x double> %i.pt, i64 0
  %i.pv = fcmp une double %i.pu, 0.000000e+00
  %i.pw = extractelement <2 x double> %i.pt, i64 1
  %i.px = fcmp une double %i.pw, 0.000000e+00
  %or.cond383.us = select i1 %i.pv, i1 true, i1 %i.px
  br i1 %or.cond383.us, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.py = add nsw i32 %.0423.us, 1
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.pz = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qa = fneg <2 x double> %i.pt
  %i.qb = shufflevector <2 x double> %i.qa, <2 x double> %i.pt, <2 x i32> <i32 1, i32 2>
  %i.qc = fmul <2 x double> %i.pz, %i.qb
  %i.qd = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qd, <2 x double> %i.pt, <2 x double> %i.qc)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %.1.us = phi i32 [ %.0423.us, %bb.cl ], [ %.0423.us, %bb.co ], [ %i.py, %bb.cn ] ; 5 uses
  %i.qf = phi <2 x double> [ %i.ph, %bb.cl ], [ %i.qe, %bb.co ], [ %i.ph, %bb.cn ] ; 6 uses
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %wide.trip.count505
  br i1 %exitcond500.not, label %._crit_edge426.us, label %bb.cl, !llvm.loop !228

bb.cq:                                            ; preds = %._crit_edge426.us
  %i.qg = trunc i32 %.1.us to i1
  %i.qh = lshr i32 %.1.us, 1                      ; 3 uses
  %i.qi = and i32 %.1.us, 1                       ; 3 uses
  %i.qj = sub nsw i32 %i.qh, %i.qi                ; 2 uses
  %.not = icmp eq i32 %i.qh, %i.qi
  br i1 %.not, label %bb.cs, label %.lr.ph434.us

bb.cr:                                            ; preds = %bb.cr, %.lr.ph434.us.new
  %niter607 = phi i32 [ 0, %.lr.ph434.us.new ], [ %niter607.next.7, %bb.cr ]
  %i.qk = call double @sqrt(double noundef %i.vo) #25 ; 0 uses
  %i.ql = call double @sqrt(double noundef %i.vp) #25 ; 0 uses
  %i.qm = call double @sqrt(double noundef %i.vo) #25 ; 0 uses
  %i.qn = call double @sqrt(double noundef %i.vp) #25 ; 0 uses
  %i.qo = call double @sqrt(double noundef %i.vo) #25 ; 0 uses
  %i.qp = call double @sqrt(double noundef %i.vp) #25 ; 0 uses
  %i.qq = call double @sqrt(double noundef %i.vo) #25 ; 0 uses
  %i.qr = call double @sqrt(double noundef %i.vp) #25 ; 0 uses
  %i.qs = call double @sqrt(double noundef %i.vo) #25 ; 0 uses
  %i.qt = call double @sqrt(double noundef %i.vp) #25 ; 0 uses
  %i.qu = call double @sqrt(double noundef %i.vo) #25 ; 0 uses
  %i.qv = call double @sqrt(double noundef %i.vp) #25 ; 0 uses
  %i.qw = call double @sqrt(double noundef %i.vo) #25 ; 0 uses
  %i.qx = call double @sqrt(double noundef %i.vp) #25 ; 0 uses
  %i.qy = call double @sqrt(double noundef %i.vo) #25
  %i.qz = call double @sqrt(double noundef %i.vp) #25
  %niter607.next.7 = add i32 %niter607, 8         ; 2 uses
  %niter607.ncmp.7 = icmp eq i32 %niter607.next.7, %unroll_iter606
  br i1 %niter607.ncmp.7, label %._crit_edge435.us.unr-lcssa, label %bb.cr, !llvm.loop !229

bb.cs:                                            ; preds = %._crit_edge435.us, %bb.cq
  %i.ra = phi <2 x double> [ %i.vx, %._crit_edge435.us ], [ %i.vh, %bb.cq ]
  br i1 %i.qg, label %bb.ct, label %bb.dp

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %30, i32 noundef 4, i32 noundef 1, i32 noundef 6)
          to label %bb.cu unwind label %.split448.us

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %31, i32 noundef 3, i32 noundef 1, i32 noundef 38)
          to label %bb.cv unwind label %.split450.us

bb.cv:                                            ; preds = %bb.cu
  %i.rb = extractelement <2 x double> %i.vh, i64 0 ; 5 uses
  %i.rc = call noundef double @pow(double noundef %i.rb, double noundef 3.000000e+00) #25
  %i.rd = fneg double %i.rc
  %i.re = load i32, ptr %i.op, align 4, !tbaa !162
  %i.rf = icmp slt i32 %i.re, 2                   ; 2 uses
  br i1 %i.rf, label %bb.db, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rg = load i32, ptr %30, align 8, !tbaa !27
  %i.rh = and i32 %i.rg, 16384
  %i.ri = icmp ne i32 %i.rh, 0
  %i.rj = load i32, ptr %i.oq, align 4
  %i.rk = icmp eq i32 %i.rj, 1
  %or.cond.i321.us = select i1 %i.ri, i1 true, i1 %i.rk
  br i1 %or.cond.i321.us, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rl = load i32, ptr %i.or, align 8, !tbaa !156
  %i.rm = icmp eq i32 %i.rl, 1
  br i1 %i.rm, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rn = load i32, ptr %i.os, align 4, !tbaa !142 ; 3 uses
  %i.ro = sdiv i32 3, %i.rn                       ; 2 uses
  %i.rp = mul nsw i32 %i.ro, %i.rn                ; 0 uses
  %.recomposed618 = srem i32 3, %i.rn
  %i.rq = load ptr, ptr %i.ot, align 8, !tbaa !122 ; 2 uses
  %i.rr = load i64, ptr %i.ou, align 8, !tbaa !49
  %i.rs = sext i32 %i.ro to i64
  %i.rt = mul i64 %i.rr, %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rt
  %i.rv = sext i32 %.recomposed618 to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.ru, i64 %i.rv
  br label %_ZN2cv3Mat2atIdEERT_i.exit323.us

bb.cz:                                            ; preds = %bb.cx
  %i.rx = load ptr, ptr %i.ot, align 8, !tbaa !122 ; 2 uses
  %i.ry = load i64, ptr %i.ou, align 8, !tbaa !49
  %i.rz = mul i64 %i.ry, 3
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rz
  br label %_ZN2cv3Mat2atIdEERT_i.exit323.us

bb.da:                                            ; preds = %bb.cw
  %i.sb = load ptr, ptr %i.ot, align 8, !tbaa !122 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  br label %_ZN2cv3Mat2atIdEERT_i.exit323.us

bb.db:                                            ; preds = %bb.cv
  %i.sd = load ptr, ptr %i.ot, align 8, !tbaa !122 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  br label %_ZN2cv3Mat2atIdEERT_i.exit323.us

_ZN2cv3Mat2atIdEERT_i.exit323.us:                 ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy
  %i.sf = phi ptr [ %i.sd, %bb.db ], [ %i.sb, %bb.da ], [ %i.rx, %bb.cz ], [ %i.rq, %bb.cy ] ; 9 uses
  %.0.i322.us = phi ptr [ %i.se, %bb.db ], [ %i.sc, %bb.da ], [ %i.sa, %bb.cz ], [ %i.rw, %bb.cy ]
  store double %i.rd, ptr %.0.i322.us, align 8, !tbaa !103
  %i.sg = call noundef double @pow(double noundef %i.rb, double noundef 2.000000e+00) #25
  %i.sh = extractelement <2 x double> %i.vh, i64 1
  %i.si = call noundef double @pow(double noundef %i.sh, double noundef 2.000000e+00) #25
  %i.sj = fmul double %i.si, 2.700000e+01
  %i.sk = call double @llvm.fmuladd.f64(double %i.sg, double 1.500000e+01, double %i.sj)
  %i.sl = fneg double %i.sk                       ; 2 uses
  br i1 %i.rf, label %bb.dn, label %bb.dc

bb.dc:                                            ; preds = %_ZN2cv3Mat2atIdEERT_i.exit323.us
  %i.sm = load i32, ptr %30, align 8, !tbaa !27
  %i.sn = and i32 %i.sm, 16384
  %i.so = icmp ne i32 %i.sn, 0                    ; 2 uses
  %i.sp = load i32, ptr %i.oq, align 4
  %i.sq = icmp eq i32 %i.sp, 1
  %or.cond.i324.us = select i1 %i.so, i1 true, i1 %i.sq
end_hunk_0
