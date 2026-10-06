Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/undistort.dispatch?download=true
inline.NumInlined: 812
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv20initWideAngleProjMapERKNS_11_InputArrayES2_NS_5Size_IiEEiiRKNS_12_OutputArrayES7_NS_14UndistortTypesEd:bb.a
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 3                 ; 2 uses
  %.not.i = icmp ugt i64 %i.fv, 2147483647
  br i1 %.not.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.fv, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #25
          to label %.noexc263 unwind label %bb.az

.noexc263:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  store i32 -2130509787, ptr %30, align 8, !tbaa !62
  store ptr %20, ptr %i.dg, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  store i64 0, ptr %i.di, align 8
  store i32 -2113732571, ptr %31, align 8, !tbaa !62
  store ptr %21, ptr %i.dh, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store i32 0, ptr %i.dj, align 8, !tbaa !60
  store i32 0, ptr %i.dk, align 4, !tbaa !61
  store i32 16842752, ptr %32, align 8, !tbaa !62
  store ptr %19, ptr %i.dl, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store i32 0, ptr %i.dm, align 8, !tbaa !60
  store i32 0, ptr %i.dn, align 4, !tbaa !61
  store i32 16842752, ptr %33, align 8, !tbaa !62
  store ptr %18, ptr %i.do, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  store i32 0, ptr %i.dp, align 8, !tbaa !60
  store i32 0, ptr %i.dq, align 4, !tbaa !61
  store i32 16842752, ptr %34, align 8, !tbaa !62
  store ptr %22, ptr %i.dr, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  store i32 0, ptr %i.ds, align 8, !tbaa !60
  store i32 0, ptr %i.dt, align 4, !tbaa !61
  store i32 16842752, ptr %35, align 8, !tbaa !62
  store ptr %22, ptr %i.du, align 8, !tbaa !40
  store i32 1, ptr %36, align 8, !tbaa !83
  store i32 5, ptr %i.dv, align 4, !tbaa !84
  store double 1.000000e-02, ptr %i.dw, align 8, !tbaa !85
  invoke void @_ZN2cv15undistortPointsERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_S2_S2_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull byval(%"class.cv::TermCriteria") align 8 %36)
          to label %bb.as unwind label %bb.ba

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %i.fw = load ptr, ptr %21, align 8, !tbaa !76
  %i.fx = load <2 x float>, ptr %i.fw, align 4, !tbaa !81
  %i.fy = fpext <2 x float> %i.fx to <2 x double> ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.fy, %i.fy
  %i.fz = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ga = extractelement <2 x double> %i.fy, i64 0 ; 2 uses
  %i.gb = call double @llvm.fmuladd.f64(double %i.ga, double %i.ga, double %i.fz)
  %i.gc = fadd double %i.gb, 1.000000e+00         ; 2 uses
  %i.gd = fdiv double 1.000000e+00, %i.gc
  %i.ge = call double @llvm.fmuladd.f64(double %i.dy, double %i.gc, double %i.ea)
  %i.gf = call double @sqrt(double noundef %i.ge) #23
  %i.gg = fsub double %i.gf, %i.eb
  %i.gh = fmul double %i.gg, %i.gd                ; 2 uses
  switch i32 %7, label %bb.av [
    i32 0, label %bb.at
    i32 1, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.gi = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x double> %i.gj, %i.fy
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  %i.gl = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x double> %i.gm, %i.fy
  %i.go = fmul <2 x double> %i.gn, %i.eg          ; 2 uses
  %i.gp = fcmp ogt <2 x double> %i.go, splat (double 1.000000e+00)
  %i.gq = select <2 x i1> %i.gp, <2 x double> splat (double 1.000000e+00), <2 x double> %i.go ; 2 uses
  %i.gr = fcmp olt <2 x double> %i.gq, splat (double -1.000000e+00)
  %i.gs = select <2 x i1> %i.gr, <2 x double> splat (double -1.000000e+00), <2 x double> %i.gq ; 2 uses
  %i.gt = extractelement <2 x double> %i.gs, i64 0
  %i.gu = call double @asin(double noundef %i.gt) #23
  %i.gv = extractelement <2 x double> %i.gs, i64 1
  %i.gw = call double @asin(double noundef %i.gv) #23
  %i.gx = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gw, i64 1
  br label %bb.ay

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc267 unwind label %bb.bc

.noexc267:                                        ; preds = %bb.av
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cvL17mapPointSphericalERKNS_6Point_IfEEfPNS_3VecIdLi4EEENS_14UndistortTypesE, ptr noundef nonnull @.str.3, i32 noundef 345) #25
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %.noexc267
  unreachable

