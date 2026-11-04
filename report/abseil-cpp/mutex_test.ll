Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/mutex_test?download=true
inline.NumInlined: 5889
inline.NumDeleted: 2357
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_124Mutex_DeadlockIdBug_TestEE10CreateTestEv:bb.a
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #46 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_124Mutex_DeadlockIdBug_TestE, i64 16), ptr %i.a, align 8, !tbaa !29
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #47
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124Mutex_DeadlockIdBug_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124Mutex_DeadlockIdBug_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::Mutex", align 8 ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::Mutex", align 8 ; 5 uses
  tail call void @_ZN4absl12lts_2026052629SetMutexDeadlockDetectionModeENS0_15OnDeadlockCycleE(i32 noundef 2)
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  store i64 0, ptr %1, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  store i64 0, ptr %2, align 8, !tbaa !79
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN4absl12lts_2026052629SetMutexDeadlockDetectionModeENS0_15OnDeadlockCycleE(i32 noundef 0)
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #47
  call void @_ZN4absl12lts_2026052629SetMutexDeadlockDetectionModeENS0_15OnDeadlockCycleE(i32 noundef 2)
  call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8ValuesInISt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS3_EEEENS_8internal14ParamGeneratorINT_10value_typeEEERKS8_(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr %.0.val, ptr %.8.val) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #46, !noalias !657 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEEE, i64 16), ptr %i.a, align 8, !tbaa !29, !noalias !657
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !noalias !657
  %i.c = ptrtoint ptr %.8.val to i64
  %i.d = ptrtoint ptr %.0.val to i64
  %i.e = sub i64 %i.c, %i.d
  %reass.sub.fr.i.i.i = freeze i64 %i.e           ; 5 uses
  %i.f = sdiv exact i64 %reass.sub.fr.i.i.i, 56
  %i.g = icmp ugt i64 %i.f, 164703072086692425
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.144) #45
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !657

.noexc.i.i.i:                                     ; preds = %bb.b
  unreachable

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq ptr %.8.val, %.0.val
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_M_allocateEm.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_M_allocateEm.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !260, !noalias !657
  br label %bb.e

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i.i.i) #46
          to label %.noexc6.i.i.i unwind label %bb.c, !noalias !657 ; 4 uses

.noexc6.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !261, !noalias !657
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %reass.sub.fr.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !260, !noalias !657
  %i.m = add i64 %reass.sub.fr.i.i.i, -56         ; 2 uses
  %i.n = urem i64 %i.m, 56
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = add i64 %i.o, 56                         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %.0.val, i64 %i.p, i1 false), !noalias !657
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.j, i64 %i.p
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !261, !noalias !657 ; 3 uses
  %.not.i.i7.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i7.i.i.i, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val5.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !260, !noalias !657
  %i.s = ptrtoint ptr %.val5.i.i.i to i64
  %i.t = ptrtoint ptr %.val.i.i.i to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.u) #47, !noalias !657
  br label %.body.i

bb.e:                                             ; preds = %.noexc6.i.i.i, %_ZNSt12_Vector_baseIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_M_allocateEm.exit.thread.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %scevgep.i.i.i.i, %.noexc6.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !262, !noalias !657
  store ptr %i.a, ptr %0, align 8, !tbaa !265, !alias.scope !657
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !63, !alias.scope !657
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46
          to label %_ZN7testing8ValuesInIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_116TimeoutTestParamESt6vectorIS4_SaIS4_EEEEEENS_8internal14ParamGeneratorINSt15iterator_traitsIT_E10value_typeEEESE_SE_.exit unwind label %bb.f, !noalias !657 ; 5 uses

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #44, !noalias !657 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !29, !noalias !657
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !657
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #44, !noalias !657, !inline_history !656
  invoke void @__cxa_rethrow() #45
          to label %bb.i unwind label %bb.g, !noalias !657

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume.i unwind label %bb.h, !noalias !657

