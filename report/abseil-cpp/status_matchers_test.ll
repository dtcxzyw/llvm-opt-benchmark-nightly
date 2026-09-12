Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/status_matchers_test?download=true
inline.NumInlined: 3895
inline.NumDeleted: 1489
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7testing7MatcherIRKN4absl12lts_202605268StatusOrIiEEED0Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEED2Ev.exit unwind label %bb.d, !inline_history !7

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23, !inline_history !126
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.37, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.38, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEEE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEED2Ev.exit unwind label %bb.d, !inline_history !7

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23, !inline_history !126
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEE19MatchAndExplainImplINS8_11ValuePolicyIPKNS_16MatcherInterfaceIS7_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKS8_S7_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEE12DescribeImplINS8_11ValuePolicyIPKNS_16MatcherInterfaceIS7_EELb1EEEEEvRKS8_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %. = select i1 %2, i64 24, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIiEEE16GetDescriberImplINS8_11ValuePolicyIPKNS_16MatcherInterfaceIS7_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIiEEEESt14default_deleteISB_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIiEEEESt14default_deleteISB_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIiEEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIiEEEEEclEPS9_.exit.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22, !inline_history !416
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIiEEEESt14default_deleteISB_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIiEEEESt14default_deleteISB_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIiEEEEEclEPS9_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIiEEEESt14default_deleteISB_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsIiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS6_RKNS0_8StatusOrIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !62
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZNKR4absl12lts_2026052617internal_statusor12OperatorBaseIiE5valueEv.exit, label %bb.b

_ZNKR4absl12lts_2026052617internal_statusor12OperatorBaseIiE5valueEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.d) ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = lshr i64 ptrtoint (ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces to i64), 4
  %3 = trunc i64 %2 to i32
  %i.i = and i32 %3, 3
  store i32 %i.i, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.k = load i32, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %switch.tableidx = add i32 %i.k, -1             ; 3 uses
  %i.l = icmp ult i32 %switch.tableidx, 3
  br i1 %i.l, label %switch.lookup, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit

switch.lookup:                                    ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i
  %i.m = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE, i64 %i.m
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.n = zext nneg i32 %switch.tableidx to i64
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.12, i64 %i.n
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %switch.ext = zext i8 %switch.load15 to i64
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit: ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, %switch.lookup
  %.sroa.6.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.50, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i ]
  %.sroa.0.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 1, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i ]
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sroa.6.0.i, i64 noundef %.sroa.0.0.i)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.q = load atomic i8, ptr @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8, !prof !127

bb.e:                                             ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  %.not.i.i13 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i13, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8, label %bb.f

bb.f:                                             ; preds = %bb.e
  %4 = lshr i64 ptrtoint (ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces to i64), 4
  %5 = trunc i64 %4 to i32
  %i.t = and i32 %5, 3
  store i32 %i.t, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %i.u = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8: ; preds = %bb.f, %bb.e, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit
  %i.v = load i32, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %switch.tableidx16 = add i32 %i.v, -1           ; 3 uses
  %i.w = icmp ult i32 %switch.tableidx16, 3
  br i1 %i.w, label %switch.lookup17, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit

