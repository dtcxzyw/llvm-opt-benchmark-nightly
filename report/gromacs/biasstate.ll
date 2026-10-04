Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biasstate?download=true
inline.NumInlined: 2109
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN3gmx9BiasState40updateFreeEnergyAndAddSamplesToHistogramENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNS_10BiasParamsERKNS_15CorrelationGridEdlP8_IO_FILEPSt6vectorIiSaIiEE:bb.a
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %.070.i
  store double %i.ki, ptr %i.kj, align 8, !tbaa !42
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 72
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !342
  %i.km = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %.070.i
  store double %i.kl, ptr %i.km, align 8, !tbaa !42
  %i.kn = load double, ptr %i.kh, align 8, !tbaa !161
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kg, i64 88 ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !101
  %i.kq = fadd double %i.kn, %i.kp
  store double %i.kq, ptr %i.ko, align 8, !tbaa !101
  %i.kr = or disjoint i64 %.070.i, 1              ; 3 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !39
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [96 x i8], ptr %i.ib, i64 %i.ku ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32 ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !161
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.kr
  store double %i.kx, ptr %i.ky, align 8, !tbaa !42
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 72
  %i.la = load double, ptr %i.kz, align 8, !tbaa !342
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.kr
  store double %i.la, ptr %i.lb, align 8, !tbaa !42
  %i.lc = load double, ptr %i.kw, align 8, !tbaa !161
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kv, i64 88 ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !101
  %i.lf = fadd double %i.lc, %i.le
  store double %i.lf, ptr %i.ld, align 8, !tbaa !101
  %i.lg = add nuw i64 %.070.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph76.i.unr-lcssa, label %.lr.ph72.i, !llvm.loop !329

bb.y:                                             ; preds = %bb.y, %.lr.ph76.i.new
  %.03374.i = phi i64 [ 0, %.lr.ph76.i.new ], [ %i.mo, %bb.y ] ; 5 uses
  %niter309 = phi i64 [ 0, %.lr.ph76.i.new ], [ %niter309.next.1, %bb.y ]
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %.03374.i
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !39
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [96 x i8], ptr %i.ib, i64 %i.lj ; 4 uses
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %.03374.i
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !42 ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %.03374.i
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !42 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  store double %i.lm, ptr %i.lp, align 8, !tbaa !161
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 72
  store double %i.lo, ptr %i.lq, align 8, !tbaa !342
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 40 ; 2 uses
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !74
  %i.lt = fadd double %i.lm, %i.ls
  store double %i.lt, ptr %i.lr, align 8, !tbaa !74
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 80 ; 2 uses
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !120
  %i.lw = fadd double %i.lo, %i.lv
  store double %i.lw, ptr %i.lu, align 8, !tbaa !120
  %i.lx = or disjoint i64 %.03374.i, 1            ; 3 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !39
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [96 x i8], ptr %i.ib, i64 %i.ma ; 4 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.lx
  %i.md = load double, ptr %i.mc, align 8, !tbaa !42 ; 2 uses
  %i.me = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.lx
  %i.mf = load double, ptr %i.me, align 8, !tbaa !42 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  store double %i.md, ptr %i.mg, align 8, !tbaa !161
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 72
  store double %i.mf, ptr %i.mh, align 8, !tbaa !342
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 40 ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !74
  %i.mk = fadd double %i.md, %i.mj
  store double %i.mk, ptr %i.mi, align 8, !tbaa !74
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mb, i64 80 ; 2 uses
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !120
  %i.mn = fadd double %i.mf, %i.mm
  store double %i.mn, ptr %i.ml, align 8, !tbaa !120
  %i.mo = add nuw i64 %.03374.i, 2                ; 2 uses
  %niter309.next.1 = add i64 %niter309, 2         ; 2 uses
  %niter309.ncmp.1 = icmp eq i64 %niter309.next.1, %unroll_iter308
  br i1 %niter309.ncmp.1, label %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit.loopexit.unr-lcssa, label %bb.y, !llvm.loop !330

.lr.ph69.i:                                       ; preds = %._crit_edge.thread.i, %.lr.ph69.i
  %.sroa.0.068.i = phi ptr [ %i.ne, %.lr.ph69.i ], [ %i.ik, %._crit_edge.thread.i ] ; 2 uses
  %i.mp = load i32, ptr %.sroa.0.068.i, align 4, !tbaa !39
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [96 x i8], ptr %i.ib, i64 %i.mq ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !161 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 40 ; 2 uses
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !74
  %i.mw = fadd double %i.mt, %i.mv
  store double %i.mw, ptr %i.mu, align 8, !tbaa !74
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 72
  %i.my = load double, ptr %i.mx, align 8, !tbaa !342
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 80 ; 2 uses
  %i.na = load <2 x double>, ptr %i.mz, align 8, !tbaa !42
  %i.nb = insertelement <2 x double> poison, double %i.my, i64 0
  %i.nc = insertelement <2 x double> %i.nb, double %i.mt, i64 1
  %i.nd = fadd <2 x double> %i.nc, %i.na
  store <2 x double> %i.nd, ptr %i.mz, align 8, !tbaa !42
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.068.i, i64 4 ; 2 uses
  %.not63.i = icmp eq ptr %i.ne, %i.il
  br i1 %.not63.i, label %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit, label %.lr.ph69.i

_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit.loopexit.unr-lcssa: ; preds = %bb.y
  %i.nf = and i64 %i.ja, 4
  %lcmp.mod306.not = icmp eq i64 %i.nf, 0
  br i1 %lcmp.mod306.not, label %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit.loopexit.unr-lcssa, %.lr.ph76.i
  %.03374.i.epil.init = phi i64 [ 0, %.lr.ph76.i ], [ %i.mo, %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod307 = trunc i64 %i.jb to i1
  call void @llvm.assume(i1 %lcmp.mod307)
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %.03374.i.epil.init
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !39
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [96 x i8], ptr %i.ib, i64 %i.ni ; 4 uses
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %.03374.i.epil.init
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !42 ; 2 uses
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %.03374.i.epil.init
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !42 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  store double %i.nl, ptr %i.no, align 8, !tbaa !161
  %i.np = getelementptr inbounds nuw i8, ptr %i.nj, i64 72
  store double %i.nn, ptr %i.np, align 8, !tbaa !342
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 40 ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !74
  %i.ns = fadd double %i.nl, %i.nr
  store double %i.ns, ptr %i.nq, align 8, !tbaa !74
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nj, i64 80 ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !120
  %i.nv = fadd double %i.nn, %i.nu
  store double %i.nv, ptr %i.nt, align 8, !tbaa !120
  br label %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit

_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit: ; preds = %.lr.ph69.i, %.epil.preheader, %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit.loopexit.unr-lcssa, %._crit_edge.i95, %._crit_edge73.thread.i
  %i.nw = load ptr, ptr %i.e, align 8, !tbaa !17  ; 4 uses
  %i.nx = load ptr, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.ny = load i32, ptr %i.cy, align 4, !tbaa !100 ; 2 uses
  %i.nz = load ptr, ptr %i.ig, align 8, !tbaa !118
  %i.oa = load i32, ptr %i.ii, align 4, !tbaa !119
  %i.ob = icmp eq i32 %i.ny, 1
  br i1 %i.ob, label %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit
  %i.oc = ptrtoint ptr %i.nw to i64
  %i.od = ptrtoint ptr %i.nx to i64
  %i.oe = sub i64 %i.od, %i.oc
  %i.of = sdiv exact i64 %i.oe, 96                ; 5 uses
  %i.og = icmp ugt i64 %i.of, 1152921504606846975
  br i1 %i.og, label %.noexc.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #30
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  %.not.i.i.i.i.i = icmp eq ptr %i.nx, %i.nw      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i99, label %.noexc21.i

.noexc21.i:                                       ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.oh = shl nuw nsw i64 %i.of, 3
  %i.oi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oh) #31 ; 6 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.of
  store double 0.000000e+00, ptr %i.oi, align 8, !tbaa !42
  %i.ok = add nsw i64 %i.of, -1                   ; 2 uses
  %i.ol = icmp eq i64 %i.ok, 0
  br i1 %i.ol, label %.lr.ph.preheader.i96, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i:             ; preds = %.noexc21.i
  %i.om = getelementptr i8, ptr %i.oi, i64 8
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ok, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.om, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !42
  %i.on = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.oo = lshr exact i64 %i.on, 3
  br label %.lr.ph.preheader.i96