common.resume.i:                                  ; preds = %.body.i, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.q, %.body.i ], [ %i.ae, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #48, !noalias !657
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #47, !noalias !657
  br label %common.resume.i

_ZN7testing8ValuesInIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_116TimeoutTestParamESt6vectorIS4_SaIS4_EEEEEENS_8internal14ParamGeneratorINSt15iterator_traitsIT_E10value_typeEEESE_SE_.exit: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 1, ptr %i.ah, align 8, !tbaa !66, !noalias !657
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 1, ptr %i.ai, align 4, !tbaa !67, !noalias !657
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIN12_GLOBAL__N_116TimeoutTestParamEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.x, align 8, !tbaa !29, !noalias !657
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.a, ptr %i.aj, align 8, !tbaa !267, !noalias !657
  store ptr %i.x, ptr %i.w, align 8, !tbaa !63, !alias.scope !657
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_126MakeTimeoutTestParamValuesEv(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_20260526ngENS0_8DurationE.exit:
  %1 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %2, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 600000000, ptr %.sroa.22.0..sroa_idx.i, align 8
  %i.a = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202605268DurationmLEl(ptr noundef nonnull align 4 dereferenceable(12) %2, i64 noundef 3) #44 ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.a, align 4, !tbaa !64 ; 19 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.24.0.copyload.i = load i32, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !64 ; 19 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %.sroa.22.0..sroa_idx.i214 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.a:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit267
  ret void

bb.b:                                             ; preds = %_ZN4absl12lts_20260526ngENS0_8DurationE.exit, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit267
  %i.d = phi ptr [ null, %_ZN4absl12lts_20260526ngENS0_8DurationE.exit ], [ %i.gc, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit267 ] ; 5 uses
  %.val.i.i.i = phi ptr [ null, %_ZN4absl12lts_20260526ngENS0_8DurationE.exit ], [ %.val.i.i.i588, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit267 ] ; 6 uses
  %i.e = phi ptr [ null, %_ZN4absl12lts_20260526ngENS0_8DurationE.exit ], [ %i.gd, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit267 ] ; 12 uses
  %.not = phi i1 [ false, %_ZN4absl12lts_20260526ngENS0_8DurationE.exit ], [ true, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit267 ]
  %.0.idx579.sroa.phi.sroa.speculated = phi i8 [ 0, %_ZN4absl12lts_20260526ngENS0_8DurationE.exit ], [ 1, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit267 ] ; 18 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.2, ptr %i.e, align 8, !tbaa !268
  %.sroa.6527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1485, ptr %.sroa.6527.0..sroa_idx, align 8, !tbaa !64
  %.sroa.7530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7530.0..sroa_idx, align 4, !tbaa !152
  %.sroa.8535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 -9223372036854775808, ptr %.sroa.8535.0..sroa_idx, align 8, !tbaa !64
  %.sroa.9538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 -1, ptr %.sroa.9538.0..sroa_idx, align 8, !tbaa !64
  %.sroa.10541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i64 0, ptr %.sroa.10541.0..sroa_idx, align 4, !tbaa !64
  %.sroa.11544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 0, ptr %.sroa.11544.0..sroa_idx, align 4, !tbaa !64
  %.sroa.12547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 1, ptr %.sroa.12547.0..sroa_idx, align 8, !tbaa !152
  %.sroa.13552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i64 0, ptr %.sroa.13552.0..sroa_idx, align 4, !tbaa !64
  %.sroa.14555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 0, ptr %.sroa.14555.0..sroa_idx, align 4, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !262
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %.val.i.i.i to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.invoke, label %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.k = sdiv exact i64 %i.i, 56                  ; 3 uses
  %i.l = icmp eq ptr %i.d, %.val.i.i.i            ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.l, i64 1, i64 %i.k
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = call i64 @llvm.umin.i64(i64 %i.m, i64 164703072086692425)
  %i.p = select i1 %i.n, i64 164703072086692425, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 56
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #46
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc133:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 10 uses
  store ptr @.str.2, ptr %i.s, align 8, !tbaa !268
  %.sroa.6527.0..sroa_idx528 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 1485, ptr %.sroa.6527.0..sroa_idx528, align 8, !tbaa !64
  %.sroa.7530.0..sroa_idx531 = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7530.0..sroa_idx531, align 4, !tbaa !152
  %.sroa.8535.0..sroa_idx536 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 -9223372036854775808, ptr %.sroa.8535.0..sroa_idx536, align 8, !tbaa !64
  %.sroa.9538.0..sroa_idx539 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 -1, ptr %.sroa.9538.0..sroa_idx539, align 8, !tbaa !64
  %.sroa.10541.0..sroa_idx542 = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  store i64 0, ptr %.sroa.10541.0..sroa_idx542, align 4, !tbaa !64
  %.sroa.11544.0..sroa_idx545 = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 0, ptr %.sroa.11544.0..sroa_idx545, align 4, !tbaa !64
  %.sroa.12547.0..sroa_idx548 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i8 1, ptr %.sroa.12547.0..sroa_idx548, align 8, !tbaa !152
  %.sroa.13552.0..sroa_idx553 = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  store i64 0, ptr %.sroa.13552.0..sroa_idx553, align 4, !tbaa !64
  %.sroa.14555.0..sroa_idx556 = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  store i32 0, ptr %.sroa.14555.0..sroa_idx556, align 4, !tbaa !64
  br i1 %i.l, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc133, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %.noexc133 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %.val.i.i.i, %.noexc133 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %.092.i.i.i.i.i.i, i64 56, i1 false), !tbaa.struct !269, !alias.scope !686
  %i.t = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !661

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc133
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %.noexc133 ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i27.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.i) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !261
  store ptr %i.v, ptr %i.b, align 8, !tbaa !262
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.c
  %i.x = phi ptr [ %i.w, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.d, %bb.c ] ; 5 uses
  %i.y = phi ptr [ %i.v, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.f, %bb.c ] ; 12 uses
  %.val.i.i.i135 = phi ptr [ %i.r, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.val.i.i.i, %bb.c ] ; 6 uses
  %.not.i.i134 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i134, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit
  store ptr @.str.2, ptr %i.y, align 8, !tbaa !268
  %.sroa.6494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 1494, ptr %.sroa.6494.0..sroa_idx, align 8, !tbaa !64
  %.sroa.7497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7497.0..sroa_idx, align 4, !tbaa !152
  %.sroa.8502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 -9223372036854775808, ptr %.sroa.8502.0..sroa_idx, align 8, !tbaa !64
  %.sroa.9505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 -1, ptr %.sroa.9505.0..sroa_idx, align 8, !tbaa !64
  %.sroa.10508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.10508.0..sroa_idx, align 4, !tbaa !64
  %.sroa.11511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.11511.0..sroa_idx, align 4, !tbaa !64
  %.sroa.12514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i8 0, ptr %.sroa.12514.0..sroa_idx, align 8, !tbaa !152
  %.sroa.13519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  store i64 0, ptr %.sroa.13519.0..sroa_idx, align 4, !tbaa !64
  %.sroa.14522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  store i32 0, ptr %.sroa.14522.0..sroa_idx, align 4, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  store ptr %i.z, ptr %i.b, align 8, !tbaa !262
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit149

bb.g:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %.val.i.i.i135 to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %.invoke, label %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i136

_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i136: ; preds = %bb.g
  %i.ae = sdiv exact i64 %i.ac, 56                ; 3 uses
  %i.af = icmp eq ptr %i.x, %.val.i.i.i135        ; 2 uses
  %.sroa.speculated.i.i.i.i137 = select i1 %i.af, i64 1, i64 %i.ae
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i137, %i.ae ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 164703072086692425)
  %i.aj = select i1 %i.ah, i64 164703072086692425, i64 %i.ai ; 3 uses
  %.not.i.i.i.i138 = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i138)
  %i.ak = mul nuw nsw i64 %i.aj, 56
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #46
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc148:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i136
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ac ; 10 uses
  store ptr @.str.2, ptr %i.am, align 8, !tbaa !268
  %.sroa.6494.0..sroa_idx495 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1494, ptr %.sroa.6494.0..sroa_idx495, align 8, !tbaa !64
  %.sroa.7497.0..sroa_idx498 = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7497.0..sroa_idx498, align 4, !tbaa !152
  %.sroa.8502.0..sroa_idx503 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 -9223372036854775808, ptr %.sroa.8502.0..sroa_idx503, align 8, !tbaa !64
  %.sroa.9505.0..sroa_idx506 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i32 -1, ptr %.sroa.9505.0..sroa_idx506, align 8, !tbaa !64
  %.sroa.10508.0..sroa_idx509 = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.10508.0..sroa_idx509, align 4, !tbaa !64
  %.sroa.11511.0..sroa_idx512 = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.11511.0..sroa_idx512, align 4, !tbaa !64
  %.sroa.12514.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i8 0, ptr %.sroa.12514.0..sroa_idx515, align 8, !tbaa !152
  %.sroa.13519.0..sroa_idx520 = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i64 0, ptr %.sroa.13519.0..sroa_idx520, align 4, !tbaa !64
  %.sroa.14522.0..sroa_idx523 = getelementptr inbounds nuw i8, ptr %i.am, i64 52
  store i32 0, ptr %.sroa.14522.0..sroa_idx523, align 4, !tbaa !64
  br i1 %i.af, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i143, label %.lr.ph.i.i.i.i.i.i139

