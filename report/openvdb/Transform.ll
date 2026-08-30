Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Transform?download=true
begin_hunk_0_@_ZNK7openvdb5v13_04math8ScaleMap12preTranslateERKNS1_4Vec3IdEE:bb.a
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_17ScaleTranslateMapEvEEPT_.exit: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 1, ptr %i.x, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math17ScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.m, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.k, ptr %i.y, align 8, !tbaa !23
  store ptr %i.m, ptr %i.l, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.g:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 152) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math17ScaleTranslateMapE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !8
  %i.g = tail call noundef double @llvm.fabs.f64(double %i.f)
  %i.h = load <2 x double>, ptr %1, align 8, !tbaa !8
  %i.i = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.h)
  store <2 x double> %i.i, ptr %i.c, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.g, ptr %i.j, align 8, !tbaa !8
  %i.k = load double, ptr %1, align 8, !tbaa !8
  %i.l = load double, ptr %i.d, align 8, !tbaa !8
  %i.m = load double, ptr %i.e, align 8, !tbaa !8
  %i.n = fmul double %i.k, %i.l
  %i.o = fmul double %i.n, %i.m
  %i.p = tail call noundef double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp olt double %i.p, f0x3CEB05876E5B0121
  br i1 %i.q, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !29
  store i8 0, ptr %i.r, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.18, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #24 ; 0 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !32
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %i.ab, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.aa, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ad = call ptr @__cxa_begin_catch(ptr %.1) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.ae, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #26
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.r
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.k
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !32
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.af

bb.l:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load double, ptr %i.ak, align 8, !tbaa !8, !noalias !34
  %i.am = fdiv double 1.000000e+00, %i.al         ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load <2 x double>, ptr %i.b, align 8, !tbaa !8, !noalias !34
  %i.ap = fdiv <2 x double> splat (double 1.000000e+00), %i.ao ; 4 uses
  store <2 x double> %i.ap, ptr %i.an, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.am, ptr %.sroa.626.0..sroa_idx, align 8
  %i.aq = fmul double %i.am, %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = fmul <2 x double> %i.ap, %i.ap
  store <2 x double> %i.as, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.aq, ptr %.sroa.6.0..sroa_idx, align 8
  %i.at = fmul double %i.am, 5.000000e-01
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = fmul <2 x double> %i.ap, splat (double 5.000000e-01)
  store <2 x double> %i.av, ptr %i.au, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.at, ptr %.sroa.9.0..sroa_idx, align 8
  ret void

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math15UniformScaleMap12preTranslateERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !8 ; 5 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.e = load double, ptr %i.d, align 16, !tbaa !8, !alias.scope !37
  %i.f = fmul double %i.b, %i.e
  %i.g = load <2 x double>, ptr %4, align 16, !tbaa !8, !alias.scope !37
  %i.h = insertelement <2 x double> poison, double %i.b, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x double> %i.i, %i.g
  store <2 x double> %i.j, ptr %4, align 16, !tbaa !8, !alias.scope !37
  store double %i.f, ptr %i.d, align 16, !tbaa !8, !alias.scope !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store double %i.b, ptr %3, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.b, ptr %i.k, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.b, ptr %i.l, align 8, !tbaa !8
  invoke void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.h, !inline_history !42

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math24UniformScaleTranslateMapE, i64 16), ptr %i.c, align 8, !tbaa !17
  store ptr %i.c, ptr %0, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !16
  %i.n = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.g unwind label %bb.c       ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #24 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 152) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 1, ptr %i.v, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math24UniformScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.n, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.c, ptr %i.w, align 8, !tbaa !43
  store ptr %i.n, ptr %i.m, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

.body:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 152) #28
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.r, %.body ]
  resume { ptr, i32 } %eh.lpad-body8
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math17ScaleTranslateMap8preScaleERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !8, !noalias !46
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load double, ptr %i.d, align 8, !tbaa !8, !noalias !46
  %i.f = fmul double %i.c, %i.e                   ; 2 uses
  %i.g = load <2 x double>, ptr %2, align 8, !tbaa !8, !noalias !46
  %i.h = load <2 x double>, ptr %i.a, align 8, !tbaa !8, !noalias !46
  %i.i = fmul <2 x double> %i.g, %i.h             ; 4 uses
  store <2 x double> %i.i, ptr %4, align 16, !tbaa !8, !alias.scope !46
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.f, ptr %i.j, align 16, !tbaa !8, !alias.scope !46
  %i.k = extractelement <2 x double> %i.i, i64 0  ; 4 uses
  %shift = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.i, %shift
  %i.l = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.m = tail call noundef double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ule double %i.m, 1.000000e-15
  br i1 %i.n, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.o = fsub double %i.k, %i.f
  %i.p = tail call noundef double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp ule double %i.p, 1.000000e-15
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store double %i.k, ptr %3, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.k, ptr %i.t, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.k, ptr %i.u, align 8, !tbaa !8
  invoke void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.d unwind label %bb.i, !inline_history !42

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math24UniformScaleTranslateMapE, i64 16), ptr %i.r, align 8, !tbaa !17
  store ptr %i.r, ptr %0, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !16
  %i.w = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_24UniformScaleTranslateMapEvEEPT_.exit unwind label %bb.e ; 5 uses

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #24 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 152) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.g

common.resume:                                    ; preds = %bb.l, %bb.f, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.aa, %bb.f ], [ %i.ar, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_24UniformScaleTranslateMapEvEEPT_.exit: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 1, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 1, ptr %i.ae, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math24UniformScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.w, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.r, ptr %i.af, align 8, !tbaa !43
  store ptr %i.w, ptr %i.v, align 8, !tbaa !16
  br label %bb.p

bb.i:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.ah = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %.critedge
  store ptr %i.ah, ptr %0, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !16
  %i.ak = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_17ScaleTranslateMapEvEEPT_.exit unwind label %bb.k ; 5 uses

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  %i.an = call ptr @__cxa_begin_catch(ptr %i.am) #24 ; 0 uses
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04math19NonlinearFrustumMap8preScaleERKNS1_4Vec3IdEE:bb.a
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.q

bb.p:                                             ; preds = %.thread11, %.thread
  %.pn10 = phi { ptr, i32 } [ %i.aj, %.thread ], [ %i.ak, %.thread11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn9 = phi { ptr, i32 } [ %i.m, %bb.o ], [ %.pn10, %bb.p ]
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMapD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(520) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform4readERSi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !17
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !114
  %i.f = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4), !noalias !114 ; 0 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !49, !noalias !114
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !26, !alias.scope !114
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.h, i8 noundef signext 32)
  %i.j = load i32, ptr %i.a, align 4, !tbaa !49, !noalias !114 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_010readStringB5cxx11ERSi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !33, !alias.scope !114
  %i.l = zext i32 %i.j to i64
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.k, i64 noundef %i.l)
          to label %_ZN7openvdb5v13_010readStringB5cxx11ERSi.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %2, align 8, !tbaa !33, !alias.scope !114 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.i, align 8, !tbaa !32, !alias.scope !114
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !114
  br label %common.resume

_ZN7openvdb5v13_010readStringB5cxx11ERSi.exit:    ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !114
  %i.s = invoke noundef zeroext i1 @_ZN7openvdb5v13_04math11MapRegistry12isRegisteredERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN7openvdb5v13_010readStringB5cxx11ERSi.exit
  br i1 %i.s, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !29
  store i8 0, ptr %i.t, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.w = load ptr, ptr %2, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.w, i64 noundef %i.y)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.1, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #24 ; 0 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.n

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN7openvdb5v13_010readStringB5cxx11ERSi.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.i:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.aj, %bb.j ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.ai, %bb.i ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.al = call ptr @__cxa_begin_catch(ptr %.1) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_08KeyErrorE, i64 16), ptr %i.am, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN7openvdb5v13_08KeyErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #26
          to label %bb.ag unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.t
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.o
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !32
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.af

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN7openvdb5v13_04math11MapRegistry9createMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load <2 x ptr>, ptr %6, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !16 ; 8 uses
  store <2 x ptr> %i.au, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.aw, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !22
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #24, !inline_history !68
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.t:                                             ; preds = %bb.r
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.az, %bb.u ], [ %i.bj, %bb.v ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.w, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !16 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bm, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !22
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #24, !inline_history !69
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i = phi i32 [ %i.bp, %bb.aa ], [ %i.bz, %bb.ab ]
  %i.ca = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ca, label %bb.ac, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.cb = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 136
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ad unwind label %bb.h

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cf = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.i
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.ad
  %i.ch = load i64, ptr %i.i, align 8, !tbaa !32
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.ae:                                            ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.h
  %.pn7 = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.cj, %bb.ae ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  %i.ck = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.i
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.af
  %i.cm = load i64, ptr %i.i, align 8, !tbaa !32
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

bb.ag:                                            ; preds = %bb.n
  unreachable
}

declare void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN7openvdb5v13_04math11MapRegistry12isRegisteredERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @_ZN7openvdb5v13_04math11MapRegistry9createMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_04math9Transform5writeERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !29
  store i8 0, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.2, i64 noundef 29)
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_04math19NonlinearFrustumMap10isIdentityEv:bb.a

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i
  %i.cc = tail call noundef double @llvm.fabs.f64(double %i.bo)
  %i.cd = fcmp ogt double %i.cc, f0x3E7AD7F29ABCAF48
  br i1 %i.cd, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread41

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit:   ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i
  %i.ce = fdiv double %i.bo, %i.bo
  %i.cf = tail call noundef double @llvm.fabs.f64(double %i.ce)
  %i.cg = fcmp ugt double %i.cf, f0x3E7AD7F29ABCAF48
  br i1 %i.cg, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread41

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread41: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit
  %i.ch = fsub double 0.000000e+00, %i.g
  %i.ci = fsub double 1.000000e+00, %i.j
  %i.cj = fsub double %i.ch, %i.p                 ; 2 uses
  %i.ck = fsub double %i.ci, %i.s
  %i.cl = fmul double %i.cj, %i.ac                ; 2 uses
  %i.cm = fmul double %i.ck, %i.ac                ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.co, %i.al
  %i.cq = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.ao, <2 x double> %i.cp) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ai, double %i.ct)
  %i.cv = fadd double %i.ak, %i.cu                ; 3 uses
  %i.cw = extractelement <2 x double> %i.cs, i64 1
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ay, double %i.cw)
  %i.cy = fadd double %i.bb, %i.cx                ; 3 uses
  %i.cz = fmul double %i.cm, %i.bg
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.be, double %i.cz)
  %i.db = tail call double @llvm.fmuladd.f64(double %i.w, double %i.bk, double %i.da)
  %i.dc = fadd double %i.bn, %i.db                ; 3 uses
  %i.dd = tail call noundef double @llvm.fabs.f64(double %i.cv)
  %i.de = fcmp ogt double %i.dd, f0x3E7AD7F29ABCAF48
  br i1 %i.de, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i12, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i7

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i12: ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread41
  %i.df = fdiv double %i.cv, %i.cv
  %i.dg = tail call noundef double @llvm.fabs.f64(double %i.df)
  %i.dh = fcmp ugt double %i.dg, f0x3E7AD7F29ABCAF48
  br i1 %i.dh, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i7

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i7: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i12, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread41
  %i.di = fadd double %i.cy, -1.000000e+00        ; 2 uses
  %i.dj = tail call noundef double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp ogt double %i.dj, f0x3E7AD7F29ABCAF48
  br i1 %i.dk, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i10, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i8

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i10: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i7
  %i.dl = tail call noundef double @llvm.fabs.f64(double %i.cy)
  %i.dm = fcmp olt double %i.dl, 1.000000e+00
  %..i5.i11 = select i1 %i.dm, double 1.000000e+00, double %i.cy
  %i.dn = fdiv double %i.di, %..i5.i11
  %i.do = tail call noundef double @llvm.fabs.f64(double %i.dn)
  %i.dp = fcmp ugt double %i.do, f0x3E7AD7F29ABCAF48
  br i1 %i.dp, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i8

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i8: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i10, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i7
  %i.dq = tail call noundef double @llvm.fabs.f64(double %i.dc)
  %i.dr = fcmp ogt double %i.dq, f0x3E7AD7F29ABCAF48
  br i1 %i.dr, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14.thread42

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i8
  %i.ds = fdiv double %i.dc, %i.dc
  %i.dt = tail call noundef double @llvm.fabs.f64(double %i.ds)
  %i.du = fcmp ugt double %i.dt, f0x3E7AD7F29ABCAF48
  br i1 %i.du, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14.thread42

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14.thread42: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i8, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14
  %i.dv = fsub double 1.000000e+00, %i.m
  %i.dw = fmul double %i.dv, %i.v                 ; 4 uses
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.y, double %i.dw, double 1.000000e+00)
  %i.dy = fdiv double %i.dx, %i.ab                ; 2 uses
  %i.dz = fmul double %i.cj, %i.dy                ; 3 uses
  %i.ea = fmul double %i.t, %i.dy                 ; 3 uses
  %i.eb = fmul double %i.ea, %i.am
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ap, double %i.eb)
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.ai, double %i.ec)
  %i.ee = fadd double %i.ak, %i.ed                ; 3 uses
  %i.ef = fmul double %i.ea, %i.at
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.av, double %i.ef)
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.ay, double %i.eg)
  %i.ei = fadd double %i.bb, %i.eh                ; 3 uses
  %i.ej = fmul double %i.ea, %i.bg
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.be, double %i.ej)
  %i.el = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.bk, double %i.ek)
  %i.em = fadd double %i.bn, %i.el                ; 3 uses
  %i.en = tail call noundef double @llvm.fabs.f64(double %i.ee)
  %i.eo = fcmp ogt double %i.en, f0x3E7AD7F29ABCAF48
  br i1 %i.eo, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i25, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i20

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i25: ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14.thread42
  %i.ep = fdiv double %i.ee, %i.ee
  %i.eq = tail call noundef double @llvm.fabs.f64(double %i.ep)
  %i.er = fcmp ugt double %i.eq, f0x3E7AD7F29ABCAF48
  br i1 %i.er, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i20

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i20: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i25, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14.thread42
  %i.es = tail call noundef double @llvm.fabs.f64(double %i.ei)
  %i.et = fcmp ogt double %i.es, f0x3E7AD7F29ABCAF48
  br i1 %i.et, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i23, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i23: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i20
  %i.eu = fdiv double %i.ei, %i.ei
  %i.ev = tail call noundef double @llvm.fabs.f64(double %i.eu)
  %i.ew = fcmp ugt double %i.ev, f0x3E7AD7F29ABCAF48
  br i1 %i.ew, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i23, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i20
  %i.ex = fadd double %i.em, -1.000000e+00        ; 2 uses
  %i.ey = tail call noundef double @llvm.fabs.f64(double %i.ex)
  %i.ez = fcmp ogt double %i.ey, f0x3E7AD7F29ABCAF48
  br i1 %i.ez, label %bb.c, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27

