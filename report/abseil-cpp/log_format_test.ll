Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/log_format_test?download=true
inline.NumInlined: 15762
inline.NumDeleted: 2526
begin_hunk_0_@_ZN12_GLOBAL__N_137WideCharPtrLogFormatTest_NonNull_TestIKwE8TestBodyEv:bb.a
bb.bh:                                            ; preds = %bb.bg, %.body
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.bg ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn17.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [34 x i32], align 4               ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7462)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7462
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !7463, !noalias !7462
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !7463, !noalias !7462
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !7463, !noalias !7462
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !7462

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !7462
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7462
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !7464
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !7464
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !7464
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !7465
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7462
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1030, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body24

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i27 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i27, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %i.b, ptr noundef nonnull align 4 dereferenceable(136) @__const._ZN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestIA_wE8TestBodyEv.value, i64 136, i1 false), !tbaa.struct !295
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.ay  ; 2 uses

.noexc28:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc28, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc28 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc28 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 80, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.250, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7466)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !7466 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !7466
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !7466 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !7466
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !7466
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !7466 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !7466
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !7467)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc33 unwind label %bb.bc

.noexc33:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !7467 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !7467 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i30, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7467
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7468
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !7468
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !7468
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7467 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7469
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7468
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !7468
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !7468
  %.not.i.i.i.i.i.i.i.i31 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i31, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !7469
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc33
  call void @llvm.experimental.noalias.scope.decl(metadata !7470)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7469
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !7469
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !7469
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !7469
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7469 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7469
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !7469
  %.not.i.i.i.i.i32 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i32, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !7469
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7469
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !7469, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !7469, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1037, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i34, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit37, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i35

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i35: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i36 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i36, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i35
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv:bb.a
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [34 x i32], align 4               ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7489)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7489
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !7490, !noalias !7489
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !7490, !noalias !7489
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !7490, !noalias !7489
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !7489

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !7489
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7489
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !7491
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !7491
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !7491
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !7492
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7489
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1030, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body24

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i27 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i27, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %i.b, ptr noundef nonnull align 4 dereferenceable(136) @__const._ZN12_GLOBAL__N_140WideStringLogFormatTest_NonLiterals_TestIA_wE8TestBodyEv.value, i64 136, i1 false), !tbaa.struct !295
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.ay  ; 2 uses

.noexc28:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc28, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc28 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc28 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 80, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.250, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7493)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !7493 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !7493
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !7493 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !7493
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !7493
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !7493 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !7493
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !7494)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc33 unwind label %bb.bc

.noexc33:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !7494 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !7494 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i30, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7494
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7495
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !7495
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !7495
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7494 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7496
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7495
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !7495
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !7495
  %.not.i.i.i.i.i.i.i.i31 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i31, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !7496
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc33
  call void @llvm.experimental.noalias.scope.decl(metadata !7497)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7496
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !7496
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !7496
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !7496
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7496 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7496
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !7496
  %.not.i.i.i.i.i32 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i32, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !7496
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7496
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !7496, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !7496, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1037, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i34, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit37, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i35

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i35: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i36 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i36, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i35
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_1
begin_hunk_2_@_ZN7testing8internal24GenerateNamesRecursivelyINS0_20DefaultNameGeneratorENS0_5TypesIPKwJEEEEEvT0_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEi:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [10 x i32], align 4               ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7594)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7594
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !7595, !noalias !7594
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !7595, !noalias !7594
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !7595, !noalias !7594
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !7594

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !7594
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7594
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !7596
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !7596
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !7596
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !7597
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7594
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1077, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(40) @__const._ZN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestIA_wE8TestBodyEv.value, i64 40, i1 false), !tbaa.struct !299
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ay  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 11, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.391, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7598)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !7598 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !7598
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !7598 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !7598
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !7598
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !7598 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !7598
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !7599)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc32 unwind label %bb.bc