.lr.ph.i.i.i.i.i.i139:                            ; preds = %.noexc148, %.lr.ph.i.i.i.i.i.i139
  %.03.i.i.i.i.i.i140 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i139 ], [ %i.al, %.noexc148 ] ; 2 uses
  %.092.i.i.i.i.i.i141 = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i139 ], [ %.val.i.i.i135, %.noexc148 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.03.i.i.i.i.i.i140, ptr noundef nonnull readonly align 8 dereferenceable(56) %.092.i.i.i.i.i.i141, i64 56, i1 false), !tbaa.struct !269, !alias.scope !687
  %i.an = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i141, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i140, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i142 = icmp eq ptr %i.an, %i.x
  br i1 %.not.i.i.i.i.i.i142, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i143, label %.lr.ph.i.i.i.i.i.i139, !llvm.loop !661

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i143: ; preds = %.lr.ph.i.i.i.i.i.i139, %.noexc148
  %.0.lcssa.i.i.i.i.i.i144 = phi ptr [ %i.al, %.noexc148 ], [ %i.ao, %.lr.ph.i.i.i.i.i.i139 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i144, i64 56 ; 2 uses
  %.not.i27.i.i.i145 = icmp eq ptr %.val.i.i.i135, null
  br i1 %.not.i27.i.i.i145, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i146, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i143
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i135, i64 noundef %i.ac) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i146

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i146: ; preds = %bb.h, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i143
  store ptr %i.al, ptr %0, align 8, !tbaa !261
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !262
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %i.aj ; 2 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit149

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit149: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i146, %bb.f
  %i.ar = phi ptr [ %i.aq, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i146 ], [ %i.x, %bb.f ] ; 5 uses
  %i.as = phi ptr [ %i.ap, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i146 ], [ %i.z, %bb.f ] ; 12 uses
  %.val.i.i.i151 = phi ptr [ %i.al, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i146 ], [ %.val.i.i.i135, %bb.f ] ; 6 uses
  %.not.i.i150 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i150, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit149
  store ptr @.str.2, ptr %i.as, align 8, !tbaa !268
  %.sroa.6461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 1503, ptr %.sroa.6461.0..sroa_idx, align 8, !tbaa !64
  %.sroa.7464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7464.0..sroa_idx, align 4, !tbaa !152
  %.sroa.8469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 -9223372036854775808, ptr %.sroa.8469.0..sroa_idx, align 8, !tbaa !64
  %.sroa.9472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 -1, ptr %.sroa.9472.0..sroa_idx, align 8, !tbaa !64
  %.sroa.10475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  store i64 9223372036854775807, ptr %.sroa.10475.0..sroa_idx, align 4, !tbaa !64
  %.sroa.11478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 36
  store i32 -1, ptr %.sroa.11478.0..sroa_idx, align 4, !tbaa !64
  %.sroa.12481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i8 0, ptr %.sroa.12481.0..sroa_idx, align 8, !tbaa !152
  %.sroa.13486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 44
  store i64 0, ptr %.sroa.13486.0..sroa_idx, align 4, !tbaa !64
  %.sroa.14489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 52
  store i32 0, ptr %.sroa.14489.0..sroa_idx, align 4, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  store ptr %i.at, ptr %i.b, align 8, !tbaa !262
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit165

bb.j:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit149
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %.val.i.i.i151 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %.invoke, label %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i152

_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i152: ; preds = %bb.j
  %i.ay = sdiv exact i64 %i.aw, 56                ; 3 uses
  %i.az = icmp eq ptr %i.ar, %.val.i.i.i151       ; 2 uses
  %.sroa.speculated.i.i.i.i153 = select i1 %i.az, i64 1, i64 %i.ay
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.i153, %i.ay ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ay
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 164703072086692425)
  %i.bd = select i1 %i.bb, i64 164703072086692425, i64 %i.bc ; 3 uses
  %.not.i.i.i.i154 = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i154)
  %i.be = mul nuw nsw i64 %i.bd, 56
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #46
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc164:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i152
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw ; 10 uses
  store ptr @.str.2, ptr %i.bg, align 8, !tbaa !268
  %.sroa.6461.0..sroa_idx462 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 1503, ptr %.sroa.6461.0..sroa_idx462, align 8, !tbaa !64
  %.sroa.7464.0..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7464.0..sroa_idx465, align 4, !tbaa !152
  %.sroa.8469.0..sroa_idx470 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 -9223372036854775808, ptr %.sroa.8469.0..sroa_idx470, align 8, !tbaa !64
  %.sroa.9472.0..sroa_idx473 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i32 -1, ptr %.sroa.9472.0..sroa_idx473, align 8, !tbaa !64
  %.sroa.10475.0..sroa_idx476 = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  store i64 9223372036854775807, ptr %.sroa.10475.0..sroa_idx476, align 4, !tbaa !64
  %.sroa.11478.0..sroa_idx479 = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  store i32 -1, ptr %.sroa.11478.0..sroa_idx479, align 4, !tbaa !64
  %.sroa.12481.0..sroa_idx482 = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i8 0, ptr %.sroa.12481.0..sroa_idx482, align 8, !tbaa !152
  %.sroa.13486.0..sroa_idx487 = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  store i64 0, ptr %.sroa.13486.0..sroa_idx487, align 4, !tbaa !64
  %.sroa.14489.0..sroa_idx490 = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  store i32 0, ptr %.sroa.14489.0..sroa_idx490, align 4, !tbaa !64
  br i1 %i.az, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i159, label %.lr.ph.i.i.i.i.i.i155

.lr.ph.i.i.i.i.i.i155:                            ; preds = %.noexc164, %.lr.ph.i.i.i.i.i.i155
  %.03.i.i.i.i.i.i156 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i155 ], [ %i.bf, %.noexc164 ] ; 2 uses
  %.092.i.i.i.i.i.i157 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i155 ], [ %.val.i.i.i151, %.noexc164 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.03.i.i.i.i.i.i156, ptr noundef nonnull readonly align 8 dereferenceable(56) %.092.i.i.i.i.i.i157, i64 56, i1 false), !tbaa.struct !269, !alias.scope !688
  %i.bh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i157, i64 56 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i156, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i158 = icmp eq ptr %i.bh, %i.ar
  br i1 %.not.i.i.i.i.i.i158, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i159, label %.lr.ph.i.i.i.i.i.i155, !llvm.loop !661

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i159: ; preds = %.lr.ph.i.i.i.i.i.i155, %.noexc164
  %.0.lcssa.i.i.i.i.i.i160 = phi ptr [ %i.bf, %.noexc164 ], [ %i.bi, %.lr.ph.i.i.i.i.i.i155 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i160, i64 56 ; 2 uses
  %.not.i27.i.i.i161 = icmp eq ptr %.val.i.i.i151, null
  br i1 %.not.i27.i.i.i161, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i162, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i151, i64 noundef %i.aw) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i162

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i162: ; preds = %bb.k, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i159
  store ptr %i.bf, ptr %0, align 8, !tbaa !261
  store ptr %i.bj, ptr %i.b, align 8, !tbaa !262
  %i.bk = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %i.bd ; 2 uses
  store ptr %i.bk, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit165

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit165: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i162, %bb.i
  %i.bl = phi ptr [ %i.bk, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i162 ], [ %i.ar, %bb.i ] ; 5 uses
  %i.bm = phi ptr [ %i.bj, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i162 ], [ %i.at, %bb.i ] ; 12 uses
  %.val.i.i.i167 = phi ptr [ %i.bf, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i162 ], [ %.val.i.i.i151, %bb.i ] ; 6 uses
  %.not.i.i166 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i.i166, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit165
  store ptr @.str.2, ptr %i.bm, align 8, !tbaa !268
  %.sroa.6428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 1515, ptr %.sroa.6428.0..sroa_idx, align 8, !tbaa !64
  %.sroa.7431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7431.0..sroa_idx, align 4, !tbaa !152
  %.sroa.8436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 9223372036854775807, ptr %.sroa.8436.0..sroa_idx, align 8, !tbaa !64
  %.sroa.9439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 -1, ptr %.sroa.9439.0..sroa_idx, align 8, !tbaa !64
  %.sroa.10442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  store i64 0, ptr %.sroa.10442.0..sroa_idx, align 4, !tbaa !64
  %.sroa.11445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i32 0, ptr %.sroa.11445.0..sroa_idx, align 4, !tbaa !64
  %.sroa.12448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i8 1, ptr %.sroa.12448.0..sroa_idx, align 8, !tbaa !152
  %.sroa.13453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  store i64 0, ptr %.sroa.13453.0..sroa_idx, align 4, !tbaa !64
  %.sroa.14456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  store i32 0, ptr %.sroa.14456.0..sroa_idx, align 4, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56 ; 2 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !262
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit181

