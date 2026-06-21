inline.NumInlined: 22186
inline.NumDeleted: 7876
begin_hunk_0_@_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv:bb.a
bb.f:                                             ; preds = %bb.d, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZN6google8protobuf12_GLOBAL__N_116NewGeneratedPoolEv() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #45 ; 5 uses
  %i.b = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEv()
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf14DescriptorPoolC1EPNS0_18DescriptorDatabaseEPNS1_14ErrorCollectorE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %i.b, ptr noundef null)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  store i8 1, ptr %i.c, align 1, !tbaa !652
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.d, align 8, !tbaa !606
  ret ptr %i.a

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #41
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf14DescriptorPool14generated_poolEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit, !prof !640

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_116NewGeneratedPoolEv()
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_ENUlPKvE_8__invokeES7_, ptr noundef nonnull %i.d)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit.i unwind label %bb.e

_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit.i: ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool, align 8, !tbaa !651
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  br label %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  resume { ptr, i32 } %i.e

_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit: ; preds = %bb.a, %bb.b, %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit.i
  %i.f = load ptr, ptr @_ZZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool, align 8, !tbaa !651
  %i.g = tail call { ptr, ptr } @_ZNK6google8protobuf15DescriptorProto11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(176) @_ZN6google8protobuf34_DescriptorProto_default_instance_E) ; 0 uses
  %i.h = tail call { ptr, ptr } @_ZNK2pb11CppFeatures11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) @_ZN2pb30_CppFeatures_default_instance_E) ; 0 uses
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf14DescriptorPool24InternalAddGeneratedFileEPKvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::MutexLockMaybe", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = load atomic i8, ptr @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit, !prof !640

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_116NewGeneratedPoolEv()
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_ENUlPKvE_8__invokeES7_, ptr noundef nonnull %i.d)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit.i unwind label %bb.e

_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit.i: ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool, align 8, !tbaa !651
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  br label %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit

common.resume:                                    ; preds = %bb.p, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool) #40
  br label %common.resume

_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit: ; preds = %bb.a, %bb.b, %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_14DescriptorPoolEEEPT_S5_.exit.i
  %i.f = load ptr, ptr @_ZZN6google8protobuf14DescriptorPool23internal_generated_poolEvE14generated_pool, align 8, !tbaa !651
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186  ; 4 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !261
  %.not.i12 = icmp eq ptr %i.h, null              ; 2 uses
  br i1 %.not.i12, label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit

_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit: ; preds = %_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv.exit, %bb.f
  %i.i = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117GeneratedDatabaseEv()
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.j = invoke noundef zeroext i1 @_ZN6google8protobuf25EncodedDescriptorDatabase3AddEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %0, i32 noundef %1)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %i.j, label %.critedge, label %bb.i, !prof !322

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62, i32 noundef 2526, ptr noundef nonnull @.str.63) #43
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.m

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.j
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

bb.k:                                             ; preds = %bb.g, %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

.critedge:                                        ; preds = %bb.h
  br i1 %.not.i12, label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #42
  unreachable

_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit:  ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void

bb.p:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.l, %bb.l ], [ %i.k, %bb.k ]
  call void @_ZN4absl12lts_2025051214MutexLockMaybeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %common.resume
}

declare noundef zeroext i1 @_ZN6google8protobuf25EncodedDescriptorDatabase3AddEPKvi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #18

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool14FindFileByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.694, align 8            ; 4 uses
  %4 = alloca %class.anon.694, align 8            ; 4 uses
  %5 = alloca %"class.google::protobuf::DescriptorPool::DeferredValidation", align 8 ; 14 uses
  %6 = alloca %"class.absl::lts_20250512::MutexLockMaybe", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 3 uses
  call void @_ZN6google8protobuf8internal15ThreadSafeArenaC1EPcm(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(736) %5, i64 noundef 512)
  %i.b = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef nonnull %i.a)
          to label %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.z, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn35, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.a) #40
  br label %common.resume

_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 680
  store ptr %i.b, ptr %i.d, align 8, !tbaa !227
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 688
  store ptr %0, ptr %i.e, align 8, !tbaa !258
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 696
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !259
  store ptr %i.h, ptr %i.f, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 720
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186  ; 3 uses
  store ptr %i.k, ptr %6, align 8, !tbaa !261
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit unwind label %bb.g

_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit: ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !263
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit47, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !73   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %i.p, ptr %4, align 8, !tbaa !98
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 32, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc43 unwind label %bb.h

.noexc43:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.s = icmp ult i64 %i.q, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i1 noundef zeroext %i.s, i1 noundef zeroext false)
          to label %.noexc43._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge unwind label %bb.h

.noexc43._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge: ; preds = %.noexc43
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !114
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit: ; preds = %.noexc43._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge, %bb.d
  %i.t = phi ptr [ %.pre, %.noexc43._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge ], [ %i.o, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73   ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit47, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr %i.u, ptr %3, align 8, !tbaa !98
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 32, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc45 unwind label %bb.h

.noexc45:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.x = icmp ult i64 %i.v, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i1 noundef zeroext %i.x, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit47 unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.h:                                             ; preds = %.noexc45, %bb.f, %.noexc43, %bb.e, %bb.o, %bb.m, %bb.k, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit47
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051214MutexLockMaybeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #40
  br label %bb.w

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit47: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit, %.noexc45, %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !114
  %i.ac = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.ab, i64 %1, ptr %2)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit47
  %.not31 = icmp eq ptr %i.ac, null
  br i1 %.not31, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !264 ; 2 uses
  %.not32 = icmp eq ptr %i.ae, null
  br i1 %.not32, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool14FindFileByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ae, i64 %1, ptr %2)
          to label %bb.l unwind label %bb.h       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.not33 = icmp eq ptr %i.af, null
  br i1 %.not33, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.ag = invoke noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool29TryFindFileInFallbackDatabaseESt17basic_string_viewIcSt11char_traitsIcEERNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(736) %5)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  br i1 %i.ag, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !114
  %i.ai = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.ah, i64 %1, ptr %2)
          to label %bb.s unwind label %bb.h

bb.p:                                             ; preds = %bb.l, %bb.i
  %.2 = phi ptr [ %i.af, %bb.l ], [ %i.ac, %bb.i ]
  %7 = load ptr, ptr %6, align 8, !tbaa !261      ; 2 uses
  %.not.i48 = icmp eq ptr %7, null
  br i1 %.not.i48, label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #42
  unreachable

_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit:  ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.y

bb.s:                                             ; preds = %bb.o, %bb.n
  %.2.ph = phi ptr [ %i.ai, %bb.o ], [ null, %bb.n ]
  %8 = load ptr, ptr %6, align 8, !tbaa !261      ; 2 uses
  %.not.i49 = icmp eq ptr %8, null
  br i1 %.not.i49, label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit50, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit50 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #42
  unreachable

_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit50: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.an = invoke noundef zeroext i1 @_ZN6google8protobuf14DescriptorPool18DeferredValidation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(736) %5)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit50
  %.2. = select i1 %i.an, ptr %.2.ph, ptr null
  br label %bb.y

bb.w:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.z

bb.x:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit50
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit, %bb.v
  %.1 = phi ptr [ %.2, %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit ], [ %.2., %bb.v ]
  call void @_ZN6google8protobuf14DescriptorPool18DeferredValidationD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret ptr %.1

bb.z:                                             ; preds = %bb.x, %bb.w
  %.pn35 = phi { ptr, i32 } [ %i.ao, %bb.x ], [ %.pn, %bb.w ]
  call void @_ZN6google8protobuf14DescriptorPool18DeferredValidationD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool29TryFindFileInFallbackDatabaseESt17basic_string_viewIcSt11char_traitsIcEERNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(736) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"struct.std::pair.245", align 8    ; 5 uses
  store i64 %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findISt17basic_string_viewIcS7_EEENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !227  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.k, align 8, !tbaa !271
  br label %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.n = call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef nonnull %i.m)
  br label %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit

_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !263
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !19
  %.sroa.2.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !270
  %i.p = call fastcc noundef zeroext i1 @"_ZZNK6google8protobuf14DescriptorPool29TryFindFileInFallbackDatabaseESt17basic_string_viewIcSt11char_traitsIcEERNS1_18DeferredValidationEENK3$_0clERNS0_18DescriptorDatabaseES5_RNS0_19FileDescriptorProtoE"(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(200) %.0.i)
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit
  %i.q = call noundef ptr @_ZNK6google8protobuf14DescriptorPool21BuildFileFromDatabaseERKNS0_19FileDescriptorProtoERNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(200) %.0.i, ptr noundef nonnull align 8 dereferenceable(736) %3)
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f, %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooISt17basic_string_viewIcS7_EEESt4pairINSE_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.245") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !296, !range !49, !alias.scope !668, !noundef !51
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRSt17basic_string_viewIcS7_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_.exit

