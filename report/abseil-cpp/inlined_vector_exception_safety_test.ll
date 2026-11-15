Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_exception_safety_test?download=true
inline.NumInlined: 38847
inline.NumDeleted: 10073
loop-unroll.NumCompletelyUnrolled: 444
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 449
begin_hunk_0_@_ZN7testing16TestThrowingCtorIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE0EEELm4ESaIS6_EEEJS8_EEEvDpOT0_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.o = extractvalue { ptr, i32 } %i.k, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #27 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing19exceptions_internal18ConstructorTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.q = add nuw nsw i32 %.010, 1
  br label %bb.b, !llvm.loop !954

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h
  %.merged = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.k, %bb.e ]
  call void @_ZN7testing19exceptions_internal18ConstructorTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store i32 -1, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing16TestThrowingCtorIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE0EEELm4ESaIS6_EEEJS8_S7_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::exceptions_internal::ConstructorTracker", align 8 ; 18 uses
  %3 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.a, ptr %2, align 8, !tbaa !93
  store i64 1, ptr %i.b, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  store ptr %2, ptr @_ZN7testing19exceptions_internal18ConstructorTracker25current_tracker_instance_E, align 8, !tbaa !97
  store i32 0, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i64 0, ptr %3, align 8, !tbaa !134
  %i.h = load i64, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %.critedge.thread, label %.lr.ph

.critedge.thread:                                 ; preds = %bb.e, %bb.a
  %.lcssa16 = phi i64 [ %i.h, %bb.a ], [ %i.aa, %bb.e ]
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.l, ptr %i.n, align 8, !tbaa !60
  store i64 %.lcssa16, ptr %3, align 8, !tbaa !57
  store i64 0, ptr %0, align 8, !tbaa !57
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.o = phi i64 [ %i.aa, %bb.e ], [ %i.h, %bb.a ]
  %.01122 = phi i32 [ %i.z, %bb.e ], [ 0, %bb.a ]
  %i.p = lshr exact i64 %i.o, 1
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE0EEELm4ESaIS6_EE10InitializeINS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull %i.g, i64 noundef %i.p)
          to label %.critedge unwind label %.body

.body:                                            ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7testing19exceptions_internal13TestExceptionE ; 3 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE0EEELm4ESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  %i.r = extractvalue { ptr, i32 } %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.s = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing19exceptions_internal13TestExceptionE) #27
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %.loopexit

.critedge:                                        ; preds = %.lr.ph
  %.pr = load i64, ptr %3, align 8, !tbaa !57
  %i.u = icmp eq i64 %.pr, 0
  br i1 %i.u, label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE0EEELm4ESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.critedge.thread, %.critedge
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE0EEELm4ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE0EEELm4ESaIS5_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #32
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE0EEELm4ESaIS5_EED2Ev.exit: ; preds = %.critedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN7testing19exceptions_internal18ConstructorTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store i32 -1, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  ret void

bb.d:                                             ; preds = %.body
  %i.x = extractvalue { ptr, i32 } %i.q, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %i.x) #27 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing19exceptions_internal18ConstructorTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.z = add nuw nsw i32 %.01122, 1               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.a, ptr %2, align 8, !tbaa !93
  store i64 1, ptr %i.b, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i32 %i.z, ptr %i.f, align 8, !tbaa !109
  store ptr %2, ptr @_ZN7testing19exceptions_internal18ConstructorTracker25current_tracker_instance_E, align 8, !tbaa !97
  store i32 %i.z, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i64 0, ptr %3, align 8, !tbaa !134
  %i.aa = load i64, ptr %0, align 8, !tbaa !57    ; 3 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %.critedge.thread, label %.lr.ph, !llvm.loop !955

