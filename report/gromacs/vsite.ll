Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/vsite?download=true
inline.NumInlined: 3272
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN3gmx19VirtualSitesHandler4Impl12spreadForcesENS_8ArrayRefIKNS_11BasicVectorIfEEEENS2_IS4_EENS0_14VirialHandlingES7_PA3_fP6t_nrnbPA3_KfP13gmx_wallcycle:bb.a
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !92
  %i.fj = fpext float %i.fi to double
  %i.fk = fpext float %i.ec to double
  %i.fl = call double @llvm.fmuladd.f64(double %i.fj, double -5.000000e-01, double %i.fk)
  %i.fm = fptrunc double %i.fl to float           ; 2 uses
  store float %i.fm, ptr %.phi.trans.insert127, align 4, !tbaa !92
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ei, i64 2848
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !92
  %i.fp = fpext float %i.fo to double
  %i.fq = fpext float %i.eb to double
  %i.fr = call double @llvm.fmuladd.f64(double %i.fp, double -5.000000e-01, double %i.fq)
  %i.fs = fptrunc double %i.fr to float           ; 2 uses
  store float %i.fs, ptr %.phi.trans.insert130, align 4, !tbaa !92
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ei, i64 2852
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !92
  %i.fv = fpext float %i.fu to double
  %i.fw = fpext float %i.ea to double
  %i.fx = call double @llvm.fmuladd.f64(double %i.fv, double -5.000000e-01, double %i.fw)
  %i.fy = fptrunc double %i.fx to float           ; 2 uses
  store float %i.fy, ptr %.phi.trans.insert132, align 4, !tbaa !92
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ei, i64 2856
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !92
  %i.gb = fpext float %i.ga to double
  %i.gc = fpext float %i.dz to double
  %i.gd = call double @llvm.fmuladd.f64(double %i.gb, double -5.000000e-01, double %i.gc)
  %i.ge = fptrunc double %i.gd to float           ; 2 uses
  store float %i.ge, ptr %.phi.trans.insert135, align 4, !tbaa !92
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ei, i64 2860
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !92
  %i.gh = fpext float %i.gg to double
  %i.gi = fpext float %i.dy to double
  %i.gj = call double @llvm.fmuladd.f64(double %i.gh, double -5.000000e-01, double %i.gi)
  %i.gk = fptrunc double %i.gj to float           ; 2 uses
  store float %i.gk, ptr %.phi.trans.insert138, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader87, !llvm.loop !176

._crit_edge:                                      ; preds = %.preheader87, %bb.k, %.preheader88, %.preheader91, %bb.j, %.loopexit
  br i1 %.not85, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.gl = load ptr, ptr %i.am, align 8, !tbaa !206
  %i.gm = load ptr, ptr %12, align 8, !tbaa !73   ; 3 uses
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gm to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gq
  %i.gs = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !73
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gx
  call void @_Z16dd_move_f_vsitesRK12gmx_domdec_tN3gmx8ArrayRefINS2_11BasicVectorIfEEEES6_(ptr noundef nonnull align 8 dereferenceable(1097) %i.gl, ptr %i.gm, ptr %i.gr, ptr %i.gs, ptr %i.gy)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !60 ; 10 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1560
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 1568
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 816 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 1608
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 1616
  %i.hg = call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.hc, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !115
  %i.hh = call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.hb, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !18
  %i.hi = call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.hf, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !115
  %i.hj = call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.he, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !18
  %i.hk = shufflevector <4 x ptr> %i.hg, <4 x ptr> %i.hi, <4 x i32> <i32 0, i32 3, i32 4, i32 7>
  %i.hl = ptrtoint <4 x ptr> %i.hk to <4 x i64>
  %i.hm = shufflevector <4 x ptr> %i.hh, <4 x ptr> %i.hj, <4 x i32> <i32 0, i32 3, i32 4, i32 7>
  %i.hn = ptrtoint <4 x ptr> %i.hm to <4 x i64>
  %i.ho = sub <4 x i64> %i.hl, %i.hn
  %i.hp = lshr exact <4 x i64> %i.ho, splat (i64 2)
  %i.hq = trunc <4 x i64> %i.hp to <4 x i32>
  %i.hr = load <25 x i32>, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2096), align 8, !tbaa !89
  %i.hs = shufflevector <25 x i32> %i.hr, <25 x i32> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.ht = add nsw <4 x i32> %i.hs, splat (i32 1)
  %i.hu = sdiv <4 x i32> %i.hq, %i.ht
  %i.hv = sitofp <4 x i32> %i.hu to <4 x double>
  %i.hw = load <4 x double>, ptr %i.hd, align 8, !tbaa !208
  %i.hx = fadd <4 x double> %i.hw, %i.hv
  store <4 x double> %i.hx, ptr %i.hd, align 8, !tbaa !208
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ha, i64 1656
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ha, i64 1664
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 848 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ha, i64 1704
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ha, i64 1712
  %i.id = call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.hz, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !115
  %i.ie = call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.hy, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !18
  %i.if = call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.ic, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !115
  %i.ig = call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.ib, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !18
  %i.ih = shufflevector <4 x ptr> %i.id, <4 x ptr> %i.if, <4 x i32> <i32 0, i32 3, i32 4, i32 7>
  %i.ii = ptrtoint <4 x ptr> %i.ih to <4 x i64>
  %i.ij = shufflevector <4 x ptr> %i.ie, <4 x ptr> %i.ig, <4 x i32> <i32 0, i32 3, i32 4, i32 7>
  %i.ik = ptrtoint <4 x ptr> %i.ij to <4 x i64>
  %i.il = sub <4 x i64> %i.ii, %i.ik
  %i.im = lshr exact <4 x i64> %i.il, splat (i64 2)
  %i.in = trunc <4 x i64> %i.im to <4 x i32>
  %i.io = load <25 x i32>, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2224), align 8, !tbaa !89
  %i.ip = shufflevector <25 x i32> %i.io, <25 x i32> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.iq = add nsw <4 x i32> %i.ip, splat (i32 1)
  %i.ir = sdiv <4 x i32> %i.in, %i.iq
  %i.is = sitofp <4 x i32> %i.ir to <4 x double>
  %i.it = load <4 x double>, ptr %i.ia, align 8, !tbaa !208
  %i.iu = fadd <4 x double> %i.it, %i.is
  store <4 x double> %i.iu, ptr %i.ia, align 8, !tbaa !208
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ha, i64 1752
  %i.iw = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2352), align 8, !tbaa !89
  %i.ix = add nsw i32 %i.iw, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %8, i64 880 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ha, i64 1776
  %i.ja = load <2 x ptr>, ptr %i.iv, align 8, !tbaa !87 ; 2 uses
  %i.jb = load <2 x ptr>, ptr %i.iz, align 8, !tbaa !87 ; 2 uses
  %i.jc = shufflevector <2 x ptr> %i.ja, <2 x ptr> %i.jb, <2 x i32> <i32 1, i32 3>
  %i.jd = ptrtoint <2 x ptr> %i.jc to <2 x i64>
  %i.je = shufflevector <2 x ptr> %i.ja, <2 x ptr> %i.jb, <2 x i32> <i32 0, i32 2>
  %i.jf = ptrtoint <2 x ptr> %i.je to <2 x i64>
  %i.jg = sub <2 x i64> %i.jd, %i.jf
  %i.jh = lshr exact <2 x i64> %i.jg, splat (i64 2)
  %i.ji = trunc <2 x i64> %i.jh to <2 x i32>
  %i.jj = insertelement <2 x i32> <i32 poison, i32 3>, i32 %i.ix, i64 0
  %i.jk = sdiv <2 x i32> %i.ji, %i.jj
  %i.jl = sitofp <2 x i32> %i.jk to <2 x double>
  %i.jm = load <2 x double>, ptr %i.iy, align 8, !tbaa !208
  %i.jn = fadd <2 x double> %i.jm, %i.jl
  store <2 x double> %i.jn, ptr %i.iy, align 8, !tbaa !208
  br i1 %i.g, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %10)
  %i.jo = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !177 ; 2 uses
  %i.jp = extractvalue { i32, i32 } %i.jo, 0
  %i.jq = extractvalue { i32, i32 } %i.jo, 1
  %i.jr = zext i32 %i.jp to i64
  %i.js = zext i32 %i.jq to i64
  %i.jt = shl nuw i64 %i.js, 32
  %i.ju = or disjoint i64 %i.jt, %i.jr            ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %10, i64 1056 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %10, i64 1072
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !180 ; 2 uses
  %.not.i = icmp ult i64 %i.ju, %i.jx
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jy = sub nuw i64 %i.ju, %i.jx
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 2624
  store i8 1, ptr %i.jz, align 8, !tbaa !209
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i = phi i64 [ %i.jy, %bb.p ], [ 0, %bb.q ]
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 1064 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !203
  %i.kc = add i64 %i.kb, %.0.i
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !203
  %i.kd = load i32, ptr %i.jv, align 8, !tbaa !201
  %i.ke = add nsw i32 %i.kd, 1
  store i32 %i.ke, ptr %i.jv, align 8, !tbaa !201
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 2584
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !182
  %i.kh = getelementptr inbounds nuw i8, ptr %10, i64 2592
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !182
  %i.kj = icmp eq ptr %i.kg, %i.ki
  br i1 %i.kj, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kk = getelementptr inbounds nuw i8, ptr %10, i64 2608 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !199
  %i.km = add nsw i32 %i.kl, -1                   ; 2 uses
  store i32 %i.km, ptr %i.kk, align 8, !tbaa !199
  %i.kn = icmp eq i32 %i.km, 2
  br i1 %i.kn, label %bb.t, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit

bb.t:                                             ; preds = %bb.s
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 2612
  store i32 44, ptr %i.ko, align 4, !tbaa !200
  %i.kp = getelementptr inbounds nuw i8, ptr %10, i64 2616
  store i64 %i.ju, ptr %i.kp, align 8, !tbaa !202
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit: ; preds = %bb.r, %bb.s, %bb.t, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  ret void
}

declare void @_Z17dd_clear_f_vsitesRK12gmx_domdec_tN3gmx8ArrayRefINS2_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(1097), ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmxL18spreadForceWrapperENS_8ArrayRefIKNS_11BasicVectorIfEEEENS0_IS2_EENS_19VirtualSitesHandler14VirialHandlingES5_PA3_fbNS0_IK9t_iparamsEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLSE_95EEEPK5t_pbc(ptr %0, ptr nofree %1, i32 noundef %2, ptr nofree %.0.val, ptr nofree noundef nonnull %3, i1 noundef zeroext %4, ptr nofree readonly captures(none) %.0.val1, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) unnamed_addr #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca [3 x float], align 4              ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 8 uses
  %i.d = alloca [3 x float], align 8              ; 8 uses
  %i.e = alloca [3 x float], align 8              ; 8 uses
  %i.f = alloca [3 x float], align 8              ; 5 uses
  %i.g = alloca [3 x float], align 16             ; 6 uses
  %i.h = alloca [3 x float], align 16             ; 6 uses
  %i.i = alloca [3 x float], align 16             ; 6 uses
  %i.j = alloca [3 x float], align 16             ; 4 uses
  %i.k = alloca [3 x float], align 16             ; 7 uses
  %i.l = alloca [3 x float], align 16             ; 7 uses
  %i.m = alloca [3 x float], align 16             ; 4 uses
  %i.n = alloca [3 x float], align 16             ; 7 uses
  %i.o = alloca [3 x float], align 16             ; 7 uses
  %i.p = alloca [3 x float], align 16             ; 4 uses
  %i.q = alloca [3 x float], align 16             ; 6 uses
  %i.r = alloca [3 x float], align 16             ; 6 uses
  %i.s = alloca [3 x float], align 16             ; 4 uses
  %i.t = alloca [3 x float], align 16             ; 7 uses
  %i.u = alloca [3 x float], align 16             ; 4 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.v = alloca [3 x float], align 8              ; 5 uses
  %i.w = alloca [3 x float], align 4              ; 3 uses
  %i.x = alloca [3 x float], align 4              ; 3 uses
  %i.y = alloca [3 x float], align 8              ; 7 uses
  %i.z = alloca [3 x float], align 8              ; 7 uses
  %i.aa = alloca [3 x float], align 8             ; 7 uses
  %i.ab = alloca [3 x float], align 4             ; 3 uses
  %i.ac = alloca [3 x float], align 8             ; 6 uses
  %i.ad = alloca [3 x float], align 8             ; 6 uses
  %i.ae = alloca [3 x float], align 8             ; 6 uses
  %i.af = alloca [3 x float], align 4             ; 3 uses
  %i.ag = alloca [3 x float], align 4             ; 7 uses
  %i.ah = alloca [3 x float], align 4             ; 6 uses
  %i.ai = alloca [3 x float], align 4             ; 3 uses
  %i.aj = alloca [3 x float], align 8             ; 6 uses
  %i.ak = alloca [3 x float], align 8             ; 6 uses
  %i.al = alloca [3 x float], align 4             ; 3 uses
  %i.am = alloca [3 x float], align 8             ; 6 uses
  %i.an = alloca [3 x float], align 8             ; 6 uses
  %i.ao = alloca [3 x float], align 4             ; 5 uses
  %i.ap = alloca [3 x float], align 8             ; 6 uses
  %i.aq = alloca [3 x float], align 4             ; 3 uses
  %i.ar = alloca [3 x float], align 4             ; 4 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.as = alloca [3 x float], align 8             ; 5 uses
  %i.at = alloca [3 x float], align 4             ; 3 uses
  %i.au = alloca [3 x float], align 4             ; 6 uses
  %i.av = alloca [3 x float], align 4             ; 6 uses
  %i.aw = alloca [3 x float], align 4             ; 6 uses
  %i.ax = alloca [3 x float], align 8             ; 5 uses
  %i.ay = alloca [3 x float], align 8             ; 5 uses
  %i.az = alloca [3 x float], align 8             ; 5 uses
  %i.ba = alloca [3 x float], align 4             ; 6 uses
  %i.bb = alloca [3 x float], align 4             ; 5 uses
  %i.bc = alloca [3 x float], align 8             ; 5 uses
  %i.bd = alloca [3 x float], align 8             ; 5 uses
  %i.be = alloca [3 x float], align 8             ; 5 uses
  %i.bf = alloca [3 x float], align 8             ; 5 uses
  %i.bg = alloca [3 x float], align 8             ; 5 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.bh = icmp eq i32 %2, 2
  %or.cond = and i1 %i.bh, %4
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i64 36, i1 false)
  br label %bb.cb

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %_ZN3gmxL20spreadForceForThreadILNS_19VirtualSitesHandler14VirialHandlingE0EEEvNS_8ArrayRefIKNS_11BasicVectorIfEEEENS3_IS5_EES8_PA3_fNS3_IK9t_iparamsEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLSF_95EEEPK5t_pbc.exit [
    i32 0, label %bb.c
    i32 1, label %bb.af
    i32 2, label %bb.cb
  ]

bb.c:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.not.i.i = icmp eq ptr %6, null                ; 7 uses
  %.phi.trans.insert.i107.i = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.phi.trans.insert156.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.phi.trans.insert159.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.phi.trans.insert161.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.phi.trans.insert164.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.phi.trans.insert166.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.phi.trans.insert34.i101.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.phi.trans.insert36.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.phi.trans.insert38.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.phi.trans.insert30.i90.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.phi.trans.insert33.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.phi.trans.insert35.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %.phi.trans.insert57.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.phi.trans.insert62.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.phi.trans.insert32.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.phi.trans.insert34.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.phi.trans.insert16.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %bb.c
  %.0.idx115.i = phi i64 [ 0, %bb.c ], [ %.0.add.i, %.loopexit.i ] ; 2 uses
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr @_ZN3gmxL26vSiteFunctionTypesReversedE, i64 %.0.idx115.i
  %i.bj = load i32, ptr %.0.ptr.i, align 4, !tbaa !86 ; 4 uses
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bk ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !87 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87 ; 2 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = lshr exact i64 %i.bs, 2
  %i.bu = trunc i64 %i.bt to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.e
  %.off.i = add i32 %i.bj, -65
  %switch.i = icmp ult i32 %.off.i, 10
  br i1 %switch.i, label %.lr.ph.split.preheader.i, label %bb.ab

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.bk
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !89
  %i.bz = add nsw i32 %i.by, 1
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.ae, %.lr.ph.split.preheader.i
  %.075114.i = phi i32 [ %i.amg, %bb.ae ], [ 0, %.lr.ph.split.preheader.i ]
  %.076112.i = phi ptr [ %i.ami, %bb.ae ], [ %i.bm, %.lr.ph.split.preheader.i ] ; 41 uses
  %.077111.i = phi i32 [ %.1.i, %bb.ae ], [ %i.bz, %.lr.ph.split.preheader.i ] ; 9 uses
  %i.ca = load i32, ptr %.076112.i, align 4, !tbaa !90
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [48 x i8], ptr %.0.val1, i64 %i.cb ; 10 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !81 ; 27 uses
  switch i32 %i.bj, label %bb.aa [
    i32 65, label %bb.f
    i32 66, label %bb.g
    i32 67, label %bb.h
    i32 68, label %bb.k
    i32 69, label %bb.l
    i32 70, label %bb.o
    i32 71, label %bb.r
    i32 72, label %bb.u
    i32 73, label %bb.x
  ]

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.ce = getelementptr i8, ptr %.076112.i, i64 4
  %.076.val.i = load i32, ptr %i.ce, align 4, !tbaa !90
  %i.cf = getelementptr i8, ptr %.076112.i, i64 8
  %.076.val78.i = load i32, ptr %i.cf, align 4, !tbaa !90
  %i.cg = sext i32 %.076.val.i to i64
  %i.ch = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cg ; 2 uses
  %i.ci = sext i32 %.076.val78.i to i64
  %i.cj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.ci ; 3 uses
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !92
  %i.cl = load <2 x float>, ptr %i.ch, align 4, !tbaa !92
  %i.cm = fadd <2 x float> %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !92
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !92
  %i.cr = fadd float %i.co, %i.cq
  store <2 x float> %i.cm, ptr %i.cj, align 4
  store float %i.cr, ptr %i.cn, align 4, !tbaa !81
  br label %bb.ae

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.076112.i, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !90
  %i.cu = getelementptr inbounds nuw i8, ptr %.076112.i, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !90
  %i.cw = getelementptr inbounds nuw i8, ptr %.076112.i, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !90
  %i.cy = fsub float 1.000000e+00, %i.cd          ; 2 uses
  %i.cz = sext i32 %i.ct to i64
  %i.da = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load float, ptr %i.db, align 4, !tbaa !92 ; 2 uses
  %i.dd = fmul float %i.cy, %i.dc
  %i.de = fmul float %i.cd, %i.dc
  %i.df = sext i32 %i.cv to i64
  %i.dg = getelementptr inbounds [12 x i8], ptr %1, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !92
  %i.dj = fadd float %i.dd, %i.di
  store float %i.dj, ptr %i.dh, align 4, !tbaa !92
  %i.dk = sext i32 %i.cx to i64
  %i.dl = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !92
  %i.do = fadd float %i.de, %i.dn
  %i.dp = load <2 x float>, ptr %i.da, align 4, !tbaa !92 ; 2 uses
  %i.dq = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.dr, %i.dp
  %i.dt = load <2 x float>, ptr %i.dg, align 4, !tbaa !92
  %i.du = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %i.dv, %i.dp
  %i.dx = fadd <2 x float> %i.dw, %i.dt
  store <2 x float> %i.dx, ptr %i.dg, align 4, !tbaa !92
  %i.dy = load <2 x float>, ptr %i.dl, align 4, !tbaa !92
  %i.dz = fadd <2 x float> %i.ds, %i.dy
  store <2 x float> %i.dz, ptr %i.dl, align 4, !tbaa !92
  store float %i.do, ptr %i.dm, align 4, !tbaa !92
  br label %bb.ae

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.076112.i, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !90
  %i.ec = getelementptr inbounds nuw i8, ptr %.076112.i, i64 8
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !90
  %i.ee = getelementptr inbounds nuw i8, ptr %.076112.i, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !90
  %i.eg = sext i32 %i.eb to i64
  %i.eh = getelementptr inbounds [12 x i8], ptr %1, i64 %i.eg ; 2 uses
  %i.ei = load <2 x float>, ptr %i.eh, align 4, !tbaa !92 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !92 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #12
  %i.el = sext i32 %i.ef to i64                   ; 2 uses
  %i.em = getelementptr inbounds [12 x i8], ptr %0, i64 %i.el ; 3 uses
  %i.en = sext i32 %i.ed to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [12 x i8], ptr %0, i64 %i.en ; 3 uses
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ep = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.em, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.bg) ; 0 uses
  %i.eq = load <2 x float>, ptr %i.bg, align 8, !tbaa !92
  %.pre17.i.i = load float, ptr %.phi.trans.insert16.i.i, align 8, !tbaa !92
  br label %_ZN3gmxL15spread_vsite2FDILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKifNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