bb.ax:                                            ; preds = %.noexc267
  %i.gz = landingpad { ptr, i32 }
          cleanup
  %i.ha = load ptr, ptr %12, align 8, !tbaa !45   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i264: ; preds = %bb.ax
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !46
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i265: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body256

bb.ay:                                            ; preds = %bb.au, %bb.at
  %i.hf = phi <2 x double> [ %i.gy, %bb.au ], [ %i.gk, %bb.at ]
  %i.hg = fptrunc <2 x double> %i.hf to <2 x float> ; 4 uses
  %i.hh = fcmp ogt <2 x float> %i.fm, %i.hg
  %i.hi = select <2 x i1> %i.hh, <2 x float> %i.hg, <2 x float> %i.fm ; 4 uses
  %i.hj = fcmp olt <2 x float> %i.fl, %i.hg
  %i.hk = select <2 x i1> %i.hj, <2 x float> %i.hg, <2 x float> %i.fl ; 4 uses
  %i.hl = add nuw nsw i32 %.0188463, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hl, 9
  br i1 %exitcond.not, label %bb.ao, label %bb.ap, !llvm.loop !220

bb.az:                                            ; preds = %bb.aq
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ar
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn218.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hn, %bb.ba ], [ %i.hm, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %.body256

bb.bc:                                            ; preds = %bb.av
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body256

bb.bd:                                            ; preds = %bb.al
  %i.hp = load <2 x double>, ptr %i.a, align 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hs = load <2 x double>, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hu = load <2 x double>, ptr %i.ht, align 16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !69
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.hy = load <2 x double>, ptr %i.hq, align 8, !tbaa !69 ; 2 uses
  %i.hz = load <2 x double>, ptr %i.hx, align 16, !tbaa !69 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ie = load i32, ptr %i.r, align 4, !tbaa !68
  %i.if = load ptr, ptr %i.t, align 8, !tbaa !67  ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !69
  %i.ih = icmp slt i32 %i.ie, 2
  %i.ii = load i64, ptr %i.v, align 8
  %.sink.idx.i272 = select i1 %i.ih, i64 0, i64 %i.ii
  %.sink.i273 = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sink.idx.i272
  %i.ij = getelementptr inbounds nuw i8, ptr %.sink.i273, i64 8
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !69
  %i.il = fpext <2 x float> %i.ae to <2 x double>
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.in = load double, ptr %i.im, align 16, !tbaa !69 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ip = load double, ptr %i.io, align 8, !tbaa !69 ; 2 uses
  %i.iq = call double @cos(double noundef %i.in) #23 ; 4 uses
  %i.ir = load double, ptr %i.ia, align 16, !tbaa !69
  %i.is = load double, ptr %i.ib, align 8, !tbaa !69
  %i.it = load <2 x double>, ptr %i.ic, align 16
  %i.iu = load <2 x double>, ptr %i.id, align 8
  %i.iv = call double @sin(double noundef %i.in) #23 ; 4 uses
  %i.iw = call double @cos(double noundef %i.ip) #23 ; 5 uses
  %i.ix = call double @sin(double noundef %i.ip) #23 ; 4 uses
  %i.iy = fneg double %i.iv                       ; 2 uses
  %i.iz = fneg double %i.ix                       ; 2 uses
  %i.ja = fadd double %i.iw, 0.000000e+00
  %.scalar = call double @llvm.fmuladd.f64(double %i.iz, double 0.000000e+00, double %i.ja) ; 2 uses
  %i.jb = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.scalar, i64 0
  %i.jc = call double @llvm.fmuladd.f64(double %i.iw, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.jd = call double @llvm.fmuladd.f64(double %i.iq, double 0.000000e+00, double %i.jc)
  %i.je = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ix, i64 0
  %i.jf = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.ji = insertelement <2 x double> %i.jh, double %i.jc, i64 1
  %i.jj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.je, <2 x double> %i.jg, <2 x double> %i.ji) ; 2 uses
  %i.jk = fadd double %i.iv, 0.000000e+00
  %i.jl = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.iz, i64 0
  %i.jm = insertelement <2 x double> poison, double %i.iq, i64 0 ; 2 uses
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jo = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jp = insertelement <2 x double> %i.jo, double %i.jk, i64 1
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jn, <2 x double> %i.jp) ; 4 uses
  %i.jr = insertelement <2 x double> %i.jm, double %i.ix, i64 1
  %i.js = fadd <2 x double> %i.jr, zeroinitializer
  %i.jt = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.ju = insertelement <2 x double> %i.jt, double %i.iw, i64 1
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> zeroinitializer, <2 x double> %i.js) ; 4 uses
  %i.jw = call double @llvm.fmuladd.f64(double %i.ix, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.jx = call double @llvm.fmuladd.f64(double %i.iq, double 0.000000e+00, double %i.jw)
  %i.jy = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.jz = insertelement <2 x double> %i.jy, double %i.iv, i64 1
  %i.ka = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.iy, i64 0
  %i.kb = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.kc = insertelement <2 x double> %i.kb, double %i.jw, i64 1
  %i.kd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.ka, <2 x double> %i.kc) ; 3 uses
  %i.ke = extractelement <2 x double> %i.kd, i64 1
  %i.kf = fneg <2 x double> %i.jq                 ; 3 uses
  %i.kg = call double @llvm.fmuladd.f64(double %.scalar, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.kh = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.kg, i64 1
  %i.ki = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kl = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.km = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kn = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ko = fadd double %i.kg, 0.000000e+00
  %i.kp = extractelement <2 x double> %i.jv, i64 1
  %i.kq = fadd double %i.kp, %i.ko
  %i.kr = call double @llvm.fmuladd.f64(double %i.iw, double %i.iq, double %i.ke) ; 3 uses
  %i.ks = insertelement <2 x double> poison, double %i.kr, i64 0 ; 2 uses
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ku = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %i.jb, <2 x double> %i.kh)
  %i.kv = fadd <2 x double> %i.ku, <double 0.000000e+00, double -0.000000e+00>
  %i.kw = insertelement <2 x double> %i.ks, double 0.000000e+00, i64 1 ; 2 uses
  %i.kx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.kw, <2 x double> zeroinitializer) ; 2 uses
  %i.ky = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.kr, i64 1 ; 2 uses
  %i.kz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.ky, <2 x double> %i.kx)
  %i.la = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kk, <2 x double> %i.kw, <2 x double> zeroinitializer) ; 2 uses
  %i.lb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.ky, <2 x double> %i.la)
  %i.lc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.km, <2 x double> %i.kv)
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.kn, <2 x double> %i.kz)
  %i.le = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.kt, <2 x double> %i.lb)
  %i.lf = shufflevector <2 x double> %i.jv, <2 x double> %i.jq, <2 x i32> <i32 0, i32 3>
  %i.lg = shufflevector <2 x double> %i.kx, <2 x double> %i.la, <2 x i32> <i32 1, i32 3>
  %i.lh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> zeroinitializer, <2 x double> %i.lg)
  %i.li = insertelement <2 x double> %i.kd, double %i.kr, i64 1
  %i.lj = fadd <2 x double> %i.li, %i.lh          ; 2 uses
  %i.lk = icmp sgt i32 %i.fe, 0
  br i1 %i.lk, label %.lr.ph475, label %._crit_edge476.split