bb.h:                                             ; preds = %bb.g
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !668 ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8, !tbaa !19, !noalias !668 ; 5 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !668 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.x, ptr %.sroa.2.0.copyload.i.i.i.i.i, align 8, !tbaa !16
  %i.y = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, null
  %i.z = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.z, %i.y
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.h
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !668
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !19, !noalias !668
  %i.aa = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.aa, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.i
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %.sroa.2.0.copyload.i.i.i.i.i, align 8, !tbaa !20
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !668
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.ad = phi ptr [ %i.ab, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.x, %bb.i ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRSt17basic_string_viewIcS7_EEEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = load i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !22
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRSt17basic_string_viewIcS7_EEEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRSt17basic_string_viewIcS7_EEEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRSt17basic_string_viewIcS7_EEEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !668 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !23
  %i.ah = load ptr, ptr %.sroa.2.0.copyload.i.i.i.i.i, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !668
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRSt17basic_string_viewIcS7_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRSt17basic_string_viewIcS7_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_.exit: ; preds = %bb.g, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRSt17basic_string_viewIcS7_EEEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRSt17basic_string_viewIcS7_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_.exit, %bb.f, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRSt17basic_string_viewIcS7_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_.exit ], [ true, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool24FindFileContainingSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.694, align 8            ; 4 uses
  %4 = alloca %class.anon.694, align 8            ; 4 uses
  %5 = alloca %"class.google::protobuf::DescriptorPool::DeferredValidation", align 8 ; 14 uses
  %6 = alloca %"class.absl::lts_20250512::MutexLockMaybe", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 3 uses
  call void @_ZN6google8protobuf8internal15ThreadSafeArenaC1EPcm(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(736) %5, i64 noundef 512)
  %i.b = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef nonnull %i.a)
          to label %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.aq, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn36, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.a) #40
  br label %common.resume

_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 680
  store ptr %i.b, ptr %i.d, align 8, !tbaa !227
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 688
  store ptr %0, ptr %i.e, align 8, !tbaa !258
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 696
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !259
  store ptr %i.h, ptr %i.f, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 720
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186  ; 3 uses
  store ptr %i.k, ptr %6, align 8, !tbaa !261
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit unwind label %bb.g

_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit: ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !263
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit42, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !73   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %i.p, ptr %4, align 8, !tbaa !98
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 32, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc38 unwind label %bb.h

.noexc38:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.s = icmp ult i64 %i.q, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i1 noundef zeroext %i.s, i1 noundef zeroext false)
          to label %.noexc38._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge unwind label %bb.h

.noexc38._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge: ; preds = %.noexc38
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !114
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit: ; preds = %.noexc38._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge, %bb.d
  %i.t = phi ptr [ %.pre, %.noexc38._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge ], [ %i.o, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73   ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit42, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr %i.u, ptr %3, align 8, !tbaa !98
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 32, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc40 unwind label %bb.h

.noexc40:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.x = icmp ult i64 %i.v, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i1 noundef zeroext %i.x, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit42 unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.h:                                             ; preds = %.noexc40, %bb.f, %.noexc38, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit42: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit, %.noexc40, %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !114
  %i.ac = invoke ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.ab, i64 %1, ptr %2)
          to label %bb.i unwind label %bb.r       ; 10 uses

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit42
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !135
  switch i8 %i.ad, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit [
    i8 0, label %bb.s
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %bb.p
    i8 10, label %bb.q
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !670
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.l:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !671
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.m:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i: ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !465
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.n:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.o:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !679
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.p:                                             ; preds = %bb.i
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.q:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !158
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.r:                                             ; preds = %bb.v, %bb.t, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit42
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.s:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !264 ; 2 uses
  %.not31 = icmp eq ptr %i.bc, null
  br i1 %.not31, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool24FindFileContainingSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %i.bc, i64 %1, ptr %2)
          to label %bb.u unwind label %bb.r       ; 3 uses

bb.u:                                             ; preds = %bb.t
  %.not32 = icmp eq ptr %i.bd, null
  br i1 %.not32, label %bb.v, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.be = invoke noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool31TryFindSymbolInFallbackDatabaseESt17basic_string_viewIcSt11char_traitsIcEERNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(736) %5)
          to label %bb.w unwind label %bb.r

bb.w:                                             ; preds = %bb.v
  br i1 %i.be, label %bb.x, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.x:                                             ; preds = %bb.w
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !114
  %i.bg = invoke ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.bf, i64 %1, ptr %2)
          to label %bb.y unwind label %bb.ah      ; 10 uses

bb.y:                                             ; preds = %bb.x
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !135
  switch i8 %i.bh, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit [
    i8 10, label %bb.ag
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i44
    i8 7, label %bb.ad
    i8 8, label %bb.ae
    i8 9, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.aa:                                            ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !670
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.ab:                                            ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !671
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.ac:                                            ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i44: ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !465
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.ad:                                            ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.ae:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !679
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.af:                                            ; preds = %bb.y
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.ag:                                            ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !158
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.ah:                                            ; preds = %bb.x
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNK6google8protobuf6Symbol7GetFileEv.exit:       ; preds = %bb.y, %bb.i, %bb.ag, %bb.af, %bb.ae, %bb.ad, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i44, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.q, %bb.p, %bb.o, %bb.n, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.w, %bb.u
  %cond = phi i1 [ true, %bb.w ], [ false, %bb.u ], [ false, %bb.q ], [ true, %bb.ag ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.ac ], [ true, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i44 ], [ true, %bb.ad ], [ true, %bb.ae ], [ true, %bb.af ]
  %.2 = phi ptr [ null, %bb.w ], [ %i.bd, %bb.u ], [ null, %bb.q ], [ %i.cd, %bb.ag ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.m ], [ null, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.y ], [ %i.bj, %bb.z ], [ %i.bl, %bb.aa ], [ %i.bp, %bb.ab ], [ %i.br, %bb.ac ], [ %i.bv, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i44 ], [ %i.bx, %bb.ad ], [ %i.cb, %bb.ae ], [ %i.bg, %bb.af ]
  %.0 = phi ptr [ undef, %bb.w ], [ %i.bd, %bb.u ], [ %i.az, %bb.q ], [ undef, %bb.ag ], [ null, %bb.i ], [ %i.af, %bb.j ], [ %i.ah, %bb.k ], [ %i.al, %bb.l ], [ %i.an, %bb.m ], [ %i.ar, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i ], [ %i.at, %bb.n ], [ %i.ax, %bb.o ], [ %i.ac, %bb.p ], [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ undef, %bb.ac ], [ undef, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i44 ], [ undef, %bb.ad ], [ undef, %bb.ae ], [ undef, %bb.af ]
  %7 = load ptr, ptr %6, align 8, !tbaa !261      ; 2 uses
  %.not.i46 = icmp eq ptr %7, null
  br i1 %.not.i46, label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #42
  unreachable

_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit:  ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %cond, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit
  %i.ch = invoke noundef zeroext i1 @_ZN6google8protobuf14DescriptorPool18DeferredValidation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(736) %5)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.2. = select i1 %i.ch, ptr %.2, ptr null
  br label %bb.ap