bb.j:                                             ; preds = %bb.h
  %i.er = load <2 x float>, ptr %i.em, align 4, !tbaa !92
  %i.es = load <2 x float>, ptr %i.eo, align 4, !tbaa !92
  %i.et = fsub <2 x float> %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !92
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !92
  %i.ey = fsub float %i.ev, %i.ex
  br label %_ZN3gmxL15spread_vsite2FDILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKifNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL15spread_vsite2FDILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKifNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.j, %bb.i
  %i.ez = phi float [ %.pre17.i.i, %bb.i ], [ %i.ey, %bb.j ] ; 4 uses
  %i.fa = phi <2 x float> [ %i.eq, %bb.i ], [ %i.et, %bb.j ] ; 5 uses
  %foldExtExtBinop38 = fmul <2 x float> %i.fa, %i.fa
  %i.fb = extractelement <2 x float> %foldExtExtBinop38, i64 1
  %i.fc = extractelement <2 x float> %i.fa, i64 0 ; 3 uses
  %i.fd = call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.fb)
  %i.fe = call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.fd)
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.fe)
  %i.ff = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ei, %i.fa
  %i.fg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fh = extractelement <2 x float> %i.ei, i64 0
  %i.fi = call float @llvm.fmuladd.f32(float %i.fc, float %i.fh, float %i.fg)
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.ek, float %i.fi)
  %i.fk = fmul float %i.fj, %i.ff
  %i.fl = fneg float %i.ff
  %i.fm = getelementptr inbounds [12 x i8], ptr %1, i64 %i.en ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !92
  %i.fp = getelementptr inbounds [12 x i8], ptr %1, i64 %i.el ; 3 uses
  %i.fq = fmul float %i.fk, %i.fl                 ; 2 uses
  %i.fr = fmul float %i.cd, %i.ff                 ; 2 uses
  %i.fs = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fa, <2 x float> %i.ei)
  %i.fv = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fw, %i.fu           ; 2 uses
  %i.fy = call float @llvm.fmuladd.f32(float %i.fq, float %i.ez, float %i.ek)
  %i.fz = fmul float %i.fr, %i.fy                 ; 2 uses
  %i.ga = load <2 x float>, ptr %i.fm, align 4, !tbaa !92
  %i.gb = fsub <2 x float> %i.ei, %i.fx
  %i.gc = fadd <2 x float> %i.ga, %i.gb
  store <2 x float> %i.gc, ptr %i.fm, align 4, !tbaa !92
  %i.gd = fsub float %i.ek, %i.fz
  %i.ge = fadd float %i.fo, %i.gd
  store float %i.ge, ptr %i.fn, align 4, !tbaa !92
  %i.gf = load <2 x float>, ptr %i.fp, align 4, !tbaa !92
  %i.gg = fadd <2 x float> %i.gf, %i.fx
  store <2 x float> %i.gg, ptr %i.fp, align 4, !tbaa !92
end_hunk_0
begin_hunk_1_@_ZN3gmxL18spreadForceWrapperENS_8ArrayRefIKNS_11BasicVectorIfEEEENS0_IS2_EENS_19VirtualSitesHandler14VirialHandlingES5_PA3_fbNS0_IK9t_iparamsEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLSE_95EEEPK5t_pbc:bb.a
  store <2 x float> %i.ln, ptr %i.lj, align 4, !tbaa !92
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !92
  %i.lq = call float @llvm.fmuladd.f32(float %i.kq, float %i.lb, float %i.lp)
  store float %i.lq, ptr %i.lo, align 4, !tbaa !92
  %i.lr = getelementptr inbounds [12 x i8], ptr %1, i64 %i.jy ; 3 uses
  %i.ls = load <2 x float>, ptr %i.lr, align 4, !tbaa !92
  %i.lt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.kz, <2 x float> %i.ls)
  store <2 x float> %i.lt, ptr %i.lr, align 4, !tbaa !92
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !92
  %i.lw = call float @llvm.fmuladd.f32(float %i.cd, float %i.lb, float %i.lv)
  store float %i.lw, ptr %i.lu, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #12
  br label %bb.ae

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #12
  %i.lz = getelementptr inbounds nuw i8, ptr %.076112.i, i64 4
  %i.ma = getelementptr inbounds nuw i8, ptr %.076112.i, i64 8
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !90
  %i.mc = getelementptr inbounds nuw i8, ptr %.076112.i, i64 12
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !90
  %i.me = getelementptr inbounds nuw i8, ptr %.076112.i, i64 16
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !90 ; 2 uses
  %i.mg = load i32, ptr %i.lz, align 4, !tbaa !90
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [12 x i8], ptr %1, i64 %i.mh ; 2 uses
  %i.mj = load <2 x float>, ptr %i.mi, align 4, !tbaa !92 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !92 ; 4 uses
  %i.mm = sext i32 %i.md to i64                   ; 2 uses
  %i.mn = getelementptr inbounds [12 x i8], ptr %0, i64 %i.mm ; 4 uses
  %i.mo = sext i32 %i.mb to i64                   ; 2 uses
  %i.mp = getelementptr inbounds [12 x i8], ptr %0, i64 %i.mo ; 3 uses
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.mq = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.mn, ptr noundef nonnull %i.mp, ptr noundef nonnull %i.bc) ; 0 uses
  %i.mr = sext i32 %i.mf to i64                   ; 2 uses
  %i.ms = getelementptr inbounds [12 x i8], ptr %0, i64 %i.mr
  %i.mt = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.ms, ptr noundef nonnull %i.mn, ptr noundef nonnull %i.bd) ; 0 uses
  %.pre58.i.i = load float, ptr %.phi.trans.insert57.i.i, align 8, !tbaa !92
  %i.mu = load <2 x float>, ptr %i.bc, align 8, !tbaa !92
  %i.mv = load <2 x float>, ptr %i.bd, align 8, !tbaa !92
  %.pre63.i.i = load float, ptr %.phi.trans.insert62.i.i, align 8, !tbaa !92
  br label %_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

bb.q:                                             ; preds = %bb.o
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !92 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mz = load float, ptr %i.my, align 4, !tbaa !92
  %i.na = fsub float %i.mx, %i.mz
  %i.nb = sext i32 %i.mf to i64                   ; 2 uses
  %i.nc = getelementptr inbounds [12 x i8], ptr %0, i64 %i.nb ; 2 uses
  %i.nd = load <2 x float>, ptr %i.mn, align 4, !tbaa !92 ; 2 uses
  %i.ne = load <2 x float>, ptr %i.mp, align 4, !tbaa !92
  %i.nf = fsub <2 x float> %i.nd, %i.ne
  %i.ng = load <2 x float>, ptr %i.nc, align 4, !tbaa !92
  %i.nh = fsub <2 x float> %i.ng, %i.nd
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !92
  %i.nk = fsub float %i.nj, %i.mx
  br label %_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.q, %bb.p
  %i.nl = phi float [ %.pre63.i.i, %bb.p ], [ %i.nk, %bb.q ] ; 2 uses
  %i.nm = phi float [ %.pre58.i.i, %bb.p ], [ %i.na, %bb.q ] ; 6 uses
  %i.nn = phi i64 [ %i.mr, %bb.p ], [ %i.nb, %bb.q ]
  %i.no = phi <2 x float> [ %i.mu, %bb.p ], [ %i.nf, %bb.q ] ; 5 uses
  %i.np = phi <2 x float> [ %i.mv, %bb.p ], [ %i.nh, %bb.q ] ; 3 uses
  %i.nq = extractelement <2 x float> %i.no, i64 1 ; 3 uses
  %i.nr = fmul float %i.nq, %i.nq
  %i.ns = extractelement <2 x float> %i.no, i64 0 ; 4 uses
  %i.nt = call float @llvm.fmuladd.f32(float %i.ns, float %i.ns, float %i.nr)
  %i.nu = call noundef float @llvm.fmuladd.f32(float %i.nm, float %i.nm, float %i.nt)
  %sqrt.i.i86.i = call float @llvm.sqrt.f32(float %i.nu)
  %foldExtExtBinop14 = fmul <2 x float> %i.np, %i.no
  %i.nv = extractelement <2 x float> %foldExtExtBinop14, i64 1
  %i.nw = extractelement <2 x float> %i.np, i64 0
  %i.nx = call float @llvm.fmuladd.f32(float %i.ns, float %i.nw, float %i.nv)
  %i.ny = call noundef float @llvm.fmuladd.f32(float %i.nm, float %i.nl, float %i.nx)
  %i.nz = extractelement <2 x float> %i.mj, i64 1 ; 2 uses
  %i.oa = fmul float %i.nz, %i.nq
  %i.ob = extractelement <2 x float> %i.mj, i64 0 ; 2 uses
  %i.oc = call float @llvm.fmuladd.f32(float %i.ns, float %i.ob, float %i.oa)
  %i.od = call noundef float @llvm.fmuladd.f32(float %i.nm, float %i.ml, float %i.oc)
  %i.oe = getelementptr inbounds [12 x i8], ptr %1, i64 %i.mo ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 2 uses
  %i.og = load float, ptr %i.of, align 4, !tbaa !92
  %i.oh = getelementptr inbounds [12 x i8], ptr %1, i64 %i.mm ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %i.oj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.nn ; 3 uses
  %i.ok = fdiv float 1.000000e+00, %sqrt.i.i86.i  ; 3 uses
  %i.ol = fmul float %i.ok, %i.ok                 ; 2 uses
  %i.om = fmul float %i.ny, %i.ol                 ; 4 uses
  %i.on = fneg float %i.om                        ; 2 uses
  %i.oo = call float @llvm.fmuladd.f32(float %i.on, float %i.nm, float %i.nl) ; 5 uses
  %i.op = fadd float %i.om, 1.000000e+00
  %i.oq = fneg float %i.op                        ; 2 uses
  %i.or = insertelement <2 x float> poison, float %i.on, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ot = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.os, <2 x float> %i.no, <2 x float> %i.np) ; 4 uses
  %i.ou = extractelement <2 x float> %i.ot, i64 1 ; 3 uses
  %i.ov = fmul float %i.ou, %i.ou
  %i.ow = extractelement <2 x float> %i.ot, i64 0 ; 3 uses
  %i.ox = call float @llvm.fmuladd.f32(float %i.ow, float %i.ow, float %i.ov)
  %i.oy = call noundef float @llvm.fmuladd.f32(float %i.oo, float %i.oo, float %i.ox)
  %sqrt.i51.i.i = call float @llvm.sqrt.f32(float %i.oy)
  %i.oz = fdiv float 1.000000e+00, %sqrt.i51.i.i  ; 3 uses
  %i.pa = fmul float %i.nz, %i.ou
  %i.pb = call float @llvm.fmuladd.f32(float %i.ow, float %i.ob, float %i.pa)
  %i.pc = call noundef float @llvm.fmuladd.f32(float %i.oo, float %i.ml, float %i.pb)
  %i.pd = fmul float %i.pc, %i.oz
  %i.pe = fmul float %i.oz, %i.pd                 ; 2 uses
  %i.pf = fmul float %i.od, %i.ol                 ; 3 uses
  %i.pg = fmul float %i.ly, %i.oz                 ; 3 uses
  %i.ph = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.pi = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pj = fmul <2 x float> %i.no, %i.pi
  %i.pk = fmul float %i.nm, %i.pf
  %i.pl = insertelement <2 x float> poison, float %i.pe, i64 0
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pn = fmul <2 x float> %i.ot, %i.pm
  %i.po = fmul float %i.oo, %i.pe
  %i.pp = fsub <2 x float> %i.mj, %i.pj           ; 2 uses
  %i.pq = fsub float %i.ml, %i.pk                 ; 2 uses
  %i.pr = fsub <2 x float> %i.pp, %i.pn
  %i.ps = fsub float %i.pq, %i.po
  %i.pt = fmul float %i.pf, %i.pg                 ; 2 uses
  %i.pu = fmul float %i.cd, %i.ok                 ; 2 uses
  %i.pv = insertelement <2 x float> poison, float %i.pu, i64 0
  %i.pw = shufflevector <2 x float> %i.pv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.px = fmul <2 x float> %i.pw, %i.pp           ; 2 uses
  %i.py = insertelement <2 x float> poison, float %i.pg, i64 0
  %i.pz = shufflevector <2 x float> %i.py, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qa = fmul <2 x float> %i.pz, %i.pr           ; 3 uses
  %i.qb = fmul float %i.pu, %i.pq                 ; 2 uses
  %i.qc = fmul float %i.pg, %i.ps                 ; 3 uses
  %i.qd = fmul float %i.oo, %i.pt                 ; 2 uses
  %i.qe = insertelement <2 x float> poison, float %i.pt, i64 0
  %i.qf = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qg = fmul <2 x float> %i.ot, %i.qf           ; 2 uses
  %i.qh = load <2 x float>, ptr %i.oe, align 4, !tbaa !92
  %i.qi = fsub <2 x float> %i.mj, %i.px
  %i.qj = insertelement <2 x float> poison, float %i.om, i64 0
  %i.qk = shufflevector <2 x float> %i.qj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ql = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qk, <2 x float> %i.qa, <2 x float> %i.qi)
  %i.qm = fadd <2 x float> %i.qg, %i.ql
  %i.qn = fadd <2 x float> %i.qh, %i.qm
  store <2 x float> %i.qn, ptr %i.oe, align 4, !tbaa !92
  %i.qo = fsub float %i.ml, %i.qb
  %i.qp = call float @llvm.fmuladd.f32(float %i.om, float %i.qc, float %i.qo)
  %i.qq = fadd float %i.qd, %i.qp
  %i.qr = fadd float %i.og, %i.qq
  store float %i.qr, ptr %i.of, align 4, !tbaa !92
  %i.qs = insertelement <2 x float> poison, float %i.oq, i64 0
  %i.qt = shufflevector <2 x float> %i.qs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qt, <2 x float> %i.qa, <2 x float> %i.px)
  %i.qv = fsub <2 x float> %i.qu, %i.qg
  %i.qw = load <2 x float>, ptr %i.oh, align 4, !tbaa !92
  %i.qx = fadd <2 x float> %i.qw, %i.qv
  store <2 x float> %i.qx, ptr %i.oh, align 4, !tbaa !92
  %i.qy = call float @llvm.fmuladd.f32(float %i.oq, float %i.qc, float %i.qb)
  %i.qz = fsub float %i.qy, %i.qd
  %i.ra = load float, ptr %i.oi, align 4, !tbaa !92
  %i.rb = fadd float %i.ra, %i.qz
  store float %i.rb, ptr %i.oi, align 4, !tbaa !92
  %i.rc = load <2 x float>, ptr %i.oj, align 4, !tbaa !92
  %i.rd = fadd <2 x float> %i.rc, %i.qa
  store <2 x float> %i.rd, ptr %i.oj, align 4, !tbaa !92
  %i.re = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 2 uses
  %i.rf = load float, ptr %i.re, align 4, !tbaa !92
  %i.rg = fadd float %i.qc, %i.rf
  store float %i.rg, ptr %i.re, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #12
  br label %bb.ae

bb.r:                                             ; preds = %.lr.ph.split.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !81 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !81 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #12
  %i.rl = getelementptr inbounds nuw i8, ptr %.076112.i, i64 4
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !90
  %i.rn = getelementptr inbounds nuw i8, ptr %.076112.i, i64 8
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !90
  %i.rp = getelementptr inbounds nuw i8, ptr %.076112.i, i64 12
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !90
  %i.rr = getelementptr inbounds nuw i8, ptr %.076112.i, i64 16
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !90 ; 2 uses
  %i.rt = sext i32 %i.rq to i64                   ; 2 uses
  %i.ru = getelementptr inbounds [12 x i8], ptr %0, i64 %i.rt ; 4 uses
  %i.rv = sext i32 %i.ro to i64                   ; 2 uses
  %i.rw = getelementptr inbounds [12 x i8], ptr %0, i64 %i.rv ; 4 uses
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.rx = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.ru, ptr noundef nonnull %i.rw, ptr noundef nonnull %i.ba) ; 0 uses
  %i.ry = sext i32 %i.rs to i64                   ; 2 uses
  %i.rz = getelementptr inbounds [12 x i8], ptr %0, i64 %i.ry
  %i.sa = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.rz, ptr noundef nonnull %i.rw, ptr noundef nonnull %i.bb) ; 0 uses
  %10 = load <2 x float>, ptr %.phi.trans.insert30.i90.i, align 4, !tbaa !92
  %.pre32.i.i = load float, ptr %i.bb, align 4, !tbaa !92
  %.pre34.i.i = load float, ptr %.phi.trans.insert33.i.i, align 4, !tbaa !92
  %.pre36.i.i = load float, ptr %.phi.trans.insert35.i.i, align 4, !tbaa !92
  %.pre37.i.i = load float, ptr %i.ba, align 4, !tbaa !92
  br label %_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

