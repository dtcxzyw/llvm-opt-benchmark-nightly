Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_test?download=true
inline.NumInlined: 72231
inline.NumDeleted: 15383
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiEENS0_22CastAndAppendTransformIRKlEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm2EEclES7_RKS3_SE_:bb.a
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit.thread

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit.thread: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKlE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIlEELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.j, align 8, !tbaa !260
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.c, ptr %i.k, align 8, !tbaa !161
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKlEE, i64 16), ptr %i.g, align 8, !tbaa !141
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !420
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.f, align 8, !tbaa !420
  br label %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKlEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit unwind label %bb.k

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit: ; preds = %bb.b
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !260  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKlEE, i64 16), ptr %4, align 8, !tbaa !141
  %.not.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i4, label %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.pr, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !265
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.q = atomicrmw sub ptr %i.p, i32 1 acq_rel, align 4
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.d, label %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !260
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !265
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !161
  invoke void %i.u(ptr noundef %i.v)
          to label %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit unwind label %bb.e, !inline_history !14

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #48, !inline_history !266
  unreachable

_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit:  ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit.thread, %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit, %_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !19580)
  call void @llvm.experimental.noalias.scope.decl(metadata !19581)
  call void @llvm.experimental.noalias.scope.decl(metadata !19582)
  call void @llvm.experimental.noalias.scope.decl(metadata !19583)
  %i.y = load i32, ptr %1, align 4, !tbaa !188, !noalias !19584
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKlEE, i64 16), ptr %3, align 8, !tbaa !141, !alias.scope !19584
  store ptr @_ZZN7testing8internal11MatcherBaseIRKlE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIlEELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.aa, align 8, !tbaa !260, !alias.scope !19584
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !161, !alias.scope !19584
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !420 ; 5 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !421
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit.thread.i

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit.thread.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKlE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIlEELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.ae, align 8, !tbaa !260
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.z, ptr %i.af, align 8, !tbaa !161
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKlEE, i64 16), ptr %i.ac, align 8, !tbaa !141
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !420
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !420
  br label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiEENS0_22CastAndAppendTransformIRKlEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit

bb.f:                                             ; preds = %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKlEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit.i unwind label %bb.j

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit.i: ; preds = %bb.f
  %.pr.i = load ptr, ptr %i.aa, align 8, !tbaa !260 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKlEE, i64 16), ptr %3, align 8, !tbaa !141
  %.not.i.i.i4.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i4.i, label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiEENS0_22CastAndAppendTransformIRKlEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit, label %_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !265
  %.not.i.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i5, label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiEENS0_22CastAndAppendTransformIRKlEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i.i
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !161
  %i.al = atomicrmw sub ptr %i.ak, i32 1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.h, label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiEENS0_22CastAndAppendTransformIRKlEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !260
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !265
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !161
  invoke void %i.ap(ptr noundef %i.aq)
          to label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiEENS0_22CastAndAppendTransformIRKlEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit unwind label %bb.i, !inline_history !14

bb.i:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #48, !inline_history !266
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.au, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKlED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %common.resume

_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiEENS0_22CastAndAppendTransformIRKlEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit.thread.i, %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKlEESaIS5_EEEaSEOS5_.exit.i, %_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i.i, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret ptr %2

