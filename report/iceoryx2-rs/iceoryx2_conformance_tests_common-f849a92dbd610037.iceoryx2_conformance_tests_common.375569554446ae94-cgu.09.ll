Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_conformance_tests_common-f849a92dbd610037.iceoryx2_conformance_tests_common.375569554446ae94-cgu.09?download=true
inline.NumInlined: 3519
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueReaderIdINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers16UniqueListenerIdINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers16UniqueNotifierIdINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers17UniquePublisherIdINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers18UniqueSubscriberIdINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue10AttachmentINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name11ServiceNameINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 264 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsINtNtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !alias.scope !300
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !300
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !300
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !300
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.sroa.7.0 = phi ptr [ %.sroa.4.0.copyload, %bb.a ], [ %.sroa.0.sroa.7.1, %bb.d ] ; 3 uses
  %.sroa.0.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.a ], [ %i.d, %bb.d ] ; 3 uses
  %.sroa.9.sroa.5.0 = phi ptr [ %.sroa.6.0.copyload, %bb.a ], [ %.sroa.9.sroa.5.1, %bb.d ] ; 3 uses
  %.sroa.9.sroa.0.0 = phi ptr [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.9.sroa.0.1, %bb.d ] ; 3 uses
  %i.b = icmp eq ptr %.sroa.0.sroa.0.0, %.sroa.0.sroa.7.0
  br i1 %i.b, label %bb.c, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %.sroa.9.sroa.0.0, %.sroa.9.sroa.5.0
  br i1 %i.c, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.sroa.7.1 = phi ptr [ %.sroa.9.sroa.5.0, %bb.c ], [ %.sroa.0.sroa.7.0, %bb.b ]
  %.sroa.9.sroa.5.1 = phi ptr [ %.sroa.0.sroa.7.0, %bb.c ], [ %.sroa.9.sroa.5.0, %bb.b ]
  %.sroa.9.sroa.0.1 = phi ptr [ %.sroa.0.sroa.0.0, %bb.c ], [ %.sroa.9.sroa.0.0, %bb.b ]
  %.sink6.i = phi ptr [ %.sroa.9.sroa.0.0, %bb.c ], [ %.sroa.0.sroa.0.0, %bb.b ] ; 3 uses
  %.not = icmp eq ptr %.sink6.i, null
  br i1 %.not, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.d = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink6.i, ptr %i.a, align 8, !captures !9
  %i.e = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread: ; preds = %bb.c, %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 408 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard19BlackboardOpenErrorINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard21BlackboardCreateErrorINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder16request_response24RequestResponseOpenErrorINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder16request_response26RequestResponseCreateErrorINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe25PublishSubscribeOpenErrorINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe27PublishSubscribeCreateErrorINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event14EventOpenErrorINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35) #22 ; 0 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node20assert_node_presenceNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14ipc_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.y = call noundef i8 @_RINvMsq_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_4NodeNtNtNtB8_7service14ipc_threadsafe7ServiceE4listNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node20assert_node_presenceBL_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #22 ; 2 uses
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.y, ptr %i.a, align 1
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @920, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @935, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @625) #24
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.z = load i64, ptr %i.x, align 8, !noundef !5 ; 5 uses
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = icmp ult i64 %i.z, 1859550813882012
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 3 uses
  %i.ad = icmp eq i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ae = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select = select i1 %i.ae, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select94.a = select i1 %i.ae, i64 9, i64 0
  store ptr %spec.select, ptr %i.t, align 8, !captures !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %spec.select94.a, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %i.ac, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.ac, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ag = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink82 = select i1 %i.ag, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink81 = select i1 %i.ag, i64 4, i64 0
  store ptr %.sink82, ptr %i.q, align 8, !captures !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink81, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.t, ptr %i.p, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.s, ptr %i.ai, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.u, ptr %i.aj, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.r, ptr %i.ak, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.q, ptr %i.al, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @626, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @627) #24
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.am = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.an = load i64, ptr %i.v, align 8, !range !19, !noundef !5
  %.idx = mul nuw nsw i64 %i.z, 4960
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.am, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ap = icmp eq i64 %i.z, 0
  br i1 %i.ap, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph: ; preds = %bb.d
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 4528 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 4672 ; 2 uses
  %.sroa.066.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 4676
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 4680
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 4684
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  br label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph, %bb.r
  %i.ax = phi ptr [ %i.am, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph ], [ %i.ay, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23268)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4960 ; 3 uses
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23268
  %.sroa.0.0.copyload64 = load i32, ptr %i.ax, align 8, !noalias !23268 ; 3 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload64, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 %.sroa.0.0.copyload64, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(4956) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(4956) %.sroa.7.0..sroa_idx65, i64 4956, i1 false)
  switch i32 %.sroa.0.0.copyload64, label %default.unreachable [
    i32 0, label %bb.h
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.g
  ], !prof !31

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.r, %bb.d
  call void @_RNvXse_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @132, ptr %i.m, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @58, ptr %i.l, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select95.a = select i1 %i.az, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select96.a = select i1 %i.az, i64 9, i64 0
  store ptr %spec.select95.a, ptr %i.k, align 8, !captures !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %spec.select96.a, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink90 = select i1 %i.bb, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink89 = select i1 %i.bb, i64 4, i64 0
  store ptr %.sink90, ptr %i.j, align 8, !captures !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink89, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.bd, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.436.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.l, ptr %i.be, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.440.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.j, ptr %i.bf, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.444.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @633, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @634) #24
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sroa.43.0 = phi ptr [ @629, %bb.f ], [ @628, %bb.e ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !5, !nonnull !5
  %i.bi = call noundef nonnull align 8 ptr %i.bh(ptr noundef nonnull %i.aq) #26 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !range !13, !noundef !5
  %.not61 = icmp eq i64 %i.bj, 2
  br i1 %.not61, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !5, !nonnull !5
  %i.bm = call noundef nonnull align 4 ptr %i.bl(ptr noundef nonnull %i.aq) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.b, ptr noundef nonnull align 8 dereferenceable(4528) %i.bi, i64 4528, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ar, ptr noundef nonnull align 8 dereferenceable(144) %i.bn, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.h, ptr noundef nonnull align 8 dereferenceable(4528) %i.b, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs4_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsE4iterCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #22
  %.sroa.066.sroa.0.0.copyload = load ptr, ptr %i.g, align 8
  %.sroa.066.sroa.8.0.copyload = load ptr, ptr %.sroa.066.sroa.8.0..sroa_idx, align 8
  %.sroa.10.sroa.0.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.6.0.copyload = load ptr, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  br label %.backedge

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #24
  unreachable

.backedge:                                        ; preds = %.backedge.backedge, %bb.i
  %.sroa.066.sroa.8.0 = phi ptr [ %.sroa.066.sroa.8.0.copyload, %bb.i ], [ %.sroa.066.sroa.8.1, %.backedge.backedge ] ; 3 uses
  %.sroa.066.sroa.0.0 = phi ptr [ %.sroa.066.sroa.0.0.copyload, %bb.i ], [ %i.bq, %.backedge.backedge ] ; 3 uses
  %.sroa.10.sroa.6.0 = phi ptr [ %.sroa.10.sroa.6.0.copyload, %bb.i ], [ %.sroa.10.sroa.6.1, %.backedge.backedge ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %.sroa.10.sroa.0.0.copyload, %bb.i ], [ %.sroa.10.sroa.0.1, %.backedge.backedge ] ; 3 uses
  %i.bo = icmp eq ptr %.sroa.066.sroa.0.0, %.sroa.066.sroa.8.0
  br i1 %i.bo, label %bb.k, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.k:                                             ; preds = %.backedge
  %i.bp = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.6.0
  br i1 %i.bp, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %.backedge, %bb.k
  %.sroa.066.sroa.8.1 = phi ptr [ %.sroa.10.sroa.6.0, %bb.k ], [ %.sroa.066.sroa.8.0, %.backedge ]
  %.sroa.10.sroa.6.1 = phi ptr [ %.sroa.066.sroa.8.0, %bb.k ], [ %.sroa.10.sroa.6.0, %.backedge ]
  %.sroa.10.sroa.0.1 = phi ptr [ %.sroa.066.sroa.0.0, %bb.k ], [ %.sroa.10.sroa.0.0, %.backedge ]
  %.sink6.i = phi ptr [ %.sroa.10.sroa.0.0, %bb.k ], [ %.sroa.066.sroa.0.0, %.backedge ] ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4688
  %.not62 = icmp eq ptr %.sink6.i, null
  br i1 %.not62, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23269)
  call void @llvm.experimental.noalias.scope.decl(metadata !23270)
  %i.br = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4528
  %i.bs = call noundef zeroext i1 @_RNvXs8_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj80_ENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ar) #22
  br i1 %i.bs, label %bb.m, label %.backedge.backedge

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4672
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !23269, !noundef !5
  %i.bv = load i32, ptr %i.as, align 8, !alias.scope !23270, !noundef !5
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.n, label %.backedge.backedge

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4676
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !23269, !noundef !5
  %i.bz = load i32, ptr %i.at, align 4, !alias.scope !23270, !noundef !5
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.o, label %.backedge.backedge

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4680
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !23269, !noundef !5
  %i.cd = load i32, ptr %i.au, align 8, !alias.scope !23270, !noundef !5
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.p, label %.backedge.backedge

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4684
  %i.cg = load i32, ptr %i.cf, align 4, !alias.scope !23269, !noundef !5
  %i.ch = load i32, ptr %i.av, align 4, !alias.scope !23270, !noundef !5
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %.backedge.backedge

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 272
  %i.ck = call fastcc noundef zeroext i1 @_RNvXsD_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4256) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4256) %i.aw) #26
  br i1 %i.ck, label %.split, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.split
  br label %.backedge