.lr.ph.preheader.i96:                             ; preds = %.noexc21.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i
  %i.op = phi i64 [ %i.oo, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i ], [ 1, %.noexc21.i ]
  %i.oq = phi i64 [ %i.on, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i ], [ 8, %.noexc21.i ]
  br label %.lr.ph.i97

._crit_edge.i99.loopexit:                         ; preds = %bb.ab
  %i.or = ptrtoint ptr %i.oi to i64
  %i.os = ptrtoint ptr %i.oj to i64
  br label %._crit_edge.i99

._crit_edge.i99:                                  ; preds = %._crit_edge.i99.loopexit, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ot = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.oq, %._crit_edge.i99.loopexit ]
  %i.ou = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.or, %._crit_edge.i99.loopexit ] ; 2 uses
  %.sroa.025.057.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.oi, %._crit_edge.i99.loopexit ] ; 7 uses
  %.sroa.15.056.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.os, %._crit_edge.i99.loopexit ] ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.025.057.i, i64 %i.ot
  invoke void @_ZNK3gmx11BiasSharing25sumOverSharingSimulationsENS_8ArrayRefIdEEi(ptr noundef nonnull align 8 dereferenceable(104) %i.nz, ptr %.sroa.025.057.i, ptr %i.ov, i32 noundef %i.oa)
          to label %bb.ac unwind label %bb.ae

.lr.ph.i97:                                       ; preds = %bb.ab, %.lr.ph.preheader.i96
  %.01639.i = phi i64 [ %i.pf, %bb.ab ], [ 0, %.lr.ph.preheader.i96 ] ; 3 uses
  %i.ow = getelementptr inbounds [96 x i8], ptr %i.nw, i64 %.01639.i ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !21
  %i.oz = fcmp ogt double %i.oy, 0.000000e+00
  br i1 %i.oz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i97
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 64
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !22
  %i.pc = call double @exp(double noundef %i.pb) #33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i97
  %i.pd = phi double [ %i.pc, %bb.aa ], [ 0.000000e+00, %.lr.ph.i97 ]
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %.01639.i
  store double %i.pd, ptr %i.pe, align 8, !tbaa !42
  %i.pf = add nuw i64 %.01639.i, 1                ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %i.pf, %i.op
  br i1 %exitcond.not.i98, label %._crit_edge.i99.loopexit, label %.lr.ph.i97, !llvm.loop !331

bb.ac:                                            ; preds = %._crit_edge.i99
  %i.pg = sitofp i32 %i.ny to double
  %i.ph = fdiv nnan double 1.000000e+00, %i.pg
  br i1 %.not.i.i.i.i.i, label %._crit_edge44.i, label %.lr.ph43.i

._crit_edge44.i:                                  ; preds = %bb.ah, %bb.ac
  %.not.i.i.i.i100 = icmp eq ptr %.sroa.025.057.i, null
  br i1 %.not.i.i.i.i100, label %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge44.i
  %i.pi = sub i64 %.sroa.15.056.i, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.025.057.i, i64 noundef %i.pi) #32
  br label %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit

bb.ae:                                            ; preds = %._crit_edge.i99
  %i.pj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i22.i = icmp eq ptr %.sroa.025.057.i, null
  br i1 %.not.i.i.i22.i, label %common.resume, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.pk = sub i64 %.sroa.15.056.i, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.025.057.i, i64 noundef %i.pk) #32
  br label %common.resume

.lr.ph43.i:                                       ; preds = %bb.ac, %bb.ah
  %.041.i = phi i64 [ %i.pu, %bb.ah ], [ 0, %bb.ac ] ; 3 uses
  %i.pl = getelementptr inbounds nuw [96 x i8], ptr %i.nw, i64 %.041.i ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !21
  %i.po = fcmp ogt double %i.pn, 0.000000e+00
  br i1 %i.po, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph43.i
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.025.057.i, i64 %.041.i
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !42
  %i.pr = fmul double %i.ph, %i.pq
  %i.ps = call double @log(double noundef %i.pr) #33
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pl, i64 64
  store double %i.ps, ptr %i.pt, align 8, !tbaa !22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph43.i
  %i.pu = add nuw nsw i64 %.041.i, 1              ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.pu, %i.of
  br i1 %exitcond46.not.i, label %._crit_edge44.i, label %.lr.ph43.i, !llvm.loop !332

_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit: ; preds = %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit, %._crit_edge44.i, %bb.ad
  %i.pv = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.pw = load ptr, ptr %i.aw, align 8, !tbaa !38 ; 2 uses
  %.not156166.not = icmp eq ptr %i.pv, %i.pw
  br i1 %.not156166.not, label %._crit_edge, label %.lr.ph169

.lr.ph169:                                        ; preds = %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit
  %i.px = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph169
  %.sroa.0137.0167 = phi ptr [ %i.pv, %.lr.ph169 ], [ %i.qf, %bb.ai ] ; 2 uses
  %i.py = load i32, ptr %.sroa.0137.0167, align 4, !tbaa !39
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [96 x i8], ptr %i.px, i64 %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !90
  %i.qd = call noundef double @llvm.fabs.f64(double %i.qc)
  %i.qe = fcmp ogt double %i.qd, 3.500000e+02     ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.0137.0167, i64 4 ; 2 uses
  %.not156.not = icmp eq ptr %i.qf, %i.pw
  %or.cond298 = select i1 %i.qe, i1 true, i1 %.not156.not
  br i1 %or.cond298, label %._crit_edge, label %bb.ai

._crit_edge:                                      ; preds = %bb.ai, %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit
  %.not156.lcssa = phi i1 [ false, %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit ], [ %i.qe, %bb.ai ] ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.qh = load i8, ptr %i.qg, align 4, !tbaa !94, !range !95, !noundef !96
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qk = load i8, ptr %i.qj, align 8, !tbaa !98, !range !95, !noundef !96
  %i.ql = trunc nuw i8 %i.qk to i1
  %i.qm = xor i1 %i.ql, true
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  %i.qn = phi i1 [ false, %._crit_edge ], [ %i.qm, %bb.aj ]
  %i.qo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !88
  %i.qq = icmp ne i32 %i.qp, 0
  %or.cond = or i1 %i.qn, %i.qq
  br i1 %or.cond, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.qr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !343
  %i.qt = srem i64 %7, %i.qs
  %i.qu = icmp eq i64 %i.qt, 0
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.qv = phi i1 [ false, %bb.ak ], [ %i.qu, %bb.al ] ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.qx = load i8, ptr %i.qw, align 8, !tbaa !98, !range !95, !noundef !96
  %i.qy = trunc nuw i8 %i.qx to i1
  %i.qz = icmp sgt i64 %7, 0
  %or.cond155 = and i1 %i.qz, %i.qy
  br i1 %or.cond155, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit: ; preds = %bb.am
  %i.ra = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !344
  %i.rc = srem i64 %7, %i.rb
  %i.rd = icmp eq i64 %i.rc, 0
  br i1 %i.rd, label %bb.an, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