bb.f:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.f
  %.merged = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.q, %.body ]
  call void @_ZN7testing19exceptions_internal18ConstructorTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store i32 -1, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE0EEELm4ESaIS5_EEC2EOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !134
  %i.a = load i64, ptr %1, align 8, !tbaa !57     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !tbaa !60
  %i.i = load i64, ptr %1, align 8, !tbaa !57
  %i.j = or i64 %i.i, 1
  store i64 %i.j, ptr %0, align 8, !tbaa !57
  store i64 0, ptr %1, align 8, !tbaa !57
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = lshr exact i64 %i.a, 1
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.sroa.013.0 = phi ptr [ %i.s, %bb.f ], [ %i.m, %.lr.ph.i.preheader ] ; 2 uses
  %.013.i = phi i64 [ %i.t, %bb.f ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.013.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.013.0)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.k, i64 noundef %.013.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 4
  %i.t = add nuw nsw i64 %.013.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.l
  br i1 %exitcond.not.i, label %.loopexit.loopexit, label %.lr.ph.i, !llvm.loop !17

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #32
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

.loopexit.loopexit:                               ; preds = %bb.f
  %.pre = load i64, ptr %1, align 8, !tbaa !57
  %i.w = and i64 %.pre, -2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.x = phi i64 [ %i.w, %.loopexit.loopexit ], [ 0, %bb.c ]
  store i64 %i.x, ptr %0, align 8, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %.loopexit
  ret void