bb.am:                                            ; preds = %bb.r, %bb.ah, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.ba, %bb.r ], [ %i.ce, %bb.ah ]
  call void @_ZN4absl12lts_2025051214MutexLockMaybeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #40
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.am ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ak
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al, %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit ], [ %.2., %bb.al ]
  call void @_ZN6google8protobuf14DescriptorPool18DeferredValidationD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret ptr %.1

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %.pn36 = phi { ptr, i32 } [ %i.ci, %bb.ao ], [ %.pn.pn.pn, %bb.an ]
  call void @_ZN6google8protobuf14DescriptorPool18DeferredValidationD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindMessageTypeByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = tail call ptr @_ZN6google8protobuf14DescriptorPool6Tables16FindByNameHelperEPKS1_St17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull %0, i64 %1, ptr %2) ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !135
  %i.e = icmp eq i8 %i.d, 1
  %spec.select.i = select i1 %i.e, ptr %i.c, ptr null
  ret ptr %spec.select.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool15FindFieldByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = tail call ptr @_ZN6google8protobuf14DescriptorPool6Tables16FindByNameHelperEPKS1_St17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull %0, i64 %1, ptr %2) ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !135
  %.not = icmp eq i8 %i.d, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 8
  %.not11 = icmp eq i8 %i.g, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ null, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = tail call ptr @_ZN6google8protobuf14DescriptorPool6Tables16FindByNameHelperEPKS1_St17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull %0, i64 %1, ptr %2) ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !135
  %.not = icmp eq i8 %i.d, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 8
  %.not11 = icmp eq i8 %i.g, 0
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ null, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool15FindOneofByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = tail call ptr @_ZN6google8protobuf14DescriptorPool6Tables16FindByNameHelperEPKS1_St17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull %0, i64 %1, ptr %2) ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !135
  %i.e = icmp eq i8 %i.d, 3
  %spec.select.i = select i1 %i.e, ptr %i.c, ptr null
  ret ptr %spec.select.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool18FindEnumTypeByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = tail call ptr @_ZN6google8protobuf14DescriptorPool6Tables16FindByNameHelperEPKS1_St17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull %0, i64 %1, ptr %2) ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !135
  %i.e = icmp eq i8 %i.d, 4
  %spec.select.i = select i1 %i.e, ptr %i.c, ptr null
  ret ptr %spec.select.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool19FindEnumValueByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = tail call ptr @_ZN6google8protobuf14DescriptorPool6Tables16FindByNameHelperEPKS1_St17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull %0, i64 %1, ptr %2) ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !135
  switch i8 %i.d, label %.fold.split.i [
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit
    i8 6, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -1
  br label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit

.fold.split.i:                                    ; preds = %bb.a
  br label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit: ; preds = %bb.a, %bb.b, %.fold.split.i
  %i.f = phi ptr [ %i.c, %bb.a ], [ %i.e, %bb.b ], [ null, %.fold.split.i ]
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool17FindServiceByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = tail call ptr @_ZN6google8protobuf14DescriptorPool6Tables16FindByNameHelperEPKS1_St17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull %0, i64 %1, ptr %2) ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !135
  %i.e = icmp eq i8 %i.d, 7
  %spec.select.i = select i1 %i.e, ptr %i.c, ptr null
  ret ptr %spec.select.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool16FindMethodByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = tail call ptr @_ZN6google8protobuf14DescriptorPool6Tables16FindByNameHelperEPKS1_St17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull %0, i64 %1, ptr %2) ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !135
  %i.e = icmp eq i8 %i.d, 8
  %spec.select.i = select i1 %i.e, ptr %i.c, ptr null
  ret ptr %spec.select.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.694, align 8            ; 4 uses
  %4 = alloca %class.anon.694, align 8            ; 4 uses
  %5 = alloca %"class.google::protobuf::DescriptorPool::DeferredValidation", align 8 ; 14 uses
  %6 = alloca %"class.absl::lts_20250512::MutexLockMaybe", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !683
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %i.ad, %bb.g ]
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !tbaa !684 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22    ; 2 uses
  %.not21.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not21.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.thread17.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.023.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.y, %.thread17.i.i.i.i.i.i.i.i ] ; 3 uses
  %.01022.i.i.i.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.x, %.thread17.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.m = add i64 %.01022.i.i.i.i.i.i.i.i, %.023.i.i.i.i.i.i.i.i
  %i.n = lshr i64 %i.m, 1                         ; 5 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !685  ; 2 uses
  %i.q = icmp ult ptr %i.p, %1
  br i1 %i.q, label %.thread.i.i.i.i.i.i.i.i, label %bb.f

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.e
  %i.r = add nuw i64 %i.n, 1
  br label %.thread17.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ult ptr %1, %i.p
  br i1 %i.s, label %.thread17.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !686
  %.fr.i = freeze i32 %i.u
  %i.v = icmp slt i32 %.fr.i, %2                  ; 2 uses
  %i.w = add nuw i64 %i.n, 1
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.v, i64 %.01022.i.i.i.i.i.i.i.i, i64 %i.n
  %spec.select20.i.i.i.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %.023.i.i.i.i.i.i.i.i
  br label %.thread17.i.i.i.i.i.i.i.i

.thread17.i.i.i.i.i.i.i.i:                        ; preds = %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i, %bb.f, %.thread.i.i.i.i.i.i.i.i
  %i.x = phi i64 [ %i.n, %bb.f ], [ %spec.select.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i ], [ %.01022.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.y = phi i64 [ %.023.i.i.i.i.i.i.i.i, %bb.f ], [ %spec.select20.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i ], [ %i.r, %.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.x
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i, label %bb.e, !llvm.loop !687

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i: ; preds = %.thread17.i.i.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.x, %.thread17.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %.not.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 256
  %i.ac = and i64 %.0.lcssa.i.i.i.i.i.i.i.i, 255
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  br label %bb.d

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i
  %i.ae = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i.i = phi i32 [ %i.ae, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i ], [ %i.al, %bb.i ] ; 4 uses
  %.sroa.0.0.i6.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i ], [ %i.am, %bb.i ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %i.ah = zext i8 %i.ag to i32
  %i.ai = icmp eq i32 %.sroa.7.0.i.i.i.i.i, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i, i64 8
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.al = zext i8 %i.ak to i32
  %i.am = load ptr, ptr %.sroa.0.0.i6.i.i.i.i, align 8, !tbaa !684 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22
  %.not.i9.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i9.i.i.i.i, label %bb.h, label %.loopexit.i.i.i, !llvm.loop !688

bb.j:                                             ; preds = %bb.h
  %i.ap = sext i32 %.sroa.7.0.i.i.i.i.i to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i, i64 16
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !685 ; 2 uses
  %i.at = icmp ult ptr %1, %i.as
  br i1 %i.at, label %.loopexit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = icmp ult ptr %i.as, %1
  br i1 %i.au, label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i: ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !686
  %i.ax = icmp slt i32 %2, %i.aw
  br i1 %i.ax, label %.loopexit.i.i.i, label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i

.loopexit.i.i.i:                                  ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !684 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 10
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !22
  %i.bc = zext i8 %i.bb to i32
  br label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i

_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i: ; preds = %.loopexit.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i, %bb.k
  %.pn6.i.i.i.i = phi ptr [ %i.az, %.loopexit.i.i.i ], [ %.sroa.0.0.i6.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i ], [ %.sroa.0.0.i6.i.i.i.i, %bb.k ] ; 2 uses
  %.pn4.i.i.i.i = phi i32 [ %i.bc, %.loopexit.i.i.i ], [ %.sroa.7.0.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i, %bb.k ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !684 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bh = zext i8 %i.bg to i32
  %i.bi = icmp eq ptr %.pn6.i.i.i.i, %i.be
  %i.bj = icmp eq i32 %.pn4.i.i.i.i, %i.bh
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i
  %i.bl = and i32 %.pn4.i.i.i.i, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.pn6.i.i.i.i, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !506
  br label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit

_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit: ; preds = %bb.l, %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i
  %.0.i = phi ptr [ %i.bp, %bb.l ], [ null, %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i ] ; 2 uses
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #42
  unreachable

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit: ; preds = %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit
  %.not39.not = icmp eq ptr %.0.i, null
  br i1 %.not39.not, label %bb.n, label %bb.az

bb.n:                                             ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 3 uses
  call void @_ZN6google8protobuf8internal15ThreadSafeArenaC1EPcm(ptr noundef nonnull align 8 dereferenceable(168) %i.bs, ptr noundef nonnull align 8 dereferenceable(736) %5, i64 noundef 512)
  %i.bt = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef nonnull %i.bs)
          to label %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit unwind label %bb.o

common.resume:                                    ; preds = %bb.ay, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %bb.o ], [ %.pn45, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.bs) #40
  br label %common.resume

_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit: ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 680
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !227
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 688
  store ptr %0, ptr %i.bw, align 8, !tbaa !258
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 696
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !259
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !260
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 720
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !186 ; 3 uses
  store ptr %i.cb, ptr %6, align 8, !tbaa !261
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit unwind label %bb.t

_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit: ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit, %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !263
  %.not40 = icmp eq ptr %i.cd, null
  br i1 %.not40, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit53, label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !114 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56 ; 5 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !73 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %i.cg, ptr %4, align 8, !tbaa !98
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 noundef 32, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc49 unwind label %bb.u

.noexc49:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.cj = icmp ult i64 %i.ch, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i1 noundef zeroext %i.cj, i1 noundef zeroext false)
          to label %.noexc49._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge unwind label %bb.u