bb.m:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit165
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %.val.i.i.i167 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 4 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %.invoke, label %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i168

_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i168: ; preds = %bb.m
  %i.bs = sdiv exact i64 %i.bq, 56                ; 3 uses
  %i.bt = icmp eq ptr %i.bl, %.val.i.i.i167       ; 2 uses
  %.sroa.speculated.i.i.i.i169 = select i1 %i.bt, i64 1, i64 %i.bs
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i.i169, %i.bs ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bs
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bu, i64 164703072086692425)
  %i.bx = select i1 %i.bv, i64 164703072086692425, i64 %i.bw ; 3 uses
  %.not.i.i.i.i170 = icmp ne i64 %i.bx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i170)
  %i.by = mul nuw nsw i64 %i.bx, 56
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #46
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i168
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bq ; 10 uses
  store ptr @.str.2, ptr %i.ca, align 8, !tbaa !268
  %.sroa.6428.0..sroa_idx429 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 1515, ptr %.sroa.6428.0..sroa_idx429, align 8, !tbaa !64
  %.sroa.7431.0..sroa_idx432 = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7431.0..sroa_idx432, align 4, !tbaa !152
  %.sroa.8436.0..sroa_idx437 = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 9223372036854775807, ptr %.sroa.8436.0..sroa_idx437, align 8, !tbaa !64
  %.sroa.9439.0..sroa_idx440 = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i32 -1, ptr %.sroa.9439.0..sroa_idx440, align 8, !tbaa !64
  %.sroa.10442.0..sroa_idx443 = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  store i64 0, ptr %.sroa.10442.0..sroa_idx443, align 4, !tbaa !64
  %.sroa.11445.0..sroa_idx446 = getelementptr inbounds nuw i8, ptr %i.ca, i64 36
  store i32 0, ptr %.sroa.11445.0..sroa_idx446, align 4, !tbaa !64
  %.sroa.12448.0..sroa_idx449 = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store i8 1, ptr %.sroa.12448.0..sroa_idx449, align 8, !tbaa !152
  %.sroa.13453.0..sroa_idx454 = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  store i64 0, ptr %.sroa.13453.0..sroa_idx454, align 4, !tbaa !64
  %.sroa.14456.0..sroa_idx457 = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  store i32 0, ptr %.sroa.14456.0..sroa_idx457, align 4, !tbaa !64
  br i1 %i.bt, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i175, label %.lr.ph.i.i.i.i.i.i171

.lr.ph.i.i.i.i.i.i171:                            ; preds = %.noexc180, %.lr.ph.i.i.i.i.i.i171
  %.03.i.i.i.i.i.i172 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i171 ], [ %i.bz, %.noexc180 ] ; 2 uses
  %.092.i.i.i.i.i.i173 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i171 ], [ %.val.i.i.i167, %.noexc180 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.03.i.i.i.i.i.i172, ptr noundef nonnull readonly align 8 dereferenceable(56) %.092.i.i.i.i.i.i173, i64 56, i1 false), !tbaa.struct !269, !alias.scope !689
  %i.cb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i173, i64 56 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i172, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i174 = icmp eq ptr %i.cb, %i.bl
  br i1 %.not.i.i.i.i.i.i174, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i175, label %.lr.ph.i.i.i.i.i.i171, !llvm.loop !661

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i175: ; preds = %.lr.ph.i.i.i.i.i.i171, %.noexc180
  %.0.lcssa.i.i.i.i.i.i176 = phi ptr [ %i.bz, %.noexc180 ], [ %i.cc, %.lr.ph.i.i.i.i.i.i171 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i176, i64 56 ; 2 uses
  %.not.i27.i.i.i177 = icmp eq ptr %.val.i.i.i167, null
  br i1 %.not.i27.i.i.i177, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i178, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i167, i64 noundef %i.bq) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i178

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i178: ; preds = %bb.n, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i175
  store ptr %i.bz, ptr %0, align 8, !tbaa !261
  store ptr %i.cd, ptr %i.b, align 8, !tbaa !262
  %i.ce = getelementptr inbounds nuw [56 x i8], ptr %i.bz, i64 %i.bx ; 2 uses
  store ptr %i.ce, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit181

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit181: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i178, %bb.l
  %i.cf = phi ptr [ %i.ce, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i178 ], [ %i.bl, %bb.l ] ; 5 uses
  %i.cg = phi ptr [ %i.cd, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i178 ], [ %i.bn, %bb.l ] ; 12 uses
  %.val.i.i.i183 = phi ptr [ %i.bz, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i178 ], [ %.val.i.i.i167, %bb.l ] ; 6 uses
  %.not.i.i182 = icmp eq ptr %i.cg, %i.cf
  br i1 %.not.i.i182, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit181
  store ptr @.str.2, ptr %i.cg, align 8, !tbaa !268
  %.sroa.6395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 1524, ptr %.sroa.6395.0..sroa_idx, align 8, !tbaa !64
  %.sroa.7398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7398.0..sroa_idx, align 4, !tbaa !152
  %.sroa.8403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 9223372036854775807, ptr %.sroa.8403.0..sroa_idx, align 8, !tbaa !64
  %.sroa.9406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i32 -1, ptr %.sroa.9406.0..sroa_idx, align 8, !tbaa !64
  %.sroa.10409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.10409.0..sroa_idx, align 4, !tbaa !64
  %.sroa.11412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 36
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.11412.0..sroa_idx, align 4, !tbaa !64
  %.sroa.12415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store i8 1, ptr %.sroa.12415.0..sroa_idx, align 8, !tbaa !152
  %.sroa.13420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.13420.0..sroa_idx, align 4, !tbaa !64
  %.sroa.14423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 52
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.14423.0..sroa_idx, align 4, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56 ; 2 uses
  store ptr %i.ch, ptr %i.b, align 8, !tbaa !262
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit197

bb.p:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit181
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %.val.i.i.i183 to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %.invoke, label %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i184

_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i184: ; preds = %bb.p
  %i.cm = sdiv exact i64 %i.ck, 56                ; 3 uses
  %i.cn = icmp eq ptr %i.cf, %.val.i.i.i183       ; 2 uses
  %.sroa.speculated.i.i.i.i185 = select i1 %i.cn, i64 1, i64 %i.cm
  %i.co = add nsw i64 %.sroa.speculated.i.i.i.i185, %i.cm ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cm
  %i.cq = call i64 @llvm.umin.i64(i64 %i.co, i64 164703072086692425)
  %i.cr = select i1 %i.cp, i64 164703072086692425, i64 %i.cq ; 3 uses
  %.not.i.i.i.i186 = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i186)
  %i.cs = mul nuw nsw i64 %i.cr, 56
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #46
          to label %.noexc196 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc196:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i184
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ck ; 10 uses
  store ptr @.str.2, ptr %i.cu, align 8, !tbaa !268
  %.sroa.6395.0..sroa_idx396 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 1524, ptr %.sroa.6395.0..sroa_idx396, align 8, !tbaa !64
  %.sroa.7398.0..sroa_idx399 = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7398.0..sroa_idx399, align 4, !tbaa !152
  %.sroa.8403.0..sroa_idx404 = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 9223372036854775807, ptr %.sroa.8403.0..sroa_idx404, align 8, !tbaa !64
  %.sroa.9406.0..sroa_idx407 = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i32 -1, ptr %.sroa.9406.0..sroa_idx407, align 8, !tbaa !64
  %.sroa.10409.0..sroa_idx410 = getelementptr inbounds nuw i8, ptr %i.cu, i64 28
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.10409.0..sroa_idx410, align 4, !tbaa !64
  %.sroa.11412.0..sroa_idx413 = getelementptr inbounds nuw i8, ptr %i.cu, i64 36
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.11412.0..sroa_idx413, align 4, !tbaa !64
  %.sroa.12415.0..sroa_idx416 = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store i8 1, ptr %.sroa.12415.0..sroa_idx416, align 8, !tbaa !152
  %.sroa.13420.0..sroa_idx421 = getelementptr inbounds nuw i8, ptr %i.cu, i64 44
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.13420.0..sroa_idx421, align 4, !tbaa !64
  %.sroa.14423.0..sroa_idx424 = getelementptr inbounds nuw i8, ptr %i.cu, i64 52
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.14423.0..sroa_idx424, align 4, !tbaa !64
  br i1 %i.cn, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i191, label %.lr.ph.i.i.i.i.i.i187