bb.t:                                             ; preds = %bb.r
  %i.sb = load float, ptr %i.ru, align 4, !tbaa !92
  %11 = load float, ptr %i.rw, align 4, !tbaa !92 ; 2 uses
  %12 = fsub float %i.sb, %11
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %13 = load float, ptr %i.sc, align 4, !tbaa !92
  %14 = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %15 = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %16 = load float, ptr %15, align 4, !tbaa !92
  %17 = sext i32 %i.rs to i64                     ; 2 uses
  %18 = getelementptr inbounds [12 x i8], ptr %0, i64 %17 ; 2 uses
  %19 = load float, ptr %18, align 4, !tbaa !92
  %i.sd = fsub float %19, %11
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.se = load <2 x float>, ptr %14, align 4, !tbaa !92 ; 3 uses
  %21 = extractelement <2 x float> %i.se, i64 0
  %22 = fsub float %13, %21
  %23 = extractelement <2 x float> %i.se, i64 1
  %24 = fsub float %16, %23
  %25 = load <2 x float>, ptr %20, align 4, !tbaa !92
  %26 = fsub <2 x float> %25, %i.se
  br label %_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.t, %bb.s
  %27 = phi float [ %.pre37.i.i, %bb.s ], [ %12, %bb.t ] ; 2 uses
  %28 = phi float [ %.pre36.i.i, %bb.s ], [ %22, %bb.t ] ; 2 uses
  %i.sf = phi float [ %.pre34.i.i, %bb.s ], [ %24, %bb.t ] ; 2 uses
  %i.sg = phi float [ %.pre32.i.i, %bb.s ], [ %i.sd, %bb.t ] ; 2 uses
  %i.sh = phi i64 [ %i.ry, %bb.s ], [ %17, %bb.t ]
  %29 = phi <2 x float> [ %10, %bb.s ], [ %26, %bb.t ] ; 2 uses
  %i.si = sext i32 %i.rm to i64
  %i.sj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.si ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.sl = fneg float %i.sg
  %i.sm = extractelement <2 x float> %29, i64 0   ; 2 uses
  %i.sn = fneg float %i.sm
  %i.so = fneg float %28
  %i.sp = fneg float %i.sf
  %i.sq = getelementptr inbounds [12 x i8], ptr %1, i64 %i.rv ; 3 uses
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !92
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 4 ; 2 uses
  %i.st = getelementptr inbounds [12 x i8], ptr %1, i64 %i.rt ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds [12 x i8], ptr %1, i64 %i.sh ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8 ; 2 uses
  %i.sx = load float, ptr %i.sj, align 4, !tbaa !92 ; 4 uses
  %i.sy = fmul float %i.rk, %i.sx                 ; 4 uses
  %i.sz = load <2 x float>, ptr %i.sk, align 4, !tbaa !92 ; 3 uses
  %i.ta = extractelement <2 x float> %i.sz, i64 1 ; 3 uses
  %i.tb = fmul float %i.rk, %i.ta                 ; 4 uses
  %i.tc = load <2 x float>, ptr %i.ss, align 4, !tbaa !92
  %i.td = extractelement <2 x float> %i.sz, i64 0 ; 3 uses
  %i.te = fmul float %i.rk, %i.td                 ; 3 uses
  %i.tf = fneg float %i.te                        ; 2 uses
  %30 = extractelement <2 x float> %29, i64 1     ; 2 uses
  %i.tg = fmul float %30, %i.tf
  %i.th = call float @llvm.fmuladd.f32(float %i.cd, float %i.sx, float %i.tg)
  %i.ti = call float @llvm.fmuladd.f32(float %i.sm, float %i.tb, float %i.th) ; 2 uses
  %i.tj = fmul float %i.sg, %i.te
  %i.tk = fmul float %i.cd, %i.td
  %i.tl = call float @llvm.fmuladd.f32(float %i.sn, float %i.sy, float %i.tj)
  %i.tm = call float @llvm.fmuladd.f32(float %30, float %i.sy, float %i.tk)
  %i.tn = call float @llvm.fmuladd.f32(float %i.cd, float %i.ta, float %i.tl) ; 2 uses
  %i.to = call float @llvm.fmuladd.f32(float %i.sl, float %i.tb, float %i.tm) ; 2 uses
  %i.tp = fmul float %i.sf, %i.te
  %i.tq = call float @llvm.fmuladd.f32(float %i.ri, float %i.sx, float %i.tp)
  %i.tr = call float @llvm.fmuladd.f32(float %i.so, float %i.tb, float %i.tq) ; 2 uses
  %i.ts = fmul float %27, %i.tf
  %i.tt = fmul float %i.ri, %i.td
  %i.tu = call float @llvm.fmuladd.f32(float %28, float %i.sy, float %i.ts)
  %i.tv = call float @llvm.fmuladd.f32(float %i.sp, float %i.sy, float %i.tt)
  %i.tw = call float @llvm.fmuladd.f32(float %i.ri, float %i.ta, float %i.tu) ; 2 uses
  %i.tx = call float @llvm.fmuladd.f32(float %27, float %i.tb, float %i.tv) ; 2 uses
  %i.ty = fsub float %i.sx, %i.ti
  %i.tz = fsub float %i.ty, %i.tr
  %i.ua = fadd float %i.sr, %i.tz
  store float %i.ua, ptr %i.sq, align 4, !tbaa !92
  %i.ub = insertelement <2 x float> poison, float %i.to, i64 0
  %i.uc = insertelement <2 x float> %i.ub, float %i.tn, i64 1
  %i.ud = fsub <2 x float> %i.sz, %i.uc
  %i.ue = insertelement <2 x float> poison, float %i.tx, i64 0
  %i.uf = insertelement <2 x float> %i.ue, float %i.tw, i64 1
  %i.ug = fsub <2 x float> %i.ud, %i.uf
  %i.uh = fadd <2 x float> %i.tc, %i.ug
  store <2 x float> %i.uh, ptr %i.ss, align 4, !tbaa !92
  %i.ui = load <2 x float>, ptr %i.st, align 4, !tbaa !92
  %i.uj = insertelement <2 x float> poison, float %i.ti, i64 0
  %i.uk = insertelement <2 x float> %i.uj, float %i.to, i64 1
  %i.ul = fadd <2 x float> %i.uk, %i.ui
  %i.um = load float, ptr %i.su, align 4, !tbaa !92
  %i.un = fadd float %i.tn, %i.um
  store <2 x float> %i.ul, ptr %i.st, align 4, !tbaa !92
  store float %i.un, ptr %i.su, align 4, !tbaa !92
  %i.uo = load <2 x float>, ptr %i.sv, align 4, !tbaa !92
  %i.up = insertelement <2 x float> poison, float %i.tr, i64 0
  %i.uq = insertelement <2 x float> %i.up, float %i.tx, i64 1
  %i.ur = fadd <2 x float> %i.uq, %i.uo
  %i.us = load float, ptr %i.sw, align 4, !tbaa !92
  %i.ut = fadd float %i.tw, %i.us
  store <2 x float> %i.ur, ptr %i.sv, align 4, !tbaa !92
  store float %i.ut, ptr %i.sw, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #12
  br label %bb.ae

bb.u:                                             ; preds = %.lr.ph.split.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !81 ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #12
  %i.uy = getelementptr inbounds nuw i8, ptr %.076112.i, i64 4
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !90
  %i.va = getelementptr inbounds nuw i8, ptr %.076112.i, i64 8
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !90
  %i.vc = getelementptr inbounds nuw i8, ptr %.076112.i, i64 12
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !90
  %i.ve = getelementptr inbounds nuw i8, ptr %.076112.i, i64 16
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !90 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.076112.i, i64 20
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !90 ; 2 uses
  %i.vi = sext i32 %i.vd to i64                   ; 2 uses
  %i.vj = getelementptr inbounds [12 x i8], ptr %0, i64 %i.vi ; 5 uses
  %i.vk = sext i32 %i.vb to i64                   ; 2 uses
  %i.vl = getelementptr inbounds [12 x i8], ptr %0, i64 %i.vk ; 3 uses
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.vm = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.vj, ptr noundef nonnull %i.vl, ptr noundef nonnull %i.ax) ; 0 uses
  %i.vn = sext i32 %i.vf to i64                   ; 2 uses
  %i.vo = getelementptr inbounds [12 x i8], ptr %0, i64 %i.vn
  %i.vp = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.vo, ptr noundef nonnull %i.vj, ptr noundef nonnull %i.ay) ; 0 uses
  %i.vq = sext i32 %i.vh to i64                   ; 2 uses
  %i.vr = getelementptr inbounds [12 x i8], ptr %0, i64 %i.vq
  %i.vs = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.vr, ptr noundef nonnull %i.vj, ptr noundef nonnull %i.az) ; 0 uses
  %i.vt = load <2 x float>, ptr %i.ax, align 8, !tbaa !92
  %i.vu = load <2 x float>, ptr %i.ay, align 8, !tbaa !92
  %i.vv = load <2 x float>, ptr %i.az, align 8, !tbaa !92
  %.pre35.i102.i = load float, ptr %.phi.trans.insert34.i101.i, align 8, !tbaa !92
  %.pre37.i103.i = load float, ptr %.phi.trans.insert36.i.i, align 8, !tbaa !92
  %.pre39.i.i = load float, ptr %.phi.trans.insert38.i.i, align 8, !tbaa !92
  br label %_ZN3gmxL15spread_vsite4FDILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

bb.w:                                             ; preds = %bb.u
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !92 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !92
  %i.wa = fsub float %i.vx, %i.vz
  %i.wb = sext i32 %i.vf to i64                   ; 2 uses
  %i.wc = getelementptr inbounds [12 x i8], ptr %0, i64 %i.wb ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load float, ptr %i.wd, align 4, !tbaa !92
  %i.wf = fsub float %i.we, %i.vx
  %i.wg = sext i32 %i.vh to i64                   ; 2 uses
  %i.wh = getelementptr inbounds [12 x i8], ptr %0, i64 %i.wg ; 2 uses
  %i.wi = load <2 x float>, ptr %i.vj, align 4, !tbaa !92 ; 3 uses
  %i.wj = load <2 x float>, ptr %i.vl, align 4, !tbaa !92
  %i.wk = fsub <2 x float> %i.wi, %i.wj
  %i.wl = load <2 x float>, ptr %i.wc, align 4, !tbaa !92
  %i.wm = fsub <2 x float> %i.wl, %i.wi
  %i.wn = load <2 x float>, ptr %i.wh, align 4, !tbaa !92
  %i.wo = fsub <2 x float> %i.wn, %i.wi
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !92
  %i.wr = fsub float %i.wq, %i.vx
  br label %_ZN3gmxL15spread_vsite4FDILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL15spread_vsite4FDILNS_19VirtualSitesHandler14VirialHandlingE0EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.w, %bb.v
  %i.ws = phi float [ %.pre39.i.i, %bb.v ], [ %i.wr, %bb.w ]
  %i.wt = phi float [ %.pre37.i103.i, %bb.v ], [ %i.wf, %bb.w ]
  %i.wu = phi float [ %.pre35.i102.i, %bb.v ], [ %i.wa, %bb.w ]
  %i.wv = phi i64 [ %i.vq, %bb.v ], [ %i.wg, %bb.w ]
  %i.ww = phi i64 [ %i.vn, %bb.v ], [ %i.wb, %bb.w ]
  %i.wx = phi <2 x float> [ %i.vv, %bb.v ], [ %i.wo, %bb.w ]
  %i.wy = phi <2 x float> [ %i.vu, %bb.v ], [ %i.wm, %bb.w ]
  %i.wz = phi <2 x float> [ %i.vt, %bb.v ], [ %i.wk, %bb.w ]
  %i.xa = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.xb = shufflevector <2 x float> %i.xa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xb, <2 x float> %i.wy, <2 x float> %i.wz)
  %i.xd = call float @llvm.fmuladd.f32(float %i.cd, float %i.wt, float %i.wu)
  %i.xe = call float @llvm.fmuladd.f32(float %i.uv, float %i.ws, float %i.xd) ; 4 uses
  %i.xf = sext i32 %i.uz to i64
  %i.xg = getelementptr inbounds [12 x i8], ptr %1, i64 %i.xf ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !92 ; 3 uses
  %i.xj = fsub float 1.000000e+00, %i.cd
  %i.xk = fsub float %i.xj, %i.uv                 ; 2 uses
  %i.xl = getelementptr inbounds [12 x i8], ptr %1, i64 %i.vk ; 3 uses
  %i.xm = getelementptr inbounds [12 x i8], ptr %1, i64 %i.vi ; 3 uses
  %i.xn = getelementptr inbounds [12 x i8], ptr %1, i64 %i.ww ; 3 uses
  %i.xo = getelementptr inbounds [12 x i8], ptr %1, i64 %i.wv ; 3 uses
  %i.xp = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.xq = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xq, <2 x float> %i.wx, <2 x float> %i.xc) ; 5 uses
  %foldExtExtBinop34 = fmul <2 x float> %i.xr, %i.xr
  %i.xs = extractelement <2 x float> %foldExtExtBinop34, i64 1
  %i.xt = extractelement <2 x float> %i.xr, i64 0 ; 3 uses
  %i.xu = call float @llvm.fmuladd.f32(float %i.xt, float %i.xt, float %i.xs)
  %i.xv = call noundef float @llvm.fmuladd.f32(float %i.xe, float %i.xe, float %i.xu)
  %sqrt.i.i104.i = call float @llvm.sqrt.f32(float %i.xv)
  %i.xw = fdiv float 1.000000e+00, %sqrt.i.i104.i ; 3 uses
  %i.xx = load <2 x float>, ptr %i.xg, align 4, !tbaa !92 ; 4 uses
  %foldExtExtBinop16 = fmul <2 x float> %i.xr, %i.xx
  %i.xy = extractelement <2 x float> %foldExtExtBinop16, i64 1
  %i.xz = extractelement <2 x float> %i.xx, i64 0
  %i.ya = call float @llvm.fmuladd.f32(float %i.xt, float %i.xz, float %i.xy)
  %i.yb = call noundef float @llvm.fmuladd.f32(float %i.xe, float %i.xi, float %i.ya)
  %i.yc = fmul float %i.xw, %i.yb
  %i.yd = fneg float %i.xw
  %i.ye = fmul float %i.yc, %i.yd                 ; 2 uses
  %i.yf = fmul float %i.ux, %i.xw                 ; 2 uses
  %i.yg = insertelement <2 x float> poison, float %i.ye, i64 0
  %i.yh = shufflevector <2 x float> %i.yg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yh, <2 x float> %i.xr, <2 x float> %i.xx)
  %i.yj = insertelement <2 x float> poison, float %i.yf, i64 0
  %i.yk = shufflevector <2 x float> %i.yj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yl = fmul <2 x float> %i.yk, %i.yi           ; 4 uses
  %i.ym = call float @llvm.fmuladd.f32(float %i.ye, float %i.xe, float %i.xi)
  %i.yn = fmul float %i.yf, %i.ym                 ; 4 uses
  %i.yo = fsub <2 x float> %i.xx, %i.yl
  %i.yp = load <2 x float>, ptr %i.xl, align 4, !tbaa !92
  %i.yq = fadd <2 x float> %i.yp, %i.yo
  store <2 x float> %i.yq, ptr %i.xl, align 4, !tbaa !92
  %i.yr = load <2 x float>, ptr %i.xm, align 4, !tbaa !92
  %i.ys = insertelement <2 x float> poison, float %i.xk, i64 0
  %i.yt = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yt, <2 x float> %i.yl, <2 x float> %i.yr)
  store <2 x float> %i.yu, ptr %i.xm, align 4, !tbaa !92
  %i.yv = load <2 x float>, ptr %i.xn, align 4, !tbaa !92
  %i.yw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xb, <2 x float> %i.yl, <2 x float> %i.yv)
  store <2 x float> %i.yw, ptr %i.xn, align 4, !tbaa !92
  %i.yx = load <2 x float>, ptr %i.xo, align 4, !tbaa !92
  %i.yy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xq, <2 x float> %i.yl, <2 x float> %i.yx)
  store <2 x float> %i.yy, ptr %i.xo, align 4, !tbaa !92
  %i.yz = fsub float %i.xi, %i.yn
  %i.za = getelementptr inbounds nuw i8, ptr %i.xl, i64 8 ; 2 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !92
  %i.zc = fadd float %i.yz, %i.zb
  store float %i.zc, ptr %i.za, align 4, !tbaa !92
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xm, i64 8 ; 2 uses
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !92
  %i.zf = call float @llvm.fmuladd.f32(float %i.xk, float %i.yn, float %i.ze)
  store float %i.zf, ptr %i.zd, align 4, !tbaa !92
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xn, i64 8 ; 2 uses
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !92
  %i.zi = call float @llvm.fmuladd.f32(float %i.cd, float %i.yn, float %i.zh)
  store float %i.zi, ptr %i.zg, align 4, !tbaa !92
  %i.zj = getelementptr inbounds nuw i8, ptr %i.xo, i64 8 ; 2 uses
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !92
  %i.zl = call float @llvm.fmuladd.f32(float %i.uv, float %i.yn, float %i.zk)
  store float %i.zl, ptr %i.zj, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #12
  br label %bb.ae

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.zm = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !81 ; 8 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #12
  %i.zq = getelementptr inbounds nuw i8, ptr %.076112.i, i64 4
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !90
  %i.zs = getelementptr inbounds nuw i8, ptr %.076112.i, i64 8
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !90
  %i.zu = getelementptr inbounds nuw i8, ptr %.076112.i, i64 12
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !90
end_hunk_1
begin_hunk_2_@_ZN3gmxL18spreadForceWrapperENS_8ArrayRefIKNS_11BasicVectorIfEEEENS0_IS2_EENS_19VirtualSitesHandler14VirialHandlingES5_PA3_fbNS0_IK9t_iparamsEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLSE_95EEEPK5t_pbc:bb.a
  store <2 x float> %i.cfb, ptr %i.aml, align 4, !tbaa !92
  %i.cfc = load float, ptr %i.amn, align 4, !tbaa !92
  %i.cfd = fadd float %i.cdq, %i.cfc
  store float %i.cfd, ptr %i.amn, align 4, !tbaa !92
  %i.cfe = sext i32 %.0.i182186.i.i to i64
  %i.cff = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.cfe ; 3 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cff, i64 8 ; 2 uses
  %i.cfh = load float, ptr %i.cfg, align 4, !tbaa !92
  %i.cfi = fadd float %i.caf, %i.cfh
  %i.cfj = load <2 x float>, ptr %i.cff, align 4, !tbaa !92
  %i.cfk = fadd <2 x float> %i.cdu, %i.cfj
  store <2 x float> %i.cfk, ptr %i.cff, align 4, !tbaa !92
  store float %i.cfi, ptr %i.cfg, align 4, !tbaa !92
  %i.cfl = sext i32 %.0.i107188.i.i to i64
  %i.cfm = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.cfl ; 3 uses
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8 ; 2 uses
  %i.cfo = load float, ptr %i.cfn, align 4, !tbaa !92
  %i.cfp = fadd float %i.cbq, %i.cfo
  %i.cfq = load <2 x float>, ptr %i.cfm, align 4, !tbaa !92
  %i.cfr = fadd <2 x float> %i.cea, %i.cfq
  store <2 x float> %i.cfr, ptr %i.cfm, align 4, !tbaa !92
  store float %i.cfp, ptr %i.cfn, align 4, !tbaa !92
  %i.cfs = sext i32 %.0.i110.i.i to i64
  %i.cft = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.cfs ; 4 uses
  %i.cfu = load float, ptr %i.cft, align 4, !tbaa !92
  %i.cfv = fadd float %i.ccv, %i.cfu
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cft, i64 4 ; 2 uses
  %i.cfx = load float, ptr %i.cfw, align 4, !tbaa !92
  %i.cfy = fadd float %i.ccu, %i.cfx
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cft, i64 8 ; 2 uses
  %i.cga = load float, ptr %i.cfz, align 4, !tbaa !92
  %i.cgb = fadd float %i.cde, %i.cga
  store float %i.cfv, ptr %i.cft, align 4, !tbaa !92
  store float %i.cfy, ptr %i.cfw, align 4, !tbaa !92
  store float %i.cgb, ptr %i.cfz, align 4, !tbaa !92
  br label %_ZN3gmxL16spread_vsite4FDNILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL16spread_vsite4FDNILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #12
  br label %bb.ca

bb.bu:                                            ; preds = %.lr.ph.split.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #12
  %i.cgc = load i32, ptr %.076113.i, align 4, !tbaa !90
  %i.cgd = sext i32 %i.cgc to i64
  %i.cge = getelementptr inbounds [48 x i8], ptr %.0.val1, i64 %i.cgd
  %i.cgf = load i32, ptr %i.cge, align 4, !tbaa !81 ; 2 uses
  %i.cgg = mul nsw i32 %i.cgf, 3                  ; 3 uses
  %i.cgh = getelementptr inbounds nuw i8, ptr %.076113.i, i64 4
  %i.cgi = load i32, ptr %i.cgh, align 4, !tbaa !90
  %i.cgj = sext i32 %i.cgi to i64                 ; 2 uses
  %i.cgk = getelementptr inbounds [12 x i8], ptr %0, i64 %i.cgj ; 2 uses
  %i.cgl = load <2 x float>, ptr %i.cgk, align 4, !tbaa !92
  store <2 x float> %i.cgl, ptr %i.v, align 8, !tbaa !92
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgk, i64 8
  %i.cgn = load float, ptr %i.cgm, align 4, !tbaa !92
  store float %i.cgn, ptr %i.amk, align 8, !tbaa !92
  %i.cgo = icmp sgt i32 %i.cgf, 0
  br i1 %i.cgo, label %.lr.ph.i.i36, label %_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE1EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i

.lr.ph.i.i36:                                     ; preds = %bb.bu
  %i.cgp = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cgj ; 3 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgp, i64 8 ; 2 uses
  br i1 %.not.i130.i, label %.lr.ph.split.us.preheader.i.i40, label %.lr.ph.split.i.i37

.lr.ph.split.us.preheader.i.i40:                  ; preds = %.lr.ph.i.i36
  %i.cgr = zext nneg i32 %i.cgg to i64
  br label %.lr.ph.split.us.i.i41