.noexc49._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge: ; preds = %.noexc49
  %.pre = load ptr, ptr %i.ce, align 8, !tbaa !114
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit: ; preds = %.noexc49._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge, %bb.q
  %i.ck = phi ptr [ %.pre, %.noexc49._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge ], [ %i.cf, %bb.q ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 5 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !73 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit53, label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr %i.cl, ptr %3, align 8, !tbaa !98
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, i64 noundef 32, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc51 unwind label %bb.u

.noexc51:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.co = icmp ult i64 %i.cm, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, i1 noundef zeroext %i.co, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit53 unwind label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.u:                                             ; preds = %.noexc51, %bb.s, %.noexc49, %bb.r, %bb.af, %bb.ad
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051214MutexLockMaybeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #40
  br label %bb.av

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit53: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit, %.noexc51, %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !114 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 264
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit53
  %.sroa.0.0.in.i.i.i.i.i54 = phi ptr [ %i.ct, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit53 ], [ %i.dp, %bb.y ]
  %.sroa.0.0.i.i.i.i.i55 = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i54, align 8, !tbaa !684 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i55, i64 10
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !22  ; 2 uses
  %.not21.i.i.i.i.i.i.i.i56 = icmp eq i8 %i.cv, 0
  br i1 %.not21.i.i.i.i.i.i.i.i56, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i66, label %.lr.ph.i.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.v
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i55, i64 16
  br label %bb.w

bb.w:                                             ; preds = %.thread17.i.i.i.i.i.i.i.i64, %.lr.ph.i.i.i.i.i.i.i.i57
  %.023.i.i.i.i.i.i.i.i58 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ %i.dk, %.thread17.i.i.i.i.i.i.i.i64 ] ; 3 uses
  %.01022.i.i.i.i.i.i.i.i59 = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ %i.dj, %.thread17.i.i.i.i.i.i.i.i64 ] ; 3 uses
  %i.cy = add i64 %.01022.i.i.i.i.i.i.i.i59, %.023.i.i.i.i.i.i.i.i58
  %i.cz = lshr i64 %i.cy, 1                       ; 5 uses
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !685 ; 2 uses
  %i.dc = icmp ult ptr %i.db, %1
  br i1 %i.dc, label %.thread.i.i.i.i.i.i.i.i79, label %bb.x

.thread.i.i.i.i.i.i.i.i79:                        ; preds = %bb.w
  %i.dd = add nuw i64 %i.cz, 1
  br label %.thread17.i.i.i.i.i.i.i.i64

bb.x:                                             ; preds = %bb.w
  %i.de = icmp ult ptr %1, %i.db
  br i1 %i.de, label %.thread17.i.i.i.i.i.i.i.i64, label %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i60

_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i60: ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !686
  %.fr.i61 = freeze i32 %i.dg
  %i.dh = icmp slt i32 %.fr.i61, %2               ; 2 uses
  %i.di = add nuw i64 %i.cz, 1
  %spec.select.i.i.i.i.i.i.i.i62 = select i1 %i.dh, i64 %.01022.i.i.i.i.i.i.i.i59, i64 %i.cz
  %spec.select20.i.i.i.i.i.i.i.i63 = select i1 %i.dh, i64 %i.di, i64 %.023.i.i.i.i.i.i.i.i58
  br label %.thread17.i.i.i.i.i.i.i.i64

.thread17.i.i.i.i.i.i.i.i64:                      ; preds = %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i60, %bb.x, %.thread.i.i.i.i.i.i.i.i79
  %i.dj = phi i64 [ %i.cz, %bb.x ], [ %spec.select.i.i.i.i.i.i.i.i62, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i60 ], [ %.01022.i.i.i.i.i.i.i.i59, %.thread.i.i.i.i.i.i.i.i79 ] ; 3 uses
  %i.dk = phi i64 [ %.023.i.i.i.i.i.i.i.i58, %bb.x ], [ %spec.select20.i.i.i.i.i.i.i.i63, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i60 ], [ %i.dd, %.thread.i.i.i.i.i.i.i.i79 ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i65 = icmp eq i64 %i.dk, %i.dj
  br i1 %.not.i.i.i.i.i.i.i.i65, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i66, label %bb.w, !llvm.loop !687

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i66: ; preds = %.thread17.i.i.i.i.i.i.i.i64, %bb.v
  %.0.lcssa.i.i.i.i.i.i.i.i67 = phi i64 [ 0, %bb.v ], [ %i.dj, %.thread17.i.i.i.i.i.i.i.i64 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i55, i64 11
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !22
  %.not.i.i.i.i.i68 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i68, label %bb.y, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i69

bb.y:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i66
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i55, i64 256
  %i.do = and i64 %.0.lcssa.i.i.i.i.i.i.i.i67, 255
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  br label %bb.v

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i69: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i66
  %i.dq = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i67 to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i69
  %.sroa.7.0.i.i.i.i.i70 = phi i32 [ %i.dq, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i69 ], [ %i.dx, %bb.aa ] ; 4 uses
  %.sroa.0.0.i6.i.i.i.i71 = phi ptr [ %.sroa.0.0.i.i.i.i.i55, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i69 ], [ %i.dy, %bb.aa ] ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i71, i64 10
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !22
  %i.dt = zext i8 %i.ds to i32
  %i.du = icmp eq i32 %.sroa.7.0.i.i.i.i.i70, %i.dt
  br i1 %i.du, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i71, i64 8
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !22
  %i.dx = zext i8 %i.dw to i32
  %i.dy = load ptr, ptr %.sroa.0.0.i6.i.i.i.i71, align 8, !tbaa !684 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 11
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !22
  %.not.i9.i.i.i.i78 = icmp eq i8 %i.ea, 0
  br i1 %.not.i9.i.i.i.i78, label %bb.z, label %.loopexit.i.i.i77, !llvm.loop !688

bb.ab:                                            ; preds = %bb.z
  %i.eb = sext i32 %.sroa.7.0.i.i.i.i.i70 to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i71, i64 16
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %i.eb ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !685 ; 2 uses
  %i.ef = icmp ult ptr %1, %i.ee
  br i1 %i.ef, label %.loopexit.i.i.i77, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = icmp ult ptr %i.ee, %1
  br i1 %i.eg, label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i73, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i72

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i72: ; preds = %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !686
  %i.ej = icmp slt i32 %2, %i.ei
  br i1 %i.ej, label %.loopexit.i.i.i77, label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i73

.loopexit.i.i.i77:                                ; preds = %bb.aa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i72, %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cs, i64 272
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !684 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 10
  %i.en = load i8, ptr %i.em, align 1, !tbaa !22
  %i.eo = zext i8 %i.en to i32
  br label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i73

_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i73: ; preds = %.loopexit.i.i.i77, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i72, %bb.ac
  %.pn6.i.i.i.i74 = phi ptr [ %i.el, %.loopexit.i.i.i77 ], [ %.sroa.0.0.i6.i.i.i.i71, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i72 ], [ %.sroa.0.0.i6.i.i.i.i71, %bb.ac ] ; 2 uses
  %.pn4.i.i.i.i75 = phi i32 [ %i.eo, %.loopexit.i.i.i77 ], [ %.sroa.7.0.i.i.i.i.i70, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i72 ], [ %.sroa.7.0.i.i.i.i.i70, %bb.ac ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cs, i64 272
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !684 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 10
  %i.es = load i8, ptr %i.er, align 1, !tbaa !22
  %i.et = zext i8 %i.es to i32
  %i.eu = icmp eq ptr %.pn6.i.i.i.i74, %i.eq
  %i.ev = icmp eq i32 %.pn4.i.i.i.i75, %i.et
  %i.ew = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %i.ew, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80.thread, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80

_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80: ; preds = %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i73
  %i.ex = and i32 %.pn4.i.i.i.i75, 255
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %.pn6.i.i.i.i74, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !506 ; 3 uses
  %.not41 = icmp eq ptr %i.fb, null
  br i1 %.not41, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80.thread, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit107

_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80.thread: ; preds = %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i73, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !264 ; 2 uses
  %.not42 = icmp eq ptr %i.fd, null
  br i1 %.not42, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80.thread
  %i.fe = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.fd, ptr noundef nonnull %1, i32 noundef %2)
          to label %bb.ae unwind label %bb.u      ; 3 uses

bb.ae:                                            ; preds = %bb.ad
  %.not43 = icmp eq ptr %i.fe, null
  br i1 %.not43, label %bb.af, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit107

bb.af:                                            ; preds = %bb.ae, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80.thread
  %i.ff = invoke noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool34TryFindExtensionInFallbackDatabaseEPKNS0_10DescriptorEiRNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(736) %5)
          to label %bb.ag unwind label %bb.u

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ff, label %bb.ah, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit107

bb.ah:                                            ; preds = %bb.ag
  %i.fg = load ptr, ptr %i.cr, align 8, !tbaa !114 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 264
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %bb.ah
  %.sroa.0.0.in.i.i.i.i.i81 = phi ptr [ %i.fh, %bb.ah ], [ %i.gd, %bb.al ]
  %.sroa.0.0.i.i.i.i.i82 = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i81, align 8, !tbaa !684 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i82, i64 10
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !22  ; 2 uses
  %.not21.i.i.i.i.i.i.i.i83 = icmp eq i8 %i.fj, 0
  br i1 %.not21.i.i.i.i.i.i.i.i83, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i.i84

.lr.ph.i.i.i.i.i.i.i.i84:                         ; preds = %bb.ai
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i82, i64 16
  br label %bb.aj

bb.aj:                                            ; preds = %.thread17.i.i.i.i.i.i.i.i91, %.lr.ph.i.i.i.i.i.i.i.i84
  %.023.i.i.i.i.i.i.i.i85 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i84 ], [ %i.fy, %.thread17.i.i.i.i.i.i.i.i91 ] ; 3 uses
  %.01022.i.i.i.i.i.i.i.i86 = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.i84 ], [ %i.fx, %.thread17.i.i.i.i.i.i.i.i91 ] ; 3 uses
  %i.fm = add i64 %.01022.i.i.i.i.i.i.i.i86, %.023.i.i.i.i.i.i.i.i85
  %i.fn = lshr i64 %i.fm, 1                       ; 5 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %i.fn ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !685 ; 2 uses
  %i.fq = icmp ult ptr %i.fp, %1
  br i1 %i.fq, label %.thread.i.i.i.i.i.i.i.i106, label %bb.ak