bb.c:                                             ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21
  %i.fa = tail call noundef double @llvm.fabs.f64(double %i.em)
  %i.fb = fcmp olt double %i.fa, 1.000000e+00
  %..i8.i22 = select i1 %i.fb, double 1.000000e+00, double %i.em
  %i.fc = fdiv double %i.ex, %..i8.i22
  %i.fd = tail call noundef double @llvm.fabs.f64(double %i.fc)
  %i.fe = fcmp ole double %i.fd, f0x3E7AD7F29ABCAF48
  br label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i12, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i10, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit, %bb.c, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i23, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i25, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21 ], [ false, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i ], [ false, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14 ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i23 ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i25 ], [ %i.fe, %bb.c ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i10 ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i12 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !22
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !71
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !71
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform9preRotateEdNS1_4AxisE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %1, i32 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %3, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !22
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !22
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform12preTranslateERKNS1_4Vec3IdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !22
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !22
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform8preScaleERKNS1_4Vec3IdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !22
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !22
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform8preScaleEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, double noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store double %1, ptr %2, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %1, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %1, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <2 x ptr>, ptr %3, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !16   ; 8 uses
  store <2 x ptr> %i.i, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !22
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !68
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aa, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !22
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !69
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.k ], [ %i.an, %bb.l ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform8preShearEdNS1_4AxisES3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, double noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %1, i32 noundef %2, i32 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %4, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !22
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !22
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform7preMultERKNS1_4Mat4IdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.3", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Mat4", align 16 ; 22 uses
  %4 = alloca %"class.std::shared_ptr.3", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %6 = alloca %"class.std::shared_ptr.3", align 8 ; 4 uses
  %7 = alloca %"class.std::shared_ptr.10", align 8 ; 8 uses
  %8 = alloca %"class.openvdb::v13_0::math::Mat4", align 16 ; 22 uses
  %9 = alloca %"class.openvdb::v13_0::math::AffineMap", align 8 ; 5 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.e, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.j = load ptr, ptr %2, align 8, !tbaa !117    ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.12155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.20163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.28171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.36179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.44187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %.sroa.52195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load <2 x double>, ptr %i.k, align 8     ; 4 uses
  %i.m = load <2 x double>, ptr %.sroa.20163.0..sroa_idx, align 8 ; 4 uses
  %i.n = load <2 x double>, ptr %.sroa.36179.0..sroa_idx, align 8 ; 4 uses
  %i.o = load <2 x double>, ptr %.sroa.52195.0..sroa_idx, align 8 ; 4 uses
  %.sroa.60203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.p = load <2 x double>, ptr %.sroa.12155.0..sroa_idx, align 8 ; 4 uses
  %i.q = load <2 x double>, ptr %.sroa.28171.0..sroa_idx, align 8 ; 4 uses
  %i.r = load <2 x double>, ptr %.sroa.44187.0..sroa_idx, align 8 ; 4 uses
  %i.s = load <2 x double>, ptr %.sroa.60203.0..sroa_idx, align 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.v, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !22
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #24, !inline_history !70
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #24, !inline_history !70
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.h, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %i.ak = load <2 x double>, ptr %3, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ao = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i, align 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ap = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.aq = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i, align 16
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ar = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.as = load <2 x double>, ptr %.sroa.11.0..sroa_idx.i, align 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.at = load <2 x double>, ptr %.sroa.12.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.au = load <2 x double>, ptr %.sroa.13.0..sroa_idx.i, align 16
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.av = load <2 x double>, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.aw = load <2 x double>, ptr %.sroa.15.0..sroa_idx.i, align 16
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ax = load <2 x double>, ptr %.sroa.16.0..sroa_idx.i, align 8
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ay = load <2 x double>, ptr %.sroa.17.0..sroa_idx.i, align 16
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  %.sroa.18.0.copyload.i = load double, ptr %.sroa.18.0..sroa_idx.i, align 8
  %i.az = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = fmul <2 x double> %i.m, %i.az
  %i.bb = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.l, <2 x double> %i.ba)
  %i.bd = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.n, <2 x double> %i.bc)
  %i.bf = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.o, <2 x double> %i.be)
  store <2 x double> %i.bg, ptr %3, align 16, !tbaa !8
  %i.bh = fmul <2 x double> %i.q, %i.az
  %i.bi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.p, <2 x double> %i.bh)
  %i.bj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.r, <2 x double> %i.bi)
  %i.bk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.s, <2 x double> %i.bj)
  store <2 x double> %i.bk, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !8
  %i.bl = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = fmul <2 x double> %i.m, %i.bl
  %i.bn = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.l, <2 x double> %i.bm)
  %i.bp = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.n, <2 x double> %i.bo)
  %i.br = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.o, <2 x double> %i.bq)
  store <2 x double> %i.bs, ptr %.sroa.7.0..sroa_idx.i, align 16, !tbaa !8
  %i.bt = fmul <2 x double> %i.q, %i.bl
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.p, <2 x double> %i.bt)
  %i.bv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.r, <2 x double> %i.bu)
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.s, <2 x double> %i.bv)
  store <2 x double> %i.bw, ptr %.sroa.9.0..sroa_idx.i, align 16, !tbaa !8
  %i.bx = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = fmul <2 x double> %i.m, %i.bx
  %i.bz = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.l, <2 x double> %i.by)
  %i.cb = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.n, <2 x double> %i.ca)
  %i.cd = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.o, <2 x double> %i.cc)
  store <2 x double> %i.ce, ptr %.sroa.11.0..sroa_idx.i, align 16, !tbaa !8
  %i.cf = fmul <2 x double> %i.q, %i.bx
  %i.cg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.p, <2 x double> %i.cf)
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.r, <2 x double> %i.cg)
  %i.ci = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.s, <2 x double> %i.ch)
  store <2 x double> %i.ci, ptr %.sroa.13.0..sroa_idx.i, align 16, !tbaa !8
  %i.cj = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fmul <2 x double> %i.m, %i.cj
  %i.cl = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.l, <2 x double> %i.ck)
  %i.cn = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.n, <2 x double> %i.cm)
  %i.cp = insertelement <2 x double> poison, double %.sroa.18.0.copyload.i, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.o, <2 x double> %i.co)
  store <2 x double> %i.cr, ptr %.sroa.15.0..sroa_idx.i, align 16, !tbaa !8
  %i.cs = fmul <2 x double> %i.q, %i.cj
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.p, <2 x double> %i.cs)
  %i.cu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.r, <2 x double> %i.ct)
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.s, <2 x double> %i.cu)
  store <2 x double> %i.cv, ptr %.sroa.17.0..sroa_idx.i, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cw = call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #25 ; 6 uses
  invoke void @_ZN7openvdb5v13_04math9AffineMapC2ERKNS1_4Mat4IdEE(ptr noundef nonnull align 8 dereferenceable(376) %i.cw, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.i unwind label %bb.ap

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %i.cw, ptr %4, align 8, !tbaa !117
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cy = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.n unwind label %bb.j       ; 6 uses

bb.j:                                             ; preds = %bb.i
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  %i.db = call ptr @__cxa_begin_catch(ptr %i.da) #24 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 376) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.l

common.resume:                                    ; preds = %bb.ar, %bb.cl, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.dc, %bb.k ], [ %.pn17, %bb.ar ], [ %.pn.pn.pn, %bb.cl ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #27
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  store i32 1, ptr %i.df, align 8, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 1, ptr %i.dg, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cy, align 8, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.cw, ptr %i.dh, align 8, !tbaa !92
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.cw, ptr %6, align 8, !tbaa !117
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.cy, ptr %i.di, align 8, !tbaa !16
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr %i.df, align 8, !tbaa !49
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit

bb.p:                                             ; preds = %bb.n
  %i.dk = atomicrmw volatile add ptr %i.df, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit: ; preds = %bb.o, %bb.p
  invoke void @_ZN7openvdb5v13_04math8simplifyESt10shared_ptrINS1_9AffineMapEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.q unwind label %bb.aq

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = load <2 x ptr>, ptr %5, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !16 ; 8 uses
  store <2 x ptr> %i.dn, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i21 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i21, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.dp, align 8, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !22
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !17
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #24, !inline_history !68
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.t:                                             ; preds = %bb.r
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.ds, %bb.u ], [ %i.ec, %bb.v ]
  %i.ed = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ed, label %bb.w, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w
  %i.ee = load ptr, ptr %i.dl, align 8, !tbaa !16 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ef, align 8, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !22
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #24, !inline_history !69
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i23 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i23, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.ab:                                            ; preds = %bb.z
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i25 = phi i32 [ %i.ei, %bb.aa ], [ %i.es, %bb.ab ]
  %i.et = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.et, label %bb.ac, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.ac
  %i.eu = load ptr, ptr %i.di, align 8, !tbaa !16 ; 8 uses
  %.not.i.i26 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 4 uses
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 4294967297
  %i.ey = trunc i64 %i.ew to i32                  ; 2 uses
  br i1 %i.ex, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ev, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 0, ptr %i.ez, align 4, !tbaa !22
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #24, !inline_history !70
  %i.fd = load ptr, ptr %i.eu, align 8, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #24, !inline_history !70
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

bb.af:                                            ; preds = %bb.ad
  %i.fg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i27 = icmp eq i8 %i.fg, 0
  br i1 %.not.i.i.i27, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fh = add nsw i32 %i.ey, -1
  store i32 %i.fh, ptr %i.ev, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

bb.ah:                                            ; preds = %bb.af
  %i.fi = atomicrmw volatile add ptr %i.ev, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i29 = phi i32 [ %i.ey, %bb.ag ], [ %i.fi, %bb.ah ]
  %i.fj = icmp eq i32 %.0.i.i.i.i29, 1
  br i1 %i.fj, label %bb.ai, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, !prof !61

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.fk = load ptr, ptr %i.cx, align 8, !tbaa !16 ; 8 uses
  %.not.i.i31 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i31, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 4 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4294967297
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  br i1 %i.fn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.fl, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !22
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !17
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #24, !inline_history !70
  %i.ft = load ptr, ptr %i.fk, align 8, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #24, !inline_history !70
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35

bb.al:                                            ; preds = %bb.aj
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i32 = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i32, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