.body:                                            ; preds = %bb.e
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE0EEELm4ESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !136
  call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EE17GetInstanceStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !55
  %i.c = load ptr, ptr %3, align 8, !tbaa !59     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !61   ; 3 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %2, align 8, !tbaa !59
  %i.j = load i64, ptr %i.d, align 8, !tbaa !60
  store i64 %i.j, ptr %i.b, align 8, !tbaa !60
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.k = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.m, align 8, !tbaa !61
  store ptr %i.d, ptr %3, align 8, !tbaa !59
  store i64 0, ptr %i.l, align 8, !tbaa !61
  store i8 0, ptr %i.d, align 8, !tbaa !60
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker17ObjectConstructedEPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !60
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.b, align 8, !tbaa !60
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #28
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.w = load ptr, ptr %3, align 8, !tbaa !59     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.y = load i64, ptr %i.d, align 8, !tbaa !60
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 109, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i32, ptr %1, align 4, !tbaa !136
  store i32 %i.aa, ptr %0, align 4, !tbaa !136
  ret void

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  %i.ab = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.body
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !60
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %.body, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %.pn = phi { ptr, i32 } [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.af, %bb.f ], [ %i.r, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE0EEELm4ESaIS6_EE10InitializeINS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %2, 4
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.b, label %bb.c, label %.thread, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

.thread:                                          ; preds = %bb.b
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %2, i64 8) ; 2 uses
  %i.d = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #31 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.speculated.i, ptr %i.g, align 8, !tbaa !60
  %i.h = load i64, ptr %0, align 8, !tbaa !57
  %i.i = or i64 %i.h, 1
  store i64 %i.i, ptr %0, align 8, !tbaa !57
  br label %.lr.ph.preheader.i

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread, %bb.f
  %.010 = phi ptr [ %i.e, %.thread ], [ %i.j, %bb.f ] ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.sroa.0.0 = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.p, %bb.i ] ; 2 uses
  %.013.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.q, %bb.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.010, i64 %.013.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0.0)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZN7testing8internal21TypeParameterizedTestIN12_GLOBAL__N_111OneSizeTestENS0_11TemplateSelINS2_32OneSizeTest_MoveConstructor_TestEEENS0_5TypesINS2_10TestParamsIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE2EEELm4ESaISE_EEEJLm2EEEEJNS8_INSB_INSC_ILSD_0EEELm4ENS_17ThrowingAllocatorISI_LNS_9AllocSpecE0EEEEEJLm8EEEENS8_ISM_JLm2EEEENS8_INSB_ISE_Lm4ESL_EEJLm8EEEENS8_ISP_JLm2EEEEEEEE8RegisterEPKcNS0_12CodeLocationESV_SV_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS13_EE:._crit_edge.i.i
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.gp
  %.pn.pn.pn = phi { ptr, i32 } [ %i.asd, %bb.gp ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ] ; 2 uses
  %i.asu = load ptr, ptr %58, align 8, !tbaa !59  ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.asw = icmp eq ptr %i.asu, %i.asv
  br i1 %i.asw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.asx = load i64, ptr %i.asv, align 8, !tbaa !60
  %i.asy = add i64 %i.asx, 1
  call void @_ZdlPvm(ptr noundef %i.asu, i64 noundef %i.asy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.go
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.asc, %bb.go ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  %i.asz = load ptr, ptr %52, align 8, !tbaa !59  ; 2 uses
  %i.ata = icmp eq ptr %i.asz, %i.bh
  br i1 %i.ata, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.atb = load i64, ptr %i.bh, align 8, !tbaa !60
  %i.atc = add i64 %i.atb, 1
  call void @_ZdlPvm(ptr noundef %i.asz, i64 noundef %i.atc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.gn
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.asb, %bb.gn ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ] ; 2 uses
  %i.atd = load ptr, ptr %53, align 8, !tbaa !59  ; 2 uses
  %i.ate = icmp eq ptr %i.atd, %i.am
  br i1 %i.ate, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.atf = load i64, ptr %i.am, align 8, !tbaa !60
  %i.atg = add i64 %i.atf, 1
  call void @_ZdlPvm(ptr noundef %i.atd, i64 noundef %i.atg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.gm
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.asa, %bb.gm ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ] ; 2 uses
  %i.ath = load ptr, ptr %54, align 8, !tbaa !59  ; 2 uses
  %i.ati = icmp eq ptr %i.ath, %i.x
  br i1 %i.ati, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.atj = load i64, ptr %i.x, align 8, !tbaa !60
  %i.atk = add i64 %i.atj, 1
  call void @_ZdlPvm(ptr noundef %i.ath, i64 noundef %i.atk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %bb.gl
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.arz, %bb.gl ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ] ; 2 uses
  %i.atl = load ptr, ptr %55, align 8, !tbaa !59  ; 2 uses
  %i.atm = icmp eq ptr %i.atl, %i.i
  br i1 %i.atm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.atn = load i64, ptr %i.i, align 8, !tbaa !60
  %i.ato = add i64 %i.atn, 1
  call void @_ZdlPvm(ptr noundef %i.atl, i64 noundef %i.ato) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.gk
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ary, %bb.gk ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ]
  %i.atp = load ptr, ptr %56, align 8, !tbaa !59  ; 2 uses
  %i.atq = icmp eq ptr %i.atp, %i.f
  br i1 %i.atq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.atr = load i64, ptr %i.f, align 8, !tbaa !60
  %i.ats = add i64 %i.atr, 1
  call void @_ZdlPvm(ptr noundef %i.atp, i64 noundef %i.ats) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit135

.body98:                                          ; preds = %.body98.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i
  %eh.lpad-body99 = phi { ptr, i32 } [ %eh.lpad-body99.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i ], [ %eh.lpad-body99.i, %.body98.i ] ; 2 uses
  %i.att = load ptr, ptr %61, align 8, !tbaa !59  ; 2 uses
  %i.atu = icmp eq ptr %i.att, %i.gc
  br i1 %i.atu, label %_ZN7testing8internal12CodeLocationD2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132: ; preds = %.body98
  %i.atv = load i64, ptr %i.gc, align 8, !tbaa !60
  %i.atw = add i64 %i.atv, 1
  call void @_ZdlPvm(ptr noundef %i.att, i64 noundef %i.atw) #28
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit135

