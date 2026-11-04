Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 383
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1355
begin_hunk_0_@_ZN7openvdb5v13_04math24UniformScaleTranslateMap6createEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !1111
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_24UniformScaleTranslateMapEvEEPT_.exit unwind label %bb.c ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 152) #35
  invoke void @__cxa_rethrow() #33
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #34
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_24UniformScaleTranslateMapEvEEPT_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !1115
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !1116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math24UniformScaleTranslateMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !1113
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.m, align 8, !tbaa !1130
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1111
  ret void

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 152) #35
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMap11registerMapEv() local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9677)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !1122, !alias.scope !9677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !9677
  store i64 19, ptr %i.a, align 8, !tbaa !1156, !noalias !9677
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1127, !alias.scope !9677
  %i.d = load i64, ptr %i.a, align 8, !tbaa !1156, !noalias !9677 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !1126, !alias.scope !9677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.69, i64 19, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !1125, !alias.scope !9677
  %i.f = load ptr, ptr %0, align 8, !tbaa !1127, !alias.scope !9677
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !9677
  invoke void @_ZN7openvdb5v13_04math11MapRegistry11registerMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrINS1_7MapBaseEEvE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @_ZN7openvdb5v13_04math19NonlinearFrustumMap6createEv)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !1127   ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !1126
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %0, align 8, !tbaa !1127   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !1126
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMap6createEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(520) ptr @_Znwm(i64 noundef 520) #32 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math19NonlinearFrustumMapE, i64 16), ptr %i.a, align 8, !tbaa !1113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.c, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x double> splat (double 1.000000e+00), ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !1274
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZN7openvdb5v13_04math9AffineMapC2Ev(ptr noundef nonnull align 8 dereferenceable(376) %i.e)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN7openvdb5v13_04math19NonlinearFrustumMap4initEv(ptr noundef nonnull align 8 dereferenceable(520) %i.a)
          to label %_ZN7openvdb5v13_04math19NonlinearFrustumMapC2Ev.exit unwind label %bb.f

_ZN7openvdb5v13_04math19NonlinearFrustumMapC2Ev.exit: ; preds = %.noexc
  store ptr %i.a, ptr %0, align 8, !tbaa !1110
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !1111
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_19NonlinearFrustumMapEvEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %_ZN7openvdb5v13_04math19NonlinearFrustumMapC2Ev.exit
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #35
  invoke void @__cxa_rethrow() #33
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #34
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_19NonlinearFrustumMapEvEEPT_.exit: ; preds = %_ZN7openvdb5v13_04math19NonlinearFrustumMapC2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !1115
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !1116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !1113
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.a, ptr %i.p, align 8, !tbaa !1277
  store ptr %i.g, ptr %i.f, align 8, !tbaa !1111
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #35
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMap4initEv(ptr noundef nonnull align 8 dereferenceable(520) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.881.0.copyload = load double, ptr %.sroa.881.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !1104, !noalias !9686
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.f = load <2 x double>, ptr %i.b, align 8
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9686
  %i.h = fsub <2 x double> %i.f, %i.g             ; 5 uses
  store <2 x double> %i.h, ptr %i.e, align 8, !tbaa !1104
  %i.i = fsub double %.sroa.881.0.copyload, %i.d  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  store double %i.i, ptr %i.j, align 8, !tbaa !9687
  %i.k = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.h)
  %i.l = fcmp ule <2 x double> %i.k, splat (double 1.000000e-15) ; 2 uses
  %4 = extractelement <2 x i1> %i.l, i64 0
  %5 = extractelement <2 x i1> %i.l, i64 1
  %or.cond = select i1 %4, i1 true, i1 %5
  %i.m = tail call double @llvm.fabs.f64(double %i.i)
  %i.n = fcmp ule double %i.m, 1.000000e-15
  %or.cond84 = select i1 %or.cond, i1 true, i1 %i.n
  br i1 %or.cond84, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !1122
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !1125
  store i8 0, ptr %i.o, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.critedge
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.70, i64 noundef 83)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #26 ; 0 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !1127   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8, !tbaa !1126
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.i

