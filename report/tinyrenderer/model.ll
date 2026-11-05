Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/model?download=true
inline.NumInlined: 459
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5ModelC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  store i64 %i.ci, ptr %i.aq, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci
  store i8 0, ptr %i.cq, align 1, !tbaa !29
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 8)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cr = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ct = load i64, ptr %i.ap, align 8, !tbaa !29
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cv = load i64, ptr %i.aj, align 8, !tbaa !28 ; 6 uses
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 2) ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.critedge75, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load ptr, ptr %3, align 8, !tbaa !16
  %bcmp = call i32 @bcmp(ptr %i.cx, ptr nonnull @.str, i64 %spec.select.i.i)
  %.not.i87 = icmp eq i32 %bcmp, 0
  %.not = icmp ne i64 %i.cv, 1
  %or.cond = and i1 %.not, %.not.i87
  br i1 %or.cond, label %bb.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99

bb.t:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.cy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.u unwind label %bb.aa      ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ar, align 8, !tbaa !78
  %i.cz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSirsERd.exit unwind label %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %_ZNSirsERd.exit.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !47
  %i.da = load ptr, ptr %i.as, align 8, !tbaa !50
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.db, ptr %i.as, align 8, !tbaa !50
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %_ZNSirsERd.exit.2
  %i.dc = load ptr, ptr %0, align 8, !tbaa !51    ; 5 uses
  %i.dd = ptrtoint ptr %i.ee to i64
  %i.de = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775776
  br i1 %i.dg, label %bb.x, label %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc90 unwind label %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.dh = ashr exact i64 %i.df, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = call i64 @llvm.umin.i64(i64 %i.di, i64 288230376151711743)
  %i.dl = select i1 %i.dj, i64 288230376151711743, i64 %i.dk ; 3 uses
  %.not.i.i.i89 = icmp ne i64 %i.dl, 0
  call void @llvm.assume(i1 %.not.i.i.i89)
  %i.dm = shl nuw nsw i64 %i.dl, 5
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #21
          to label %.noexc91 unwind label %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !47
  %.not10.i.i.i.i.i = icmp eq ptr %i.dc, %i.ee
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc91, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i ], [ %i.dn, %.noexc91 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %i.dc, %.noexc91 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !47, !alias.scope !79
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, %i.ee
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !64

_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc91
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dn, %.noexc91 ], [ %i.dq, %.lr.ph.i.i.i.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ds = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.du) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.dn, ptr %0, align 8, !tbaa !51
  store ptr %i.dr, ptr %i.as, align 8, !tbaa !50
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.dl
  store ptr %i.dv, ptr %i.at, align 8, !tbaa !80
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit

.loopexit.split-lp326.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i, %bb.l
  %lpad.loopexit.split-lp529 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.z:                                             ; preds = %bb.r
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ap
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.z
  %i.dz = load i64, ptr %i.ap, align 8, !tbaa !29
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.z, %.loopexit.split-lp326.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %.pn53 = phi { ptr, i32 } [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %lpad.loopexit.split-lp529, %.loopexit.split-lp326.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dw, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bp

bb.aa:                                            ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.ab, %bb.t
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZNSirsERd.exit:                                  ; preds = %bb.u
  %i.ec = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_ZNSirsERd.exit.1 unwind label %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit.1:                                ; preds = %_ZNSirsERd.exit
  %i.ed = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_ZNSirsERd.exit.2 unwind label %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit.2:                                ; preds = %_ZNSirsERd.exit.1
  %i.ee = load ptr, ptr %i.as, align 8, !tbaa !50 ; 5 uses
  %i.ef = load ptr, ptr %i.at, align 8, !tbaa !80
  %.not.i88 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i88, label %bb.w, label %bb.v

_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.critedge75

.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSirsERd.exit.1, %_ZNSirsERd.exit, %bb.u, %bb.x
  %lpad.loopexit.split-lp541 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bo

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99:   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %spec.select.i.i97 = call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 3) ; 2 uses
  %i.eg = load ptr, ptr %3, align 8, !tbaa !16    ; 3 uses
  %bcmp314 = call i32 @bcmp(ptr %i.eg, ptr nonnull @.str.1, i64 %spec.select.i.i97)
  %.not.i100 = icmp eq i32 %bcmp314, 0
  %.not58 = icmp ugt i64 %i.cv, 2                 ; 2 uses
  %or.cond317 = and i1 %.not58, %.not.i100
  br i1 %or.cond317, label %bb.ab, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117

