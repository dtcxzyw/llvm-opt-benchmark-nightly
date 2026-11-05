Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/odometry_functions?download=true
inline.NumInlined: 1901
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN2cv19RGBDICPOdometryImplERKNS_12_OutputArrayERKNS_3MatERKNS_13OdometryFrameES8_RKNS_4MatxIfLi3ELi3EEEffRKSt6vectorIiSaIiEEdddNS_12OdometryTypeENS_21OdometryTransformTypeENS_16OdometryAlgoTypeE:bb.a
.noexc302:                                        ; preds = %bb.dy
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.je, i32 noundef -1)
          to label %_ZN2cvpLERNS_3MatERKS0_.exit304 unwind label %bb.eb

_ZN2cvpLERNS_3MatERKS0_.exit304:                  ; preds = %.noexc302
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN2cvpLERNS_3MatERKS0_.exit304, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store i32 0, ptr %i.em, align 8, !tbaa !40
  store i32 0, ptr %i.en, align 4, !tbaa !41
  store i32 16842752, ptr %18, align 8, !tbaa !26
  store ptr %79, ptr %i.eo, align 8, !tbaa !27
  %i.jf = invoke noundef double @_ZN2cv11determinantERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %.noexc305 unwind label %bb.eb

.noexc305:                                        ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.jg = call double @llvm.fabs.f64(double %i.jf) ; 2 uses
  %i.jh = fcmp uge double %i.jg, f0x3EB0C6F7A0B5ED8D
  %i.ji = fcmp one double %i.jg, +inf
  %or.cond18.i = and i1 %i.ji, %i.jh              ; 2 uses
  br i1 %or.cond18.i, label %bb.ea, label %_ZN2cv11solveSystemERKNS_3MatES2_dRS0_.exit

bb.ea:                                            ; preds = %.noexc305
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store i32 0, ptr %i.ep, align 8, !tbaa !40
  store i32 0, ptr %i.eq, align 4, !tbaa !41
  store i32 16842752, ptr %19, align 8, !tbaa !26
  store ptr %79, ptr %i.er, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store i32 0, ptr %i.es, align 8, !tbaa !40
  store i32 0, ptr %i.et, align 4, !tbaa !41
  store i32 16842752, ptr %20, align 8, !tbaa !26
  store ptr %81, ptr %i.eu, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store i64 0, ptr %i.ew, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !26
  store ptr %50, ptr %i.ev, align 8, !tbaa !27
  %i.jj = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef 3)
          to label %bb.ec unwind label %bb.eb     ; 0 uses

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %.noexc302, %bb.dy, %.noexc299, %bb.dx
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %110, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %109, i32 noundef 6, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(32) %110)
          to label %bb.ed unwind label %bb.eh

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #22
  switch i32 %12, label %bb.es [
    i32 1, label %bb.ee
    i32 2, label %bb.em
  ]

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22, !noalias !154
  store i32 0, ptr %16, align 4, !tbaa !87, !noalias !154
  store i32 3, ptr %i.fa, align 4, !tbaa !88, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !154
  store i64 9223372034707292160, ptr %17, align 8, !noalias !154
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %112, ptr noundef nonnull align 8 dereferenceable(208) %109, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17)
          to label %bb.ef unwind label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !154
  store i64 0, ptr %i.fc, align 8
  store i32 -1040121856, ptr %111, align 8, !tbaa !26
  store ptr %112, ptr %i.fb, align 8, !tbaa !27
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(24) %111)
          to label %bb.eg unwind label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %112) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #22
  br label %.invoke

bb.eh:                                            ; preds = %bb.ec
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #22
  br label %bb.fe

bb.ei:                                            ; preds = %bb.ee
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ef
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %112) #22
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.pn248.pn = phi { ptr, i32 } [ %i.jn, %bb.ej ], [ %i.jm, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #22
  br label %bb.fd

bb.el:                                            ; preds = %.invoke, %bb.es
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.em:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !155
  store i32 3, ptr %14, align 4, !tbaa !87, !noalias !155
  store i32 6, ptr %i.ex, align 4, !tbaa !88, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22, !noalias !155
  store i64 9223372034707292160, ptr %15, align 8, !noalias !155
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %114, ptr noundef nonnull align 8 dereferenceable(208) %109, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15)
          to label %bb.en unwind label %bb.ep

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !155
  store i64 0, ptr %i.ez, align 8
  store i32 -1040121856, ptr %113, align 8, !tbaa !26
  store ptr %114, ptr %i.ey, align 8, !tbaa !27
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(24) %113)
          to label %bb.eo unwind label %bb.eq