switch.lookup17:                                  ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8
  %i.x = zext nneg i32 %switch.tableidx16 to i64
  %switch.gep18 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.11, i64 %i.x
  %switch.load19 = load ptr, ptr %switch.gep18, align 8
  %i.y = zext nneg i32 %switch.tableidx16 to i64
  %switch.gep20 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.12, i64 %i.y
  %switch.load21 = load i8, ptr %switch.gep20, align 1
  %switch.ext22 = zext i8 %switch.load21 to i64
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit: ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8, %switch.lookup17
  %.sroa.6.0.i9 = phi ptr [ %switch.load19, %switch.lookup17 ], [ @.str.34, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8 ]
  %.sroa.0.0.i10 = phi i64 [ %switch.ext22, %switch.lookup17 ], [ 1, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8 ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %.sroa.6.0.i9, i64 noundef %.sroa.0.0.i10) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit, %_ZNKR4absl12lts_2026052617internal_statusor12OperatorBaseIiE5valueEv.exit
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136StatusMatcherTest_StatusIsNotOk_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136StatusMatcherTest_StatusIsNotOk_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_136StatusMatcherTest_StatusIsNotOk_TestE, i64 16), ptr %i.a, align 8, !tbaa !49
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_136StatusMatcherTest_StatusIsNotOk_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_136StatusMatcherTest_StatusIsNotOk_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %2 = alloca %"class.testing::TestPartResultArray", align 8 ; 11 uses
  %3 = alloca %"class.testing::internal::SingleFailureChecker", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::ScopedFakeTestPartResultReporter", align 8 ; 6 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %7 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 1 ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi2EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %1, i64 6, ptr nonnull @.str.57, i64 77, ptr nonnull @.str.2)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.a, ptr %4, align 8, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.57, i64 6, i1 false)
  store i64 6, ptr %i.b, align 8, !tbaa !84
  store i8 0, ptr %i.f, align 2, !tbaa !82
  invoke void @_ZN7testing8internal20SingleFailureCheckerC1EPKNS_19TestPartResultArrayENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %4, align 8, !tbaa !79     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.a, align 8, !tbaa !82
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing32ScopedFakeTestPartResultReporterC1ENS0_13InterceptModeEPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal11IsOkMatcherEEclIN4absl12lts_202605266StatusEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull @.str.58, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.l = load i8, ptr %6, align 8, !tbaa !72, !range !73, !noundef !74
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.t, label %bb.k

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !79     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.g
  %i.q = load i64, ptr %i.a, align 8, !tbaa !82
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ae

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.i:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.j:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.m, %bb.l
  %i.x = phi ptr [ %i.w, %bb.m ], [ @.str.48, %bb.l ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 78, ptr noundef %i.x)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZN7testing7MatcherIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED0Ev:bb.a
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit unwind label %bb.d, !inline_history !10

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23, !inline_history !147
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.37, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.38, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEEE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit unwind label %bb.d, !inline_history !10

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23, !inline_history !147
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEE19MatchAndExplainImplINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSC_SB_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEE12DescribeImplINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEvRKSC_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %. = select i1 %2, i64 24, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEE16GetDescriberImplINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEEESt14default_deleteISF_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEEESt14default_deleteISF_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEEEEclEPSD_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEEEEclEPSD_.exit.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22, !inline_history !583
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEEESt14default_deleteISF_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEEESt14default_deleteISF_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEEEEclEPSD_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEEEESt14default_deleteISF_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsISt17basic_string_viewIcSt11char_traitsIcEETnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoSA_RKNS0_8StatusOrIS7_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !62
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZNKR4absl12lts_2026052617internal_statusor12OperatorBaseISt17basic_string_viewIcSt11char_traitsIcEEE5valueEv.exit, label %bb.b

_ZNKR4absl12lts_2026052617internal_statusor12OperatorBaseISt17basic_string_viewIcSt11char_traitsIcEEE5valueEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0.copyload = load i64, ptr %i.c, align 8, !tbaa !115
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !136
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.sroa.24.0.copyload, i64 noundef %.sroa.03.0.copyload) ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = lshr i64 ptrtoint (ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces to i64), 4
  %3 = trunc i64 %2 to i32
  %i.h = and i32 %3, 3
  store i32 %i.h, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.j = load i32, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %switch.tableidx = add i32 %i.j, -1             ; 3 uses
  %i.k = icmp ult i32 %switch.tableidx, 3
  br i1 %i.k, label %switch.lookup, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit

switch.lookup:                                    ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i
  %i.l = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE, i64 %i.l
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.m = zext nneg i32 %switch.tableidx to i64
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.12, i64 %i.m
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %switch.ext = zext i8 %switch.load17 to i64
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit: ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, %switch.lookup
  %.sroa.6.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.50, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i ]
  %.sroa.0.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 1, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i ]
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sroa.6.0.i, i64 noundef %.sroa.0.0.i)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.p = load atomic i8, ptr @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i10, !prof !127