_ZN7testing8internal12CodeLocationD2Ev.exit135:   ; preds = %.body98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %eh.lpad-body99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132 ], [ %eh.lpad-body99, %.body98 ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS2_10TestParamsIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE2EEELm4ESaISA_EEEJLm8EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS2_10TestParamsIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE2EEELm4ESaISA_EEEJLm8EEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE2EEELm4ESaIS8_EEEJLm8EEEEEE, i64 16), ptr %i.a, align 8, !tbaa !67
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE2EEELm4ESaIS8_EEEJLm8EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE2EEELm4ESaIS8_EEEJLm8EEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::exceptions_internal::ConstructorTracker", align 8 ; 10 uses
  %2 = alloca %"class.absl::lts_20260526::InlinedVector.37", align 8 ; 9 uses
  %3 = alloca %"class.absl::lts_20260526::InlinedVector.37", align 8 ; 14 uses
  %4 = alloca %"class.absl::lts_20260526::InlinedVector.37", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator.32", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i64 0, ptr %3, align 8, !tbaa !138
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE10InitializeINS1_19DefaultValueAdapterIS7_EEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 8)
          to label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EmRKS6_.exit unwind label %.body

.body:                                            ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.m

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EmRKS6_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.b, ptr %1, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  store ptr %1, ptr @_ZN7testing19exceptions_internal18ConstructorTracker25current_tracker_instance_E, align 8, !tbaa !97
  store i32 0, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i64 0, ptr %2, align 8, !tbaa !138
  %i.g = load i64, ptr %3, align 8, !tbaa !57     ; 4 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.thread.i, label %bb.b

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.thread.i: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EmRKS6_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.l, ptr %i.n, align 8, !tbaa !60
  store i64 %i.g, ptr %2, align 8, !tbaa !57
  store i64 0, ptr %3, align 8, !tbaa !57
  br label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EmRKS6_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = lshr exact i64 %i.g, 1
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.sroa.010.0.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.q, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.012.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.012.i.i.i
  call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.010.0.i.i) #27
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 4
  %i.t = add nuw nsw i64 %.012.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %i.p
  br i1 %exitcond.not.i.i.i, label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load i64, ptr %3, align 8, !tbaa !57
  %i.u = and i64 %.pre.i.i, -2                    ; 2 uses
  store i64 %i.u, ptr %2, align 8, !tbaa !57
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.i, %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.thread.i
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

bb.e:                                             ; preds = %bb.c, %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @_ZN7testing19exceptions_internal18ConstructorTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store i32 -1, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  %i.y = load i64, ptr %3, align 8, !tbaa !57
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i64 0, ptr %4, align 8, !tbaa !138
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE10InitializeINS1_19DefaultValueAdapterIS7_EEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 8)
          to label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EmRKS6_.exit10 unwind label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %.body8

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EmRKS6_.exit10: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN7testing16TestThrowingCtorIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE2EEELm4ESaIS6_EEEJS8_S7_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EmRKS6_.exit10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ad = load i64, ptr %4, align 8, !tbaa !57
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit11, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit11 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #32
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit11: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.l:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EmRKS6_.exit10
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %.body8

.body8:                                           ; preds = %bb.h, %bb.l
  %.pn5 = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ac, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.m

bb.m:                                             ; preds = %.body8, %.body
  %.pn5.pn = phi { ptr, i32 } [ %.pn5, %.body8 ], [ %i.a, %.body ]
  resume { ptr, i32 } %.pn5.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing16TestThrowingCtorIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE2EEELm4ESaIS6_EEEJS8_S7_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::exceptions_internal::ConstructorTracker", align 8 ; 15 uses
  %3 = alloca %"class.absl::lts_20260526::InlinedVector.37", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.g ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.a, ptr %2, align 8, !tbaa !93
  store i64 1, ptr %i.b, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i32 %.011, ptr %i.f, align 8, !tbaa !109
  store ptr %2, ptr @_ZN7testing19exceptions_internal18ConstructorTracker25current_tracker_instance_E, align 8, !tbaa !97
  store i32 %.011, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_RKS6_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %bb.b
  %i.g = load i64, ptr %3, align 8, !tbaa !57
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #32
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit: ; preds = %.critedge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN7testing19exceptions_internal18ConstructorTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store i32 -1, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  ret void

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7testing19exceptions_internal13TestExceptionE ; 3 uses
  %i.l = extractvalue { ptr, i32 } %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.m = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing19exceptions_internal13TestExceptionE) #27
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.o = extractvalue { ptr, i32 } %i.k, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #27 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing19exceptions_internal18ConstructorTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.q = add nuw nsw i32 %.011, 1
  br label %bb.b, !llvm.loop !1031

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h
  %.merged = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.k, %bb.e ]
  call void @_ZN7testing19exceptions_internal18ConstructorTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store i32 -1, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !140
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EE17GetInstanceStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !55
  %i.c = load ptr, ptr %3, align 8, !tbaa !59     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_RKS6_:bb.a
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc13 unwind label %bb.j