.lr.ph.split.us.i.i41:                            ; preds = %.lr.ph.split.us.i.i41, %.lr.ph.split.us.preheader.i.i40
  %indvars.iv17.i.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i40 ], [ %indvars.iv.next18.i.i, %.lr.ph.split.us.i.i41 ] ; 2 uses
  %i.cgs = getelementptr inbounds nuw [4 x i8], ptr %.076113.i, i64 %indvars.iv17.i.i ; 2 uses
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgs, i64 8
  %i.cgu = load i32, ptr %i.cgt, align 4, !tbaa !90
  %i.cgv = load i32, ptr %i.cgs, align 4, !tbaa !90
  %i.cgw = sext i32 %i.cgv to i64
  %i.cgx = getelementptr inbounds [48 x i8], ptr %.0.val1, i64 %i.cgw
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.cgx, i64 4
  %i.cgz = load float, ptr %i.cgy, align 4, !tbaa !81 ; 2 uses
  %i.cha = load float, ptr %i.cgq, align 4, !tbaa !92
  %i.chb = fmul float %i.cgz, %i.cha
  %i.chc = sext i32 %i.cgu to i64
  %i.chd = getelementptr inbounds [12 x i8], ptr %1, i64 %i.chc ; 3 uses
  %i.che = getelementptr inbounds nuw i8, ptr %i.chd, i64 8 ; 2 uses
  %i.chf = load float, ptr %i.che, align 4, !tbaa !92
  %i.chg = fadd float %i.chb, %i.chf
  %i.chh = load <2 x float>, ptr %i.cgp, align 4, !tbaa !92
  %i.chi = insertelement <2 x float> poison, float %i.cgz, i64 0
  %i.chj = shufflevector <2 x float> %i.chi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.chk = fmul <2 x float> %i.chj, %i.chh
  %i.chl = load <2 x float>, ptr %i.chd, align 4, !tbaa !92
  %i.chm = fadd <2 x float> %i.chk, %i.chl
  store <2 x float> %i.chm, ptr %i.chd, align 4, !tbaa !92
  store float %i.chg, ptr %i.che, align 4, !tbaa !92
  %indvars.iv.next18.i.i = add nuw nsw i64 %indvars.iv17.i.i, 3 ; 2 uses
  %i.chn = icmp samesign ult i64 %indvars.iv.next18.i.i, %i.cgr
  br i1 %i.chn, label %.lr.ph.split.us.i.i41, label %_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE1EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i, !llvm.loop !212

.lr.ph.split.i.i37:                               ; preds = %.lr.ph.i.i36, %bb.bw
  %indvars.iv.i.i38 = phi i64 [ %indvars.iv.next.i.i39, %bb.bw ], [ 0, %.lr.ph.i.i36 ] ; 2 uses
  %i.cho = getelementptr inbounds nuw [4 x i8], ptr %.076113.i, i64 %indvars.iv.i.i38 ; 2 uses
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 8
  %i.chq = load i32, ptr %i.chp, align 4, !tbaa !90
  %i.chr = sext i32 %i.chq to i64                 ; 2 uses
  %i.chs = getelementptr inbounds [12 x i8], ptr %0, i64 %i.chr
  %i.cht = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.chs, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) ; 2 uses
  %i.chu = load i32, ptr %i.cho, align 4, !tbaa !90
  %i.chv = sext i32 %i.chu to i64
  %i.chw = getelementptr inbounds [48 x i8], ptr %.0.val1, i64 %i.chv
  %i.chx = getelementptr inbounds nuw i8, ptr %i.chw, i64 4
  %i.chy = load float, ptr %i.chx, align 4, !tbaa !81 ; 2 uses
  %i.chz = load <2 x float>, ptr %i.cgp, align 4, !tbaa !92
  %i.cia = insertelement <2 x float> poison, float %i.chy, i64 0
  %i.cib = shufflevector <2 x float> %i.cia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cic = fmul <2 x float> %i.cib, %i.chz        ; 3 uses
  %i.cid = load float, ptr %i.cgq, align 4, !tbaa !92
  %i.cie = fmul float %i.chy, %i.cid              ; 3 uses
  %i.cif = getelementptr inbounds [12 x i8], ptr %1, i64 %i.chr ; 3 uses
  %i.cig = getelementptr inbounds nuw i8, ptr %i.cif, i64 8 ; 2 uses
  %i.cih = load float, ptr %i.cig, align 4, !tbaa !92
  %i.cii = fadd float %i.cie, %i.cih
  %i.cij = load <2 x float>, ptr %i.cif, align 4, !tbaa !92
  %i.cik = fadd <2 x float> %i.cic, %i.cij
  store <2 x float> %i.cik, ptr %i.cif, align 4, !tbaa !92
  store float %i.cii, ptr %i.cig, align 4, !tbaa !92
  %.not21.i.i = icmp eq i32 %i.cht, 22
  br i1 %.not21.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.split.i.i37
  %i.cil = sext i32 %i.cht to i64
  %i.cim = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.cil ; 3 uses
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cim, i64 8 ; 2 uses
  %i.cio = load float, ptr %i.cin, align 4, !tbaa !92
  %i.cip = fadd float %i.cie, %i.cio
  %i.ciq = load <2 x float>, ptr %i.cim, align 4, !tbaa !92
  %i.cir = fadd <2 x float> %i.cic, %i.ciq
  store <2 x float> %i.cir, ptr %i.cim, align 4, !tbaa !92
  store float %i.cip, ptr %i.cin, align 4, !tbaa !92
  %i.cis = load float, ptr %i.amn, align 4, !tbaa !92
  %i.cit = fsub float %i.cis, %i.cie
  %i.ciu = load <2 x float>, ptr %i.aml, align 4, !tbaa !92
  %i.civ = fsub <2 x float> %i.ciu, %i.cic
  store <2 x float> %i.civ, ptr %i.aml, align 4, !tbaa !92
  store float %i.cit, ptr %i.amn, align 4, !tbaa !92
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph.split.i.i37
  %indvars.iv.next.i.i39 = add nuw nsw i64 %indvars.iv.i.i38, 3 ; 2 uses
  %i.ciw = trunc nuw i64 %indvars.iv.next.i.i39 to i32
  %i.cix = icmp sgt i32 %i.cgg, %i.ciw
  br i1 %i.cix, label %.lr.ph.split.i.i37, label %_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE1EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i, !llvm.loop !212

_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE1EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i: ; preds = %bb.bw, %.lr.ph.split.us.i.i41, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #12
  br label %bb.ca

bb.bx:                                            ; preds = %.lr.ph.i20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(60) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 2198, ptr noundef nonnull @.str.2, i32 noundef %i.amp, ptr noundef nonnull @.str, i32 noundef 2202) #33
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.ciy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %common.resume

bb.ca:                                            ; preds = %_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE1EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i, %_ZN3gmxL16spread_vsite4FDNILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %_ZN3gmxL15spread_vsite4FDILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %_ZN3gmxL15spread_vsite3FDILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %_ZN3gmxL13spread_vsite3ILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PK5t_pbc.exit.i, %_ZN3gmxL15spread_vsite2FDILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %_ZN3gmxL13spread_vsite2ILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PK5t_pbc.exit.i, %bb.ai
  %.1.i25 = phi i32 [ %.077112.i, %bb.ai ], [ %.077112.i, %_ZN3gmxL13spread_vsite2ILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PK5t_pbc.exit.i ], [ %.077112.i, %_ZN3gmxL15spread_vsite2FDILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %.077112.i, %_ZN3gmxL13spread_vsite3ILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PK5t_pbc.exit.i ], [ %.077112.i, %_ZN3gmxL15spread_vsite3FDILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %.077112.i, %_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %.077112.i, %_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %.077112.i, %_ZN3gmxL15spread_vsite4FDILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %.077112.i, %_ZN3gmxL16spread_vsite4FDNILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %i.cgg, %_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE1EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i ] ; 3 uses
  %i.ciz = getelementptr inbounds nuw i8, ptr %.076113.i, i64 4
  %i.cja = load i32, ptr %i.ciz, align 4, !tbaa !90
  %i.cjb = sext i32 %i.cja to i64
  %i.cjc = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cjb ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.cjc, align 4, !tbaa !92
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.cjc, i64 8
  store float 0.000000e+00, ptr %i.cjd, align 4, !tbaa !92
  %i.cje = add nsw i32 %.1.i25, %.075115.i        ; 2 uses
  %i.cjf = sext i32 %.1.i25 to i64
  %i.cjg = getelementptr inbounds [4 x i8], ptr %.076113.i, i64 %i.cjf
  %i.cjh = icmp slt i32 %i.cje, %i.ana
  br i1 %i.cjh, label %.lr.ph.split.i24, label %.loopexit.i17, !llvm.loop !213

.loopexit.i17:                                    ; preds = %bb.ca, %bb.ah, %bb.ag
  %.0.add.i18 = add nuw nsw i64 %.0.idx116.i, 4   ; 2 uses
  %.not.i19 = icmp eq i64 %.0.add.i18, 40
  br i1 %.not.i19, label %_ZN3gmxL20spreadForceForThreadILNS_19VirtualSitesHandler14VirialHandlingE0EEEvNS_8ArrayRefIKNS_11BasicVectorIfEEEENS3_IS5_EES8_PA3_fNS3_IK9t_iparamsEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLSF_95EEEPK5t_pbc.exit, label %bb.ag

bb.cb:                                            ; preds = %.thread, %bb.b
  %i.cji = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.not.i.i42 = icmp eq ptr %6, null              ; 13 uses
  %.phi.trans.insert.i107.i43 = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.phi.trans.insert171.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.phi.trans.insert174.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %.phi.trans.insert176.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.phi.trans.insert179.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.phi.trans.insert181.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.phi.trans.insert186.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cjj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 12 uses
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.phi.trans.insert61.i.i46 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.phi.trans.insert63.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.phi.trans.insert.i90.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.phi.trans.insert44.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.phi.trans.insert81.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.phi.trans.insert86.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.phi.trans.insert41.i.i48 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.phi.trans.insert43.i.i49 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.phi.trans.insert31.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i54, %bb.cb
  %.0.idx223.i = phi i64 [ 0, %bb.cb ], [ %.0.add.i55, %.loopexit.i54 ] ; 2 uses
  %.0.ptr.i53 = getelementptr inbounds nuw i8, ptr @_ZN3gmxL26vSiteFunctionTypesReversedE, i64 %.0.idx223.i
  %i.cjl = load i32, ptr %.0.ptr.i53, align 4, !tbaa !86 ; 4 uses
  %i.cjm = sext i32 %i.cjl to i64                 ; 2 uses
  %i.cjn = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.cjm ; 2 uses
  %i.cjo = load ptr, ptr %i.cjn, align 8, !tbaa !87 ; 3 uses
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjn, i64 8
  %i.cjq = load ptr, ptr %i.cjp, align 8, !tbaa !87 ; 2 uses
  %i.cjr = icmp eq ptr %i.cjo, %i.cjq
  br i1 %i.cjr, label %.loopexit.i54, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.cjs = ptrtoint ptr %i.cjq to i64
  %i.cjt = ptrtoint ptr %i.cjo to i64
  %i.cju = sub i64 %i.cjs, %i.cjt
  %i.cjv = lshr exact i64 %i.cju, 2
  %i.cjw = trunc i64 %i.cjv to i32                ; 2 uses
  %i.cjx = icmp sgt i32 %i.cjw, 0
  br i1 %i.cjx, label %.lr.ph.i57, label %.loopexit.i54

.lr.ph.i57:                                       ; preds = %bb.cd
  %.off.i58 = add i32 %i.cjl, -65
  %switch.i59 = icmp ult i32 %.off.i58, 10
  br i1 %switch.i59, label %.lr.ph.split.preheader.i60, label %bb.dm

.lr.ph.split.preheader.i60:                       ; preds = %.lr.ph.i57
  %i.cjy = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.cjm
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjy, i64 16
  %i.cka = load i32, ptr %i.cjz, align 8, !tbaa !89
  %i.ckb = add nsw i32 %i.cka, 1
  br label %.lr.ph.split.i61

.lr.ph.split.i61:                                 ; preds = %bb.dp, %.lr.ph.split.preheader.i60
  %.075222.i = phi i32 [ %i.dzm, %bb.dp ], [ 0, %.lr.ph.split.preheader.i60 ]
  %.076220.i = phi ptr [ %i.dzo, %bb.dp ], [ %i.cjo, %.lr.ph.split.preheader.i60 ] ; 41 uses
  %.077219.i = phi i32 [ %.1.i64, %bb.dp ], [ %i.ckb, %.lr.ph.split.preheader.i60 ] ; 9 uses
  %i.ckc = load i32, ptr %.076220.i, align 4, !tbaa !90
  %i.ckd = sext i32 %i.ckc to i64
  %i.cke = getelementptr inbounds [48 x i8], ptr %.0.val1, i64 %i.ckd ; 10 uses
  %i.ckf = load float, ptr %i.cke, align 4, !tbaa !81 ; 27 uses
  switch i32 %i.cjl, label %bb.dl [
    i32 65, label %bb.ce
    i32 66, label %bb.cf
    i32 67, label %bb.cg
    i32 68, label %bb.cl
    i32 69, label %bb.cm
    i32 70, label %bb.cr
    i32 71, label %bb.cw
    i32 72, label %bb.db
    i32 73, label %bb.dg
  ]

bb.ce:                                            ; preds = %.lr.ph.split.i61
  %i.ckg = getelementptr i8, ptr %.076220.i, i64 4
  %.076.val.i92 = load i32, ptr %i.ckg, align 4, !tbaa !90
  %i.ckh = getelementptr i8, ptr %.076220.i, i64 8
  %.076.val78.i93 = load i32, ptr %i.ckh, align 4, !tbaa !90
  %i.cki = sext i32 %.076.val.i92 to i64
  %i.ckj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cki ; 2 uses
  %i.ckk = sext i32 %.076.val78.i93 to i64
  %i.ckl = getelementptr inbounds [12 x i8], ptr %1, i64 %i.ckk ; 3 uses
  %i.ckm = load <2 x float>, ptr %i.ckl, align 4, !tbaa !92
  %i.ckn = load <2 x float>, ptr %i.ckj, align 4, !tbaa !92
  %i.cko = fadd <2 x float> %i.ckm, %i.ckn
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.ckl, i64 8 ; 2 uses
  %i.ckq = load float, ptr %i.ckp, align 4, !tbaa !92
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckj, i64 8
  %i.cks = load float, ptr %i.ckr, align 4, !tbaa !92
  %i.ckt = fadd float %i.ckq, %i.cks
  store <2 x float> %i.cko, ptr %i.ckl, align 4
  store float %i.ckt, ptr %i.ckp, align 4, !tbaa !81
  br label %bb.dp

bb.cf:                                            ; preds = %.lr.ph.split.i61
  %i.cku = getelementptr inbounds nuw i8, ptr %.076220.i, i64 4
  %i.ckv = load i32, ptr %i.cku, align 4, !tbaa !90
  %i.ckw = getelementptr inbounds nuw i8, ptr %.076220.i, i64 8
  %i.ckx = load i32, ptr %i.ckw, align 4, !tbaa !90
  %i.cky = getelementptr inbounds nuw i8, ptr %.076220.i, i64 12
  %i.ckz = load i32, ptr %i.cky, align 4, !tbaa !90
  %i.cla = fsub float 1.000000e+00, %i.ckf        ; 2 uses
  %i.clb = sext i32 %i.ckv to i64
  %i.clc = getelementptr inbounds [12 x i8], ptr %1, i64 %i.clb ; 2 uses
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clc, i64 8
  %i.cle = load float, ptr %i.cld, align 4, !tbaa !92 ; 2 uses
  %i.clf = fmul float %i.cla, %i.cle
  %i.clg = fmul float %i.ckf, %i.cle
  %i.clh = sext i32 %i.ckx to i64
  %i.cli = getelementptr inbounds [12 x i8], ptr %1, i64 %i.clh ; 3 uses
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cli, i64 8 ; 2 uses
  %i.clk = load float, ptr %i.clj, align 4, !tbaa !92
  %i.cll = fadd float %i.clf, %i.clk
  store float %i.cll, ptr %i.clj, align 4, !tbaa !92
  %i.clm = sext i32 %i.ckz to i64
  %i.cln = getelementptr inbounds [12 x i8], ptr %1, i64 %i.clm ; 3 uses
  %i.clo = getelementptr inbounds nuw i8, ptr %i.cln, i64 8 ; 2 uses
  %i.clp = load float, ptr %i.clo, align 4, !tbaa !92
  %i.clq = fadd float %i.clg, %i.clp
  %i.clr = load <2 x float>, ptr %i.clc, align 4, !tbaa !92 ; 2 uses
  %i.cls = insertelement <2 x float> poison, float %i.ckf, i64 0
  %i.clt = shufflevector <2 x float> %i.cls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.clu = fmul <2 x float> %i.clt, %i.clr
  %i.clv = load <2 x float>, ptr %i.cli, align 4, !tbaa !92
  %i.clw = insertelement <2 x float> poison, float %i.cla, i64 0
  %i.clx = shufflevector <2 x float> %i.clw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cly = fmul <2 x float> %i.clx, %i.clr
  %i.clz = fadd <2 x float> %i.cly, %i.clv
  store <2 x float> %i.clz, ptr %i.cli, align 4, !tbaa !92
  %i.cma = load <2 x float>, ptr %i.cln, align 4, !tbaa !92
  %i.cmb = fadd <2 x float> %i.clu, %i.cma
  store <2 x float> %i.cmb, ptr %i.cln, align 4, !tbaa !92
  store float %i.clq, ptr %i.clo, align 4, !tbaa !92
  br label %bb.dp

bb.cg:                                            ; preds = %.lr.ph.split.i61
  %i.cmc = getelementptr inbounds nuw i8, ptr %.076220.i, i64 4
  %i.cmd = load i32, ptr %i.cmc, align 4, !tbaa !90
  %i.cme = getelementptr inbounds nuw i8, ptr %.076220.i, i64 8
  %i.cmf = load i32, ptr %i.cme, align 4, !tbaa !90
  %i.cmg = getelementptr inbounds nuw i8, ptr %.076220.i, i64 12
  %i.cmh = load i32, ptr %i.cmg, align 4, !tbaa !90
  %i.cmi = sext i32 %i.cmd to i64                 ; 2 uses
  %i.cmj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cmi ; 2 uses
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmj, i64 4
  %i.cml = load <3 x float>, ptr %i.cmj, align 4, !tbaa !92 ; 5 uses
  %i.cmm = shufflevector <3 x float> %i.cml, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.cmn = load float, ptr %i.cmk, align 4, !tbaa !92 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #12
  %i.cmo = sext i32 %i.cmh to i64                 ; 2 uses
  %i.cmp = getelementptr inbounds [12 x i8], ptr %0, i64 %i.cmo ; 2 uses
  %i.cmq = sext i32 %i.cmf to i64                 ; 2 uses
  %i.cmr = getelementptr inbounds [12 x i8], ptr %0, i64 %i.cmq ; 4 uses
  br i1 %.not.i.i42, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.cms = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.cmp, ptr noundef nonnull %i.cmr, ptr noundef nonnull %i.t) ; 0 uses
  %i.cmt = load <3 x float>, ptr %i.t, align 16, !tbaa !92
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.i.i84

bb.ci:                                            ; preds = %bb.cg
  %i.cmu = load <3 x float>, ptr %i.cmp, align 4, !tbaa !92
  %i.cmv = load <3 x float>, ptr %i.cmr, align 4, !tbaa !92
  %i.cmw = fsub <3 x float> %i.cmu, %i.cmv        ; 3 uses
  %i.cmx = shufflevector <3 x float> %i.cmw, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.cmx, ptr %i.t, align 16, !tbaa !92
  %i.cmy = extractelement <3 x float> %i.cmw, i64 2
  store float %i.cmy, ptr %.phi.trans.insert31.i.i, align 8, !tbaa !92
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.i.i84