.split:                                           ; preds = %bb.q
  %i.cl = call fastcc noundef zeroext i1 @_RNvXsJ_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_8DefaultsNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4688) %.sink6.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4688) %i.h) #26
  br i1 %i.cl, label %bb.r, label %.backedge.backedge

_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread: ; preds = %bb.k, %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cm = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select97 = select i1 %i.cm, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select98 = select i1 %i.cm, i64 9, i64 0
  store ptr %spec.select97, ptr %i.f, align 8, !captures !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select98, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.co = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink88 = select i1 %i.co, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink87 = select i1 %i.co, i64 4, i64 0
  store ptr %.sink88, ptr %i.e, align 8, !captures !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink87, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.448.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.cq, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs_NtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4nodeNtB4_7DetailsNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.452.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %0, ptr %i.cr, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsl_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.456.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.cs, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.460.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @631, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @632) #24
  unreachable

bb.r:                                             ; preds = %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ct = icmp eq ptr %i.ay, %i.ao
  br i1 %i.ct, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service14ipc_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node20assert_node_presenceNtNtNtCsg6ZEkMtNi4J_8iceoryx27service16local_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [4528 x i8], align 8              ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [4688 x i8], align 8              ; 11 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [4960 x i8], align 8              ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [80 x i8], align 8                ; 12 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  %i.s = alloca [8 x i8], align 8                 ; 3 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.y = call noundef i8 @_RINvMsq_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_4NodeNtNtNtB8_7service16local_threadsafe7ServiceE4listNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node20assert_node_presenceBL_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #22 ; 2 uses
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.y, ptr %i.a, align 1
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @920, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @935, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @625) #24
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.z = load i64, ptr %i.x, align 8, !noundef !5 ; 5 uses
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = icmp ult i64 %i.z, 1859550813882012
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 3 uses
  %i.ad = icmp eq i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ae = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select = select i1 %i.ae, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select94.a = select i1 %i.ae, i64 9, i64 0
  store ptr %spec.select, ptr %i.t, align 8, !captures !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %spec.select94.a, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %i.ac, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.ac, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ag = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink82 = select i1 %i.ag, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink81 = select i1 %i.ag, i64 4, i64 0
  store ptr %.sink82, ptr %i.q, align 8, !captures !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink81, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.t, ptr %i.p, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.s, ptr %i.ai, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.u, ptr %i.aj, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.r, ptr %i.ak, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.q, ptr %i.al, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @626, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @627) #24
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.am = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.an = load i64, ptr %i.v, align 8, !range !19, !noundef !5
  %.idx = mul nuw nsw i64 %i.z, 4960
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.am, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ap = icmp eq i64 %i.z, 0
  br i1 %i.ap, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph: ; preds = %bb.d
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 4528 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 4672 ; 2 uses
  %.sroa.066.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 4676
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 4680
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 4684
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  br label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph, %bb.r
  %i.ax = phi ptr [ %i.am, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph ], [ %i.ay, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23276)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4960 ; 3 uses
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23276
  %.sroa.0.0.copyload64 = load i32, ptr %i.ax, align 8, !noalias !23276 ; 3 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload64, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 %.sroa.0.0.copyload64, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(4956) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(4956) %.sroa.7.0..sroa_idx65, i64 4956, i1 false)
  switch i32 %.sroa.0.0.copyload64, label %default.unreachable [
    i32 0, label %bb.h
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.g
  ], !prof !31

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.r, %bb.d
  call void @_RNvXse_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @132, ptr %i.m, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @58, ptr %i.l, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select95.a = select i1 %i.az, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select96.a = select i1 %i.az, i64 9, i64 0
  store ptr %spec.select95.a, ptr %i.k, align 8, !captures !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %spec.select96.a, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink90 = select i1 %i.bb, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink89 = select i1 %i.bb, i64 4, i64 0
  store ptr %.sink90, ptr %i.j, align 8, !captures !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink89, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.bd, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.436.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.l, ptr %i.be, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.440.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.j, ptr %i.bf, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.444.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @633, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @634) #24
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sroa.43.0 = phi ptr [ @636, %bb.f ], [ @635, %bb.e ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !5, !nonnull !5
  %i.bi = call noundef nonnull align 8 ptr %i.bh(ptr noundef nonnull %i.aq) #26 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !range !13, !noundef !5
  %.not61 = icmp eq i64 %i.bj, 2
  br i1 %.not61, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !5, !nonnull !5
  %i.bm = call noundef nonnull align 4 ptr %i.bl(ptr noundef nonnull %i.aq) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.b, ptr noundef nonnull align 8 dereferenceable(4528) %i.bi, i64 4528, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ar, ptr noundef nonnull align 8 dereferenceable(144) %i.bn, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.h, ptr noundef nonnull align 8 dereferenceable(4528) %i.b, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs4_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsE4iterCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #22
  %.sroa.066.sroa.0.0.copyload = load ptr, ptr %i.g, align 8
  %.sroa.066.sroa.8.0.copyload = load ptr, ptr %.sroa.066.sroa.8.0..sroa_idx, align 8
  %.sroa.10.sroa.0.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.6.0.copyload = load ptr, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  br label %.backedge

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #24
  unreachable

.backedge:                                        ; preds = %.backedge.backedge, %bb.i
  %.sroa.066.sroa.8.0 = phi ptr [ %.sroa.066.sroa.8.0.copyload, %bb.i ], [ %.sroa.066.sroa.8.1, %.backedge.backedge ] ; 3 uses
  %.sroa.066.sroa.0.0 = phi ptr [ %.sroa.066.sroa.0.0.copyload, %bb.i ], [ %i.bq, %.backedge.backedge ] ; 3 uses
  %.sroa.10.sroa.6.0 = phi ptr [ %.sroa.10.sroa.6.0.copyload, %bb.i ], [ %.sroa.10.sroa.6.1, %.backedge.backedge ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %.sroa.10.sroa.0.0.copyload, %bb.i ], [ %.sroa.10.sroa.0.1, %.backedge.backedge ] ; 3 uses
  %i.bo = icmp eq ptr %.sroa.066.sroa.0.0, %.sroa.066.sroa.8.0
  br i1 %i.bo, label %bb.k, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.k:                                             ; preds = %.backedge
  %i.bp = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.6.0
  br i1 %i.bp, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %.backedge, %bb.k
  %.sroa.066.sroa.8.1 = phi ptr [ %.sroa.10.sroa.6.0, %bb.k ], [ %.sroa.066.sroa.8.0, %.backedge ]
  %.sroa.10.sroa.6.1 = phi ptr [ %.sroa.066.sroa.8.0, %bb.k ], [ %.sroa.10.sroa.6.0, %.backedge ]
  %.sroa.10.sroa.0.1 = phi ptr [ %.sroa.066.sroa.0.0, %bb.k ], [ %.sroa.10.sroa.0.0, %.backedge ]
  %.sink6.i = phi ptr [ %.sroa.10.sroa.0.0, %bb.k ], [ %.sroa.066.sroa.0.0, %.backedge ] ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4688
  %.not62 = icmp eq ptr %.sink6.i, null
  br i1 %.not62, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23277)
  call void @llvm.experimental.noalias.scope.decl(metadata !23278)
  %i.br = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4528
  %i.bs = call noundef zeroext i1 @_RNvXs8_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj80_ENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ar) #22
  br i1 %i.bs, label %bb.m, label %.backedge.backedge

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4672
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !23277, !noundef !5
  %i.bv = load i32, ptr %i.as, align 8, !alias.scope !23278, !noundef !5
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.n, label %.backedge.backedge

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4676
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !23277, !noundef !5
  %i.bz = load i32, ptr %i.at, align 4, !alias.scope !23278, !noundef !5
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.o, label %.backedge.backedge

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4680
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !23277, !noundef !5
  %i.cd = load i32, ptr %i.au, align 8, !alias.scope !23278, !noundef !5
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.p, label %.backedge.backedge

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4684
  %i.cg = load i32, ptr %i.cf, align 4, !alias.scope !23277, !noundef !5
  %i.ch = load i32, ptr %i.av, align 4, !alias.scope !23278, !noundef !5
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %.backedge.backedge

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 272
  %i.ck = call fastcc noundef zeroext i1 @_RNvXsD_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4256) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4256) %i.aw) #26
  br i1 %i.ck, label %.split, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.split
  br label %.backedge