.lr.ph.i.i.i.i.i.i187:                            ; preds = %.noexc196, %.lr.ph.i.i.i.i.i.i187
  %.03.i.i.i.i.i.i188 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i187 ], [ %i.ct, %.noexc196 ] ; 2 uses
  %.092.i.i.i.i.i.i189 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i187 ], [ %.val.i.i.i183, %.noexc196 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.03.i.i.i.i.i.i188, ptr noundef nonnull readonly align 8 dereferenceable(56) %.092.i.i.i.i.i.i189, i64 56, i1 false), !tbaa.struct !269, !alias.scope !690
  %i.cv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i189, i64 56 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i188, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i190 = icmp eq ptr %i.cv, %i.cf
  br i1 %.not.i.i.i.i.i.i190, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i191, label %.lr.ph.i.i.i.i.i.i187, !llvm.loop !661

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i191: ; preds = %.lr.ph.i.i.i.i.i.i187, %.noexc196
  %.0.lcssa.i.i.i.i.i.i192 = phi ptr [ %i.ct, %.noexc196 ], [ %i.cw, %.lr.ph.i.i.i.i.i.i187 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i192, i64 56 ; 2 uses
  %.not.i27.i.i.i193 = icmp eq ptr %.val.i.i.i183, null
  br i1 %.not.i27.i.i.i193, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i194, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i191
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i183, i64 noundef %i.ck) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i194

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i194: ; preds = %bb.q, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i191
  store ptr %i.ct, ptr %0, align 8, !tbaa !261
  store ptr %i.cx, ptr %i.b, align 8, !tbaa !262
  %i.cy = getelementptr inbounds nuw [56 x i8], ptr %i.ct, i64 %i.cr ; 2 uses
  store ptr %i.cy, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit197

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit197: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i194, %bb.o
  %i.cz = phi ptr [ %i.cy, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i194 ], [ %i.cf, %bb.o ] ; 5 uses
  %i.da = phi ptr [ %i.cx, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i194 ], [ %i.ch, %bb.o ] ; 12 uses
  %.val.i.i.i199 = phi ptr [ %i.ct, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i194 ], [ %.val.i.i.i183, %bb.o ] ; 6 uses
  %.not.i.i198 = icmp eq ptr %i.da, %i.cz
  br i1 %.not.i.i198, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit197
  store ptr @.str.2, ptr %i.da, align 8, !tbaa !268
  %.sroa.6362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 1536, ptr %.sroa.6362.0..sroa_idx, align 8, !tbaa !64
  %.sroa.7365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7365.0..sroa_idx, align 4, !tbaa !152
  %.sroa.8370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 9223372036854775807, ptr %.sroa.8370.0..sroa_idx, align 8, !tbaa !64
  %.sroa.9373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i32 -1, ptr %.sroa.9373.0..sroa_idx, align 8, !tbaa !64
  %.sroa.10376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 28
  store i64 0, ptr %.sroa.10376.0..sroa_idx, align 4, !tbaa !64
  %.sroa.11379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  store i32 0, ptr %.sroa.11379.0..sroa_idx, align 4, !tbaa !64
  %.sroa.12382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store i8 1, ptr %.sroa.12382.0..sroa_idx, align 8, !tbaa !152
  %.sroa.13387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 44
  store i64 0, ptr %.sroa.13387.0..sroa_idx, align 4, !tbaa !64
  %.sroa.14390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 52
  store i32 0, ptr %.sroa.14390.0..sroa_idx, align 4, !tbaa !64
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56 ; 2 uses
  store ptr %i.db, ptr %i.b, align 8, !tbaa !262
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit213

bb.s:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit197
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = ptrtoint ptr %.val.i.i.i199 to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 4 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %.invoke, label %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i200

_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i200: ; preds = %bb.s
  %i.dg = sdiv exact i64 %i.de, 56                ; 3 uses
  %i.dh = icmp eq ptr %i.cz, %.val.i.i.i199       ; 2 uses
  %.sroa.speculated.i.i.i.i201 = select i1 %i.dh, i64 1, i64 %i.dg
  %i.di = add nsw i64 %.sroa.speculated.i.i.i.i201, %i.dg ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dg
  %i.dk = call i64 @llvm.umin.i64(i64 %i.di, i64 164703072086692425)
  %i.dl = select i1 %i.dj, i64 164703072086692425, i64 %i.dk ; 3 uses
  %.not.i.i.i.i202 = icmp ne i64 %i.dl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i202)
  %i.dm = mul nuw nsw i64 %i.dl, 56
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #46
          to label %.noexc212 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc212:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i200
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.de ; 10 uses
  store ptr @.str.2, ptr %i.do, align 8, !tbaa !268
  %.sroa.6362.0..sroa_idx363 = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 1536, ptr %.sroa.6362.0..sroa_idx363, align 8, !tbaa !64
  %.sroa.7365.0..sroa_idx366 = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7365.0..sroa_idx366, align 4, !tbaa !152
  %.sroa.8370.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 9223372036854775807, ptr %.sroa.8370.0..sroa_idx371, align 8, !tbaa !64
  %.sroa.9373.0..sroa_idx374 = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store i32 -1, ptr %.sroa.9373.0..sroa_idx374, align 8, !tbaa !64
  %.sroa.10376.0..sroa_idx377 = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  store i64 0, ptr %.sroa.10376.0..sroa_idx377, align 4, !tbaa !64
  %.sroa.11379.0..sroa_idx380 = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  store i32 0, ptr %.sroa.11379.0..sroa_idx380, align 4, !tbaa !64
  %.sroa.12382.0..sroa_idx383 = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  store i8 1, ptr %.sroa.12382.0..sroa_idx383, align 8, !tbaa !152
  %.sroa.13387.0..sroa_idx388 = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  store i64 0, ptr %.sroa.13387.0..sroa_idx388, align 4, !tbaa !64
  %.sroa.14390.0..sroa_idx391 = getelementptr inbounds nuw i8, ptr %i.do, i64 52
  store i32 0, ptr %.sroa.14390.0..sroa_idx391, align 4, !tbaa !64
  br i1 %i.dh, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i207, label %.lr.ph.i.i.i.i.i.i203