_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.i.i84: ; preds = %bb.ci, %bb.ch
  %i.cmz = phi <3 x float> [ %i.cmt, %bb.ch ], [ %i.cmw, %bb.ci ] ; 5 uses
  %i.cna = extractelement <3 x float> %i.cmz, i64 1 ; 3 uses
  %i.cnb = fmul float %i.cna, %i.cna
  %i.cnc = extractelement <3 x float> %i.cmz, i64 0 ; 3 uses
  %i.cnd = call float @llvm.fmuladd.f32(float %i.cnc, float %i.cnc, float %i.cnb)
  %i.cne = extractelement <3 x float> %i.cmz, i64 2 ; 3 uses
  %i.cnf = call noundef float @llvm.fmuladd.f32(float %i.cne, float %i.cne, float %i.cnd)
  %sqrt.i.i.i85 = call float @llvm.sqrt.f32(float %i.cnf)
  %i.cng = fdiv float 1.000000e+00, %sqrt.i.i.i85 ; 3 uses
  %i.cnh = fmul float %i.cmn, %i.cna
  %i.cni = extractelement <3 x float> %i.cml, i64 0
  %i.cnj = call float @llvm.fmuladd.f32(float %i.cnc, float %i.cni, float %i.cnh)
  %i.cnk = extractelement <3 x float> %i.cml, i64 2 ; 3 uses
  %i.cnl = call noundef float @llvm.fmuladd.f32(float %i.cne, float %i.cnk, float %i.cnj)
  %i.cnm = fmul float %i.cnl, %i.cng
  %i.cnn = fneg float %i.cng
  %i.cno = fmul float %i.cnm, %i.cnn
  %i.cnp = fmul float %i.ckf, %i.cng
  %i.cnq = insertelement <3 x float> poison, float %i.cno, i64 0
  %i.cnr = shufflevector <3 x float> %i.cnq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cns = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cnr, <3 x float> %i.cmz, <3 x float> %i.cml)
  %i.cnt = insertelement <3 x float> poison, float %i.cnp, i64 0
  %i.cnu = shufflevector <3 x float> %i.cnt, <3 x float> poison, <8 x i32> zeroinitializer
  %i.cnv = shufflevector <3 x float> %i.cns, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.cnw = fmul <8 x float> %i.cnu, %i.cnv        ; 4 uses
  %i.cnx = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cmq ; 3 uses
  %i.cny = shufflevector <3 x float> %i.cml, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cnz = insertelement <2 x float> %i.cny, float %i.cmn, i64 1
  %i.coa = shufflevector <8 x float> %i.cnw, <8 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.cob = fsub <2 x float> %i.cnz, %i.coa
  %i.coc = load <2 x float>, ptr %i.cnx, align 4, !tbaa !92
  %i.cod = fadd <2 x float> %i.coc, %i.cob
  store <2 x float> %i.cod, ptr %i.cnx, align 4, !tbaa !92
  %i.coe = extractelement <8 x float> %i.cnw, i64 2 ; 2 uses
  %i.cof = fsub float %i.cnk, %i.coe
end_hunk_2
begin_hunk_3_@_ZN3gmxL18spreadForceWrapperENS_8ArrayRefIKNS_11BasicVectorIfEEEENS0_IS2_EENS_19VirtualSitesHandler14VirialHandlingES5_PA3_fbNS0_IK9t_iparamsEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLSE_95EEEPK5t_pbc:bb.a
  %i.cxt = fmul float %i.cxs, %i.cxn              ; 4 uses
  %i.cxu = fneg float %i.cxt                      ; 2 uses
  %i.cxv = fmul float %i.ckf, %i.cxm
  %i.cxw = fmul float %i.cwg, %i.cxg
  %i.cxx = extractelement <3 x float> %i.cwf, i64 0 ; 2 uses
  %i.cxy = call float @llvm.fmuladd.f32(float %i.cxi, float %i.cxx, float %i.cxw)
  %i.cxz = extractelement <3 x float> %i.cwf, i64 2 ; 4 uses
  %i.cya = call noundef float @llvm.fmuladd.f32(float %i.cxk, float %i.cxz, float %i.cxy)
  %i.cyb = fmul float %i.cya, %i.cxn              ; 2 uses
  %i.cyc = insertelement <3 x float> poison, float %i.cxu, i64 0
  %i.cyd = shufflevector <3 x float> %i.cyc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cye = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cyd, <3 x float> %i.cxd, <3 x float> %i.cxe) ; 4 uses
  %i.cyf = call float @llvm.fmuladd.f32(float %i.cxu, float %i.cxg, float %i.cxf) ; 4 uses
  %i.cyg = fmul float %i.cyf, %i.cyf
  %i.cyh = extractelement <3 x float> %i.cye, i64 0 ; 3 uses
  %i.cyi = call float @llvm.fmuladd.f32(float %i.cyh, float %i.cyh, float %i.cyg)
  %i.cyj = extractelement <3 x float> %i.cye, i64 2 ; 3 uses
  %i.cyk = call noundef float @llvm.fmuladd.f32(float %i.cyj, float %i.cyj, float %i.cyi)
  %sqrt.i72.i.i = call float @llvm.sqrt.f32(float %i.cyk)
  %i.cyl = fdiv float 1.000000e+00, %sqrt.i72.i.i ; 3 uses
  %i.cym = fmul float %i.cvt, %i.cyl              ; 2 uses
  %i.cyn = insertelement <3 x float> poison, float %i.cyb, i64 0
  %i.cyo = shufflevector <3 x float> %i.cyn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cyp = fmul <3 x float> %i.cxd, %i.cyo
  %i.cyq = fmul float %i.cwg, %i.cyf
  %i.cyr = call float @llvm.fmuladd.f32(float %i.cyh, float %i.cxx, float %i.cyq)
  %i.cys = call noundef float @llvm.fmuladd.f32(float %i.cyj, float %i.cxz, float %i.cyr)
  %i.cyt = fmul float %i.cys, %i.cyl
  %i.cyu = fmul float %i.cyl, %i.cyt
  %i.cyv = insertelement <3 x float> poison, float %i.cyu, i64 0
  %i.cyw = shufflevector <3 x float> %i.cyv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cyx = fmul <3 x float> %i.cye, %i.cyw
  %i.cyy = fmul float %i.cyb, %i.cym              ; 2 uses
  %i.cyz = insertelement <3 x float> poison, float %i.cyy, i64 0
  %i.cza = shufflevector <3 x float> %i.cyz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.czb = fmul <3 x float> %i.cye, %i.cza        ; 3 uses
  %i.czc = fmul float %i.cyf, %i.cyy
  %i.czd = fsub <3 x float> %i.cwf, %i.cyp        ; 2 uses
  %i.cze = fsub <3 x float> %i.czd, %i.cyx
  %i.czf = insertelement <3 x float> poison, float %i.cxv, i64 0
  %i.czg = shufflevector <3 x float> %i.czf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.czh = fmul <3 x float> %i.czg, %i.czd        ; 3 uses
  %i.czi = insertelement <3 x float> poison, float %i.cym, i64 0
  %i.czj = shufflevector <3 x float> %i.czi, <3 x float> poison, <3 x i32> zeroinitializer
  %i.czk = fmul <3 x float> %i.czj, %i.cze        ; 4 uses
  %i.czl = shufflevector <3 x float> %i.czk, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.czm = fadd float %i.cxt, 1.000000e+00        ; 2 uses
  %i.czn = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cwj ; 3 uses
  %i.czo = shufflevector <3 x float> %i.cwf, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.czp = insertelement <2 x float> %i.czo, float %i.cwg, i64 1
  %i.czq = shufflevector <3 x float> %i.czh, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.czr = fsub <2 x float> %i.czp, %i.czq
  %i.czs = insertelement <2 x float> poison, float %i.cxt, i64 0
  %i.czt = shufflevector <2 x float> %i.czs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.czu = shufflevector <3 x float> %i.czk, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.czv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.czt, <2 x float> %i.czu, <2 x float> %i.czr)
  %i.czw = shufflevector <3 x float> %i.czb, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.czx = insertelement <2 x float> %i.czw, float %i.czc, i64 1 ; 2 uses
  %i.czy = fadd <2 x float> %i.czx, %i.czv
  %i.czz = load <2 x float>, ptr %i.czn, align 4, !tbaa !92
  %i.daa = fadd <2 x float> %i.czz, %i.czy
  store <2 x float> %i.daa, ptr %i.czn, align 4, !tbaa !92
  %i.dab = extractelement <3 x float> %i.czh, i64 2 ; 2 uses
  %i.dac = fsub float %i.cxz, %i.dab
  %i.dad = extractelement <3 x float> %i.czk, i64 2 ; 4 uses
  %i.dae = call float @llvm.fmuladd.f32(float %i.cxt, float %i.dad, float %i.dac)
  %i.daf = extractelement <3 x float> %i.czb, i64 2 ; 2 uses
  %i.dag = fadd float %i.daf, %i.dae
  %i.dah = getelementptr inbounds nuw i8, ptr %i.czn, i64 8 ; 2 uses
  %i.dai = load float, ptr %i.dah, align 4, !tbaa !92
  %i.daj = fadd float %i.dai, %i.dag
  store float %i.daj, ptr %i.dah, align 4, !tbaa !92
  %i.dak = fneg float %i.czm                      ; 2 uses
  %i.dal = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cwh ; 3 uses
  %i.dam = insertelement <2 x float> poison, float %i.dak, i64 0
  %i.dan = shufflevector <2 x float> %i.dam, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dan, <2 x float> %i.czu, <2 x float> %i.czq)
  %i.dap = fsub <2 x float> %i.dao, %i.czx
  %i.daq = load <2 x float>, ptr %i.dal, align 4, !tbaa !92
  %i.dar = fadd <2 x float> %i.daq, %i.dap
  store <2 x float> %i.dar, ptr %i.dal, align 4, !tbaa !92
  %i.das = call float @llvm.fmuladd.f32(float %i.dak, float %i.dad, float %i.dab)
  %i.dat = fsub float %i.das, %i.daf
  %i.dau = getelementptr inbounds nuw i8, ptr %i.dal, i64 8 ; 2 uses
  %i.dav = load float, ptr %i.dau, align 4, !tbaa !92
  %i.daw = fadd float %i.dav, %i.dat
  store float %i.daw, ptr %i.dau, align 4, !tbaa !92
  %i.dax = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cxc ; 3 uses
  %i.day = load <2 x float>, ptr %i.dax, align 4, !tbaa !92
  %i.daz = fadd <2 x float> %i.day, %i.czu
  store <2 x float> %i.daz, ptr %i.dax, align 4, !tbaa !92
  %i.dba = getelementptr inbounds nuw i8, ptr %i.dax, i64 8 ; 2 uses
  %i.dbb = load float, ptr %i.dba, align 4, !tbaa !92
  %i.dbc = fadd float %i.dad, %i.dbb
  store float %i.dbc, ptr %i.dba, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #12
  %i.dbd = getelementptr inbounds [12 x i8], ptr %0, i64 %i.cwc ; 2 uses
  br i1 %.not.i.i42, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit71.i.i
  %i.dbe = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dbd, ptr noundef nonnull %i.cwk, ptr noundef nonnull %i.p) ; 0 uses
  %i.dbf = load <3 x float>, ptr %i.p, align 16, !tbaa !92
  br label %_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

bb.cv:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit71.i.i
  %i.dbg = load <3 x float>, ptr %i.dbd, align 4, !tbaa !92
  %i.dbh = load <3 x float>, ptr %i.cwk, align 4, !tbaa !92
  %i.dbi = fsub <3 x float> %i.dbg, %i.dbh
  br label %_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.cv, %bb.cu
  %i.dbj = phi <3 x float> [ %i.dbf, %bb.cu ], [ %i.dbi, %bb.cv ]
  %i.dbk = fsub float 1.000000e+00, %i.czm
  %i.dbl = fneg <3 x float> %i.dbj                ; 2 uses
  %i.dbm = shufflevector <3 x float> %i.dbl, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dbn = insertelement <3 x float> poison, float %i.dbk, i64 0
  %i.dbo = shufflevector <3 x float> %i.dbn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dbp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dbo, <3 x float> %i.czk, <3 x float> %i.czh)
  %i.dbq = fsub <3 x float> %i.dbp, %i.czb        ; 2 uses
  %i.dbr = shufflevector <3 x float> %i.dbq, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dbs = load float, ptr %.phi.trans.insert81.i.i, align 8, !tbaa !92
  %i.dbt = load <3 x float>, ptr %i.n, align 16, !tbaa !92
  %i.dbu = shufflevector <3 x float> %i.dbt, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dbv = load float, ptr %.phi.trans.insert86.i.i, align 8, !tbaa !92
  %i.dbw = load <3 x float>, ptr %i.o, align 16, !tbaa !92
  %i.dbx = shufflevector <3 x float> %i.dbw, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dby = fmul <8 x float> %i.dbr, %i.dbu
  %i.dbz = shufflevector <3 x float> %i.cwf, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dca = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dbm, <8 x float> %i.dbz, <8 x float> %i.dby)
  %i.dcb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dbx, <8 x float> %i.czl, <8 x float> %i.dca)
  %i.dcc = load <8 x float>, ptr %3, align 4, !tbaa !92
  %i.dcd = fadd <8 x float> %i.dcc, %i.dcb
  store <8 x float> %i.dcd, ptr %3, align 4, !tbaa !92
  %i.dce = extractelement <3 x float> %i.dbq, i64 2
  %i.dcf = fmul float %i.dce, %i.dbs
  %i.dcg = extractelement <3 x float> %i.dbl, i64 2
  %i.dch = call float @llvm.fmuladd.f32(float %i.dcg, float %i.cxz, float %i.dcf)
  %i.dci = call float @llvm.fmuladd.f32(float %i.dbv, float %i.dad, float %i.dch)
  %i.dcj = load float, ptr %i.cjj, align 4, !tbaa !92
  %i.dck = fadd float %i.dci, %i.dcj
  store float %i.dck, ptr %i.cjj, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  br label %bb.dp

bb.cw:                                            ; preds = %.lr.ph.split.i61
  %i.dcl = getelementptr inbounds nuw i8, ptr %i.cke, i64 4
  %i.dcm = load float, ptr %i.dcl, align 4, !tbaa !81 ; 3 uses
  %i.dcn = getelementptr inbounds nuw i8, ptr %i.cke, i64 8
  %i.dco = load float, ptr %i.dcn, align 4, !tbaa !81 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.dcp = getelementptr inbounds nuw i8, ptr %.076220.i, i64 4
  %i.dcq = load i32, ptr %i.dcp, align 4, !tbaa !90
  %i.dcr = getelementptr inbounds nuw i8, ptr %.076220.i, i64 8
  %i.dcs = load i32, ptr %i.dcr, align 4, !tbaa !90
  %i.dct = getelementptr inbounds nuw i8, ptr %.076220.i, i64 12
  %i.dcu = load i32, ptr %i.dct, align 4, !tbaa !90
  %i.dcv = getelementptr inbounds nuw i8, ptr %.076220.i, i64 16
  %i.dcw = load i32, ptr %i.dcv, align 4, !tbaa !90 ; 2 uses
  %i.dcx = sext i32 %i.dcu to i64                 ; 2 uses
  %i.dcy = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dcx ; 2 uses
  %i.dcz = sext i32 %i.dcs to i64                 ; 2 uses
  %i.dda = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dcz ; 5 uses
  br i1 %.not.i.i42, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ddb = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dcy, ptr noundef nonnull %i.dda, ptr noundef nonnull %i.k) ; 0 uses
  %i.ddc = sext i32 %i.dcw to i64                 ; 2 uses
  %i.ddd = getelementptr inbounds [12 x i8], ptr %0, i64 %i.ddc
  %i.dde = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.ddd, ptr noundef nonnull %i.dda, ptr noundef nonnull %i.l) ; 0 uses
  %i.ddf = load <3 x float>, ptr %i.l, align 16, !tbaa !92
  %i.ddg = load <3 x float>, ptr %i.k, align 16, !tbaa !92
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit55.i.i71

bb.cy:                                            ; preds = %bb.cw
  %i.ddh = sext i32 %i.dcw to i64                 ; 2 uses
  %i.ddi = getelementptr inbounds [12 x i8], ptr %0, i64 %i.ddh
  %i.ddj = load <3 x float>, ptr %i.dcy, align 4, !tbaa !92
  %i.ddk = load <3 x float>, ptr %i.dda, align 4, !tbaa !92 ; 2 uses
  %i.ddl = fsub <3 x float> %i.ddj, %i.ddk        ; 3 uses
  %i.ddm = shufflevector <3 x float> %i.ddl, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ddm, ptr %i.k, align 16, !tbaa !92
  %i.ddn = extractelement <3 x float> %i.ddl, i64 2
  store float %i.ddn, ptr %.phi.trans.insert44.i.i, align 8, !tbaa !92
  %i.ddo = load <3 x float>, ptr %i.ddi, align 4, !tbaa !92
  %i.ddp = fsub <3 x float> %i.ddo, %i.ddk        ; 3 uses
  %i.ddq = shufflevector <3 x float> %i.ddp, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ddq, ptr %i.l, align 16, !tbaa !92
  %i.ddr = extractelement <3 x float> %i.ddp, i64 2
  store float %i.ddr, ptr %.phi.trans.insert.i90.i, align 8, !tbaa !92
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit55.i.i71

_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit55.i.i71: ; preds = %bb.cy, %bb.cx
  %i.dds = phi i64 [ %i.ddc, %bb.cx ], [ %i.ddh, %bb.cy ]
  %i.ddt = phi <3 x float> [ %i.ddf, %bb.cx ], [ %i.ddp, %bb.cy ] ; 4 uses
  %i.ddu = phi <3 x float> [ %i.ddg, %bb.cx ], [ %i.ddl, %bb.cy ] ; 4 uses
  %i.ddv = sext i32 %i.dcq to i64                 ; 2 uses
  %i.ddw = getelementptr inbounds [12 x i8], ptr %1, i64 %i.ddv ; 2 uses
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.ddw, i64 8
  %i.ddy = extractelement <3 x float> %i.ddt, i64 0 ; 2 uses
  %i.ddz = fneg float %i.ddy
  %i.dea = extractelement <3 x float> %i.ddt, i64 1 ; 2 uses
  %i.deb = fneg float %i.dea
  %i.dec = extractelement <3 x float> %i.ddu, i64 1 ; 2 uses
  %i.ded = fneg float %i.dec
  %i.dee = extractelement <3 x float> %i.ddu, i64 2 ; 2 uses
  %i.def = fneg float %i.dee
  %31 = load float, ptr %i.ddx, align 4, !tbaa !92 ; 6 uses
  %32 = load <2 x float>, ptr %i.ddw, align 4, !tbaa !92 ; 4 uses
  %33 = extractelement <2 x float> %32, i64 1     ; 3 uses
  %i.deg = extractelement <2 x float> %32, i64 0  ; 3 uses
  %i.deh = fmul float %i.dco, %i.deg              ; 4 uses
  %i.dei = fmul float %i.dco, %33                 ; 3 uses
  %i.dej = fmul float %i.dco, %31                 ; 4 uses
  %i.dek = fneg float %i.dei                      ; 2 uses
  %i.del = fmul float %i.ddy, %i.dei
  %i.dem = extractelement <3 x float> %i.ddt, i64 2 ; 2 uses
  %i.den = call float @llvm.fmuladd.f32(float %i.deb, float %i.deh, float %i.del)
  %i.deo = call float @llvm.fmuladd.f32(float %i.ckf, float %31, float %i.den) ; 4 uses
  %i.dep = extractelement <3 x float> %i.ddu, i64 0 ; 2 uses
  %i.deq = fmul float %i.dep, %i.dek
  %i.der = call float @llvm.fmuladd.f32(float %i.dec, float %i.deh, float %i.deq)
  %i.des = call float @llvm.fmuladd.f32(float %i.dcm, float %31, float %i.der) ; 4 uses
  %i.det = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dcz ; 3 uses
  %i.deu = fsub float %31, %i.deo
  %i.dev = fsub float %i.deu, %i.des
  %i.dew = getelementptr inbounds nuw i8, ptr %i.det, i64 8 ; 2 uses
  %i.dex = load float, ptr %i.dew, align 4, !tbaa !92
  %i.dey = fadd float %i.dev, %i.dex
  store float %i.dey, ptr %i.dew, align 4, !tbaa !92
  %i.dez = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dcx ; 3 uses
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dez, i64 8 ; 2 uses
  %i.dfb = load float, ptr %i.dfa, align 4, !tbaa !92
  %i.dfc = fadd float %i.deo, %i.dfb
  store float %i.dfc, ptr %i.dfa, align 4, !tbaa !92
  %i.dfd = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dds ; 3 uses
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.dfd, i64 8 ; 2 uses
  %i.dff = load float, ptr %i.dfe, align 4, !tbaa !92
  %i.dfg = fadd float %i.des, %i.dff
  %i.dfh = load <2 x float>, ptr %i.det, align 4, !tbaa !92
  %i.dfi = fmul float %i.dcm, %33
  %i.dfj = fmul float %i.dee, %i.dei
  %i.dfk = call float @llvm.fmuladd.f32(float %i.def, float %i.deh, float %i.dfi)
  %i.dfl = call float @llvm.fmuladd.f32(float %i.dcm, float %i.deg, float %i.dfj)
  %i.dfm = call float @llvm.fmuladd.f32(float %i.dep, float %i.dej, float %i.dfk) ; 2 uses
  %i.dfn = call float @llvm.fmuladd.f32(float %i.ded, float %i.dej, float %i.dfl) ; 2 uses
  %i.dfo = fmul float %i.ckf, %33
  %i.dfp = fmul float %i.dem, %i.dek
  %i.dfq = call float @llvm.fmuladd.f32(float %i.dem, float %i.deh, float %i.dfo)
  %i.dfr = call float @llvm.fmuladd.f32(float %i.ckf, float %i.deg, float %i.dfp)
  %i.dfs = call float @llvm.fmuladd.f32(float %i.ddz, float %i.dej, float %i.dfq) ; 2 uses
  %i.dft = call float @llvm.fmuladd.f32(float %i.dea, float %i.dej, float %i.dfr) ; 2 uses
  %34 = insertelement <2 x float> poison, float %i.dft, i64 0
  %35 = insertelement <2 x float> %34, float %i.dfs, i64 1 ; 2 uses
  %36 = fsub <2 x float> %32, %35
  %37 = insertelement <2 x float> poison, float %i.dfn, i64 0
  %i.dfu = insertelement <2 x float> %37, float %i.dfm, i64 1 ; 2 uses
  %38 = fsub <2 x float> %36, %i.dfu
  %i.dfv = fadd <2 x float> %i.dfh, %38
  store <2 x float> %i.dfv, ptr %i.det, align 4, !tbaa !92
  %i.dfw = load <2 x float>, ptr %i.dez, align 4, !tbaa !92
  %i.dfx = fadd <2 x float> %35, %i.dfw
  store <2 x float> %i.dfx, ptr %i.dez, align 4, !tbaa !92
  %i.dfy = load <2 x float>, ptr %i.dfd, align 4, !tbaa !92
  %i.dfz = fadd <2 x float> %i.dfu, %i.dfy
  store <2 x float> %i.dfz, ptr %i.dfd, align 4, !tbaa !92
  store float %i.dfg, ptr %i.dfe, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.dga = getelementptr inbounds [12 x i8], ptr %0, i64 %i.ddv ; 2 uses
  br i1 %.not.i.i42, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit55.i.i71
  %i.dgb = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dga, ptr noundef nonnull %i.dda, ptr noundef nonnull %i.m) ; 0 uses
  %i.dgc = load <3 x float>, ptr %i.m, align 16, !tbaa !92
  %i.dgd = load <3 x float>, ptr %i.k, align 16, !tbaa !92
  %i.dge = load <3 x float>, ptr %i.l, align 16, !tbaa !92
  br label %_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