bb.eo:                                            ; preds = %bb.en
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %114) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #22
  br label %.invoke

.invoke:                                          ; preds = %bb.eg, %bb.eo
  %i.jp = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(208) %109)
          to label %bb.es unwind label %bb.el     ; 0 uses

bb.ep:                                            ; preds = %bb.em
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.eq:                                            ; preds = %bb.en
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %114) #22
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.pn245.pn = phi { ptr, i32 } [ %i.jr, %bb.eq ], [ %i.jq, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #22
  br label %bb.fd

bb.es:                                            ; preds = %.invoke, %bb.ed
  invoke void @_ZN2cv23computeProjectiveMatrixERKNS_3MatERS0_(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(208) %49)
          to label %bb.et unwind label %bb.el

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #22
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %115, ptr noundef nonnull align 8 dereferenceable(208) %49, ptr noundef nonnull align 8 dereferenceable(208) %47)
          to label %bb.eu unwind label %bb.ez

bb.eu:                                            ; preds = %bb.et
  %i.js = load ptr, ptr %115, align 8, !tbaa !67  ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !18
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  invoke void %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %i.js, ptr noundef nonnull align 8 dereferenceable(688) %115, ptr noundef nonnull align 8 dereferenceable(208) %47, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.fa, !inline_history !148

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.eu
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fd) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fe) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ff) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #22
  invoke void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIfLi6EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec.21") align 4 %116, ptr noundef nonnull align 8 dereferenceable(208) %50)
          to label %bb.ev unwind label %bb.fc