bb.ab:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99
  %i.eh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ac unwind label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  %i.ei = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ad unwind label %bb.aa     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.ej = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSirsERd.exit112 unwind label %.loopexit.split-lp336.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit112:                               ; preds = %bb.ad
  %i.ek = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i.2.i.i.i)
          to label %_ZNSirsERd.exit112.1 unwind label %.loopexit.split-lp336.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit112.1:                             ; preds = %_ZNSirsERd.exit112
  %i.el = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i.1.i.i.i)
          to label %_ZNSirsERd.exit112.2 unwind label %.loopexit.split-lp336.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit112.2:                             ; preds = %_ZNSirsERd.exit112.1
  %i.em = load <2 x double>, ptr %spec.select.i.1.i.i.i, align 16, !tbaa !46, !noalias !81 ; 3 uses
  %12 = extractelement <2 x double> %i.em, i64 1  ; 2 uses
  %13 = call double @llvm.fmuladd.f64(double %12, double %12, double 0.000000e+00)
  %i.en = extractelement <2 x double> %i.em, i64 0 ; 2 uses
  %i.eo = call double @llvm.fmuladd.f64(double %i.en, double %i.en, double %13)
  %i.ep = load <2 x double>, ptr %7, align 16, !tbaa !46, !noalias !81 ; 3 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 1 ; 2 uses
  %i.er = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %i.eo)
  %i.es = extractelement <2 x double> %i.ep, i64 0 ; 2 uses
  %i.et = call noundef double @llvm.fmuladd.f64(double %i.es, double %i.es, double %i.er)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.et)
  %i.eu = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = fdiv <2 x double> %i.em, %i.ev          ; 2 uses
  %i.ex = fdiv <2 x double> %i.ep, %i.ev          ; 2 uses
  %i.ey = load ptr, ptr %i.au, align 8, !tbaa !50 ; 7 uses
  %i.ez = load ptr, ptr %i.av, align 8, !tbaa !80
  %.not.i.i = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSirsERd.exit112.2
  store <2 x double> %i.ex, ptr %i.ey, align 8, !tbaa !46
  %.sroa.10.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <2 x double> %i.ew, ptr %.sroa.10.0..sroa_idx289, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store ptr %i.fa, ptr %i.au, align 8, !tbaa !50
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit

bb.af:                                            ; preds = %_ZNSirsERd.exit112.2
  %i.fb = load ptr, ptr %i.e, align 8, !tbaa !51  ; 5 uses
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 3 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775776
  br i1 %i.ff, label %bb.ag, label %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc113 unwind label %.loopexit.split-lp336.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc113:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.fg = ashr exact i64 %i.fe, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 288230376151711743)
  %i.fk = select i1 %i.fi, i64 288230376151711743, i64 %i.fj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fl = shl nuw nsw i64 %i.fk, 5
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #21
          to label %.noexc114 unwind label %.loopexit.split-lp336.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe ; 2 uses
  store <2 x double> %i.ex, ptr %i.fn, align 8, !tbaa !46
  %.sroa.10.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <2 x double> %i.ew, ptr %.sroa.10.0..sroa_idx291, align 8, !tbaa !46
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fb, %i.ey
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc114, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i ], [ %i.fm, %.noexc114 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i ], [ %i.fb, %.noexc114 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !47, !alias.scope !82
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fo, %i.ey
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !64

_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc114
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fm, %.noexc114 ], [ %i.fp, %.lr.ph.i.i.i.i.i.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.fr = load ptr, ptr %i.av, align 8, !tbaa !80
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = sub i64 %i.fs, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.ft) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.fm, ptr %i.e, align 8, !tbaa !51
  store ptr %i.fq, ptr %i.au, align 8, !tbaa !50
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.fu, ptr %i.av, align 8, !tbaa !80
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.critedge75

.loopexit.split-lp336.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSirsERd.exit112.1, %_ZNSirsERd.exit112, %bb.ad, %bb.ag
  %lpad.loopexit.split-lp538 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.bo

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99
  %bcmp315 = call i32 @bcmp(ptr %i.eg, ptr nonnull @.str.2, i64 %spec.select.i.i97)
  %.not.i118 = icmp eq i32 %bcmp315, 0
  %or.cond318 = and i1 %.not58, %.not.i118
  br i1 %or.cond318, label %bb.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i143

bb.ai:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117
  %i.fv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.aj unwind label %bb.aa

bb.aj:                                            ; preds = %bb.ai
  %i.fw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ak unwind label %bb.aa     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.fx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNSirsERd.exit140 unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.al:                                            ; preds = %_ZNSirsERd.exit140.1
  store double %i.gu, ptr %i.gx, align 8, !tbaa !46
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store double %i.gw, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store ptr %i.fy, ptr %i.bd, align 8, !tbaa !83
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit

bb.am:                                            ; preds = %_ZNSirsERd.exit140.1
  %i.fz = load ptr, ptr %i.f, align 8, !tbaa !55  ; 5 uses
  %i.ga = ptrtoint ptr %i.gx to i64
  %i.gb = ptrtoint ptr %i.fz to i64               ; 2 uses
  %i.gc = sub i64 %i.ga, %i.gb                    ; 3 uses
  %i.gd = icmp eq i64 %i.gc, 9223372036854775792
  br i1 %i.gd, label %bb.an, label %_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc135 unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc135:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.am
  %i.ge = ashr exact i64 %i.gc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gf = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.ge ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ge
  %i.gh = call i64 @llvm.umin.i64(i64 %i.gf, i64 576460752303423487)
  %i.gi = select i1 %i.gg, i64 576460752303423487, i64 %i.gh ; 3 uses
  %.not.i.i.i.i127 = icmp ne i64 %i.gi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i127)
  %i.gj = shl nuw nsw i64 %i.gi, 4
  %i.gk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #21
          to label %.noexc136 unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gc ; 2 uses
  store double %i.gu, ptr %i.gl, align 8, !tbaa !46
  %.sroa.6.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store double %i.gw, ptr %.sroa.6.0..sroa_idx276, align 8, !tbaa !46
  %.not10.i.i.i.i.i.i128 = icmp eq ptr %i.fz, %i.gx
  br i1 %.not10.i.i.i.i.i.i128, label %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i129:                            ; preds = %.noexc136, %.lr.ph.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i130 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i.i129 ], [ %i.gk, %.noexc136 ] ; 2 uses
  %.0911.i.i.i.i.i.i131 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i.i129 ], [ %i.fz, %.noexc136 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i130, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i131, i64 16, i1 false), !tbaa.struct !84, !alias.scope !85
  %i.gm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i131, i64 16 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i130, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i132 = icmp eq ptr %i.gm, %i.gx
  br i1 %.not.i.i.i.i.i.i132, label %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i129, !llvm.loop !73

_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i129, %.noexc136
  %.0.lcssa.i.i.i.i.i.i133 = phi ptr [ %i.gk, %.noexc136 ], [ %i.gn, %.lr.ph.i.i.i.i.i.i129 ]
  %i.go = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i133, i64 16
  %.not.i23.i.i.i134 = icmp eq ptr %i.fz, null
  br i1 %.not.i23.i.i.i134, label %_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.gp = load ptr, ptr %i.be, align 8, !tbaa !86
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gr) #22
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.gk, ptr %i.f, align 8, !tbaa !55
  store ptr %i.go, ptr %i.bd, align 8, !tbaa !83
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.gi
  store ptr %i.gs, ptr %i.be, align 8, !tbaa !86
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit

_ZNSirsERd.exit140:                               ; preds = %bb.ak
  %i.gt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %_ZNSirsERd.exit140.1 unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit140.1:                             ; preds = %_ZNSirsERd.exit140
  %i.gu = load double, ptr %8, align 8, !tbaa !88 ; 2 uses
  %i.gv = load double, ptr %i.bc, align 8, !tbaa !89
  %i.gw = fsub double 1.000000e+00, %i.gv         ; 2 uses
  %i.gx = load ptr, ptr %i.bd, align 8, !tbaa !83 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN8TGAImage13read_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
declare noundef zeroext i1 @_ZN8TGAImage13read_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !44

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !29
  store i8 %i.u, ptr %i.s, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !29
  store i8 %i.y, ptr %i.x, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !29
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !16
  store i64 %.0, ptr %i.h, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK5Model4vertEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.vec) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1, i32 noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = load ptr, ptr %1, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !tbaa.struct !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK5Model4vertEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.vec) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = mul nsw i32 %2, 3
  %i.c = add nsw i32 %i.b, %3
  %i.d = sext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %1, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !tbaa.struct !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK5Model6normalEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.vec) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = mul nsw i32 %2, 3
  %i.d = add nsw i32 %i.c, %3
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56
  %i.i = sext i32 %i.h to i64
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !tbaa.struct !47
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.vec) align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.b = load double, ptr %2, align 8, !tbaa !46
  %i.c = tail call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.d = sitofp i32 %i.c to double
  %i.e = fmul double %i.b, %i.d
  %i.f = fptosi double %i.e to i32
  %.in.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %.in.i, align 8, !tbaa !46
  %i.h = tail call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.i = sitofp i32 %i.h to double
  %i.j = fmul double %i.g, %i.i
  %i.k = fptosi double %i.j to i32
  %i.l = tail call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %i.f, i32 noundef %i.k) ; 2 uses
  %.sroa.018.0.extract.trunc = trunc i40 %i.l to i8
  %i.m = uitofp i8 %.sroa.018.0.extract.trunc to double
  %i.n = fmul nnan double %i.m, 2.000000e+00
  %i.o = fdiv double %i.n, 2.550000e+02
  %i.p = fadd double %i.o, -1.000000e+00          ; 3 uses
  %3 = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double 0.000000e+00)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = insertelement <2 x i40> poison, i40 %i.l, i64 0
  %i.r = shufflevector <2 x i40> %i.q, <2 x i40> poison, <2 x i32> zeroinitializer
  %i.s = lshr <2 x i40> %i.r, <i40 16, i40 8>
  %i.t = trunc <2 x i40> %i.s to <2 x i8>
  %i.u = uitofp <2 x i8> %i.t to <2 x double>
  %i.v = fmul nnan <2 x double> %i.u, splat (double 2.000000e+00)
  %i.w = fdiv <2 x double> %i.v, splat (double 2.550000e+02)
  %i.x = fadd <2 x double> %i.w, splat (double -1.000000e+00) ; 3 uses
  %i.y = extractelement <2 x double> %i.x, i64 1  ; 2 uses
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %3)
  %i.aa = extractelement <2 x double> %i.x, i64 0 ; 2 uses
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.z)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ab)
  %i.ac = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.p, i64 0
  %i.ad = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = fdiv <2 x double> %i.ac, %i.ae
  store <2 x double> %i.af, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !46, !alias.scope !107
  %i.ag = fdiv <2 x double> %i.x, %i.ae
  store <2 x double> %i.ag, ptr %0, align 8, !tbaa !46, !alias.scope !107
  ret void
}