bb.an:                                            ; preds = %bb.al
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i34 = phi i32 [ %i.fo, %bb.am ], [ %i.fy, %bb.an ]
  %i.fz = icmp eq i32 %.0.i.i.i.i34, 1
  br i1 %i.fz, label %bb.ao, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35, !prof !61

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.cm

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 376) #28
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn17 = phi { ptr, i32 } [ %i.gb, %bb.aq ], [ %i.ga, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

bb.as:                                            ; preds = %bb.a
  %i.gc = load ptr, ptr %0, align 8, !tbaa !10
  %i.gd = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_19NonlinearFrustumMapEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
  br i1 %i.gd, label %bb.at, label %bb.cm

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.ge = load ptr, ptr %0, align 8, !tbaa !10, !noalias !160 ; 3 uses
  store ptr %i.ge, ptr %7, align 8, !tbaa !129, !alias.scope !160
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !16, !noalias !160 ; 3 uses
  store ptr %i.gh, ptr %i.gf, align 8, !tbaa !16, !alias.scope !160
  %.not.i.i.i.i.i36 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i36, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 3 uses
  %i.gj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32, !noalias !160
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !49, !noalias !160
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !49, !noalias !160
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.gm = atomicrmw volatile add ptr %i.gi, i32 1 acq_rel, align 4, !noalias !160 ; 0 uses
  %.pre = load ptr, ptr %7, align 8, !tbaa !129
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.av, %bb.aw
  %i.gn = phi ptr [ %i.ge, %bb.at ], [ %i.ge, %bb.av ], [ %.pre, %bb.aw ] ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 128
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 144
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 160
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 176
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 192
  %.sroa.4.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.5.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.7.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %.sroa.8.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.9.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.sroa.11.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %.sroa.12.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %8, i64 72
  %.sroa.13.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %.sroa.14.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.sroa.15.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %.sroa.16.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %8, i64 104
  %.sroa.17.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %.sroa.18.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.gp = load <2 x double>, ptr %i.go, align 8   ; 4 uses
  %i.gq = load <2 x double>, ptr %.sroa.20.0..sroa_idx, align 8 ; 4 uses
  %i.gr = load <2 x double>, ptr %.sroa.36.0..sroa_idx, align 8 ; 4 uses
  %i.gs = load <2 x double>, ptr %.sroa.52.0..sroa_idx, align 8 ; 4 uses
  %i.gt = load <2 x double>, ptr %.sroa.12.0..sroa_idx, align 8 ; 4 uses
  %i.gu = load <2 x double>, ptr %.sroa.28.0..sroa_idx, align 8 ; 4 uses
  %i.gv = load <2 x double>, ptr %.sroa.44.0..sroa_idx, align 8 ; 4 uses
  %i.gw = load <2 x double>, ptr %.sroa.60.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %i.gx = load <2 x double>, ptr %8, align 16
  %i.gy = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i64, align 8
  %i.gz = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i66, align 16
  %i.ha = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i68, align 8
  %i.hb = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i70, align 16
  %i.hc = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i72, align 8
  %i.hd = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i74, align 16
  %i.he = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i76, align 8
  %i.hf = load <2 x double>, ptr %.sroa.11.0..sroa_idx.i78, align 16
  %i.hg = load <2 x double>, ptr %.sroa.12.0..sroa_idx.i80, align 8
  %i.hh = load <2 x double>, ptr %.sroa.13.0..sroa_idx.i82, align 16
  %i.hi = load <2 x double>, ptr %.sroa.14.0..sroa_idx.i84, align 8
  %i.hj = load <2 x double>, ptr %.sroa.15.0..sroa_idx.i86, align 16
  %i.hk = load <2 x double>, ptr %.sroa.16.0..sroa_idx.i88, align 8
  %i.hl = load <2 x double>, ptr %.sroa.17.0..sroa_idx.i90, align 16
  %.sroa.18.0.copyload.i93 = load double, ptr %.sroa.18.0..sroa_idx.i92, align 8
  %i.hm = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hn = fmul <2 x double> %i.gq, %i.hm
  %i.ho = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.gp, <2 x double> %i.hn)
  %i.hq = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.gr, <2 x double> %i.hp)
  %i.hs = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.gs, <2 x double> %i.hr)
  store <2 x double> %i.ht, ptr %8, align 16, !tbaa !8
  %i.hu = fmul <2 x double> %i.gu, %i.hm
  %i.hv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.gt, <2 x double> %i.hu)
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.gv, <2 x double> %i.hv)
  %i.hx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.gw, <2 x double> %i.hw)
  store <2 x double> %i.hx, ptr %.sroa.5.0..sroa_idx.i66, align 16, !tbaa !8
  %i.hy = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hz = fmul <2 x double> %i.gq, %i.hy
  %i.ia = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.gp, <2 x double> %i.hz)
  %i.ic = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.id = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.gr, <2 x double> %i.ib)
  %i.ie = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.gs, <2 x double> %i.id)
  store <2 x double> %i.if, ptr %.sroa.7.0..sroa_idx.i70, align 16, !tbaa !8
  %i.ig = fmul <2 x double> %i.gu, %i.hy
  %i.ih = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.gt, <2 x double> %i.ig)
  %i.ii = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.gv, <2 x double> %i.ih)
  %i.ij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.gw, <2 x double> %i.ii)
  store <2 x double> %i.ij, ptr %.sroa.9.0..sroa_idx.i74, align 16, !tbaa !8
  %i.ik = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.il = fmul <2 x double> %i.gq, %i.ik
  %i.im = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.in = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> %i.gp, <2 x double> %i.il)
  %i.io = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ip = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.gr, <2 x double> %i.in)
  %i.iq = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ir = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %i.gs, <2 x double> %i.ip)
  store <2 x double> %i.ir, ptr %.sroa.11.0..sroa_idx.i78, align 16, !tbaa !8
  %i.is = fmul <2 x double> %i.gu, %i.ik
  %i.it = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> %i.gt, <2 x double> %i.is)
  %i.iu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.gv, <2 x double> %i.it)
  %i.iv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %i.gw, <2 x double> %i.iu)
  store <2 x double> %i.iv, ptr %.sroa.13.0..sroa_idx.i82, align 16, !tbaa !8
  %i.iw = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ix = fmul <2 x double> %i.gq, %i.iw
  %i.iy = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.gp, <2 x double> %i.ix)
  %i.ja = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %i.gr, <2 x double> %i.iz)
  %i.jc = insertelement <2 x double> poison, double %.sroa.18.0.copyload.i93, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.je = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jd, <2 x double> %i.gs, <2 x double> %i.jb)
  store <2 x double> %i.je, ptr %.sroa.15.0..sroa_idx.i86, align 16, !tbaa !8
  %i.jf = fmul <2 x double> %i.gu, %i.iw
  %i.jg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.gt, <2 x double> %i.jf)
  %i.jh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %i.gv, <2 x double> %i.jg)
  %i.ji = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jd, <2 x double> %i.gw, <2 x double> %i.jh)
  store <2 x double> %i.ji, ptr %.sroa.17.0..sroa_idx.i90, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN7openvdb5v13_04math9AffineMapC2ERKNS1_4Mat4IdEE(ptr noundef nonnull align 8 dereferenceable(376) %9, ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %bb.ay unwind label %bb.ch

bb.ay:                                            ; preds = %bb.ax
  %i.jj = invoke noalias noundef nonnull dereferenceable(520) ptr @_Znwm(i64 noundef 520) #25
          to label %bb.az unwind label %bb.ci     ; 5 uses

bb.az:                                            ; preds = %bb.ay
  %i.jk = load ptr, ptr %7, align 8, !tbaa !129   ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 56
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !98
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNK7openvdb5v13_04math9AffineMap4copyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(376) %9)
          to label %bb.ba unwind label %.thread

bb.ba:                                            ; preds = %bb.az
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  invoke void @_ZN7openvdb5v13_04math19NonlinearFrustumMapC2ERKNS1_4BBoxINS1_4Vec3IdEEEEddRKSt10shared_ptrINS1_7MapBaseEE(ptr noundef nonnull align 8 dereferenceable(520) %i.jj, ptr noundef nonnull align 8 dereferenceable(48) %i.jp, double noundef %i.jm, double noundef %i.jo, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.bb unwind label %.thread214

bb.bb:                                            ; preds = %bb.ba
  %i.jq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.bg unwind label %bb.bc     ; 10 uses

bb.bc:                                            ; preds = %bb.bb
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  %i.jt = call ptr @__cxa_begin_catch(ptr %i.js) #24 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef 520) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.bf unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cj unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #27
  unreachable

bb.bf:                                            ; preds = %bb.bc
  unreachable

bb.bg:                                            ; preds = %bb.bb
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 8 uses
  store i32 1, ptr %i.jx, align 8, !tbaa !20
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jq, i64 12 ; 2 uses
  store i32 1, ptr %i.jy, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.jq, align 8, !tbaa !17
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store ptr %i.jj, ptr %i.jz, align 8, !tbaa !111
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !16 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i37, label %bb.bn, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 4 uses
  %i.kd = load atomic i64, ptr %i.kc acquire, align 8 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 4294967297
  %i.kf = trunc i64 %i.kd to i32                  ; 2 uses
  br i1 %i.ke, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.kc, align 8, !tbaa !20
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i32 0, ptr %i.kg, align 4, !tbaa !22
  %i.kh = load ptr, ptr %i.kb, align 8, !tbaa !17
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #24, !inline_history !69
  %i.kk = load ptr, ptr %i.kb, align 8, !tbaa !17
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #24, !inline_history !69
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bh
  %i.kn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i38 = icmp eq i8 %i.kn, 0
  br i1 %.not.i.i.i38, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ko = add nsw i32 %i.kf, -1
  store i32 %i.ko, ptr %i.kc, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

bb.bl:                                            ; preds = %bb.bj
  %i.kp = atomicrmw volatile add ptr %i.kc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i40 = phi i32 [ %i.kf, %bb.bk ], [ %i.kp, %bb.bl ]
  %i.kq = icmp eq i32 %.0.i.i.i.i40, 1
  br i1 %i.kq, label %bb.bm, label %bb.bn, !prof !61

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #24
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39, %bb.bi, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.kr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32, !noalias !161
  %.not.i.i.i.i.i.i43 = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i.i.i.i43, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ks = load i32, ptr %i.jx, align 8, !tbaa !49, !noalias !161
  %i.kt = add nsw i32 %i.ks, 1
  store i32 %i.kt, ptr %i.jx, align 8, !tbaa !49, !noalias !161
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_4math7MapBaseENS2_19NonlinearFrustumMapEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.bp:                                            ; preds = %bb.bn
  %i.ku = atomicrmw volatile add ptr %i.jx, i32 1 acq_rel, align 4, !noalias !161 ; 0 uses
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_4math7MapBaseENS2_19NonlinearFrustumMapEEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZN7openvdb5v13_013StaticPtrCastINS0_4math7MapBaseENS2_19NonlinearFrustumMapEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.bo, %bb.bp
  store ptr %i.jj, ptr %0, align 8, !tbaa !67
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04math19NonlinearFrustumMapC2ERKNS1_4BBoxINS1_4Vec3IdEEEEddRKSt10shared_ptrINS1_7MapBaseEE:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.s, %bb.e ]
  %.19 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.v = call ptr @__cxa_begin_catch(ptr %.19) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.w, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #26
          to label %bb.s unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.k
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !32
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.x

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ac = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.3") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %i.ag = load ptr, ptr %8, align 8, !tbaa !117   ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ai, ptr noundef nonnull align 8 dereferenceable(128) %i.ah, i64 128, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ak, ptr noundef nonnull align 8 dereferenceable(128) %i.aj, i64 128, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 264
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.al, i64 72, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 336
  %i.ao = load double, ptr %i.an, align 8, !tbaa !166
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 408
  store double %i.ao, ptr %i.ap, align 8, !tbaa !166
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 344
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 368
  %i.at = load i8, ptr %i.as, align 8, !tbaa !167, !range !120, !noundef !121
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i8 %i.at, ptr %i.au, align 8, !tbaa !167
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 369
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !119, !range !120, !noundef !121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 441
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !119
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16 ; 8 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !22
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24, !inline_history !70
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24, !inline_history !70
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN7openvdb5v13_04math19NonlinearFrustumMap4initEv(ptr noundef nonnull align 8 dereferenceable(520) %0)
  ret void

bb.s:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform7preMultERKNS1_4Mat3IdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Mat4", align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit, !prof !168

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) #24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 8), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 48), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 80), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 88), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 120), align 8, !tbaa !8
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 128, ptr nonnull @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) #24
  br label %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit

_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit:   ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 128, i1 false)
  %i.e = load <2 x double>, ptr %1, align 8, !tbaa !8
  store <2 x double> %i.e, ptr %2, align 16, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.g, ptr %i.h, align 16, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !8
  store <2 x double> %i.k, ptr %i.j, align 16, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.m, ptr %i.n, align 16, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = load <2 x double>, ptr %i.o, align 8, !tbaa !8
  store <2 x double> %i.q, ptr %i.p, align 16, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load double, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  store double %i.s, ptr %i.t, align 16, !tbaa !8
  call void @_ZN7openvdb5v13_04math9Transform7preMultERKNS1_4Mat4IdEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(128) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform10postRotateEdNS1_4AxisE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %1, i32 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %3, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !22
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !22
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform13postTranslateERKNS1_4Vec3IdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !22
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !22
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform9postScaleERKNS1_4Vec3IdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !22
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !22
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform9postScaleEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, double noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store double %1, ptr %2, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %1, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %1, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <2 x ptr>, ptr %3, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !16   ; 8 uses
  store <2 x ptr> %i.i, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !22
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !68
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aa, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !22
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !69
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.k ], [ %i.an, %bb.l ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform9postShearEdNS1_4AxisES3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, double noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %1, i32 noundef %2, i32 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %4, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !22
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !68
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !22
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform8postMultERKNS1_4Mat4IdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.099 = alloca [16 x double], align 8      ; 5 uses
  %2 = alloca %"class.std::shared_ptr.3", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Mat4", align 16 ; 22 uses
  %4 = alloca %"class.std::shared_ptr.3", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %6 = alloca %"class.std::shared_ptr.3", align 8 ; 4 uses
  %7 = alloca %"class.std::shared_ptr.10", align 8 ; 8 uses
  %.sroa.098 = alloca [16 x double], align 8      ; 5 uses
  %8 = alloca %"class.openvdb::v13_0::math::Mat4", align 16 ; 22 uses
  %9 = alloca %"class.openvdb::v13_0::math::AffineMap", align 8 ; 5 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.e, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.099)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.j = load ptr, ptr %2, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.099, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i64 128, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !22
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !70
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !70
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.099, i64 128, i1 false)
  %i.ac = load <2 x double>, ptr %3, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ag = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i, align 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ah = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK7openvdb5v13_04math17ScaleTranslateMap4copyEv:bb.a
bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #27
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_17ScaleTranslateMapEvEEPT_.exit: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1, ptr %i.y, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 1, ptr %i.z, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math17ScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.o, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.a, ptr %i.aa, align 8, !tbaa !23
  store ptr %i.o, ptr %i.n, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math17ScaleTranslateMap9preRotateEdNS1_4AxisE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, double noundef %2, i32 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.3", align 16 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.3", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %1)
  %i.d = load ptr, ptr %4, align 16, !tbaa !117   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_ZN7openvdb5v13_04math4Mat4IdE9preRotateENS1_4AxisEd(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i32 noundef %3, double noundef %2)
  invoke void @_ZN7openvdb5v13_04math9AffineMap18updateAccelerationEv(ptr noundef nonnull align 8 dereferenceable(376) %i.d)
          to label %_ZN7openvdb5v13_04math9AffineMap16accumPreRotationENS1_4AxisEd.exit unwind label %bb.r

_ZN7openvdb5v13_04math9AffineMap16accumPreRotationENS1_4AxisEd.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.i = load <2 x ptr>, ptr %4, align 16, !tbaa !66
  store <2 x ptr> %i.i, ptr %5, align 16, !tbaa !66
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04math9AffineMap16accumPreRotationENS1_4AxisEd.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !49
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !49
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit: ; preds = %_ZN7openvdb5v13_04math9AffineMap16accumPreRotationENS1_4AxisEd.exit, %bb.c, %bb.d
  invoke void @_ZN7openvdb5v13_04math8simplifyESt10shared_ptrINS1_9AffineMapEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !22
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #24, !inline_history !70
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #24, !inline_history !70
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i6 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !16  ; 8 uses
  %.not.i.i7 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i7, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.af, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !22
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24, !inline_history !70
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24, !inline_history !70
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11

bb.n:                                             ; preds = %bb.l
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i8 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i8, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

bb.p:                                             ; preds = %bb.n
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i10 = phi i32 [ %i.ai, %bb.o ], [ %i.as, %bb.p ]
  %i.at = icmp eq i32 %.0.i.i.i.i10, 1
  br i1 %i.at, label %bb.q, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11, !prof !61

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.r:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.au, %bb.r ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math17ScaleTranslateMap12preTranslateERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load double, ptr %i.d, align 8, !tbaa !8
  %i.f = fmul double %i.c, %i.e
  %4 = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x double>, ptr %2, align 8, !tbaa !8
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !8
  %i.j = fmul <2 x double> %i.h, %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !8, !alias.scope !427
  %i.l = fadd <2 x double> %i.j, %i.k
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !8, !alias.scope !427
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load double, ptr %i.m, align 16, !tbaa !8, !alias.scope !427
  %i.o = fadd double %i.f, %i.n
  store double %i.o, ptr %i.m, align 16, !tbaa !8, !alias.scope !427
  invoke void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  store ptr %4, ptr %0, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !16
  %i.q = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.g unwind label %bb.c       ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = call ptr @__cxa_begin_catch(ptr %i.s) #24 ; 0 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(152) %4) #24, !inline_history !19
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 1, ptr %i.ab, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math17ScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.q, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %4, ptr %i.ac, align 8, !tbaa !23
  store ptr %i.q, ptr %i.p, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