bb.ev:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.jw = load float, ptr %116, align 4, !tbaa !23
  %i.jx = load float, ptr %i.fh, align 4, !tbaa !23
  %i.jy = load <2 x float>, ptr %i.fi, align 4, !tbaa !23
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ka = fpext float %i.jw to double             ; 3 uses
  %122 = call double @llvm.fmuladd.f64(double %i.ka, double %i.ka, double 0.000000e+00)
  %i.kb = load <2 x float>, ptr %i.fg, align 4, !tbaa !23
  %i.kc = fpext <2 x float> %i.kb to <2 x double> ; 3 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 0 ; 2 uses
  %i.ke = call double @llvm.fmuladd.f64(double %i.kd, double %i.kd, double %122)
  %i.kf = extractelement <2 x double> %i.kc, i64 1 ; 2 uses
  %i.kg = call noundef double @llvm.fmuladd.f64(double %i.kf, double %i.kf, double %i.ke)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.kg) ; 4 uses
  %i.kh = fcmp olt double %sqrt.i.i, f0x3CB0000000000000
  br i1 %i.kh, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ki = call double @cos(double noundef %sqrt.i.i) #22 ; 2 uses
  %i.kj = call double @sin(double noundef %sqrt.i.i) #22
  %i.kk = fsub double 1.000000e+00, %i.ki         ; 3 uses
  %i.kl = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.km = fmul double %i.kl, %i.ka
  %i.kn = fptrunc double %i.km to float           ; 5 uses
  %i.ko = fmul float %i.kn, %i.kn
  %i.kp = fneg float %i.kn
  %i.kq = fpext float %i.ko to double
  %i.kr = fpext float %i.kp to double
  %i.ks = fpext float %i.kn to double
  %i.kt = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x double> %i.ku, %i.kc
  %i.kw = fptrunc <2 x double> %i.kv to <2 x float> ; 8 uses
  %i.kx = extractelement <2 x float> %i.kw, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.kw, %i.kw
  %i.ky = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.kz = extractelement <2 x float> %i.kw, i64 1 ; 3 uses
  %i.la = fmul float %i.kx, %i.kz
  %i.lb = fmul float %i.kz, %i.kz
  %i.lc = fneg float %i.kx
  %i.ld = fmul double %i.kk, %i.kq
  %i.le = fptrunc double %i.ld to float
  %i.lf = fpext float %i.ky to double
  %i.lg = fpext float %i.la to double
  %i.lh = fmul double %i.kk, %i.lg
  %i.li = fpext float %i.lb to double
  %i.lj = fneg <2 x float> %i.kw
  %i.lk = shufflevector <2 x float> %i.kw, <2 x float> %i.lj, <2 x i32> <i32 0, i32 3>
  %i.ll = fpext <2 x float> %i.lk to <2 x double>
  %i.lm = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.ln = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lo = fmul <2 x double> %i.ln, %i.ll
  %i.lp = fptrunc <2 x double> %i.lo to <2 x float>
  %i.lq = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lt = fmul <2 x float> %i.lr, %i.ls
  %i.lu = fpext <2 x float> %i.lt to <2 x double>
  %i.lv = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.lw = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lx = fmul <2 x double> %i.lw, %i.lu
  %i.ly = fptrunc <2 x double> %i.lx to <2 x float>
  %i.lz = insertelement <2 x double> %i.lw, double %i.ki, i64 0 ; 3 uses
  %i.ma = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.lf, i64 1
  %i.mb = fmul <2 x double> %i.lz, %i.ma
  %i.mc = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.li, i64 1
  %i.md = fmul <2 x double> %i.lz, %i.mc
  %i.me = fptrunc <2 x double> %i.mb to <2 x float>
  %i.mf = insertelement <2 x double> %i.lz, double %i.lh, i64 1
  %i.mg = fptrunc <2 x double> %i.mf to <2 x float> ; 3 uses
  %i.mh = fptrunc <2 x double> %i.md to <2 x float> ; 2 uses
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mj = extractelement <2 x float> %i.mg, i64 0
  %i.mk = fadd float %i.mj, %i.le
  %i.ml = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = fadd <2 x float> %i.ml, %i.ly           ; 2 uses
  %i.mn = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mo = fadd <2 x float> %i.mn, %i.me
  %i.mp = fadd <2 x float> %i.mi, %i.mg
  %i.mq = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.kr, i64 1
  %i.mr = fmul <2 x double> %i.ln, %i.mq
  %i.ms = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ks, i64 0
  %i.mt = fmul <2 x double> %i.ln, %i.ms
  %i.mu = fptrunc <2 x double> %i.mr to <2 x float> ; 2 uses
  %i.mv = insertelement <2 x float> %i.kw, float %i.lc, i64 0
  %i.mw = fpext <2 x float> %i.mv to <2 x double>
  %i.mx = fmul <2 x double> %i.ln, %i.mw
  %i.my = fptrunc <2 x double> %i.mx to <2 x float>
  %i.mz = fptrunc <2 x double> %i.mt to <2 x float>
  %i.na = extractelement <2 x float> %i.mu, i64 0
  %i.nb = fadd float %i.mk, %i.na
  %i.nc = fadd <2 x float> %i.mm, %i.lp
  %i.nd = fadd <2 x float> %i.mm, %i.my
  %i.ne = fadd <2 x float> %i.mo, %i.mz
  %i.nf = fadd <2 x float> %i.mp, %i.mu
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.sink103.i = phi float [ %i.nb, %bb.ew ], [ 1.000000e+00, %bb.ev ] ; 3 uses
  %i.ng = phi <2 x float> [ %i.nf, %bb.ew ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.ev ] ; 2 uses
  %i.nh = phi <2 x float> [ %i.ne, %bb.ew ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.ev ] ; 2 uses
  %i.ni = phi <2 x float> [ %i.nd, %bb.ew ], [ zeroinitializer, %bb.ev ] ; 2 uses
  %i.nj = phi <2 x float> [ %i.nc, %bb.ew ], [ zeroinitializer, %bb.ev ] ; 4 uses
  %i.nk = call float @llvm.fmuladd.f32(float %.sink103.i, float %.sroa.0333.1407, float 0.000000e+00)
  %i.nl = shufflevector <2 x float> %i.ni, <2 x float> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nm = insertelement <8 x float> %i.nl, float %.sink103.i, i64 2
  %i.nn = shufflevector <8 x float> %i.nm, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0>
  %i.no = shufflevector <8 x float> %i.gz, <8 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.np = insertelement <3 x float> %i.no, float %.sroa.0333.1407, i64 1
  %i.nq = shufflevector <3 x float> %i.np, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 0, i32 1, i32 2, i32 0, i32 2>
  %i.nr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nn, <8 x float> %i.nq, <8 x float> zeroinitializer)
  %i.ns = call float @llvm.fmuladd.f32(float %.sink103.i, float %.sroa.12336.1398, float 0.000000e+00)
  %i.nt = extractelement <2 x float> %i.ha, i64 1
  %i.nu = extractelement <2 x float> %i.nj, i64 1 ; 2 uses
  %i.nv = call float @llvm.fmuladd.f32(float %i.nu, float %i.nt, float %i.ns)
  %i.nw = extractelement <2 x float> %i.ha, i64 0
  %i.nx = extractelement <2 x float> %i.nj, i64 0 ; 2 uses
  %i.ny = call noundef float @llvm.fmuladd.f32(float %i.nx, float %i.nw, float %i.nv)
  %i.nz = insertelement <2 x float> poison, float %.sroa.12336.1398, i64 0
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ob = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ni, <2 x float> %i.oa, <2 x float> zeroinitializer)
  %i.oc = extractelement <8 x float> %i.gz, i64 2
  %i.od = call float @llvm.fmuladd.f32(float %i.nu, float %i.oc, float %i.nk)
  %i.oe = extractelement <8 x float> %i.gz, i64 4
  %i.of = call float @llvm.fmuladd.f32(float %i.nx, float %i.oe, float %i.od)
  %i.og = shufflevector <2 x float> %i.nj, <2 x float> %i.nh, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 2, i32 3>
  %i.oh = shufflevector <8 x float> %i.gz, <8 x float> poison, <8 x i32> <i32 7, i32 3, i32 2, i32 3, i32 2, i32 7, i32 3, i32 7>
  %i.oi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.og, <8 x float> %i.oh, <8 x float> %i.nr)
  %i.oj = shufflevector <8 x float> %i.gz, <8 x float> poison, <8 x i32> <i32 5, i32 6, i32 4, i32 6, i32 4, i32 5, i32 6, i32 5>
  %i.ok = shufflevector <2 x float> %i.nj, <2 x float> %i.ng, <8 x i32> <i32 0, i32 0, i32 3, i32 3, i32 2, i32 2, i32 2, i32 3>
  %i.ol = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ok, <8 x float> %i.oj, <8 x float> %i.oi)
  %i.om = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.on = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nh, <2 x float> %i.om, <2 x float> %i.ob)
  %i.oo = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.op = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ng, <2 x float> %i.oo, <2 x float> %i.on)
  %i.oq = fadd float %i.jx, %i.ny
  %i.or = fadd <2 x float> %i.jz, %i.op
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %109) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #22
  br label %_ZN2cv11solveSystemERKNS_3MatES2_dRS0_.exit

