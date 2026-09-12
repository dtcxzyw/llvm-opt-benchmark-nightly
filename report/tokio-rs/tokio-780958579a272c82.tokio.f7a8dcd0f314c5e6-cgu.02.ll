Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.02?download=true
inline.NumInlined: 301
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State11unset_waker:bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.g ], [ 1, %bb.d ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State13ref_dec_twice(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw sub ptr %0, i64 128 acq_rel, align 8 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 127
  br i1 %i.b, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 192
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State14set_join_waker(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.f ] ; 6 uses
  %i.b = and i64 %.sroa.06.0.i, 8
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 16
  %.not4.i.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i.i, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #29
  unreachable

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i: ; preds = %bb.d
  %i.d = and i64 %.sroa.06.0.i, 2
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.f, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_14set_join_waker0EB9_.exit

bb.f:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i
  %i.e = or disjoint i64 %.sroa.06.0.i, 16        ; 2 uses
  %i.f = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.f, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_14set_join_waker0EB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_14set_join_waker0EB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i, %bb.f
  %.sroa.3.0.i = phi i64 [ %.sroa.06.0.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i ], [ %i.e, %bb.f ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i ], [ 0, %bb.f ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 4) i8 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.510.i = alloca i64, align 8              ; 5 uses
  %.sroa.8.i = alloca i64, align 8                ; 4 uses
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.k ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.b = and i64 %.sroa.06.0.i, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29, !noalias !179
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 32
  %.not1.i.i = icmp eq i64 %i.c, 0
  br i1 %.not1.i.i, label %bb.e, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State18transition_to_idle0Ba_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.d = and i64 %.sroa.06.0.i, -34               ; 2 uses
  %i.e = and i64 %.sroa.06.0.i, 4
  %.not2.i.i = icmp eq i64 %i.e, 0
  br i1 %.not2.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp ult i64 %.sroa.06.0.i, 64
  br i1 %.not.i.i.i, label %bb.g, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #29, !noalias !180
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i: ; preds = %bb.f
  %i.f = add i64 %i.d, -64                        ; 2 uses
  %i.g = icmp ult i64 %i.f, 64
  %..i.i = select i1 %i.g, i8 2, i8 0
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.h = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.h, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !181
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i: ; preds = %bb.h
  %i.i = add nuw i64 %i.d, 64
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i
  %.sroa.0.04.i.i = phi i64 [ %i.f, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ], [ %i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ]
  %.sroa.0.0.i.i = phi i8 [ %..i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ], [ 1, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ]
  store i64 1, ptr %.sroa.510.i, align 8, !alias.scope !179
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State18transition_to_idle0Ba_.exit.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State18transition_to_idle0Ba_.exit.i: ; preds = %bb.j, %bb.d
  %.sroa.0.0.i = phi i8 [ %.sroa.0.0.i.i, %bb.j ], [ 3, %bb.d ]
  %.sink5.i.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.j ], [ %.sroa.510.i, %bb.d ]
  %.sroa.0.04.sink.i.i = phi i64 [ %.sroa.0.04.i.i, %bb.j ], [ 0, %bb.d ]
  store i64 %.sroa.0.04.sink.i.i, ptr %.sink5.i.sroa.phi.i, align 8, !alias.scope !179
  %.sroa.510.i.0..sroa.510.i.0..sroa.510.i.0..sroa.510.0..sroa.510.0..sroa.510.8..i = load i64, ptr %.sroa.510.i, align 8, !range !8, !noundef !4
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i = load i64, ptr %.sroa.8.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.j = trunc nuw i64 %.sroa.510.i.0..sroa.510.i.0..sroa.510.i.0..sroa.510.0..sroa.510.0..sroa.510.8..i to i1
  br i1 %i.j, label %bb.k, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_18transition_to_idle0NtB3_16TransitionToIdleEB9_.exit

bb.k:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State18transition_to_idle0Ba_.exit.i
  %i.k = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.k, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.k, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_18transition_to_idle0NtB3_16TransitionToIdleEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_18transition_to_idle0NtB3_16TransitionToIdleEB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State18transition_to_idle0Ba_.exit.i, %bb.k
  ret i8 %.sroa.0.0.i
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = cmpxchg weak ptr %0, i64 204, i64 132 release monotonic, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.a, 1
  %not..sroa.18.0.in.i = xor i1 %.sroa.18.0.in.i, true
  ret i1 %not..sroa.18.0.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 4) i8 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i ] ; 7 uses
  %i.b = and i64 %.sroa.06.0.i, 4
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #29, !noalias !186
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp ult i64 %.sroa.06.0.i, 64
  br i1 %.not.i.i.i, label %bb.f, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #29, !noalias !187
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i: ; preds = %bb.e
  %i.e = add i64 %.sroa.06.0.i, -64               ; 2 uses
  %i.f = icmp ult i64 %i.e, 64
  %..i.i = select i1 %i.f, i8 3, i8 2
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.g = and i64 %.sroa.06.0.i, -8
  %i.h = or disjoint i64 %i.g, 1
  %1 = lshr i64 %.sroa.06.0.i, 5
  %2 = trunc i64 %1 to i8
  %.2.i.i = and i8 %2, 1
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i: ; preds = %bb.g, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i
  %.sroa.0.03.i.i = phi i64 [ %i.h, %bb.g ], [ %i.e, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ]
  %.sroa.0.0.i.i = phi i8 [ %.2.i.i, %bb.g ], [ %..i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ]
  %i.i = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.0.03.i.i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.i, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.i, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_21transition_to_running0NtB3_19TransitionToRunningEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_21transition_to_running0NtB3_19TransitionToRunningEB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i
  ret i8 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw xor ptr %0, i64 3 acq_rel, align 8 ; 3 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 2
  %.not1 = icmp eq i64 %i.c, 0
  br i1 %.not1, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = xor i64 %i.a, 3
  ret i64 %i.d

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #29
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8, !noalias !190
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.b ] ; 3 uses
  %i.b = and i64 %.sroa.06.0.i, 3
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = zext i1 %i.c to i64
  %spec.select.i.i = or i64 %.sroa.06.0.i, %i.d
  %i.e = or i64 %spec.select.i.i, 32
  %i.f = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %i.e acq_rel acquire, align 8, !noalias !190 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.f, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_22transition_to_shutdown0EB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_22transition_to_shutdown0EB9_.exit: ; preds = %bb.b
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = shl i64 %1, 6
  %i.e = atomicrmw sub ptr %0, i64 %i.d acq_rel, align 8
  %i.f = lshr i64 %i.e, 6                         ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not = icmp ult i64 %i.f, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, %i.g
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -16) i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State26unset_waker_after_complete(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw and ptr %0, i64 -17 acq_rel, align 8 ; 3 uses
  %i.b = and i64 %i.a, 2
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 16
  %.not1 = icmp eq i64 %i.c, 0
  br i1 %.not1, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = and i64 %i.a, -17
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State29transition_to_notified_by_ref(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.711.i = alloca i64, align 8              ; 5 uses
  %.sroa.12.i = alloca i64, align 8               ; 4 uses
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.h ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.711.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.b = and i64 %.sroa.06.0.i, 2
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 4
  %.not1.i.i = icmp eq i64 %i.c, 0
  br i1 %.not1.i.i, label %bb.d, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.d = and i64 %.sroa.06.0.i, 1
  %.not2.i.i = icmp eq i64 %i.d, 0
  br i1 %.not2.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.e, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !196
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i: ; preds = %bb.e
  %i.f = add nuw i64 %.sroa.06.0.i, 68
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i

bb.g:                                             ; preds = %bb.d
  %i.g = or disjoint i64 %.sroa.06.0.i, 4
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i: ; preds = %bb.g, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, %bb.c
  %.sroa.0.0.ph.i = phi i1 [ true, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ], [ false, %bb.g ], [ false, %bb.c ]
  %.sink.i.ph.i = phi i64 [ %i.f, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ], [ %i.g, %bb.g ], [ %.sroa.06.0.i, %bb.c ]
  store i64 1, ptr %.sroa.711.i, align 8, !alias.scope !195
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.i: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.b ], [ %.sroa.0.0.ph.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i ]
  %.sink3.i.sroa.phi.i = phi ptr [ %.sroa.711.i, %bb.b ], [ %.sroa.12.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i ]
  %.sink.i.i = phi i64 [ 0, %bb.b ], [ %.sink.i.ph.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i ]
  store i64 %.sink.i.i, ptr %.sink3.i.sroa.phi.i, align 8, !alias.scope !195
  %.sroa.711.i.0..sroa.711.i.0..sroa.711.i.0..sroa.711.0..sroa.711.0..sroa.711.8..i = load i64, ptr %.sroa.711.i, align 8, !range !8, !noundef !4
  %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.16..i = load i64, ptr %.sroa.12.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.711.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.h = trunc nuw i64 %.sroa.711.i.0..sroa.711.i.0..sroa.711.i.0..sroa.711.0..sroa.711.0..sroa.711.8..i to i1
  br i1 %i.h, label %bb.h, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_29transition_to_notified_by_ref0NtB3_25TransitionToNotifiedByRefEB9_.exit

bb.h:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.i
  %i.i = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.16..i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.i, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.i, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_29transition_to_notified_by_ref0NtB3_25TransitionToNotifiedByRefEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_29transition_to_notified_by_ref0NtB3_25TransitionToNotifiedByRefEB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.i, %bb.h
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State29transition_to_notified_by_val(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i, %bb.a
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCs3oUPovFnLWP_4core6future6future6Future4poll:bb.a
  %i.bp = load ptr, ptr %i.be, align 8, !noalias !300
  store ptr %i.bm, ptr %i.u, align 8, !noalias !300
  store ptr %i.bn, ptr %i.be, align 8, !noalias !300
  br label %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i

_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i, %bb.v
  %.sroa.8.0.i = phi ptr [ %i.bp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i ], [ undef, %bb.v ] ; 2 uses
  %.sroa.06.0.i = phi ptr [ %i.bo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i ], [ null, %bb.v ] ; 4 uses
  br i1 %i.x, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 8
  invoke void @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync15batch_semaphore6WaiterE10push_frontB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 %i.u)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w, %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.br = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
  %i.bs = extractvalue { i8, i1 } %i.br, 1
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i unwind label %bb.ab

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i: ; preds = %bb.y, %bb.x
  %i.bt = icmp eq ptr %.sroa.06.0.i, null
  br i1 %i.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !noundef !4
  invoke void %i.bv(ptr noundef %.sroa.8.0.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.r, !inline_history !296

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i
  %i.bw = trunc nuw i8 %.sroa.020.5.i to i1
  %i.bx = icmp ne ptr %.sroa.0.340.i, null
  %or.cond.not.i = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.not.i, label %bb.aa, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i
  %i.by = cmpxchg ptr %.sroa.0.340.i, i8 1, i8 0 release monotonic, align 1
  %i.bz = extractvalue { i8, i1 } %i.by, 1
  br i1 %i.bz, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i, !prof !5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i: ; preds = %bb.ag, %bb.aa
  %.sroa.0.456.sink.i = phi ptr [ %.sroa.0.456.i, %bb.ag ], [ %.sroa.0.340.i, %bb.aa ]
  %.sroa.0.1.ph.i = phi i8 [ %.sroa.0.058.i, %bb.ag ], [ 2, %bb.aa ] ; 2 uses
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.456.sink.i, i1 noundef zeroext false)
          to label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.y, %bb.w
  %.sroa.023.3.ph.i = phi i1 [ false, %bb.y ], [ true, %bb.w ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = icmp eq ptr %.sroa.06.0.i, null
  br i1 %i.ca, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !4, !noundef !4
  invoke void %i.cc(ptr noundef %.sroa.8.0.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i unwind label %bb.ad, !inline_history !296

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i: ; preds = %bb.ac, %bb.ab
  br i1 %.sroa.023.3.ph.i, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

bb.ad:                                            ; preds = %bb.ai, %bb.af, %bb.ac
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i
  %.pn63.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %lpad.thr_comm78.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.ce = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
  %i.cf = extractvalue { i8, i1 } %i.ce, 1
  br i1 %i.cf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i, label %bb.af, !prof !5

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i unwind label %bb.ad

.thread52.i:                                      ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i, %bb.j
  %.sroa.0.058.i = phi i8 [ %.sroa.0.0.i18, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i ], [ 0, %bb.j ], [ 1, %bb.i ] ; 3 uses
  %.sroa.0.456.i = phi ptr [ %.sroa.0.340.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i ], [ %.sroa.0.295.i, %bb.j ], [ %.sroa.0.338.i, %bb.i ] ; 3 uses
  %i.cg = icmp eq ptr %.sroa.0.456.i, null
  br i1 %i.cg, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %.thread52.i
  %i.ch = cmpxchg ptr %.sroa.0.456.i, i8 1, i8 0 release monotonic, align 1
  %i.ci = extractvalue { i8, i1 } %i.ch, 1
  br i1 %i.ci, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i, !prof !5

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i
  %i.cj = cmpxchg ptr %.sroa.0.09.i, i8 1, i8 0 release monotonic, align 1
  %i.ck = extractvalue { i8, i1 } %i.cj, 1
  br i1 %i.ck, label %.body, label %bb.ai, !prof !5

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.09.i, i1 noundef zeroext false)
          to label %.body unwind label %bb.ad

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i, %bb.ah, %bb.ai
  %eh.lpad-body = phi { ptr, i32 } [ %.pn32.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i ], [ %.pn32.i, %bb.ai ], [ %.pn32.i, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit unwind label %bb.al

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i
  %i.cl = icmp eq i8 %.sroa.0.1.ph.i, 2
  br i1 %i.cl, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread: ; preds = %bb.ag, %.thread52.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit
  %.sroa.0.1.i24 = phi i8 [ %.sroa.0.1.ph.i, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit ], [ %.sroa.0.058.i, %bb.ag ], [ %.sroa.0.058.i, %.thread52.i ], [ %.sroa.0.0.i18, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i ]
  %i.cm = trunc nuw i8 %.sroa.0.1.i24 to i1
  store i8 0, ptr %i.b, align 1
  br i1 %i.cm, label %bb.aj, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26: ; preds = %bb.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit
  %storemerge = phi i8 [ 1, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit ], [ 0, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i ], [ 1, %bb.aa ]
  %.sroa.0.0 = phi i8 [ 2, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit ], [ 0, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i ], [ 2, %bb.aa ]
  store i8 %storemerge, ptr %i.f, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26 ], [ 1, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread ], [ 1, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread ]
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %bb.aj
  %.sroa.0.2 = phi i8 [ %.sroa.0.1, %bb.aj ], [ 2, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.2

bb.al:                                            ; preds = %.body
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_6ShareduENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB9_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = tail call noundef i64 @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr noundef nonnull align 8 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 6)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 5, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = and i64 %i.e, -2
  store i64 %i.h, ptr %i.b, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = trunc i64 %i.e to i8
  %i.k = and i8 %i.j, 1
  store i8 %i.k, ptr %i.a, align 1
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 12, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  %i.o = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB5_8SnapshotNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = load i64, ptr %0, align 8, !noundef !4   ; 7 uses
  %i.j = trunc i64 %i.i to i8
  %i.k = and i8 %i.j, 1
  store i8 %i.k, ptr %i.g, align 1
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 10, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %2 = lshr i64 %i.i, 1
  %3 = trunc i64 %2 to i8
  %i.m = and i8 %3, 1
  store i8 %i.m, ptr %i.f, align 1
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %4 = lshr i64 %i.i, 2
  %5 = trunc i64 %4 to i8
  %i.o = and i8 %5, 1
  store i8 %i.o, ptr %i.e, align 1
  %i.p = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 11, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %6 = lshr i64 %i.i, 5
  %7 = trunc i64 %6 to i8
  %i.q = and i8 %7, 1
  store i8 %i.q, ptr %i.d, align 1
  %i.r = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 12, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %8 = lshr i64 %i.i, 3
  %9 = trunc i64 %8 to i8
  %i.s = and i8 %9, 1
  store i8 %i.s, ptr %i.c, align 1
  %i.t = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 18, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %10 = lshr i64 %i.i, 4
  %11 = trunc i64 %10 to i8
  %i.u = and i8 %11, 1
  store i8 %i.u, ptr %i.b, align 1
  %i.v = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 17, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = lshr i64 %i.i, 6
  store i64 %i.w, ptr %i.a, align 8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69)
  %i.y = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !306
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !306
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = atomicrmw or ptr %i.b, i64 4 acquire, align 8 ; 3 uses
  %i.d = and i64 %i.c, 10
  %or.cond.not.i = icmp eq i64 %i.d, 8
  br i1 %or.cond.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = and i64 %i.c, 3
  %or.cond3.not.i = icmp eq i64 %i.e, 1
  br i1 %or.cond3.not.i, label %bb.e, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !7, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4
  tail call void %i.i(ptr noundef %i.k), !inline_history !307
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw and ptr %i.b, i64 -2 acq_rel, align 8 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !align !7, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !noundef !4
  tail call void %i.p(ptr noundef %i.r), !inline_history !308
  br label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit

_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit: ; preds = %bb.c, %bb.e
  %i.s = and i64 %i.c, 2
  %.not1 = icmp eq i64 %i.s, 0
  br i1 %.not1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit, %bb.a
  ret void

bb.g:                                             ; preds = %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.t, align 1
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 8 uses
  %i.e = cmpxchg weak ptr %i.d, i8 0, i8 1 acquire monotonic, align 1
  %i.f = extractvalue { i8, i1 } %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.c, !prof !5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.d, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = invoke noundef ptr @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync15batch_semaphore6WaiterE6removeB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull %i.h)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %.not = icmp eq i64 %i.l, %i.n
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit

