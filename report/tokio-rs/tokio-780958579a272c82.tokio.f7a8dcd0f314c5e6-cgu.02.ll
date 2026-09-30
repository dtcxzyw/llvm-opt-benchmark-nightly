Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.02?download=true
inline.NumInlined: 301
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal:bb.a
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
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i ] ; 9 uses
  %i.b = and i64 %.sroa.06.0.i, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 6
  %or.cond.i.i = icmp eq i64 %i.c, 0
  br i1 %or.cond.i.i, label %bb.f, label %bb.h

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp ult i64 %.sroa.06.0.i, 64
  br i1 %.not.i.i.i, label %bb.e, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #29, !noalias !205
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i: ; preds = %bb.d
  %i.d = or i64 %.sroa.06.0.i, 4
  %i.e = add i64 %i.d, -64                        ; 2 uses
  %.not3.i.i = icmp ult i64 %i.e, 64
  br i1 %.not3.i.i, label %bb.j, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i, !prof !6

bb.f:                                             ; preds = %bb.c
  %i.f = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.f, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !206
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i: ; preds = %bb.f
  %i.g = add nuw i64 %.sroa.06.0.i, 68
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i

bb.h:                                             ; preds = %bb.c
  %.not.i4.i.i = icmp ult i64 %.sroa.06.0.i, 64
  br i1 %.not.i4.i.i, label %bb.i, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit5.i.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #29, !noalias !207
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit5.i.i: ; preds = %bb.h
  %i.h = add i64 %.sroa.06.0.i, -64               ; 2 uses
  %i.i = icmp ult i64 %i.h, 64
  %..i.i = select i1 %i.i, i8 2, i8 0
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i

bb.j:                                             ; preds = %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !noalias !208
  unreachable

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i: ; preds = %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit5.i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.g, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ], [ %i.h, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit5.i.i ], [ %i.e, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ]
  %.sroa.0.0.i.i = phi i8 [ 1, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ], [ %..i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit5.i.i ], [ 0, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ]
  %i.j = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.0.06.i.i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.j, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.j, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_29transition_to_notified_by_val0NtB3_25TransitionToNotifiedByValEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_29transition_to_notified_by_val0NtB3_25TransitionToNotifiedByValEB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i
  ret i8 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define { i1, i1 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.d ] ; 4 uses
  %i.b = and i64 %.sroa.06.0.i, 8
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #29, !noalias !211
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 2                 ; 2 uses
  %.not7.not.i.i = icmp eq i64 %i.c, 0
  %.sroa.0.0.v.i.i = select i1 %.not7.not.i.i, i64 -27, i64 -9
  %.sroa.0.0.i.i = and i64 %.sroa.0.0.v.i.i, %.sroa.06.0.i ; 2 uses
  %i.d = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.0.0.i.i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.d, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.d, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_33transition_to_join_handle_dropped0NtB3_26TransitionToJoinHandleDropEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_33transition_to_join_handle_dropped0NtB3_26TransitionToJoinHandleDropEB9_.exit: ; preds = %bb.d
  %i.e = and i64 %.sroa.0.0.i.i, 16
  %.not8.i.i = icmp eq i64 %i.e, 0
  %1 = icmp ne i64 %i.c, 0
  %i.f = insertvalue { i1, i1 } poison, i1 %.not8.i.i, 0
  %i.g = insertvalue { i1, i1 } %i.f, i1 %1, 1
  ret { i1, i1 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State33transition_to_notified_and_cancel(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.711.i = alloca i64, align 8              ; 5 uses
  %.sroa.12.i = alloca i64, align 8               ; 4 uses
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.711.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.b = and i64 %.sroa.06.0.i, 34
  %or.cond.i.i = icmp eq i64 %i.b, 0
  br i1 %or.cond.i.i, label %bb.c, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 1
  %.not2.i.i = icmp eq i64 %i.c, 0
  br i1 %.not2.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = and i64 %.sroa.06.0.i, 4
  %.not3.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = or i64 %.sroa.06.0.i, 36
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.f = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.f, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !217
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i: ; preds = %bb.f
  %i.g = add nuw i64 %.sroa.06.0.i, 100
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.h = or disjoint i64 %.sroa.06.0.i, 32
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i: ; preds = %bb.h, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, %bb.e
  %.sroa.0.0.ph.i = phi i1 [ false, %bb.e ], [ false, %bb.h ], [ true, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ]
  %.sink.i.ph.i = phi i64 [ %i.e, %bb.e ], [ %i.h, %bb.h ], [ %i.g, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ]
  store i64 1, ptr %.sroa.711.i, align 8, !alias.scope !216
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.i: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.b ], [ %.sroa.0.0.ph.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i ]
  %.sink3.i.sroa.phi.i = phi ptr [ %.sroa.711.i, %bb.b ], [ %.sroa.12.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i ]
  %.sink.i.i = phi i64 [ 0, %bb.b ], [ %.sink.i.ph.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i ]
  store i64 %.sink.i.i, ptr %.sink3.i.sroa.phi.i, align 8, !alias.scope !216
  %.sroa.711.i.0..sroa.711.i.0..sroa.711.i.0..sroa.711.0..sroa.711.0..sroa.711.8..i = load i64, ptr %.sroa.711.i, align 8, !range !8, !noundef !4
  %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.16..i = load i64, ptr %.sroa.12.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.711.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.i = trunc nuw i64 %.sroa.711.i.0..sroa.711.i.0..sroa.711.i.0..sroa.711.0..sroa.711.0..sroa.711.8..i to i1
  br i1 %i.i, label %bb.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_33transition_to_notified_and_cancel0bEB9_.exit

bb.i:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.i
  %i.j = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.16..i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.j, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.j, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_33transition_to_notified_and_cancel0bEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_33transition_to_notified_and_cancel0bEB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.i, %bb.i
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State4load(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw sub ptr %0, i64 64 acq_rel, align 8
  %i.b = lshr i64 %i.a, 6                         ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_inc(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw add ptr %0, i64 64 monotonic, align 8
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBV_4hash6random11RandomStateE6insertCslghKHtsL3a4_5tokio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRjECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !232, !noalias !233, !noundef !4
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true) #27
          to label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !234, !noalias !235, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.h, align 8, !alias.scope !234, !noalias !235, !noundef !4 ; 3 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i ], [ %i.al, %bb.g ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i ], [ %.sroa.4.124.i.i, %bb.g ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i ], [ %.sroa.04.126.i.i, %bb.g ]
  %i.m = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i ], [ %i.ak, %bb.g ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i31.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !236 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not32.i.i = icmp eq i16 %i.p, 0
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.01.033.i.i = phi i16 [ %i.aa, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.021.i.i, %i.r
  %i.t = and i64 %i.s, %.val5.i
  %i.u = load ptr, ptr %1, align 8, !alias.scope !234, !noalias !237, !nonnull !4, !noundef !4
  %i.v = sub nsw i64 0, %i.t                      ; 2 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.y = invoke noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownjINtB2_10EquivalentjE10equivalentCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.y, label %bb.j, label %bb.e, !prof !5

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.f, !prof !6

bb.e:                                             ; preds = %.noexc6
  %i.z = add i16 %.sroa.01.033.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.01.033.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread28.i.i, !prof !6

.thread28.i.i:                                    ; preds = %bb.f
  %i.ad = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.0.021.i.i, %i.ae
  %i.ag = and i64 %i.af, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread28.i.i, %._crit_edge.i.i
  %.sroa.4.125.i.i = phi i64 [ %i.ag, %.thread28.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
end_hunk_0