.lr.ph.i.i.i.i.i.i203:                            ; preds = %.noexc212, %.lr.ph.i.i.i.i.i.i203
  %.03.i.i.i.i.i.i204 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i203 ], [ %i.dn, %.noexc212 ] ; 2 uses
  %.092.i.i.i.i.i.i205 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i203 ], [ %.val.i.i.i199, %.noexc212 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.03.i.i.i.i.i.i204, ptr noundef nonnull readonly align 8 dereferenceable(56) %.092.i.i.i.i.i.i205, i64 56, i1 false), !tbaa.struct !269, !alias.scope !691
  %i.dp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i205, i64 56 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i204, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i206 = icmp eq ptr %i.dp, %i.cz
  br i1 %.not.i.i.i.i.i.i206, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i207, label %.lr.ph.i.i.i.i.i.i203, !llvm.loop !661

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i207: ; preds = %.lr.ph.i.i.i.i.i.i203, %.noexc212
  %.0.lcssa.i.i.i.i.i.i208 = phi ptr [ %i.dn, %.noexc212 ], [ %i.dq, %.lr.ph.i.i.i.i.i.i203 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i208, i64 56 ; 2 uses
  %.not.i27.i.i.i209 = icmp eq ptr %.val.i.i.i199, null
  br i1 %.not.i27.i.i.i209, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i207
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i199, i64 noundef %i.de) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210: ; preds = %bb.t, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i207
  store ptr %i.dn, ptr %0, align 8, !tbaa !261
  store ptr %i.dr, ptr %i.b, align 8, !tbaa !262
  %i.ds = getelementptr inbounds nuw [56 x i8], ptr %i.dn, i64 %i.dl ; 2 uses
  store ptr %i.ds, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit213

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit213: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210, %bb.r
  %i.dt = phi ptr [ %i.ds, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210 ], [ %i.cz, %bb.r ] ; 5 uses
  %i.du = phi ptr [ %i.dr, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210 ], [ %i.db, %bb.r ] ; 12 uses
  %.val.i.i.i221 = phi ptr [ %i.dn, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210 ], [ %.val.i.i.i199, %bb.r ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.03.0.copyload.i, ptr %1, align 8
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.22.0..sroa_idx.i214, align 8
  %i.dv = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202605268DurationmLEl(ptr noundef nonnull align 4 dereferenceable(12) %1, i64 noundef 2) #44 ; 2 uses
  %.sroa.03.0.copyload.i215 = load i64, ptr %i.dv, align 4, !tbaa !64 ; 4 uses
  %.sroa.24.0..sroa_idx.i216 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.24.0.copyload.i217 = load i32, ptr %.sroa.24.0..sroa_idx.i216, align 4, !tbaa !64 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not.i.i220 = icmp eq ptr %i.du, %i.dt
  br i1 %.not.i.i220, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit213
  store ptr @.str.2, ptr %i.du, align 8, !tbaa !268
  %.sroa.6329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 1545, ptr %.sroa.6329.0..sroa_idx, align 8, !tbaa !64
  %.sroa.7332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7332.0..sroa_idx, align 4, !tbaa !152
  %.sroa.8337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %.sroa.03.0.copyload.i215, ptr %.sroa.8337.0..sroa_idx, align 8, !tbaa !64
  %.sroa.9340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i32 %.sroa.24.0.copyload.i217, ptr %.sroa.9340.0..sroa_idx, align 8, !tbaa !64
  %.sroa.10343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.10343.0..sroa_idx, align 4, !tbaa !64
  %.sroa.11346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.11346.0..sroa_idx, align 4, !tbaa !64
  %.sroa.12349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store i8 1, ptr %.sroa.12349.0..sroa_idx, align 8, !tbaa !152
  %.sroa.13354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 44
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.13354.0..sroa_idx, align 4, !tbaa !64
  %.sroa.14357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 52
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.14357.0..sroa_idx, align 4, !tbaa !64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 56 ; 2 uses
  store ptr %i.dw, ptr %i.b, align 8, !tbaa !262
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit235

bb.v:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit213
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = ptrtoint ptr %.val.i.i.i221 to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 4 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775800
  br i1 %i.ea, label %.invoke, label %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i222

_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i222: ; preds = %bb.v
  %i.eb = sdiv exact i64 %i.dz, 56                ; 3 uses
  %i.ec = icmp eq ptr %i.dt, %.val.i.i.i221       ; 2 uses
  %.sroa.speculated.i.i.i.i223 = select i1 %i.ec, i64 1, i64 %i.eb
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i.i223, %i.eb ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.eb
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ed, i64 164703072086692425)
  %i.eg = select i1 %i.ee, i64 164703072086692425, i64 %i.ef ; 3 uses
  %.not.i.i.i.i224 = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i224)
  %i.eh = mul nuw nsw i64 %i.eg, 56
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #46
          to label %.noexc234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc234:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i222
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dz ; 10 uses
  store ptr @.str.2, ptr %i.ej, align 8, !tbaa !268
  %.sroa.6329.0..sroa_idx330 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 1545, ptr %.sroa.6329.0..sroa_idx330, align 8, !tbaa !64
  %.sroa.7332.0..sroa_idx333 = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7332.0..sroa_idx333, align 4, !tbaa !152
  %.sroa.8337.0..sroa_idx338 = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 %.sroa.03.0.copyload.i215, ptr %.sroa.8337.0..sroa_idx338, align 8, !tbaa !64
  %.sroa.9340.0..sroa_idx341 = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i32 %.sroa.24.0.copyload.i217, ptr %.sroa.9340.0..sroa_idx341, align 8, !tbaa !64
  %.sroa.10343.0..sroa_idx344 = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.10343.0..sroa_idx344, align 4, !tbaa !64
  %.sroa.11346.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %i.ej, i64 36
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.11346.0..sroa_idx347, align 4, !tbaa !64
  %.sroa.12349.0..sroa_idx350 = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  store i8 1, ptr %.sroa.12349.0..sroa_idx350, align 8, !tbaa !152
  %.sroa.13354.0..sroa_idx355 = getelementptr inbounds nuw i8, ptr %i.ej, i64 44
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.13354.0..sroa_idx355, align 4, !tbaa !64
  %.sroa.14357.0..sroa_idx358 = getelementptr inbounds nuw i8, ptr %i.ej, i64 52
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.14357.0..sroa_idx358, align 4, !tbaa !64
  br i1 %i.ec, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i229, label %.lr.ph.i.i.i.i.i.i225