bb.h:                                             ; preds = %bb.e
  %i.q = sub i64 %i.l, %i.n
  %i.r = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  tail call fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore18add_permits_locked(ptr noundef nonnull align 8 %i.r, i64 noundef %i.q, ptr noundef nonnull align 8 %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit4: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1
  %i.u = extractvalue { i8, i1 } %i.t, 1
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit4, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit4 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.c = atomicrmw sub ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5stateNtB5_7VersionNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB5_12AcquireErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !7, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 16) #30
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
end_hunk_1
begin_hunk_2_@_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio:bb.a
  br i1 %.old3.i, label %_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE13drop_elementsCslghKHtsL3a4_5tokio.exit, label %bb.b

_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE13drop_elementsCslghKHtsL3a4_5tokio.exit: ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i, %bb.a
  %i.w = load i64, ptr %0, align 8, !range !316, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE13drop_elementsCslghKHtsL3a4_5tokio.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.w) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.e, %bb.d, %_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE13drop_elementsCslghKHtsL3a4_5tokio.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBV_4hash6random11RandomStateENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCslghKHtsL3a4_5tokio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 5 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8
  %.val13.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload, align 16, !noalias !322
  %i.a = icmp eq i64 %.sroa.43.0.copyload, 0
  br i1 %i.a, label %_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCslghKHtsL3a4_5tokio.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.b = icmp slt i64 %.sroa.43.0.copyload, 576460752303423487
  tail call void @llvm.assume(i1 %i.b)
  %i.c = shl i64 %.sroa.43.0.copyload, 5          ; 2 uses
  %i.d = add i64 %i.c, 32                         ; 2 uses
  %i.e = add nsw i64 %.sroa.43.0.copyload, 17
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = icmp uge i64 %i.f, %i.d
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub nuw nsw i64 -32, %i.c
  %i.j = getelementptr inbounds i8, ptr %.sroa.02.0.copyload, i64 %i.i
  br label %_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCslghKHtsL3a4_5tokio.exit