bb.e:                                             ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit
  %i.r = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  %.not.i.i15 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i15, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i10, label %bb.f

bb.f:                                             ; preds = %bb.e
  %4 = lshr i64 ptrtoint (ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces to i64), 4
  %5 = trunc i64 %4 to i32
  %i.s = and i32 %5, 3
  store i32 %i.s, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i10

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i10: ; preds = %bb.f, %bb.e, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit
  %i.u = load i32, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %switch.tableidx18 = add i32 %i.u, -1           ; 3 uses
  %i.v = icmp ult i32 %switch.tableidx18, 3
  br i1 %i.v, label %switch.lookup19, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit

switch.lookup19:                                  ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i10
  %i.w = zext nneg i32 %switch.tableidx18 to i64
  %switch.gep20 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.11, i64 %i.w
  %switch.load21 = load ptr, ptr %switch.gep20, align 8
  %i.x = zext nneg i32 %switch.tableidx18 to i64
  %switch.gep22 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.12, i64 %i.x
  %switch.load23 = load i8, ptr %switch.gep22, align 1
  %switch.ext24 = zext i8 %switch.load23 to i64
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit: ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i10, %switch.lookup19
  %.sroa.6.0.i11 = phi ptr [ %switch.load21, %switch.lookup19 ], [ @.str.34, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i10 ]
  %.sroa.0.0.i12 = phi i64 [ %switch.ext24, %switch.lookup19 ], [ 1, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i10 ]
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %.sroa.6.0.i11, i64 noundef %.sroa.0.0.i12) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit, %_ZNKR4absl12lts_2026052617internal_statusor12OperatorBaseISt17basic_string_viewIcSt11char_traitsIcEEE5valueEv.exit
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142StatusMatcherTest_IsOkAndHoldsFailure_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142StatusMatcherTest_IsOkAndHoldsFailure_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_142StatusMatcherTest_IsOkAndHoldsFailure_TestE, i64 16), ptr %i.a, align 8, !tbaa !49
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_142StatusMatcherTest_IsOkAndHoldsFailure_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_142StatusMatcherTest_IsOkAndHoldsFailure_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::StatusOr", align 8 ; 8 uses
  %2 = alloca %"class.absl::lts_20260526::StatusOr", align 8 ; 7 uses
  %3 = alloca %"class.absl::lts_20260526::Status", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20260526::StatusOr.88", align 8 ; 9 uses
  %5 = alloca %"class.testing::TestPartResultArray", align 8 ; 11 uses
  %6 = alloca %"class.testing::internal::SingleFailureChecker", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.testing::ScopedFakeTestPartResultReporter", align 8 ; 6 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %10 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.97", align 4 ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::TestPartResultArray", align 8 ; 11 uses
  %14 = alloca %"class.testing::internal::SingleFailureChecker", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.testing::ScopedFakeTestPartResultReporter", align 8 ; 6 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.97", align 4 ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::TestPartResultArray", align 8 ; 11 uses
  %22 = alloca %"class.testing::internal::SingleFailureChecker", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.testing::ScopedFakeTestPartResultReporter", align 8 ; 6 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.100", align 8 ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 502, ptr %i.a, align 8, !tbaa !82
  store i64 1, ptr %1, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi2EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %3, i64 6, ptr nonnull @.str.57, i64 96, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.g

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !62, !alias.scope !591 ; 2 uses
  %i.c = icmp ne i64 %i.b, 1
  call void @llvm.assume(i1 %i.c)
  store i64 %i.b, ptr %2, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.d, align 8, !tbaa !131
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.69, ptr %i.e, align 8, !tbaa !132
  store i64 1, ptr %4, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.f, ptr %7, align 8, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.70, i64 3, i1 false)
  store i64 3, ptr %i.g, align 8, !tbaa !84
  store i8 0, ptr %i.k, align 1, !tbaa !82
  invoke void @_ZN7testing8internal20SingleFailureCheckerC1EPKNS_19TestPartResultArrayENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load ptr, ptr %7, align 8, !tbaa !79     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.f, align 8, !tbaa !82
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN7testing32ScopedFakeTestPartResultReporterC1ENS0_13InterceptModeEPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 0, ptr noundef nonnull %5)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store i32 0, ptr %10, align 4
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherIiEEEclIN4absl12lts_202605268StatusOrIiEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull @.str.49, ptr noundef nonnull align 8 dereferenceable(12) %1)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.q = load i8, ptr %9, align 8, !tbaa !72, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.u, label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.cm

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %7, align 8, !tbaa !79     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.h
  %i.w = load i64, ptr %i.f, align 8, !tbaa !82
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ah

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag
end_hunk_1
begin_hunk_2_@_ZN7testing7MatcherIRKN4absl12lts_202605268StatusOrIRiEEED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !247
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit unwind label %bb.d, !inline_history !28

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23, !inline_history !248
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.37, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.38, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !247
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit unwind label %bb.d, !inline_history !28

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23, !inline_history !248
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE19MatchAndExplainImplINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKS9_S8_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !242  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE12DescribeImplINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEvRKS9_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !242  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %. = select i1 %2, i64 24, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE16GetDescriberImplINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !242
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRiEEEESt14default_deleteISC_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !242  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRiEEEESt14default_deleteISC_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRiEEEEEclEPSA_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRiEEEEEclEPSA_.exit.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22, !inline_history !1313
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRiEEEESt14default_deleteISC_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRiEEEESt14default_deleteISC_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRiEEEEEclEPSA_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRiEEEESt14default_deleteISC_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsIRiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS7_RKNS0_8StatusOrIS4_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !62
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZNK4absl12lts_2026052617internal_statusor12OperatorBaseIRiE5valueEv.exit, label %bb.b