bb.da:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit55.i.i71
  %i.dgf = load <3 x float>, ptr %i.dga, align 4, !tbaa !92
  %i.dgg = load <3 x float>, ptr %i.dda, align 4, !tbaa !92
  %i.dgh = fsub <3 x float> %i.dgf, %i.dgg
  br label %_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.da, %bb.cz
  %i.dgi = phi <3 x float> [ %i.dge, %bb.cz ], [ %i.ddt, %bb.da ] ; 2 uses
  %i.dgj = phi <3 x float> [ %i.dgc, %bb.cz ], [ %i.dgh, %bb.da ]
  %i.dgk = phi <3 x float> [ %i.dgd, %bb.cz ], [ %i.ddu, %bb.da ] ; 2 uses
  %i.dgl = shufflevector <3 x float> %i.dgk, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dgm = shufflevector <3 x float> %i.dgi, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dgn = fneg <3 x float> %i.dgj                ; 2 uses
  %i.dgo = shufflevector <3 x float> %i.dgn, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dgp = insertelement <8 x float> poison, float %i.dft, i64 0
  %i.dgq = insertelement <8 x float> %i.dgp, float %i.dfs, i64 1
  %i.dgr = insertelement <8 x float> %i.dgq, float %i.deo, i64 2
  %i.dgs = shufflevector <8 x float> %i.dgr, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dgt = fmul <8 x float> %i.dgs, %i.dgl
  %39 = shufflevector <2 x float> %32, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %40 = insertelement <8 x float> %39, float %31, i64 2
  %41 = shufflevector <8 x float> %40, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dgu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dgo, <8 x float> %41, <8 x float> %i.dgt)
  %i.dgv = insertelement <8 x float> poison, float %i.dfn, i64 0
  %i.dgw = insertelement <8 x float> %i.dgv, float %i.dfm, i64 1
  %i.dgx = insertelement <8 x float> %i.dgw, float %i.des, i64 2
  %i.dgy = shufflevector <8 x float> %i.dgx, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dgz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dgm, <8 x float> %i.dgy, <8 x float> %i.dgu)
  %i.dha = load <8 x float>, ptr %3, align 4, !tbaa !92
  %i.dhb = fadd <8 x float> %i.dha, %i.dgz
  store <8 x float> %i.dhb, ptr %3, align 4, !tbaa !92
  %i.dhc = extractelement <3 x float> %i.dgk, i64 2
  %i.dhd = fmul float %i.deo, %i.dhc
  %i.dhe = extractelement <3 x float> %i.dgn, i64 2
  %i.dhf = call float @llvm.fmuladd.f32(float %i.dhe, float %31, float %i.dhd)
  %i.dhg = extractelement <3 x float> %i.dgi, i64 2
  %i.dhh = call float @llvm.fmuladd.f32(float %i.dhg, float %i.des, float %i.dhf)
  %i.dhi = load float, ptr %i.cjj, align 4, !tbaa !92
  %i.dhj = fadd float %i.dhh, %i.dhi
  store float %i.dhj, ptr %i.cjj, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %bb.dp

bb.db:                                            ; preds = %.lr.ph.split.i61
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.cke, i64 4
  %i.dhl = load float, ptr %i.dhk, align 4, !tbaa !81 ; 4 uses
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.cke, i64 8
  %i.dhn = load float, ptr %i.dhm, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.dho = getelementptr inbounds nuw i8, ptr %.076220.i, i64 4
  %i.dhp = load i32, ptr %i.dho, align 4, !tbaa !90
  %i.dhq = getelementptr inbounds nuw i8, ptr %.076220.i, i64 8
  %i.dhr = load i32, ptr %i.dhq, align 4, !tbaa !90
  %i.dhs = getelementptr inbounds nuw i8, ptr %.076220.i, i64 12
  %i.dht = load i32, ptr %i.dhs, align 4, !tbaa !90
  %i.dhu = getelementptr inbounds nuw i8, ptr %.076220.i, i64 16
  %i.dhv = load i32, ptr %i.dhu, align 4, !tbaa !90 ; 2 uses
  %i.dhw = getelementptr inbounds nuw i8, ptr %.076220.i, i64 20
  %i.dhx = load i32, ptr %i.dhw, align 4, !tbaa !90 ; 2 uses
  %i.dhy = sext i32 %i.dht to i64                 ; 2 uses
  %i.dhz = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dhy ; 4 uses
  %i.dia = sext i32 %i.dhr to i64                 ; 2 uses
  %i.dib = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dia ; 4 uses
  br i1 %.not.i.i42, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.dic = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dhz, ptr noundef nonnull %i.dib, ptr noundef nonnull %i.g) ; 0 uses
  %i.did = sext i32 %i.dhv to i64                 ; 2 uses
  %i.die = getelementptr inbounds [12 x i8], ptr %0, i64 %i.did
  %i.dif = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.die, ptr noundef nonnull %i.dhz, ptr noundef nonnull %i.h) ; 0 uses
  %i.dig = sext i32 %i.dhx to i64                 ; 2 uses
  %i.dih = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dig
  %i.dii = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dih, ptr noundef nonnull %i.dhz, ptr noundef nonnull %i.i) ; 0 uses
  %i.dij = load <3 x float>, ptr %i.g, align 16, !tbaa !92
  %i.dik = load <3 x float>, ptr %i.h, align 16, !tbaa !92
  %i.dil = load <3 x float>, ptr %i.i, align 16, !tbaa !92
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit74.i.i

bb.dd:                                            ; preds = %bb.db
  %i.dim = sext i32 %i.dhv to i64                 ; 2 uses
  %i.din = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dim
  %i.dio = sext i32 %i.dhx to i64                 ; 2 uses
  %i.dip = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dio
  %i.diq = load <3 x float>, ptr %i.dhz, align 4, !tbaa !92 ; 3 uses
  %i.dir = load <3 x float>, ptr %i.dib, align 4, !tbaa !92
  %i.dis = fsub <3 x float> %i.diq, %i.dir        ; 3 uses
  %i.dit = shufflevector <3 x float> %i.dis, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.dit, ptr %i.g, align 16, !tbaa !92
  %i.diu = extractelement <3 x float> %i.dis, i64 2
  store float %i.diu, ptr %i.cjk, align 8, !tbaa !92
  %i.div = load <3 x float>, ptr %i.din, align 4, !tbaa !92
  %i.diw = fsub <3 x float> %i.div, %i.diq        ; 3 uses
  %i.dix = shufflevector <3 x float> %i.diw, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.dix, ptr %i.h, align 16, !tbaa !92
  %i.diy = extractelement <3 x float> %i.diw, i64 2
  store float %i.diy, ptr %.phi.trans.insert61.i.i46, align 8, !tbaa !92
  %i.diz = load <3 x float>, ptr %i.dip, align 4, !tbaa !92
  %i.dja = fsub <3 x float> %i.diz, %i.diq        ; 3 uses
  %i.djb = shufflevector <3 x float> %i.dja, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.djb, ptr %i.i, align 16, !tbaa !92
  %i.djc = extractelement <3 x float> %i.dja, i64 2
  store float %i.djc, ptr %.phi.trans.insert63.i.i, align 8, !tbaa !92
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit74.i.i

_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit74.i.i: ; preds = %bb.dd, %bb.dc
  %i.djd = phi i64 [ %i.dig, %bb.dc ], [ %i.dio, %bb.dd ]
  %i.dje = phi i64 [ %i.did, %bb.dc ], [ %i.dim, %bb.dd ]
  %i.djf = phi <3 x float> [ %i.dil, %bb.dc ], [ %i.dja, %bb.dd ]
  %i.djg = phi <3 x float> [ %i.dik, %bb.dc ], [ %i.diw, %bb.dd ]
  %i.djh = phi <3 x float> [ %i.dij, %bb.dc ], [ %i.dis, %bb.dd ]
  %i.dji = insertelement <3 x float> poison, float %i.ckf, i64 0
  %i.djj = shufflevector <3 x float> %i.dji, <3 x float> poison, <3 x i32> zeroinitializer
  %i.djk = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.djj, <3 x float> %i.djg, <3 x float> %i.djh)
  %i.djl = sext i32 %i.dhp to i64                 ; 2 uses
  %i.djm = getelementptr inbounds [12 x i8], ptr %1, i64 %i.djl ; 2 uses
  %i.djn = getelementptr inbounds nuw i8, ptr %i.djm, i64 4
  %i.djo = insertelement <3 x float> poison, float %i.dhl, i64 0
  %i.djp = shufflevector <3 x float> %i.djo, <3 x float> poison, <3 x i32> zeroinitializer
  %i.djq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.djp, <3 x float> %i.djf, <3 x float> %i.djk) ; 5 uses
  %i.djr = shufflevector <3 x float> %i.djq, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.djs = extractelement <3 x float> %i.djq, i64 1 ; 3 uses
  %i.djt = fmul float %i.djs, %i.djs
  %i.dju = extractelement <3 x float> %i.djq, i64 0 ; 3 uses
  %i.djv = call float @llvm.fmuladd.f32(float %i.dju, float %i.dju, float %i.djt)
  %i.djw = extractelement <3 x float> %i.djq, i64 2 ; 4 uses
  %i.djx = call noundef float @llvm.fmuladd.f32(float %i.djw, float %i.djw, float %i.djv)
  %sqrt.i.i104.i69 = call float @llvm.sqrt.f32(float %i.djx)
  %i.djy = fdiv float 1.000000e+00, %sqrt.i.i104.i69 ; 3 uses
  %i.djz = load <3 x float>, ptr %i.djm, align 4, !tbaa !92 ; 5 uses
  %i.dka = shufflevector <3 x float> %i.djz, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dkb = load float, ptr %i.djn, align 4, !tbaa !92 ; 2 uses
  %i.dkc = fmul float %i.djs, %i.dkb
  %i.dkd = extractelement <3 x float> %i.djz, i64 0
  %i.dke = call float @llvm.fmuladd.f32(float %i.dju, float %i.dkd, float %i.dkc)
  %i.dkf = extractelement <3 x float> %i.djz, i64 2 ; 3 uses
  %i.dkg = call noundef float @llvm.fmuladd.f32(float %i.djw, float %i.dkf, float %i.dke)
  %i.dkh = fmul float %i.djy, %i.dkg
  %i.dki = fneg float %i.djy
  %i.dkj = fmul float %i.dkh, %i.dki
  %i.dkk = fmul float %i.dhn, %i.djy
  %i.dkl = insertelement <3 x float> poison, float %i.dkj, i64 0
  %i.dkm = shufflevector <3 x float> %i.dkl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dkn = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dkm, <3 x float> %i.djq, <3 x float> %i.djz)
  %i.dko = insertelement <3 x float> poison, float %i.dkk, i64 0
  %i.dkp = shufflevector <3 x float> %i.dko, <3 x float> poison, <8 x i32> zeroinitializer
  %i.dkq = shufflevector <3 x float> %i.dkn, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dkr = fmul <8 x float> %i.dkp, %i.dkq        ; 3 uses
  %i.dks = fsub float 1.000000e+00, %i.ckf
  %i.dkt = fsub float %i.dks, %i.dhl              ; 2 uses
  %i.dku = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dia ; 3 uses
  %i.dkv = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dhy ; 3 uses
  %i.dkw = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dje ; 3 uses
  %i.dkx = getelementptr inbounds [12 x i8], ptr %1, i64 %i.djd ; 3 uses
  %i.dky = shufflevector <3 x float> %i.djz, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dkz = insertelement <2 x float> %i.dky, float %i.dkb, i64 1
  %i.dla = shufflevector <8 x float> %i.dkr, <8 x float> poison, <2 x i32> <i32 0, i32 1> ; 4 uses
  %i.dlb = fsub <2 x float> %i.dkz, %i.dla
  %i.dlc = load <2 x float>, ptr %i.dku, align 4, !tbaa !92
  %i.dld = fadd <2 x float> %i.dlc, %i.dlb
  store <2 x float> %i.dld, ptr %i.dku, align 4, !tbaa !92
  %i.dle = load <2 x float>, ptr %i.dkv, align 4, !tbaa !92
  %i.dlf = insertelement <2 x float> poison, float %i.dkt, i64 0
  %i.dlg = shufflevector <2 x float> %i.dlf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dlh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dlg, <2 x float> %i.dla, <2 x float> %i.dle)
  store <2 x float> %i.dlh, ptr %i.dkv, align 4, !tbaa !92
  %i.dli = load <2 x float>, ptr %i.dkw, align 4, !tbaa !92
  %i.dlj = insertelement <2 x float> poison, float %i.ckf, i64 0
  %i.dlk = shufflevector <2 x float> %i.dlj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dll = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dlk, <2 x float> %i.dla, <2 x float> %i.dli)
  store <2 x float> %i.dll, ptr %i.dkw, align 4, !tbaa !92
  %i.dlm = load <2 x float>, ptr %i.dkx, align 4, !tbaa !92
  %i.dln = insertelement <2 x float> poison, float %i.dhl, i64 0
  %i.dlo = shufflevector <2 x float> %i.dln, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dlp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dlo, <2 x float> %i.dla, <2 x float> %i.dlm)
  store <2 x float> %i.dlp, ptr %i.dkx, align 4, !tbaa !92
  %i.dlq = extractelement <8 x float> %i.dkr, i64 2 ; 5 uses
  %i.dlr = fsub float %i.dkf, %i.dlq
  %i.dls = getelementptr inbounds nuw i8, ptr %i.dku, i64 8 ; 2 uses
  %i.dlt = load float, ptr %i.dls, align 4, !tbaa !92
  %i.dlu = fadd float %i.dlr, %i.dlt
  store float %i.dlu, ptr %i.dls, align 4, !tbaa !92
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.dkv, i64 8 ; 2 uses
  %i.dlw = load float, ptr %i.dlv, align 4, !tbaa !92
  %i.dlx = call float @llvm.fmuladd.f32(float %i.dkt, float %i.dlq, float %i.dlw)
  store float %i.dlx, ptr %i.dlv, align 4, !tbaa !92
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dkw, i64 8 ; 2 uses
  %i.dlz = load float, ptr %i.dly, align 4, !tbaa !92
  %i.dma = call float @llvm.fmuladd.f32(float %i.ckf, float %i.dlq, float %i.dlz)
  store float %i.dma, ptr %i.dly, align 4, !tbaa !92
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.dkx, i64 8 ; 2 uses
  %i.dmc = load float, ptr %i.dmb, align 4, !tbaa !92
  %i.dmd = call float @llvm.fmuladd.f32(float %i.dhl, float %i.dlq, float %i.dmc)
  store float %i.dmd, ptr %i.dmb, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.dme = getelementptr inbounds [12 x i8], ptr %0, i64 %i.djl ; 2 uses
  br i1 %.not.i.i42, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit74.i.i
  %i.dmf = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dme, ptr noundef nonnull %i.dib, ptr noundef nonnull %i.j) ; 0 uses
  %i.dmg = load <3 x float>, ptr %i.j, align 16, !tbaa !92
  br label %_ZN3gmxL15spread_vsite4FDILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

bb.df:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit74.i.i
  %i.dmh = load <3 x float>, ptr %i.dme, align 4, !tbaa !92
  %i.dmi = load <3 x float>, ptr %i.dib, align 4, !tbaa !92
  %i.dmj = fsub <3 x float> %i.dmh, %i.dmi
  br label %_ZN3gmxL15spread_vsite4FDILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL15spread_vsite4FDILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.df, %bb.de
  %i.dmk = phi <3 x float> [ %i.dmg, %bb.de ], [ %i.dmj, %bb.df ]
  %i.dml = fneg <3 x float> %i.dmk                ; 2 uses
  %i.dmm = shufflevector <3 x float> %i.dml, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dmn = fmul <8 x float> %i.djr, %i.dkr
  %i.dmo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dmm, <8 x float> %i.dka, <8 x float> %i.dmn)
  %i.dmp = load <8 x float>, ptr %3, align 4, !tbaa !92
  %i.dmq = fadd <8 x float> %i.dmp, %i.dmo
  store <8 x float> %i.dmq, ptr %3, align 4, !tbaa !92
  %i.dmr = fmul float %i.djw, %i.dlq
  %i.dms = extractelement <3 x float> %i.dml, i64 2
  %i.dmt = call float @llvm.fmuladd.f32(float %i.dms, float %i.dkf, float %i.dmr)
  %i.dmu = load float, ptr %i.cjj, align 4, !tbaa !92
  %i.dmv = fadd float %i.dmt, %i.dmu
  store float %i.dmv, ptr %i.cjj, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %bb.dp

