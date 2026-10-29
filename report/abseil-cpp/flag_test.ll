Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/flag_test?download=true
inline.NumInlined: 1315
inline.NumDeleted: 527
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci:bb.a
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZN4absl12lts_2026052614flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126CivilTime_FlagSupport_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126CivilTime_FlagSupport_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #14 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_126CivilTime_FlagSupport_TestE, i64 16), ptr %i.a, align 8, !tbaa !25
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #15
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126CivilTime_FlagSupport_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #15
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_126CivilTime_FlagSupport_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %union.U.59, align 8                ; 7 uses
  %2 = alloca %union.U.58, align 8                ; 7 uses
  %3 = alloca %union.U.57, align 8                ; 7 uses
  %4 = alloca %union.U.56, align 8                ; 7 uses
  %5 = alloca %union.U.55, align 8                ; 7 uses
  %6 = alloca %union.U, align 8                   ; 7 uses
  %7 = alloca %union.U.59, align 8                ; 7 uses
  %8 = alloca %union.U.58, align 8                ; 7 uses
  %9 = alloca %union.U.57, align 8                ; 7 uses
  %10 = alloca %union.U.56, align 8               ; 7 uses
  %11 = alloca %union.U.55, align 8               ; 7 uses
  %12 = alloca %union.U, align 8                  ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %14 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.29", align 8 ; 7 uses
  %20 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.29", align 8 ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %24 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.30", align 8 ; 7 uses
  %25 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.30", align 8 ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %29 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.31", align 8 ; 7 uses
  %30 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.31", align 8 ; 5 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %34 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.32", align 8 ; 7 uses
  %35 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.32", align 8 ; 5 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %39 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.33", align 8 ; 7 uses
  %40 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.33", align 8 ; 5 uses
  %41 = alloca %"class.testing::Message", align 8 ; 7 uses
  %42 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %43 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %44 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.29", align 8 ; 5 uses
  %45 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.30", align 8 ; 5 uses
  %46 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.31", align 8 ; 5 uses
  %47 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.32", align 8 ; 5 uses
  %48 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.33", align 8 ; 5 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %50 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %51 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %52 = alloca %"class.testing::Message", align 8 ; 7 uses
  %53 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %54 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %55 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.29", align 8 ; 7 uses
  %56 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.29", align 8 ; 5 uses
  %57 = alloca %"class.testing::Message", align 8 ; 7 uses
  %58 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %60 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.30", align 8 ; 7 uses
  %61 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.30", align 8 ; 5 uses
  %62 = alloca %"class.testing::Message", align 8 ; 7 uses
  %63 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %64 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %65 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.31", align 8 ; 7 uses
  %66 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.31", align 8 ; 5 uses
  %67 = alloca %"class.testing::Message", align 8 ; 7 uses
  %68 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %69 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %70 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.32", align 8 ; 7 uses
  %71 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.32", align 8 ; 5 uses
  %72 = alloca %"class.testing::Message", align 8 ; 7 uses
  %73 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %74 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %75 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.33", align 8 ; 7 uses
  %76 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.33", align 8 ; 5 uses
  %77 = alloca %"class.testing::Message", align 8 ; 7 uses
  %78 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store i64 2015, ptr %14, align 8, !tbaa !11
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 21542142465, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.a = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_second, i64 56) acquire, align 8 ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i: ; preds = %bb.a
  %i.c = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_second, i64 88) monotonic, align 8
  store i64 %i.c, ptr %12, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.e = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_second, i64 96) monotonic, align 8
  store i64 %i.e, ptr %i.d, align 8
  fence acquire
  %i.f = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_second, i64 56) monotonic, align 8
  %i.g = icmp eq i64 %i.a, %i.f
  br i1 %i.g, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %bb.a
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_second, ptr noundef nonnull %12)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %12, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %15, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.h, align 8
  %i.i = load i64, ptr %14, align 8, !tbaa !151, !noalias !152
  %i.j = icmp eq i64 %i.i, %.sroa.0.0.copyload.i.i.i
  %i.k = lshr i64 %.sroa.2.0.copyload.i.i.i, 32
  %i.l = trunc i64 %i.k to i8
  %i.m = load <4 x i8>, ptr %.sroa.10.0..sroa_idx, align 8
  %i.n = bitcast i64 %.sroa.2.0.copyload.i.i.i to <8 x i8>
  %i.o = shufflevector <8 x i8> %i.n, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.p = icmp eq <4 x i8> %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.r = load i8, ptr %i.q, align 4
  %i.s = icmp eq i8 %i.r, %i.l
  %i.t = freeze <4 x i1> %i.p
  %i.u = bitcast <4 x i1> %i.t to i4
  %i.v = icmp eq i4 %i.u, -1
  %op.rdx687 = select i1 %i.v, i1 %i.j, i1 false
  %op.rdx688 = select i1 %op.rdx687, i1 %i.s, i1 false
  br i1 %op.rdx688, label %bb.b, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.b:                                             ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.b, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.w = load i8, ptr %13, align 8, !tbaa !46, !range !47, !noundef !48
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.l, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %i.aa, %bb.e ], [ @.str.51, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 60, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.ac = load ptr, ptr %16, align 8, !tbaa !51   ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i72, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit75

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.ah, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.aj = load ptr, ptr %16, align 8, !tbaa !51   ; 3 uses
  %.not.i.i73 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i73, label %_ZN7testing7MessageD2Ev.exit75, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74: ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit75

_ZN7testing7MessageD2Ev.exit75:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.ep

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49 ; 4 uses
  %.not.i.i76 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i76, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !12
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store i64 2015, ptr %19, align 8
  %.sroa.2.0..sroa_idx.i.i77 = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i40 67305985, ptr %.sroa.2.0..sroa_idx.i.i77, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.au = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_minute, i64 56) acquire, align 8 ; 2 uses
  %i.av = and i64 %i.au, 1
  %.not.i.i.i.i.i79 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i79, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.aw = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_minute, i64 88) monotonic, align 8
  store i64 %i.aw, ptr %11, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ay = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_minute, i64 96) monotonic, align 8
  store i64 %i.ay, ptr %i.ax, align 8
  fence acquire
  %i.az = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_minute, i64 56) monotonic, align 8
  %i.ba = icmp eq i64 %i.au, %i.az
  br i1 %i.ba, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_minute, ptr noundef nonnull %11)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i
  %.sroa.0.0.copyload.i.i.i80 = load i64, ptr %11, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.2.0.copyload.i.i.i82 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i81, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  store i64 %.sroa.0.0.copyload.i.i.i80, ptr %20, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i82, ptr %i.bb, align 8
  %i.bc = load i64, ptr %19, align 8, !tbaa !154, !noalias !155
  %i.bd = icmp eq i64 %i.bc, %.sroa.0.0.copyload.i.i.i80
  %i.be = lshr i64 %.sroa.2.0.copyload.i.i.i82, 32
  %i.bf = trunc i64 %i.be to i8
  %i.bg = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i77, align 8
  %i.bh = bitcast i64 %.sroa.2.0.copyload.i.i.i82 to <8 x i8>
  %i.bi = shufflevector <8 x i8> %i.bh, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bj = icmp eq <4 x i8> %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = icmp eq i8 %i.bl, %i.bf
  %i.bn = freeze <4 x i1> %i.bj
  %i.bo = bitcast <4 x i1> %i.bn to i4
  %i.bp = icmp eq i4 %i.bo, -1
  %op.rdx685 = select i1 %i.bp, i1 %i.bd, i1 false
  %op.rdx686 = select i1 %op.rdx685, i1 %i.bm, i1 false
  br i1 %op.rdx686, label %bb.n, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.n:                                             ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10minute_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.n, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.bq = load i8, ptr %18, align 8, !tbaa !46, !range !47, !noundef !48
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.x, label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !49 ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i85, label %_ZNK7testing15AssertionResult15failure_messageEv.exit86, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit86