_ZNK4absl12lts_2026052617internal_statusor12OperatorBaseIRiE5valueEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.e = load i32, ptr %i.d, align 4, !tbaa !114
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.e) ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i8, ptr @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = lshr i64 ptrtoint (ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces to i64), 4
  %3 = trunc i64 %2 to i32
  %i.j = and i32 %3, 3
  store i32 %i.j, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.l = load i32, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %switch.tableidx = add i32 %i.l, -1             ; 3 uses
  %i.m = icmp ult i32 %switch.tableidx, 3
  br i1 %i.m, label %switch.lookup, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit

switch.lookup:                                    ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i
  %i.n = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE, i64 %i.n
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.o = zext nneg i32 %switch.tableidx to i64
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.12, i64 %i.o
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %switch.ext = zext i8 %switch.load15 to i64
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit: ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, %switch.lookup
  %.sroa.6.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.50, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i ]
  %.sroa.0.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 1, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sroa.6.0.i, i64 noundef %.sroa.0.0.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.r = load atomic i8, ptr @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8, !prof !127

bb.e:                                             ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit
  %i.t = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  %.not.i.i13 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i13, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8, label %bb.f

bb.f:                                             ; preds = %bb.e
  %4 = lshr i64 ptrtoint (ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces to i64), 4
  %5 = trunc i64 %4 to i32
  %i.u = and i32 %5, 3
  store i32 %i.u, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8: ; preds = %bb.f, %bb.e, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit
  %i.w = load i32, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %switch.tableidx16 = add i32 %i.w, -1           ; 3 uses
  %i.x = icmp ult i32 %switch.tableidx16, 3
  br i1 %i.x, label %switch.lookup17, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit

switch.lookup17:                                  ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8
  %i.y = zext nneg i32 %switch.tableidx16 to i64
  %switch.gep18 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.11, i64 %i.y
  %switch.load19 = load ptr, ptr %switch.gep18, align 8
  %i.z = zext nneg i32 %switch.tableidx16 to i64
  %switch.gep20 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.12, i64 %i.z
  %switch.load21 = load i8, ptr %switch.gep20, align 1
  %switch.ext22 = zext i8 %switch.load21 to i64
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit: ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8, %switch.lookup17
  %.sroa.6.0.i9 = phi ptr [ %switch.load19, %switch.lookup17 ], [ @.str.34, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8 ]
  %.sroa.0.0.i10 = phi i64 [ %switch.ext22, %switch.lookup17 ], [ 1, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8 ]
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %.sroa.6.0.i9, i64 noundef %.sroa.0.0.i10) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit, %_ZNK4absl12lts_2026052617internal_statusor12OperatorBaseIRiE5valueEv.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal10NotMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherIiEEEcvNS_7MatcherIT_EEIRKN4absl12lts_202605268StatusOrIRiEEEEv(ptr dead_on_unwind noalias writable sret(%"class.testing::Matcher.285") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Matcher.285", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc unwind label %bb.g     ; 5 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12absl_testing12lts_2026052615status_internal23IsOkAndHoldsMatcherImplIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %i.b, align 8, !tbaa !49, !noalias !1337
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.d = load i32, ptr %1, align 4, !tbaa !114, !noalias !1342
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !1343, !noalias !1337
  store ptr @_ZZN7testing8internal11MatcherBaseIRiE9GetVTableINS3_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS3_6VTableEvE7kVTable, ptr %i.e, align 8, !tbaa !237, !alias.scope !1343, !noalias !1337
  store i32 %i.d, ptr %i.f, align 8, !alias.scope !1343, !noalias !1337
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRiEE, i64 16), ptr %i.c, align 8, !tbaa !49, !alias.scope !1343, !noalias !1337
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE9GetVTableINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !240, !alias.scope !1337
  %i.i = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %.noexc
  store i32 1, ptr %i.i, align 4, !tbaa !96, !noalias !1337
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = ptrtoint ptr %i.b to i64
  store i64 %i.k, ptr %i.j, align 8, !tbaa !242, !noalias !1337
  store ptr %i.i, ptr %i.h, align 8, !tbaa !82, !alias.scope !1337
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %2, align 8, !tbaa !49, !alias.scope !1337
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal14NotMatcherImplIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %i.a, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE9GetVTableINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.m, align 8, !tbaa !240
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = ptrtoint ptr %i.i to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !82
  %i.p = atomicrmw add ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %i.l, align 8, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %0, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE9GetVTableINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !240
  %i.s = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.c unwind label %bb.f       ; 3 uses

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.s, align 4, !tbaa !96
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = ptrtoint ptr %i.a to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !242
  store ptr %i.s, ptr %i.r, align 8, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %0, align 8, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %2, align 8, !tbaa !49
  %i.v = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.d, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !240
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !247
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !82
  invoke void %i.z(ptr noundef %i.aa)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit unwind label %bb.e, !inline_history !28

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #23, !inline_history !248
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.f:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.a, %.noexc
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.ae, %bb.g ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal14NotMatcherImplIRKN4absl12lts_202605268StatusOrIRiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal14NotMatcherImplIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !247
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = atomicrmw sub ptr %i.g, i32 1 acq_rel, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !247
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !82
  invoke void %i.l(ptr noundef %i.m)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit unwind label %bb.d, !inline_history !28

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #23, !inline_history !248
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal14NotMatcherImplIRKN4absl12lts_202605268StatusOrIRiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal14NotMatcherImplIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal14NotMatcherImplIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !247
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal14NotMatcherImplIRKN4absl12lts_202605268StatusOrIRiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRiEEE8IsSharedEv.exit.i.i.i
end_hunk_2
begin_hunk_3_@_ZN7testing7MatcherIRKN4absl12lts_202605268StatusOrIRKiEEED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !257
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEED2Ev.exit unwind label %bb.d, !inline_history !29

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23, !inline_history !258
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.37, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.38, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !256
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEEE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !257
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEED2Ev.exit unwind label %bb.d, !inline_history !29

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23, !inline_history !258
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEE19MatchAndExplainImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSA_S9_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !253  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEE12DescribeImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEvRKSA_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !253  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %. = select i1 %2, i64 24, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIRKiEEE16GetDescriberImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !253
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRKiEEEESt14default_deleteISD_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !253  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRKiEEEESt14default_deleteISD_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRKiEEEEEclEPSB_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRKiEEEEEclEPSB_.exit.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22, !inline_history !1362
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRKiEEEESt14default_deleteISD_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRKiEEEESt14default_deleteISD_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRKiEEEEEclEPSB_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrIRKiEEEESt14default_deleteISD_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !62
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZNK4absl12lts_2026052617internal_statusor12OperatorBaseIRKiE5valueEv.exit, label %bb.b