bb.dg:                                            ; preds = %.lr.ph.split.i61
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.cke, i64 4
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.cke, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.dmy = getelementptr inbounds nuw i8, ptr %.076220.i, i64 4
  %i.dmz = load i32, ptr %i.dmy, align 4, !tbaa !90
  %i.dna = getelementptr inbounds nuw i8, ptr %.076220.i, i64 8
  %i.dnb = load i32, ptr %i.dna, align 4, !tbaa !90
  %i.dnc = getelementptr inbounds nuw i8, ptr %.076220.i, i64 12
  %i.dnd = load i32, ptr %i.dnc, align 4, !tbaa !90
  %i.dne = getelementptr inbounds nuw i8, ptr %.076220.i, i64 16
  %i.dnf = load i32, ptr %i.dne, align 4, !tbaa !90 ; 2 uses
  %i.dng = getelementptr inbounds nuw i8, ptr %.076220.i, i64 20
  %i.dnh = load i32, ptr %i.dng, align 4, !tbaa !90 ; 2 uses
  %i.dni = sext i32 %i.dmz to i64                 ; 2 uses
  %i.dnj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dni ; 3 uses
  %42 = getelementptr inbounds nuw i8, ptr %i.dnj, i64 4
  %43 = getelementptr inbounds nuw i8, ptr %i.dnj, i64 8
  %i.dnk = load float, ptr %i.dmx, align 4, !tbaa !81
  %i.dnl = load float, ptr %i.dmw, align 4, !tbaa !81 ; 8 uses
  %44 = load float, ptr %43, align 4, !tbaa !92   ; 5 uses
  %45 = load float, ptr %42, align 4, !tbaa !92   ; 5 uses
  %i.dnm = load float, ptr %i.dnj, align 4, !tbaa !92 ; 5 uses
  %i.dnn = sext i32 %i.dnd to i64                 ; 2 uses
  %i.dno = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dnn ; 3 uses
  %i.dnp = sext i32 %i.dnb to i64                 ; 2 uses
  %i.dnq = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dnp ; 8 uses
  br i1 %.not.i.i42, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.dnr = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dno, ptr noundef nonnull %i.dnq, ptr noundef nonnull %i.c) ; 0 uses
  %i.dns = sext i32 %i.dnf to i64                 ; 2 uses
  %i.dnt = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dns
  %i.dnu = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dnt, ptr noundef nonnull %i.dnq, ptr noundef nonnull %i.d) ; 0 uses
  %i.dnv = sext i32 %i.dnh to i64                 ; 2 uses
  %i.dnw = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dnv
  %i.dnx = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dnw, ptr noundef nonnull %i.dnq, ptr noundef nonnull %i.e) ; 0 uses
  %.pre172.i.i = load float, ptr %.phi.trans.insert171.i.i, align 8, !tbaa !92
  %.pre177.i.i = load float, ptr %.phi.trans.insert176.i.i, align 8, !tbaa !92
  %.pre182.i.i = load float, ptr %.phi.trans.insert181.i.i, align 8, !tbaa !92
  %.pre170.i.i = load float, ptr %.phi.trans.insert.i107.i43, align 4, !tbaa !92
  %.pre.i106.i62 = load float, ptr %i.d, align 8, !tbaa !92
  %.pre175.i.i = load float, ptr %.phi.trans.insert174.i.i, align 4, !tbaa !92
  %.pre173.i.i = load float, ptr %i.e, align 8, !tbaa !92
  %.pre180.i.i = load float, ptr %.phi.trans.insert179.i.i, align 4, !tbaa !92
  %.pre178.i.i = load float, ptr %i.c, align 8, !tbaa !92
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit112.i.i

bb.di:                                            ; preds = %bb.dg
  %i.dny = getelementptr inbounds nuw i8, ptr %i.dno, i64 8
  %i.dnz = getelementptr inbounds nuw i8, ptr %i.dnq, i64 8
  %i.doa = sext i32 %i.dnf to i64                 ; 2 uses
  %i.dob = getelementptr inbounds [12 x i8], ptr %0, i64 %i.doa ; 2 uses
  %i.doc = getelementptr inbounds nuw i8, ptr %i.dob, i64 8
  %i.dod = load float, ptr %i.doc, align 4, !tbaa !92
  %i.doe = sext i32 %i.dnh to i64                 ; 2 uses
  %i.dof = getelementptr inbounds [12 x i8], ptr %0, i64 %i.doe ; 2 uses
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dof, i64 8
  %i.doh = load float, ptr %i.dog, align 4, !tbaa !92
  %i.doi = load float, ptr %i.dny, align 4, !tbaa !92
  %i.doj = load float, ptr %i.dnz, align 4, !tbaa !92 ; 3 uses
  %i.dok = fsub float %i.doh, %i.doj              ; 2 uses
  %i.dol = fsub float %i.doi, %i.doj              ; 2 uses
  %i.dom = load <2 x float>, ptr %i.dno, align 4, !tbaa !92
  %i.don = load <2 x float>, ptr %i.dnq, align 4, !tbaa !92 ; 3 uses
  %i.doo = fsub <2 x float> %i.dom, %i.don        ; 3 uses
  store <2 x float> %i.doo, ptr %i.c, align 8, !tbaa !92
  store float %i.dol, ptr %.phi.trans.insert181.i.i, align 8, !tbaa !92
  %i.dop = fsub float %i.dod, %i.doj              ; 2 uses
  %i.doq = load <2 x float>, ptr %i.dob, align 4, !tbaa !92
  %i.dor = fsub <2 x float> %i.doq, %i.don        ; 3 uses
  store <2 x float> %i.dor, ptr %i.d, align 8, !tbaa !92
  store float %i.dop, ptr %.phi.trans.insert171.i.i, align 8, !tbaa !92
  %i.dos = load <2 x float>, ptr %i.dof, align 4, !tbaa !92
  %i.dot = fsub <2 x float> %i.dos, %i.don        ; 3 uses
  store <2 x float> %i.dot, ptr %i.e, align 8, !tbaa !92
  store float %i.dok, ptr %.phi.trans.insert176.i.i, align 8, !tbaa !92
  %i.dou = extractelement <2 x float> %i.doo, i64 0
  %i.dov = extractelement <2 x float> %i.doo, i64 1
  %i.dow = extractelement <2 x float> %i.dor, i64 0
  %i.dox = extractelement <2 x float> %i.dor, i64 1
  %i.doy = extractelement <2 x float> %i.dot, i64 0
  %i.doz = extractelement <2 x float> %i.dot, i64 1
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit112.i.i

_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit112.i.i: ; preds = %bb.di, %bb.dh
  %i.dpa = phi float [ %.pre182.i.i, %bb.dh ], [ %i.dol, %bb.di ] ; 2 uses
  %i.dpb = phi float [ %.pre180.i.i, %bb.dh ], [ %i.dov, %bb.di ] ; 2 uses
  %i.dpc = phi float [ %.pre178.i.i, %bb.dh ], [ %i.dou, %bb.di ] ; 2 uses
  %i.dpd = phi float [ %.pre177.i.i, %bb.dh ], [ %i.dok, %bb.di ]
  %i.dpe = phi float [ %.pre175.i.i, %bb.dh ], [ %i.doz, %bb.di ]
  %i.dpf = phi float [ %.pre173.i.i, %bb.dh ], [ %i.doy, %bb.di ]
  %i.dpg = phi float [ %.pre172.i.i, %bb.dh ], [ %i.dop, %bb.di ]
  %i.dph = phi float [ %.pre170.i.i, %bb.dh ], [ %i.dox, %bb.di ]
  %i.dpi = phi float [ %.pre.i106.i62, %bb.dh ], [ %i.dow, %bb.di ]
  %i.dpj = phi i64 [ %i.dnv, %bb.dh ], [ %i.doe, %bb.di ]
  %i.dpk = phi i64 [ %i.dns, %bb.dh ], [ %i.doa, %bb.di ]
  %i.dpl = fmul float %i.ckf, %i.dpi              ; 2 uses
  %i.dpm = fmul float %i.ckf, %i.dph              ; 2 uses
  %i.dpn = fmul float %i.ckf, %i.dpg              ; 2 uses
  %i.dpo = fmul float %i.dnl, %i.dpf              ; 2 uses
  %i.dpp = fmul float %i.dnl, %i.dpe              ; 2 uses
  %i.dpq = fmul float %i.dnl, %i.dpd              ; 2 uses
  %i.dpr = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dnp ; 3 uses
  %i.dps = getelementptr inbounds nuw i8, ptr %i.dpr, i64 8 ; 2 uses
  %i.dpt = load float, ptr %i.dps, align 4, !tbaa !92
  %i.dpu = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dnn ; 3 uses
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dpu, i64 8 ; 2 uses
  %i.dpw = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dpk ; 3 uses
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dpw, i64 8 ; 2 uses
  %i.dpy = fneg float %i.dnl                      ; 3 uses
  %i.dpz = load <2 x float>, ptr %i.dpr, align 4, !tbaa !92
  %i.dqa = fneg float %i.ckf                      ; 3 uses
  %i.dqb = fsub float %i.dpo, %i.dpl              ; 3 uses
  %i.dqc = fsub float %i.dpq, %i.dpn              ; 3 uses
  %i.dqd = fsub float %i.dpp, %i.dpm              ; 3 uses
  %i.dqe = fneg float %i.dqc                      ; 2 uses
  %i.dqf = fneg float %i.dqd                      ; 2 uses
  %i.dqg = fneg float %i.dqb                      ; 2 uses
  %i.dqh = fsub float %i.dpn, %i.dpa              ; 6 uses
  %i.dqi = fsub float %i.dpm, %i.dpb              ; 6 uses
  %i.dqj = fsub float %i.dpl, %i.dpc              ; 6 uses
  %i.dqk = fsub float %i.dpo, %i.dpc              ; 6 uses
  %i.dql = fsub float %i.dpq, %i.dpa              ; 6 uses
  %i.dqm = fsub float %i.dpp, %i.dpb              ; 6 uses
  %i.dqn = fneg float %i.dqm
  %i.dqo = fneg float %i.dqk
  %i.dqp = fneg float %i.dql
  %i.dqq = fmul float %i.dqh, %i.dqn
  %i.dqr = fmul float %i.dqi, %i.dqo
  %i.dqs = fmul float %i.dqj, %i.dqp
  %i.dqt = call float @llvm.fmuladd.f32(float %i.dqi, float %i.dql, float %i.dqq) ; 12 uses
  %i.dqu = call float @llvm.fmuladd.f32(float %i.dqj, float %i.dqm, float %i.dqr) ; 12 uses
  %i.dqv = call float @llvm.fmuladd.f32(float %i.dqh, float %i.dqk, float %i.dqs) ; 12 uses
  %i.dqw = fmul float %i.dqv, %i.dqv
  %i.dqx = call float @llvm.fmuladd.f32(float %i.dqt, float %i.dqt, float %i.dqw)
  %i.dqy = call noundef float @llvm.fmuladd.f32(float %i.dqu, float %i.dqu, float %i.dqx)
  %sqrt.i.i108.i63 = call float @llvm.sqrt.f32(float %i.dqy)
  %i.dqz = fdiv float 1.000000e+00, %sqrt.i.i108.i63 ; 3 uses
  %i.dra = fmul float %i.dqz, %i.dqz              ; 5 uses
  %i.drb = fmul float %i.dqv, %i.dqg
  %i.drc = call float @llvm.fmuladd.f32(float %i.dqt, float %i.dqd, float %i.drb)
  %46 = fmul float %i.drc, %i.dra                 ; 3 uses
  %i.drd = fneg float %i.dqt                      ; 6 uses
  %i.dre = fmul float %i.dqm, %i.drd
  %i.drf = call float @llvm.fmuladd.f32(float %i.dqk, float %i.dqv, float %i.dre)
  %i.drg = fmul float %i.ckf, %i.dra              ; 3 uses
  %i.drh = fmul float %i.drf, %i.drg              ; 2 uses
  %47 = fneg float %i.dqj
  %i.dri = fmul float %i.dqv, %47
  %48 = call float @llvm.fmuladd.f32(float %i.dqt, float %i.dqi, float %i.dri)
  %i.drj = fmul float %i.dnl, %i.dra              ; 3 uses
  %i.drk = fmul float %48, %i.drj                 ; 2 uses
  %i.drl = fmul float %i.dnk, %i.dqz              ; 3 uses
  %i.drm = fmul float %45, %i.drl                 ; 9 uses
  %i.drn = fmul float %i.dnm, %i.drl              ; 9 uses
  %i.dro = fmul float %i.dqt, %i.dqe
  %i.drp = fmul float %i.dqu, %i.dqf
  %i.drq = call float @llvm.fmuladd.f32(float %i.dqu, float %i.dqb, float %i.dro)
  %i.drr = call float @llvm.fmuladd.f32(float %i.dqv, float %i.dqc, float %i.drp)
  %i.drs = fmul float %i.drq, %i.dra              ; 3 uses
  %i.drt = fmul float %i.drr, %i.dra              ; 3 uses
  %i.dru = fmul float %i.drt, %i.drd
  %i.drv = fneg float %i.dqu                      ; 6 uses
  %i.drw = fneg float %i.dqv                      ; 6 uses
  %i.drx = fmul float %i.drs, %i.drw
  %i.dry = call float @llvm.fmuladd.f32(float %i.drv, float %i.drs, float %i.dqb)
  %i.drz = call float @llvm.fmuladd.f32(float %i.drv, float %i.drt, float %i.dqf)
  %i.dsa = call float @llvm.fmuladd.f32(float %i.drd, float %46, float %i.dqd)
  %i.dsb = call float @llvm.fmuladd.f32(float %i.drd, float %i.drs, float %i.dqe)
  %i.dsc = call float @llvm.fmuladd.f32(float %i.drw, float %46, float %i.dqg)
  %i.dsd = call float @llvm.fmuladd.f32(float %i.drw, float %i.drt, float %i.dqc)
  %i.dse = fmul float %i.drm, %i.dsc
  %i.dsf = fmul float %i.drm, %i.drx
  %i.dsg = fmul float %i.drm, %i.dsd
  %i.dsh = call float @llvm.fmuladd.f32(float %i.dsa, float %i.drn, float %i.dse)
  %i.dsi = call float @llvm.fmuladd.f32(float %i.dsb, float %i.drn, float %i.dsf)
  %i.dsj = call float @llvm.fmuladd.f32(float %i.dru, float %i.drn, float %i.dsg)
  %i.dsk = fmul float %46, %i.drv
  %i.dsl = fmul float %i.dqk, %i.drv
  %49 = fmul float %i.dql, %i.drw
  %i.dsm = call float @llvm.fmuladd.f32(float %i.dql, float %i.dqt, float %i.dsl)
  %50 = call float @llvm.fmuladd.f32(float %i.dqm, float %i.dqu, float %49)
  %i.dsn = fmul float %i.dsm, %i.drg              ; 2 uses
  %51 = fmul float %50, %i.drg                    ; 2 uses
  %i.dso = fneg float %i.dsn                      ; 2 uses
  %i.dsp = fneg float %51                         ; 2 uses
  %52 = fmul float %i.dqu, %i.dso
  %i.dsq = fmul float %i.dqu, %i.dsp
  %i.dsr = fmul float %i.drh, %i.drv
  %53 = fneg float %i.dqh
  %54 = fneg float %i.dqi
  %i.dss = fmul float %i.dqt, %53
  %i.dst = fmul float %i.dqu, %54
  %55 = call float @llvm.fmuladd.f32(float %i.dqu, float %i.dqj, float %i.dss)
  %56 = call float @llvm.fmuladd.f32(float %i.dqv, float %i.dqh, float %i.dst)
  %i.dsu = fmul float %55, %i.drj                 ; 2 uses
  %i.dsv = fmul float %56, %i.drj                 ; 2 uses
  %57 = fneg float %i.dsu                         ; 2 uses
  %58 = fneg float %i.dsv                         ; 2 uses
  %i.dsw = fmul float %i.dqu, %57
  %i.dsx = fmul float %i.dqu, %58
  %i.dsy = fmul float %i.drk, %i.drv
  %i.dsz = fmul float %44, %i.drl                 ; 9 uses
  %i.dta = call float @llvm.fmuladd.f32(float %i.dsk, float %i.dsz, float %i.dsh) ; 5 uses
  %i.dtb = call float @llvm.fmuladd.f32(float %i.dry, float %i.dsz, float %i.dsi) ; 5 uses
  %i.dtc = call float @llvm.fmuladd.f32(float %i.drz, float %i.dsz, float %i.dsj) ; 5 uses
  %i.dtd = fmul float %51, %i.drd
  %i.dte = fmul float %i.dqv, %i.dsp
  %i.dtf = fmul float %i.dqt, %i.dso
  %i.dtg = fmul float %i.dsn, %i.drw
  %i.dth = call float @llvm.fmuladd.f32(float %i.dqa, float %i.dqk, float %52)
  %i.dti = call float @llvm.fmuladd.f32(float %i.ckf, float %i.dqm, float %i.dsq)
  %i.dtj = fneg float %i.drh                      ; 2 uses
  %i.dtk = fmul float %i.dqt, %i.dtj
  %i.dtl = call float @llvm.fmuladd.f32(float %i.dqa, float %i.dqm, float %i.dtk)
  %i.dtm = call float @llvm.fmuladd.f32(float %i.ckf, float %i.dql, float %i.dtf)
  %i.dtn = fmul float %i.dqv, %i.dtj
  %i.dto = call float @llvm.fmuladd.f32(float %i.ckf, float %i.dqk, float %i.dtn)
  %i.dtp = call float @llvm.fmuladd.f32(float %i.dqa, float %i.dql, float %i.dte)
  %i.dtq = fmul float %i.drm, %i.dto
  %i.dtr = fmul float %i.drm, %i.dtg
  %i.dts = fmul float %i.drm, %i.dtp
  %i.dtt = call float @llvm.fmuladd.f32(float %i.dtl, float %i.drn, float %i.dtq)
  %i.dtu = call float @llvm.fmuladd.f32(float %i.dtm, float %i.drn, float %i.dtr)
  %i.dtv = call float @llvm.fmuladd.f32(float %i.dtd, float %i.drn, float %i.dts)
  %i.dtw = call float @llvm.fmuladd.f32(float %i.dsr, float %i.dsz, float %i.dtt) ; 5 uses
  %i.dtx = call float @llvm.fmuladd.f32(float %i.dth, float %i.dsz, float %i.dtu) ; 5 uses
  %i.dty = call float @llvm.fmuladd.f32(float %i.dti, float %i.dsz, float %i.dtv) ; 5 uses
  %i.dtz = fmul float %i.dsv, %i.drd
  %i.dua = fmul float %i.dqv, %58
  %i.dub = fmul float %i.dqt, %57
  %i.duc = fmul float %i.dsu, %i.drw
  %i.dud = call float @llvm.fmuladd.f32(float %i.dnl, float %i.dqj, float %i.dsw)
  %i.due = call float @llvm.fmuladd.f32(float %i.dpy, float %i.dqi, float %i.dsx)
  %i.duf = fneg float %i.drk                      ; 2 uses
  %i.dug = fmul float %i.dqt, %i.duf
  %i.duh = call float @llvm.fmuladd.f32(float %i.dnl, float %i.dqi, float %i.dug)
  %i.dui = call float @llvm.fmuladd.f32(float %i.dpy, float %i.dqh, float %i.dub)
  %i.duj = fmul float %i.dqv, %i.duf
  %i.duk = call float @llvm.fmuladd.f32(float %i.dpy, float %i.dqj, float %i.duj)
  %i.dul = call float @llvm.fmuladd.f32(float %i.dnl, float %i.dqh, float %i.dua)
  %i.dum = fmul float %i.drm, %i.duk
  %i.dun = fmul float %i.drm, %i.duc
  %i.duo = fmul float %i.drm, %i.dul
  %i.dup = call float @llvm.fmuladd.f32(float %i.duh, float %i.drn, float %i.dum)
  %i.duq = call float @llvm.fmuladd.f32(float %i.dui, float %i.drn, float %i.dun)
  %i.dur = call float @llvm.fmuladd.f32(float %i.dtz, float %i.drn, float %i.duo)
  %i.dus = call float @llvm.fmuladd.f32(float %i.dsy, float %i.dsz, float %i.dup) ; 5 uses
  %i.dut = call float @llvm.fmuladd.f32(float %i.dud, float %i.dsz, float %i.duq) ; 5 uses
  %i.duu = call float @llvm.fmuladd.f32(float %i.due, float %i.dsz, float %i.dur) ; 5 uses
  %i.duv = fsub float %45, %i.dtb
  %i.duw = fsub float %i.dnm, %i.dtc
  %i.dux = fsub float %i.duv, %i.dtx
  %i.duy = fsub float %i.duw, %i.dty
  %i.duz = fsub float %i.dux, %i.dut
  %i.dva = fsub float %i.duy, %i.duu
  %i.dvb = insertelement <2 x float> poison, float %i.dva, i64 0
  %i.dvc = insertelement <2 x float> %i.dvb, float %i.duz, i64 1
  %i.dvd = fadd <2 x float> %i.dpz, %i.dvc
  store <2 x float> %i.dvd, ptr %i.dpr, align 4, !tbaa !92
  %i.dve = fsub float %44, %i.dta
  %i.dvf = fsub float %i.dve, %i.dtw
  %i.dvg = fsub float %i.dvf, %i.dus
  %i.dvh = fadd float %i.dpt, %i.dvg
  store float %i.dvh, ptr %i.dps, align 4, !tbaa !92
  %i.dvi = load <2 x float>, ptr %i.dpu, align 4, !tbaa !92
  %i.dvj = insertelement <2 x float> poison, float %i.dtc, i64 0
  %i.dvk = insertelement <2 x float> %i.dvj, float %i.dtb, i64 1
  %i.dvl = fadd <2 x float> %i.dvi, %i.dvk
  %i.dvm = load float, ptr %i.dpv, align 4, !tbaa !92
  %i.dvn = fadd float %i.dvm, %i.dta
  store <2 x float> %i.dvl, ptr %i.dpu, align 4, !tbaa !92
  store float %i.dvn, ptr %i.dpv, align 4, !tbaa !92
  %i.dvo = load <2 x float>, ptr %i.dpw, align 4, !tbaa !92
  %i.dvp = insertelement <2 x float> poison, float %i.dty, i64 0
  %i.dvq = insertelement <2 x float> %i.dvp, float %i.dtx, i64 1
  %i.dvr = fadd <2 x float> %i.dvo, %i.dvq
  %i.dvs = load float, ptr %i.dpx, align 4, !tbaa !92
  %i.dvt = fadd float %i.dtw, %i.dvs
  store <2 x float> %i.dvr, ptr %i.dpw, align 4, !tbaa !92
  store float %i.dvt, ptr %i.dpx, align 4, !tbaa !92
  %i.dvu = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dpj ; 4 uses
  %i.dvv = load float, ptr %i.dvu, align 4, !tbaa !92
  %i.dvw = fadd float %i.duu, %i.dvv
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvu, i64 4 ; 2 uses
  %i.dvy = load float, ptr %i.dvx, align 4, !tbaa !92
  %i.dvz = fadd float %i.dut, %i.dvy
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.dvu, i64 8 ; 2 uses
  %i.dwb = load float, ptr %i.dwa, align 4, !tbaa !92
  %i.dwc = fadd float %i.dus, %i.dwb
  store float %i.dvw, ptr %i.dvu, align 4, !tbaa !92
  store float %i.dvz, ptr %i.dvx, align 4, !tbaa !92
  store float %i.dwc, ptr %i.dwa, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.dwd = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dni ; 3 uses
  br i1 %.not.i.i42, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit112.i.i
  %i.dwe = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dwd, ptr noundef nonnull %i.dnq, ptr noundef nonnull %i.f) ; 0 uses
  %.pre187.i.i = load float, ptr %.phi.trans.insert186.i.i, align 8, !tbaa !92
  %i.dwf = load <2 x float>, ptr %i.f, align 8, !tbaa !92
  br label %_ZN3gmxL16spread_vsite4FDNILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