.body:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef 152) #28
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.x, %.body ]
  resume { ptr, i32 } %eh.lpad-body11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math17ScaleTranslateMap8preShearEdNS1_4AxisES3_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, double noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.3", align 16 ; 8 uses
  %6 = alloca %"class.std::shared_ptr.3", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(152) %1)
  %i.d = load ptr, ptr %5, align 16, !tbaa !117   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = shl nsw i32 %3, 2
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = shl nsw i32 %4, 2
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.j ; 3 uses
  %i.l = load <2 x double>, ptr %i.h, align 8, !tbaa !8
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !8
  %i.n = insertelement <2 x double> poison, double %2, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.p = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.l, <2 x double> %i.m)
  store <2 x double> %i.p, ptr %i.k, align 8, !tbaa !8
  %i.q = getelementptr i8, ptr %i.h, i64 16
  %i.r = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.s = load <2 x double>, ptr %i.q, align 8, !tbaa !8
  %i.t = load <2 x double>, ptr %i.r, align 8, !tbaa !8
  %i.u = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.s, <2 x double> %i.t)
  store <2 x double> %i.u, ptr %i.r, align 8, !tbaa !8
  invoke void @_ZN7openvdb5v13_04math9AffineMap18updateAccelerationEv(ptr noundef nonnull align 8 dereferenceable(376) %i.d)
          to label %_ZN7openvdb5v13_04math9AffineMap13accumPreShearENS1_4AxisES3_d.exit unwind label %bb.r

_ZN7openvdb5v13_04math9AffineMap13accumPreShearENS1_4AxisES3_d.exit: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16   ; 2 uses
  %i.y = load <2 x ptr>, ptr %5, align 16, !tbaa !66
  store <2 x ptr> %i.y, ptr %6, align 16, !tbaa !66
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04math9AffineMap13accumPreShearENS1_4AxisES3_d.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !49
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !49
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit: ; preds = %_ZN7openvdb5v13_04math9AffineMap13accumPreShearENS1_4AxisES3_d.exit, %bb.c, %bb.d
  invoke void @_ZN7openvdb5v13_04math8simplifyESt10shared_ptrINS1_9AffineMapEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !16  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.af, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !22
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24, !inline_history !70
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24, !inline_history !70
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i7 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ai, %bb.i ], [ %i.as, %bb.j ]
  %i.at = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.at, label %bb.k, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !16  ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.au, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.av, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !22
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_04math17ScaleTranslateMap8preShearEdNS1_4AxisES3_:bb.a

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.r:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.s ], [ %i.bk, %bb.r ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math17ScaleTranslateMap10postRotateEdNS1_4AxisE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, double noundef %2, i32 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.3", align 16 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.3", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %1)
  %i.d = load ptr, ptr %4, align 16, !tbaa !117   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_ZN7openvdb5v13_04math4Mat4IdE10postRotateENS1_4AxisEd(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i32 noundef %3, double noundef %2)
  invoke void @_ZN7openvdb5v13_04math9AffineMap18updateAccelerationEv(ptr noundef nonnull align 8 dereferenceable(376) %i.d)
          to label %_ZN7openvdb5v13_04math9AffineMap17accumPostRotationENS1_4AxisEd.exit unwind label %bb.r

_ZN7openvdb5v13_04math9AffineMap17accumPostRotationENS1_4AxisEd.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.i = load <2 x ptr>, ptr %4, align 16, !tbaa !66
  store <2 x ptr> %i.i, ptr %5, align 16, !tbaa !66
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04math9AffineMap17accumPostRotationENS1_4AxisEd.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !49
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !49
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit: ; preds = %_ZN7openvdb5v13_04math9AffineMap17accumPostRotationENS1_4AxisEd.exit, %bb.c, %bb.d
  invoke void @_ZN7openvdb5v13_04math8simplifyESt10shared_ptrINS1_9AffineMapEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !22
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #24, !inline_history !70
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #24, !inline_history !70
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i6 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !16  ; 8 uses
  %.not.i.i7 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i7, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.af, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !22
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24, !inline_history !70
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24, !inline_history !70
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11

bb.n:                                             ; preds = %bb.l
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i8 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i8, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

bb.p:                                             ; preds = %bb.n
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i10 = phi i32 [ %i.ai, %bb.o ], [ %i.as, %bb.p ]
  %i.at = icmp eq i32 %.0.i.i.i.i10, 1
  br i1 %i.at, label %bb.q, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11, !prof !61

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11

_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit11: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.r:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2ERKS4_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.au, %bb.r ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math17ScaleTranslateMap13postTranslateERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.c = load <2 x double>, ptr %2, align 8, !tbaa !8, !noalias !430
  %i.d = load <2 x double>, ptr %3, align 16, !tbaa !8, !alias.scope !430
  %i.e = fadd <2 x double> %i.c, %i.d
  store <2 x double> %i.e, ptr %3, align 16, !tbaa !8, !alias.scope !430
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !8, !noalias !430
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load double, ptr %i.h, align 16, !tbaa !8, !alias.scope !430
  %i.j = fadd double %i.g, %i.i
  store double %i.j, ptr %i.h, align 16, !tbaa !8, !alias.scope !430
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !16
  %i.m = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.g unwind label %bb.c       ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #24 ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(152) %i.a) #24, !inline_history !19
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 1, ptr %i.x, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math17ScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.m, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.a, ptr %i.y, align 8, !tbaa !23
  store ptr %i.m, ptr %i.l, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

.body:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 152) #28
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.t, %.body ], [ %i.z, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body6
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math17ScaleTranslateMap9postScaleERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 6 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !8, !noalias !433 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load double, ptr %i.d, align 8, !tbaa !8, !noalias !433
  %i.f = fmul double %i.c, %i.e                   ; 2 uses
  %i.g = load <2 x double>, ptr %2, align 8, !tbaa !8, !noalias !433 ; 2 uses
  %i.h = load <2 x double>, ptr %i.a, align 8, !tbaa !8, !noalias !433
  %i.i = fmul <2 x double> %i.g, %i.h             ; 4 uses
  store <2 x double> %i.i, ptr %4, align 16, !tbaa !8, !alias.scope !433
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.f, ptr %i.j, align 16, !tbaa !8, !alias.scope !433
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !8
  %i.n = fmul double %i.c, %i.m
  %i.o = load <2 x double>, ptr %i.k, align 8, !tbaa !8
  %i.p = fmul <2 x double> %i.g, %i.o
  store <2 x double> %i.p, ptr %5, align 16, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.n, ptr %i.q, align 16, !tbaa !8
  %i.r = extractelement <2 x double> %i.i, i64 0  ; 4 uses
  %shift = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.i, %shift
  %i.s = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.t = tail call noundef double @llvm.fabs.f64(double %i.s)
  %i.u = fcmp ule double %i.t, 1.000000e-15
  br i1 %i.u, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.v = fsub double %i.r, %i.f
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp ule double %i.w, 1.000000e-15
  br i1 %i.x, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.y = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store double %i.r, ptr %3, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.r, ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.r, ptr %i.aa, align 8, !tbaa !8
  invoke void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.i, !inline_history !42

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math24UniformScaleTranslateMapE, i64 16), ptr %i.y, align 8, !tbaa !17
  store ptr %i.y, ptr %0, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !16
  %i.ac = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_24UniformScaleTranslateMapEvEEPT_.exit unwind label %bb.e ; 5 uses

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = call ptr @__cxa_begin_catch(ptr %i.ae) #24 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 152) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.g

common.resume:                                    ; preds = %bb.l, %bb.f, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.ag, %bb.f ], [ %i.aw, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #27
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_24UniformScaleTranslateMapEvEEPT_.exit: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 1, ptr %i.aj, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 1, ptr %i.ak, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math24UniformScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ac, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.y, ptr %i.al, align 8, !tbaa !43
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !16
  br label %bb.p

bb.i:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.an = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 6 uses
  invoke void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %.critedge
  store ptr %i.an, ptr %0, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !16
  %i.ap = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_17ScaleTranslateMapEvEEPT_.exit unwind label %bb.k ; 5 uses

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_015ArithmeticErrorD0Ev:bb.a
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28, !inline_history !485
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #24, !inline_history !485
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7openvdb5v13_09Exception4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  ret ptr %i.b
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28, !inline_history !485
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #24, !inline_history !485
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math24UniformScaleTranslateMapD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math24UniformScaleTranslateMap4typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !26, !alias.scope !486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !486
  store i64 24, ptr %i.a, align 8, !tbaa !135, !noalias !486
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !33, !alias.scope !486
  %i.d = load i64, ptr %i.a, align 8, !tbaa !135, !noalias !486 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !32, !alias.scope !486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.22, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !29, !alias.scope !486
  %i.f = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !486
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !486
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math24UniformScaleTranslateMap7isEqualERKNS1_7MapBaseE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_24UniformScaleTranslateMapEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.a, label %bb.b, label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_24UniformScaleTranslateMapEEEbRKT_RKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math17ScaleTranslateMapeqERKS2_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1)
  br label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_24UniformScaleTranslateMapEEEbRKT_RKS2_.exit

_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_24UniformScaleTranslateMapEEEbRKT_RKS2_.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math24UniformScaleTranslateMap4copyEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math24UniformScaleTranslateMapE, i64 16), ptr %i.a, align 8, !tbaa !17
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !16
  %i.o = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_24UniformScaleTranslateMapEvEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #24 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 152) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #27
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_24UniformScaleTranslateMapEvEEPT_.exit: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 1, ptr %i.w, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math24UniformScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.o, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.a, ptr %i.x, align 8, !tbaa !43
  store ptr %i.o, ptr %i.n, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math24UniformScaleTranslateMap12preTranslateERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load double, ptr %i.a, align 8, !tbaa !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8
  %i.d = fmul double %i.b, %.sroa.9.0.copyload
  %i.e = load <2 x double>, ptr %2, align 8
  %i.f = insertelement <2 x double> poison, double %i.b, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x double> %i.g, %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.i = load <2 x double>, ptr %4, align 16, !tbaa !8, !alias.scope !489
  %i.j = fadd <2 x double> %i.h, %i.i
  store <2 x double> %i.j, ptr %4, align 16, !tbaa !8, !alias.scope !489
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = load double, ptr %i.k, align 16, !tbaa !8, !alias.scope !489
  %i.m = fadd double %i.d, %i.l
  store double %i.m, ptr %i.k, align 16, !tbaa !8, !alias.scope !489
  %i.n = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store double %i.b, ptr %3, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.b, ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.b, ptr %i.p, align 8, !tbaa !8
  invoke void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.g, !inline_history !42

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math24UniformScaleTranslateMapE, i64 16), ptr %i.n, align 8, !tbaa !17
  store ptr %i.n, ptr %0, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !16
  %i.r = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_24UniformScaleTranslateMapEvEEPT_.exit unwind label %bb.c ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = call ptr @__cxa_begin_catch(ptr %i.t) #24 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 152) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.v, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_24UniformScaleTranslateMapEvEEPT_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.y, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.z, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math24UniformScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !43
  store ptr %i.r, ptr %i.q, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 152) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math24UniformScaleTranslateMap13postTranslateERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load double, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !8, !noalias !492
  %i.f = load <2 x double>, ptr %4, align 16, !tbaa !8, !alias.scope !492
  %i.g = fadd <2 x double> %i.e, %i.f
  store <2 x double> %i.g, ptr %4, align 16, !tbaa !8, !alias.scope !492
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !8, !noalias !492
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = load double, ptr %i.j, align 16, !tbaa !8, !alias.scope !492
  %i.l = fadd double %i.i, %i.k
  store double %i.l, ptr %i.j, align 16, !tbaa !8, !alias.scope !492
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store double %i.b, ptr %3, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.b, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.b, ptr %i.n, align 8, !tbaa !8
  invoke void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.h, !inline_history !42

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math24UniformScaleTranslateMapE, i64 16), ptr %i.c, align 8, !tbaa !17
  store ptr %i.c, ptr %0, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !16
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.g unwind label %bb.c       ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #24 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 152) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.x, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math24UniformScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.p, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.c, ptr %i.y, align 8, !tbaa !43
  store ptr %i.p, ptr %i.o, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

.body:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 152) #28
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.t, %.body ]
  resume { ptr, i32 } %eh.lpad-body7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math24UniformScaleTranslateMap10inverseMapEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25 ; 6 uses
  %i.d = load double, ptr %i.a, align 8, !tbaa !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.e = fneg double %i.d                         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = load double, ptr %i.f, align 16, !tbaa !8, !alias.scope !495
  %i.h = fmul double %i.g, %i.e
  %i.i = load <2 x double>, ptr %3, align 16, !tbaa !8, !alias.scope !495
  %i.j = insertelement <2 x double> poison, double %i.e, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.i, %i.k
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !8, !alias.scope !495
  store double %i.h, ptr %i.f, align 16, !tbaa !8, !alias.scope !495
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store double %i.d, ptr %2, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.d, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.d, ptr %i.n, align 8, !tbaa !8
  invoke void @_ZN7openvdb5v13_04math17ScaleTranslateMapC2ERKNS1_4Vec3IdEES6_(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %.thread13, !inline_history !42

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math24UniformScaleTranslateMapE, i64 16), ptr %i.c, align 8, !tbaa !17
  store ptr %i.c, ptr %0, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !16
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.g unwind label %bb.c       ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #24 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 152) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.x, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math24UniformScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.p, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.c, ptr %i.y, align 8, !tbaa !43
  store ptr %i.p, ptr %i.o, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