_ZNK4absl12lts_2026052617internal_statusor12OperatorBaseIRKiE5valueEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.e = load i32, ptr %i.d, align 4, !tbaa !114
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.e) ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i8, ptr @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = lshr i64 ptrtoint (ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces to i64), 4
  %3 = trunc i64 %2 to i32
  %i.j = and i32 %3, 3
  store i32 %i.j, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.l = load i32, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %switch.tableidx = add i32 %i.l, -1             ; 3 uses
  %i.m = icmp ult i32 %switch.tableidx, 3
  br i1 %i.m, label %switch.lookup, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit

switch.lookup:                                    ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i
  %i.n = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE, i64 %i.n
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.o = zext nneg i32 %switch.tableidx to i64
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.12, i64 %i.o
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %switch.ext = zext i8 %switch.load15 to i64
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit: ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i, %switch.lookup
  %.sroa.6.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.50, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i ]
  %.sroa.0.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 1, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sroa.6.0.i, i64 noundef %.sroa.0.0.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.r = load atomic i8, ptr @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8, !prof !127

bb.e:                                             ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit
  %i.t = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  %.not.i.i13 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i13, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8, label %bb.f

bb.f:                                             ; preds = %bb.e
  %4 = lshr i64 ptrtoint (ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces to i64), 4
  %5 = trunc i64 %4 to i32
  %i.u = and i32 %5, 3
  store i32 %i.u, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces) #22
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8: ; preds = %bb.f, %bb.e, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12OpenBracketsEv.exit
  %i.w = load i32, ptr @_ZZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEvE13kRandomBraces, align 4, !tbaa !129
  %switch.tableidx16 = add i32 %i.w, -1           ; 3 uses
  %i.x = icmp ult i32 %switch.tableidx16, 3
  br i1 %i.x, label %switch.lookup17, label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit

switch.lookup17:                                  ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8
  %i.y = zext nneg i32 %switch.tableidx16 to i64
  %switch.gep18 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.11, i64 %i.y
  %switch.load19 = load ptr, ptr %switch.gep18, align 8
  %i.z = zext nneg i32 %switch.tableidx16 to i64
  %switch.gep20 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4absl12lts_20260526lsIRKiTnNSt9enable_ifIXsr4absl18HasOstreamOperatorIT_EE5valueEiE4typeELi0EEERSoS8_RKNS0_8StatusOrIS5_EE.12, i64 %i.z
  %switch.load21 = load i8, ptr %switch.gep20, align 1
  %switch.ext22 = zext i8 %switch.load21 to i64
  br label %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit

_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit: ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8, %switch.lookup17
  %.sroa.6.0.i9 = phi ptr [ %switch.load19, %switch.lookup17 ], [ @.str.34, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8 ]
  %.sroa.0.0.i10 = phi i64 [ %switch.ext22, %switch.lookup17 ], [ 1, %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom12RandomBracesEv.exit.i8 ]
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %.sroa.6.0.i9, i64 noundef %.sroa.0.0.i10) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052617internal_statusor15StringifyRandom13CloseBracketsEv.exit, %_ZNK4absl12lts_2026052617internal_statusor12OperatorBaseIRKiE5valueEv.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRiE19MatchAndExplainImplINS3_11ValuePolicyIPKNS_16MatcherInterfaceIS2_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKS3_S2_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRiE12DescribeImplINS3_11ValuePolicyIPKNS_16MatcherInterfaceIS2_EELb1EEEEEvRKS3_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %. = select i1 %2, i64 24, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRiE16GetDescriberImplINS3_11ValuePolicyIPKNS_16MatcherInterfaceIS2_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRiEESt14default_deleteIS6_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRiEESt14default_deleteIS6_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRiEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRiEEEclEPS4_.exit.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22, !inline_history !1363
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRiEESt14default_deleteIS6_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRiEESt14default_deleteIS6_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRiEEEclEPS4_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRiEESt14default_deleteIS6_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal10RefMatcherIRiE4ImplIiED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal10RefMatcherIRiE4ImplIiE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.116, i64 noundef 24) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !282, !nonnull !74, !align !261 ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.117, i64 noundef 1) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.61, i64 noundef 1) ; 0 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !114
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.g) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal10RefMatcherIRiE4ImplIiE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.118, i64 noundef 32) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !282, !nonnull !74, !align !261 ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.117, i64 noundef 1) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.61, i64 noundef 1) ; 0 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !114
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.g) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal10RefMatcherIRiE4ImplIiE15MatchAndExplainES2_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN7testing19MatchResultListenerlsIPKvEERS0_RKT_.exit, label %_ZN7testing19MatchResultListenerlsIA19_cEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsIA19_cEERS0_RKT_.exit: ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.119, i64 noundef 18) ; 0 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %.not.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i4, label %_ZN7testing19MatchResultListenerlsIPKvEERS0_RKT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA19_cEERS0_RKT_.exit
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr, ptr noundef nonnull %1) ; 0 uses
  br label %_ZN7testing19MatchResultListenerlsIPKvEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsIPKvEERS0_RKT_.exit: ; preds = %bb.a, %_ZN7testing19MatchResultListenerlsIA19_cEERS0_RKT_.exit, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !282, !nonnull !74, !align !261
  %i.g = icmp eq ptr %1, %i.f
  ret i1 %i.g
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal10NotMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherINS0_10RefMatcherIRiEEEEEcvNS_7MatcherIT_EEIRKN4absl12lts_202605268StatusOrIS7_EEEEv(ptr dead_on_unwind noalias writable sret(%"class.testing::Matcher.285") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Matcher.285", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12absl_testing12lts_2026052615status_internal23IsOkAndHoldsMatcherImplIRKN4absl12lts_202605268StatusOrIRiEEEE, i64 16), ptr %i.b, align 8, !tbaa !49, !noalias !1391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.c = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %.noexc.i.i.i.i.i unwind label %bb.b, !noalias !1391 ; 3 uses

.noexc.i.i.i.i.i:                                 ; preds = %.noexc
  %i.d = load ptr, ptr %1, align 8, !tbaa !260, !noalias !1397, !nonnull !74, !align !261
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal10RefMatcherIRiE4ImplIiEE, i64 16), ptr %i.c, align 8, !tbaa !49, !noalias !1397
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !262, !noalias !1397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZZN7testing8internal11MatcherBaseIRiE9GetVTableINS3_11ValuePolicyIPKNS_16MatcherInterfaceIS2_EELb1EEEEEPKNS3_6VTableEvE7kVTable, ptr %i.f, align 8, !tbaa !237, !alias.scope !1399, !noalias !1391
  %i.g = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %_ZN7testing11MatcherCastIRKN4absl12lts_202605268StatusOrIRiEEN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherINS_8internal10RefMatcherIS4_EEEEEENS_7MatcherIT_EERKT0_.exit.i unwind label %bb.b, !noalias !1391 ; 3 uses

bb.b:                                             ; preds = %.noexc.i.i.i.i.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #24, !noalias !1391
  br label %bb.h

end_hunk_3