.split:                                           ; preds = %bb.q
  %i.cl = call fastcc noundef zeroext i1 @_RNvXsJ_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_8DefaultsNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4688) %.sink6.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4688) %i.h) #26
  br i1 %i.cl, label %bb.r, label %.backedge.backedge

_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread: ; preds = %bb.k, %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cm = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select97 = select i1 %i.cm, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select98 = select i1 %i.cm, i64 9, i64 0
  store ptr %spec.select97, ptr %i.f, align 8, !captures !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select98, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.co = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink88 = select i1 %i.co, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink87 = select i1 %i.co, i64 4, i64 0
  store ptr %.sink88, ptr %i.e, align 8, !captures !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink87, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.448.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.cq, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs_NtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4nodeNtB4_7DetailsNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.452.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %0, ptr %i.cr, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsl_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.456.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.cs, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.460.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @631, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @632) #24
  unreachable

bb.r:                                             ; preds = %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ct = icmp eq ptr %i.ay, %i.ao
  br i1 %i.ct, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service16local_threadsafe7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node20assert_node_presenceNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [4528 x i8], align 8              ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [4688 x i8], align 8              ; 11 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [4960 x i8], align 8              ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [80 x i8], align 8                ; 12 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  %i.s = alloca [8 x i8], align 8                 ; 3 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.y = call noundef i8 @_RINvMsq_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_4NodeNtNtNtB8_7service3ipc7ServiceE4listNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node20assert_node_presenceBL_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #22 ; 2 uses
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.y, ptr %i.a, align 1
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @920, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @935, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @625) #24
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.z = load i64, ptr %i.x, align 8, !noundef !5 ; 5 uses
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = icmp ult i64 %i.z, 1859550813882012
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 3 uses
  %i.ad = icmp eq i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ae = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select = select i1 %i.ae, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select94.a = select i1 %i.ae, i64 9, i64 0
  store ptr %spec.select, ptr %i.t, align 8, !captures !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %spec.select94.a, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %i.ac, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.ac, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ag = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink82 = select i1 %i.ag, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink81 = select i1 %i.ag, i64 4, i64 0
  store ptr %.sink82, ptr %i.q, align 8, !captures !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink81, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.t, ptr %i.p, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.s, ptr %i.ai, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.u, ptr %i.aj, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.r, ptr %i.ak, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.q, ptr %i.al, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @626, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @627) #24
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.am = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.an = load i64, ptr %i.v, align 8, !range !19, !noundef !5
  %.idx = mul nuw nsw i64 %i.z, 4960
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.am, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ap = icmp eq i64 %i.z, 0
  br i1 %i.ap, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph: ; preds = %bb.d
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 4528 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 4672 ; 2 uses
  %.sroa.066.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 4676
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 4680
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 4684
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  br label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph, %bb.r
  %i.ax = phi ptr [ %i.am, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph ], [ %i.ay, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23284)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4960 ; 3 uses
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23284
  %.sroa.0.0.copyload64 = load i32, ptr %i.ax, align 8, !noalias !23284 ; 3 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload64, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 %.sroa.0.0.copyload64, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(4956) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(4956) %.sroa.7.0..sroa_idx65, i64 4956, i1 false)
  switch i32 %.sroa.0.0.copyload64, label %default.unreachable [
    i32 0, label %bb.h
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.g
  ], !prof !31

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.r, %bb.d
  call void @_RNvXse_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @132, ptr %i.m, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @58, ptr %i.l, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select95.a = select i1 %i.az, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select96.a = select i1 %i.az, i64 9, i64 0
  store ptr %spec.select95.a, ptr %i.k, align 8, !captures !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %spec.select96.a, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink90 = select i1 %i.bb, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink89 = select i1 %i.bb, i64 4, i64 0
  store ptr %.sink90, ptr %i.j, align 8, !captures !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink89, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.bd, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.436.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.l, ptr %i.be, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.440.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.j, ptr %i.bf, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.444.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @633, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @634) #24
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sroa.43.0 = phi ptr [ @638, %bb.f ], [ @637, %bb.e ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !5, !nonnull !5
  %i.bi = call noundef nonnull align 8 ptr %i.bh(ptr noundef nonnull %i.aq) #26 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !range !13, !noundef !5
  %.not61 = icmp eq i64 %i.bj, 2
  br i1 %.not61, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !5, !nonnull !5
  %i.bm = call noundef nonnull align 4 ptr %i.bl(ptr noundef nonnull %i.aq) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.b, ptr noundef nonnull align 8 dereferenceable(4528) %i.bi, i64 4528, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ar, ptr noundef nonnull align 8 dereferenceable(144) %i.bn, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.h, ptr noundef nonnull align 8 dereferenceable(4528) %i.b, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs4_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsE4iterCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #22
  %.sroa.066.sroa.0.0.copyload = load ptr, ptr %i.g, align 8
  %.sroa.066.sroa.8.0.copyload = load ptr, ptr %.sroa.066.sroa.8.0..sroa_idx, align 8
  %.sroa.10.sroa.0.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.6.0.copyload = load ptr, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  br label %.backedge

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #24
  unreachable

.backedge:                                        ; preds = %.backedge.backedge, %bb.i
  %.sroa.066.sroa.8.0 = phi ptr [ %.sroa.066.sroa.8.0.copyload, %bb.i ], [ %.sroa.066.sroa.8.1, %.backedge.backedge ] ; 3 uses
  %.sroa.066.sroa.0.0 = phi ptr [ %.sroa.066.sroa.0.0.copyload, %bb.i ], [ %i.bq, %.backedge.backedge ] ; 3 uses
  %.sroa.10.sroa.6.0 = phi ptr [ %.sroa.10.sroa.6.0.copyload, %bb.i ], [ %.sroa.10.sroa.6.1, %.backedge.backedge ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %.sroa.10.sroa.0.0.copyload, %bb.i ], [ %.sroa.10.sroa.0.1, %.backedge.backedge ] ; 3 uses
  %i.bo = icmp eq ptr %.sroa.066.sroa.0.0, %.sroa.066.sroa.8.0
  br i1 %i.bo, label %bb.k, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.k:                                             ; preds = %.backedge
  %i.bp = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.6.0
  br i1 %i.bp, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %.backedge, %bb.k
  %.sroa.066.sroa.8.1 = phi ptr [ %.sroa.10.sroa.6.0, %bb.k ], [ %.sroa.066.sroa.8.0, %.backedge ]
  %.sroa.10.sroa.6.1 = phi ptr [ %.sroa.066.sroa.8.0, %bb.k ], [ %.sroa.10.sroa.6.0, %.backedge ]
  %.sroa.10.sroa.0.1 = phi ptr [ %.sroa.066.sroa.0.0, %bb.k ], [ %.sroa.10.sroa.0.0, %.backedge ]
  %.sink6.i = phi ptr [ %.sroa.10.sroa.0.0, %bb.k ], [ %.sroa.066.sroa.0.0, %.backedge ] ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4688
  %.not62 = icmp eq ptr %.sink6.i, null
  br i1 %.not62, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23285)
  call void @llvm.experimental.noalias.scope.decl(metadata !23286)
  %i.br = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4528
  %i.bs = call noundef zeroext i1 @_RNvXs8_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj80_ENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ar) #22
  br i1 %i.bs, label %bb.m, label %.backedge.backedge

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4672
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !23285, !noundef !5
  %i.bv = load i32, ptr %i.as, align 8, !alias.scope !23286, !noundef !5
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.n, label %.backedge.backedge

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4676
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !23285, !noundef !5
  %i.bz = load i32, ptr %i.at, align 4, !alias.scope !23286, !noundef !5
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.o, label %.backedge.backedge

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4680
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !23285, !noundef !5
  %i.cd = load i32, ptr %i.au, align 8, !alias.scope !23286, !noundef !5
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.p, label %.backedge.backedge

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4684
  %i.cg = load i32, ptr %i.cf, align 4, !alias.scope !23285, !noundef !5
  %i.ch = load i32, ptr %i.av, align 4, !alias.scope !23286, !noundef !5
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %.backedge.backedge

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 272
  %i.ck = call fastcc noundef zeroext i1 @_RNvXsD_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4256) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4256) %i.aw) #26
  br i1 %i.ck, label %.split, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.split
  br label %.backedge