.noexc13:                                         ; preds = %bb.g
  unreachable

.thread.i:                                        ; preds = %bb.d
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 8) ; 2 uses
  %i.o = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31
          to label %.noexc14 unwind label %bb.j   ; 2 uses

.noexc14:                                         ; preds = %.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.speculated.i.i, ptr %i.r, align 8, !tbaa !60
  %i.s = load i64, ptr %0, align 8, !tbaa !57
  %i.t = or i64 %i.s, 1
  store i64 %i.t, ptr %0, align 8, !tbaa !57
  br label %.lr.ph.preheader.i.i

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h, %.noexc14
  %.010.i = phi ptr [ %i.p, %.noexc14 ], [ %i.u, %bb.h ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.0.i = phi ptr [ %i.c, %.lr.ph.preheader.i.i ], [ %i.w, %.lr.ph.i.i ] ; 2 uses
  %.012.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.x, %.lr.ph.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.010.i, i64 %.012.i.i
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0.0.i) #27
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.x = add nuw i64 %.012.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.x, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !18

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load i64, ptr %0, align 8, !tbaa !57
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h
  %i.y = phi i64 [ %.pre, %.loopexit.loopexit ], [ 0, %bb.h ]
  %i.z = add i64 %i.y, %i.a
  store i64 %i.z, ptr %0, align 8, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %.loopexit
  ret void

bb.j:                                             ; preds = %.thread.i, %bb.g, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %i.aa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS2_10TestParamsIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE2EEELm4ESaISA_EEEJLm2EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS2_10TestParamsIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE2EEELm4ESaISA_EEEJLm2EEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE2EEELm4ESaIS8_EEEJLm2EEEEEE, i64 16), ptr %i.a, align 8, !tbaa !67
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE2EEELm4ESaIS8_EEEJLm2EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE2EEELm4ESaIS8_EEEJLm2EEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i:
  %1 = alloca %"class.testing::exceptions_internal::ConstructorTracker", align 8 ; 10 uses
  %2 = alloca %"class.absl::lts_20260526::InlinedVector.37", align 8 ; 9 uses
  %3 = alloca %"class.absl::lts_20260526::InlinedVector.37", align 8 ; 15 uses
  %4 = alloca %"class.absl::lts_20260526::InlinedVector.37", align 8 ; 14 uses
  %5 = alloca %"class.std::allocator.32", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i64 0, ptr %3, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i unwind label %bb.a

bb.a:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i, %.lr.ph.i.i
  %.013.i.i.lcssa = phi i64 [ 0, %.lr.ph.i.i ], [ 1, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i ]
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = call ptr @__cxa_begin_catch(ptr %i.c) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.a, i64 noundef %.013.i.i.lcssa)
  invoke void @__cxa_rethrow() #29
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body12 unwind label %bb.c

_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i.1 unwind label %bb.a

_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i.1: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i
  %i.g = load i64, ptr %3, align 8, !tbaa !57     ; 2 uses
  %i.h = add i64 %i.g, 4                          ; 4 uses
  store i64 %i.h, ptr %3, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.i, ptr %1, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  store ptr %1, ptr @_ZN7testing19exceptions_internal18ConstructorTracker25current_tracker_instance_E, align 8, !tbaa !97
  store i32 0, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i64 0, ptr %2, align 8, !tbaa !138
  %i.n = trunc i64 %i.g to i1
  br i1 %i.n, label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.thread.i, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #32
  unreachable

