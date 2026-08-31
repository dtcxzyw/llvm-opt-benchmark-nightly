Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/entropy_pool_test?download=true
inline.NumInlined: 951
inline.NumDeleted: 551
begin_hunk_0_@_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci:bb.a
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.35, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.36, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !9
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !11
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 533)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.35, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.38, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !9
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !11
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %2 = alloca %"class.std::unique_ptr.39", align 8 ; 6 uses
  %3 = alloca %"class.std::unique_ptr.39", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.std::vector", align 8       ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::Mutex", align 8 ; 6 uses
  %6 = alloca %"class.std::vector.6", align 8     ; 10 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.absl::lts_20260526::flat_hash_set", align 8 ; 25 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 12, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 0, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"
  %i.h = load ptr, ptr %6, align 8, !tbaa !25     ; 6 uses
  %.not114 = icmp eq ptr %i.h, %i.bu
  br i1 %.not114, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph

bb.c:                                             ; preds = %bb.a, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"
  %i.i = phi ptr [ null, %bb.a ], [ %i.bu, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit" ] ; 6 uses
  %.014113 = phi i32 [ 0, %bb.a ], [ %i.bv, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit" ]
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %i.i, align 8, !tbaa !29
  %i.k = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc unwind label %.loopexit ; 4 uses

.noexc:                                           ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEEEEE", i64 16), ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !31
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !33
  store ptr %i.k, ptr %3, align 8, !tbaa !35
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 %3, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %3, align 8, !tbaa !35     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %"_ZNSt6threadC2IZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #21, !inline_history !37
  br label %"_ZNSt6threadC2IZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i"

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !35     ; 3 uses
  %.not.i5.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i5.i.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i: ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #21, !inline_history !37
  br label %.body

"_ZNSt6threadC2IZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.f, align 8, !tbaa !38
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"

bb.g:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %6, align 8, !tbaa !39     ; 10 uses
  %i.y = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i3.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i3.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #24
          to label %.noexc41 unwind label %.loopexit ; 11 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %i.aj, align 8, !tbaa !29
  %i.ak = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc.i.i unwind label %bb.m ; 4 uses

.noexc.i.i:                                       ; preds = %.noexc41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEEEEE", i64 16), ptr %i.ak, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %5, ptr %i.al, align 8, !tbaa !31
  %.sroa.6.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %4, ptr %.sroa.6.0..sroa_idx90, align 8, !tbaa !33
  store ptr %i.ak, ptr %2, align 8, !tbaa !35
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc.i.i
  %i.am = load ptr, ptr %2, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i: ; preds = %bb.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #21, !inline_history !40
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !35    ; 3 uses
  %.not.i5.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i5.i.i.i, label %bb.o, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i: ; preds = %bb.j
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #21, !inline_history !40
  br label %bb.o

bb.k:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.k
  %i.av = add i64 %i.y, -8
  %i.aw = sub i64 %i.av, %i.z                     ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  %i.az = add i64 %i.y, -8
  %i.ba = sub i64 %i.az, %i.z
  %i.bb = and i64 %i.ba, -8                       ; 2 uses
  %scevgep209 = getelementptr i8, ptr %scevgep, i64 %i.bb
  %scevgep210 = getelementptr i8, ptr %i.x, i64 8
  %scevgep211 = getelementptr i8, ptr %scevgep210, i64 %i.bb
  %bound0 = icmp ult ptr %i.ai, %scevgep211
  %bound1 = icmp ult ptr %i.x, %scevgep209
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ai, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.x, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.bf ; 2 uses
  %next.gep212 = getelementptr i8, ptr %i.x, i64 %i.bf ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.bg = getelementptr i8, ptr %next.gep212, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep212, align 8, !tbaa !46, !alias.scope !47, !noalias !41
  %wide.load213 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !46, !alias.scope !47, !noalias !41
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !46, !alias.scope !50, !noalias !47
  store <2 x i64> %wide.load213, ptr %i.bh, align 8, !tbaa !46, !alias.scope !50, !noalias !47
  store <2 x i64> zeroinitializer, ptr %next.gep212, align 8, !tbaa !46, !alias.scope !47, !noalias !41
  store <2 x i64> zeroinitializer, ptr %i.bg, align 8, !tbaa !46, !alias.scope !47, !noalias !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEv:bb.a
  %.05.i.i.i = phi ptr [ %i.bw, %bb.r ], [ %i.h, %bb.w ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !46
  %.not.i.i.i.i.i42 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i42, label %bb.r, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #22
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.r, %bb.b
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.h to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ca) #23
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.cd = load ptr, ptr %4, align 8, !tbaa !62
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 24                ; 2 uses
  store i64 %i.ch, ptr %i.b, align 8, !tbaa !46
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !22, !noalias !63
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp eq i64 %i.ch, %i.cj
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

bb.v:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

.lr.ph:                                           ; preds = %bb.b, %bb.w
  %.sroa.085.0115 = phi ptr [ %i.cl, %bb.w ], [ %i.h, %bb.b ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.085.0115)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.085.0115, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cl, %i.bu
  br i1 %.not, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, label %.lr.ph

bb.x:                                             ; preds = %.lr.ph
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.cn = load i8, ptr %7, align 8, !tbaa !68, !range !78, !noundef !79
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.ai, label %bb.z

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i, %bb.f, %bb.x
  %.pn37 = phi { ptr, i32 } [ %i.cm, %bb.x ], [ %i.bo, %bb.n ], [ %i.q, %bb.f ], [ %i.q, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bo

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ak

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !81
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ab, %bb.aa
  %i.ct = phi ptr [ %i.cs, %bb.ab ], [ @.str.13, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 54, ptr noundef %i.ct)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.cu = load ptr, ptr %8, align 8, !tbaa !85    ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i46, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ad
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #21, !inline_history !87
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit49

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.da, %bb.ag ], [ %i.cz, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.db = load ptr, ptr %8, align 8, !tbaa !85    ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.db, null
  br i1 %.not.i.i47, label %_ZN7testing7MessageD2Ev.exit49, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.ah
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(128) %i.db) #21, !inline_history !87
  br label %_ZN7testing7MessageD2Ev.exit49

_ZN7testing7MessageD2Ev.exit49:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48, %bb.ah, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.ae ], [ %.pn, %bb.ah ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #21
  br label %bb.ak

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !80 ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i50, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !81 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aj
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !88
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 32) #23
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store i64 1, ptr %10, align 8
  %i.dm = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.dn = load ptr, ptr %i.cb, align 8, !tbaa !89 ; 2 uses
  %.not103121 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not103121, label %._crit_edge125.thread, label %.lr.ph124

._crit_edge125.thread:                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i64 0, ptr %i.d, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i64 -1, ptr %i.e, align 8, !tbaa !46
  br label %bb.av

.lr.ph124:                                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.al

bb.ak:                                            ; preds = %_ZN7testing7MessageD2Ev.exit49, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit49 ], [ %i.cp, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bo

bb.al:                                            ; preds = %.lr.ph124, %._crit_edge120
  %.pre135 = phi i64 [ 1, %.lr.ph124 ], [ %.pre135138, %._crit_edge120 ] ; 3 uses
  %i.dr = phi i64 [ 1, %.lr.ph124 ], [ %i.ea, %._crit_edge120 ]
  %.0123 = phi i64 [ 0, %.lr.ph124 ], [ %i.dz, %._crit_edge120 ]
  %.sroa.081.0122 = phi ptr [ %i.dm, %.lr.ph124 ], [ %i.eb, %._crit_edge120 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.081.0122, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !90 ; 3 uses
  %i.du = load ptr, ptr %.sroa.081.0122, align 8, !tbaa !93 ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 2
  %i.dz = add i64 %i.dy, %.0123                   ; 2 uses
  %.not104116 = icmp eq ptr %i.du, %i.dt
  br i1 %.not104116, label %._crit_edge120, label %.lr.ph119

._crit_edge120:                                   ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit, %bb.al
  %.pre135138 = phi i64 [ %.pre135, %bb.al ], [ %.pre135139, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit ]
  %i.ea = phi i64 [ %i.dr, %bb.al ], [ %i.ga, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.081.0122, i64 24 ; 2 uses
  %.not103 = icmp eq ptr %i.eb, %i.dn
  br i1 %.not103, label %._crit_edge125, label %bb.al

.lr.ph119:                                        ; preds = %bb.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit
  %.pre135136 = phi i64 [ %.pre135139, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit ], [ %.pre135, %bb.al ] ; 2 uses
  %i.ec = phi i64 [ %i.ga, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit ], [ %.pre135, %bb.al ] ; 8 uses
  %.sroa.077.0117 = phi ptr [ %i.gb, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit ], [ %i.du, %bb.al ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.ed = load i32, ptr %.sroa.077.0117, align 4, !tbaa !22 ; 4 uses
  store i32 %i.ed, ptr %i.c, align 4, !tbaa !22
  %i.ee = and i64 %i.ec, 254
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.lr.ph119
  %i.eg = icmp ult i64 %i.ec, 562949953552384
  call void @llvm.assume(i1 %i.eg)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.ec, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i, label %bb.an

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.eh = or i64 %i.ec, 131328
  store i64 %i.eh, ptr %10, align 8, !noalias !94
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.an:                                            ; preds = %bb.am
  %i.ei = load i32, ptr %14, align 8, !tbaa !22, !noalias !94
  %i.ej = icmp eq i32 %i.ei, %i.ed
  br i1 %i.ej, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21, !noalias !94
  store ptr %10, ptr %1, align 8, !tbaa !113, !noalias !94
  store ptr %i.c, ptr %i.dq, align 8, !tbaa !115, !noalias !94
  %i.ek = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIjEEjLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc51 unwind label %bb.at

.noexc51:                                         ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !94
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %14, align 8, !tbaa !88, !noalias !94, !nonnull !79, !noundef !79 ; 2 uses
  %15 = load i64, ptr %10, align 8, !noalias !94
  %16 = and i64 %15, 255
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %16 ; 2 uses
  %17 = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -3
  %18 = sub i64 15, %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %19 = select i1 %17, i64 0, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %19
  %21 = icmp ule ptr %20, %10
  %22 = icmp ule ptr %i.do, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  %23 = select i1 %21, i1 true, i1 %22
  call void @llvm.assume(i1 %23)
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dp, align 8, !tbaa !88, !noalias !94
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.ek
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.ap:                                            ; preds = %.lr.ph119
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %14, align 8, !tbaa !88, !noalias !116 ; 5 uses
  %i.em = and i64 %i.ec, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.em    ; 3 uses
  %24 = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -3
  %25 = sub i64 15, %notmask.i.i.i.i.i.i
  %26 = select i1 %24, i64 0, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %26
  %28 = icmp ule ptr %27, %10
  %29 = icmp ule ptr %i.do, %.sroa.0.0.copyload.i.i.i.i.i
  %30 = select i1 %28, i1 true, i1 %29
  call void @llvm.assume(i1 %30)
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !116
  %i.en = lshr i64 %i.ec, 8
  %i.eo = and i64 %i.en, 255
  %i.ep = zext i32 %i.ed to i64
  %i.eq = xor i64 %i.eo, %i.ep
  %i.er = zext nneg i64 %i.eq to i128
  %i.es = mul nuw nsw i128 %i.er, 8779197792823184629 ; 2 uses
  %i.et = lshr i128 %i.es, 64
  %i.eu = xor i128 %i.et, %i.es
  %i.ev = trunc i128 %i.eu to i64                 ; 3 uses
  %i.ew = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.ex = lshr i64 %i.ev, 57
  %i.ey = trunc nuw nsw i64 %i.ex to i8
  %.sroa.0.0.copyload.i.i.i3.i = load ptr, ptr %i.dp, align 8, !tbaa !88, !noalias !116 ; 2 uses
  %i.ez = insertelement <16 x i8> poison, i8 %i.ey, i64 0
  %i.fa = shufflevector <16 x i8> %i.ez, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.pn.i = phi i64 [ %i.ev, %bb.ap ], [ %i.fy, %bb.as ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.ap ], [ %i.fx, %bb.as ] ; 2 uses
  %.sroa.639.0.i = and i64 %.pn.i, %i.ew          ; 5 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i3.i, i64 %.sroa.639.0.i
  call void @llvm.prefetch.p0(ptr %i.fb, i32 0, i32 3, i32 1), !noalias !116
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.639.0.i
  %i.fd = load <16 x i8>, ptr %i.fc, align 1, !tbaa !88, !noalias !116 ; 2 uses
  %i.fe = icmp eq <16 x i8> %i.fa, %i.fd
  %i.ff = bitcast <16 x i1> %i.fe to i16
  %i.fg = zext i16 %i.ff to i32
  %i.fh = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fg) #26, !srcloc !119 ; 2 uses
  %.not67.i = icmp eq i32 %i.fh, 0
  br i1 %.not67.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq, %.critedge.i.i
  %.sroa.024.068.i = phi i32 [ %i.fq, %.critedge.i.i ], [ %i.fh, %bb.aq ] ; 3 uses
  %i.fi = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.068.i, i1 true)
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = add nuw i64 %.sroa.639.0.i, %i.fj
  %i.fl = and i64 %i.fk, %i.ew
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i3.i, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !22, !noalias !116
  %i.fo = icmp eq i32 %i.fn, %i.ed
  br i1 %i.fo, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i, label %.critedge.i.i, !prof !120

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.fp = add i32 %.sroa.024.068.i, -1
  %i.fq = and i32 %i.fp, %.sroa.024.068.i         ; 2 uses
  %.not.i74 = icmp eq i32 %i.fq, 0
  br i1 %.not.i74, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.aq
  %i.fr = icmp eq <16 x i8> %i.fd, splat (i8 -128)
  %i.fs = bitcast <16 x i1> %i.fr to i16
  %i.ft = zext i16 %i.fs to i32
  %i.fu = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ft) #26, !srcloc !119 ; 2 uses
  %.not61.i = icmp eq i32 %i.fu, 0
  br i1 %.not61.i, label %bb.as, label %bb.ar, !prof !121

bb.ar:                                            ; preds = %._crit_edge.i
  %i.fv = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ev, i32 %i.fu, i64 %.sroa.639.0.i, i64 %.sroa.14.0.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread96 unwind label %bb.at

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread96: ; preds = %bb.ar
  %.sroa.0.0.copyload.i.i.i.i7.pre.i = load ptr, ptr %14, align 8, !tbaa !88, !noalias !116, !nonnull !79, !noundef !79 ; 2 uses
  %.pre.i = load i64, ptr %10, align 8, !noalias !116
  %.sroa.0.0.copyload.i.i.i2.i.pre.i = load ptr, ptr %i.dp, align 8, !tbaa !88, !noalias !116
  %.pre75.i = and i64 %.pre.i, 255
  %.pre76.i = shl nsw i64 -1, %.pre75.i           ; 2 uses
  %.pre77.i = sub i64 15, %.pre76.i
  %31 = icmp samesign ugt i64 %.pre76.i, -3
  %32 = select i1 %31, i64 0, i64 %.pre77.i
  %33 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7.pre.i, i64 %32
  %34 = icmp ule ptr %33, %10
  %35 = icmp ule ptr %i.do, %.sroa.0.0.copyload.i.i.i.i7.pre.i
  %36 = select i1 %34, i1 true, i1 %35
  call void @llvm.assume(i1 %36)
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.pre.i, i64 %i.fv
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.as:                                            ; preds = %._crit_edge.i
  %i.fx = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.fy = add i64 %i.fx, %.sroa.639.0.i
  br label %bb.aq

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i, %.noexc51, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread96
  %.sroa.5.093 = phi ptr [ %i.fw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread96 ], [ %14, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.el, %.noexc51 ]
  %i.fz = load i32, ptr %i.c, align 4, !tbaa !22, !noalias !122
  store i32 %i.fz, ptr %.sroa.5.093, align 4, !tbaa !22
  %.pre = load i64, ptr %10, align 8, !noalias !123 ; 2 uses
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE6insertIjLi0EEESt4pairINS5_8iteratorEbERKT_.exit: ; preds = %bb.an, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.pre135139 = phi i64 [ %.pre135136, %bb.an ], [ %.pre, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread ], [ %.pre135136, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ga = phi i64 [ %i.ec, %bb.an ], [ %.pre, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread ], [ %i.ec, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE22find_or_prepare_insertIjEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.077.0117, i64 4 ; 2 uses
  %.not104 = icmp eq ptr %i.gb, %i.dt
  br i1 %.not104, label %._crit_edge120, label %.lr.ph119

bb.at:                                            ; preds = %bb.ar, %bb.ao
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.bn

._crit_edge125:                                   ; preds = %._crit_edge120
  %i.gd = add i64 %i.dz, -1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.ge = lshr i64 %i.ea, 17                      ; 2 uses
  %i.gf = icmp ult i64 %i.ea, 562949953552384
  call void @llvm.assume(i1 %i.gf)
  store i64 %i.ge, ptr %i.d, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i64 %i.gd, ptr %i.e, align 8, !tbaa !46
  %.not.i53 = icmp ult i64 %i.ge, %i.gd
  br i1 %.not.i53, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge125
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.aw

bb.av:                                            ; preds = %._crit_edge125.thread, %._crit_edge125
  invoke void @_ZN7testing8internal18CmpHelperOpFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.14)
          to label %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.aw

_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.gg = load i8, ptr %11, align 8, !tbaa !68, !range !78, !noundef !79
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.bg, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.bm

bb.ax:                                            ; preds = %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !80 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i56, label %_ZNK7testing15AssertionResult15failure_messageEv.exit57, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !81
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit57

_ZNK7testing15AssertionResult15failure_messageEv.exit57: ; preds = %bb.az, %bb.ay
  %i.gm = phi ptr [ %i.gl, %bb.az ], [ @.str.13, %bb.ay ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 63, ptr noundef %i.gm)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit57
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.gn = load ptr, ptr %12, align 8, !tbaa !85   ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i58, label %_ZN7testing7MessageD2Ev.exit60, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59: ; preds = %bb.bb
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gn) #21, !inline_history !87
  br label %_ZN7testing7MessageD2Ev.exit60

_ZN7testing7MessageD2Ev.exit60:                   ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ax
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit63

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit57
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn31 = phi { ptr, i32 } [ %i.gt, %bb.be ], [ %i.gs, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.gu = load ptr, ptr %12, align 8, !tbaa !85   ; 3 uses
  %.not.i.i61 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i61, label %_ZN7testing7MessageD2Ev.exit63, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62: ; preds = %bb.bf
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !9
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(128) %i.gu) #21, !inline_history !87
  br label %_ZN7testing7MessageD2Ev.exit63

_ZN7testing7MessageD2Ev.exit63:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62, %bb.bf, %bb.bc
  %.pn31.pn = phi { ptr, i32 } [ %i.gr, %bb.bc ], [ %.pn31, %bb.bf ], [ %.pn31, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #21
  br label %bb.bm

bb.bg:                                            ; preds = %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit60
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !80 ; 4 uses
  %.not.i.i64 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i64, label %_ZN7testing15AssertionResultD2Ev.exit68, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !81 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65: ; preds = %bb.bh
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !88
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef 32) #23
  br label %_ZN7testing15AssertionResultD2Ev.exit68

_ZN7testing15AssertionResultD2Ev.exit68:          ; preds = %bb.bg, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.hf = load i64, ptr %10, align 8              ; 4 uses
  %i.hg = and i64 %i.hf, 255                      ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.hg      ; 8 uses
  %37 = xor i64 %notmask.i.i.i.i.i, -1
  %i.hh = add nsw i64 %notmask.i.i.i.i.i, 8589934591
  %i.hi = or i64 %i.hh, %notmask.i.i.i.i.i
  %i.hj = icmp eq i64 %i.hi, -1
  call void @llvm.assume(i1 %i.hj)
  %i.hk = icmp ne i64 %i.hg, 0
  call void @llvm.assume(i1 %i.hk)
  %i.hl = icmp samesign ugt i64 %notmask.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.hl)
  %i.hm = and i64 %i.hf, 254
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %bb.bi, label %38