.thread13:                                        ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 152) #28
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread13
  %.pn11 = phi { ptr, i32 } [ %i.z, %.thread13 ], [ %i.t, %bb.h ]
  resume { ptr, i32 } %.pn11
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_24UniformScaleTranslateMapEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !26, !alias.scope !500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !500
  store i64 24, ptr %i.a, align 8, !tbaa !135, !noalias !500
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %2, align 8, !tbaa !33, !alias.scope !500
  %i.g = load i64, ptr %i.a, align 8, !tbaa !135, !noalias !500 ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !32, !alias.scope !500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.f, ptr noundef nonnull align 1 dereferenceable(24) @.str.22, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !29, !alias.scope !500
  %i.i = load ptr, ptr %2, align 8, !tbaa !33, !alias.scope !500
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !500
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29   ; 3 uses
  %i.m = load i64, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %2, align 8, !tbaa !33
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.l, 0
  %.pre8 = load ptr, ptr %2, align 8, !tbaa !33   ; 3 uses
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %1, align 8, !tbaa !33
  %bcmp.i = call i32 @bcmp(ptr %i.p, ptr %.pre8, i64 %i.l)
  %i.q = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.c, %bb.d
  %i.r = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre8, %bb.d ], [ %.pre8, %bb.c ] ; 2 uses
  %i.s = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.q, %bb.d ], [ true, %bb.c ]
  %i.t = icmp eq ptr %i.r, %i.e
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.u = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.u)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.v = load i64, ptr %i.e, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.w) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.x = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !32
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i1 %i.s

bb.e:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ad = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !32
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math17ScaleTranslateMapeqERKS2_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load double, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !8 ; 3 uses
  %i.e = fsub double %i.c, %i.d                   ; 2 uses
  %i.f = tail call noundef double @llvm.fabs.f64(double %i.e)
  %i.g = fcmp ogt double %i.f, f0x3E7AD7F29ABCAF48
  br i1 %i.g, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i: ; preds = %bb.a
  %i.h = tail call noundef double @llvm.fabs.f64(double %i.d)
  %i.i = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.j = fcmp ogt double %i.h, %i.i
  %..i.i = select i1 %i.j, double %i.d, double %i.c
  %i.k = fdiv double %i.e, %..i.i
  %i.l = tail call noundef double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp ugt double %i.l, f0x3E7AD7F29ABCAF48
  br i1 %i.m, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit11, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load double, ptr %i.n, align 8, !tbaa !8 ; 3 uses
  %i.q = load double, ptr %i.o, align 8, !tbaa !8 ; 3 uses
  %i.r = fsub double %i.p, %i.q                   ; 2 uses
  %i.s = tail call noundef double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp ogt double %i.s, f0x3E7AD7F29ABCAF48
  br i1 %i.t, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i
  %i.u = tail call noundef double @llvm.fabs.f64(double %i.q)
  %i.v = tail call noundef double @llvm.fabs.f64(double %i.p)
  %i.w = fcmp ogt double %i.u, %i.v
  %..i5.i = select i1 %i.w, double %i.q, double %i.p
  %i.x = fdiv double %i.r, %..i5.i
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ugt double %i.y, f0x3E7AD7F29ABCAF48
  br i1 %i.z, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit11, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !8 ; 3 uses
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !8 ; 3 uses
  %i.ae = fsub double %i.ac, %i.ad                ; 2 uses
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.ae)
  %i.ag = fcmp ogt double %i.af, f0x3E7AD7F29ABCAF48
  br i1 %i.ag, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread12

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit:   ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i
  %i.ah = tail call noundef double @llvm.fabs.f64(double %i.ad)
  %i.ai = tail call noundef double @llvm.fabs.f64(double %i.ac)
  %i.aj = fcmp ogt double %i.ah, %i.ai
  %..i8.i = select i1 %i.aj, double %i.ad, double %i.ac
  %i.ak = fdiv double %i.ae, %..i8.i
  %i.al = tail call noundef double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp ugt double %i.al, f0x3E7AD7F29ABCAF48
  br i1 %i.am, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit11, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread12

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread12: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load double, ptr %i.an, align 8, !tbaa !8 ; 3 uses
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !8 ; 3 uses
  %i.ar = fsub double %i.ap, %i.aq                ; 2 uses
  %i.as = tail call noundef double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp ogt double %i.as, f0x3E7AD7F29ABCAF48
  br i1 %i.at, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i9, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i4

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i9: ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread12
  %i.au = tail call noundef double @llvm.fabs.f64(double %i.aq)
  %i.av = tail call noundef double @llvm.fabs.f64(double %i.ap)
  %i.aw = fcmp ogt double %i.au, %i.av
  %..i.i10 = select i1 %i.aw, double %i.aq, double %i.ap
  %i.ax = fdiv double %i.ar, %..i.i10
  %i.ay = tail call noundef double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp ugt double %i.ay, f0x3E7AD7F29ABCAF48
  br i1 %i.az, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit11, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i4

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i4: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i9, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread12
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !8 ; 3 uses
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !8 ; 3 uses
  %i.be = fsub double %i.bc, %i.bd                ; 2 uses
  %i.bf = tail call noundef double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp ogt double %i.bf, f0x3E7AD7F29ABCAF48
  br i1 %i.bg, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i7, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i5

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i7: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i4
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bi = tail call noundef double @llvm.fabs.f64(double %i.bc)
  %i.bj = fcmp ogt double %i.bh, %i.bi
  %..i5.i8 = select i1 %i.bj, double %i.bd, double %i.bc
  %i.bk = fdiv double %i.be, %..i5.i8
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp ugt double %i.bl, f0x3E7AD7F29ABCAF48
  br i1 %i.bm, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit11, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i5

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i5: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i7, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !8 ; 3 uses
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !8 ; 3 uses
  %i.br = fsub double %i.bp, %i.bq                ; 2 uses
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.bt = fcmp ogt double %i.bs, f0x3E7AD7F29ABCAF48
  br i1 %i.bt, label %bb.b, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit11

bb.b:                                             ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i5
  %i.bu = tail call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.bp)
  %i.bw = fcmp ogt double %i.bu, %i.bv
  %..i8.i6 = select i1 %i.bw, double %i.bq, double %i.bp
  %i.bx = fdiv double %i.br, %..i8.i6
  %i.by = tail call noundef double @llvm.fabs.f64(double %i.bx)
  %i.bz = fcmp ole double %i.by, f0x3E7AD7F29ABCAF48
  br label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit11

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit11: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i, %bb.b, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i5, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i7, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i9, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit
  %.0 = phi i1 [ false, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit ], [ true, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i5 ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i7 ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i9 ], [ %i.bz, %bb.b ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !503
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !503
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math9AffineMap18updateAccelerationEv(ptr noundef nonnull align 8 dereferenceable(376) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::math::Mat3", align 16 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.openvdb::v13_0::math::Mat4", align 8 ; 4 uses
  %6 = alloca %"class.openvdb::v13_0::math::Mat3", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 24, i1 false), !tbaa !8
  %scevgep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %scevgep11.1.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep.1.i, ptr noundef nonnull align 8 dereferenceable(24) %scevgep11.1.i, i64 24, i1 false), !tbaa !8
  %scevgep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %scevgep11.2.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep.2.i, ptr noundef nonnull align 8 dereferenceable(24) %scevgep11.2.i, i64 24, i1 false), !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load double, ptr %scevgep.2.i, align 16, !tbaa !8 ; 2 uses
  %i.e = load double, ptr %scevgep.1.i, align 8, !tbaa !8 ; 2 uses
  %i.f = load <2 x double>, ptr %i.b, align 16, !tbaa !8 ; 3 uses
  %i.g = load <2 x double>, ptr %i.c, align 8, !tbaa !8 ; 3 uses
  %i.h = fneg <2 x double> %i.g
  %i.i = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.j = insertelement <2 x double> %i.i, double %i.e, i64 1
  %i.k = fmul <2 x double> %i.j, %i.h
  %i.l = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.m = insertelement <2 x double> %i.l, double %i.d, i64 1
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.m, <2 x double> %i.k) ; 2 uses
  %i.o = fneg double %i.d
  %i.p = load <2 x double>, ptr %1, align 16, !tbaa !8 ; 2 uses
  %i.q = shufflevector <2 x double> %i.f, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.r = insertelement <2 x double> %i.p, double %i.o, i64 0
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.u = insertelement <2 x double> %i.t, double %i.e, i64 0
  %i.v = shufflevector <2 x double> %i.g, <2 x double> %i.n, <2 x i32> <i32 0, i32 2>
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.v, <2 x double> %i.s) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load double, ptr %i.x, align 16, !tbaa !8
  %i.z = extractelement <2 x double> %i.w, i64 0
  %i.aa = extractelement <2 x double> %i.w, i64 1
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.y, double %i.z, double %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 336
  store double %i.ab, ptr %i.ac, align 8, !tbaa !166
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.ab)
  %i.ae = fcmp olt double %i.ad, f0x3CEB05876E5B0121
  br i1 %i.ae, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !29
  store i8 0, ptr %i.af, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.25, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #24 ; 0 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %i.ap, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.ao, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ar = call ptr @__cxa_begin_catch(ptr %.1) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.as, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #26
          to label %bb.o unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.af
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.k
  %i.aw = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.at

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNK7openvdb5v13_04math4Mat4IdE7inverseEd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Mat4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.a, double noundef 0.000000e+00)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ay, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK7openvdb5v13_04math4Mat3IdE7inverseEd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef 0.000000e+00)
  %i.az = load double, ptr %6, align 8, !tbaa !8, !noalias !504
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !8, !noalias !504
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !8, !noalias !504
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !8, !noalias !504
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !8, !noalias !504
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !8, !noalias !504
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !8, !noalias !504
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !8, !noalias !504
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !8, !noalias !504
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %i.az, ptr %i.bq, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store double %i.bb, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store double %i.bd, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.bf, ptr %.sroa.654.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %i.bh, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store double %i.bj, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store double %i.bl, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.bn, ptr %.sroa.1055.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store double %i.bp, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bv = load <4 x double>, ptr %i.br, align 8, !tbaa !8
  %i.bw = load <2 x double>, ptr %i.bs, align 8, !tbaa !8
  %i.bx = load <2 x double>, ptr %scevgep11.2.i, align 8, !tbaa !8
  %i.by = load <2 x double>, ptr %i.bt, align 8, !tbaa !8
  %i.bz = load <2 x double>, ptr %i.bu, align 8, !tbaa !8
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> %i.by, <12 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 3, i32 0, i32 1>
  %i.cb = shufflevector <2 x double> %i.bx, <2 x double> poison, <12 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = shufflevector <12 x double> %i.ca, <12 x double> %i.cb, <12 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 8, i32 9, i32 10, i32 11>
  %i.cd = shufflevector <4 x double> %i.bv, <4 x double> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <12 x double> %i.cd, <12 x double> %i.cc, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cf = shufflevector <2 x double> %i.bw, <2 x double> poison, <12 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cg = shufflevector <12 x double> %i.ce, <12 x double> %i.cf, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.ch = call <12 x double> @llvm.fabs.v12f64(<12 x double> %i.cg) ; 12 uses
  %i.ci = extractelement <12 x double> %i.ch, i64 0
  %i.cj = extractelement <12 x double> %i.ch, i64 1
  %i.ck = fadd double %i.ci, %i.cj
  %i.cl = extractelement <12 x double> %i.ch, i64 2
  %i.cm = fadd double %i.ck, %i.cl
  %i.cn = extractelement <12 x double> %i.ch, i64 3
  %i.co = fadd double %i.cm, %i.cn
  %i.cp = extractelement <12 x double> %i.ch, i64 4
  %i.cq = fadd double %i.co, %i.cp
  %i.cr = extractelement <12 x double> %i.ch, i64 5
  %i.cs = fadd double %i.cq, %i.cr
  %i.ct = extractelement <12 x double> %i.ch, i64 6
  %i.cu = fadd double %i.cs, %i.ct
  %i.cv = extractelement <12 x double> %i.ch, i64 7
  %i.cw = fadd double %i.cu, %i.cv
  %i.cx = extractelement <12 x double> %i.ch, i64 8
  %i.cy = fadd double %i.cw, %i.cx
  %i.cz = extractelement <12 x double> %i.ch, i64 9
  %i.da = fadd double %i.cy, %i.cz
  %i.db = extractelement <12 x double> %i.ch, i64 10
  %i.dc = fadd double %i.da, %i.db
  %i.dd = extractelement <12 x double> %i.ch, i64 11
  %i.de = fadd double %i.dc, %i.dd
  %i.df = call noundef double @llvm.fabs.f64(double %i.de)
  %i.dg = fcmp ule double %i.df, 1.000000e-15
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.di = zext i1 %i.dg to i8
  store i8 %i.di, ptr %i.dh, align 8, !tbaa !167
  %i.dj = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity acquire, align 8
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %bb.m, label %_ZN7openvdb5v13_04math10isIdentityINS1_4Mat4IdEEEEbRKT_.exit, !prof !168

bb.m:                                             ; preds = %bb.l
  %i.dl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) #24
  %.not.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04math10isIdentityINS1_4Mat4IdEEEEbRKT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 8), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 48), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 80), align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 88), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 120), align 8, !tbaa !8
  %i.dm = call ptr @llvm.invariant.start.p0(i64 128, ptr nonnull @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) #24
  br label %_ZN7openvdb5v13_04math10isIdentityINS1_4Mat4IdEEEEbRKT_.exit