declare i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_ZNK5Model2uvEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = mul nsw i32 %1, 3
  %i.d = add nsw i32 %i.c, %2
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56
  %i.i = sext i32 %i.h to i64
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.k, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !46
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.2.0.copyload, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(264) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(264) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !7, i64 16}
!16 = !{!15, !12, i64 0}
!17 = !{!"vtable pointer", !6, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !14, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!24 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!25 = !{!"_ZTSSt6locale", !24, i64 0}
!26 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !22, i64 48, !7, i64 64, !8, i64 192, !23, i64 200, !25, i64 208}
!27 = !{!13, !12, i64 0}
!28 = !{!15, !14, i64 8}
!29 = !{!7, !7, i64 0}
!30 = !{!"p1 _ZTSSo", !11, i64 0}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 0, !30, i64 216, !7, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!37 = !{!36, !33, i64 240}
!38 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!40 = !{!"p1 int", !11, i64 0}
!41 = !{!"p1 short", !11, i64 0}
!42 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!43 = !{!42, !7, i64 56}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!"double", !7, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46, i64 24, i64 8, !46}
!48 = !{!"p1 _ZTS3vecILi4EE", !11, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseI3vecILi4EESaIS1_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!49, !48, i64 8}
!51 = !{!49, !48, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"p1 _ZTS3vecILi2EE", !11, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseI3vecILi2EESaIS1_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!54, !53, i64 0}
!56 = !{!8, !8, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!58 = !{!57, !40, i64 8}
!59 = !{!57, !40, i64 0}
!60 = distinct !{null}
!61 = distinct !{!61, i1 true, !"_ZSt19__relocate_object_aI3vecILi4EES1_SaIS1_EEvPT_PT0_RT1_"}
!62 = distinct !{!62, !61, !"_ZSt19__relocate_object_aI3vecILi4EES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!63 = distinct !{!63, !61, !"_ZSt19__relocate_object_aI3vecILi4EES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, i1 true, !"_Z10normalizedILi4EE3vecIXT_EERKS1_"}
!66 = distinct !{!66, !65, !"_Z10normalizedILi4EE3vecIXT_EERKS1_: argument 0"}
!67 = distinct !{!67, i1 true, !"_ZSt19__relocate_object_aI3vecILi4EES1_SaIS1_EEvPT_PT0_RT1_"}
!68 = distinct !{!68, !67, !"_ZSt19__relocate_object_aI3vecILi4EES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!69 = distinct !{!69, !67, !"_ZSt19__relocate_object_aI3vecILi4EES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!70 = distinct !{!70, i1 true, !"_ZSt19__relocate_object_aI3vecILi2EES1_SaIS1_EEvPT_PT0_RT1_"}
!71 = distinct !{!71, !70, !"_ZSt19__relocate_object_aI3vecILi2EES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!72 = distinct !{!72, !70, !"_ZSt19__relocate_object_aI3vecILi2EES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!73 = distinct !{!73, !52}
!74 = distinct !{!74, !52}
!75 = distinct !{!75, !52}
!76 = !{!26, !20, i64 32}
!77 = !{!"_ZTS3vecILi4EE", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!78 = !{!77, !45, i64 24}
!79 = !{!63, !62}
!80 = !{!49, !48, i64 16}
!81 = !{!66}
!82 = !{!69, !68}
!83 = !{!54, !53, i64 8}
!84 = !{i64 0, i64 8, !46, i64 8, i64 8, !46}
!85 = !{!72, !71}
!86 = !{!54, !53, i64 16}
!87 = !{!"_ZTS3vecILi2EE", !45, i64 0, !45, i64 8}
end_hunk_1