bb.d:                                             ; preds = %.critedge
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.y, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.x, %bb.d ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.aa = call ptr @__cxa_begin_catch(ptr %.1) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.ab, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.q unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1127  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.j
  %i.af = load i64, ptr %i.o, align 8, !tbaa !1126
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.ac

bb.k:                                             ; preds = %bb.a
  %i.ah = fmul nnan <2 x double> %i.h, splat (double 5.000000e-01)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x double> %i.ah, ptr %i.ai, align 8, !tbaa !1104
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !1278
  %i.al = fdiv double 1.000000e+00, %i.ak
  %i.am = fadd double %i.al, -1.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load double, ptr %i.an, align 8, !tbaa !1274 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aq = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ao, i64 1
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.i, i64 1
  %i.au = fdiv <2 x double> %i.ar, %i.at          ; 2 uses
  store <2 x double> %i.au, ptr %i.ap, align 8, !tbaa !1104
  %foldExtExtBinop = fmul nnan <2 x double> %i.h, %i.h
  %i.av = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aw = extractelement <2 x double> %i.au, i64 1
  %i.ax = fdiv double %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double %i.ax, ptr %i.ay, align 8, !tbaa !1279
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store i8 1, ptr %i.az, align 8, !tbaa !1280
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.064.0.copyload = load double, ptr %i.ba, align 8 ; 2 uses
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.566.0.copyload = load double, ptr %.sroa.566.0..sroa_idx, align 8
  %i.bb = fsub double %.sroa.064.0.copyload, %.sroa.566.0.copyload
  %i.bc = tail call noundef double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp ule double %i.bc, 1.000000e-15
  br i1 %i.bd, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.667.0.copyload = load double, ptr %.sroa.667.0..sroa_idx, align 8
  %i.be = fsub double %.sroa.064.0.copyload, %.sroa.667.0.copyload
  %i.bf = tail call noundef double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp ule double %i.bf, 1.000000e-15
  br i1 %i.bg, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load <2 x double>, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bk = load <2 x double>, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !1104, !noalias !9688 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bs = load double, ptr %i.br, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !1104, !noalias !9688
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = load double, ptr %i.bx, align 8, !tbaa !1104, !noalias !9688
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.cd = insertelement <2 x double> poison, double %i.bm, i64 0 ; 2 uses
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x double> %i.bk, double %i.by, i64 1 ; 2 uses
  %i.ci = fmul <2 x double> %i.ch, zeroinitializer ; 2 uses
  %i.cj = insertelement <2 x double> %i.bi, double %i.bw, i64 1 ; 3 uses
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> zeroinitializer, <2 x double> %i.ci) ; 4 uses
  %i.cl = fadd <2 x double> %i.cj, %i.ci          ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> zeroinitializer, <2 x double> %i.cm)
  %i.co = fadd <2 x double> %i.cg, %i.cn          ; 2 uses
  %i.cp = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <2 x double> %i.cl, <2 x double> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> zeroinitializer, <2 x double> %i.cr)
  %i.ct = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fadd <2 x double> %i.cu, %i.cs          ; 2 uses
  %i.cw = extractelement <2 x double> %i.co, i64 0
  %i.cx = extractelement <2 x double> %i.co, i64 1 ; 3 uses
  %i.cy = fsub double %i.cw, %i.cx                ; 2 uses
  %i.cz = extractelement <2 x double> %i.cv, i64 0
  %i.da = extractelement <2 x double> %i.cv, i64 1 ; 3 uses
  %i.db = fsub double %i.cz, %i.da                ; 2 uses
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> zeroinitializer, <2 x double> %i.ch)
  %i.dd = insertelement <2 x double> %i.cd, double %i.ca, i64 1
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> zeroinitializer, <2 x double> %i.dc) ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  %i.dg = fadd double %i.df, %i.bo
  %i.dh = extractelement <2 x double> %i.de, i64 1
  %i.di = fadd double %i.cc, %i.dh
  %i.dj = fsub double %i.dg, %i.cx                ; 2 uses
  %i.dk = load double, ptr %i.bp, align 8, !tbaa !1104, !noalias !9688 ; 2 uses
  %i.dl = load <1 x double>, ptr %i.bq, align 8
  %i.dm = shufflevector <1 x double> %i.dl, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.dm, <double 0.000000e+00, double 1.000000e+00> ; 2 uses
  %i.do = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> zeroinitializer, <2 x double> %i.dn) ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0 ; 2 uses
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.bs, double 0.000000e+00, double %i.dr)
  %i.dt = fadd double %i.bu, %i.ds                ; 2 uses
  %i.du = extractelement <2 x double> %i.dn, i64 0
  %i.dv = fadd double %i.dk, %i.du
  %i.dw = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dz = insertelement <2 x double> %i.dy, double %i.dv, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> zeroinitializer, <2 x double> %i.dz)
  %i.eb = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fadd <2 x double> %i.ec, %i.ea
  %i.ee = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fsub <2 x double> %i.ed, %i.ef          ; 2 uses
  %i.eh = fsub double %i.di, %i.da                ; 2 uses
  %i.ei = extractelement <2 x double> %i.ck, i64 0
  %i.ej = fadd double %i.bm, %i.ei
  %i.ek = fadd double %i.bo, %i.ej
  %i.el = fadd double %i.bs, %i.dr
  %i.em = fadd double %i.bu, %i.el
  %i.en = extractelement <2 x double> %i.ck, i64 1
  %i.eo = fadd double %i.ca, %i.en
  %i.ep = fadd double %i.cc, %i.eo
  %i.eq = fsub double %i.ek, %i.cx                ; 2 uses
  %i.er = fsub double %i.em, %i.dt                ; 2 uses
  %i.es = fsub double %i.ep, %i.da                ; 2 uses
  %i.et = extractelement <2 x double> %i.eg, i64 0 ; 2 uses
  %i.eu = extractelement <2 x double> %i.eg, i64 1 ; 2 uses
  %i.ev = fmul double %i.eu, %i.et
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.dj, double %i.ev)
  %i.ex = tail call noundef double @llvm.fmuladd.f64(double %i.db, double %i.eh, double %i.ew)
  %i.ey = tail call noundef double @llvm.fabs.f64(double %i.ex)
  %i.ez = fcmp ule double %i.ey, f0x3E7AD7F29ABCAF48
  br i1 %i.ez, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.fa = fmul double %i.et, %i.er
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.eq, double %i.fa)
  %i.fc = tail call noundef double @llvm.fmuladd.f64(double %i.eh, double %i.es, double %i.fb)
  %i.fd = tail call noundef double @llvm.fabs.f64(double %i.fc)
  %i.fe = fcmp ule double %i.fd, f0x3E7AD7F29ABCAF48
  br i1 %i.fe, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.ff = fmul double %i.er, %i.eu
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.cy, double %i.ff)
  %i.fh = tail call noundef double @llvm.fmuladd.f64(double %i.es, double %i.db, double %i.fg)
  %i.fi = tail call noundef double @llvm.fabs.f64(double %i.fh)
  %i.fj = fcmp ule double %i.fi, f0x3E7AD7F29ABCAF48
  br i1 %i.fj, label %bb.p, label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  store i8 0, ptr %i.az, align 8, !tbaa !1280
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.o
  ret void

bb.q:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMapD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMapD0Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 520) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap12getAffineMapEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZNK7openvdb5v13_04math9AffineMap12getAffineMapEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap4typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9691)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !1122, !alias.scope !9691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !9691
  store i64 19, ptr %i.a, align 8, !tbaa !1156, !noalias !9691
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1127, !alias.scope !9691
  %i.d = load i64, ptr %i.a, align 8, !tbaa !1156, !noalias !9691 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !1126, !alias.scope !9691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.69, i64 19, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !1125, !alias.scope !9691
  %i.f = load ptr, ptr %0, align 8, !tbaa !1127, !alias.scope !9691
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !9691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap7isEqualERKNS1_7MapBaseE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_19NonlinearFrustumMapEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.a, label %bb.b, label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_19NonlinearFrustumMapEEEbRKT_RKS2_.exit
end_hunk_0