.noexc32:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !7599 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !7599 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7599
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7600
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !7600
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !7600
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7599 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7601
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7600
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !7600
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !7600
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !7601
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !7602)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7601
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !7601
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !7601
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !7601
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7601 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7601
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !7601
  %.not.i.i.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !7601
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7601
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !7601, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !7601, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1085, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i35, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv:bb.a
bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50, %.body
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50 ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn18.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [10 x i32], align 4               ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7621)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7621
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !7622, !noalias !7621
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !7622, !noalias !7621
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !7622, !noalias !7621
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !7621

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !7621
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7621
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !7623
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !7623
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !7623
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !7624
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7621
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1077, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(40) @__const._ZN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestIA_wE8TestBodyEv.value, i64 40, i1 false), !tbaa.struct !299
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ay  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 11, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.391, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7625)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !7625 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !7625
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !7625 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !7625
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !7625
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !7625 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !7625
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !7626)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc32 unwind label %bb.bc

.noexc32:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !7626 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !7626 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7626
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7627
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !7627
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !7627
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7626 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7628
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7627
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !7627
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !7627
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !7628
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !7629)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7628
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !7628
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !7628
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !7628
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7628 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7628
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !7628
  %.not.i.i.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !7628
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7628
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !7628, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !7628, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1085, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i35, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_161WideStringLogFormatTest_IsolatedLowSurrogatesAreReplaced_TestIPKwE8TestBodyEv:bb.a
bb.bk:                                            ; preds = %bb.bj, %.body
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.bj ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn17.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [10 x i32], align 4               ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7702)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7702
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !7703, !noalias !7702
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !7703, !noalias !7702
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !7703, !noalias !7702
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !7702

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !7702
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7702
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !7704
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !7704
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !7704
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !7705
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7702
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1094, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(40) @__const._ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestIA_wE8TestBodyEv.value, i64 40, i1 false), !tbaa.struct !299
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ay  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 11, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.391, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7706)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !7706 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !7706
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !7706 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !7706
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !7706
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !7706 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !7706
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !7707)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc32 unwind label %bb.bc

.noexc32:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !7707 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !7707 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7707
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7708
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !7708
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !7708
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7707 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7709
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7708
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !7708
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !7708
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !7709
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !7710)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7709
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !7709
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !7709
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !7709
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7709 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7709
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !7709
  %.not.i.i.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !7709
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7709
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !7709, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !7709, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1103, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i35, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv:bb.a
bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50, %.body
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50 ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn18.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [10 x i32], align 4               ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7729)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7729
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !7730, !noalias !7729
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !7730, !noalias !7729
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !7730, !noalias !7729
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !7729

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !7729
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7729
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !7731
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !7731
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !7731
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !7732
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7729
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1094, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(40) @__const._ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestIA_wE8TestBodyEv.value, i64 40, i1 false), !tbaa.struct !299
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ay  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 11, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.391, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7733)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !7733 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !7733
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !7733 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !7733
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !7733
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !7733 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !7733
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !7734)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc32 unwind label %bb.bc

.noexc32:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !7734 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !7734 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7734
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7735
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !7735
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !7735
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7734 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7736
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7735
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !7735
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !7735
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !7736
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !7737)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7736
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !7736
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !7736
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !7736
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7736 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7736
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !7736
  %.not.i.i.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !7736
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7736
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !7736, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !7736, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1103, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i35, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_IsolatedHighSurrogatesAreReplaced_TestIPKwE8TestBodyEv:bb.a
bb.bk:                                            ; preds = %bb.bj, %.body
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.bj ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn17.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [11 x i32], align 4               ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7810)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7810
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !7811, !noalias !7810
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !7811, !noalias !7810
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !7811, !noalias !7810
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !7810

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !7810
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7810
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !7812
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !7812
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !7812
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !7813
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7810
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1112, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.b, ptr noundef nonnull align 4 dereferenceable(44) @__const._ZN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestIA_wE8TestBodyEv.value, i64 44, i1 false), !tbaa.struct !300
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ay  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 14, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.394, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7814)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !7814 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !7814
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !7814 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !7814
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !7814
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !7814 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !7814
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !7815)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc32 unwind label %bb.bc