_ZN7openvdb5v13_04math10isIdentityINS1_4Mat4IdEEEEbRKT_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = call noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, double noundef 1.000000e-08)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.dt = zext i1 %i.dr to i8
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !119
  %i.du = load double, ptr %scevgep11.2.i, align 8, !tbaa !8, !noalias !507 ; 3 uses
  %i.dv = load double, ptr %i.do, align 8, !tbaa !8, !noalias !507 ; 3 uses
  %i.dw = load double, ptr %i.dp, align 8, !tbaa !8, !noalias !507 ; 3 uses
  %i.dx = load double, ptr %i.bu, align 8, !tbaa !8, !noalias !507 ; 3 uses
  %i.dy = load double, ptr %i.bs, align 8, !tbaa !8, !noalias !507 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !8, !noalias !507 ; 3 uses
  %i.eb = load double, ptr %i.dn, align 8, !tbaa !8, !noalias !507 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ed = load <2 x double>, ptr %i.a, align 8, !tbaa !8, !noalias !507 ; 3 uses
  %i.ee = load <2 x double>, ptr %scevgep11.1.i, align 8, !tbaa !8, !noalias !507 ; 2 uses
  %i.ef = fmul <2 x double> %i.ee, zeroinitializer ; 2 uses
  %i.eg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> zeroinitializer, <2 x double> %i.ef) ; 2 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 0 ; 2 uses
  %i.ei = call double @llvm.fmuladd.f64(double %i.du, double 0.000000e+00, double %i.eh)
  %i.ej = fadd double %i.dv, %i.ei                ; 2 uses
  %i.ek = extractelement <2 x double> %i.eg, i64 1 ; 2 uses
  %i.el = call double @llvm.fmuladd.f64(double %i.dw, double 0.000000e+00, double %i.ek)
  %i.em = fadd double %i.dx, %i.el                ; 2 uses
  %i.en = load double, ptr %i.dq, align 8, !tbaa !8, !noalias !507 ; 3 uses
  %i.eo = fmul double %i.dy, 0.000000e+00         ; 2 uses
  %i.ep = call double @llvm.fmuladd.f64(double %i.en, double 0.000000e+00, double %i.eo) ; 2 uses
  %i.eq = call double @llvm.fmuladd.f64(double %i.ea, double 0.000000e+00, double %i.ep)
  %i.er = fadd double %i.eb, %i.eq                ; 2 uses
  %i.es = fadd <2 x double> %i.ed, %i.ef          ; 2 uses
  %i.et = fadd double %i.en, %i.eo
  %i.eu = insertelement <2 x double> poison, double %i.du, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> zeroinitializer, <2 x double> %i.ee) ; 2 uses
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> %i.es, <2 x i32> <i32 0, i32 2>
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> zeroinitializer, <2 x double> %i.ez)
  %i.fb = fadd <2 x double> %i.ex, %i.fa
  %i.fc = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = shufflevector <2 x double> %i.ey, <2 x double> %i.es, <2 x i32> <i32 1, i32 3>
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> zeroinitializer, <2 x double> %i.fe)
  %i.fg = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fadd <2 x double> %i.fh, %i.ff
  %i.fj = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = fsub <2 x double> %i.fb, %i.fo          ; 2 uses
  %i.fq = insertelement <2 x double> poison, double %i.em, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = fsub <2 x double> %i.fi, %i.fr          ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.er, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x double> %i.fs, %i.fs
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fp, <2 x double> %i.fv)
  %i.fx = fadd double %i.du, %i.eh
  %i.fy = fadd double %i.dv, %i.fx
  %i.fz = fadd double %i.dw, %i.ek
  %i.ga = fadd double %i.dx, %i.fz
  %i.gb = fadd double %i.ea, %i.ep
  %i.gc = fadd double %i.eb, %i.gb
  %i.gd = fsub double %i.fy, %i.ej
  %i.ge = fsub double %i.ga, %i.em                ; 2 uses
  %i.gf = fsub double %i.gc, %i.er                ; 2 uses
  %i.gg = fmul double %i.ge, %i.ge
  %i.gh = insertelement <2 x double> poison, double %i.en, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gd, i64 1 ; 2 uses
  %i.gj = insertelement <2 x double> %i.gi, double 0.000000e+00, i64 0
  %i.gk = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.gg, i64 1
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.gj, <2 x double> %i.gl) ; 2 uses
  %i.gn = insertelement <2 x double> %i.gm, double %i.et, i64 1
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> zeroinitializer, <2 x double> %i.gn)
  %i.gp = fadd <2 x double> %i.fm, %i.go
  %i.gq = fsub <2 x double> %i.gp, %i.fu          ; 2 uses
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gq, <2 x double> %i.fw)
  %i.gs = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gr)
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gt, ptr %i.ec, align 8, !tbaa !8
  %i.gu = extractelement <2 x double> %i.gm, i64 1
  %i.gv = call double @llvm.fmuladd.f64(double %i.gf, double %i.gf, double %i.gu)
  %sqrt.i7 = call noundef double @llvm.sqrt.f64(double %i.gv)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double %sqrt.i7, ptr %i.gw, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.o:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math9AffineMapD0Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 376) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap12getAffineMapEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #25 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math9AffineMapE, i64 16), ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.j = load double, ptr %i.i, align 8, !tbaa !166
  store double %i.j, ptr %i.h, align 8, !tbaa !166
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.o = load i8, ptr %i.n, align 8, !tbaa !167, !range !120, !noundef !121
  store i8 %i.o, ptr %i.m, align 8, !tbaa !167
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 369
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 369
  %i.r = load i8, ptr %i.q, align 1, !tbaa !119, !range !120, !noundef !121
  store i8 %i.r, ptr %i.p, align 1, !tbaa !119
  store ptr %i.a, ptr %0, align 8, !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !16
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2IS3_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #24 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 376) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.x

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #27
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2IS3_vEEPT_.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 1, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 1, ptr %i.ab, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.t, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !92
  store ptr %i.t, ptr %i.s, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap4typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !26, !alias.scope !512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.28, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.b, align 8, !tbaa !29, !alias.scope !512
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.c, align 1, !tbaa !32, !alias.scope !512
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math9AffineMap7isEqualERKNS1_7MapBaseE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !515
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !26, !alias.scope !516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @.str.28, i64 9, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.e, align 8, !tbaa !29, !alias.scope !516
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.f, align 1, !tbaa !32, !alias.scope !516
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = icmp eq i64 %i.h, 9
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !33 ; 4 uses
  br i1 %i.i, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %.pre.i.i, align 1
  %i.k = load i64, ptr %i.d, align 1
  %i.l = xor i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %.pre.i.i, i64 8
  %i.n = getelementptr i8, ptr %i.d, i64 8
  %i.o = load i8, ptr %i.m, align 1
  %i.p = load i8, ptr %i.n, align 1
  %i.q = zext i8 %i.o to i64
  %i.r = zext i8 %i.p to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = or i64 %i.l, %i.s
  %i.u = icmp ne i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.x = phi i1 [ false, %bb.a ], [ %i.w, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %.pre.i.i, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.aa = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_9AffineMapEEEbv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !32
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.i, i64 noundef %i.ac) #28
  br label %_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_9AffineMapEEEbv.exit.i

_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_9AffineMapEEEbv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.x, label %bb.c, label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_9AffineMapEEEbRKT_RKS2_.exit

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_9AffineMapEEEbv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = call noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, double noundef 1.000000e-08)
  br i1 %i.af, label %bb.d, label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_9AffineMapEEEbRKT_RKS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ai = call noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d(ptr noundef nonnull align 8 dereferenceable(128) %i.ag, ptr noundef nonnull align 8 dereferenceable(128) %i.ah, double noundef 1.000000e-08)
  br label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_9AffineMapEEEbRKT_RKS2_.exit

_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_9AffineMapEEEbRKT_RKS2_.exit: ; preds = %_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_9AffineMapEEEbv.exit.i, %bb.c, %bb.d
  %i.aj = phi i1 [ false, %_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_9AffineMapEEEbv.exit.i ], [ false, %bb.c ], [ %i.ai, %bb.d ]
  ret i1 %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math9AffineMap8isLinearEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math9AffineMap15hasUniformScaleEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::math::Mat3", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 24, i1 false), !tbaa !8
  %scevgep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %scevgep11.1.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep.1.i, ptr noundef nonnull align 8 dereferenceable(24) %scevgep11.1.i, i64 24, i1 false), !tbaa !8
  %scevgep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %scevgep11.2.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep.2.i, ptr noundef nonnull align 8 dereferenceable(24) %scevgep11.2.i, i64 24, i1 false), !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !8 ; 3 uses
  %i.e = load <4 x double>, ptr %i.b, align 8, !tbaa !8 ; 7 uses
  %i.f = extractelement <4 x double> %i.e, i64 2
  %i.g = fneg double %i.f
  %i.h = load <4 x double>, ptr %1, align 8, !tbaa !8 ; 5 uses
  %i.i = shufflevector <4 x double> %i.e, <4 x double> poison, <2 x i32> <i32 3, i32 2> ; 2 uses
  %i.j = insertelement <2 x double> %i.i, double %i.d, i64 1
  %i.k = fneg <2 x double> %i.j
  %i.l = shufflevector <4 x double> %i.e, <4 x double> %i.h, <2 x i32> <i32 1, i32 7>
  %i.m = fmul <2 x double> %i.l, %i.k
  %i.n = shufflevector <4 x double> %i.e, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.o = insertelement <2 x double> %i.i, double %i.d, i64 0
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.o, <2 x double> %i.m) ; 2 uses
  %i.q = shufflevector <4 x double> %i.e, <4 x double> %i.h, <2 x i32> <i32 0, i32 5>
  %i.r = insertelement <2 x double> %i.p, double %i.g, i64 0
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = shufflevector <4 x double> %i.h, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.u = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <4 x double> %i.e, <4 x double> %i.u, <2 x i32> <i32 3, i32 4>
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.v, <2 x double> %i.s) ; 2 uses
  %i.x = extractelement <4 x double> %i.h, i64 2
  %i.y = extractelement <2 x double> %i.w, i64 0
  %i.z = extractelement <2 x double> %i.w, i64 1
  %i.aa = tail call noundef double @llvm.fmuladd.f64(double %i.x, double %i.y, double %i.z)
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.aa) ; 2 uses
  %i.ac = fcmp ule double %i.ab, 1.000000e-15
  br i1 %i.ac, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = tail call double @pow(double noundef %i.ab, double noundef f0x3FD5555555555555) #24
  %i.ae = fdiv double 1.000000e+00, %i.ad         ; 2 uses
  %i.af = insertelement <4 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <4 x double> %i.af, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = fmul <4 x double> %i.h, %i.ag
  store <4 x double> %i.ah, ptr %1, align 8, !tbaa !8
  %i.ai = fmul <4 x double> %i.e, %i.ag
  store <4 x double> %i.ai, ptr %i.b, align 8, !tbaa !8
  %i.aj = fmul double %i.d, %i.ae
  store double %i.aj, ptr %i.c, align 8, !tbaa !8
  %i.ak = call noundef zeroext i1 @_ZN7openvdb5v13_04math9isUnitaryINS1_4Mat3IdEEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.ak, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.b = load double, ptr %2, align 8, !tbaa !8, !noalias !519 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !8, !noalias !519 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !8, !noalias !519 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !8, !noalias !519
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load double, ptr %i.l, align 8, !tbaa !8, !noalias !519
  %i.n = fmul double %i.d, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.b, double %i.k, double %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load double, ptr %i.p, align 8, !tbaa !8, !noalias !519
  %i.r = tail call double @llvm.fmuladd.f64(double %i.g, double %i.q, double %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.t = load double, ptr %i.s, align 8, !tbaa !8, !noalias !519
  %i.u = fadd double %i.t, %i.r
  %i.v = load <2 x double>, ptr %i.a, align 8, !tbaa !8, !noalias !519
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !8, !noalias !519
  %i.x = insertelement <2 x double> poison, double %i.d, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x double> %i.y, %i.w
  %i.aa = insertelement <2 x double> poison, double %i.b, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.v, <2 x double> %i.z)
  %i.ad = load <2 x double>, ptr %i.h, align 8, !tbaa !8, !noalias !519
  %i.ae = insertelement <2 x double> poison, double %i.g, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ad, <2 x double> %i.ac)
  %i.ah = load <2 x double>, ptr %i.i, align 8, !tbaa !8, !noalias !519
  %i.ai = fadd <2 x double> %i.ag, %i.ah
  store <2 x double> %i.ai, ptr %0, align 8, !tbaa !8, !alias.scope !519
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.u, ptr %i.aj, align 8, !tbaa !8, !alias.scope !519
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap15applyInverseMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.b = load double, ptr %2, align 8, !tbaa !8, !noalias !522 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !8, !noalias !522 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !8, !noalias !522 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.k = load double, ptr %i.j, align 8, !tbaa !8, !noalias !522
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.m = load double, ptr %i.l, align 8, !tbaa !8, !noalias !522
  %i.n = fmul double %i.d, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.b, double %i.k, double %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.q = load double, ptr %i.p, align 8, !tbaa !8, !noalias !522
  %i.r = tail call double @llvm.fmuladd.f64(double %i.g, double %i.q, double %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.t = load double, ptr %i.s, align 8, !tbaa !8, !noalias !522
  %i.u = fadd double %i.t, %i.r
  %i.v = load <2 x double>, ptr %i.a, align 8, !tbaa !8, !noalias !522
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !8, !noalias !522
  %i.x = insertelement <2 x double> poison, double %i.d, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x double> %i.y, %i.w
  %i.aa = insertelement <2 x double> poison, double %i.b, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.v, <2 x double> %i.z)
  %i.ad = load <2 x double>, ptr %i.h, align 8, !tbaa !8, !noalias !522
  %i.ae = insertelement <2 x double> poison, double %i.g, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ad, <2 x double> %i.ac)
  %i.ah = load <2 x double>, ptr %i.i, align 8, !tbaa !8, !noalias !522
  %i.ai = fadd <2 x double> %i.ag, %i.ah
  store <2 x double> %i.ai, ptr %0, align 8, !tbaa !8, !alias.scope !522
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.u, ptr %i.aj, align 8, !tbaa !8, !alias.scope !522
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyIJTERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.b = load double, ptr %2, align 8, !tbaa !8, !noalias !525 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !8, !noalias !525 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !8, !noalias !525 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.j = load double, ptr %i.i, align 8, !tbaa !8, !noalias !525
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.l = load double, ptr %i.k, align 8, !tbaa !8, !noalias !525
  %i.m = fmul double %i.d, %i.l
  %i.n = tail call double @llvm.fmuladd.f64(double %i.b, double %i.j, double %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.p = load double, ptr %i.o, align 8, !tbaa !8, !noalias !525
  %i.q = tail call double @llvm.fmuladd.f64(double %i.g, double %i.p, double %i.n)
  %i.r = load <2 x double>, ptr %i.a, align 8, !tbaa !8, !noalias !525
  %i.s = load <2 x double>, ptr %i.e, align 8, !tbaa !8, !noalias !525
  %i.t = insertelement <2 x double> poison, double %i.d, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s
  %i.w = insertelement <2 x double> poison, double %i.b, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.r, <2 x double> %i.v)
  %i.z = load <2 x double>, ptr %i.h, align 8, !tbaa !8, !noalias !525
  %i.aa = insertelement <2 x double> poison, double %i.g, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.z, <2 x double> %i.y)
  store <2 x double> %i.ac, ptr %0, align 8, !tbaa !8, !alias.scope !525
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.q, ptr %i.ad, align 8, !tbaa !8, !alias.scope !525
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyIJTERKNS1_4Vec3IdEES6_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.b = load double, ptr %2, align 8, !tbaa !8, !noalias !534 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !8, !noalias !534 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !8, !noalias !534 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.j = load double, ptr %i.i, align 8, !tbaa !8, !noalias !534
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.l = load double, ptr %i.k, align 8, !tbaa !8, !noalias !534
  %i.m = fmul double %i.d, %i.l
  %i.n = tail call double @llvm.fmuladd.f64(double %i.b, double %i.j, double %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.p = load double, ptr %i.o, align 8, !tbaa !8, !noalias !534
end_hunk_6
begin_hunk_7_@_ZNK7openvdb5v13_04math4Mat4IdE6invertERS3_d:bb.a
  %i.fo = fneg <2 x double> %i.fm
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fi, <2 x double> %i.fn)
  store <2 x double> %i.fp, ptr %i.fl, align 8, !tbaa !8
  br label %.loopexit.1170