.lr.ph475:                                        ; preds = %bb.bd
  %i.ll = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.lm = getelementptr inbounds nuw i8, ptr %37, i64 128
  %i.ln = icmp sgt i32 %3, 0
  %i.lo = fdiv float 1.000000e+00, %.sroa.speculated407 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.lr = icmp eq i32 %7, 0                       ; 3 uses
  br i1 %i.ln, label %.lr.ph.preheader, label %._crit_edge476.split

.lr.ph.preheader:                                 ; preds = %.lr.ph475
  %i.ls = insertelement <2 x double> %i.iu, double %i.is, i64 1
  %i.lt = insertelement <2 x double> %i.it, double %i.ir, i64 1
  %i.lu = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lw = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.lx = insertelement <2 x double> %i.lw, double %i.ik, i64 1
  %i.ly = shufflevector <2 x double> %i.hy, <2 x double> %i.hz, <2 x i32> <i32 1, i32 3>
  %i.lz = shufflevector <2 x double> %i.hy, <2 x double> %i.hz, <2 x i32> <i32 0, i32 2>
  %i.ma = insertelement <2 x double> %i.hp, double %i.hw, i64 1
  %i.mb = extractelement <2 x double> %i.lj, i64 0
  %i.mc = extractelement <2 x double> %i.lj, i64 1
  %i.md = icmp eq i32 %7, 0
  br label %.lr.ph

._crit_edge476.split:                             ; preds = %._crit_edge, %.lr.ph475, %bb.bd
  %i.me = icmp eq i32 %4, 37
  br i1 %i.me, label %bb.bx, label %bb.cq