_ZN2cv11solveSystemERKNS_3MatES2_dRS0_.exit:      ; preds = %.noexc305, %bb.ex
  %.sroa.12336.2 = phi float [ %i.oq, %bb.ex ], [ %.sroa.12336.1398, %.noexc305 ]
  %.sroa.0333.2 = phi float [ %i.of, %bb.ex ], [ %.sroa.0333.1407, %.noexc305 ]
  %.2109 = phi i1 [ true, %bb.ex ], [ %.1108408, %.noexc305 ]
  %i.os = phi <8 x float> [ %i.ol, %bb.ex ], [ %i.gz, %.noexc305 ]
  %i.ot = phi <2 x float> [ %i.or, %bb.ex ], [ %i.ha, %.noexc305 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %81) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %79) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %77) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #22
  br label %bb.ey

bb.ey:                                            ; preds = %bb.bp, %_ZN2cv11solveSystemERKNS_3MatES2_dRS0_.exit
  %.sroa.12336.3 = phi float [ %.sroa.12336.1398, %bb.bp ], [ %.sroa.12336.2, %_ZN2cv11solveSystemERKNS_3MatES2_dRS0_.exit ] ; 3 uses
  %.sroa.0333.3 = phi float [ %.sroa.0333.1407, %bb.bp ], [ %.sroa.0333.2, %_ZN2cv11solveSystemERKNS_3MatES2_dRS0_.exit ] ; 3 uses
  %.3110 = phi i1 [ %.1108408, %bb.bp ], [ %.2109, %_ZN2cv11solveSystemERKNS_3MatES2_dRS0_.exit ] ; 3 uses
  %.1105 = phi i1 [ false, %bb.bp ], [ %or.cond18.i, %_ZN2cv11solveSystemERKNS_3MatES2_dRS0_.exit ]
  %i.ou = phi <8 x float> [ %i.gz, %bb.bp ], [ %i.os, %_ZN2cv11solveSystemERKNS_3MatES2_dRS0_.exit ] ; 3 uses
  %i.ov = phi <2 x float> [ %i.ha, %bb.bp ], [ %i.ot, %_ZN2cv11solveSystemERKNS_3MatES2_dRS0_.exit ] ; 3 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %65) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  br i1 %.1105, label %bb.au, label %._crit_edge