.noexc32:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !7815 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !7815 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7815
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7816
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !7816
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !7816
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7815 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7817
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7816
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !7816
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !7816
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !7817
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !7818)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7817
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !7817
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !7817
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !7817
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7817 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7817
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !7817
  %.not.i.i.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !7817
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7817
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !7817, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !7817, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1121, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i35, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv:bb.a
bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50, %.body
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50 ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn18.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [11 x i32], align 4               ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7837)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7837
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !7838, !noalias !7837
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !7838, !noalias !7837
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !7838, !noalias !7837
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !7837

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !7837
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7837
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !7839
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !7839
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !7839
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !7840
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7837
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1112, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.b, ptr noundef nonnull align 4 dereferenceable(44) @__const._ZN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestIA_wE8TestBodyEv.value, i64 44, i1 false), !tbaa.struct !300
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ay  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 14, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.394, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7841)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !7841 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !7841
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !7841 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !7841
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !7841
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !7841 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !7841
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !7842)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc32 unwind label %bb.bc

.noexc32:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !7842 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !7842 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7842
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7843
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !7843
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !7843
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7842 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7844
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7843
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !7843
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !7843
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !7844
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !7845)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7844
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !7844
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !7844
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !7844
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7844 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7844
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !7844
  %.not.i.i.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !7844
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7844
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !7844, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !7844, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1121, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i35, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_174WideStringLogFormatTest_DISABLED_ConsecutiveHighSurrogatesAreReplaced_TestIPKwE8TestBodyEv:bb.a
bb.bk:                                            ; preds = %bb.bj, %.body
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.bj ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn17.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [12 x i32], align 4               ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7918)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7918
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !7919, !noalias !7918
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !7919, !noalias !7918
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !7919, !noalias !7918
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !7918

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !7918
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7918
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !7920
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !7920
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !7920
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !7921
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7918
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1130, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(48) @__const._ZN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestIA_wE8TestBodyEv.value, i64 48, i1 false), !tbaa.struct !301
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ay  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 15, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.396, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7922)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !7922 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !7922
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !7922 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !7922
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !7922
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !7922 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !7922
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !7923)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc32 unwind label %bb.bc

.noexc32:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !7923 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !7923 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7923
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7924
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !7924
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !7924
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7923 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7925
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7924
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !7924
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !7924
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !7925
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !7926)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7925
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !7925
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !7925
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !7925
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7925 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7925
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !7925
  %.not.i.i.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !7925
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7925
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !7925, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !7925, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1139, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i35, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_8
begin_hunk_9_@_ZN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv:bb.a
bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50, %.body
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50 ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn18.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [12 x i32], align 4               ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7945)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7945
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !7946, !noalias !7945
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !7946, !noalias !7945
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !7946, !noalias !7945
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !7945

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !7945
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7945
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !7947
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !7947
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !7947
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !7948
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7945
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1130, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(48) @__const._ZN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestIA_wE8TestBodyEv.value, i64 48, i1 false), !tbaa.struct !301
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ay  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 15, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.396, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7949)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !7949 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !7949
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !7949 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !7949
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !7949
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !7949 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !7949
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !7950)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc32 unwind label %bb.bc

.noexc32:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !7950 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !7950 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7950
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7951
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !7951
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !7951
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7950 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7952
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7951
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !7951
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !7951
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !7952
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !7953)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !7952
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !7952
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !7952
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !7952
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !7952 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7952
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !7952
  %.not.i.i.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !7952
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !7952
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !7952, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !7952, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1139, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i35, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_9
begin_hunk_10_@_ZN12_GLOBAL__N_178WideStringLogFormatTest_DISABLED_HighHighLowSurrogateSequencesAreReplaced_TestIPKwE8TestBodyEv:bb.a
bb.bk:                                            ; preds = %bb.bj, %.body
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.bj ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn17.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [6 x i32], align 4                ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !8026)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8026
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !8027, !noalias !8026
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !8027, !noalias !8026
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !8027, !noalias !8026
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !8026

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !8026
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8026
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !8028
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !8028
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !8028
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !8029
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8026
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1148, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(24) @__const._ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestIA_wE8TestBodyEv.value, i64 24, i1 false), !tbaa.struct !302
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ay  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 7, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.398, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !8030)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !8030 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !8030
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !8030 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !8030
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !8030
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !8030 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !8030
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !8031)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc32 unwind label %bb.bc