.thread.i.i.i.i.i.i.i.i106:                       ; preds = %bb.aj
  %i.fr = add nuw i64 %i.fn, 1
  br label %.thread17.i.i.i.i.i.i.i.i91

bb.ak:                                            ; preds = %bb.aj
  %i.fs = icmp ult ptr %1, %i.fp
  br i1 %i.fs, label %.thread17.i.i.i.i.i.i.i.i91, label %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i87

_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i87: ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !686
  %.fr.i88 = freeze i32 %i.fu
  %i.fv = icmp slt i32 %.fr.i88, %2               ; 2 uses
  %i.fw = add nuw i64 %i.fn, 1
  %spec.select.i.i.i.i.i.i.i.i89 = select i1 %i.fv, i64 %.01022.i.i.i.i.i.i.i.i86, i64 %i.fn
  %spec.select20.i.i.i.i.i.i.i.i90 = select i1 %i.fv, i64 %i.fw, i64 %.023.i.i.i.i.i.i.i.i85
  br label %.thread17.i.i.i.i.i.i.i.i91

.thread17.i.i.i.i.i.i.i.i91:                      ; preds = %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i87, %bb.ak, %.thread.i.i.i.i.i.i.i.i106
  %i.fx = phi i64 [ %i.fn, %bb.ak ], [ %spec.select.i.i.i.i.i.i.i.i89, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i87 ], [ %.01022.i.i.i.i.i.i.i.i86, %.thread.i.i.i.i.i.i.i.i106 ] ; 3 uses
  %i.fy = phi i64 [ %.023.i.i.i.i.i.i.i.i85, %bb.ak ], [ %spec.select20.i.i.i.i.i.i.i.i90, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i87 ], [ %i.fr, %.thread.i.i.i.i.i.i.i.i106 ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i92 = icmp eq i64 %i.fy, %i.fx
  br i1 %.not.i.i.i.i.i.i.i.i92, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i93, label %bb.aj, !llvm.loop !687

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i93: ; preds = %.thread17.i.i.i.i.i.i.i.i91, %bb.ai
  %.0.lcssa.i.i.i.i.i.i.i.i94 = phi i64 [ 0, %bb.ai ], [ %i.fx, %.thread17.i.i.i.i.i.i.i.i91 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i82, i64 11
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !22
  %.not.i.i.i.i.i95 = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i.i.i95, label %bb.al, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i96

bb.al:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i93
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i82, i64 256
  %i.gc = and i64 %.0.lcssa.i.i.i.i.i.i.i.i94, 255
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gc
  br label %bb.ai

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i96: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i93
  %i.ge = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i94 to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i96
  %.sroa.7.0.i.i.i.i.i97 = phi i32 [ %i.ge, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i96 ], [ %i.gl, %bb.an ] ; 4 uses
  %.sroa.0.0.i6.i.i.i.i98 = phi ptr [ %.sroa.0.0.i.i.i.i.i82, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i96 ], [ %i.gm, %bb.an ] ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i98, i64 10
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !22
  %i.gh = zext i8 %i.gg to i32
  %i.gi = icmp eq i32 %.sroa.7.0.i.i.i.i.i97, %i.gh
  br i1 %i.gi, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i98, i64 8
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !22
  %i.gl = zext i8 %i.gk to i32
  %i.gm = load ptr, ptr %.sroa.0.0.i6.i.i.i.i98, align 8, !tbaa !684 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 11
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !22
  %.not.i9.i.i.i.i105 = icmp eq i8 %i.go, 0
  br i1 %.not.i9.i.i.i.i105, label %bb.am, label %.loopexit.i.i.i104, !llvm.loop !688

bb.ao:                                            ; preds = %bb.am
  %i.gp = sext i32 %.sroa.7.0.i.i.i.i.i97 to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i98, i64 16
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.gp ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !685 ; 2 uses
  %i.gt = icmp ult ptr %1, %i.gs
  br i1 %i.gt, label %.loopexit.i.i.i104, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gu = icmp ult ptr %i.gs, %1
  br i1 %i.gu, label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i100, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i99

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i99: ; preds = %bb.ap
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !686
  %i.gx = icmp slt i32 %2, %i.gw
  br i1 %i.gx, label %.loopexit.i.i.i104, label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i100

.loopexit.i.i.i104:                               ; preds = %bb.an, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i99, %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fg, i64 272
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !684 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 10
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !22
  %i.hc = zext i8 %i.hb to i32
  br label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i100

_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i100: ; preds = %.loopexit.i.i.i104, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i99, %bb.ap
  %.pn6.i.i.i.i101 = phi ptr [ %i.gz, %.loopexit.i.i.i104 ], [ %.sroa.0.0.i6.i.i.i.i98, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i99 ], [ %.sroa.0.0.i6.i.i.i.i98, %bb.ap ] ; 2 uses
  %.pn4.i.i.i.i102 = phi i32 [ %i.hc, %.loopexit.i.i.i104 ], [ %.sroa.7.0.i.i.i.i.i97, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i99 ], [ %.sroa.7.0.i.i.i.i.i97, %bb.ap ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fg, i64 272
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !684 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 10
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !22
  %i.hh = zext i8 %i.hg to i32
  %i.hi = icmp eq ptr %.pn6.i.i.i.i101, %i.he
  %i.hj = icmp eq i32 %.pn4.i.i.i.i102, %i.hh
  %i.hk = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %i.hk, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit107, label %bb.aq

bb.aq:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i100
  %i.hl = and i32 %.pn4.i.i.i.i102, 255
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %.pn6.i.i.i.i101, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !506
  br label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit107

_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit107: ; preds = %bb.aq, %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i100, %bb.ag, %bb.ae, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80
  %.233 = phi ptr [ %i.fe, %bb.ae ], [ %i.fb, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80 ], [ null, %bb.ag ], [ null, %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i100 ], [ null, %bb.aq ]
  %cond = phi i1 [ false, %bb.ae ], [ false, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80 ], [ true, %bb.ag ], [ true, %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i100 ], [ true, %bb.aq ]
  %.2 = phi ptr [ %i.fe, %bb.ae ], [ %i.fb, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit80 ], [ null, %bb.ag ], [ null, %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i100 ], [ %i.hp, %bb.aq ]
  %7 = load ptr, ptr %6, align 8, !tbaa !261      ; 2 uses
  %.not.i108 = icmp eq ptr %7, null
  br i1 %.not.i108, label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit107
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #42
  unreachable

_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit:  ; preds = %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit107, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %cond, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit
  %i.hs = invoke noundef zeroext i1 @_ZN6google8protobuf14DescriptorPool18DeferredValidation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(736) %5)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %.2. = select i1 %i.hs, ptr %.2, ptr null
  br label %bb.ax

bb.av:                                            ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.u ], [ %i.cp, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ay

bb.aw:                                            ; preds = %bb.at
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au, %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit
  %.3 = phi ptr [ %.233, %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit ], [ %.2., %bb.au ]
  call void @_ZN6google8protobuf14DescriptorPool18DeferredValidationD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %.pn45 = phi { ptr, i32 } [ %i.ht, %bb.aw ], [ %.pn, %bb.av ]
  call void @_ZN6google8protobuf14DescriptorPool18DeferredValidationD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %common.resume

bb.az:                                            ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit, %bb.a, %bb.ax
  %.4 = phi ptr [ %.0.i, %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit ], [ %.3, %bb.ax ], [ null, %bb.a ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool34TryFindExtensionInFallbackDatabaseEPKNS0_10DescriptorEiRNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(736) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.e, align 8, !tbaa !271
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.h = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef nonnull %i.g)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !263
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.c, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %i.h, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.l, align 1 ; 3 uses
  %i.m = zext i16 %.0.copyload.i.i.i to i64       ; 3 uses
  %i.n = xor i64 %i.m, -1
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.m, ptr %i.a, align 8, !tbaa !19
  %i.q = icmp ugt i16 %.0.copyload.i.i.i, 15
  br i1 %i.q, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.s, ptr %i.p, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.e
  %i.t = phi ptr [ %i.r, %.noexc.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  switch i16 %.0.copyload.i.i.i, label %bb.g [
    i16 1, label %bb.f
    i16 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.u = load i8, ptr %i.o, align 1, !tbaa !22
  store i8 %i.u, ptr %i.t, align 1, !tbaa !22
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.o, i64 %i.m, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !23
  %i.x = load ptr, ptr %4, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.z = load ptr, ptr %4, align 8, !tbaa !20
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !23
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !274
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 %i.aa, ptr %i.z, i32 noundef %2, ptr noundef nonnull %.0.i)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.p
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br i1 %i.ae, label %bb.k, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.p
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.j
  %i.am = load i64, ptr %i.p, align 8, !tbaa !22
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %i.aj

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 152
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !276
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, -4
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !23
  %i.ay = call noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.ap, i64 %i.ax, ptr %i.av)
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = call noundef ptr @_ZNK6google8protobuf14DescriptorPool21BuildFileFromDatabaseERKNS0_19FileDescriptorProtoERNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(200) %.0.i, ptr noundef nonnull align 8 dereferenceable(736) %3)
  %i.ba = icmp ne ptr %i.az, null
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k, %bb.l, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.k ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ba, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6google8protobuf14DescriptorPool35InternalFindExtensionByNumberNoLockEPKNS0_10DescriptorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !683
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 264
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf14DescriptorPool28FindExtensionByPrintableNameEPKNS0_10DescriptorESt17basic_string_viewIcSt11char_traitsIcEE
define noundef ptr @_ZNK6google8protobuf14DescriptorPool28FindExtensionByPrintableNameEPKNS0_10DescriptorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(address) %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !683
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread55, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.f = tail call ptr @_ZN6google8protobuf14DescriptorPool6Tables16FindByNameHelperEPKS1_St17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %2, ptr %3) ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !135
  %.not.i = icmp eq i8 %i.g, 2
  br i1 %.not.i, label %bb.c, label %_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 8
  %.not11.i = icmp eq i8 %i.j, 0
  br i1 %.not11.i, label %_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !430
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %.thread55, label %_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.c, %bb.b, %_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !689
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load i8, ptr %i.p, align 8, !tbaa !22, !range !49, !noundef !51
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %.thread55