bb.d:                                             ; preds = %bb.a
  unreachable

.body12:                                          ; preds = %bb.b
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.s

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.thread.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i.1
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.q, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.s, ptr %i.u, align 8, !tbaa !60
  store i64 %i.h, ptr %2, align 8, !tbaa !57
  store i64 0, ptr %3, align 8, !tbaa !57
  br label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i.1
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = lshr exact i64 %i.h, 1
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.h, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.010.0.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.a, %bb.e ] ; 2 uses
  %.012.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.012.i.i.i
  call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.010.0.i.i) #27
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 4
  %i.z = add nuw nsw i64 %.012.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.w
  br i1 %exitcond.not.i.i.i, label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load i64, ptr %3, align 8, !tbaa !57
  %i.aa = and i64 %.pre.i.i, -2                   ; 2 uses
  store i64 %i.aa, ptr %2, align 8, !tbaa !57
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.i, %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.thread.i
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #32
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EEC2EOS7_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @_ZN7testing19exceptions_internal18ConstructorTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store i32 -1, ptr @_ZN7testing19exceptions_internal9countdownE, align 4, !tbaa !85
  %i.ae = load i64, ptr %3, align 8, !tbaa !57
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #32
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i64 0, ptr %4, align 8, !tbaa !138
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %i.ai)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i16 unwind label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i16, %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit
  %.013.i.i15.lcssa = phi i64 [ 0, %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit ], [ 1, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i16 ]
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = call ptr @__cxa_begin_catch(ptr %i.ak) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.ai, i64 noundef %.013.i.i15.lcssa)
  invoke void @__cxa_rethrow() #29
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body18 unwind label %bb.m

_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i16: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 12
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %i.an)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i16.1 unwind label %bb.k

_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i16.1: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i16
  %i.ao = load i64, ptr %4, align 8, !tbaa !57
  %i.ap = add i64 %i.ao, 4
  store i64 %i.ap, ptr %4, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN7testing16TestThrowingCtorIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE2EEELm4ESaIS6_EEEJS8_S7_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.o unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #32
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable

.body18:                                          ; preds = %bb.l
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %.body8

bb.o:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i16.1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.as = load i64, ptr %4, align 8, !tbaa !57
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit11, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit11 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #32
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev.exit11: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.r:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i16.1
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS2_8TypeSpecE2EEELm4ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %.body8

.body8:                                           ; preds = %.body18, %bb.r
  %.pn5 = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.am, %.body18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.s

bb.s:                                             ; preds = %.body8, %.body12
  %.pn5.pn = phi { ptr, i32 } [ %.pn5, %.body8 ], [ %i.e, %.body12 ]
  resume { ptr, i32 } %.pn5.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS2_10TestParamsIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE0EEELm4ENS_17ThrowingAllocatorISA_LNS_9AllocSpecE0EEEEEJLm8EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS2_10TestParamsIN4absl12lts_2026052613InlinedVectorINS_13ThrowingValueILNS_8TypeSpecE0EEELm4ENS_17ThrowingAllocatorISA_LNS_9AllocSpecE0EEEEEJLm8EEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE0EEELm4ENS5_17ThrowingAllocatorIS8_LNS5_9AllocSpecE0EEEEEJLm8EEEEEE, i64 16), ptr %i.a, align 8, !tbaa !67
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE0EEELm4ENS5_17ThrowingAllocatorIS8_LNS5_9AllocSpecE0EEEEEJLm8EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_132OneSizeTest_MoveConstructor_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE0EEELm4ENS5_17ThrowingAllocatorIS8_LNS5_9AllocSpecE0EEEEEJLm8EEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::InlinedVector.51", align 8 ; 20 uses
  %2 = alloca %"class.testing::ThrowingAllocator", align 8 ; 8 uses
  %3 = alloca %"class.absl::lts_20260526::InlinedVector.51", align 8 ; 20 uses
  %4 = alloca %"class.testing::ThrowingAllocator", align 8 ; 8 uses
  %5 = alloca %"class.testing::ThrowingAllocator", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN7testing17ThrowingAllocatorINS_13ThrowingValueILNS_8TypeSpecE0EEELNS_9AllocSpecE0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @_ZN7testing17ThrowingAllocatorINS_13ThrowingValueILNS_8TypeSpecE0EEELNS_9AllocSpecE0EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store i64 0, ptr %i.a, align 8, !tbaa !118
  invoke void @_ZNK7testing17ThrowingAllocatorINS_13ThrowingValueILNS_8TypeSpecE0EEELNS_9AllocSpecE0EE22ReadStateAndMaybeThrowESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 158, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing17ThrowingAllocatorINS_13ThrowingValueILNS_8TypeSpecE0EEELNS_9AllocSpecE0EE8allocateEm)
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.a
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33
          to label %.noexc4.i unwind label %bb.f  ; 10 uses