_ZNK7testing15AssertionResult15failure_messageEv.exit86: ; preds = %bb.q, %bb.p
  %i.bv = phi ptr [ %i.bu, %bb.q ], [ @.str.51, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef %i.bv)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit86
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  %i.bw = load ptr, ptr %21, align 8, !tbaa !51   ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i87, label %_ZN7testing7MessageD2Ev.exit89, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88: ; preds = %bb.s
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(128) %i.bw) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit89

_ZN7testing7MessageD2Ev.exit89:                   ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit92

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit86
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn37 = phi { ptr, i32 } [ %i.cc, %bb.v ], [ %i.cb, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  %i.cd = load ptr, ptr %21, align 8, !tbaa !51   ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i90, label %_ZN7testing7MessageD2Ev.exit92, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.w
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit92

_ZN7testing7MessageD2Ev.exit92:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, %bb.w, %bb.t
  %.pn37.pn = phi { ptr, i32 } [ %i.ca, %bb.t ], [ %.pn37, %bb.w ], [ %.pn37, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.ep

bb.x:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit89
  %i.ch = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !49 ; 4 uses
  %.not.i.i93 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i93, label %_ZN7testing15AssertionResultD2Ev.exit97, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94: ; preds = %bb.y
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !12
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit97

_ZN7testing15AssertionResultD2Ev.exit97:          ; preds = %bb.x, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  store i64 2015, ptr %24, align 8
  %.sroa.2.0..sroa_idx.i.i102 = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i40 197121, ptr %.sroa.2.0..sroa_idx.i.i102, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.co = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_hour, i64 56) acquire, align 8 ; 2 uses
  %i.cp = and i64 %i.co, 1
  %.not.i.i.i.i.i104 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.i104, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit97
  %i.cq = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_hour, i64 88) monotonic, align 8
  store i64 %i.cq, ptr %10, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cs = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_hour, i64 96) monotonic, align 8
  store i64 %i.cs, ptr %i.cr, align 8
  fence acquire
  %i.ct = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_hour, i64 56) monotonic, align 8
  %i.cu = icmp eq i64 %i.co, %i.ct
  br i1 %i.cu, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit97
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_hour, ptr noundef nonnull %10)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i
  %.sroa.0.0.copyload.i.i.i105 = load i64, ptr %10, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i106 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i.i.i107 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i106, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  store i64 %.sroa.0.0.copyload.i.i.i105, ptr %25, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i107, ptr %i.cv, align 8
  %i.cw = load i64, ptr %24, align 8, !tbaa !157, !noalias !158
  %i.cx = icmp eq i64 %i.cw, %.sroa.0.0.copyload.i.i.i105
  %i.cy = lshr i64 %.sroa.2.0.copyload.i.i.i107, 32
  %i.cz = trunc i64 %i.cy to i8
  %i.da = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i102, align 8
  %i.db = bitcast i64 %.sroa.2.0.copyload.i.i.i107 to <8 x i8>
  %i.dc = shufflevector <8 x i8> %i.db, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dd = icmp eq <4 x i8> %i.da, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.df = load i8, ptr %i.de, align 4
  %i.dg = icmp eq i8 %i.df, %i.cz
  %i.dh = freeze <4 x i1> %i.dd
  %i.di = bitcast <4 x i1> %i.dh to i4
  %i.dj = icmp eq i4 %i.di, -1
  %op.rdx683 = select i1 %i.dj, i1 %i.cx, i1 false
  %op.rdx684 = select i1 %op.rdx683, i1 %i.dg, i1 false
  br i1 %op.rdx684, label %bb.z, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.z:                                             ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_8hour_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.z, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  %i.dk = load i8, ptr %23, align 8, !tbaa !46, !range !47, !noundef !48
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  %i.dm = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !49 ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i110, label %_ZNK7testing15AssertionResult15failure_messageEv.exit111, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit111

_ZNK7testing15AssertionResult15failure_messageEv.exit111: ; preds = %bb.ac, %bb.ab
  %i.dp = phi ptr [ %i.do, %bb.ac ], [ @.str.51, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 64, ptr noundef %i.dp)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit111
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  %i.dq = load ptr, ptr %26, align 8, !tbaa !51   ; 3 uses
  %.not.i.i112 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i112, label %_ZN7testing7MessageD2Ev.exit114, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %bb.ae
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(128) %i.dq) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit114

_ZN7testing7MessageD2Ev.exit114:                  ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  br label %bb.aj

bb.af:                                            ; preds = %bb.aa
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit117

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit111
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn40 = phi { ptr, i32 } [ %i.dw, %bb.ah ], [ %i.dv, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  %i.dx = load ptr, ptr %26, align 8, !tbaa !51   ; 3 uses
  %.not.i.i115 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i115, label %_ZN7testing7MessageD2Ev.exit117, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116: ; preds = %bb.ai
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !25
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(128) %i.dx) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit117

_ZN7testing7MessageD2Ev.exit117:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116, %bb.ai, %bb.af
  %.pn40.pn = phi { ptr, i32 } [ %i.du, %bb.af ], [ %.pn40, %bb.ai ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %bb.ep

bb.aj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit114
  %i.eb = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !49 ; 4 uses
  %.not.i.i118 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i118, label %_ZN7testing15AssertionResultD2Ev.exit122, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !19 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119: ; preds = %bb.ak
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !12
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit122

_ZN7testing15AssertionResultD2Ev.exit122:         ; preds = %bb.aj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #16
  store i64 2015, ptr %29, align 8
  %.sroa.2.0..sroa_idx.i.i127 = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i40 513, ptr %.sroa.2.0..sroa_idx.i.i127, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.ei = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_day, i64 56) acquire, align 8 ; 2 uses
  %i.ej = and i64 %i.ei, 1
  %.not.i.i.i.i.i129 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i129, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit122
  %i.ek = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_day, i64 88) monotonic, align 8
  store i64 %i.ek, ptr %9, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.em = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_day, i64 96) monotonic, align 8
  store i64 %i.em, ptr %i.el, align 8
  fence acquire
  %i.en = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_day, i64 56) monotonic, align 8
  %i.eo = icmp eq i64 %i.ei, %i.en
  br i1 %i.eo, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit122
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_day, ptr noundef nonnull %9)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i
  %.sroa.0.0.copyload.i.i.i130 = load i64, ptr %9, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i131 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i.i.i132 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i131, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  store i64 %.sroa.0.0.copyload.i.i.i130, ptr %30, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i132, ptr %i.ep, align 8
  %i.eq = load i64, ptr %29, align 8, !tbaa !160, !noalias !161
  %i.er = icmp eq i64 %i.eq, %.sroa.0.0.copyload.i.i.i130
  %i.es = lshr i64 %.sroa.2.0.copyload.i.i.i132, 32
  %i.et = trunc i64 %i.es to i8
  %i.eu = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i127, align 8
  %i.ev = bitcast i64 %.sroa.2.0.copyload.i.i.i132 to <8 x i8>
  %i.ew = shufflevector <8 x i8> %i.ev, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ex = icmp eq <4 x i8> %i.eu, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.ez = load i8, ptr %i.ey, align 4
  %i.fa = icmp eq i8 %i.ez, %i.et
  %i.fb = freeze <4 x i1> %i.ex
  %i.fc = bitcast <4 x i1> %i.fb to i4
  %i.fd = icmp eq i4 %i.fc, -1
  %op.rdx681 = select i1 %i.fd, i1 %i.er, i1 false
  %op.rdx682 = select i1 %op.rdx681, i1 %i.fa, i1 false
  br i1 %op.rdx682, label %bb.al, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.al:                                            ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %30)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.al, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  %i.fe = load i8, ptr %28, align 8, !tbaa !46, !range !47, !noundef !48
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.av, label %bb.am

bb.am:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #16
  %i.fg = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !49 ; 2 uses
  %.not.i.i135 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i135, label %_ZNK7testing15AssertionResult15failure_messageEv.exit136, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit136