bb.ez:                                            ; preds = %bb.et
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fa:                                            ; preds = %bb.eu
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %115) #22
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.pn251 = phi { ptr, i32 } [ %i.ox, %bb.fa ], [ %i.ow, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #22
  br label %bb.fd

bb.fc:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #22
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.er, %bb.el, %bb.ek
  %.pn253.pn.pn = phi { ptr, i32 } [ %i.oy, %bb.fc ], [ %.pn251, %bb.fb ], [ %i.jo, %bb.el ], [ %.pn248.pn, %bb.ek ], [ %.pn245.pn, %bb.er ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %109) #22
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.eh
end_hunk_0
begin_hunk_1_@_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi4ELi4EEEv:bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.i
  ret void

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.bu, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

declare void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv7Affine3IdEC2ERKNS_3MatERKNS_3VecIdLi3EEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Rect_", align 16        ; 5 uses
  %8 = alloca %"class.cv::Vec.31", align 8        ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !tbaa !71
  %i.a = load i32, ptr %1, align 8, !tbaa !80
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, 6
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv7Affine3IdEC2ERKNS_3MatERKNS_3VecIdLi3EEE, ptr noundef nonnull @.str.27, i32 noundef 362) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !49     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !54
  switch i32 %i.o, label %bb.o [
    i32 4, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1040056314, ptr %5, align 8, !tbaa !26
  store ptr %0, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 17179869188, ptr %i.q, align 8, !tbaa !20
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store <4 x i32> <i32 0, i32 0, i32 3, i32 3>, ptr %7, align 16, !tbaa !20
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %7)
  invoke void @_ZN2cv7Affine3IdE8rotationERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store <4 x i32> <i32 3, i32 0, i32 1, i32 3>, ptr %10, align 16, !tbaa !20
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %10)
  invoke void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec.31") align 8 %8, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.r = load double, ptr %8, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.u, ptr %i.v, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.x, ptr %i.y, align 8, !tbaa !71
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.r

bb.o:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN2cv7Affine3IdE8rotationERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.ab = load double, ptr %2, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ab, ptr %i.ac, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ae, ptr %i.af, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.ah, ptr %i.ai, align 8, !tbaa !71
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ak, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  ret void

bb.r:                                             ; preds = %bb.n, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %bb.n ], [ %i.z, %bb.m ]
  resume { ptr, i32 } %.pn19
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK2cv8DualQuatIdE3expEv(ptr dead_on_unwind noalias writable sret(%"class.cv::DualQuat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.cv::Quat", align 8          ; 6 uses
  %3 = alloca %"class.cv::Matx.23", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.a = load double, ptr %1, align 8, !tbaa !277, !noalias !276 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.b, align 8, !tbaa !71, !noalias !276 ; 2 uses
  store double %i.a, ptr %2, align 8, !tbaa !110, !alias.scope !276
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  store double %i.f, ptr %i.e, align 8, !tbaa !278, !alias.scope !276
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load <2 x double>, ptr %i.c, align 8, !tbaa !71, !noalias !276 ; 4 uses
  store <2 x double> %i.h, ptr %i.g, align 8, !tbaa !71, !alias.scope !276
  %4 = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double 0.000000e+00)
  %i.i = extractelement <2 x double> %i.h, i64 0  ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %4)
  %i.k = extractelement <2 x double> %i.h, i64 1  ; 2 uses
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.j)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.l) ; 4 uses
  %i.m = fcmp olt double %sqrt.i, f0x3EB0C6F7A0B5ED8D
  br i1 %i.m, label %_ZNK2cv4QuatIdE3expEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call double @sin(double noundef %sqrt.i) #22, !noalias !279
  %i.o = fdiv double %i.n, %sqrt.i
  br label %_ZNK2cv4QuatIdE3expEv.exit