.loopexit.1170:                                   ; preds = %.preheader.1168, %.loopexit
  %gep132.2 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.fq = load double, ptr %gep132.2, align 8, !tbaa !8 ; 2 uses
  %i.fr = fcmp oeq double %i.fq, 0.000000e+00
  br i1 %i.fr, label %.loopexit.2173, label %.preheader.2171

.preheader.2171:                                  ; preds = %.loopexit.1170
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ft = load <2 x double>, ptr %i.ct, align 8, !tbaa !8
  %i.fu = load <2 x double>, ptr %i.fs, align 8, !tbaa !8
  %i.fv = fneg <2 x double> %i.ft
  %i.fw = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fx, <2 x double> %i.fu)
  store <2 x double> %i.fy, ptr %i.fs, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.gb = load <2 x double>, ptr %i.fz, align 8, !tbaa !8
  %i.gc = load <2 x double>, ptr %i.ga, align 8, !tbaa !8
  %i.gd = fneg <2 x double> %i.gb
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.fx, <2 x double> %i.gc)
  store <2 x double> %i.ge, ptr %i.ga, align 8, !tbaa !8
  br label %.loopexit.2173

.loopexit.2173:                                   ; preds = %.preheader.2171, %.loopexit.1170
  %invariant.gep131.1 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gg = load double, ptr %invariant.gep131.1, align 8, !tbaa !8 ; 2 uses
  %i.gh = fcmp oeq double %i.gg, 0.000000e+00
  br i1 %i.gh, label %.loopexit.1, label %.preheader.1

.thread:                                          ; preds = %._crit_edge, %.loopexit.2
  %.3 = phi i1 [ %i.eo, %.loopexit.2 ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, double noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8
  %i.b = load double, ptr %1, align 8, !tbaa !8
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp ule double %i.d, %2
  br i1 %i.e, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.f, align 8, !tbaa !8
  %i.i = load double, ptr %i.g, align 8, !tbaa !8
  %i.j = fsub double %i.h, %i.i
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp ule double %i.k, %2
  br i1 %i.l, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load double, ptr %i.m, align 8, !tbaa !8
  %i.p = load double, ptr %i.n, align 8, !tbaa !8
  %i.q = fsub double %i.o, %i.p
  %i.r = tail call noundef double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ule double %i.r, %2
  br i1 %i.s, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load double, ptr %i.t, align 8, !tbaa !8
  %i.w = load double, ptr %i.u, align 8, !tbaa !8
  %i.x = fsub double %i.v, %i.w
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ule double %i.y, %2
  br i1 %i.z, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !8
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !8
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.ae)
  %i.ag = fcmp ule double %i.af, %2
  br i1 %i.ag, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !8
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !8
  %i.al = fsub double %i.aj, %i.ak
  %i.am = tail call noundef double @llvm.fabs.f64(double %i.al)
  %i.an = fcmp ule double %i.am, %2
  br i1 %i.an, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !8
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !8
  %i.as = fsub double %i.aq, %i.ar
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp ule double %i.at, %2
  br i1 %i.au, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load double, ptr %i.av, align 8, !tbaa !8
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !8
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ule double %i.ba, %2
  br i1 %i.bb, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = load double, ptr %i.bc, align 8, !tbaa !8
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !8
  %i.bg = fsub double %i.be, %i.bf
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ule double %i.bh, %2
  br i1 %i.bi, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !8
  %i.bm = load double, ptr %i.bk, align 8, !tbaa !8
  %i.bn = fsub double %i.bl, %i.bm
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp ule double %i.bo, %2
  br i1 %i.bp, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !8
  %i.bt = load double, ptr %i.br, align 8, !tbaa !8
  %i.bu = fsub double %i.bs, %i.bt
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp ule double %i.bv, %2
  br i1 %i.bw, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !8
  %i.ca = load double, ptr %i.by, align 8, !tbaa !8
  %i.cb = fsub double %i.bz, %i.ca
  %i.cc = tail call noundef double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp ule double %i.cc, %2
  br i1 %i.cd, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !8
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !8
  %i.ci = fsub double %i.cg, %i.ch
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ule double %i.cj, %2
  br i1 %i.ck, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !8
  %i.co = load double, ptr %i.cm, align 8, !tbaa !8
  %i.cp = fsub double %i.cn, %i.co
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp ule double %i.cq, %2
  br i1 %i.cr, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !8
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !8
  %i.cw = fsub double %i.cu, %i.cv
  %i.cx = tail call noundef double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp ule double %i.cx, %2
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.db = load double, ptr %i.cz, align 8, !tbaa !8
  %i.dc = load double, ptr %i.da, align 8, !tbaa !8
  %i.dd = fsub double %i.db, %i.dc
  %i.de = tail call noundef double @llvm.fabs.f64(double %i.dd)
  %i.df = fcmp ule double %i.de, %2
  br i1 %i.df, label %3, label %bb.q

3:                                                ; preds = %bb.p
  br label %bb.q

bb.q:                                             ; preds = %3, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ true, %3 ], [ false, %bb.b ], [ false, %bb.p ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.m ], [ false, %bb.i ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04math9isUnitaryINS1_4Mat3IdEEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 4 uses
  %i.g = fneg double %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !8 ; 6 uses
  %i.j = load <2 x double>, ptr %i.b, align 8, !tbaa !8 ; 7 uses
  %i.k = fneg <2 x double> %i.j
  %i.l = load <2 x double>, ptr %i.a, align 8, !tbaa !8 ; 6 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> %i.i, <2 x i32> <i32 1, i32 2>
  %i.n = fmul <2 x double> %i.m, %i.k
  %i.o = shufflevector <2 x double> %i.j, <2 x double> %i.d, <2 x i32> <i32 1, i32 2>
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.o, <2 x double> %i.n) ; 2 uses
  %i.q = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 6 uses
  %i.r = load double, ptr %i.h, align 8, !tbaa !8 ; 2 uses
  %i.s = shufflevector <2 x double> %i.l, <2 x double> %i.p, <2 x i32> <i32 0, i32 3>
  %i.t = insertelement <2 x double> poison, double %i.g, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.r, i64 1
  %i.v = fmul <2 x double> %i.s, %i.u
  %i.w = shufflevector <2 x double> %i.i, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.x = shufflevector <2 x double> %i.j, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.x, <2 x double> %i.v) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !8 ; 5 uses
  %i.ab = extractelement <2 x double> %i.y, i64 0
  %i.ac = extractelement <2 x double> %i.y, i64 1
  %i.ad = tail call noundef double @llvm.fmuladd.f64(double %i.aa, double %i.ab, double %i.ac)
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.ad)
  %i.af = fadd double %i.ae, -1.000000e+00
  %i.ag = tail call noundef double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp ule double %i.ag, 1.000000e-15
  br i1 %i.ah, label %bb.b, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.b:                                             ; preds = %bb.a
  %i.ai = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = shufflevector <2 x double> %i.q, <2 x double> %i.i, <2 x i32> <i32 1, i32 3>
  %i.ak = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <2 x double> %i.q, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.al) ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.ap)
  %i.ar = extractelement <2 x double> %i.ao, i64 1
  %i.as = extractelement <2 x double> %i.l, i64 1 ; 4 uses
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.as, double %i.ar) ; 2 uses
  %i.au = extractelement <2 x double> %i.j, i64 0
  %i.av = fmul double %i.au, %i.r
  %i.aw = extractelement <2 x double> %i.q, i64 0
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.f, double %i.av)
  %i.ay = extractelement <2 x double> %i.j, i64 1 ; 4 uses
  %i.az = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ay, double %i.ax) ; 2 uses
  %i.ba = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = shufflevector <2 x double> %i.l, <2 x double> %i.d, <2 x i32> <i32 0, i32 3>
  %i.bc = fmul <2 x double> %i.ba, %i.bb
  %i.bd = shufflevector <2 x double> %i.i, <2 x double> %i.d, <2 x i32> <i32 0, i32 2>
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.bd, <2 x double> %i.bc) ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.as, double %i.as, double %i.bf)
  %i.bh = extractelement <2 x double> %i.be, i64 1
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ay, double %i.bh) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.j, %i.j
  %i.bj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %i.bj)
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.bk)
  %i.bm = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.c, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, !prof !168

bb.c:                                             ; preds = %bb.b
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #24
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !8
  %i.bp = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #24
  br label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit

_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit:   ; preds = %bb.b, %bb.c, %bb.d
  %i.bq = load double, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !8
  %i.br = fsub double %i.aq, %i.bq
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.bt = fcmp ule double %i.bs, 1.000000e-08
  br i1 %i.bt, label %bb.e, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.e:                                             ; preds = %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit
  %i.bu = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), align 8, !tbaa !8
  %i.bv = fsub double %i.at, %i.bu
  %i.bw = tail call noundef double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ule double %i.bw, 1.000000e-08
  br i1 %i.bx, label %bb.f, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.f:                                             ; preds = %bb.e
  %i.by = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 16), align 8, !tbaa !8
  %i.bz = fsub double %i.az, %i.by
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp ule double %i.ca, 1.000000e-08
  br i1 %i.cb, label %bb.g, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.g:                                             ; preds = %bb.f
  %i.cc = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 24), align 8, !tbaa !8
  %i.cd = fsub double %i.at, %i.cc
  %i.ce = tail call noundef double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp ule double %i.ce, 1.000000e-08
  br i1 %i.cf, label %bb.h, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.h:                                             ; preds = %bb.g
  %i.cg = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !8
  %i.ch = fsub double %i.bg, %i.cg
  %i.ci = tail call noundef double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ule double %i.ci, 1.000000e-08
  br i1 %i.cj, label %bb.i, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.i:                                             ; preds = %bb.h
  %i.ck = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !8
  %i.cl = fsub double %i.bi, %i.ck
  %i.cm = tail call noundef double @llvm.fabs.f64(double %i.cl)
  %i.cn = fcmp ule double %i.cm, 1.000000e-08
  br i1 %i.cn, label %bb.j, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.j:                                             ; preds = %bb.i
  %i.co = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 48), align 8, !tbaa !8
  %i.cp = fsub double %i.az, %i.co
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp ule double %i.cq, 1.000000e-08
  br i1 %i.cr, label %bb.k, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.k:                                             ; preds = %bb.j
  %i.cs = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 56), align 8, !tbaa !8
  %i.ct = fsub double %i.bi, %i.cs
  %i.cu = tail call noundef double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp ule double %i.cu, 1.000000e-08
  br i1 %i.cv, label %bb.l, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.l:                                             ; preds = %bb.k
  %i.cw = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !8
  %i.cx = fsub double %i.bl, %i.cw
  %i.cy = tail call noundef double @llvm.fabs.f64(double %i.cx)
  %i.cz = fcmp ule double %i.cy, 1.000000e-08
  br label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit:   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit ], [ %i.cz, %bb.l ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math3MatILj4EdE3strB5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  store i64 0, ptr %i.b, align 8, !tbaa !29
  store i8 0, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !29
  store i8 0, ptr %i.c, align 8, !tbaa !32
  %i.e = add i32 %2, 1
  %i.f = zext i32 %i.e to i64
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef %i.f, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !29
end_hunk_7
begin_hunk_8_@_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyIJCERKNS1_4Mat3IdEERKNS1_4Vec3IdEESA_:bb.a
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.sroa.6 = alloca [4 x double], align 16        ; 11 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.12.0.copyload = load double, ptr %.sroa.12.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !8, !noalias !688
  %i.d = fsub double %.sroa.12.0.copyload, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.f = load <2 x double>, ptr %4, align 8
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !8, !noalias !688
  %i.h = fsub <2 x double> %i.f, %i.g
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !8, !noalias !693
  %i.j = fsub <2 x double> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !146, !noalias !693
  %i.m = fmul double %i.d, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.o = load double, ptr %i.n, align 8, !tbaa !147, !noalias !693 ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.m, double 1.000000e+00) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.r = load double, ptr %i.q, align 8, !tbaa !148, !noalias !693 ; 2 uses
  %i.s = fdiv double %i.p, %i.r
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.j, %i.u             ; 5 uses
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.p)
  %i.x = fcmp ule double %i.w, 1.000000e-15
  br i1 %i.x, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !29
  store i8 0, ptr %i.y, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.35, i64 noundef 81)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7) #24 ; 0 uses
  %i.ac = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.ai, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.ah, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ak = call ptr @__cxa_begin_catch(ptr %.1) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.al, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #26
          to label %bb.u unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.y
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.k
  %i.ap = load i64, ptr %i.y, align 8, !tbaa !32
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.am