.split:                                           ; preds = %bb.q
  %i.cl = call fastcc noundef zeroext i1 @_RNvXsJ_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_8DefaultsNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4688) %.sink6.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4688) %i.h) #26
  br i1 %i.cl, label %bb.r, label %.backedge.backedge

_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread: ; preds = %bb.k, %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cm = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select97 = select i1 %i.cm, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select98 = select i1 %i.cm, i64 9, i64 0
  store ptr %spec.select97, ptr %i.f, align 8, !captures !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select98, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.co = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink88 = select i1 %i.co, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink87 = select i1 %i.co, i64 4, i64 0
  store ptr %.sink88, ptr %i.e, align 8, !captures !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink87, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.448.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.cq, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs_NtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4nodeNtB4_7DetailsNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.452.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %0, ptr %i.cr, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsl_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.456.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.cs, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.460.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @631, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @632) #24
  unreachable

bb.r:                                             ; preds = %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ct = icmp eq ptr %i.ay, %i.ao
  br i1 %i.ct, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service3ipc7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node20assert_node_presenceNtNtNtCsg6ZEkMtNi4J_8iceoryx27service5local7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [4528 x i8], align 8              ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [4688 x i8], align 8              ; 11 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [4960 x i8], align 8              ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [80 x i8], align 8                ; 12 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  %i.s = alloca [8 x i8], align 8                 ; 3 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.y = call noundef i8 @_RINvMsq_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_4NodeNtNtNtB8_7service5local7ServiceE4listNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node20assert_node_presenceBL_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #22 ; 2 uses
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.y, ptr %i.a, align 1
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @920, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @935, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @625) #24
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.z = load i64, ptr %i.x, align 8, !noundef !5 ; 5 uses
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = icmp ult i64 %i.z, 1859550813882012
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 3 uses
  %i.ad = icmp eq i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ae = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select = select i1 %i.ae, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select94.a = select i1 %i.ae, i64 9, i64 0
  store ptr %spec.select, ptr %i.t, align 8, !captures !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %spec.select94.a, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %i.ac, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.ac, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ag = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink82 = select i1 %i.ag, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink81 = select i1 %i.ag, i64 4, i64 0
  store ptr %.sink82, ptr %i.q, align 8, !captures !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink81, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.t, ptr %i.p, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.s, ptr %i.ai, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.u, ptr %i.aj, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.r, ptr %i.ak, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.q, ptr %i.al, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @626, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @627) #24
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeListFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.am = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.an = load i64, ptr %i.v, align 8, !range !19, !noundef !5
  %.idx = mul nuw nsw i64 %i.z, 4960
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.am, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ap = icmp eq i64 %i.z, 0
  br i1 %i.ap, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph: ; preds = %bb.d
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 4528 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 4672 ; 2 uses
  %.sroa.066.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 4676
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 4680
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 4684
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  br label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph, %bb.r
  %i.ax = phi ptr [ %i.am, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.lr.ph ], [ %i.ay, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23292)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4960 ; 3 uses
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23292
  %.sroa.0.0.copyload64 = load i32, ptr %i.ax, align 8, !noalias !23292 ; 3 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload64, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 %.sroa.0.0.copyload64, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(4956) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(4956) %.sroa.7.0..sroa_idx65, i64 4956, i1 false)
  switch i32 %.sroa.0.0.copyload64, label %default.unreachable [
    i32 0, label %bb.h
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.g
  ], !prof !31

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.r, %bb.d
  call void @_RNvXse_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @132, ptr %i.m, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @58, ptr %i.l, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select95.a = select i1 %i.az, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select96.a = select i1 %i.az, i64 9, i64 0
  store ptr %spec.select95.a, ptr %i.k, align 8, !captures !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %spec.select96.a, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink90 = select i1 %i.bb, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink89 = select i1 %i.bb, i64 4, i64 0
  store ptr %.sink90, ptr %i.j, align 8, !captures !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink89, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.bd, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.436.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.l, ptr %i.be, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.440.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.j, ptr %i.bf, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.444.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @633, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @634) #24
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sroa.43.0 = phi ptr [ @640, %bb.f ], [ @639, %bb.e ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !5, !nonnull !5
  %i.bi = call noundef nonnull align 8 ptr %i.bh(ptr noundef nonnull %i.aq) #26 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !range !13, !noundef !5
  %.not61 = icmp eq i64 %i.bj, 2
  br i1 %.not61, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !5, !nonnull !5
  %i.bm = call noundef nonnull align 4 ptr %i.bl(ptr noundef nonnull %i.aq) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.b, ptr noundef nonnull align 8 dereferenceable(4528) %i.bi, i64 4528, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ar, ptr noundef nonnull align 8 dereferenceable(144) %i.bn, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.h, ptr noundef nonnull align 8 dereferenceable(4528) %i.b, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs4_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsE4iterCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #22
  %.sroa.066.sroa.0.0.copyload = load ptr, ptr %i.g, align 8
  %.sroa.066.sroa.8.0.copyload = load ptr, ptr %.sroa.066.sroa.8.0..sroa_idx, align 8
  %.sroa.10.sroa.0.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.6.0.copyload = load ptr, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  br label %.backedge

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #24
  unreachable

.backedge:                                        ; preds = %.backedge.backedge, %bb.i
  %.sroa.066.sroa.8.0 = phi ptr [ %.sroa.066.sroa.8.0.copyload, %bb.i ], [ %.sroa.066.sroa.8.1, %.backedge.backedge ] ; 3 uses
  %.sroa.066.sroa.0.0 = phi ptr [ %.sroa.066.sroa.0.0.copyload, %bb.i ], [ %i.bq, %.backedge.backedge ] ; 3 uses
  %.sroa.10.sroa.6.0 = phi ptr [ %.sroa.10.sroa.6.0.copyload, %bb.i ], [ %.sroa.10.sroa.6.1, %.backedge.backedge ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %.sroa.10.sroa.0.0.copyload, %bb.i ], [ %.sroa.10.sroa.0.1, %.backedge.backedge ] ; 3 uses
  %i.bo = icmp eq ptr %.sroa.066.sroa.0.0, %.sroa.066.sroa.8.0
  br i1 %i.bo, label %bb.k, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.k:                                             ; preds = %.backedge
  %i.bp = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.6.0
  br i1 %i.bp, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %.backedge, %bb.k
  %.sroa.066.sroa.8.1 = phi ptr [ %.sroa.10.sroa.6.0, %bb.k ], [ %.sroa.066.sroa.8.0, %.backedge ]
  %.sroa.10.sroa.6.1 = phi ptr [ %.sroa.066.sroa.8.0, %bb.k ], [ %.sroa.10.sroa.6.0, %.backedge ]
  %.sroa.10.sroa.0.1 = phi ptr [ %.sroa.066.sroa.0.0, %bb.k ], [ %.sroa.10.sroa.0.0, %.backedge ]
  %.sink6.i = phi ptr [ %.sroa.10.sroa.0.0, %bb.k ], [ %.sroa.066.sroa.0.0, %.backedge ] ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4688
  %.not62 = icmp eq ptr %.sink6.i, null
  br i1 %.not62, label %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23293)
  call void @llvm.experimental.noalias.scope.decl(metadata !23294)
  %i.br = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4528
  %i.bs = call noundef zeroext i1 @_RNvXs8_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj80_ENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ar) #22
  br i1 %i.bs, label %bb.m, label %.backedge.backedge

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4672
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !23293, !noundef !5
  %i.bv = load i32, ptr %i.as, align 8, !alias.scope !23294, !noundef !5
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.n, label %.backedge.backedge

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4676
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !23293, !noundef !5
  %i.bz = load i32, ptr %i.at, align 4, !alias.scope !23294, !noundef !5
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.o, label %.backedge.backedge

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4680
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !23293, !noundef !5
  %i.cd = load i32, ptr %i.au, align 8, !alias.scope !23294, !noundef !5
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.p, label %.backedge.backedge

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4684
  %i.cg = load i32, ptr %i.cf, align 4, !alias.scope !23293, !noundef !5
  %i.ch = load i32, ptr %i.av, align 4, !alias.scope !23294, !noundef !5
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %.backedge.backedge

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 272
  %i.ck = call fastcc noundef zeroext i1 @_RNvXsD_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4256) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4256) %i.aw) #26
  br i1 %i.ck, label %.split, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.split
  br label %.backedge