.noexc32:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !8031 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !8031 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !8031
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8032
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !8032
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !8032
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !8031 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !8033
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8032
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !8032
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !8032
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !8033
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !8034)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8033
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !8033
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !8033
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !8033
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !8033 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !8033
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !8033
  %.not.i.i.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !8033
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !8033
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !8033, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !8033, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1157, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i35, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_10
begin_hunk_11_@_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv:bb.a
bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50, %.body
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50 ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn18.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [6 x i32], align 4                ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !8053)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8053
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !8054, !noalias !8053
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !8054, !noalias !8053
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !8054, !noalias !8053
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !8053

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !8053
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8053
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !8055
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !8055
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !8055
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !8056
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8053
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1148, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.ax

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(24) @__const._ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestIA_wE8TestBodyEv.value, i64 24, i1 false), !tbaa.struct !302
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ay  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIS5_EELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.t unwind label %bb.az      ; 4 uses

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.bd, align 4, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 7, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.398, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !8057)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !8057 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68, !alias.scope !8057
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !8057 ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55, !alias.scope !8057
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bl = inttoptr i64 %i.bk to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85, !noalias !8057
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bo = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4, !noalias !8057 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !8057
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.x unwind label %bb.bb

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !8058)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc32 unwind label %bb.bc

.noexc32:                                         ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !8058 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55, !noalias !8058 ; 4 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !8058
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8059
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !68, !alias.scope !8059
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !55, !alias.scope !8059
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bz = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !8058 ; 0 uses
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !8060
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8059
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.cb, align 8, !tbaa !68, !alias.scope !8059
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !55, !alias.scope !8059
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.bw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cd, align 8, !tbaa !35, !alias.scope !8060
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.y:                                             ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !8061)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8060
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cf, align 8, !tbaa !68, !alias.scope !8060
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bs, ptr %i.cg, align 8, !tbaa !55, !alias.scope !8060
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ce, align 8, !tbaa !35, !alias.scope !8060
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4, !noalias !8060 ; 0 uses
  %.pr.i = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !8060
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.ca, align 8, !tbaa !35, !alias.scope !8060
  %.not.i.i.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.ci = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4, !noalias !8060
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !85, !noalias !8060
  invoke void %i.ck(ptr noundef %i.bt)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.ab, !noalias !8060, !inline_history !3

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35, !noalias !8060, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.aa, %bb.z, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1157, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.249)
          to label %bb.ad unwind label %bb.bd     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.co, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %.not.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i35, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit36, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
end_hunk_11
begin_hunk_12_@_ZN12_GLOBAL__N_171WideStringLogFormatTest_DISABLED_TrailingHighSurrogatesAreReplaced_TestIPKwE8TestBodyEv:bb.a
bb.bk:                                            ; preds = %bb.bj, %.body
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.bj ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn17.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [1 x i32], align 4                ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.av

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !8134)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8134
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !8135, !noalias !8134
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !8135, !noalias !8134
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !8135, !noalias !8134
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !8134

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !8134
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8134
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !8136
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !8136
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !8136
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !8137
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8134
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1165, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.aw

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ax  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIPKcEELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  store ptr @.str.4, ptr %i.bc, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.t unwind label %bb.ay

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !8138)
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !68, !noalias !8138 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !68, !alias.scope !8138
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !55, !noalias !8138 ; 2 uses
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !55, !alias.scope !8138
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  %i.bj = inttoptr i64 %i.bi to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.v, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !85, !noalias !8138
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bm = atomicrmw add ptr %i.bj, i32 1 monotonic, align 4, !noalias !8138 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !8138
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.w unwind label %bb.az

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !8139)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc31 unwind label %bb.ba