bb.d:                                             ; preds = %_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.t = tail call ptr @_ZN6google8protobuf14DescriptorPool6Tables16FindByNameHelperEPKS1_St17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.s, ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %2, ptr %3), !inline_history !318 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !135
  %.not = icmp eq i8 %i.u, 1
  br i1 %.not, label %bb.e, label %.thread55

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 148
  %i.w = load i32, ptr %i.v, align 4, !tbaa !690  ; 2 uses
  %.not4061 = icmp sgt i32 %i.w, 0
  br i1 %.not4061, label %.lr.ph, label %.thread55

.lr.ph:                                           ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !691
  %i.z = getelementptr inbounds nuw [88 x i8], ptr %i.y, i64 %indvars.iv ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !430
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !692
  %i.af = icmp eq i8 %i.ae, 11
  br i1 %i.af, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !693
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !22
  %i.ak = icmp eq i32 %i.aj, 3
  br i1 %i.ak, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 32
  %.not60 = icmp eq i8 %i.an, 0
  br i1 %.not60, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !694 ; 6 uses
  %.not.i41 = icmp eq ptr %i.ap, null
  br i1 %.not.i41, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i32, ptr %i.ap acquire, align 4
  %.not.i.i = icmp eq i32 %i.aq, 221
  br i1 %.not.i.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.l, !prof !322

bb.l:                                             ; preds = %bb.k
  %i.ar = cmpxchg ptr %i.ap, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.as = extractvalue { i32, i1 } %i.ar, 1
  br i1 %i.as, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i: ; preds = %bb.l
  %i.at = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.ap, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1), !inline_history !695
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, %bb.l
  tail call void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %i.z), !inline_history !696
  %i.av = atomicrmw xchg ptr %i.ap, i32 221 release, align 4
  %i.aw = icmp eq i32 %i.av, 94570706
  br i1 %i.aw, label %bb.m, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

bb.m:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i
  tail call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.ap, i1 noundef zeroext true), !inline_history !695
  br label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i: ; preds = %bb.m, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, %bb.k, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = icmp eq ptr %i.ay, %i.t
  br i1 %i.az, label %.thread55, label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread55, label %bb.f, !llvm.loop !697

.thread55:                                        ; preds = %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, %bb.n, %bb.e, %bb.d, %_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.a
  %.6 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.f, %_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ null, %_ZNK6google8protobuf14DescriptorPool19FindExtensionByNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ null, %bb.e ], [ %i.z, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i ], [ null, %bb.n ]
  ret ptr %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor11is_requiredEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !693
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = icmp eq i32 %i.d, 3
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2, !tbaa !692
  %i.c = and i8 %i.b, -2
  %switch = icmp eq i8 %i.c, 10
  br i1 %switch, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !694  ; 6 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic i32, ptr %i.e acquire, align 4
  %.not.i = icmp eq i32 %i.f, 221
  br i1 %.not.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit, label %bb.d, !prof !322

bb.d:                                             ; preds = %bb.c
  %i.g = cmpxchg ptr %i.e, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.d
  %i.i = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i, %bb.d
  tail call void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %0), !inline_history !698
  %i.k = atomicrmw xchg ptr %i.e, i32 221 release, align 4
  %i.l = icmp eq i32 %i.k, 94570706
  br i1 %i.l, label %bb.e, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i
  tail call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext true)
  br label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit: ; preds = %bb.c, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, %bb.e, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit
  %.0 = phi ptr [ %i.n, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf14DescriptorPool17FindAllExtensionsEPKNS0_10DescriptorEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.anon.694, align 8            ; 4 uses
  %4 = alloca %class.anon.694, align 8            ; 4 uses
  %5 = alloca %"class.google::protobuf::DescriptorPool::DeferredValidation", align 8 ; 14 uses
  %6 = alloca %"class.std::vector.226", align 8   ; 12 uses
  %7 = alloca %"class.absl::lts_20250512::MutexLockMaybe", align 8 ; 6 uses
  %8 = alloca %"class.std::vector.195", align 8   ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 3 uses
  call void @_ZN6google8protobuf8internal15ThreadSafeArenaC1EPcm(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(736) %5, i64 noundef 512)
  %i.c = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef nonnull %i.b)
          to label %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit47, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn22.pn.pn.pn, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit47 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.b) #40
  br label %common.resume

_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 680
  store ptr %i.c, ptr %i.e, align 8, !tbaa !227
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 688
  store ptr %0, ptr %i.f, align 8, !tbaa !258
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 696
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !259
  store ptr %i.i, ptr %i.g, align 8, !tbaa !260
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 720
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !186  ; 3 uses
  store ptr %i.l, ptr %7, align 8, !tbaa !261
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit unwind label %bb.g

_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit: ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidationC2EPKS1_.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !263
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %i.q, ptr %4, align 8, !tbaa !98
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 32, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc27 unwind label %bb.h

.noexc27:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.t = icmp ult i64 %i.r, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i1 noundef zeroext %i.t, i1 noundef zeroext false)
          to label %.noexc27._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge unwind label %bb.h

.noexc27._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge: ; preds = %.noexc27
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !114
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit: ; preds = %.noexc27._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge, %bb.d
  %i.u = phi ptr [ %.pre, %.noexc27._ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit_crit_edge ], [ %i.p, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !73   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr %i.v, ptr %3, align 8, !tbaa !98
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef 32, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.y = icmp ult i64 %i.w, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i1 noundef zeroext %i.y, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31 unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.h:                                             ; preds = %.noexc29, %bb.f, %.noexc27, %bb.e, %bb.au, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31.thread
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit, %.noexc29
  %.pr = load ptr, ptr %i.m, align 8, !tbaa !263  ; 3 uses
  %.not18 = icmp eq ptr %.pr, null
  br i1 %.not18, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !114 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !73 ; 4 uses
  %i.ae = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp ult i64 %i.ad, 2
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp ult i64 %i.ah, 131072
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !699
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31.thread, label %.thread

bb.l:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !22 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.am, i32 0, i32 1, i32 1)
  %i.an = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ao = xor i64 %i.an, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ap = mul i64 %i.ao, -2543921745674291987
  %i.aq = call noundef i64 @llvm.bswap.i64(i64 %i.ap)
  %i.ar = xor i64 %i.aq, %i.an
  %i.as = mul i64 %i.ar, -2543921745674291987
  %i.at = call noundef i64 @llvm.bswap.i64(i64 %i.as) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.av = load i64, ptr %i.au, align 8, !tbaa !79, !noalias !700
  %i.aw = and i64 %i.av, 65535
  %i.ax = lshr i64 %i.at, 7
  %i.ay = xor i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.at to i8
  %i.ba = and i8 %i.az, 127
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 2 uses
  %i.bc = insertelement <16 x i8> poison, i8 %i.ba, i64 0
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.pn.i6.i.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.bv, %bb.o ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bu, %bb.o ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.ad ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.be, i32 0, i32 3, i32 1)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.6.0.i.i.i.i
  %i.bg = load <16 x i8>, ptr %i.bf, align 1, !tbaa !22 ; 2 uses
  %i.bh = icmp eq <16 x i8> %i.bd, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.br, %bb.n ], [ %i.bi, %bb.m ] ; 3 uses
  %i.bj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.6.0.i.i.i.i, %i.bk
  %i.bm = and i64 %i.bl, %i.ad
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !699
  %i.bp = icmp eq ptr %i.bo, %1
  br i1 %i.bp, label %bb.p, label %bb.n, !prof !322

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bq = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.br = and i16 %i.bq, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.n, %bb.m
  %i.bs = icmp eq <16 x i8> %i.bg, splat (i8 -128)
  %i.bt = bitcast <16 x i1> %i.bs to i16
  %.not43.i.i.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not43.i.i.i.i, label %bb.o, label %.thread, !prof !163

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bu = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.bv = add i64 %i.bu, %.sroa.6.0.i.i.i.i
  br label %bb.m, !llvm.loop !703

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %.not121 = icmp eq ptr %i.am, null
  br i1 %.not121, label %.thread, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31.thread