bb.bi:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit68
  %i.ho = icmp ult i64 %i.hf, 562949953552384
  call void @llvm.assume(i1 %i.ho)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEED2Ev.exit

38:                                               ; preds = %_ZN7testing15AssertionResultD2Ev.exit68
  %39 = and i64 %i.hf, 65536                      ; 2 uses
  %.not.i.i.i.i.i69 = icmp eq i64 %39, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !88 ; 5 uses
  br i1 %.not.i.i.i.i.i69, label %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE5infozEv.exit_crit_edge.i.i.i, label %40

._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE5infozEv.exit_crit_edge.i.i.i: ; preds = %38
  %.pre.i.i.i = sub nsw i64 15, %notmask.i.i.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE7deallocEv.exit.i.i

40:                                               ; preds = %38
  %41 = icmp samesign ugt i64 %notmask.i.i.i.i.i, -3
  %42 = sub nsw i64 15, %notmask.i.i.i.i.i        ; 2 uses
  %43 = select i1 %41, i64 0, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i2.pre.i.i.i, i64 %43
  %45 = icmp ule ptr %44, %10
  %46 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %47 = icmp ule ptr %46, %.sroa.0.0.copyload.i.i.i2.pre.i.i.i
  %48 = select i1 %45, i1 true, i1 %47
  call void @llvm.assume(i1 %48)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE7deallocEv.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE7deallocEv.exit.i.i: ; preds = %40, %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE5infozEv.exit_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE5infozEv.exit_crit_edge.i.i.i ], [ %42, %40 ]
  %49 = icmp samesign ugt i64 %notmask.i.i.i.i.i, -3
  %50 = select i1 %49, i64 0, i64 %.pre-phi.i.i.i
  %51 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i2.pre.i.i.i, i64 %50
  %52 = icmp ule ptr %51, %10
  %.phi.trans.insert.i.i.i.a = getelementptr inbounds nuw i8, ptr %10, i64 24
  %53 = icmp ule ptr %.phi.trans.insert.i.i.i.a, %.sroa.0.0.copyload.i.i.i2.pre.i.i.i
  %54 = select i1 %52, i1 true, i1 %53
  call void @llvm.assume(i1 %54)
  %i.hp = icmp ne i64 %39, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %37, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.hp)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEED2Ev.exit unwind label %bb.bj