_ZNK2cv4QuatIdE3expEv.exit:                       ; preds = %bb.a, %bb.b
  %i.p = phi double [ %i.o, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.q = tail call double @exp(double noundef %i.a) #22, !noalias !279
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = tail call double @cos(double noundef %sqrt.i) #22, !noalias !279
  %i.w = shufflevector <2 x double> %i.d, <2 x double> %i.h, <4 x i32> <i32 poison, i32 0, i32 1, i32 3>
  %i.x = insertelement <4 x double> %i.w, double %i.v, i64 0
  %i.y = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %i.p, i64 1
  %i.z = shufflevector <4 x double> %i.y, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.aa = fmul <4 x double> %i.x, %i.z
  %i.ab = insertelement <4 x double> poison, double %i.q, i64 0
  %i.ac = shufflevector <4 x double> %i.ab, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ad = fmul <4 x double> %i.ac, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN2cv6detail9jacob_expIdEENS_4MatxIT_Li4ELi4EEERKNS_4QuatIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.23") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store <4 x double> %i.ad, ptr %0, align 8, !tbaa !71, !alias.scope !280
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load <1 x double>, ptr %i.r, align 8
  %i.ag = load <1 x double>, ptr %i.s, align 8
  %i.ah = load <1 x double>, ptr %i.t, align 8
  %i.ai = load double, ptr %i.u, align 8, !tbaa !108, !noalias !281
  %i.aj = load <16 x double>, ptr %3, align 8, !tbaa !71, !noalias !282 ; 4 uses
  %i.ak = shufflevector <16 x double> %i.aj, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.al = shufflevector <1 x double> %i.af, <1 x double> poison, <4 x i32> zeroinitializer
  %i.am = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ak, <4 x double> %i.al, <4 x double> zeroinitializer)
  %i.an = shufflevector <16 x double> %i.aj, <16 x double> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.ao = shufflevector <1 x double> %i.ag, <1 x double> poison, <4 x i32> zeroinitializer
  %i.ap = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.an, <4 x double> %i.ao, <4 x double> %i.am)
  %i.aq = shufflevector <16 x double> %i.aj, <16 x double> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.ar = shufflevector <1 x double> %i.ah, <1 x double> poison, <4 x i32> zeroinitializer
  %i.as = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aq, <4 x double> %i.ar, <4 x double> %i.ap)
  %i.at = shufflevector <16 x double> %i.aj, <16 x double> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.au = insertelement <4 x double> poison, double %i.ai, i64 0
  %i.av = shufflevector <4 x double> %i.au, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.at, <4 x double> %i.av, <4 x double> %i.as)
  store <4 x double> %i.aw, ptr %i.ae, align 8, !tbaa !71, !alias.scope !280
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare noundef double @_ZN2cv11determinantERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

declare noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