bb.dk:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit112.i.i
  %i.dwg = getelementptr inbounds nuw i8, ptr %i.dwd, i64 8
  %i.dwh = getelementptr inbounds nuw i8, ptr %i.dnq, i64 8
  %i.dwi = load float, ptr %i.dwg, align 4, !tbaa !92
  %i.dwj = load float, ptr %i.dwh, align 4, !tbaa !92
  %i.dwk = load <2 x float>, ptr %i.dwd, align 4, !tbaa !92
  %i.dwl = load <2 x float>, ptr %i.dnq, align 4, !tbaa !92
  %i.dwm = fsub <2 x float> %i.dwk, %i.dwl
  %i.dwn = fsub float %i.dwi, %i.dwj
  br label %_ZN3gmxL16spread_vsite4FDNILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL16spread_vsite4FDNILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.dk, %bb.dj
  %i.dwo = phi float [ %.pre187.i.i, %bb.dj ], [ %i.dwn, %bb.dk ]
  %i.dwp = phi <2 x float> [ %i.dwf, %bb.dj ], [ %i.dwm, %bb.dk ] ; 2 uses
  %59 = extractelement <2 x float> %i.dwp, i64 0
  %60 = fneg float %59                            ; 3 uses
  %61 = extractelement <2 x float> %i.dwp, i64 1
  %62 = fneg float %61                            ; 3 uses
  %63 = fneg float %i.dwo                         ; 3 uses
  %64 = load float, ptr %.phi.trans.insert181.i.i, align 8, !tbaa !92 ; 3 uses
  %65 = load float, ptr %.phi.trans.insert179.i.i, align 4, !tbaa !92 ; 3 uses
  %66 = load float, ptr %i.c, align 8, !tbaa !92  ; 3 uses
  %67 = load float, ptr %.phi.trans.insert171.i.i, align 8, !tbaa !92 ; 3 uses
  %68 = load float, ptr %.phi.trans.insert.i107.i43, align 4, !tbaa !92 ; 3 uses
  %69 = load float, ptr %i.d, align 8, !tbaa !92  ; 3 uses
  %70 = load float, ptr %.phi.trans.insert176.i.i, align 8, !tbaa !92 ; 3 uses
  %71 = load float, ptr %.phi.trans.insert174.i.i, align 4, !tbaa !92 ; 3 uses
  %72 = load float, ptr %i.e, align 8, !tbaa !92  ; 3 uses
  %73 = fmul float %i.dtb, %64
  %74 = fmul float %i.dtc, %64
  %75 = fmul float %i.dta, %65
  %76 = fmul float %i.dtb, %65
  %77 = fmul float %i.dtc, %65
  %78 = fmul float %i.dta, %66
  %79 = fmul float %i.dtb, %66
  %80 = fmul float %i.dtc, %66
  %81 = call float @llvm.fmuladd.f32(float %63, float %45, float %73)
  %82 = call float @llvm.fmuladd.f32(float %63, float %i.dnm, float %74)
  %83 = call float @llvm.fmuladd.f32(float %62, float %44, float %75)
  %84 = call float @llvm.fmuladd.f32(float %62, float %45, float %76)
  %85 = call float @llvm.fmuladd.f32(float %62, float %i.dnm, float %77)
  %86 = call float @llvm.fmuladd.f32(float %60, float %44, float %78)
  %87 = call float @llvm.fmuladd.f32(float %60, float %45, float %79)
  %88 = call float @llvm.fmuladd.f32(float %60, float %i.dnm, float %80)
  %89 = call float @llvm.fmuladd.f32(float %67, float %i.dtx, float %81)
  %90 = call float @llvm.fmuladd.f32(float %67, float %i.dty, float %82)
  %91 = call float @llvm.fmuladd.f32(float %68, float %i.dtw, float %83)
  %92 = call float @llvm.fmuladd.f32(float %68, float %i.dtx, float %84)
  %93 = call float @llvm.fmuladd.f32(float %68, float %i.dty, float %85)
  %94 = call float @llvm.fmuladd.f32(float %69, float %i.dtw, float %86)
  %95 = call float @llvm.fmuladd.f32(float %69, float %i.dtx, float %87)
  %96 = call float @llvm.fmuladd.f32(float %69, float %i.dty, float %88)
  %97 = call float @llvm.fmuladd.f32(float %70, float %i.dut, float %89)
  %98 = call float @llvm.fmuladd.f32(float %70, float %i.duu, float %90)
  %99 = call float @llvm.fmuladd.f32(float %71, float %i.dus, float %91)
  %100 = call float @llvm.fmuladd.f32(float %71, float %i.dut, float %92)
  %101 = call float @llvm.fmuladd.f32(float %71, float %i.duu, float %93)
  %102 = call float @llvm.fmuladd.f32(float %72, float %i.dus, float %94)
  %103 = call float @llvm.fmuladd.f32(float %72, float %i.dut, float %95)
  %104 = call float @llvm.fmuladd.f32(float %72, float %i.duu, float %96)
  %i.dwq = load <8 x float>, ptr %3, align 4, !tbaa !92
  %105 = insertelement <8 x float> poison, float %104, i64 0
  %106 = insertelement <8 x float> %105, float %103, i64 1
  %107 = insertelement <8 x float> %106, float %102, i64 2
  %108 = insertelement <8 x float> %107, float %101, i64 3
  %109 = insertelement <8 x float> %108, float %100, i64 4
  %110 = insertelement <8 x float> %109, float %99, i64 5
  %111 = insertelement <8 x float> %110, float %98, i64 6
  %112 = insertelement <8 x float> %111, float %97, i64 7
  %113 = fadd <8 x float> %i.dwq, %112
  store <8 x float> %113, ptr %3, align 4, !tbaa !92
  %114 = fmul float %i.dta, %64
  %i.dwr = call float @llvm.fmuladd.f32(float %63, float %44, float %114)
  %115 = call float @llvm.fmuladd.f32(float %67, float %i.dtw, float %i.dwr)
  %i.dws = call float @llvm.fmuladd.f32(float %70, float %i.dus, float %115)
  %i.dwt = load float, ptr %i.cjj, align 4, !tbaa !92
  %i.dwu = fadd float %i.dws, %i.dwt
  store float %i.dwu, ptr %i.cjj, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.dp

bb.dl:                                            ; preds = %.lr.ph.split.i61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.dwv = load i32, ptr %.076220.i, align 4, !tbaa !90
  %i.dww = sext i32 %i.dwv to i64
  %i.dwx = getelementptr inbounds [48 x i8], ptr %.0.val1, i64 %i.dww
  %i.dwy = load i32, ptr %i.dwx, align 4, !tbaa !81 ; 2 uses
  %i.dwz = mul nsw i32 %i.dwy, 3                  ; 3 uses
  %i.dxa = getelementptr inbounds nuw i8, ptr %.076220.i, i64 4
  %i.dxb = load i32, ptr %i.dxa, align 4, !tbaa !90
  %i.dxc = sext i32 %i.dxb to i64                 ; 2 uses
  %i.dxd = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dxc ; 2 uses
  %i.dxe = load <2 x float>, ptr %i.dxd, align 4, !tbaa !92
  store <2 x float> %i.dxe, ptr %i.a, align 8, !tbaa !92
  %i.dxf = getelementptr inbounds nuw i8, ptr %i.dxd, i64 8
  %i.dxg = load float, ptr %i.dxf, align 4, !tbaa !92
  store float %i.dxg, ptr %i.cji, align 8, !tbaa !92
  %i.dxh = icmp sgt i32 %i.dwy, 0
  br i1 %i.dxh, label %.lr.ph.i.i96, label %_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE2EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i

.lr.ph.i.i96:                                     ; preds = %bb.dl
  %i.dxi = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dxc ; 3 uses
  %i.dxj = getelementptr inbounds nuw i8, ptr %i.dxi, i64 8 ; 2 uses
  br i1 %.not.i.i42, label %.lr.ph.split.us.preheader.i.i100, label %.lr.ph.split.i.i97

.lr.ph.split.us.preheader.i.i100:                 ; preds = %.lr.ph.i.i96
  %i.dxk = zext nneg i32 %i.dwz to i64
  br label %.lr.ph.split.us.i.i101

.lr.ph.split.us.i.i101:                           ; preds = %.lr.ph.split.us.i.i101, %.lr.ph.split.us.preheader.i.i100
  %indvars.iv9.i.i102 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i100 ], [ %indvars.iv.next10.i.i103, %.lr.ph.split.us.i.i101 ] ; 2 uses
  %i.dxl = getelementptr inbounds nuw [4 x i8], ptr %.076220.i, i64 %indvars.iv9.i.i102 ; 2 uses
  %i.dxm = getelementptr inbounds nuw i8, ptr %i.dxl, i64 8
  %i.dxn = load i32, ptr %i.dxm, align 4, !tbaa !90
  %i.dxo = load i32, ptr %i.dxl, align 4, !tbaa !90
  %i.dxp = sext i32 %i.dxo to i64
  %i.dxq = getelementptr inbounds [48 x i8], ptr %.0.val1, i64 %i.dxp
  %i.dxr = getelementptr inbounds nuw i8, ptr %i.dxq, i64 4
  %i.dxs = load float, ptr %i.dxr, align 4, !tbaa !81 ; 2 uses
  %i.dxt = load float, ptr %i.dxj, align 4, !tbaa !92
  %i.dxu = fmul float %i.dxs, %i.dxt
  %i.dxv = sext i32 %i.dxn to i64
  %i.dxw = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dxv ; 3 uses
  %i.dxx = getelementptr inbounds nuw i8, ptr %i.dxw, i64 8 ; 2 uses
  %i.dxy = load float, ptr %i.dxx, align 4, !tbaa !92
  %i.dxz = fadd float %i.dxu, %i.dxy
  %i.dya = load <2 x float>, ptr %i.dxi, align 4, !tbaa !92
  %i.dyb = insertelement <2 x float> poison, float %i.dxs, i64 0
  %i.dyc = shufflevector <2 x float> %i.dyb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dyd = fmul <2 x float> %i.dyc, %i.dya
  %i.dye = load <2 x float>, ptr %i.dxw, align 4, !tbaa !92
  %i.dyf = fadd <2 x float> %i.dyd, %i.dye
  store <2 x float> %i.dyf, ptr %i.dxw, align 4, !tbaa !92
  store float %i.dxz, ptr %i.dxx, align 4, !tbaa !92
  %indvars.iv.next10.i.i103 = add nuw nsw i64 %indvars.iv9.i.i102, 3 ; 2 uses
  %i.dyg = icmp samesign ult i64 %indvars.iv.next10.i.i103, %i.dxk
  br i1 %i.dyg, label %.lr.ph.split.us.i.i101, label %_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE2EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i, !llvm.loop !214

.lr.ph.split.i.i97:                               ; preds = %.lr.ph.i.i96, %.lr.ph.split.i.i97
  %indvars.iv.i.i98 = phi i64 [ %indvars.iv.next.i.i99, %.lr.ph.split.i.i97 ], [ 0, %.lr.ph.i.i96 ] ; 2 uses
  %i.dyh = getelementptr inbounds nuw [4 x i8], ptr %.076220.i, i64 %indvars.iv.i.i98 ; 2 uses
  %i.dyi = getelementptr inbounds nuw i8, ptr %i.dyh, i64 8
  %i.dyj = load i32, ptr %i.dyi, align 4, !tbaa !90
  %i.dyk = sext i32 %i.dyj to i64                 ; 2 uses
  %i.dyl = getelementptr inbounds [12 x i8], ptr %0, i64 %i.dyk
  %i.dym = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.dyl, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.dyn = load i32, ptr %i.dyh, align 4, !tbaa !90
  %i.dyo = sext i32 %i.dyn to i64
  %i.dyp = getelementptr inbounds [48 x i8], ptr %.0.val1, i64 %i.dyo
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 4
  %i.dyr = load float, ptr %i.dyq, align 4, !tbaa !81 ; 2 uses
  %i.dys = load float, ptr %i.dxj, align 4, !tbaa !92
  %i.dyt = fmul float %i.dyr, %i.dys
  %i.dyu = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dyk ; 3 uses
  %i.dyv = getelementptr inbounds nuw i8, ptr %i.dyu, i64 8 ; 2 uses
  %i.dyw = load float, ptr %i.dyv, align 4, !tbaa !92
  %i.dyx = fadd float %i.dyt, %i.dyw
  %i.dyy = load <2 x float>, ptr %i.dxi, align 4, !tbaa !92
  %i.dyz = insertelement <2 x float> poison, float %i.dyr, i64 0
  %i.dza = shufflevector <2 x float> %i.dyz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dzb = fmul <2 x float> %i.dza, %i.dyy
  %i.dzc = load <2 x float>, ptr %i.dyu, align 4, !tbaa !92
  %i.dzd = fadd <2 x float> %i.dzb, %i.dzc
  store <2 x float> %i.dzd, ptr %i.dyu, align 4, !tbaa !92
  store float %i.dyx, ptr %i.dyv, align 4, !tbaa !92
  %indvars.iv.next.i.i99 = add nuw nsw i64 %indvars.iv.i.i98, 3 ; 2 uses
  %i.dze = trunc nuw i64 %indvars.iv.next.i.i99 to i32
  %i.dzf = icmp sgt i32 %i.dwz, %i.dze
  br i1 %i.dzf, label %.lr.ph.split.i.i97, label %_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE2EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i, !llvm.loop !214

_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE2EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i: ; preds = %.lr.ph.split.i.i97, %.lr.ph.split.us.i.i101, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.dp

bb.dm:                                            ; preds = %.lr.ph.i57
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(60) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 2198, ptr noundef nonnull @.str.2, i32 noundef %i.cjl, ptr noundef nonnull @.str, i32 noundef 2202) #33
          to label %bb.dn unwind label %bb.do

bb.dn:                                            ; preds = %bb.dm
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.dzg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %common.resume

bb.dp:                                            ; preds = %_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE2EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i, %_ZN3gmxL16spread_vsite4FDNILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %_ZN3gmxL15spread_vsite4FDILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %_ZN3gmxL15spread_vsite3FDILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %bb.cl, %_ZN3gmxL15spread_vsite2FDILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i, %bb.cf, %bb.ce
  %.1.i64 = phi i32 [ %.077219.i, %bb.ce ], [ %.077219.i, %bb.cf ], [ %.077219.i, %_ZN3gmxL15spread_vsite2FDILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %.077219.i, %bb.cl ], [ %.077219.i, %_ZN3gmxL15spread_vsite3FDILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %.077219.i, %_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %.077219.i, %_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %.077219.i, %_ZN3gmxL15spread_vsite4FDILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %.077219.i, %_ZN3gmxL16spread_vsite4FDNILNS_19VirtualSitesHandler14VirialHandlingE2EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i ], [ %i.dwz, %_ZN3gmxL13spread_vsitenILNS_19VirtualSitesHandler14VirialHandlingE2EEEiPKiNS_8ArrayRefIK9t_iparamsEENS5_IKNS_11BasicVectorIfEEEENS5_ISA_EESD_PK5t_pbc.exit.i ] ; 3 uses
  %i.dzh = getelementptr inbounds nuw i8, ptr %.076220.i, i64 4
  %i.dzi = load i32, ptr %i.dzh, align 4, !tbaa !90
  %i.dzj = sext i32 %i.dzi to i64
  %i.dzk = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dzj ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.dzk, align 4, !tbaa !92
  %i.dzl = getelementptr inbounds nuw i8, ptr %i.dzk, i64 8
  store float 0.000000e+00, ptr %i.dzl, align 4, !tbaa !92
  %i.dzm = add nsw i32 %.1.i64, %.075222.i        ; 2 uses
  %i.dzn = sext i32 %.1.i64 to i64
  %i.dzo = getelementptr inbounds [4 x i8], ptr %.076220.i, i64 %i.dzn
  %i.dzp = icmp slt i32 %i.dzm, %i.cjw
  br i1 %i.dzp, label %.lr.ph.split.i61, label %.loopexit.i54, !llvm.loop !215

.loopexit.i54:                                    ; preds = %bb.dp, %bb.cd, %bb.cc
  %.0.add.i55 = add nuw nsw i64 %.0.idx223.i, 4   ; 2 uses
  %.not.i56 = icmp eq i64 %.0.add.i55, 40
  br i1 %.not.i56, label %_ZN3gmxL20spreadForceForThreadILNS_19VirtualSitesHandler14VirialHandlingE0EEEvNS_8ArrayRefIKNS_11BasicVectorIfEEEENS3_IS5_EES8_PA3_fNS3_IK9t_iparamsEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLSF_95EEEPK5t_pbc.exit, label %bb.cc

_ZN3gmxL20spreadForceForThreadILNS_19VirtualSitesHandler14VirialHandlingE0EEEvNS_8ArrayRefIKNS_11BasicVectorIfEEEENS3_IS5_EES8_PA3_fNS3_IK9t_iparamsEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLSF_95EEEPK5t_pbc.exit: ; preds = %.loopexit.i17, %.loopexit.i, %.loopexit.i54, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx19VirtualSitesHandler4Impl12spreadForcesENS_8ArrayRefIKNS_11BasicVectorIfEEEENS2_IS4_EENS0_14VirialHandlingES7_PA3_fP6t_nrnbPA3_KfP13gmx_wallcycle.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i32 @_Z22gmx_omp_get_thread_numv()
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.c = sext i32 %i.a to i64                     ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 16 uses
  %i.g = load i32, ptr %3, align 4, !tbaa !131    ; 2 uses
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %.loopexit99

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.a, 0
  br i1 %i.i, label %bb.d, label %.loopexit99.loopexit

bb.d:                                             ; preds = %bb.c
  %.sroa.095.0.copyload = load ptr, ptr %4, align 8
  br label %.loopexit99

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.q

bb.f:                                             ; preds = %.loopexit
  %i.k = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.q

.loopexit99.loopexit:                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2288 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(540) %i.l, i8 0, i64 540, i1 false), !tbaa !92
  br label %.loopexit99

.loopexit99:                                      ; preds = %.loopexit99.loopexit, %bb.d, %bb.b
  %.sroa.095.0 = phi ptr [ %.sroa.095.0.copyload, %bb.d ], [ null, %bb.b ], [ %i.l, %.loopexit99.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 2864
  %i.n = load i8, ptr %i.m, align 8, !tbaa !106, !range !66, !noundef !67
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.loopexit99
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 2872
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 5272
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 5280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !115
end_hunk_3