.thread:                                          ; preds = %._crit_edge.i.i.i.i, %bb.k, %bb.j, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !137 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.by, align 1 ; 3 uses
  %i.bz = zext i16 %.0.copyload.i.i.i to i64      ; 3 uses
  %i.ca = xor i64 %i.bz, -1
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.cc, ptr %9, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !19
  %i.cd = icmp ugt i16 %.0.copyload.i.i.i, 15
  br i1 %i.cd, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i32

.noexc.i.i.i:                                     ; preds = %.thread
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc34 unwind label %bb.ad  ; 2 uses

.noexc34:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ce, ptr %9, align 8, !tbaa !20
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.cf, ptr %i.cc, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i32

._crit_edge.i.i.i.i32:                            ; preds = %.noexc34, %.thread
  %i.cg = phi ptr [ %i.ce, %.noexc34 ], [ %i.cc, %.thread ] ; 2 uses
  switch i16 %.0.copyload.i.i.i, label %bb.r [
    i16 1, label %bb.q
    i16 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i32
  %i.ch = load i8, ptr %i.cb, align 1, !tbaa !22
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !22
  br label %bb.s

end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf14DescriptorPool17FindAllExtensionsEPKNS0_10DescriptorEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE:bb.a
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !22  ; 2 uses
  %.not21.i.i.i.i.i.i.i.i = icmp eq i8 %i.ge, 0
  br i1 %.not21.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.af
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %.thread17.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.023.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gt, %.thread17.i.i.i.i.i.i.i.i ] ; 3 uses
  %.01022.i.i.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gs, %.thread17.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gh = add i64 %.01022.i.i.i.i.i.i.i.i, %.023.i.i.i.i.i.i.i.i
  %i.gi = lshr i64 %i.gh, 1                       ; 5 uses
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.gi ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !685 ; 2 uses
  %i.gl = icmp ult ptr %i.gk, %1
  br i1 %i.gl, label %.thread.i.i.i.i.i.i.i.i, label %bb.ah

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.ag
  %i.gm = add nuw i64 %i.gi, 1
  br label %.thread17.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.gn = icmp ult ptr %1, %i.gk
  br i1 %i.gn, label %.thread17.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !686
  %.fr.i = freeze i32 %i.gp
  %i.gq = icmp slt i32 %.fr.i, %i.ga              ; 2 uses
  %i.gr = add nuw i64 %i.gi, 1
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.gq, i64 %.01022.i.i.i.i.i.i.i.i, i64 %i.gi
  %spec.select20.i.i.i.i.i.i.i.i = select i1 %i.gq, i64 %i.gr, i64 %.023.i.i.i.i.i.i.i.i
  br label %.thread17.i.i.i.i.i.i.i.i

.thread17.i.i.i.i.i.i.i.i:                        ; preds = %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i, %bb.ah, %.thread.i.i.i.i.i.i.i.i
  %i.gs = phi i64 [ %i.gi, %bb.ah ], [ %spec.select.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i ], [ %.01022.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gt = phi i64 [ %.023.i.i.i.i.i.i.i.i, %bb.ah ], [ %spec.select20.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i.i ], [ %i.gm, %.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gt, %i.gs
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i, label %bb.ag, !llvm.loop !687

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i: ; preds = %.thread17.i.i.i.i.i.i.i.i, %bb.af
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.af ], [ %i.gs, %.thread17.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 11
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !22
  %.not.i.i.i.i.i40 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i.i.i40, label %bb.ai, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i

bb.ai:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 256
  %i.gx = and i64 %.0.lcssa.i.i.i.i.i.i.i.i, 255
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gx
  br label %bb.af

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i.i
  %i.gz = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i.i = phi i32 [ %i.gz, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i ], [ %i.hg, %bb.ak ] ; 4 uses
  %.sroa.0.0.i6.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i.i ], [ %i.hh, %bb.ak ] ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i, i64 10
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !22
  %i.hc = zext i8 %i.hb to i32
  %i.hd = icmp eq i32 %.sroa.7.0.i.i.i.i.i, %i.hc
  br i1 %i.hd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i, i64 8
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !22
  %i.hg = zext i8 %i.hf to i32
  %i.hh = load ptr, ptr %.sroa.0.0.i6.i.i.i.i, align 8, !tbaa !684 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 11
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !22
  %.not.i9.i.i.i.i = icmp eq i8 %i.hj, 0
  br i1 %.not.i9.i.i.i.i, label %bb.aj, label %.loopexit.i.i.i, !llvm.loop !688

bb.al:                                            ; preds = %bb.aj
  %i.hk = sext i32 %.sroa.7.0.i.i.i.i.i to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i, i64 16
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %i.hk ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !685 ; 2 uses
  %i.ho = icmp ult ptr %1, %i.hn
  br i1 %i.ho, label %.loopexit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hp = icmp ult ptr %i.hn, %1
  br i1 %i.hp, label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i: ; preds = %bb.am
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !686
  %i.hs = icmp slt i32 %i.ga, %i.hr
  br i1 %i.hs, label %.loopexit.i.i.i, label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i

.loopexit.i.i.i:                                  ; preds = %bb.ak, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i, %bb.al
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gb, i64 272
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !684 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 10
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !22
  %i.hx = zext i8 %i.hw to i32
  br label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i

_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i: ; preds = %.loopexit.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i, %bb.am
  %.pn6.i.i.i.i = phi ptr [ %i.hu, %.loopexit.i.i.i ], [ %.sroa.0.0.i6.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i ], [ %.sroa.0.0.i6.i.i.i.i, %bb.am ] ; 2 uses
  %.pn4.i.i.i.i = phi i32 [ %i.hx, %.loopexit.i.i.i ], [ %.sroa.7.0.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12compare_keysISA_SA_EEbRKT_RKT0_.exit.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gb, i64 272
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !684 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 10
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !22
  %i.ic = zext i8 %i.ib to i32
  %i.id = icmp eq ptr %.pn6.i.i.i.i, %i.hz
  %i.ie = icmp eq i32 %.pn4.i.i.i.i, %i.ic
  %i.if = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %i.if, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit.thread, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit

_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit: ; preds = %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i
  %i.ig = and i32 %.pn4.i.i.i.i, 255
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %.pn6.i.i.i.i, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !506
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit.thread, label %bb.ao

_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit.thread: ; preds = %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE4findISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit.i, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit
  %i.im = invoke noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool34TryFindExtensionInFallbackDatabaseEPKNS0_10DescriptorEiRNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i32 noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(736) %5)
          to label %bb.ao unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit.thread
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit.thread, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.053.080, i64 4 ; 2 uses
  %.not73 = icmp eq ptr %i.io, %i.cy
  br i1 %.not73, label %._crit_edge, label %.lr.ph

bb.ap:                                            ; preds = %.thread.i, %bb.y
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.x, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.iq = load ptr, ptr %8, align 8, !tbaa !728   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !730
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iv) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31.thread

bb.ar:                                            ; preds = %bb.ap, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn22 = phi { ptr, i32 } [ %i.in, %bb.an ], [ %i.ip, %bb.ap ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  %i.iw = load ptr, ptr %8, align 8, !tbaa !728   ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIiSaIiEED2Ev.exit42, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !730
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.iw to i64
  %i.jb = sub i64 %i.iz, %i.ja
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.jb) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit42

_ZNSt6vectorIiSaIiEED2Ev.exit42:                  ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.ba

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31.thread: ; preds = %bb.k, %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.p, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !114
  invoke void @_ZNK6google8protobuf14DescriptorPool6Tables17FindAllExtensionsEPKNS0_10DescriptorEPSt6vectorIPKNS0_15FieldDescriptorESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(416) %i.jd, ptr noundef %1, ptr noundef nonnull %6)
          to label %bb.at unwind label %bb.h

bb.at:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit31.thread
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !264 ; 2 uses
  %.not21 = icmp eq ptr %i.jf, null
  br i1 %.not21, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNK6google8protobuf14DescriptorPool17FindAllExtensionsEPKNS0_10DescriptorEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(120) %i.jf, ptr noundef %1, ptr noundef nonnull %6)
          to label %bb.av unwind label %bb.h