.lr.ph.i.i.i.i.i.i225:                            ; preds = %.noexc234, %.lr.ph.i.i.i.i.i.i225
  %.03.i.i.i.i.i.i226 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i225 ], [ %i.ei, %.noexc234 ] ; 2 uses
  %.092.i.i.i.i.i.i227 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i225 ], [ %.val.i.i.i221, %.noexc234 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.03.i.i.i.i.i.i226, ptr noundef nonnull readonly align 8 dereferenceable(56) %.092.i.i.i.i.i.i227, i64 56, i1 false), !tbaa.struct !269, !alias.scope !692
  %i.ek = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i227, i64 56 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i226, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i228 = icmp eq ptr %i.ek, %i.dt
  br i1 %.not.i.i.i.i.i.i228, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i229, label %.lr.ph.i.i.i.i.i.i225, !llvm.loop !661

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i229: ; preds = %.lr.ph.i.i.i.i.i.i225, %.noexc234
  %.0.lcssa.i.i.i.i.i.i230 = phi ptr [ %i.ei, %.noexc234 ], [ %i.el, %.lr.ph.i.i.i.i.i.i225 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i230, i64 56 ; 2 uses
  %.not.i27.i.i.i231 = icmp eq ptr %.val.i.i.i221, null
  br i1 %.not.i27.i.i.i231, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i232, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i229
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i221, i64 noundef %i.dz) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i232

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i232: ; preds = %bb.w, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i229
  store ptr %i.ei, ptr %0, align 8, !tbaa !261
  store ptr %i.em, ptr %i.b, align 8, !tbaa !262
  %i.en = getelementptr inbounds nuw [56 x i8], ptr %i.ei, i64 %i.eg ; 2 uses
  store ptr %i.en, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit235

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit235: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i232, %bb.u
  %i.eo = phi ptr [ %i.en, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i232 ], [ %i.dt, %bb.u ] ; 5 uses
  %i.ep = phi ptr [ %i.em, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i232 ], [ %i.dw, %bb.u ] ; 12 uses
  %.val.i.i.i237 = phi ptr [ %i.ei, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i232 ], [ %.val.i.i.i221, %bb.u ] ; 6 uses
  %.not.i.i236 = icmp eq ptr %i.ep, %i.eo
  br i1 %.not.i.i236, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit235
  store ptr @.str.2, ptr %i.ep, align 8, !tbaa !268
  %.sroa.6296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 1554, ptr %.sroa.6296.0..sroa_idx, align 8, !tbaa !64
  %.sroa.7299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7299.0..sroa_idx, align 4, !tbaa !152
  %.sroa.8304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.8304.0..sroa_idx, align 8, !tbaa !64
  %.sroa.9307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.9307.0..sroa_idx, align 8, !tbaa !64
  %.sroa.10310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  store i64 %.sroa.03.0.copyload.i215, ptr %.sroa.10310.0..sroa_idx, align 4, !tbaa !64
  %.sroa.11313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 36
  store i32 %.sroa.24.0.copyload.i217, ptr %.sroa.11313.0..sroa_idx, align 4, !tbaa !64
  %.sroa.12316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  store i8 0, ptr %.sroa.12316.0..sroa_idx, align 8, !tbaa !152
  %.sroa.13321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 44
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.13321.0..sroa_idx, align 4, !tbaa !64
  %.sroa.14324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 52
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.14324.0..sroa_idx, align 4, !tbaa !64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 56 ; 2 uses
  store ptr %i.eq, ptr %i.b, align 8, !tbaa !262
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit251

bb.y:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit235
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = ptrtoint ptr %.val.i.i.i237 to i64
  %i.et = sub i64 %i.er, %i.es                    ; 4 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %.invoke, label %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i238

_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i238: ; preds = %bb.y
  %i.ev = sdiv exact i64 %i.et, 56                ; 3 uses
  %i.ew = icmp eq ptr %i.eo, %.val.i.i.i237       ; 2 uses
  %.sroa.speculated.i.i.i.i239 = select i1 %i.ew, i64 1, i64 %i.ev
  %i.ex = add nsw i64 %.sroa.speculated.i.i.i.i239, %i.ev ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ev
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ex, i64 164703072086692425)
  %i.fa = select i1 %i.ey, i64 164703072086692425, i64 %i.ez ; 3 uses
  %.not.i.i.i.i240 = icmp ne i64 %i.fa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i240)
  %i.fb = mul nuw nsw i64 %i.fa, 56
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #46
          to label %.noexc250 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc250:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i238
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.et ; 10 uses
  store ptr @.str.2, ptr %i.fd, align 8, !tbaa !268
  %.sroa.6296.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 1554, ptr %.sroa.6296.0..sroa_idx297, align 8, !tbaa !64
  %.sroa.7299.0..sroa_idx300 = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7299.0..sroa_idx300, align 4, !tbaa !152
  %.sroa.8304.0..sroa_idx305 = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.8304.0..sroa_idx305, align 8, !tbaa !64
  %.sroa.9307.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.9307.0..sroa_idx308, align 8, !tbaa !64
  %.sroa.10310.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  store i64 %.sroa.03.0.copyload.i215, ptr %.sroa.10310.0..sroa_idx311, align 4, !tbaa !64
  %.sroa.11313.0..sroa_idx314 = getelementptr inbounds nuw i8, ptr %i.fd, i64 36
  store i32 %.sroa.24.0.copyload.i217, ptr %.sroa.11313.0..sroa_idx314, align 4, !tbaa !64
  %.sroa.12316.0..sroa_idx317 = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  store i8 0, ptr %.sroa.12316.0..sroa_idx317, align 8, !tbaa !152
  %.sroa.13321.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %i.fd, i64 44
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.13321.0..sroa_idx322, align 4, !tbaa !64
  %.sroa.14324.0..sroa_idx325 = getelementptr inbounds nuw i8, ptr %i.fd, i64 52
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.14324.0..sroa_idx325, align 4, !tbaa !64
  br i1 %i.ew, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i245, label %.lr.ph.i.i.i.i.i.i241

.lr.ph.i.i.i.i.i.i241:                            ; preds = %.noexc250, %.lr.ph.i.i.i.i.i.i241
  %.03.i.i.i.i.i.i242 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i241 ], [ %i.fc, %.noexc250 ] ; 2 uses
  %.092.i.i.i.i.i.i243 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i241 ], [ %.val.i.i.i237, %.noexc250 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.03.i.i.i.i.i.i242, ptr noundef nonnull readonly align 8 dereferenceable(56) %.092.i.i.i.i.i.i243, i64 56, i1 false), !tbaa.struct !269, !alias.scope !693
  %i.fe = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i243, i64 56 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i242, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i244 = icmp eq ptr %i.fe, %i.eo
  br i1 %.not.i.i.i.i.i.i244, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i245, label %.lr.ph.i.i.i.i.i.i241, !llvm.loop !661

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i245: ; preds = %.lr.ph.i.i.i.i.i.i241, %.noexc250
  %.0.lcssa.i.i.i.i.i.i246 = phi ptr [ %i.fc, %.noexc250 ], [ %i.ff, %.lr.ph.i.i.i.i.i.i241 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i246, i64 56 ; 2 uses
  %.not.i27.i.i.i247 = icmp eq ptr %.val.i.i.i237, null
  br i1 %.not.i27.i.i.i247, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i248, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i245
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i237, i64 noundef %i.et) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i248

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i248: ; preds = %bb.z, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i245
  store ptr %i.fc, ptr %0, align 8, !tbaa !261
  store ptr %i.fg, ptr %i.b, align 8, !tbaa !262
  %i.fh = getelementptr inbounds nuw [56 x i8], ptr %i.fc, i64 %i.fa ; 2 uses
  store ptr %i.fh, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit251

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit251: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i248, %bb.x
  %i.fi = phi ptr [ %i.fh, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i248 ], [ %i.eo, %bb.x ] ; 5 uses
  %i.fj = phi ptr [ %i.fg, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i248 ], [ %i.eq, %bb.x ] ; 12 uses
  %.val.i.i.i253 = phi ptr [ %i.fc, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i248 ], [ %.val.i.i.i237, %bb.x ] ; 6 uses
  %.not.i.i252 = icmp eq ptr %i.fj, %i.fi
  br i1 %.not.i.i252, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit251
  store ptr @.str.2, ptr %i.fj, align 8, !tbaa !268
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i32 1563, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !64
  %.sroa.7.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7.0..sroa_idx271, align 4, !tbaa !152
  %.sroa.8275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.8275.0..sroa_idx, align 8, !tbaa !64
  %.sroa.9.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.9.0..sroa_idx278, align 8, !tbaa !64
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  store i64 9223372036854775807, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !64
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 36
  store i32 -1, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !64
  %.sroa.12.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  store i8 0, ptr %.sroa.12.0..sroa_idx285, align 8, !tbaa !152
  %.sroa.13289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 44
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.13289.0..sroa_idx, align 4, !tbaa !64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 52
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56 ; 2 uses
  store ptr %i.fk, ptr %i.b, align 8, !tbaa !262
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit267