_ZNK7testing15AssertionResult15failure_messageEv.exit136: ; preds = %bb.ao, %bb.an
  %i.fj = phi ptr [ %i.fi, %bb.ao ], [ @.str.51, %bb.an ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 66, ptr noundef %i.fj)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit136
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  %i.fk = load ptr, ptr %31, align 8, !tbaa !51   ; 3 uses
  %.not.i.i137 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i137, label %_ZN7testing7MessageD2Ev.exit139, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138: ; preds = %bb.aq
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !25
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(128) %i.fk) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit139

_ZN7testing7MessageD2Ev.exit139:                  ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %bb.av

bb.ar:                                            ; preds = %bb.am
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit136
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #16
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn43 = phi { ptr, i32 } [ %i.fq, %bb.at ], [ %i.fp, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  %i.fr = load ptr, ptr %31, align 8, !tbaa !51   ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.au
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !25
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(128) %i.fr) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %bb.au, %bb.ar
  %.pn43.pn = phi { ptr, i32 } [ %i.fo, %bb.ar ], [ %.pn43, %bb.au ], [ %.pn43, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  br label %bb.ep

bb.av:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit139
  %i.fv = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !49 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i143, label %_ZN7testing15AssertionResultD2Ev.exit147, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !19 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.aw
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !12
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit147

_ZN7testing15AssertionResultD2Ev.exit147:         ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #16
  store i64 2015, ptr %34, align 8
  %.sroa.2.0..sroa_idx.i.i152 = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i152, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.gc = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_month, i64 56) acquire, align 8 ; 2 uses
  %i.gd = and i64 %i.gc, 1
  %.not.i.i.i.i.i154 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i.i.i.i154, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit147
  %i.ge = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_month, i64 88) monotonic, align 8
  store i64 %i.ge, ptr %8, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gg = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_month, i64 96) monotonic, align 8
  store i64 %i.gg, ptr %i.gf, align 8
  fence acquire
  %i.gh = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_month, i64 56) monotonic, align 8
  %i.gi = icmp eq i64 %i.gc, %i.gh
  br i1 %i.gi, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit147
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_month, ptr noundef nonnull %8)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i
  %.sroa.0.0.copyload.i.i.i155 = load i64, ptr %8, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i156 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload.i.i.i157 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i156, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  store i64 %.sroa.0.0.copyload.i.i.i155, ptr %35, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i157, ptr %i.gj, align 8
  %i.gk = load i64, ptr %34, align 8, !tbaa !163, !noalias !164
  %i.gl = icmp eq i64 %i.gk, %.sroa.0.0.copyload.i.i.i155
  %i.gm = lshr i64 %.sroa.2.0.copyload.i.i.i157, 32
  %i.gn = trunc i64 %i.gm to i8
  %i.go = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i152, align 8
  %i.gp = bitcast i64 %.sroa.2.0.copyload.i.i.i157 to <8 x i8>
  %i.gq = shufflevector <8 x i8> %i.gp, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gr = icmp eq <4 x i8> %i.go, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %34, i64 12
  %i.gt = load i8, ptr %i.gs, align 4
  %i.gu = icmp eq i8 %i.gt, %i.gn
  %i.gv = freeze <4 x i1> %i.gr
  %i.gw = bitcast <4 x i1> %i.gv to i4
  %i.gx = icmp eq i4 %i.gw, -1
  %op.rdx679 = select i1 %i.gx, i1 %i.gl, i1 false
  %op.rdx680 = select i1 %op.rdx679, i1 %i.gu, i1 false
  br i1 %op.rdx680, label %bb.ax, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.ax:                                            ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_9month_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %35)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.ax, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  %i.gy = load i8, ptr %33, align 8, !tbaa !46, !range !47, !noundef !48
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #16
  %i.ha = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !49 ; 2 uses
  %.not.i.i160 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i160, label %_ZNK7testing15AssertionResult15failure_messageEv.exit161, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit161

_ZNK7testing15AssertionResult15failure_messageEv.exit161: ; preds = %bb.ba, %bb.az
  %i.hd = phi ptr [ %i.hc, %bb.ba ], [ @.str.51, %bb.az ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 68, ptr noundef %i.hd)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit161
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #16
  %i.he = load ptr, ptr %36, align 8, !tbaa !51   ; 3 uses
  %.not.i.i162 = icmp eq ptr %i.he, null
  br i1 %.not.i.i162, label %_ZN7testing7MessageD2Ev.exit164, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163: ; preds = %bb.bc
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !25
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.he) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit164

_ZN7testing7MessageD2Ev.exit164:                  ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #16
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ay
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit167

bb.be:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit161
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #16
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn46 = phi { ptr, i32 } [ %i.hk, %bb.bf ], [ %i.hj, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #16
  %i.hl = load ptr, ptr %36, align 8, !tbaa !51   ; 3 uses
  %.not.i.i165 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i165, label %_ZN7testing7MessageD2Ev.exit167, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166: ; preds = %bb.bg
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !25
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(128) %i.hl) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit167

_ZN7testing7MessageD2Ev.exit167:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166, %bb.bg, %bb.bd
  %.pn46.pn = phi { ptr, i32 } [ %i.hi, %bb.bd ], [ %.pn46, %bb.bg ], [ %.pn46, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  br label %bb.ep

bb.bh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit164
  %i.hp = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !49 ; 4 uses
  %.not.i.i168 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i168, label %_ZN7testing15AssertionResultD2Ev.exit172, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !19 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169: ; preds = %bb.bi
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !12
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit172

_ZN7testing15AssertionResultD2Ev.exit172:         ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #16
  store i64 2015, ptr %39, align 8
  %.sroa.2.0..sroa_idx.i.i174 = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i174, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.hw = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_year, i64 56) acquire, align 8 ; 2 uses
  %i.hx = and i64 %i.hw, 1
  %.not.i.i.i.i.i175 = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i.i.i.i175, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit172
  %i.hy = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_year, i64 88) monotonic, align 8
  store i64 %i.hy, ptr %7, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ia = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_year, i64 96) monotonic, align 8
  store i64 %i.ia, ptr %i.hz, align 8
  fence acquire
  %i.ib = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_year, i64 56) monotonic, align 8
  %i.ic = icmp eq i64 %i.hw, %i.ib
  br i1 %i.ic, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit172
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_year, ptr noundef nonnull %7)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i
  %.sroa.0.0.copyload.i.i.i176 = load i64, ptr %7, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i177 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload.i.i.i178 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i177, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  store i64 %.sroa.0.0.copyload.i.i.i176, ptr %40, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i178, ptr %i.id, align 8
  %i.ie = load i64, ptr %39, align 8, !tbaa !166, !noalias !167
  %i.if = icmp eq i64 %i.ie, %.sroa.0.0.copyload.i.i.i176
  %i.ig = lshr i64 %.sroa.2.0.copyload.i.i.i178, 32
  %i.ih = trunc i64 %i.ig to i8
  %i.ii = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i174, align 8
  %i.ij = bitcast i64 %.sroa.2.0.copyload.i.i.i178 to <8 x i8>
  %i.ik = shufflevector <8 x i8> %i.ij, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.il = icmp eq <4 x i8> %i.ii, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %39, i64 12
  %i.in = load i8, ptr %i.im, align 4
  %i.io = icmp eq i8 %i.in, %i.ih
  %i.ip = freeze <4 x i1> %i.il
  %i.iq = bitcast <4 x i1> %i.ip to i4
  %i.ir = icmp eq i4 %i.iq, -1
  %op.rdx677 = select i1 %i.ir, i1 %i.if, i1 false
  %op.rdx678 = select i1 %op.rdx677, i1 %i.io, i1 false
  br i1 %op.rdx678, label %bb.bj, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.bj:                                            ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %38)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_8year_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %38, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %40)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.bj, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #16
  %i.is = load i8, ptr %38, align 8, !tbaa !46, !range !47, !noundef !48
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.bt, label %bb.bk

bb.bk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #16
  %i.iu = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !49 ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i181, label %_ZNK7testing15AssertionResult15failure_messageEv.exit182, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit182