declare noundef double @_ZN2cv4normERKNS_11_InputArrayEiS2_(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #1

declare void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

declare void @_ZNK2cv13OdometryFrame12getGrayImageERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2cv4UMat5emptyEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @_ZNK2cv13OdometryFrame8getImageERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSERKS0_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @_ZNK2cv4UMat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @_ZNK2cv13OdometryFrame17getProcessedDepthERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL18prepareScaledDepthERNS_13OdometryFrameE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::UMat", align 8          ; 12 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %2, i32 noundef 0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.c, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !26
  store ptr %2, ptr %i.b, align 8, !tbaa !27
  invoke void @_ZNK2cv13OdometryFrame8getDepthERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.d = invoke noundef zeroext i1 @_ZNK2cv4UMat5emptyEv(ptr noundef nonnull align 8 dereferenceable(184) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.f, label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.af

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cvL18prepareScaledDepthERNS_13OdometryFrameE, ptr noundef nonnull @.str.1, i32 noundef 49) #23
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.l = load i64, ptr %i.j, align 8, !tbaa !19
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn33 = phi { ptr, i32 } [ %i.g, %bb.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.af

bb.k:                                             ; preds = %bb.c
  %i.n = load i32, ptr %2, align 8, !tbaa !70
  %i.o = and i32 %i.n, 4095                       ; 2 uses
  %i.p = icmp eq i32 %i.o, 5
  br i1 %i.p, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq i32 %i.o, 6
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #22
  br i1 %i.q, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.s, align 8
  store i32 34209792, ptr %6, align 8, !tbaa !26
  store ptr %0, ptr %i.r, align 8, !tbaa !27
  invoke void @_ZNK2cv4UMat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
end_hunk_1
begin_hunk_2_@_ZNK2cv12GetAbInvokerclERKNS_5RangeE:bb.a
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mq, i64 96 ; 2 uses
  %i.nm = load <4 x float>, ptr %i.nl, align 4, !tbaa !23
  %i.nn = fadd <4 x float> %i.nm, %i.au
  store <4 x float> %i.nn, ptr %i.nl, align 4, !tbaa !23
  %i.no = getelementptr inbounds nuw i8, ptr %i.mq, i64 112 ; 2 uses
  %i.np = load <4 x float>, ptr %i.no, align 4, !tbaa !23
  %i.nq = fadd <4 x float> %i.np, zeroinitializer
  store <4 x float> %i.nq, ptr %i.no, align 4, !tbaa !23
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mq, i64 128 ; 2 uses
  %i.ns = load <4 x float>, ptr %i.nr, align 4, !tbaa !23
  %i.nt = insertelement <4 x float> %i.ay, float 0.000000e+00, i64 3
  %i.nu = insertelement <4 x float> %i.nt, float %.sroa.42.128.copyload, i64 2
  %i.nv = fadd <4 x float> %i.ns, %i.nu
  store <4 x float> %i.nv, ptr %i.nr, align 4, !tbaa !23
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mq, i64 144 ; 2 uses
  %i.nx = load <4 x float>, ptr %i.nw, align 4, !tbaa !23
  %i.ny = fadd <4 x float> %i.nx, zeroinitializer
  store <4 x float> %i.ny, ptr %i.nw, align 4, !tbaa !23
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mq, i64 160 ; 2 uses
  %i.oa = load <2 x float>, ptr %i.nz, align 4, !tbaa !23
  %i.ob = fadd <2 x float> %i.oa, %i.av
  store <2 x float> %i.ob, ptr %i.nz, align 4, !tbaa !23
  %i.oc = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bb) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #1

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv7Affine3IdE8rotationERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %4 = alloca %"class.cv::Matx.24", align 16      ; 10 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %6 = alloca %"class.cv::Vec.31", align 8        ; 8 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.8", align 1 ; 3 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !80
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, 6
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv7Affine3IdE8rotationERKNS_3MatE, ptr noundef nonnull @.str.27, i32 noundef 432) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60
  switch i32 %i.l, label %.thread32 [
    i32 3, label %bb.h
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !54
  switch i32 %i.n, label %.thread32 [
    i32 3, label %bb.i
    i32 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %4, i8 0, i64 72, i1 false), !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1040056314, ptr %5, align 8, !tbaa !26
  store ptr %4, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 12884901891, ptr %i.p, align 8, !tbaa !20
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.q = load <2 x double>, ptr %4, align 16, !tbaa !71
  store <2 x double> %i.q, ptr %0, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load double, ptr %i.r, align 16, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.s, ptr %i.t, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load <2 x double>, ptr %i.u, align 8, !tbaa !71
  store <2 x double> %i.w, ptr %i.v, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.y, ptr %i.z, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load <2 x double>, ptr %i.aa, align 16, !tbaa !71
  store <2 x double> %i.ac, ptr %i.ab, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ae = load double, ptr %i.ad, align 16, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.ae, ptr %i.af, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.t

bb.j:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !54
  %i.ai = icmp eq i32 %i.ah, 3
  br i1 %i.ai, label %bb.k, label %.thread32

bb.k:                                             ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 -1040056314, ptr %8, align 8, !tbaa !26
  store ptr %6, ptr %i.aj, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 12884901889, ptr %i.ak, align 8, !tbaa !20
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.al = load double, ptr %6, align 8, !tbaa !71 ; 3 uses
  %11 = call double @llvm.fmuladd.f64(double %i.al, double %i.al, double 0.000000e+00)
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !71 ; 3 uses
  %i.ao = call double @llvm.fmuladd.f64(double %i.an, double %i.an, double %11)
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !71 ; 3 uses
  %i.ar = call noundef double @llvm.fmuladd.f64(double %i.aq, double %i.aq, double %i.ao)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.ar) ; 4 uses
  %i.as = fcmp olt double %sqrt.i.i, f0x3CB0000000000000
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %_ZN2cv7Affine3IdE8rotationERKNS_3VecIdLi3EEE.exit