.noexc31:                                         ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !68, !noalias !8139 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !55, !noalias !8139 ; 4 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 4 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i28, label %bb.x, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !85, !noalias !8139
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8140
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bo, ptr %i.bv, align 8, !tbaa !68, !alias.scope !8140
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bq, ptr %i.bw, align 8, !tbaa !55, !alias.scope !8140
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bx = atomicrmw add ptr %i.br, i32 1 monotonic, align 4, !noalias !8139 ; 0 uses
  %.pr = load ptr, ptr %i.bs, align 8, !tbaa !85, !noalias !8141
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8140
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bo, ptr %i.bz, align 8, !tbaa !68, !alias.scope !8140
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bq, ptr %i.ca, align 8, !tbaa !55, !alias.scope !8140
  %.not.i.i.i.i.i.i.i.i29 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i29, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cb = phi ptr [ %i.bu, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.by, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cb, align 8, !tbaa !35, !alias.scope !8141
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.x:                                             ; preds = %.noexc31
  call void @llvm.experimental.noalias.scope.decl(metadata !8142)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8141
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cd, align 8, !tbaa !68, !alias.scope !8141
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bq, ptr %i.ce, align 8, !tbaa !55, !alias.scope !8141
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cc, align 8, !tbaa !35, !alias.scope !8141
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cf = atomicrmw add ptr %i.br, i32 1 monotonic, align 4, !noalias !8141 ; 0 uses
  %.pr.i = load ptr, ptr %i.bs, align 8, !tbaa !85, !noalias !8141
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.by, align 8, !tbaa !35, !alias.scope !8141
  %.not.i.i.i.i.i30 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i30, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.cg = atomicrmw add ptr %i.br, i32 -1 acq_rel, align 4, !noalias !8141
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.z, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.z:                                             ; preds = %bb.y
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !85, !noalias !8141
  invoke void %i.ci(ptr noundef %i.br)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.aa, !noalias !8141, !inline_history !3

bb.aa:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #35, !noalias !8141, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.z, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.x, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ab unwind label %bb.bb

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.400)
          to label %bb.ac unwind label %bb.bb     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i32, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit35, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i33

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i33: ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !85
  %.not.i.i.i.i34 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i34, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit35, label %bb.ad

bb.ad:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i33
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !55
  %i.ct = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.ae, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit35

bb.ae:                                            ; preds = %bb.ad
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !85
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !55
end_hunk_12
begin_hunk_13_@_ZN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv:bb.a
bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit49, %.body
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit49 ], [ %.pn, %.body ]
  call void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn18.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i64 16), ptr %i.a, align 8, !tbaa !35
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_144WideStringLogFormatTest_EmptyWideString_TestIKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.359", align 8 ; 12 uses
  %i.b = alloca [1 x i32], align 4                ; 7 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.197", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.92", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %3, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.av

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !8161)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8161
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !8162, !noalias !8161
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !68, !alias.scope !8162, !noalias !8161
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !35, !alias.scope !8162, !noalias !8161
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %bb.d unwind label %bb.c, !noalias !8161

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30, !noalias !8161
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8161
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !8163
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !68, !alias.scope !8163
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !55, !alias.scope !8163
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35, !alias.scope !8164
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8161
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i32 noundef 1165, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190)
          to label %bb.e unwind label %bb.aw

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 0)
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !81
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !2
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body23

bb.m:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %.not.i.i.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i26, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !55
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35, !inline_history !86
  unreachable