_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.511.0.i = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sroa.410.0.i = phi i64 [ undef, %bb.a ], [ %i.f, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %i.l = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload
  %i.n = getelementptr i8, ptr %i.m, i64 1
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.02.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.55.0.copyload, ptr %.sroa.101.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCslghKHtsL3a4_5tokio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !325, !noundef !4 ; 2 uses
  %.not11.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !325 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.g, align 8, !alias.scope !325
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !325
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !325
  br label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val79.i = load <16 x i8>, ptr %i.h, align 16, !noalias !325
  %i.j = icmp sgt <16 x i8> %.val79.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -512 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !325
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9SemaphoreNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = lshr i64 %i.d, 1
  store i64 %i.e, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsa_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5StateNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = load i64, ptr %0, align 8, !noundef !4   ; 4 uses
  %2 = lshr i64 %i.f, 1
  %3 = trunc i64 %2 to i8
  %i.g = and i8 %3, 1
  store i8 %i.g, ptr %i.d, align 1
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 11, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %4 = lshr i64 %i.f, 2
  %5 = trunc i64 %4 to i8
  %i.i = and i8 %5, 1
  store i8 %i.i, ptr %i.c, align 1
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 9, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %6 = trunc i64 %i.f to i8
  %i.k = and i8 %6, 1
  store i8 %i.k, ptr %i.b, align 1
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %7 = lshr i64 %i.f, 3
  %8 = trunc i64 %7 to i8
  %i.m = and i8 %8, 1
  store i8 %i.m, ptr %i.a, align 1
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  %i.o = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lotINtB5_6RwLockuENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtBb_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !334, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !336, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEECslghKHtsL3a4_5tokio.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !336, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !337
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !338
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w), !noalias !336
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEECslghKHtsL3a4_5tokio.exit.i, label %bb.d

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEECslghKHtsL3a4_5tokio.exit.i: ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i.i, %bb.b
  %i.y = shl i64 %i.b, 5                          ; 2 uses
  %i.z = add i64 %i.y, 32                         ; 2 uses
  %i.aa = add i64 %i.b, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEECslghKHtsL3a4_5tokio.exit.i
  %i.af = load ptr, ptr %0, align 8, !alias.scope !334, !nonnull !4, !noundef !4
  %i.ag = sub nuw nsw i64 -32, %i.y
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !334
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEECslghKHtsL3a4_5tokio.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsl_NtCs3oUPovFnLWP_4core3fmtPNtNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphore6WaiterNtB5_7Pointer3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt17pointer_fmt_inner(i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtNtB13_4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCslghKHtsL3a4_5tokio(ptr noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRjECslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lotINtB5_6RwLockuE5writeBb_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4sync5watch10big_notifyNtB2_9BigNotify14notify_waiters(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCslghKHtsL3a4_5tokio4util9wake_listNtB4_8WakeListNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(520)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6ThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4sync5watch10big_notifyNtB2_9BigNotify3new(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownjINtB2_10EquivalentjE10equivalentCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11
end_hunk_2