_ZNK7testing15AssertionResult15failure_messageEv.exit182: ; preds = %bb.bm, %bb.bl
  %i.ix = phi ptr [ %i.iw, %bb.bm ], [ @.str.51, %bb.bl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 70, ptr noundef %i.ix)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit182
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #16
  %i.iy = load ptr, ptr %41, align 8, !tbaa !51   ; 3 uses
  %.not.i.i183 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i183, label %_ZN7testing7MessageD2Ev.exit185, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184: ; preds = %bb.bo
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !25
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(128) %i.iy) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit185

_ZN7testing7MessageD2Ev.exit185:                  ; preds = %bb.bo, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #16
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bk
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit188

bb.bq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit182
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #16
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn49 = phi { ptr, i32 } [ %i.je, %bb.br ], [ %i.jd, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #16
  %i.jf = load ptr, ptr %41, align 8, !tbaa !51   ; 3 uses
  %.not.i.i186 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i186, label %_ZN7testing7MessageD2Ev.exit188, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %bb.bs
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !25
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(128) %i.jf) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit188

_ZN7testing7MessageD2Ev.exit188:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, %bb.bs, %bb.bp
  %.pn49.pn = phi { ptr, i32 } [ %i.jc, %bb.bp ], [ %.pn49, %bb.bs ], [ %.pn49, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #16
  br label %bb.ep

bb.bt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit185
  %i.jj = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !49 ; 4 uses
  %.not.i.i189 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i189, label %_ZN7testing15AssertionResultD2Ev.exit193, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !19 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190: ; preds = %bb.bu
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !12
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit193

_ZN7testing15AssertionResultD2Ev.exit193:         ; preds = %bb.bt, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #16
  store i64 2016, ptr %43, align 8, !tbaa !11
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 43101193990, ptr %.sroa.16.0..sroa_idx, align 8
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl15AssertValidTypeENS0_14FastTypeIdTypeEPFPKSt9type_infovE(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_second, ptr nonnull @_ZN4absl12lts_2026052613base_internal11FastTypeTagINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEEE9kDummyVarE, ptr noundef nonnull @_ZN4absl12lts_2026052614flags_internal16GenRuntimeTypeIdINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEEPKSt9type_infov)
  call void @_ZN4absl12lts_2026052614flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_second, ptr noundef nonnull align 8 dereferenceable(16) %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #16
  store i64 2016, ptr %44, align 8
  %.sroa.2.0..sroa_idx.i.i202 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i40 151521030, ptr %.sroa.2.0..sroa_idx.i.i202, align 8
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl15AssertValidTypeENS0_14FastTypeIdTypeEPFPKSt9type_infovE(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_minute, ptr nonnull @_ZN4absl12lts_2026052613base_internal11FastTypeTagINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEEE9kDummyVarE, ptr noundef nonnull @_ZN4absl12lts_2026052614flags_internal16GenRuntimeTypeIdINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEEEEPKSt9type_infov)
  call void @_ZN4absl12lts_2026052614flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_minute, ptr noundef nonnull align 8 dereferenceable(16) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #16
  store i64 2016, ptr %45, align 8
  %.sroa.2.0..sroa_idx.i.i208 = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i40 526086, ptr %.sroa.2.0..sroa_idx.i.i208, align 8
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl15AssertValidTypeENS0_14FastTypeIdTypeEPFPKSt9type_infovE(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_hour, ptr nonnull @_ZN4absl12lts_2026052613base_internal11FastTypeTagINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEEE9kDummyVarE, ptr noundef nonnull @_ZN4absl12lts_2026052614flags_internal16GenRuntimeTypeIdINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEEEEPKSt9type_infov)
  call void @_ZN4absl12lts_2026052614flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_hour, ptr noundef nonnull align 8 dereferenceable(16) %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #16
  store i64 2016, ptr %46, align 8
  %.sroa.2.0..sroa_idx.i.i214 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i40 1798, ptr %.sroa.2.0..sroa_idx.i.i214, align 8
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl15AssertValidTypeENS0_14FastTypeIdTypeEPFPKSt9type_infovE(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_day, ptr nonnull @_ZN4absl12lts_2026052613base_internal11FastTypeTagINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEEE9kDummyVarE, ptr noundef nonnull @_ZN4absl12lts_2026052614flags_internal16GenRuntimeTypeIdINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEEEEPKSt9type_infov)
  call void @_ZN4absl12lts_2026052614flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_day, ptr noundef nonnull align 8 dereferenceable(16) %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #16
  store i64 2016, ptr %47, align 8
  %.sroa.2.0..sroa_idx.i.i221 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i40 262, ptr %.sroa.2.0..sroa_idx.i.i221, align 8
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl15AssertValidTypeENS0_14FastTypeIdTypeEPFPKSt9type_infovE(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_month, ptr nonnull @_ZN4absl12lts_2026052613base_internal11FastTypeTagINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEEE9kDummyVarE, ptr noundef nonnull @_ZN4absl12lts_2026052614flags_internal16GenRuntimeTypeIdINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEEEEPKSt9type_infov)
  call void @_ZN4absl12lts_2026052614flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_month, ptr noundef nonnull align 8 dereferenceable(16) %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #16
  store i64 2016, ptr %48, align 8
  %.sroa.2.0..sroa_idx.i.i224 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i224, align 8
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl15AssertValidTypeENS0_14FastTypeIdTypeEPFPKSt9type_infovE(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_year, ptr nonnull @_ZN4absl12lts_2026052613base_internal11FastTypeTagINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEE9kDummyVarE, ptr noundef nonnull @_ZN4absl12lts_2026052614flags_internal16GenRuntimeTypeIdINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEPKSt9type_infov)
  call void @_ZN4absl12lts_2026052614flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_year, ptr noundef nonnull align 8 dereferenceable(16) %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #16
  store i64 2016, ptr %50, align 8, !tbaa !11
  %.sroa.16.0..sroa_idx403 = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  store i64 43101193990, ptr %.sroa.16.0..sroa_idx403, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.jq = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_second, i64 56) acquire, align 8 ; 2 uses
  %i.jr = and i64 %i.jq, 1
  %.not.i.i.i.i.i225 = icmp eq i64 %i.jr, 0
  br i1 %.not.i.i.i.i.i225, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i232, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i226, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i232: ; preds = %_ZN7testing15AssertionResultD2Ev.exit193
  %i.js = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_second, i64 88) monotonic, align 8
  store i64 %i.js, ptr %6, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ju = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_second, i64 96) monotonic, align 8
  store i64 %i.ju, ptr %i.jt, align 8
  fence acquire
  %i.jv = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_second, i64 56) monotonic, align 8
  %i.jw = icmp eq i64 %i.jq, %i.jv
  br i1 %i.jw, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit233, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i226, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i226: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i232, %_ZN7testing15AssertionResultD2Ev.exit193
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_second, ptr noundef nonnull %6)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit233

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit233: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i232, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i226
  %.sroa.0.0.copyload.i.i.i227 = load i64, ptr %6, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i228 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i.i.i229 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i228, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  store i64 %.sroa.0.0.copyload.i.i.i227, ptr %51, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i229, ptr %i.jx, align 8
  %i.jy = load i64, ptr %50, align 8, !tbaa !151, !noalias !168
  %i.jz = icmp eq i64 %i.jy, %.sroa.0.0.copyload.i.i.i227
  %i.ka = lshr i64 %.sroa.2.0.copyload.i.i.i229, 32
  %i.kb = trunc i64 %i.ka to i8
  %i.kc = load <4 x i8>, ptr %.sroa.16.0..sroa_idx403, align 8
  %i.kd = bitcast i64 %.sroa.2.0.copyload.i.i.i229 to <8 x i8>
  %i.ke = shufflevector <8 x i8> %i.kd, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kf = icmp eq <4 x i8> %i.kc, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %50, i64 12
  %i.kh = load i8, ptr %i.kg, align 4
  %i.ki = icmp eq i8 %i.kh, %i.kb
  %i.kj = freeze <4 x i1> %i.kf
  %i.kk = bitcast <4 x i1> %i.kj to i4
  %i.kl = icmp eq i4 %i.kk, -1
  %op.rdx675 = select i1 %i.kl, i1 %i.jz, i1 false
  %op.rdx676 = select i1 %op.rdx675, i1 %i.ki, i1 false
  br i1 %op.rdx676, label %bb.bv, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i234