.split:                                           ; preds = %bb.q
  %i.cl = call fastcc noundef zeroext i1 @_RNvXsJ_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_8DefaultsNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4688) %.sink6.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4688) %i.h) #26
  br i1 %i.cl, label %bb.r, label %.backedge.backedge

_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread: ; preds = %bb.k, %_RNvXs2_NtNtNtCsbqH9stoieM8_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cm = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select97 = select i1 %i.cm, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select98 = select i1 %i.cm, i64 9, i64 0
  store ptr %spec.select97, ptr %i.f, align 8, !captures !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select98, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.co = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink88 = select i1 %i.co, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink87 = select i1 %i.co, i64 4, i64 0
  store ptr %.sink88, ptr %i.e, align 8, !captures !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink87, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.448.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.cq, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs_NtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4nodeNtB4_7DetailsNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.452.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %0, ptr %i.cr, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsl_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node7DetailsENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.456.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.cs, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.460.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @631, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @632) #24
  unreachable

bb.r:                                             ; preds = %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ct = icmp eq ptr %i.ay, %i.ao
  br i1 %i.ct, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB11_7service5local7ServiceEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests4node4node29node_with_name_can_be_createdNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14ipc_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [4688 x i8], align 8              ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [152 x i8], align 8               ; 6 uses
  %i.l = alloca [144 x i8], align 8               ; 6 uses
  %i.m = alloca [4528 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing24generate_isolated_config(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(none) dereferenceable(4528) %i.m) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx24node9node_nameNtB2_8NodeName3new(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @641, i64 noundef 26) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23311)
  %i.n = load i8, ptr %i.k, align 8, !range !14, !alias.scope !23311, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx24node9node_name8NodeNameNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23312
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !14, !alias.scope !23311, !noundef !5
  store i8 %i.q, ptr %i.a, align 1, !noalias !23312
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @920, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @930, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @642) #24, !noalias !23313
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx24node9node_name8NodeNameNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.r, i64 144, i1 false), !alias.scope !23313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 4680
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.t, ptr noundef nonnull align 8 dereferenceable(4528) %i.m, i64 4528, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.l, i64 144, i1 false)
  store i64 1, ptr %i.h, align 8
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service14ipc_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.h) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !23314)
  %i.u = load i8, ptr %i.i, align 8, !range !14, !alias.scope !23314, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !6

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx24node9node_name8NodeNameNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23315
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !range !15, !alias.scope !23314, !noundef !5
  store i8 %i.x, ptr %i.b, align 1, !noalias !23315
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @920, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @921, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @643) #24, !noalias !23314
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx24node9node_name8NodeNameNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !23314, !nonnull !5, !noundef !5 ; 3 uses
  store ptr %i.z, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4808 ; 2 uses
  store ptr %i.aa, ptr %i.g, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.l, ptr %i.f, align 8
  %i.ab = call noundef zeroext i1 @_RNvXs8_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj80_ENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.l) #22
  br i1 %i.ab, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %spec.select = select i1 %i.ac, ptr @54, ptr inttoptr (i64 1 to ptr)
  %spec.select24 = select i1 %i.ac, i64 9, i64 0
  store ptr %spec.select, ptr %i.e, align 8, !captures !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %spec.select24, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ae = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #22 ; 2 uses
  %.sink23 = select i1 %i.ae, ptr @55, ptr inttoptr (i64 1 to ptr)
  %.sink22 = select i1 %i.ae, i64 4, i64 0
  store ptr %.sink23, ptr %i.d, align 8, !captures !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sink22, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.48.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.ag, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCsg6ZEkMtNi4J_8iceoryx24node9node_name8NodeNameNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.f, ptr %i.ah, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCsg6ZEkMtNi4J_8iceoryx24node9node_name8NodeNameNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.d, ptr %i.ai, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @644, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @645) #24
  unreachable
end_hunk_1