bb.ab:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit251
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = ptrtoint ptr %.val.i.i.i253 to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 4 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775800
  br i1 %i.fo, label %.invoke, label %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i254

.invoke:                                          ; preds = %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #45
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i254: ; preds = %bb.ab
  %i.fp = sdiv exact i64 %i.fn, 56                ; 3 uses
  %i.fq = icmp eq ptr %i.fi, %.val.i.i.i253       ; 2 uses
  %.sroa.speculated.i.i.i.i255 = select i1 %i.fq, i64 1, i64 %i.fp
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i.i255, %i.fp ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fp
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 164703072086692425)
  %i.fu = select i1 %i.fs, i64 164703072086692425, i64 %i.ft ; 3 uses
  %.not.i.i.i.i256 = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i256)
  %i.fv = mul nuw nsw i64 %i.fu, 56
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #46
          to label %.noexc266 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc266:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i254
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fn ; 10 uses
  store ptr @.str.2, ptr %i.fx, align 8, !tbaa !268
  %.sroa.6.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i32 1563, ptr %.sroa.6.0..sroa_idx269, align 8, !tbaa !64
  %.sroa.7.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i8 %.0.idx579.sroa.phi.sroa.speculated, ptr %.sroa.7.0..sroa_idx272, align 4, !tbaa !152
  %.sroa.8275.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.8275.0..sroa_idx276, align 8, !tbaa !64
  %.sroa.9.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.9.0..sroa_idx279, align 8, !tbaa !64
  %.sroa.10.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.fx, i64 28
  store i64 9223372036854775807, ptr %.sroa.10.0..sroa_idx281, align 4, !tbaa !64
  %.sroa.11.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.fx, i64 36
  store i32 -1, ptr %.sroa.11.0..sroa_idx283, align 4, !tbaa !64
  %.sroa.12.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  store i8 0, ptr %.sroa.12.0..sroa_idx286, align 8, !tbaa !152
  %.sroa.13289.0..sroa_idx290 = getelementptr inbounds nuw i8, ptr %i.fx, i64 44
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.13289.0..sroa_idx290, align 4, !tbaa !64
  %.sroa.14.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.fx, i64 52
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.14.0..sroa_idx292, align 4, !tbaa !64
  br i1 %i.fq, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i261, label %.lr.ph.i.i.i.i.i.i257

.lr.ph.i.i.i.i.i.i257:                            ; preds = %.noexc266, %.lr.ph.i.i.i.i.i.i257
  %.03.i.i.i.i.i.i258 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i.i257 ], [ %i.fw, %.noexc266 ] ; 2 uses
  %.092.i.i.i.i.i.i259 = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i.i257 ], [ %.val.i.i.i253, %.noexc266 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.03.i.i.i.i.i.i258, ptr noundef nonnull readonly align 8 dereferenceable(56) %.092.i.i.i.i.i.i259, i64 56, i1 false), !tbaa.struct !269, !alias.scope !694
  %i.fy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i259, i64 56 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i258, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i260 = icmp eq ptr %i.fy, %i.fi
  br i1 %.not.i.i.i.i.i.i260, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i261, label %.lr.ph.i.i.i.i.i.i257, !llvm.loop !661

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i261: ; preds = %.lr.ph.i.i.i.i.i.i257, %.noexc266
  %.0.lcssa.i.i.i.i.i.i262 = phi ptr [ %i.fw, %.noexc266 ], [ %i.fz, %.lr.ph.i.i.i.i.i.i257 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i262, i64 56 ; 2 uses
  %.not.i27.i.i.i263 = icmp eq ptr %.val.i.i.i253, null
  br i1 %.not.i27.i.i.i263, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i261
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i253, i64 noundef %i.fn) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264: ; preds = %bb.ac, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i261
  store ptr %i.fw, ptr %0, align 8, !tbaa !261
  store ptr %i.ga, ptr %i.b, align 8, !tbaa !262
  %i.gb = getelementptr inbounds nuw [56 x i8], ptr %i.fw, i64 %i.fu ; 2 uses
  store ptr %i.gb, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit267

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE9push_backEOS1_.exit267: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264, %bb.aa
  %i.gc = phi ptr [ %i.gb, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264 ], [ %i.fi, %bb.aa ]
  %.val.i.i.i588 = phi ptr [ %i.fw, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264 ], [ %.val.i.i.i253, %bb.aa ]
  %i.gd = phi ptr [ %i.ga, %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264 ], [ %i.fk, %bb.aa ]
  br i1 %.not, label %bb.a, label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i238, %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i222, %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i200, %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i184, %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i168, %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i152, %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i136, %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i254, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val132 = load ptr, ptr %i.c, align 8
  %i.ge = ptrtoint ptr %.val132 to i64
  %i.gf = ptrtoint ptr %.val to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.gg) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.e) #47
  br label %_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_116TimeoutTestParamESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.e) #47, !inline_history !695
  br label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEED2Ev.exit

_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE5BeginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #46 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8IteratorE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !279
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.val, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !280
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE3EndEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #46 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8IteratorE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !279
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.val, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !280
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8IteratorD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8IteratorE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIKN12_GLOBAL__N_116TimeoutTestParamESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIKN12_GLOBAL__N_116TimeoutTestParamEEclEPS2_.exit.i

_ZNKSt14default_deleteIKN12_GLOBAL__N_116TimeoutTestParamEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #47
  br label %_ZNSt10unique_ptrIKN12_GLOBAL__N_116TimeoutTestParamESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIKN12_GLOBAL__N_116TimeoutTestParamESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKN12_GLOBAL__N_116TimeoutTestParamEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8IteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8IteratorE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8IteratorD2Ev.exit, label %_ZNKSt14default_deleteIKN12_GLOBAL__N_116TimeoutTestParamEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIKN12_GLOBAL__N_116TimeoutTestParamEEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #47, !inline_history !696
  br label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8IteratorD2Ev.exit

_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8IteratorD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKN12_GLOBAL__N_116TimeoutTestParamEEclEPS2_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8Iterator13BaseGeneratorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_116TimeoutTestParamEE8Iterator7AdvanceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.c, ptr %i.a, align 8, !tbaa !281
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !70
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIKN12_GLOBAL__N_116TimeoutTestParamESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIKN12_GLOBAL__N_116TimeoutTestParamEEclEPS2_.exit.i.i

end_hunk_0