bb.bv:                                            ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit233
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit236

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i234: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit233
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %51)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit236

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit236: ; preds = %bb.bv, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #16
  %i.km = load i8, ptr %49, align 8, !tbaa !46, !range !47, !noundef !48
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.cf, label %bb.bw

bb.bw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit236
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #16
  %i.ko = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !49 ; 2 uses
  %.not.i.i237 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i237, label %_ZNK7testing15AssertionResult15failure_messageEv.exit238, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit238

_ZNK7testing15AssertionResult15failure_messageEv.exit238: ; preds = %bb.by, %bb.bx
  %i.kr = phi ptr [ %i.kq, %bb.by ], [ @.str.51, %bb.bx ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %53, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 82, ptr noundef %i.kr)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit238
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #16
  %i.ks = load ptr, ptr %52, align 8, !tbaa !51   ; 3 uses
  %.not.i.i239 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i239, label %_ZN7testing7MessageD2Ev.exit241, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240: ; preds = %bb.ca
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !25
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(128) %i.ks) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit241

_ZN7testing7MessageD2Ev.exit241:                  ; preds = %bb.ca, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #16
  br label %bb.cf

bb.cb:                                            ; preds = %bb.bw
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit244

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit238
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bz
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #16
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn52 = phi { ptr, i32 } [ %i.ky, %bb.cd ], [ %i.kx, %bb.cc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #16
  %i.kz = load ptr, ptr %52, align 8, !tbaa !51   ; 3 uses
  %.not.i.i242 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i242, label %_ZN7testing7MessageD2Ev.exit244, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243: ; preds = %bb.ce
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !25
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(128) %i.kz) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit244

_ZN7testing7MessageD2Ev.exit244:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243, %bb.ce, %bb.cb
  %.pn52.pn = phi { ptr, i32 } [ %i.kw, %bb.cb ], [ %.pn52, %bb.ce ], [ %.pn52, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #16
  br label %bb.ep

bb.cf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit236, %_ZN7testing7MessageD2Ev.exit241
  %i.ld = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !49 ; 4 uses
  %.not.i.i245 = icmp eq ptr %i.le, null
  br i1 %.not.i.i245, label %_ZN7testing15AssertionResultD2Ev.exit249, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !19 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i246: ; preds = %bb.cg
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !12
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i247

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i247: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i246
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit249

_ZN7testing15AssertionResultD2Ev.exit249:         ; preds = %bb.cf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i247
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #16
  store i64 2016, ptr %55, align 8
  %.sroa.2.0..sroa_idx.i.i254 = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  store i40 151521030, ptr %.sroa.2.0..sroa_idx.i.i254, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.lk = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_minute, i64 56) acquire, align 8 ; 2 uses
  %i.ll = and i64 %i.lk, 1
  %.not.i.i.i.i.i256 = icmp eq i64 %i.ll, 0
  br i1 %.not.i.i.i.i.i256, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i263, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i257, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i263: ; preds = %_ZN7testing15AssertionResultD2Ev.exit249
  %i.lm = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_minute, i64 88) monotonic, align 8
  store i64 %i.lm, ptr %5, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lo = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_minute, i64 96) monotonic, align 8
  store i64 %i.lo, ptr %i.ln, align 8
  fence acquire
  %i.lp = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_minute, i64 56) monotonic, align 8
  %i.lq = icmp eq i64 %i.lk, %i.lp
  br i1 %i.lq, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit264, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i257, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i257: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i263, %_ZN7testing15AssertionResultD2Ev.exit249
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_minute, ptr noundef nonnull %5)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit264

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit264: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i263, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i257
  %.sroa.0.0.copyload.i.i.i258 = load i64, ptr %5, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i259 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i.i.i260 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i259, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  store i64 %.sroa.0.0.copyload.i.i.i258, ptr %56, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i260, ptr %i.lr, align 8
  %i.ls = load i64, ptr %55, align 8, !tbaa !154, !noalias !169
  %i.lt = icmp eq i64 %i.ls, %.sroa.0.0.copyload.i.i.i258
  %i.lu = lshr i64 %.sroa.2.0.copyload.i.i.i260, 32
  %i.lv = trunc i64 %i.lu to i8
  %i.lw = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i254, align 8
  %i.lx = bitcast i64 %.sroa.2.0.copyload.i.i.i260 to <8 x i8>
  %i.ly = shufflevector <8 x i8> %i.lx, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lz = icmp eq <4 x i8> %i.lw, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %55, i64 12
  %i.mb = load i8, ptr %i.ma, align 4
  %i.mc = icmp eq i8 %i.mb, %i.lv
  %i.md = freeze <4 x i1> %i.lz
  %i.me = bitcast <4 x i1> %i.md to i4
  %i.mf = icmp eq i4 %i.me, -1
  %op.rdx673 = select i1 %i.mf, i1 %i.lt, i1 false
  %op.rdx674 = select i1 %op.rdx673, i1 %i.mc, i1 false
  br i1 %op.rdx674, label %bb.ch, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i265

bb.ch:                                            ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit264
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %54)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit267

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i265: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit264
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10minute_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %54, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.34, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %56)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit267

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit267: ; preds = %bb.ch, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #16
  %i.mg = load i8, ptr %54, align 8, !tbaa !46, !range !47, !noundef !48
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.cr, label %bb.ci

bb.ci:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit267
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %bb.cj unwind label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #16
  %i.mi = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !49 ; 2 uses
  %.not.i.i268 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i268, label %_ZNK7testing15AssertionResult15failure_messageEv.exit269, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit269

_ZNK7testing15AssertionResult15failure_messageEv.exit269: ; preds = %bb.ck, %bb.cj
  %i.ml = phi ptr [ %i.mk, %bb.ck ], [ @.str.51, %bb.cj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %58, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 84, ptr noundef %i.ml)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit269
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #16
  %i.mm = load ptr, ptr %57, align 8, !tbaa !51   ; 3 uses
  %.not.i.i270 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i270, label %_ZN7testing7MessageD2Ev.exit272, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i271

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i271: ; preds = %bb.cm
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !25
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(128) %i.mm) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit272

_ZN7testing7MessageD2Ev.exit272:                  ; preds = %bb.cm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #16
  br label %bb.cr

bb.cn:                                            ; preds = %bb.ci
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit275

bb.co:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit269
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cl
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn55 = phi { ptr, i32 } [ %i.ms, %bb.cp ], [ %i.mr, %bb.co ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #16
  %i.mt = load ptr, ptr %57, align 8, !tbaa !51   ; 3 uses
  %.not.i.i273 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i273, label %_ZN7testing7MessageD2Ev.exit275, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i274

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i274: ; preds = %bb.cq
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !25
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(128) %i.mt) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit275

_ZN7testing7MessageD2Ev.exit275:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i274, %bb.cq, %bb.cn
  %.pn55.pn = phi { ptr, i32 } [ %i.mq, %bb.cn ], [ %.pn55, %bb.cq ], [ %.pn55, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %54) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #16
  br label %bb.ep

bb.cr:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit267, %_ZN7testing7MessageD2Ev.exit272
  %i.mx = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !49 ; 4 uses
  %.not.i.i276 = icmp eq ptr %i.my, null
  br i1 %.not.i.i276, label %_ZN7testing15AssertionResultD2Ev.exit280, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !19 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i277: ; preds = %bb.cs
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !12
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i277
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit280