.noexc4.i:                                        ; preds = %.noexc.i
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.b, ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 8, ptr %i.d, align 8, !tbaa !60
  %i.e = load i64, ptr %i.a, align 8, !tbaa !57
  %i.f = or i64 %i.e, 1
  store i64 %i.f, ptr %i.a, align 8, !tbaa !57
  invoke void @_ZNK7testing17ThrowingAllocatorINS_13ThrowingValueILNS_8TypeSpecE0EEELNS_9AllocSpecE0EE22ReadStateAndMaybeThrowESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 203, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing17ThrowingAllocatorINS_13ThrowingValueILNS_8TypeSpecE0EEELNS_9AllocSpecE0EE9constructIS3_JEEEvPT_DpOT0_)
          to label %.noexc.i27 unwind label %bb.b

.noexc.i27:                                       ; preds = %.noexc4.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterIN7testing17ThrowingAllocatorINS3_13ThrowingValueILNS3_8TypeSpecE0EEELNS3_9AllocSpecE0EEEE13ConstructNextERS9_PS7_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i27.7, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterIN7testing17ThrowingAllocatorINS3_13ThrowingValueILNS3_8TypeSpecE0EEELNS3_9AllocSpecE0EEEE13ConstructNextERS9_PS7_.exit.i.6, %.noexc.i27.6, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterIN7testing17ThrowingAllocatorINS3_13ThrowingValueILNS3_8TypeSpecE0EEELNS3_9AllocSpecE0EEEE13ConstructNextERS9_PS7_.exit.i.5, %.noexc.i27.5, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterIN7testing17ThrowingAllocatorINS3_13ThrowingValueILNS3_8TypeSpecE0EEELNS3_9AllocSpecE0EEEE13ConstructNextERS9_PS7_.exit.i.4, %.noexc.i27.4, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterIN7testing17ThrowingAllocatorINS3_13ThrowingValueILNS3_8TypeSpecE0EEELNS3_9AllocSpecE0EEEE13ConstructNextERS9_PS7_.exit.i.3, %.noexc.i27.3, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterIN7testing17ThrowingAllocatorINS3_13ThrowingValueILNS3_8TypeSpecE0EEELNS3_9AllocSpecE0EEEE13ConstructNextERS9_PS7_.exit.i.2, %.noexc.i27.2, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterIN7testing17ThrowingAllocatorINS3_13ThrowingValueILNS3_8TypeSpecE0EEELNS3_9AllocSpecE0EEEE13ConstructNextERS9_PS7_.exit.i.1, %.noexc.i27.1, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterIN7testing17ThrowingAllocatorINS3_13ThrowingValueILNS3_8TypeSpecE0EEELNS3_9AllocSpecE0EEEE13ConstructNextERS9_PS7_.exit.i, %.noexc.i27, %.noexc4.i
end_hunk_2