bb.n:                                             ; preds = %bb.l
  %i.au = call double @cos(double noundef %sqrt.i.i) #22 ; 5 uses
  %i.av = call double @sin(double noundef %sqrt.i.i) #22 ; 4 uses
  %i.aw = fsub double 1.000000e+00, %i.au         ; 6 uses
  %i.ax = fdiv double 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.ay = fmul double %i.al, %i.ax                ; 5 uses
  %i.az = fmul double %i.an, %i.ax                ; 5 uses
  %i.ba = fmul double %i.aq, %i.ax                ; 5 uses
  %i.bb = fmul double %i.ay, %i.ay
  %i.bc = fmul double %i.ay, %i.az
  %i.bd = fmul double %i.ay, %i.ba
  %i.be = fmul double %i.az, %i.az
  %i.bf = fmul double %i.az, %i.ba
  %i.bg = fmul double %i.ba, %i.ba
  %i.bh = fmul double %i.au, 0.000000e+00         ; 3 uses
  %i.bi = fmul double %i.bb, %i.aw
  %i.bj = fmul double %i.bc, %i.aw
  %i.bk = fmul double %i.bd, %i.aw
  %i.bl = fmul double %i.be, %i.aw
  %i.bm = fmul double %i.bf, %i.aw
  %i.bn = fmul double %i.bg, %i.aw
  %i.bo = fadd double %i.au, %i.bi
  %i.bp = fadd double %i.bh, %i.bj                ; 2 uses
  %i.bq = fadd double %i.bh, %i.bk                ; 2 uses
  %i.br = fadd double %i.au, %i.bl
  %i.bs = fadd double %i.bh, %i.bm                ; 2 uses
  %i.bt = fadd double %i.au, %i.bn
  %i.bu = fmul double %i.av, 0.000000e+00         ; 3 uses
  %i.bv = fmul double %i.az, %i.av                ; 2 uses
  %i.bw = fmul double %i.ba, %i.av                ; 2 uses
  %i.bx = fmul double %i.ay, %i.av                ; 2 uses
  %i.by = fadd double %i.bu, %i.bo
  %i.bz = fsub double %i.bp, %i.bw
  %i.ca = fadd double %i.bv, %i.bq
  %i.cb = fadd double %i.bw, %i.bp
  %i.cc = fadd double %i.bu, %i.br
  %i.cd = fsub double %i.bs, %i.bx
  %i.ce = fsub double %i.bq, %i.bv
  %i.cf = fadd double %i.bx, %i.bs
  %i.cg = fadd double %i.bu, %i.bt
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bz, ptr %i.ch, align 8, !tbaa !71
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ca, ptr %i.ci, align 8, !tbaa !71
  br label %_ZN2cv7Affine3IdE8rotationERKNS_3VecIdLi3EEE.exit

_ZN2cv7Affine3IdE8rotationERKNS_3VecIdLi3EEE.exit: ; preds = %bb.m, %bb.n
  %.sink34 = phi double [ 1.000000e+00, %bb.m ], [ %i.by, %bb.n ]
  %.sink33 = phi double [ 0.000000e+00, %bb.m ], [ %i.cb, %bb.n ]
  %.sink = phi double [ 1.000000e+00, %bb.m ], [ %i.cc, %bb.n ]
  %.sink92.i = phi double [ 0.000000e+00, %bb.m ], [ %i.cd, %bb.n ]
  %.sink91.i = phi double [ 0.000000e+00, %bb.m ], [ %i.ce, %bb.n ]
  %.sink90.i = phi double [ 0.000000e+00, %bb.m ], [ %i.cf, %bb.n ]
  %.sink.i = phi double [ 1.000000e+00, %bb.m ], [ %i.cg, %bb.n ]
  store double %.sink34, ptr %0, align 8, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sink33, ptr %i.cj, align 8, !tbaa !71
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink, ptr %i.ck, align 8, !tbaa !71
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sink92.i, ptr %i.cl, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sink91.i, ptr %i.cm, align 8, !tbaa !71
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %.sink90.i, ptr %i.cn, align 8, !tbaa !71
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %.sink.i, ptr %i.co, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.t

bb.o:                                             ; preds = %bb.k
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.u

.thread32:                                        ; preds = %bb.h, %bb.g, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %.thread32
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv7Affine3IdE8rotationERKNS_3MatE, ptr noundef nonnull @.str.27, i32 noundef 448) #23
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %.thread32
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.s:                                             ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.s
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !19
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.r
  %.pn20 = phi { ptr, i32 } [ %i.cq, %bb.r ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.cr, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.u

bb.t:                                             ; preds = %_ZN2cv7Affine3IdE8rotationERKNS_3VecIdLi3EEE.exit, %bb.i
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn24 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cp, %bb.o ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Vec.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !54   ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = icmp eq i32 %i.j, 1
  %or.cond13 = select i1 %i.h, i1 true, i1 %i.k
  %i.l = add nsw i32 %i.j, %i.g
  %i.m = icmp eq i32 %i.l, 4
  %or.cond15 = select i1 %or.cond13, i1 %i.m, i1 false
  br i1 %or.cond15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.o = and i32 %i.n, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_3VecIT_XT0_EEEIfLi6EEEv, ptr noundef nonnull @.str.21, i32 noundef 1301) #23
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_2