_ZN7testing15AssertionResultD2Ev.exit280:         ; preds = %bb.cr, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #16
  store i64 2016, ptr %60, align 8
  %.sroa.2.0..sroa_idx.i.i285 = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  store i40 526086, ptr %.sroa.2.0..sroa_idx.i.i285, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ne = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_hour, i64 56) acquire, align 8 ; 2 uses
  %i.nf = and i64 %i.ne, 1
  %.not.i.i.i.i.i287 = icmp eq i64 %i.nf, 0
  br i1 %.not.i.i.i.i.i287, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i294, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i288, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i294: ; preds = %_ZN7testing15AssertionResultD2Ev.exit280
  %i.ng = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_hour, i64 88) monotonic, align 8
  store i64 %i.ng, ptr %4, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ni = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_hour, i64 96) monotonic, align 8
  store i64 %i.ni, ptr %i.nh, align 8
  fence acquire
  %i.nj = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_hour, i64 56) monotonic, align 8
  %i.nk = icmp eq i64 %i.ne, %i.nj
  br i1 %i.nk, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit295, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i288, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i288: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i294, %_ZN7testing15AssertionResultD2Ev.exit280
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_hour, ptr noundef nonnull %4)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit295

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit295: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i294, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i288
  %.sroa.0.0.copyload.i.i.i289 = load i64, ptr %4, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i290 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i.i291 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i290, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  store i64 %.sroa.0.0.copyload.i.i.i289, ptr %61, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i291, ptr %i.nl, align 8
  %i.nm = load i64, ptr %60, align 8, !tbaa !157, !noalias !170
  %i.nn = icmp eq i64 %i.nm, %.sroa.0.0.copyload.i.i.i289
  %i.no = lshr i64 %.sroa.2.0.copyload.i.i.i291, 32
  %i.np = trunc i64 %i.no to i8
  %i.nq = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i285, align 8
  %i.nr = bitcast i64 %.sroa.2.0.copyload.i.i.i291 to <8 x i8>
  %i.ns = shufflevector <8 x i8> %i.nr, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nt = icmp eq <4 x i8> %i.nq, %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %60, i64 12
  %i.nv = load i8, ptr %i.nu, align 4
  %i.nw = icmp eq i8 %i.nv, %i.np
  %i.nx = freeze <4 x i1> %i.nt
  %i.ny = bitcast <4 x i1> %i.nx to i4
  %i.nz = icmp eq i4 %i.ny, -1
  %op.rdx671 = select i1 %i.nz, i1 %i.nn, i1 false
  %op.rdx672 = select i1 %op.rdx671, i1 %i.nw, i1 false
  br i1 %op.rdx672, label %bb.ct, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i296

bb.ct:                                            ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit295
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %59)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit298

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i296: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit295
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_8hour_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %59, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %61)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit298

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit298: ; preds = %bb.ct, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #16
  %i.oa = load i8, ptr %59, align 8, !tbaa !46, !range !47, !noundef !48
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.dd, label %bb.cu

bb.cu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit298
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.cv unwind label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #16
  %i.oc = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !49 ; 2 uses
  %.not.i.i299 = icmp eq ptr %i.od, null
  br i1 %.not.i.i299, label %_ZNK7testing15AssertionResult15failure_messageEv.exit300, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit300

_ZNK7testing15AssertionResult15failure_messageEv.exit300: ; preds = %bb.cw, %bb.cv
  %i.of = phi ptr [ %i.oe, %bb.cw ], [ @.str.51, %bb.cv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %63, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 86, ptr noundef %i.of)
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit300
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #16
  %i.og = load ptr, ptr %62, align 8, !tbaa !51   ; 3 uses
  %.not.i.i301 = icmp eq ptr %i.og, null
  br i1 %.not.i.i301, label %_ZN7testing7MessageD2Ev.exit303, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302: ; preds = %bb.cy
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !25
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(128) %i.og) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit303

_ZN7testing7MessageD2Ev.exit303:                  ; preds = %bb.cy, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #16
  br label %bb.dd

bb.cz:                                            ; preds = %bb.cu
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit306

bb.da:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit300
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %bb.cx
  %i.om = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #16
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.pn58 = phi { ptr, i32 } [ %i.om, %bb.db ], [ %i.ol, %bb.da ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #16
  %i.on = load ptr, ptr %62, align 8, !tbaa !51   ; 3 uses
  %.not.i.i304 = icmp eq ptr %i.on, null
  br i1 %.not.i.i304, label %_ZN7testing7MessageD2Ev.exit306, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i305

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i305: ; preds = %bb.dc
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !25
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(128) %i.on) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit306

_ZN7testing7MessageD2Ev.exit306:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i305, %bb.dc, %bb.cz
  %.pn58.pn = phi { ptr, i32 } [ %i.ok, %bb.cz ], [ %.pn58, %bb.dc ], [ %.pn58, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i305 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %59) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #16
  br label %bb.ep

bb.dd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit298, %_ZN7testing7MessageD2Ev.exit303
  %i.or = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !49 ; 4 uses
  %.not.i.i307 = icmp eq ptr %i.os, null
  br i1 %.not.i.i307, label %_ZN7testing15AssertionResultD2Ev.exit311, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !19 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 16 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i308: ; preds = %bb.de
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !12
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ox) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i308
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit311

_ZN7testing15AssertionResultD2Ev.exit311:         ; preds = %bb.dd, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #16
  store i64 2016, ptr %65, align 8
  %.sroa.2.0..sroa_idx.i.i316 = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  store i40 1798, ptr %.sroa.2.0..sroa_idx.i.i316, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.oy = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_day, i64 56) acquire, align 8 ; 2 uses
  %i.oz = and i64 %i.oy, 1
  %.not.i.i.i.i.i318 = icmp eq i64 %i.oz, 0
  br i1 %.not.i.i.i.i.i318, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i325, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i319, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i325: ; preds = %_ZN7testing15AssertionResultD2Ev.exit311
  %i.pa = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_day, i64 88) monotonic, align 8
  store i64 %i.pa, ptr %3, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pc = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_day, i64 96) monotonic, align 8
  store i64 %i.pc, ptr %i.pb, align 8
  fence acquire
  %i.pd = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_day, i64 56) monotonic, align 8
  %i.pe = icmp eq i64 %i.oy, %i.pd
  br i1 %i.pe, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit326, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i319, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i319: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i325, %_ZN7testing15AssertionResultD2Ev.exit311
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_day, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit326

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit326: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i325, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i319
  %.sroa.0.0.copyload.i.i.i320 = load i64, ptr %3, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i321 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i322 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i321, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  store i64 %.sroa.0.0.copyload.i.i.i320, ptr %66, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i322, ptr %i.pf, align 8
  %i.pg = load i64, ptr %65, align 8, !tbaa !160, !noalias !171
  %i.ph = icmp eq i64 %i.pg, %.sroa.0.0.copyload.i.i.i320
  %i.pi = lshr i64 %.sroa.2.0.copyload.i.i.i322, 32
  %i.pj = trunc i64 %i.pi to i8
  %i.pk = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i316, align 8
  %i.pl = bitcast i64 %.sroa.2.0.copyload.i.i.i322 to <8 x i8>
  %i.pm = shufflevector <8 x i8> %i.pl, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pn = icmp eq <4 x i8> %i.pk, %i.pm
  %i.po = getelementptr inbounds nuw i8, ptr %65, i64 12
  %i.pp = load i8, ptr %i.po, align 4
  %i.pq = icmp eq i8 %i.pp, %i.pj
  %i.pr = freeze <4 x i1> %i.pn
  %i.ps = bitcast <4 x i1> %i.pr to i4
  %i.pt = icmp eq i4 %i.ps, -1
  %op.rdx669 = select i1 %i.pt, i1 %i.ph, i1 false
  %op.rdx670 = select i1 %op.rdx669, i1 %i.pq, i1 false
  br i1 %op.rdx670, label %bb.df, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i327