bb.bj:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE7deallocEv.exit.i.i
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #22
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEED2Ev.exit: ; preds = %bb.bi, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE7deallocEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.hs = load ptr, ptr %4, align 8, !tbaa !62    ; 3 uses
  %i.ht = load ptr, ptr %i.cb, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i70 = icmp eq ptr %i.hs, %i.ht
  br i1 %.not4.i.i.i70, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEED2Ev.exit, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i71 = phi ptr [ %i.ia, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %i.hs, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEED2Ev.exit ] ; 3 uses
  %i.hu = load ptr, ptr %.05.i.i.i71, align 8, !tbaa !93 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.05.i.i.i71, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !124
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #23
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.bk, %.lr.ph.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i71, i64 24 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.ia, %i.ht
  br i1 %.not.i.i.i72, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !125

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEED2Ev.exit
  %i.ib = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.hs, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i73 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i1.i73, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !126
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ib to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.ig) #23
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.bm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit63, %bb.aw
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZN7testing7MessageD2Ev.exit63 ], [ %i.gi, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.at
  %.pn35 = phi { ptr, i32 } [ %i.gc, %bb.at ], [ %.pn31.pn.pn, %bb.bm ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ak, %.body
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %.body ], [ %.pn35, %bb.bn ], [ %.pn.pn.pn, %bb.ak ]
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn37.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i, !llvm.loop !58

_ZSt8_DestroyISt6threadEvPT_.exit.i.i:            ; preds = %bb.a, %bb.b
  %.05.i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.05.i.i, align 8, !tbaa !46
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  tail call void @_ZSt9terminatev() #22
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit:  ; preds = %bb.b, %bb.a
  %.not.i.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #23
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, %bb.d
  ret void
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !88
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #23
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.b         ; 8 uses
  %1 = xor i64 %notmask.i.i.i.i, -1
  %i.c = add nsw i64 %notmask.i.i.i.i, 8589934591
  %i.d = or i64 %i.c, %notmask.i.i.i.i
  %i.e = icmp eq i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %notmask.i.i.i.i, -8589934593
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.a, 254
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %2

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE15destructor_implEv.exit

2:                                                ; preds = %bb.a
  %3 = and i64 %i.a, 65536                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %3, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !88 ; 5 uses
  br i1 %.not.i.i.i.i, label %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE5infozEv.exit_crit_edge.i.i, label %4

._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE5infozEv.exit_crit_edge.i.i: ; preds = %2
  %.pre.i.i = sub nsw i64 15, %notmask.i.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE7deallocEv.exit.i

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %notmask.i.i.i.i, -3
  %6 = sub nsw i64 15, %notmask.i.i.i.i           ; 2 uses
  %7 = select i1 %5, i64 0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 %7
  %9 = icmp ule ptr %8, %0
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = icmp ule ptr %10, %.sroa.0.0.copyload.i.i.i2.pre.i.i
  %12 = select i1 %9, i1 true, i1 %11
  tail call void @llvm.assume(i1 %12)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE7deallocEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE7deallocEv.exit.i: ; preds = %4, %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE5infozEv.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE5infozEv.exit_crit_edge.i.i ], [ %6, %4 ]
  %13 = icmp samesign ugt i64 %notmask.i.i.i.i, -3
  %14 = select i1 %13, i64 0, i64 %.pre-phi.i.i
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 %14
  %16 = icmp ule ptr %15, %0
  %.phi.trans.insert.i.i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %17 = icmp ule ptr %.phi.trans.insert.i.i.a, %.sroa.0.0.copyload.i.i.i2.pre.i.i
  %18 = select i1 %16, i1 true, i1 %17
  tail call void @llvm.assume(i1 %18)
  %i.k = icmp ne i64 %3, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.k)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE15destructor_implEv.exit: ; preds = %bb.b, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE7deallocEv.exit.i
  ret void

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE7deallocEv.exit.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !93 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !125

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEEEED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEEEE6_M_runEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.32", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #24 ; 7 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  store ptr %i.b, ptr %i.d, align 8, !tbaa !90
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 128)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127, !nonnull !79, !align !129 ; 3 uses
  invoke void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit.i.i.i.i.i unwind label %bb.h