bb.be:                                            ; preds = %bb.al
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.bf:                                            ; preds = %bb.by, %bb.ce
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.body290

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.mh = load ptr, ptr %i.ll, align 8, !tbaa !67
  %i.mi = load i64, ptr %i.lm, align 8, !tbaa !73
  %i.mj = mul i64 %i.mi, %indvars.iv483
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mj ; 2 uses
  %i.ml = trunc nuw nsw i64 %indvars.iv483 to i32
  %i.mm = uitofp nneg i32 %i.ml to float
  %i.mn = fsub nnan float %i.mm, %i.fh
  %i.mo = fmul float %i.lo, %i.mn                 ; 2 uses
  %i.mp = fpext float %i.mo to double             ; 9 uses
  %i.mq = fmul double %i.mp, %i.mp
  %i.mr = insertelement <2 x double> poison, double %i.mp, i64 1
  br label %bb.bg

._crit_edge:                                      ; preds = %bb.bw
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond487.not = icmp eq i64 %indvars.iv.next484, %.sroa.6404.0.insert.ext
  br i1 %exitcond487.not, label %._crit_edge476.split, label %.lr.ph, !llvm.loop !221

bb.bg:                                            ; preds = %.lr.ph, %bb.bw
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bw ] ; 4 uses
  %i.ms = trunc nuw nsw i64 %indvars.iv to i32
  %i.mt = uitofp nneg i32 %i.ms to float
  %i.mu = fsub nnan float %i.mt, %i.ah
  %i.mv = fmul float %i.lo, %i.mu                 ; 2 uses
  %i.mw = fpext float %i.mv to double             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.mx = call double @llvm.fmuladd.f64(double %i.mw, double %i.mw, double %i.mq)
  %i.my = fadd double %i.mx, 1.000000e+00         ; 3 uses
  %i.mz = fdiv double 1.000000e+00, %i.my         ; 3 uses
  %i.na = call double @llvm.fmuladd.f64(double %i.dy, double %i.my, double %i.ea)
  %i.nb = call double @sqrt(double noundef %i.na) #23 ; 2 uses
  %i.nc = fsub double %i.nb, %i.eb                ; 2 uses
  %i.nd = fmul double %i.mz, %i.nc                ; 4 uses
  %i.ne = fmul double %i.my, %i.dy
  %i.nf = fdiv double %i.ne, %i.nb
  %i.ng = fneg double %i.nc
  %i.nh = call double @llvm.fmuladd.f64(double %i.ng, double 2.000000e+00, double %i.nf)
  %i.ni = fmul double %i.mz, %i.nh
  %i.nj = fmul double %i.mz, %i.ni
  %i.nk = insertelement <2 x double> poison, double %i.nj, i64 0
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nm = insertelement <2 x double> %i.mr, double %i.mw, i64 0 ; 7 uses
  %i.nn = fmul <2 x double> %i.nl, %i.nm          ; 4 uses
  br i1 %i.md, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.np = fmul <2 x double> %i.no, %i.nm          ; 3 uses
  %i.nq = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.nr = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.nm, <2 x double> %i.nr) ; 3 uses
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> %i.np, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.nt, ptr %11, align 16
  %i.nu = shufflevector <2 x double> %i.np, <2 x double> %i.ns, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.nu, ptr %i.lp, align 16
  %i.nv = fmul double %i.nd, %i.mw
  %i.nw = fmul double %i.nd, %i.mp
  br label %.noexc277

bb.bi:                                            ; preds = %bb.bg
  %i.nx = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nz = fmul <2 x double> %i.ny, %i.nm
  %i.oa = fmul <2 x double> %i.nz, %i.eg          ; 2 uses
  %i.ob = fcmp ogt <2 x double> %i.oa, splat (double 1.000000e+00)
  %i.oc = select <2 x i1> %i.ob, <2 x double> splat (double 1.000000e+00), <2 x double> %i.oa ; 2 uses
  %i.od = fcmp olt <2 x double> %i.oc, splat (double -1.000000e+00)
  %i.oe = select <2 x i1> %i.od, <2 x double> splat (double -1.000000e+00), <2 x double> %i.oc ; 4 uses
  %i.of = extractelement <2 x double> %i.oe, i64 0
  %i.og = extractelement <2 x double> %i.oe, i64 1
  %i.oh = fneg <2 x double> %i.oe
  %i.oi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.oe, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.oj = extractelement <2 x double> %i.oi, i64 0
  %i.ok = call double @sqrt(double noundef %i.oj) #23
  %i.ol = extractelement <2 x double> %i.oi, i64 1
  %i.om = call double @sqrt(double noundef %i.ol) #23
  %i.on = insertelement <2 x double> poison, double %i.om, i64 0
  %i.oo = insertelement <2 x double> %i.on, double %i.ok, i64 1
  %i.op = fdiv <2 x double> %i.eg, %i.oo          ; 2 uses
  %i.oq = fmul <2 x double> %i.nn, %i.op
  %i.or = shufflevector <2 x double> %i.op, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.os = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ot = fmul <2 x double> %i.oq, %i.os          ; 3 uses
  %i.ou = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.nm, <2 x double> %i.ny)
  %i.ov = fmul <2 x double> %i.ou, %i.or          ; 3 uses
  %i.ow = shufflevector <2 x double> %i.ov, <2 x double> %i.ot, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ow, ptr %11, align 16
  %i.ox = shufflevector <2 x double> %i.ot, <2 x double> %i.ov, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ox, ptr %i.lp, align 16
  %i.oy = call double @asin(double noundef %i.of) #23
  %i.oz = call double @asin(double noundef %i.og) #23
  br label %.noexc277