bb.df:                                            ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit326
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %64)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit329

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i327: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit326
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %64, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull align 8 dereferenceable(16) %66)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit329

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit329: ; preds = %bb.df, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #16
  %i.pu = load i8, ptr %64, align 8, !tbaa !46, !range !47, !noundef !48
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %bb.dp, label %bb.dg

bb.dg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit329
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #16
  %i.pw = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !49 ; 2 uses
  %.not.i.i330 = icmp eq ptr %i.px, null
  br i1 %.not.i.i330, label %_ZNK7testing15AssertionResult15failure_messageEv.exit331, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit331

_ZNK7testing15AssertionResult15failure_messageEv.exit331: ; preds = %bb.di, %bb.dh
  %i.pz = phi ptr [ %i.py, %bb.di ], [ @.str.51, %bb.dh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %68, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 87, ptr noundef %i.pz)
          to label %bb.dj unwind label %bb.dm

bb.dj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit331
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %bb.dk unwind label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #16
  %i.qa = load ptr, ptr %67, align 8, !tbaa !51   ; 3 uses
  %.not.i.i332 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i332, label %_ZN7testing7MessageD2Ev.exit334, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333: ; preds = %bb.dk
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !25
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8
  call void %i.qd(ptr noundef nonnull align 8 dereferenceable(128) %i.qa) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit334

_ZN7testing7MessageD2Ev.exit334:                  ; preds = %bb.dk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #16
  br label %bb.dp

bb.dl:                                            ; preds = %bb.dg
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit337

bb.dm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit331
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %bb.dj
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #16
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.pn61 = phi { ptr, i32 } [ %i.qg, %bb.dn ], [ %i.qf, %bb.dm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #16
  %i.qh = load ptr, ptr %67, align 8, !tbaa !51   ; 3 uses
  %.not.i.i335 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i335, label %_ZN7testing7MessageD2Ev.exit337, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i336

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i336: ; preds = %bb.do
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !25
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8
  call void %i.qk(ptr noundef nonnull align 8 dereferenceable(128) %i.qh) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit337

_ZN7testing7MessageD2Ev.exit337:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i336, %bb.do, %bb.dl
  %.pn61.pn = phi { ptr, i32 } [ %i.qe, %bb.dl ], [ %.pn61, %bb.do ], [ %.pn61, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #16
  br label %bb.ep

bb.dp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit329, %_ZN7testing7MessageD2Ev.exit334
  %i.ql = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !49 ; 4 uses
  %.not.i.i338 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i338, label %_ZN7testing15AssertionResultD2Ev.exit342, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !19 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 16 ; 2 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i339: ; preds = %bb.dq
  %i.qq = load i64, ptr %i.qo, align 8, !tbaa !12
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qr) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i340

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i340: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i339
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit342

_ZN7testing15AssertionResultD2Ev.exit342:         ; preds = %bb.dp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #16
  store i64 2016, ptr %70, align 8
  %.sroa.2.0..sroa_idx.i.i348 = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  store i40 262, ptr %.sroa.2.0..sroa_idx.i.i348, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.qs = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_month, i64 56) acquire, align 8 ; 2 uses
  %i.qt = and i64 %i.qs, 1
  %.not.i.i.i.i.i350 = icmp eq i64 %i.qt, 0
  br i1 %.not.i.i.i.i.i350, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i357, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i351, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i357: ; preds = %_ZN7testing15AssertionResultD2Ev.exit342
  %i.qu = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_month, i64 88) monotonic, align 8
  store i64 %i.qu, ptr %2, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qw = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_month, i64 96) monotonic, align 8
  store i64 %i.qw, ptr %i.qv, align 8
  fence acquire
  %i.qx = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_month, i64 56) monotonic, align 8
  %i.qy = icmp eq i64 %i.qs, %i.qx
  br i1 %i.qy, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit358, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i351, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i351: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i357, %_ZN7testing15AssertionResultD2Ev.exit342
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_month, ptr noundef nonnull %2)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit358

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit358: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i357, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i351
  %.sroa.0.0.copyload.i.i.i352 = load i64, ptr %2, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i353 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i354 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i353, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  store i64 %.sroa.0.0.copyload.i.i.i352, ptr %71, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %71, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i354, ptr %i.qz, align 8
  %i.ra = load i64, ptr %70, align 8, !tbaa !163, !noalias !172
  %i.rb = icmp eq i64 %i.ra, %.sroa.0.0.copyload.i.i.i352
  %i.rc = lshr i64 %.sroa.2.0.copyload.i.i.i354, 32
  %i.rd = trunc i64 %i.rc to i8
  %i.re = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i348, align 8
  %i.rf = bitcast i64 %.sroa.2.0.copyload.i.i.i354 to <8 x i8>
  %i.rg = shufflevector <8 x i8> %i.rf, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rh = icmp eq <4 x i8> %i.re, %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %70, i64 12
  %i.rj = load i8, ptr %i.ri, align 4
  %i.rk = icmp eq i8 %i.rj, %i.rd
  %i.rl = freeze <4 x i1> %i.rh
  %i.rm = bitcast <4 x i1> %i.rl to i4
  %i.rn = icmp eq i4 %i.rm, -1
  %op.rdx667 = select i1 %i.rn, i1 %i.rb, i1 false
  %op.rdx668 = select i1 %op.rdx667, i1 %i.rk, i1 false
  br i1 %op.rdx668, label %bb.dr, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i359

bb.dr:                                            ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit358
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %69)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit361

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i359: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit358
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_9month_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %69, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(16) %70, ptr noundef nonnull align 8 dereferenceable(16) %71)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit361

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit361: ; preds = %bb.dr, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #16
  %i.ro = load i8, ptr %69, align 8, !tbaa !46, !range !47, !noundef !48
  %i.rp = trunc nuw i8 %i.ro to i1
  br i1 %i.rp, label %bb.eb, label %bb.ds

bb.ds:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit361
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %72)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #16
  %i.rq = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !49 ; 2 uses
  %.not.i.i362 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i362, label %_ZNK7testing15AssertionResult15failure_messageEv.exit363, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit363

_ZNK7testing15AssertionResult15failure_messageEv.exit363: ; preds = %bb.du, %bb.dt
  %i.rt = phi ptr [ %i.rs, %bb.du ], [ @.str.51, %bb.dt ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %73, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 89, ptr noundef %i.rt)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit363
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull align 8 dereferenceable(8) %72)
          to label %bb.dw unwind label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #16
  %i.ru = load ptr, ptr %72, align 8, !tbaa !51   ; 3 uses
  %.not.i.i364 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i364, label %_ZN7testing7MessageD2Ev.exit366, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i365

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i365: ; preds = %bb.dw
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !25
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(128) %i.ru) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit366

_ZN7testing7MessageD2Ev.exit366:                  ; preds = %bb.dw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #16
  br label %bb.eb

bb.dx:                                            ; preds = %bb.ds
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit369

bb.dy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit363
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dv
  %i.sa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #16
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.pn64 = phi { ptr, i32 } [ %i.sa, %bb.dz ], [ %i.rz, %bb.dy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #16
  %i.sb = load ptr, ptr %72, align 8, !tbaa !51   ; 3 uses
  %.not.i.i367 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i367, label %_ZN7testing7MessageD2Ev.exit369, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368: ; preds = %bb.ea
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !25
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(128) %i.sb) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit369

_ZN7testing7MessageD2Ev.exit369:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368, %bb.ea, %bb.dx
  %.pn64.pn = phi { ptr, i32 } [ %i.ry, %bb.dx ], [ %.pn64, %bb.ea ], [ %.pn64, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %69) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #16
  br label %bb.ep