_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130, !nonnull !79, !align !129 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !126
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit.i.i.i.i.i
  store ptr %i.a, ptr %i.j, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.b, ptr %i.n, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.o, ptr %i.i, align 8, !tbaa !59
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit.i.i.i.i.i
  invoke void @_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i unwind label %bb.i

_ZNSt6vectorIS_IjSaIjEESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #22
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i
  %i.r = load ptr, ptr %1, align 8, !tbaa !93     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZNSt6thread8_InvokerISt5tupleIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEEclEv.exit", label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_202605269MutexLockD2Ev.exit.i.i.i.i.i
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #23
  br label %"_ZNSt6thread8_InvokerISt5tupleIJZN12_GLOBAL__N_147EntropyPoolTest_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEEclEv.exit"

bb.g:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i.i.i.i.i

bb.h:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #22
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i.i.i.i.i: ; preds = %bb.i
  %.pre.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i9.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not.i.i.i9.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit10.i.i.i.i.i, label %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i._ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i_crit_edge.i.i.i.i

_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i._ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i_crit_edge.i.i.i.i: ; preds = %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !124
  br label %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i.i.i.i.i

_ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i.i.i.i.i: ; preds = %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i._ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i_crit_edge.i.i.i.i, %bb.h, %bb.g
  %i.ab = phi ptr [ %.pre.i.i.i.i, %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i._ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i_crit_edge.i.i.i.i ], [ %i.b, %bb.h ], [ %i.b, %bb.g ]
  %.pn.pn17.i.i.i.i.i = phi { ptr, i32 } [ %i.y, %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i._ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i_crit_edge.i.i.i.i ], [ %i.x, %bb.h ], [ %i.w, %bb.g ]
  %i.ac = phi ptr [ %.pre.i.i.i.i.i, %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i._ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i_crit_edge.i.i.i.i ], [ %i.a, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit10.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit10.i.i.i.i.i:        ; preds = %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i.i.i.i.i, %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i.i.i.i.i
  %.pn.pn18.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn17.i.i.i.i.i, %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.thread.i.i.i.i.i ], [ %i.y, %_ZN4absl12lts_202605269MutexLockD2Ev.exit8.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
end_hunk_1
begin_hunk_2_@_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #21
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !9
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !154
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !22
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.b)
          to label %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !148, !alias.scope !162
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !150, !alias.scope !162
  store i8 0, ptr %i.d, align 8, !tbaa !88, !alias.scope !162
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151, !noalias !162 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !162 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !153, !noalias !162 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !81, !alias.scope !162 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !88, !alias.scope !162
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #23
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !9
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !9
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !88
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #21
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !9
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !154
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #0

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashIjEEjLb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !22
  %i.b = zext i32 %i.a to i64
  %i.c = xor i64 %2, %i.b
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm4EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #13 comdat {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef, i64 noundef) #0