.noexc277:                                        ; preds = %bb.bi, %bb.bh
  %.sink28.i374 = phi double [ %i.oz, %bb.bi ], [ %i.nw, %bb.bh ]
  %.sink27.in.i375 = phi double [ %i.oy, %bb.bi ], [ %i.nv, %bb.bh ]
  %i.pa = phi <2 x double> [ %i.ot, %bb.bi ], [ %i.np, %bb.bh ] ; 7 uses
  %i.pb = phi <2 x double> [ %i.ov, %bb.bi ], [ %i.ns, %bb.bh ] ; 7 uses
  %.sink27.i376 = fptrunc double %.sink27.in.i375 to float
  %i.pc = fptrunc double %.sink28.i374 to float
  %i.pd = fpext float %.sink27.i376 to double
  %i.pe = fpext float %i.pc to double
  %i.pf = fsub double %i.pd, %i.mw                ; 4 uses
  %i.pg = fsub double %i.pe, %i.mp                ; 4 uses
  %i.ph = fmul double %i.pg, %i.pg
  %i.pi = call double @llvm.fmuladd.f64(double %i.pf, double %i.pf, double %i.ph)
  %i.pj = fcmp olt double %i.pi, f0x3D719799812DEA11
  br i1 %i.pj, label %._crit_edge.i, label %bb.bj

bb.bj:                                            ; preds = %.noexc277
  %i.pk = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pl = shufflevector <2 x double> %i.pa, <2 x double> %i.pb, <2 x i32> <i32 0, i32 3>
  %i.pm = fmul <2 x double> %i.pk, %i.pl
  %i.pn = insertelement <2 x double> %i.pb, double %i.pg, i64 0
  %i.po = shufflevector <2 x double> %i.pa, <2 x double> %i.pb, <2 x i32> <i32 0, i32 3>
  %i.pp = fmul <2 x double> %i.pn, %i.po
  %i.pq = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pr = shufflevector <2 x double> %i.pb, <2 x double> %i.pa, <2 x i32> <i32 0, i32 3>
  %i.ps = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pq, <2 x double> %i.pr, <2 x double> %i.pm) ; 4 uses
  %i.pt = extractelement <2 x double> %i.ps, i64 1
  %i.pu = fneg double %i.pt                       ; 3 uses
  %i.pv = insertelement <2 x double> poison, double %i.pu, i64 0
  %i.pw = shufflevector <2 x double> %i.pv, <2 x double> %i.ps, <2 x i32> <i32 0, i32 2>
  %i.px = shufflevector <2 x double> %i.pb, <2 x double> %i.pa, <2 x i32> <i32 0, i32 3>
  %i.py = insertelement <2 x double> %i.pa, double %i.pf, i64 0
  %i.pz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.py, <2 x double> %i.pp) ; 2 uses
  %i.qa = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.qb = insertelement <2 x double> %i.qa, double %i.pu, i64 1
  %i.qc = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qd = insertelement <2 x double> %i.qc, double %i.pg, i64 1
  %i.qe = insertelement <2 x double> %i.pb, double %i.pu, i64 0
  %i.qf = fmul <2 x double> %i.qd, %i.qe
  %i.qg = shufflevector <2 x double> %i.ps, <2 x double> %i.pa, <2 x i32> <i32 0, i32 3>
  %i.qh = insertelement <2 x double> %i.qa, double %i.pf, i64 1
  %i.qi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.qh, <2 x double> %i.qf) ; 2 uses
  %i.qj = extractelement <2 x double> %i.qi, i64 0 ; 2 uses
  %i.qk = fcmp une double %i.qj, 0.000000e+00
  %i.ql = fdiv double 1.000000e+00, %i.qj
  %i.qm = select i1 %i.qk, double %i.ql, double 0.000000e+00
  %i.qn = insertelement <2 x double> poison, double %i.qm, i64 0
  %i.qo = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0