bb.eb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit361, %_ZN7testing7MessageD2Ev.exit366
  %i.sf = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !49 ; 4 uses
  %.not.i.i370 = icmp eq ptr %i.sg, null
  br i1 %.not.i.i370, label %_ZN7testing15AssertionResultD2Ev.exit374, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !19 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 16 ; 2 uses
  %i.sj = icmp eq ptr %i.sh, %i.si
  br i1 %i.sj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i371: ; preds = %bb.ec
  %i.sk = load i64, ptr %i.si, align 8, !tbaa !12
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sl) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i372

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i372: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i371
  call void @_ZdlPvm(ptr noundef nonnull %i.sg, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit374

_ZN7testing15AssertionResultD2Ev.exit374:         ; preds = %bb.eb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i372
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #16
  store i64 2016, ptr %75, align 8
  %.sroa.2.0..sroa_idx.i.i376 = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i376, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.sm = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_year, i64 56) acquire, align 8 ; 2 uses
  %i.sn = and i64 %i.sm, 1
  %.not.i.i.i.i.i377 = icmp eq i64 %i.sn, 0
  br i1 %.not.i.i.i.i.i377, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i384, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i378, !prof !35

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i384: ; preds = %_ZN7testing15AssertionResultD2Ev.exit374
  %i.so = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_year, i64 88) monotonic, align 8
  store i64 %i.so, ptr %1, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sq = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_year, i64 96) monotonic, align 8
  store i64 %i.sq, ptr %i.sp, align 8
  fence acquire
  %i.sr = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_flag_civil_year, i64 56) monotonic, align 8
  %i.ss = icmp eq i64 %i.sm, %i.sr
  br i1 %i.ss, label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit385, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i378, !prof !36

_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i378: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i384, %_ZN7testing15AssertionResultD2Ev.exit374
  call void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_test_flag_civil_year, ptr noundef nonnull %1)
  br label %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit385

_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit385: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.i.i.i384, %_ZNK4absl12lts_2026052614flags_internal9FlagValueINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS8_.exit.thread.i.i.i378
  %.sroa.0.0.copyload.i.i.i379 = load i64, ptr %1, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i380 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i381 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i380, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  store i64 %.sroa.0.0.copyload.i.i.i379, ptr %76, align 8
  %i.st = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i381, ptr %i.st, align 8
  %i.su = load i64, ptr %75, align 8, !tbaa !166, !noalias !173
  %i.sv = icmp eq i64 %i.su, %.sroa.0.0.copyload.i.i.i379
  %i.sw = lshr i64 %.sroa.2.0.copyload.i.i.i381, 32
  %i.sx = trunc i64 %i.sw to i8
  %i.sy = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i376, align 8
  %i.sz = bitcast i64 %.sroa.2.0.copyload.i.i.i381 to <8 x i8>
  %i.ta = shufflevector <8 x i8> %i.sz, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tb = icmp eq <4 x i8> %i.sy, %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %75, i64 12
  %i.td = load i8, ptr %i.tc, align 4
  %i.te = icmp eq i8 %i.td, %i.sx
  %i.tf = freeze <4 x i1> %i.tb
  %i.tg = bitcast <4 x i1> %i.tf to i4
  %i.th = icmp eq i4 %i.tg, -1
  %op.rdx = select i1 %i.th, i1 %i.sv, i1 false
  %op.rdx666 = select i1 %op.rdx, i1 %i.te, i1 false
  br i1 %op.rdx666, label %bb.ed, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i386

bb.ed:                                            ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit385
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %74)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit388

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i386: ; preds = %_ZN4absl12lts_202605267GetFlagINS0_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit385
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_8year_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %74, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.42, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(16) %76)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit388

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit388: ; preds = %bb.ed, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i386
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #16
  %i.ti = load i8, ptr %74, align 8, !tbaa !46, !range !47, !noundef !48
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.en, label %bb.ee

bb.ee:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit388
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.ef unwind label %bb.ej

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #16
  %i.tk = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !49 ; 2 uses
  %.not.i.i389 = icmp eq ptr %i.tl, null
  br i1 %.not.i.i389, label %_ZNK7testing15AssertionResult15failure_messageEv.exit390, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit390

_ZNK7testing15AssertionResult15failure_messageEv.exit390: ; preds = %bb.eg, %bb.ef
  %i.tn = phi ptr [ %i.tm, %bb.eg ], [ @.str.51, %bb.ef ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %78, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 91, ptr noundef %i.tn)
          to label %bb.eh unwind label %bb.ek

bb.eh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit390
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %bb.eh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #16
  %i.to = load ptr, ptr %77, align 8, !tbaa !51   ; 3 uses
  %.not.i.i391 = icmp eq ptr %i.to, null
  br i1 %.not.i.i391, label %_ZN7testing7MessageD2Ev.exit393, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i392

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i392: ; preds = %bb.ei
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !25
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8
  call void %i.tr(ptr noundef nonnull align 8 dereferenceable(128) %i.to) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit393

_ZN7testing7MessageD2Ev.exit393:                  ; preds = %bb.ei, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i392
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #16
  br label %bb.en

bb.ej:                                            ; preds = %bb.ee
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit396

bb.ek:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit390
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.el:                                            ; preds = %bb.eh
  %i.tu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #16
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.pn67 = phi { ptr, i32 } [ %i.tu, %bb.el ], [ %i.tt, %bb.ek ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #16
  %i.tv = load ptr, ptr %77, align 8, !tbaa !51   ; 3 uses
  %.not.i.i394 = icmp eq ptr %i.tv, null
  br i1 %.not.i.i394, label %_ZN7testing7MessageD2Ev.exit396, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395: ; preds = %bb.em
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !25
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef nonnull align 8 dereferenceable(128) %i.tv) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit396

_ZN7testing7MessageD2Ev.exit396:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395, %bb.em, %bb.ej
  %.pn67.pn = phi { ptr, i32 } [ %i.ts, %bb.ej ], [ %.pn67, %bb.em ], [ %.pn67, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %74) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #16
  br label %bb.ep

bb.en:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit388, %_ZN7testing7MessageD2Ev.exit393
  %i.tz = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !49 ; 4 uses
  %.not.i.i397 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i397, label %_ZN7testing15AssertionResultD2Ev.exit401, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !19 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 16 ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i398: ; preds = %bb.eo
  %i.ue = load i64, ptr %i.uc, align 8, !tbaa !12
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.uf) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i399

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i399: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i398
  call void @_ZdlPvm(ptr noundef nonnull %i.ua, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit401

_ZN7testing15AssertionResultD2Ev.exit401:         ; preds = %bb.en, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i399
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #16
  ret void

bb.ep:                                            ; preds = %_ZN7testing7MessageD2Ev.exit244, %_ZN7testing7MessageD2Ev.exit275, %_ZN7testing7MessageD2Ev.exit306, %_ZN7testing7MessageD2Ev.exit337, %_ZN7testing7MessageD2Ev.exit369, %_ZN7testing7MessageD2Ev.exit396, %_ZN7testing7MessageD2Ev.exit188, %_ZN7testing7MessageD2Ev.exit167, %_ZN7testing7MessageD2Ev.exit142, %_ZN7testing7MessageD2Ev.exit117, %_ZN7testing7MessageD2Ev.exit92, %_ZN7testing7MessageD2Ev.exit75
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit75 ], [ %.pn49.pn, %_ZN7testing7MessageD2Ev.exit188 ], [ %.pn46.pn, %_ZN7testing7MessageD2Ev.exit167 ], [ %.pn43.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit117 ], [ %.pn37.pn, %_ZN7testing7MessageD2Ev.exit92 ], [ %.pn67.pn, %_ZN7testing7MessageD2Ev.exit396 ], [ %.pn64.pn, %_ZN7testing7MessageD2Ev.exit369 ], [ %.pn61.pn, %_ZN7testing7MessageD2Ev.exit337 ], [ %.pn58.pn, %_ZN7testing7MessageD2Ev.exit306 ], [ %.pn55.pn, %_ZN7testing7MessageD2Ev.exit275 ], [ %.pn52.pn, %_ZN7testing7MessageD2Ev.exit244 ]
  resume { ptr, i32 } %.pn67.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !12
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #15
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN7testing13PrintToStringIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !19     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !12
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