_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %bb.m, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !286
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !59
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.ax  ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !288
  %i.as = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit
  %i.at = phi i64 [ %i.as, %.noexc27 ], [ %i.ap, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %.noexc27 ], [ %i.ao, %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit ] ; 4 uses
  switch i64 %i.ap, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %i.b, align 4, !tbaa !297
  store i32 %i.av, ptr %i.au, align 4, !tbaa !297
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = call ptr @wmemcpy(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef %i.ap) #30 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.ax = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.q ], [ %.pre7.i.i, %bb.r ]
  %i.ay = phi i64 [ %i.at, %._crit_edge.i.i ], [ %i.at, %bb.q ], [ %.pre6.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !298
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherIPKcEELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !101
  store ptr @.str.4, ptr %i.bc, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %10, align 8, !tbaa !35
  invoke void @_ZN4absl12lts_2026052612log_internal11TextMessageERKN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.t unwind label %bb.ay

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !8165)
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !68, !noalias !8165 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !68, !alias.scope !8165
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !55, !noalias !8165 ; 2 uses
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !55, !alias.scope !8165
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  %i.bj = inttoptr i64 %i.bi to ptr
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.v, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !85, !noalias !8165
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.bm = atomicrmw add ptr %i.bj, i32 1 monotonic, align 4, !noalias !8165 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %8, align 8, !tbaa !35, !alias.scope !8165
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_15AnythingMatcherEEEcvNS3_IT_EEIS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.w unwind label %bb.az

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !8166)
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %3)
          to label %.noexc31 unwind label %bb.ba

.noexc31:                                         ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !68, !noalias !8166 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !55, !noalias !8166 ; 4 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 4 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i28, label %bb.x, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %.noexc31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !85, !noalias !8166
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8167
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bo, ptr %i.bv, align 8, !tbaa !68, !alias.scope !8167
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bq, ptr %i.bw, align 8, !tbaa !55, !alias.scope !8167
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.bx = atomicrmw add ptr %i.br, i32 1 monotonic, align 4, !noalias !8166 ; 0 uses
  %.pr = load ptr, ptr %i.bs, align 8, !tbaa !85, !noalias !8168
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8167
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bo, ptr %i.bz, align 8, !tbaa !68, !alias.scope !8167
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bq, ptr %i.ca, align 8, !tbaa !55, !alias.scope !8167
  %.not.i.i.i.i.i.i.i.i29 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i29, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cb = phi ptr [ %i.bu, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.thread ], [ %i.by, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cb, align 8, !tbaa !35, !alias.scope !8168
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.x:                                             ; preds = %.noexc31
  call void @llvm.experimental.noalias.scope.decl(metadata !8169)
  store ptr %i.e, ptr %6, align 8, !tbaa !75, !alias.scope !8168
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.cd, align 8, !tbaa !68, !alias.scope !8168
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bq, ptr %i.ce, align 8, !tbaa !55, !alias.scope !8168
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cc, align 8, !tbaa !35, !alias.scope !8168
  br label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.cf = atomicrmw add ptr %i.br, i32 1 monotonic, align 4, !noalias !8168 ; 0 uses
  %.pr.i = load ptr, ptr %i.bs, align 8, !tbaa !85, !noalias !8168
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.by, align 8, !tbaa !35, !alias.scope !8168
  %.not.i.i.i.i.i30 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i30, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.cg = atomicrmw add ptr %i.br, i32 -1 acq_rel, align 4, !noalias !8168
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.z, label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit

bb.z:                                             ; preds = %bb.y
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !85, !noalias !8168
  invoke void %i.ci(ptr noundef %i.br)
          to label %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit unwind label %bb.aa, !noalias !8168, !inline_history !3

bb.aa:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #35, !noalias !8168, !inline_history !86
  unreachable

_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit: ; preds = %bb.z, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.x, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.thread.i
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.ab unwind label %bb.bb

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052613ScopedMockLog10gmock_SendERKN7testing7MatcherIRKNS0_8LogEntryEEE.exit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.400)
          to label %bb.ac unwind label %bb.bb     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i32, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit35, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i33

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i33: ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !85
  %.not.i.i.i.i34 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i34, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit35, label %bb.ad

bb.ad:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i33
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !55
  %i.ct = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.ae, label %_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit35

bb.ae:                                            ; preds = %bb.ad
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !85
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !55
end_hunk_13