bb.l:                                             ; preds = %bb.a
  %i.ar = fdiv double 1.000000e+00, %i.p          ; 3 uses
  %i.as = fmul double %i.r, %i.ar                 ; 2 uses
  %i.at = fmul double %i.o, %i.as
  %i.au = fmul double %i.ar, %i.at                ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.aw = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit, !prof !168

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #24
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero, i8 0, i64 72, i1 false)
  %i.az = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #24
  br label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit

_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit:       ; preds = %bb.l, %bb.m, %bb.n
  %i.ba = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104, !prof !168

bb.o:                                             ; preds = %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #24
  %.not.i103 = icmp eq i32 %i.bc, 0
  br i1 %.not.i103, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero, i8 0, i64 72, i1 false)
  %i.bd = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #24
  br label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104

_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104:    ; preds = %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit, %bb.o, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !8 ; 11 uses
  %i.bh = load <2 x double>, ptr %i.av, align 8, !tbaa !8 ; 5 uses
  %i.bi = load <2 x double>, ptr %i.bf, align 8, !tbaa !8 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !8 ; 6 uses
  %i.bm = load double, ptr %i.bj, align 8, !tbaa !8 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.bp = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero acquire, align 8
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit106, !prof !168

bb.q:                                             ; preds = %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104
  %i.br = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #24
  %.not.i105 = icmp eq i32 %i.br, 0
  br i1 %.not.i105, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit106, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero, i8 0, i64 72, i1 false)
  %i.bs = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #24
  br label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit106

_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit106:    ; preds = %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104, %bb.q, %bb.r
  %i.bt = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer ; 9 uses
  %i.bv = fmul <2 x double> %i.v, %i.bu           ; 3 uses
  %i.bw = load double, ptr %i.k, align 8, !tbaa !146
  %i.bx = load <2 x double>, ptr %i.be, align 8, !tbaa !8 ; 2 uses
  %i.by = fneg <2 x double> %i.bx                 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.av, align 8, !tbaa !8
  %i.ca = insertelement <2 x double> poison, double %i.as, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !8 ; 2 uses
  %8 = fneg double %i.ce                          ; 2 uses
  %i.cf = load <2 x double>, ptr %i.bj, align 8, !tbaa !8
  %i.cg = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ch = insertelement <2 x double> %i.cg, double %8, i64 0
  %i.ci = fmul <2 x double> %i.bv, %i.ch
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cf, <2 x double> %i.ci)
  store <2 x double> %i.cj, ptr %.sroa.6, align 16, !tbaa !8
  %i.ck = load <2 x double>, ptr %i.cc, align 8, !tbaa !8
  %i.cl = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cm = insertelement <2 x double> %i.cg, double %8, i64 1
  %i.cn = fmul <2 x double> %i.cl, %i.cm
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.ck, <2 x double> %i.cn)
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  store <2 x double> %i.co, ptr %.sroa.6.16..sroa_idx, align 16, !tbaa !8
  %i.cp = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero acquire, align 8
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.s, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit108, !prof !168

bb.s:                                             ; preds = %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit106
  %i.cr = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #24
  %.not.i107 = icmp eq i32 %i.cr, 0
  br i1 %.not.i107, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit108, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero, i8 0, i64 72, i1 false)
  %i.cs = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #24
  br label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit108

_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit108:    ; preds = %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit106, %bb.s, %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero, i64 72, i1 false)
  %.pre = load double, ptr %2, align 8, !tbaa !8  ; 4 uses
  %i.ct = insertelement <2 x double> poison, double %.pre, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre157 = load double, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 4 uses
  %i.cv = insertelement <2 x double> poison, double %.pre157, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert158 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre159 = load double, ptr %.phi.trans.insert158, align 8, !tbaa !8 ; 4 uses
  %i.cx = insertelement <2 x double> poison, double %.pre159, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert160 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre161 = load double, ptr %.phi.trans.insert160, align 8, !tbaa !8 ; 4 uses
  %i.cz = insertelement <2 x double> poison, double %.pre161, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre163 = load double, ptr %.phi.trans.insert162, align 8, !tbaa !8 ; 4 uses
  %i.db = insertelement <2 x double> poison, double %.pre163, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert164 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre165 = load double, ptr %.phi.trans.insert164, align 8, !tbaa !8 ; 4 uses
  %i.dd = insertelement <2 x double> poison, double %.pre165, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert166 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre167 = load double, ptr %.phi.trans.insert166, align 8, !tbaa !8 ; 4 uses
  %i.df = insertelement <2 x double> poison, double %.pre167, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert168 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.pre169 = load double, ptr %.phi.trans.insert168, align 8, !tbaa !8 ; 4 uses
  %i.dh = insertelement <2 x double> poison, double %.pre169, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.pre171 = load double, ptr %.phi.trans.insert170, align 8, !tbaa !8 ; 4 uses
  %i.dj = insertelement <2 x double> poison, double %.pre171, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 8
  %.sroa.6.8..sroa.6.24. = load <2 x double>, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !8 ; 9 uses
  %.sroa.6.24..sroa_idx187 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 24
  %.sroa.6.24..sroa.6.40..pre174 = load double, ptr %.sroa.6.24..sroa_idx187, align 8, !tbaa !8 ; 9 uses
  %.sroa.6.0..sroa.6.16..pre173 = load double, ptr %.sroa.6, align 16, !tbaa !8 ; 9 uses
  %i.dl = fdiv double 1.000000e+00, %i.bw         ; 2 uses
  %i.dm = fmul double %i.ce, %i.dl                ; 13 uses
  %i.dn = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x double> %i.bx, %i.do          ; 13 uses
  %i.dq = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x double> %i.dq, %i.by
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.bz, <2 x double> %i.dr) ; 13 uses
  %.sroa.0.0.vec.extract = extractelement <2 x double> %i.ds, i64 0 ; 3 uses
  %.sroa.6.8..sroa_idx185 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 8
  %.sroa.6.8..sroa.6.24.181 = load double, ptr %.sroa.6.8..sroa_idx185, align 8, !tbaa !8 ; 4 uses
  %.sroa.15.48.vec.extract = extractelement <2 x double> %i.dp, i64 0 ; 3 uses
  %i.dt = load <2 x double>, ptr %0, align 8, !tbaa !8
  %i.du = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dv = fmul <2 x double> %i.du, %i.ds
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.cu, <2 x double> %i.dt)
  %i.dx = insertelement <2 x double> poison, double %.sroa.6.8..sroa.6.24.181, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dz = fmul <2 x double> %i.dy, %i.ds
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.cw, <2 x double> %i.dw)
  %i.eb = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ec = fmul <2 x double> %i.eb, %i.ds
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.cy, <2 x double> %i.ea)
  %i.ee = fmul <2 x double> %i.du, %.sroa.6.8..sroa.6.24.
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.da, <2 x double> %i.ed)
  %i.eg = fmul <2 x double> %i.dy, %.sroa.6.8..sroa.6.24.
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.dc, <2 x double> %i.ef)
  %i.ei = fmul <2 x double> %i.eb, %.sroa.6.8..sroa.6.24.
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.de, <2 x double> %i.eh)
  %i.ek = fmul <2 x double> %i.du, %i.dp
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.dg, <2 x double> %i.ej)
  %i.em = fmul <2 x double> %i.dy, %i.dp
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.di, <2 x double> %i.el)
  %i.eo = fmul <2 x double> %i.eb, %i.dp
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.dk, <2 x double> %i.en)
  store <2 x double> %i.ep, ptr %0, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted122.2 = load double, ptr %i.eq, align 8, !tbaa !8
  %i.er = fmul double %.sroa.0.0.vec.extract, %.sroa.6.0..sroa.6.16..pre173
  %i.es = tail call double @llvm.fmuladd.f64(double %i.er, double %.pre, double %.promoted122.2)
  %i.et = fmul double %.sroa.6.8..sroa.6.24.181, %.sroa.6.0..sroa.6.16..pre173
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.et, double %.pre157, double %i.es)
  %i.ev = fmul double %.sroa.15.48.vec.extract, %.sroa.6.0..sroa.6.16..pre173
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.ev, double %.pre159, double %i.eu)
  %i.ex = fmul double %.sroa.0.0.vec.extract, %.sroa.6.24..sroa.6.40..pre174
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ex, double %.pre161, double %i.ew)
  %i.ez = fmul double %.sroa.6.8..sroa.6.24.181, %.sroa.6.24..sroa.6.40..pre174
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.ez, double %.pre163, double %i.ey)
  %i.fb = fmul double %.sroa.15.48.vec.extract, %.sroa.6.24..sroa.6.40..pre174
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double %.pre165, double %i.fa)
  %i.fd = fmul double %.sroa.0.0.vec.extract, %i.dm
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double %.pre167, double %i.fc)
  %i.ff = fmul double %.sroa.6.8..sroa.6.24.181, %i.dm
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ff, double %.pre169, double %i.fe)
  %i.fh = fmul double %.sroa.15.48.vec.extract, %i.dm
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.fh, double %.pre171, double %i.fg)
  store double %i.fi, ptr %i.eq, align 8, !tbaa !8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.8.vec.extract = extractelement <2 x double> %i.ds, i64 1 ; 3 uses
  %.sroa.6.16..sroa_idx186 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  %.sroa.6.16..sroa.6.32. = load double, ptr %.sroa.6.16..sroa_idx186, align 16, !tbaa !8 ; 4 uses
  %.sroa.15.56.vec.extract = extractelement <2 x double> %i.dp, i64 1 ; 3 uses
  %i.fk = load <2 x double>, ptr %i.fj, align 8, !tbaa !8
  %i.fl = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fm = fmul <2 x double> %i.fl, %i.ds
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.cu, <2 x double> %i.fk)
  %i.fo = insertelement <2 x double> poison, double %.sroa.6.16..sroa.6.32., i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fq = fmul <2 x double> %i.fp, %i.ds
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.cw, <2 x double> %i.fn)
  %i.fs = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ft = fmul <2 x double> %i.fs, %i.ds
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %i.cy, <2 x double> %i.fr)
  %i.fv = fmul <2 x double> %i.fl, %.sroa.6.8..sroa.6.24.
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.da, <2 x double> %i.fu)
  %i.fx = fmul <2 x double> %i.fp, %.sroa.6.8..sroa.6.24.
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.dc, <2 x double> %i.fw)
  %i.fz = fmul <2 x double> %i.fs, %.sroa.6.8..sroa.6.24.
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.de, <2 x double> %i.fy)
  %i.gb = fmul <2 x double> %i.fl, %i.dp
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.dg, <2 x double> %i.ga)
  %i.gd = fmul <2 x double> %i.fp, %i.dp
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.di, <2 x double> %i.gc)
  %i.gf = fmul <2 x double> %i.fs, %i.dp
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.dk, <2 x double> %i.ge)
  store <2 x double> %i.gg, ptr %i.fj, align 8, !tbaa !8
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted122.2.1 = load double, ptr %i.gh, align 8, !tbaa !8
  %i.gi = fmul double %.sroa.0.8.vec.extract, %.sroa.6.0..sroa.6.16..pre173
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.gi, double %.pre, double %.promoted122.2.1)
  %i.gk = fmul double %.sroa.6.16..sroa.6.32., %.sroa.6.0..sroa.6.16..pre173
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gk, double %.pre157, double %i.gj)
  %i.gm = fmul double %.sroa.15.56.vec.extract, %.sroa.6.0..sroa.6.16..pre173
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.gm, double %.pre159, double %i.gl)
  %i.go = fmul double %.sroa.0.8.vec.extract, %.sroa.6.24..sroa.6.40..pre174
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.go, double %.pre161, double %i.gn)
  %i.gq = fmul double %.sroa.6.16..sroa.6.32., %.sroa.6.24..sroa.6.40..pre174
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gq, double %.pre163, double %i.gp)
  %i.gs = fmul double %.sroa.15.56.vec.extract, %.sroa.6.24..sroa.6.40..pre174
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gs, double %.pre165, double %i.gr)
  %i.gu = fmul double %.sroa.0.8.vec.extract, %i.dm
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gu, double %.pre167, double %i.gt)
  %i.gw = fmul double %.sroa.6.16..sroa.6.32., %i.dm
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double %.pre169, double %i.gv)
  %i.gy = fmul double %.sroa.15.56.vec.extract, %i.dm
  %i.gz = tail call double @llvm.fmuladd.f64(double %i.gy, double %.pre171, double %i.gx)
  store double %i.gz, ptr %i.gh, align 8, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.6.0..sroa.6.16. = load double, ptr %.sroa.6, align 16, !tbaa !8 ; 4 uses
  %.sroa.6.24..sroa_idx188 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 24
  %.sroa.6.24..sroa.6.40. = load double, ptr %.sroa.6.24..sroa_idx188, align 8, !tbaa !8 ; 4 uses
  %i.hb = load <2 x double>, ptr %i.ha, align 8, !tbaa !8
  %i.hc = insertelement <2 x double> poison, double %.sroa.6.0..sroa.6.16., i64 0
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.he = fmul <2 x double> %i.hd, %i.ds
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %i.cu, <2 x double> %i.hb)
  %i.hg = insertelement <2 x double> poison, double %.sroa.6.24..sroa.6.40., i64 0
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hi = fmul <2 x double> %i.hh, %i.ds
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.cw, <2 x double> %i.hf)
  %i.hk = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hm = fmul <2 x double> %i.hl, %i.ds
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.cy, <2 x double> %i.hj)
  %i.ho = fmul <2 x double> %i.hd, %.sroa.6.8..sroa.6.24.
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.da, <2 x double> %i.hn)
  %i.hq = fmul <2 x double> %i.hh, %.sroa.6.8..sroa.6.24.
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.dc, <2 x double> %i.hp)
  %i.hs = fmul <2 x double> %i.hl, %.sroa.6.8..sroa.6.24.
  %i.ht = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.de, <2 x double> %i.hr)
  %i.hu = fmul <2 x double> %i.hd, %i.dp
  %i.hv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.dg, <2 x double> %i.ht)
end_hunk_8