bb.k:                                             ; preds = %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKlED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_123SooTest_HintInsert_TestINS5_10ValueTableINS5_10SizedValueILi24EEELb0ELb0ESaIS9_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_123SooTest_HintInsert_TestINS5_10ValueTableINS5_10SizedValueILi24EEELb0ELb0ESaIS9_EEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_123SooTest_HintInsert_TestINS2_10ValueTableINS2_10SizedValueILi24EEELb0ELb0ESaIS6_EEEEE, i64 16), ptr %i.a, align 8, !tbaa !141
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #44
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_123SooTest_HintInsert_TestINS2_10ValueTableINS2_10SizedValueILi24EEELb0ELb0ESaIS6_EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_123SooTest_HintInsert_TestINS2_10ValueTableINS2_10SizedValueILi24EEELb0ELb0ESaIS6_EEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.648, align 8            ; 4 uses
  %2 = alloca %"struct.std::pair.649", align 8    ; 6 uses
  %3 = alloca %"struct.std::pair.649", align 8    ; 6 uses
  %4 = alloca %"struct.std::pair.649", align 8    ; 11 uses
  %5 = alloca %"struct.absl::lts_20260526::container_internal::(anonymous namespace)::ValueTable.630", align 8 ; 35 uses
  %i.a = alloca [3 x i32], align 4                ; 8 uses
  %6 = alloca %"class.absl::lts_20260526::container_internal::node_handle.2620", align 8 ; 11 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.2606", align 8 ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.774", align 4 ; 7 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.7 = alloca { [6 x i8], [24 x i8] }, align 8 ; 6 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %24 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.2606", align 8 ; 5 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %27 = alloca %"struct.std::pair.649", align 8   ; 6 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %29 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.774", align 4 ; 7 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i32 1, ptr %i.a, align 4, !tbaa !188
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 2, ptr %i.e, align 4, !tbaa !188
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i32 3, ptr %i.f, align 4, !tbaa !188
  store i64 0, ptr %5, align 8
  invoke void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef 3)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !19649)
  call void @llvm.experimental.noalias.scope.decl(metadata !19650)
  call void @llvm.experimental.noalias.scope.decl(metadata !19651)
  call void @llvm.experimental.noalias.scope.decl(metadata !19652)
  call void @llvm.experimental.noalias.scope.decl(metadata !19653)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc.i.i.i unwind label %bb.e

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.h = load i8, ptr %i.g, align 8, !tbaa !441, !range !180, !alias.scope !19654, !noundef !181
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i

bb.b:                                             ; preds = %.noexc.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !19654
  %.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !188, !noalias !19654
  %i.j = sext i32 %.val.i.i.i.i.i.i.i.i.i.i to i64
  store i64 %i.j, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !166, !noalias !19654
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i: ; preds = %bb.b, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !19655)
  call void @llvm.experimental.noalias.scope.decl(metadata !19656)
  call void @llvm.experimental.noalias.scope.decl(metadata !19657)
  call void @llvm.experimental.noalias.scope.decl(metadata !19658)
  call void @llvm.experimental.noalias.scope.decl(metadata !19659)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc.i.i.i.1 unwind label %bb.e

.noexc.i.i.i.1:                                   ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i
  %i.k = load i8, ptr %i.g, align 8, !tbaa !441, !range !180, !alias.scope !19660, !noundef !181
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i.1

bb.c:                                             ; preds = %.noexc.i.i.i.1
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !19660
  %.val.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.e, align 4, !tbaa !188, !noalias !19660
  %i.m = sext i32 %.val.i.i.i.i.i.i.i.i.i.i.1 to i64
  store i64 %i.m, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !166, !noalias !19660
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i.1

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i.1: ; preds = %bb.c, %.noexc.i.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !19661)
  call void @llvm.experimental.noalias.scope.decl(metadata !19662)
  call void @llvm.experimental.noalias.scope.decl(metadata !19663)
  call void @llvm.experimental.noalias.scope.decl(metadata !19664)
  call void @llvm.experimental.noalias.scope.decl(metadata !19665)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.noexc.i.i.i.2 unwind label %bb.e

.noexc.i.i.i.2:                                   ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i.1
  %i.n = load i8, ptr %i.g, align 8, !tbaa !441, !range !180, !alias.scope !19666, !noundef !181
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i.2