declare void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIjEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSB_PFvSB_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 3 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !88 ; 5 uses
  %5 = sub i64 15, %notmask.i.i
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %5
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #26, !srcloc !119 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !163

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.052.061 = phi i32 [ %i.bh, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !22
  %i.ad = zext i32 %i.ac to i64
  %i.ae = xor i64 %i.ab, %i.ad
  %i.af = zext nneg i64 %i.ae to i128
  %i.ag = mul nuw nsw i128 %i.af, 8779197792823184629 ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64                 ; 6 uses
  %i.ak = lshr i64 %i.aj, 57
  %i.al = trunc nuw nsw i64 %i.ak to i8           ; 2 uses
  %i.am = sub i64 %i.x, %i.aj                     ; 2 uses
  %i.an = and i64 %i.i, %i.am
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !120

bb.d:                                             ; preds = %.lr.ph
  %i.ap = and i64 %i.am, 15
  %i.aq = add i64 %i.ap, %i.aj
  %i.ar = and i64 %i.aq, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.as = and i64 %i.d, %i.aj
  %.not.i = icmp ult i64 %i.as, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !120

bb.f:                                             ; preds = %bb.e
  %i.at = and i64 %i.aj, %i.c                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.at
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !88
  %i.aw = icmp slt <16 x i8> %i.av, zeroinitializer
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = zext i16 %i.ax to i32
  %i.az = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #26, !srcloc !119 ; 2 uses
  %.not26.i = icmp eq i32 %i.az, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !121

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.az, i1 true)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add nuw i64 %i.at, %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.al, i64 noundef %i.x, i64 noundef %i.aj)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.bc, %bb.g ], [ %i.ar, %bb.d ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.al, ptr %i.bd, align 1, !tbaa !164
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.bf = load i32, ptr %i.y, align 4
  store i32 %i.bf, ptr %i.be, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = add i32 %.sroa.052.061, -1
  %i.bh = and i32 %i.bg, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIjEEjLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166, !nonnull !79, !align !168
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22
  %i.d = zext i32 %i.c to i64
  %i.e = xor i64 %1, %i.d
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  ret i64 %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #16

declare noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i32, i64, i64) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperOpFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.15, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #21, !inline_history !169
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !85    ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #21, !inline_history !169
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ah

end_hunk_2