bb.an:                                            ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit
  %i.re = call noundef zeroext i1 @_ZNK3gmx9BiasState23isSamplingRegionCoveredERKNS_10BiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(137) %4, ptr %1, ptr poison, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread: ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit, %bb.an, %bb.am
  %.067 = phi i1 [ false, %bb.am ], [ false, %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit ], [ %i.re, %bb.an ] ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.rg = load ptr, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %i.rh = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rg to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.rk
  %i.rm = load ptr, ptr %i.ic, align 8, !tbaa !81 ; 3 uses
  store ptr %i.rm, ptr %14, align 8, !tbaa !134
  %i.rn = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ro = load ptr, ptr %i.ie, align 8, !tbaa !80
  %i.rp = ptrtoint ptr %i.ro to i64
  %i.rq = ptrtoint ptr %i.rm to i64
  %i.rr = sub i64 %i.rp, %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.rr
  store ptr %i.rs, ptr %i.rn, align 8, !tbaa !134
  %i.rt = call noundef double @_ZN3gmx13HistogramSize16newHistogramSizeERKNS_10BiasParamsEdbNS_8ArrayRefIKNS_10PointStateEEENS4_IdEEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(65) %i.rf, ptr noundef nonnull align 8 dereferenceable(137) %4, double noundef %6, i1 noundef zeroext %.067, ptr %i.rg, ptr %i.rl, ptr noundef nonnull byval(%"class.gmx::ArrayRef.72") align 8 %14, ptr noundef %8) ; 2 uses
  %or.cond3 = or i1 %i.qv, %.067
  br i1 %or.cond3, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread
  %i.ru = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.rv = load i8, ptr %i.ru, align 8, !tbaa !345, !range !95, !noundef !96
  %i.rw = trunc nuw i8 %i.rv to i1
  %i.rx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ry = load double, ptr %i.rx, align 8
  %i.rz = fcmp une double %i.ry, 1.000000e+00
  %.not158 = select i1 %i.rw, i1 true, i1 %i.rz
  %or.cond5 = or i1 %.not156.lcssa, %.not158
  br i1 %or.cond5, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao, %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread
  %i.sa = load ptr, ptr %9, align 8, !tbaa !123   ; 3 uses
  %i.sb = load ptr, ptr %i.aw, align 8, !tbaa !122 ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.sb, %i.sa
  br i1 %.not.i.i101, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ap
  store ptr %i.sa, ptr %i.aw, align 8, !tbaa !122
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.ap, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.sc = phi ptr [ %i.sb, %bb.ap ], [ %i.sa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.sd = load ptr, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.se = load ptr, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %.not183 = icmp eq ptr %i.sd, %i.se
  br i1 %.not183, label %.loopexit, label %.lr.ph173

.lr.ph173:                                        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.sf = phi ptr [ %i.ti, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.se, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 3 uses
  %i.sg = phi ptr [ %i.tj, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.sd, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 2 uses
  %i.sh = phi ptr [ %i.tk, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.sc, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 5 uses
  %.066172 = phi i64 [ %i.tl, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 3 uses
  %i.si = getelementptr inbounds nuw [96 x i8], ptr %i.sf, i64 %.066172
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !21
  %i.sl = fcmp ogt double %i.sk, 0.000000e+00
  br i1 %i.sl, label %bb.aq, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.aq:                                            ; preds = %.lr.ph173
  %i.sm = trunc i64 %.066172 to i32               ; 2 uses
  %i.sn = load ptr, ptr %i.ay, align 8, !tbaa !157
  %.not.i.i102 = icmp eq ptr %i.sh, %i.sn
  br i1 %.not.i.i102, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.sm, ptr %i.sh, align 4, !tbaa !39
  %i.so = getelementptr inbounds nuw i8, ptr %i.sh, i64 4 ; 2 uses
  store ptr %i.so, ptr %i.aw, align 8, !tbaa !122
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.as:                                            ; preds = %bb.aq
  %i.sp = load ptr, ptr %9, align 8, !tbaa !123   ; 4 uses
  %i.sq = ptrtoint ptr %i.sh to i64
  %i.sr = ptrtoint ptr %i.sp to i64               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm:bb.a
  %i.ar = shl i64 %n.vec39, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.u, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.c, i64 %i.ar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index40, 3                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.u, i64 %i.au
  %next.gep42 = getelementptr i8, ptr %i.c, i64 %i.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %wide.load43 = load <4 x double>, ptr %next.gep42, align 8, !tbaa !42, !alias.scope !364, !noalias !363
  store <4 x double> %wide.load43, ptr %next.gep41, align 8, !tbaa !42, !alias.scope !363, !noalias !364
  %index.next44 = add nuw i64 %index40, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !360

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.ad, %n.vec39
  br i1 %cmp.n45, label %_ZNSt6vectorIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPdS5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.aw = load double, ptr %.0911.i.i.i, align 8, !tbaa !42, !alias.scope !364, !noalias !363
  store double %i.aw, ptr %.012.i.i.i, align 8, !tbaa !42, !alias.scope !363, !noalias !364
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPdS5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !361

_ZNSt6vectorIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPdS5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt27__uninitialized_default_n_aIPdmN3gmx9AllocatorIdNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPdm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPdS5_S5_RS3_.exit
  tail call void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.c)
  br label %_ZNSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPdS5_S5_RS3_.exit, %bb.f
  store ptr %i.u, ptr %0, align 8, !tbaa !167
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !166
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !362
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmN3gmx9AllocatorIdNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPdm.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x double> @llvm.x86.avx512.max.pd.512(<8 x double>, <8 x double>, i32 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x double> @llvm.x86.avx512.rcp14.pd.512(<8 x double>, <8 x double>, i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fma.v8f64(<8 x double>, <8 x double>, <8 x double>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.mask.cvtpd2dq.512(<8 x double>, <8 x i32>, i8, i32 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x double> @llvm.x86.avx512.mask.rndscale.pd.512(<8 x double>, i32 immarg, <8 x double>, i8, i32 immarg) #21

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK3gmx9BiasState17calcConvolvedBiasENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERA4_Kd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.gmx::ArrayRef.38", align 8  ; 2 uses
  %i.a = tail call noundef i32 @_ZNK3gmx8BiasGrid12nearestIndexEPKd(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %4) ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = load ptr, ptr %3, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %.not27 = icmp eq ptr %i.f, %i.h
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.n = fcmp ogt double %.0.lcssa, 0.000000e+00
  %i.o = tail call double @llvm.log.f64(double %.0.lcssa)
  %i.p = select i1 %i.n, double %i.o, double f0xC7EFFFFFE0000000
  ret double %i.p

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.029 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.sroa.022.028 = phi ptr [ %i.f, %.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %i.q = load i32, ptr %.sroa.022.028, align 4, !tbaa !39 ; 3 uses
  %i.r = tail call noundef zeroext i1 @_ZN3gmx25pointsHaveDifferentLambdaERKNS_8BiasGridEii(ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef %i.a, i32 noundef %i.q)
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %i.s, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.w = tail call fastcc noundef double @_ZN3gmx12_GLOBAL__N_124biasedLogWeightFromPointENS_8ArrayRefIKNS_9DimParamsEEENS1_IKNS_10PointStateEEERKNS_8BiasGridEidPKdNS1_ISB_EEi(ptr %1, ptr %i.l, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef %i.q, double noundef %i.v, ptr noundef %4, ptr noundef nonnull byval(%"class.gmx::ArrayRef.38") align 8 %5, i32 noundef %i.a)
  %i.x = tail call double @exp(double noundef %i.w) #33
  %i.y = fadd double %.029, %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi double [ %i.y, %bb.c ], [ %.029, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef i32 @_ZNK3gmx8BiasGrid12nearestIndexEPKd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !132
  %i.c = sext i32 %i.b to i64
  %i.d = load ptr, ptr %1, align 8, !tbaa !32     ; 5 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !123  ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 5 uses
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.m, 4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.m, -4
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.02538.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.du, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.02538.epil = phi i64 [ %.02538.epil.init, %.epil.preheader ], [ %i.z, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.02538.epil
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %.02538.epil
  %i.v = load double, ptr %i.u, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !161
  %i.y = fadd double %i.v, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !161
  %i.z = add nuw i64 %.02538.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !365

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !126
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !127 ; 8 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 48                ; 4 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %._crit_edge
  %i.ak = getelementptr i8, ptr %i.i, i64 %i.l
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !39
  %i.an = load i32, ptr %i.i, align 4, !tbaa !39
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 5 uses
  %i.ar = sext i32 %i.am to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %wide.trip.count = and i64 %i.ah, 2147483647    ; 7 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph42
  %4 = add nsw i64 %wide.trip.count, -1
  %scevgep = getelementptr i8, ptr %i.ad, i64 36  ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 48) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %5 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %6 = icmp ult ptr %5, %scevgep
  %7 = or i1 %6, %mul.overflow
  br i1 %7, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 176    ; 3 uses
  %i.az = mul nuw nsw i64 %i.ar, 72
  %i.ba = getelementptr i8, ptr %i.d, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.aw
  %i.bc = getelementptr i8, ptr %i.bb, i64 32
  %i.bd = mul nuw nsw i64 %i.ao, 72
  %i.be = getelementptr i8, ptr %i.d, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.aw
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %i.bh = getelementptr i8, ptr %i.ad, i64 36
  %i.bi = mul nuw nsw i64 %wide.trip.count, 48
  %i.bj = getelementptr i8, ptr %i.ad, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %bound0 = icmp ult ptr %i.au, %i.bc
  %bound1 = icmp ult ptr %i.at, %i.ay
  %found.conflict = and i1 %bound0, %bound1
  %bound059 = icmp ult ptr %i.au, %i.bg
  %bound160 = icmp ult ptr %i.aq, %i.ay
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx = or i1 %found.conflict, %found.conflict61
  %bound062 = icmp ult ptr %i.au, %i.bk
  %bound163 = icmp ult ptr %i.bh, %i.ay
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx, %found.conflict64
  br i1 %conflict.rdx65, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index
  %wide.load = load <4 x i32>, ptr %i.bl, align 4, !tbaa !39, !alias.scope !373 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index
  %wide.load66 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !39, !alias.scope !374 ; 2 uses
  %i.bn = icmp sgt <4 x i32> %wide.load, %wide.load66
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.ad, <4 x i64> %vec.ind
  %wide.gep67 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 36
  %wide.masked.gather = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep67, <4 x i1> %i.bn, <4 x i32> zeroinitializer), !tbaa !155, !alias.scope !375
  %predphi = add nsw <4 x i32> %wide.load66, %wide.masked.gather
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %wide.load68.a = load <4 x i32>, ptr %i.bo, align 8, !tbaa !39, !alias.scope !376, !noalias !377
  %i.bp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load68.a)
  store <4 x i32> %i.bp, ptr %i.bo, align 8, !tbaa !39, !alias.scope !376, !noalias !377
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %wide.load69 = load <4 x i32>, ptr %i.bq, align 8, !tbaa !39, !alias.scope !376, !noalias !377
  %i.br = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load69, <4 x i32> %predphi)
  store <4 x i32> %i.br, ptr %i.bq, align 8, !tbaa !39, !alias.scope !376, !noalias !377
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge43, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph42, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph42 ], [ %n.vec, %middle.block ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter71 = and i64 %i.ah, 1
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.ph
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !39 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.ph
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !39 ; 3 uses
  %i.bx = icmp sgt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.c, label %scalar.ph.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %scalar.ph.prol
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 36
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !155
  %i.cb = add nsw i32 %i.ca, %i.bw
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.c, %scalar.ph.prol
  %.036.prol = phi i32 [ %i.cb, %bb.c ], [ %i.bw, %scalar.ph.prol ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.ph ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !39
  %.sroa.speculated32.prol = tail call i32 @llvm.smin.i32(i32 %i.bu, i32 %i.cd)
  store i32 %.sroa.speculated32.prol, ptr %i.cc, align 8, !tbaa !39
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.ph ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !39
  %.sroa.speculated.prol = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 %.036.prol)
  store i32 %.sroa.speculated.prol, ptr %i.ce, align 8, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.cg = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.cg, label %._crit_edge43, label %scalar.ph

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.02538 = phi i64 [ 0, %.lr.ph.new ], [ %i.du, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.02538
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !39
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.cj
  %i.cl = getelementptr inbounds [8 x i8], ptr %2, i64 %.02538
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !161
  %i.cp = fadd double %i.cm, %i.co
  store double %i.cp, ptr %i.cn, align 8, !tbaa !161
  %i.cq = or disjoint i64 %.02538, 1              ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !39
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.ct
  %i.cv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cq
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !161
  %i.cz = fadd double %i.cw, %i.cy
  store double %i.cz, ptr %i.cx, align 8, !tbaa !161
  %i.da = or disjoint i64 %.02538, 2              ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !39
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.dd
  %i.df = getelementptr inbounds [8 x i8], ptr %2, i64 %i.da
  %i.dg = load double, ptr %i.df, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !161
  %i.dj = fadd double %i.dg, %i.di
  store double %i.dj, ptr %i.dh, align 8, !tbaa !161
  %i.dk = or disjoint i64 %.02538, 3              ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !39
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.dn
  %i.dp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dk
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !42
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 32 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !161
  %i.dt = fadd double %i.dq, %i.ds
  store double %i.dt, ptr %i.dr, align 8, !tbaa !161
  %i.du = add nuw i64 %.02538, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3

._crit_edge43:                                    ; preds = %scalar.ph.prol.loopexit, %bb.g, %middle.block, %._crit_edge
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.g ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !39 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !39 ; 3 uses
  %i.dz = icmp sgt i32 %i.dw, %i.dy
  br i1 %i.dz, label %bb.e, label %scalar.ph.1

bb.e:                                             ; preds = %scalar.ph
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !155
  %i.ed = add nsw i32 %i.ec, %i.dy
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.e, %scalar.ph
  %.036 = phi i32 [ %i.ed, %bb.e ], [ %i.dy, %scalar.ph ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !39
  %.sroa.speculated32 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.ef)
  store i32 %.sroa.speculated32, ptr %i.ee, align 4, !tbaa !39
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !39
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.eh, i32 %.036)
  store i32 %.sroa.speculated, ptr %i.eg, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !39 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !39 ; 3 uses
  %i.em = icmp sgt i32 %i.ej, %i.el
  br i1 %i.em, label %bb.f, label %bb.g

bb.f:                                             ; preds = %scalar.ph.1
  %i.en = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 36
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !155
  %i.eq = add nsw i32 %i.ep, %i.el
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %scalar.ph.1
  %.036.1 = phi i32 [ %i.eq, %bb.f ], [ %i.el, %scalar.ph.1 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !39
  %.sroa.speculated32.1 = tail call i32 @llvm.smin.i32(i32 %i.ej, i32 %i.es)
  store i32 %.sroa.speculated32.1, ptr %i.er, align 4, !tbaa !39
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !39
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.eu, i32 %.036.1)
  store i32 %.sroa.speculated.1, ptr %i.et, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond45.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond45.not.1, label %._crit_edge43, label %scalar.ph, !llvm.loop !372
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx9BiasState17sampleCoordAndPmfERKSt6vectorINS_9DimParamsESaIS2_EERKNS_8BiasGridENS_8ArrayRefIKdEEd(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree readonly captures(none) %3, ptr nofree readnone captures(none) %4, double noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132  ; 4 uses
  %i.d = tail call i64 @_ZNK3gmx8BiasGrid15lambdaAxisIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %2) ; 2 uses
  %i.e = and i64 %i.d, 4294967296
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %i.c to i64
  %i.g = load ptr, ptr %2, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !122  ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = tail call i64 @_ZNK3gmx8BiasGrid15lambdaAxisIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !391 ; 2 uses
  %i.o = and i64 %i.n, 4294967296
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEEENK3$_0clEv", ptr noundef nonnull @.str.3, i32 noundef 249) #30, !noalias !391
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZNK3gmx8BiasGrid18numFepLambdaStatesEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !391 ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %.noexc.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #30, !noalias !391
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %.noexc15.i

.noexc15.i:                                       ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.s = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #31, !noalias !391 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !42, !noalias !391
  %i.v = ptrtoint ptr %i.u to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc15.i
end_hunk_1
begin_hunk_2_@_ZN3gmx9BiasState17sampleCoordAndPmfERKSt6vectorINS_9DimParamsESaIS2_EERKNS_8BiasGridENS_8ArrayRefIKdEEd:bb.a
  %i.cl = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.cm = load ptr, ptr %i.i, align 8, !tbaa !123 ; 2 uses
  %.not72 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit
  %sext = shl i64 %i.d, 32
  %i.cn = ashr exact i64 %sext, 32                ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.r, %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %.not.i.i.i = icmp eq ptr %.sroa.055.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cr = ptrtoint ptr %.sroa.055.0 to i64
  %i.cs = sub i64 %.sroa.9.0, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.0, i64 noundef %i.cs) #32
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.h:                                             ; preds = %.lr.ph, %bb.r
  %i.ct = phi ptr [ %i.cm, %.lr.ph ], [ %i.ea, %bb.r ]
  %.03971 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %bb.r ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.03971
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !39 ; 3 uses
  %i.cw = invoke noundef zeroext i1 @_ZN3gmx21pointsAlongLambdaAxisERKNS_8BiasGridEii(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.c, i32 noundef %i.cv)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.cw, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.cx = sext i32 %i.cv to i64                   ; 3 uses
  %i.cy = load ptr, ptr %2, align 8, !tbaa !32
  %i.cz = getelementptr inbounds nuw [72 x i8], ptr %i.cy, i64 %i.cx
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.cn
  %i.db = load double, ptr %i.da, align 8, !tbaa !42 ; 2 uses
  %i.dc = icmp eq i32 %i.cv, %i.c                 ; 2 uses
  br i1 %i.dc, label %bb.m, label %_ZNKRSt8optionalIiE5valueEv.exit43

bb.k:                                             ; preds = %bb.h
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %_ZNKRSt8optionalIiE5valueEv.exit43
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNKRSt8optionalIiE5valueEv.exit43:               ; preds = %bb.j
  store double %i.db, ptr %i.co, align 8, !tbaa !42
  %i.df = load ptr, ptr %1, align 8, !tbaa !394   ; 3 uses
  %i.dg = load ptr, ptr %i.cp, align 8, !tbaa !395
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj
  %i.dl = invoke noundef double @_ZNK3gmx9BiasState17calcConvolvedBiasENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERA4_Kd(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr %i.df, ptr %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.m unwind label %bb.l

bb.m:                                             ; preds = %_ZNKRSt8optionalIiE5valueEv.exit43, %bb.j
  %.038 = phi double [ %5, %bb.j ], [ %i.dl, %_ZNKRSt8optionalIiE5valueEv.exit43 ]
  %i.dm = fptoui double %i.db to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.055.0, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !42 ; 2 uses
  %i.dp = fcmp olt double %i.do, f0x0010000000000000
  %.sroa.speculated = select i1 %i.dp, double f0x0010000000000000, double %i.do
  %i.dq = call double @log(double noundef %.sroa.speculated) #33
  %i.dr = fsub double %.038, %i.dq                ; 2 uses
  br i1 %i.dc, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ds = invoke noundef zeroext i1 @_ZNK3gmx8BiasGrid6coversEPKd(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %0)
          to label %bb.o unwind label %.thread

bb.o:                                             ; preds = %bb.n
  br i1 %i.ds, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %i.cq, align 8, !tbaa !17
  %i.du = getelementptr inbounds nuw [96 x i8], ptr %i.dt, i64 %i.cx
  invoke void @_ZN3gmx10PointState9samplePmfEd(ptr noundef nonnull align 8 dereferenceable(96) %i.du, double noundef %i.dr)
          to label %bb.r unwind label %.thread

.thread:                                          ; preds = %bb.n, %bb.p, %bb.q
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.t

bb.q:                                             ; preds = %bb.o, %bb.m
  %i.dw = load ptr, ptr %i.cq, align 8, !tbaa !17
  %i.dx = getelementptr inbounds nuw [96 x i8], ptr %i.dw, i64 %i.cx
  invoke void @_ZN3gmx10PointState18updatePmfUnvisitedEd(ptr noundef nonnull align 8 dereferenceable(96) %i.dx, double noundef %i.dr)
          to label %bb.r unwind label %.thread

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.i
  %i.dy = add nuw i64 %.03971, 1                  ; 2 uses
  %i.dz = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.ea = load ptr, ptr %i.i, align 8, !tbaa !123 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 2
  %i.ef = icmp ult i64 %i.dy, %i.ee
  br i1 %i.ef, label %bb.h, label %._crit_edge, !llvm.loop !382

bb.s:                                             ; preds = %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.k ], [ %i.de, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %.not.i.i.i44 = icmp eq ptr %.sroa.055.0, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIdSaIdEED2Ev.exit45, label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %.pn.pn69 = phi { ptr, i32 } [ %i.dv, %.thread ], [ %.pn.pn, %bb.s ]
  %i.eg = ptrtoint ptr %.sroa.055.0 to i64
  %i.eh = sub i64 %.sroa.9.0, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.0, i64 noundef %i.eh) #32
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit45

_ZNSt6vectorIdSaIdEED2Ev.exit45:                  ; preds = %bb.s, %bb.t
  %.pn.pn70 = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %.pn.pn69, %bb.t ]
  resume { ptr, i32 } %.pn.pn70

bb.u:                                             ; preds = %bb.a
  %i.ei = tail call noundef zeroext i1 @_ZNK3gmx8BiasGrid6coversEPKd(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %0)
  br i1 %i.ei, label %bb.v, label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ek = sext i32 %i.c to i64
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !17
  %i.em = getelementptr inbounds nuw [96 x i8], ptr %i.el, i64 %i.ek
  tail call void @_ZN3gmx10PointState9samplePmfEd(ptr noundef nonnull align 8 dereferenceable(96) %i.em, double noundef %5)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.g, %._crit_edge, %bb.u, %bb.v
  %i.en = load i32, ptr %i.b, align 8, !tbaa !132
  %i.eo = sext i32 %i.en to i64
  %i.ep = load ptr, ptr %2, align 8, !tbaa !32    ; 5 uses
  %i.eq = getelementptr inbounds nuw [72 x i8], ptr %i.ep, i64 %i.eo ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !122 ; 2 uses
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !123 ; 9 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = ashr exact i64 %i.ex, 2                 ; 3 uses
  %.not.i46 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i46, label %._crit_edge.i, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !17 ; 5 uses
  %xtraiter104 = and i64 %i.ey, 3                 ; 3 uses
  %i.fb = icmp ult i64 %i.ey, 4
  br i1 %i.fb, label %.epil.preheader103, label %.lr.ph.i47.new

.lr.ph.i47.new:                                   ; preds = %.lr.ph.i47
  %unroll_iter108 = and i64 %i.ey, -4
  br label %bb.y

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.y
  %lcmp.mod106.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod106.not, label %._crit_edge.i, label %.epil.preheader103

.epil.preheader103:                               ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i47
  %.02538.i.epil.init = phi i64 [ 0, %.lr.ph.i47 ], [ %i.jg, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter104, 0
  call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader103
  %.02538.i.epil = phi i64 [ %.02538.i.epil.init, %.epil.preheader103 ], [ %i.fl, %bb.w ] ; 3 uses
  %epil.iter105 = phi i64 [ 0, %.epil.preheader103 ], [ %epil.iter105.next, %bb.w ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.02538.i.epil
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !39
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [96 x i8], ptr %i.fa, i64 %i.fe
  %i.fg = getelementptr inbounds [8 x i8], ptr %3, i64 %.02538.i.epil
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !42
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 32 ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !161
  %i.fk = fadd double %i.fh, %i.fj
  store double %i.fk, ptr %i.fi, align 8, !tbaa !161
  %i.fl = add nuw i64 %.02538.i.epil, 1
  %epil.iter105.next = add i64 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i64 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %._crit_edge.i, label %bb.w, !llvm.loop !383

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.w, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !126
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !127 ; 8 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = sdiv exact i64 %i.fs, 48                ; 4 uses
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph42.i, label %_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE.exit

.lr.ph42.i:                                       ; preds = %._crit_edge.i
  %i.fw = getelementptr i8, ptr %i.eu, i64 %i.ex
  %i.fx = getelementptr i8, ptr %i.fw, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !39
  %i.fz = load i32, ptr %i.eu, align 4, !tbaa !39
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds nuw [72 x i8], ptr %i.ep, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32 ; 5 uses
  %i.gd = sext i32 %i.fy to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw [72 x i8], ptr %i.ep, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %wide.trip.count.i = and i64 %i.ft, 2147483647  ; 7 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph42.i
  %6 = add nsw i64 %wide.trip.count.i, -1
  %scevgep = getelementptr i8, ptr %i.fp, i64 36  ; 2 uses
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %6, i64 48) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %7 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %8 = icmp ult ptr %7, %scevgep
  %9 = or i1 %8, %mul.overflow
  br i1 %9, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gi = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.gj = getelementptr i8, ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 176    ; 3 uses
  %i.gl = mul nuw nsw i64 %i.gd, 72
  %i.gm = getelementptr i8, ptr %i.ep, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 %i.gi
  %i.go = getelementptr i8, ptr %i.gn, i64 32
  %i.gp = mul nuw nsw i64 %i.ga, 72
  %i.gq = getelementptr i8, ptr %i.ep, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.gi
  %i.gs = getelementptr i8, ptr %i.gr, i64 32
  %i.gt = getelementptr i8, ptr %i.fp, i64 36
  %i.gu = mul nuw nsw i64 %wide.trip.count.i, 48
  %i.gv = getelementptr i8, ptr %i.fp, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 -8
  %bound0 = icmp ult ptr %i.gg, %i.go
  %bound1 = icmp ult ptr %i.gf, %i.gk
  %found.conflict = and i1 %bound0, %bound1
  %bound091 = icmp ult ptr %i.gg, %i.gs
  %bound192 = icmp ult ptr %i.gc, %i.gk
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %found.conflict, %found.conflict93
  %bound094 = icmp ult ptr %i.gg, %i.gw
  %bound195 = icmp ult ptr %i.gt, %i.gk
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx, %found.conflict96
  br i1 %conflict.rdx97, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ft, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %index
  %wide.load = load <4 x i32>, ptr %i.gx, align 4, !tbaa !39, !alias.scope !396 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index
  %wide.load98 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !39, !alias.scope !397 ; 2 uses
  %i.gz = icmp sgt <4 x i32> %wide.load, %wide.load98
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.fp, <4 x i64> %vec.ind
  %wide.gep99 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 36
  %wide.masked.gather = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep99, <4 x i1> %i.gz, <4 x i32> zeroinitializer), !tbaa !155, !alias.scope !398
  %predphi = add nsw <4 x i32> %wide.load98, %wide.masked.gather
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index ; 2 uses
  %wide.load100.a = load <4 x i32>, ptr %i.ha, align 8, !tbaa !39, !alias.scope !399, !noalias !400
  %i.hb = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load100.a)
  store <4 x i32> %i.hb, ptr %i.ha, align 8, !tbaa !39, !alias.scope !399, !noalias !400
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index ; 2 uses
  %wide.load101 = load <4 x i32>, ptr %i.hc, align 8, !tbaa !39, !alias.scope !399, !noalias !400
  %i.hd = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load101, <4 x i32> %predphi)
  store <4 x i32> %i.hd, ptr %i.hc, align 8, !tbaa !39, !alias.scope !399, !noalias !400
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !389

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph42.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph42.i ], [ %n.vec, %middle.block ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %xtraiter110 = and i64 %i.ft, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i.ph
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !39 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.i.ph
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !39 ; 3 uses
  %i.hj = icmp sgt i32 %i.hg, %i.hi
  br i1 %i.hj, label %bb.x, label %scalar.ph.prol.loopexit.unr-lcssa

bb.x:                                             ; preds = %scalar.ph.prol
  %i.hk = getelementptr inbounds nuw [48 x i8], ptr %i.fp, i64 %indvars.iv.i.ph
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !155
  %i.hn = add nsw i32 %i.hm, %i.hi
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.x, %scalar.ph.prol
  %.036.i.prol = phi i32 [ %i.hn, %bb.x ], [ %i.hi, %scalar.ph.prol ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i.ph ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !39
  %.sroa.speculated32.i.prol = call i32 @llvm.smin.i32(i32 %i.hg, i32 %i.hp)
  store i32 %.sroa.speculated32.i.prol, ptr %i.ho, align 8, !tbaa !39
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i.ph ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !39
  %.sroa.speculated.i.prol = call i32 @llvm.smax.i32(i32 %i.hr, i32 %.036.i.prol)
  store i32 %.sroa.speculated.i.prol, ptr %i.hq, align 8, !tbaa !39
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.hs = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.hs, label %_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE.exit, label %scalar.ph

bb.y:                                             ; preds = %bb.y, %.lr.ph.i47.new
  %.02538.i = phi i64 [ 0, %.lr.ph.i47.new ], [ %i.jg, %bb.y ] ; 6 uses
  %niter109 = phi i64 [ 0, %.lr.ph.i47.new ], [ %niter109.next.3, %bb.y ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.02538.i
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !39
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [96 x i8], ptr %i.fa, i64 %i.hv
  %i.hx = getelementptr inbounds [8 x i8], ptr %3, i64 %.02538.i
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !42
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 32 ; 2 uses
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !161
  %i.ib = fadd double %i.hy, %i.ia
  store double %i.ib, ptr %i.hz, align 8, !tbaa !161
  %i.ic = or disjoint i64 %.02538.i, 1            ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !39
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [96 x i8], ptr %i.fa, i64 %i.if
  %i.ih = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ic
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !42
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 32 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !161
  %i.il = fadd double %i.ii, %i.ik
  store double %i.il, ptr %i.ij, align 8, !tbaa !161
  %i.im = or disjoint i64 %.02538.i, 2            ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !39
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [96 x i8], ptr %i.fa, i64 %i.ip
  %i.ir = getelementptr inbounds [8 x i8], ptr %3, i64 %i.im
  %i.is = load double, ptr %i.ir, align 8, !tbaa !42
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 32 ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !161
  %i.iv = fadd double %i.is, %i.iu
  store double %i.iv, ptr %i.it, align 8, !tbaa !161
  %i.iw = or disjoint i64 %.02538.i, 3            ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !39
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [96 x i8], ptr %i.fa, i64 %i.iz
  %i.jb = getelementptr inbounds [8 x i8], ptr %3, i64 %i.iw
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !42
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !161
  %i.jf = fadd double %i.jc, %i.je
  store double %i.jf, ptr %i.jd, align 8, !tbaa !161
  %i.jg = add nuw i64 %.02538.i, 4                ; 2 uses
  %niter109.next.3 = add i64 %niter109, 4         ; 2 uses
  %niter109.ncmp.3 = icmp eq i64 %niter109.next.3, %unroll_iter108
  br i1 %niter109.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.y, !llvm.loop !3

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.ab
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.ab ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !39 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.i
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !39 ; 3 uses
  %i.jl = icmp sgt i32 %i.ji, %i.jk
  br i1 %i.jl, label %bb.z, label %scalar.ph.1

bb.z:                                             ; preds = %scalar.ph
  %i.jm = getelementptr inbounds nuw [48 x i8], ptr %i.fp, i64 %indvars.iv.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 36
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !155
  %i.jp = add nsw i32 %i.jo, %i.jk
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.z, %scalar.ph
  %.036.i = phi i32 [ %i.jp, %bb.z ], [ %i.jk, %scalar.ph ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !39
  %.sroa.speculated32.i = call i32 @llvm.smin.i32(i32 %i.ji, i32 %i.jr)
  store i32 %.sroa.speculated32.i, ptr %i.jq, align 4, !tbaa !39
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !39
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 %.036.i)
  store i32 %.sroa.speculated.i, ptr %i.js, align 4, !tbaa !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next.i
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !39 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.next.i
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !39 ; 3 uses
  %i.jy = icmp sgt i32 %i.jv, %i.jx
  br i1 %i.jy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %scalar.ph.1
  %i.jz = getelementptr inbounds nuw [48 x i8], ptr %i.fp, i64 %indvars.iv.next.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 36
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !155
  %i.kc = add nsw i32 %i.kb, %i.jx
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %scalar.ph.1
  %.036.i.1 = phi i32 [ %i.kc, %bb.aa ], [ %i.jx, %scalar.ph.1 ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !39
  %.sroa.speculated32.i.1 = call i32 @llvm.smin.i32(i32 %i.jv, i32 %i.ke)
  store i32 %.sroa.speculated32.i.1, ptr %i.kd, align 4, !tbaa !39
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next.i ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !39
  %.sroa.speculated.i.1 = call i32 @llvm.smax.i32(i32 %i.kg, i32 %.036.i.1)
  store i32 %.sroa.speculated.i.1, ptr %i.kf, align 4, !tbaa !39
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond45.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond45.not.i.1, label %_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE.exit, label %scalar.ph, !llvm.loop !390

_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE.exit: ; preds = %scalar.ph.prol.loopexit, %bb.ab, %middle.block, %._crit_edge.i
  ret void
}

declare i64 @_ZNK3gmx8BiasGrid15lambdaAxisIndexEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3gmx21pointsAlongLambdaAxisERKNS_8BiasGridEii(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK3gmx8BiasGrid6coversEPKd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

declare void @_ZN3gmx10PointState9samplePmfEd(ptr noundef nonnull align 8 dereferenceable(96), double noundef) local_unnamed_addr #3

declare void @_ZN3gmx10PointState18updatePmfUnvisitedEd(ptr noundef nonnull align 8 dereferenceable(96), double noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK3gmx8BiasGrid18numFepLambdaStatesEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx9BiasState20initHistoryFromStateEPNS_14AwhBiasHistoryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 96                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170  ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !171    ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 96                  ; 3 uses
  %i.p = icmp ugt i64 %i.h, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.h, %i.o
  tail call void @_ZNSt6vectorIN3gmx20AwhPointStateHistoryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.q)
  br label %_ZNSt6vectorIN3gmx20AwhPointStateHistoryESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %i.h, %i.o
  br i1 %i.r, label %bb.d, label %_ZNSt6vectorIN3gmx20AwhPointStateHistoryESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.s
  br i1 %.not.i.i, label %_ZNSt6vectorIN3gmx20AwhPointStateHistoryESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN3gmx20AwhPointStateHistoryES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3gmx20AwhPointStateHistoryES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.s, ptr %i.i, align 8, !tbaa !170
end_hunk_2
begin_hunk_3_@_ZN3gmx9BiasStateC2ERKNS_13AwhBiasParamsEdNS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridEPKNS_11BiasSharingE:bb.a
_ZNSt6vectorIN3gmx10PointStateESaIS1_EED2Ev.exit: ; preds = %bb.s, %_ZNSt6vectorIdSaIdEED2Ev.exit46
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN3gmx10CoordStateC1ERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(104), ptr, ptr, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @_ZN3gmx13HistogramSizeC1ERKNS_13AwhBiasParamsEd(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(104), double noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !81
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.m, %bb.g ] ; 2 uses
  %.018 = phi ptr [ %0, %.lr.ph ], [ %i.w, %bb.g ] ; 6 uses
  %.01117 = phi i64 [ %1, %.lr.ph ], [ %i.v, %bb.g ]
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !82

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !180
  %i.m = load ptr, ptr %2, align 8, !tbaa !83     ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %bb.e, !prof !84

bb.d:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc12
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load double, ptr %i.m, align 8, !tbaa !42
  store double %i.t, ptr %i.i, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !80
  %i.v = add i64 %.01117, -1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !476

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #33 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %0, ptr noundef nonnull %.018)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.j

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.w, %bb.g ]
  ret ptr %.0.lcssa

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.z

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #34
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !180
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #32
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i:      ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !477

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x double> @llvm.masked.load.v5f64.p0(ptr captures(none), <5 x i1>, <5 x double>) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { cold noreturn }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { builtin nounwind }
attributes #33 = { nounwind }
attributes #34 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !25}
!2 = distinct !{!2, !25}
!3 = distinct !{!3, !25}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN3gmx10PointStateE", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN3gmx10PointStateESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !14, i64 0}
!18 = !{!"double", !9, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!"_ZTSN3gmx10PointStateE", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !19, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88}
!21 = !{!20, !18, i64 16}
!22 = !{!20, !18, i64 64}
!23 = !{!"float", !9, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!"p1 _ZTSN3gmx9GridPointE", !13, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN3gmx9GridPointESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 8}
!32 = !{!30, !29, i64 0}
!33 = !{!"p1 float", !13, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!34, !33, i64 8}
!36 = !{!34, !33, i64 0}
!37 = !{!"p1 int", !13, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!10, !10, i64 0}
!40 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !9, i64 0, !9, i64 24}
!41 = !{!40, !9, i64 24}
!42 = !{!18, !18, i64 0}
!43 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!44 = !{!"_ZTSN3gmx9DimParams13PullDimParamsE", !18, i64 0, !18, i64 8, !18, i64 16}
!45 = !{!44, !18, i64 8}
!46 = !{!"vtable pointer", !8, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"p1 omnipotent char", !13, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !48, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !19, i64 8, !9, i64 16}
!52 = !{!51, !48, i64 0}
!53 = !{!9, !9, i64 0}
!54 = !{!"_ZTSSt9exception"}
!55 = !{!"_ZTSSt18bad_variant_access", !54, i64 0, !48, i64 8}
!56 = !{!55, !48, i64 8}
!57 = !{!34, !33, i64 16}
!58 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 4, !39}
!59 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !13, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"p1 _ZTSSt9type_info", !13, i64 0}
!62 = !{!"_ZTSSt10type_index", !61, i64 0}
!63 = !{!62, !61, i64 0}
!64 = !{!13, !13, i64 0}
!65 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!66 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0}
!67 = !{!66, !65, i64 0}
!68 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !13, i64 0}
!69 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !68, i64 0, !66, i64 8}
!70 = !{!69, !68, i64 0}
!71 = !{!50, !48, i64 0}
!72 = !{!51, !19, i64 8}
!73 = !{!19, !19, i64 0}
!74 = !{!20, !18, i64 40}
!75 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !13, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!77 = !{!76, !75, i64 0}
!78 = !{!"p1 double", !13, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!79, !78, i64 8}
!81 = !{!79, !78, i64 0}
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = !{!78, !78, i64 0}
!84 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!85 = !{!"_ZTSN3gmx13AwhTargetTypeE", !9, i64 0}
!86 = !{!"bool", !9, i64 0}
!87 = !{!"_ZTSN3gmx10BiasParamsE", !18, i64 0, !19, i64 8, !10, i64 16, !19, i64 24, !19, i64 32, !85, i64 40, !86, i64 44, !18, i64 48, !18, i64 56, !18, i64 64, !86, i64 72, !10, i64 76, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !9, i64 112, !86, i64 128, !10, i64 132, !86, i64 136}
!88 = !{!87, !85, i64 40}
!89 = !{!14, !14, i64 0}
!90 = !{!20, !18, i64 8}
!91 = !{!87, !18, i64 56}
!92 = !{!20, !18, i64 24}
!93 = !{!20, !18, i64 48}
!94 = !{!87, !86, i64 44}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!"_ZTSN3gmx13HistogramSizeE", !19, i64 0, !18, i64 8, !86, i64 16, !18, i64 24, !86, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !86, i64 64}
!98 = !{!97, !86, i64 16}
!99 = !{!"branch_weights", i32 4, i32 12}
!100 = !{!87, !10, i64 76}
!101 = !{!20, !18, i64 88}
!102 = !{!"_ZTSN3gmx10CoordStateE", !9, i64 0, !10, i64 32, !10, i64 36}
!103 = !{!"_ZTSNSt12_Vector_baseIN3gmx10PointStateESaIS1_EE12_Vector_implE", !15, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIN3gmx10PointStateESaIS1_EE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorIN3gmx10PointStateESaIS1_EE", !104, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !79, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !106, i64 0}
!108 = !{!"_ZTSSt6vectorIdSaIdEE", !107, i64 0}
!109 = !{!"p1 _ZTSN3gmx11BiasSharingE", !13, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!111 = !{!"_ZTSNSt12_Vector_baseIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEE12_Vector_implE", !110, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEE", !111, i64 0}
!113 = !{!"_ZTSSt6vectorIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEE", !112, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implE", !76, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE", !114, i64 0}
!116 = !{!"_ZTSSt6vectorIS_IdSaIdEESaIS1_EE", !115, i64 0}
!117 = !{!"_ZTSN3gmx9BiasStateE", !102, i64 0, !105, i64 40, !108, i64 64, !97, i64 88, !9, i64 160, !9, i64 176, !109, i64 192, !113, i64 200, !116, i64 224}
!118 = !{!117, !109, i64 192}
!119 = !{!87, !10, i64 132}
!120 = !{!20, !18, i64 80}
!121 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!122 = !{!121, !37, i64 8}
!123 = !{!121, !37, i64 0}
!124 = !{!"p1 _ZTSN3gmx8GridAxisE", !13, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIN3gmx8GridAxisESaIS1_EE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!126 = !{!125, !124, i64 8}
!127 = !{!125, !124, i64 0}
!128 = !{!"_ZTSN3gmx8GridAxisE", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !10, i64 32, !10, i64 36, !86, i64 40}
!129 = !{!128, !10, i64 32}
!130 = !{!"_ZTSN3gmx23TextLineWrapperSettingsE", !10, i64 0, !10, i64 4, !10, i64 8, !86, i64 12, !9, i64 13}
!131 = !{!130, !10, i64 0}
!132 = !{!102, !10, i64 32}
!133 = !{!"_ZTSN3gmx12ArrayRefIterIdEE", !78, i64 0}
!134 = !{!133, !78, i64 0}
!135 = !{!"_ZTSN3gmx12ArrayRefIterIKdEE", !78, i64 0}
!136 = !{!135, !78, i64 0}
!137 = !{!102, !10, i64 36}
!138 = !{!97, !18, i64 8}
!139 = !{!87, !18, i64 80}
!140 = !{!87, !18, i64 88}
!141 = !{!97, !19, i64 0}
!142 = !{!20, !19, i64 56}
!143 = !{!87, !86, i64 72}
!144 = !{!20, !18, i64 0}
!145 = !{!"p1 _ZTSZNK3gmx9BiasState23isSamplingRegionCoveredERKNS_10BiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridEE8CheckDim", !13, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseIZNK3gmx9BiasState23isSamplingRegionCoveredERKNS0_10BiasParamsENS0_8ArrayRefIKNS0_9DimParamsEEERKNS0_8BiasGridEE8CheckDimSaISC_EE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!147 = !{!146, !145, i64 0}
end_hunk_3