bb.av:                                            ; preds = %bb.au, %bb.at
  %10 = load ptr, ptr %7, align 8, !tbaa !261     ; 2 uses
  %.not.i43 = icmp eq ptr %10, null
  br i1 %.not.i43, label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #42
  unreachable

_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit:  ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.ji = invoke noundef zeroext i1 @_ZN6google8protobuf14DescriptorPool18DeferredValidation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(736) %5)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit
  br i1 %i.ji, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !731
  %i.jl = load ptr, ptr %6, align 8, !tbaa !731
  %i.jm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !731
  %i.jo = load ptr, ptr %2, align 8, !tbaa !731   ; 2 uses
  %i.jp = ptrtoint ptr %i.jk to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = getelementptr inbounds i8, ptr %i.jo, i64 %i.jr
  invoke void @_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.js, ptr %i.jl, ptr %i.jn)
          to label %bb.be unwind label %bb.bd

bb.ba:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit42, %bb.h
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZNSt6vectorIiSaIiEED2Ev.exit42 ], [ %i.aa, %bb.h ]
  call void @_ZN4absl12lts_2025051214MutexLockMaybeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #40
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.g
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %bb.ba ], [ %i.z, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.bg

bb.bc:                                            ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %bb.az
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.be:                                            ; preds = %bb.az, %bb.ay
  %i.jv = load ptr, ptr %6, align 8, !tbaa !733   ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !735
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #41
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @_ZN6google8protobuf14DescriptorPool18DeferredValidationD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret void

bb.bg:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %bb.bb ], [ %i.ju, %bb.bd ], [ %i.jt, %bb.bc ]
  %i.kb = load ptr, ptr %6, align 8, !tbaa !733   ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit47, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !735
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kg) #41
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit47

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit47: ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @_ZN6google8protobuf14DescriptorPool18DeferredValidationD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf14DescriptorPool6Tables17FindAllExtensionsEPKNS0_10DescriptorEPSt6vectorIPKNS0_15FieldDescriptorESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.0.0.in.i.i.i.i = phi ptr [ %i.a, %bb.a ], [ %i.w, %bb.e ]
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i, align 8, !tbaa !684 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 10
  %i.c = load i8, ptr %i.b, align 1, !tbaa !22    ; 2 uses
  %.not21.i.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not21.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.thread17.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.023.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %.thread17.i.i.i.i.i.i.i ] ; 3 uses
  %.01022.i.i.i.i.i.i.i = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.i.i ], [ %i.q, %.thread17.i.i.i.i.i.i.i ] ; 3 uses
  %i.f = add i64 %.01022.i.i.i.i.i.i.i, %.023.i.i.i.i.i.i.i
  %i.g = lshr i64 %i.f, 1                         ; 5 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !685  ; 2 uses
  %i.j = icmp ult ptr %i.i, %1
  br i1 %i.j, label %.thread.i.i.i.i.i.i.i, label %bb.d

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.c
  %i.k = add nuw i64 %i.g, 1
  br label %.thread17.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult ptr %1, %i.i
  br i1 %i.l, label %.thread17.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !686
  %.fr = freeze i32 %i.n
  %i.o = icmp slt i32 %.fr, 0                     ; 2 uses
  %i.p = add nuw i64 %i.g, 1
  %spec.select.i.i.i.i.i.i.i = select i1 %i.o, i64 %.01022.i.i.i.i.i.i.i, i64 %i.g
  %spec.select20.i.i.i.i.i.i.i = select i1 %i.o, i64 %i.p, i64 %.023.i.i.i.i.i.i.i
  br label %.thread17.i.i.i.i.i.i.i

.thread17.i.i.i.i.i.i.i:                          ; preds = %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i, %bb.d, %.thread.i.i.i.i.i.i.i
  %i.q = phi i64 [ %i.g, %bb.d ], [ %spec.select.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i ], [ %.01022.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = phi i64 [ %.023.i.i.i.i.i.i.i, %bb.d ], [ %spec.select20.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i.i ], [ %i.k, %.thread.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.r, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i, label %bb.c, !llvm.loop !687

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i: ; preds = %.thread17.i.i.i.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.q, %.thread17.i.i.i.i.i.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 11
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i

bb.e:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 256
  %i.v = and i64 %.0.lcssa.i.i.i.i.i.i.i, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  br label %bb.b

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i.i
  %i.x = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i
  %.sroa.7.0.i.i.i.i = phi i32 [ %i.x, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i ], [ %i.ae, %bb.g ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i.i ], [ %i.af, %bb.g ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = zext i8 %i.z to i32
  %i.ab = icmp eq i32 %.sroa.7.0.i.i.i.i, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE11lower_boundISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i, i64 8
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !22
  %i.ae = zext i8 %i.ad to i32
  %i.af = load ptr, ptr %.sroa.0.0.i8.i.i.i, align 8, !tbaa !684 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %.not.i11.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i11.i.i.i, label %bb.f, label %.critedge, !llvm.loop !688

_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE11lower_boundISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !684 ; 2 uses
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %.pre, i64 10
  %.pre36 = load i8, ptr %.phi.trans.insert35, align 1, !tbaa !22
  %.pre37 = zext i8 %.pre36 to i32
  %i.ai = icmp ne ptr %.sroa.0.0.i8.i.i.i, %.pre
  %i.aj = icmp ne i32 %.sroa.7.0.i.i.i.i, %.pre37
  %i.ak = select i1 %i.ai, i1 true, i1 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 272
  br i1 %i.ak, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEEE11lower_boundISB_EENS1_14btree_iteratorIKNS1_10btree_nodeISK_EERKSI_PSS_EERSH_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERKSI_PSN_EppEv.exit
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !735
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !737  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !322

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !737
  br label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !337
  store ptr %i.u, ptr %i.h, align 8, !tbaa !337
  br label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit

_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !737
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !322

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !337
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !337
  br label %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !322

bb.k:                                             ; preds = %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %2, align 8, !tbaa !337
  store ptr %i.ag, ptr %1, align 8, !tbaa !337
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !322

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !737
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !337
  store ptr %i.an, ptr %i.h, align 8, !tbaa !337
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !737
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !322

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !737
  br label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %1, align 8, !tbaa !337
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !337
  br label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51

_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !737
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !322

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load ptr, ptr %2, align 8, !tbaa !337
  store ptr %i.ax, ptr %1, align 8, !tbaa !337
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !733   ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.327) #44
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #45
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !322

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !337
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !337
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !322

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %2, align 8, !tbaa !337
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !337
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !322

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load ptr, ptr %1, align 8, !tbaa !337
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !337
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #41
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !733
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !737
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !735
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 72)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @_ZN6google8protobuf10FeatureSetC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef %0)
  ret ptr %i.c
}

declare void @_ZN6google8protobuf10FeatureSetC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooISt17basic_string_viewIcS7_EEESt4pairINSE_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.245") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !19 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79, !noalias !2480
  %i.h = and i64 %i.g, 65535
  %i.i = load i64, ptr %1, align 8, !tbaa !73, !noalias !2480 ; 3 uses
  %i.j = lshr i64 %i.e, 7
  %i.k = xor i64 %i.h, %i.j
  %i.l = trunc i64 %i.e to i8
  %i.m = and i8 %i.l, 127
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !22 ; 2 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.k, %bb.a ], [ %i.au, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.i                 ; 5 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !22 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.q, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.w, 0
  br i1 %.not60, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.035.061 = phi i16 [ %i.ai, %.critedge ], [ %i.w, %bb.b ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.061, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.7.0, %i.y
  %i.aa = and i64 %i.z, %i.i                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.aa ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.af = icmp eq i64 %i.ae, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.af, label %bb.c, label %.critedge, !prof !162

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.r, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ac, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i)
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ag, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.ah = add i16 %.sroa.035.061, -1
  %i.ai = and i16 %i.ah, %.sroa.035.061           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not53 = icmp eq i16 %i.ak, 0
  br i1 %.not53, label %bb.d, label %.thread, !prof !163

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.i
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !22, !nonnull !51, !noundef !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i24 = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i24, i64 %i.ap
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink77 = phi ptr [ %i.as, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink77, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !557    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !3
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d, !prof !163

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45
  br label %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5

_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5: ; preds = %bb.c, %bb.d
  %.sink6.i.i.i.i.i4 = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i4, i64 16 ; 2 uses
  store ptr %i.g, ptr %.sink6.i.i.i.i.i4, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i4, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !23
  store i8 0, ptr %i.g, align 8, !tbaa !22
  store ptr %.sink6.i.i.i.i.i4, ptr %0, align 8, !tbaa !323
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.prefetch.p0(ptr nonnull %i.a, i32 0, i32 3, i32 1)
  %i.i = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
end_hunk_3