bb.d:                                             ; preds = %.noexc.i.i.i.2
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !19666
  %.val.i.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.f, align 4, !tbaa !188, !noalias !19666
  %i.p = sext i32 %.val.i.i.i.i.i.i.i.i.i.i.2 to i64
  store i64 %i.p, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !166, !noalias !19666
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i.2

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i.2: ; preds = %bb.d, %.noexc.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !19667)
  %.val.i231 = load i64, ptr %5, align 8, !noalias !19667 ; 4 uses
  %i.q = and i64 %.val.i231, 254
  %i.r = icmp eq i64 %i.q, 0                      ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i, %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #43
  br label %.body

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i.2
  %.not.i.i.i234 = icmp ult i64 %.val.i231, 131072
  br i1 %.not.i.i.i234, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE4findIS6_EENS8_8iteratorERKS6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val3.i.i = load ptr, ptr %i.t, align 8, !tbaa !161, !noalias !19667 ; 2 uses
  %.val5.i.i = load i64, ptr %.val3.i.i, align 8, !tbaa !166, !noalias !19667
  %i.u = icmp eq i64 %.val5.i.i, 1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %.val3.i.i, 1
  %spec.select.i.i = select i1 %i.u, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE4findIS6_EENS8_8iteratorERKS6_.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSD_.exit.i.i.i.i.i.2
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !161, !noalias !19667 ; 4 uses
  %i.w = and i64 %.val.i231, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.w
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !19667
  %i.x = lshr i64 %.val.i231, 8
  %i.y = and i64 %i.x, 255
  %i.z = xor i64 %i.y, 1
  %i.aa = zext nneg i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64                 ; 2 uses
  %i.af = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.ag = lshr i64 %i.ae, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val14.i.i = load ptr, ptr %i.ai, align 8, !tbaa !161, !noalias !19667 ; 2 uses
  %i.aj = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.pn.i9.i = phi i64 [ %i.ae, %bb.h ], [ %i.bg, %bb.k ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.h ], [ %i.bf, %bb.k ]
  %.sroa.629.0.i.i = and i64 %.pn.i9.i, %i.af     ; 4 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.val14.i.i, i64 %.sroa.629.0.i.i
  call void @llvm.prefetch.p0(ptr %i.al, i32 0, i32 3, i32 1), !noalias !19667
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.629.0.i.i
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !161, !noalias !19667 ; 2 uses
  %i.ao = icmp eq <16 x i8> %i.ak, %i.an
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = zext i16 %i.ap to i32
  %i.ar = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aq) #49, !srcloc !240 ; 2 uses
  %.not50.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i232

.lr.ph.i.i232:                                    ; preds = %bb.i, %bb.j
  %.sroa.020.051.i.i = phi i32 [ %i.ba, %bb.j ], [ %i.ar, %bb.i ] ; 3 uses
  %i.as = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.020.051.i.i, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = add nuw i64 %.sroa.629.0.i.i, %i.at
  %i.av = and i64 %i.au, %i.af                    ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %.val14.i.i, i64 %i.av ; 2 uses
  %.val16.i.i = load i64, ptr %i.aw, align 8, !tbaa !166, !noalias !19667
  %i.ax = icmp eq i64 %.val16.i.i, 1
  br i1 %i.ax, label %.thread37.i.i, label %bb.j, !prof !241

.thread37.i.i:                                    ; preds = %.lr.ph.i.i232
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ], !noalias !19667
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i232
  %i.az = add i32 %.sroa.020.051.i.i, -1
  %i.ba = and i32 %i.az, %.sroa.020.051.i.i       ; 2 uses
  %.not.i.i233 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i233, label %._crit_edge.i.i, label %.lr.ph.i.i232

._crit_edge.i.i:                                  ; preds = %bb.j, %bb.i
  %i.bb = icmp eq <16 x i8> %i.an, splat (i8 -128)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %i.bd = zext i16 %i.bc to i32
  %i.be = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bd) #49, !srcloc !240
  %.not48.i.i = icmp eq i32 %i.be, 0
  br i1 %.not48.i.i, label %bb.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i, !prof !233

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bf = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.bg = add i64 %i.bf, %.sroa.629.0.i.i
end_hunk_0
