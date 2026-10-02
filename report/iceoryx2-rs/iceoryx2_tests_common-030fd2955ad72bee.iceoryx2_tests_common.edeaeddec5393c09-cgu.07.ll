Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_tests_common-030fd2955ad72bee.iceoryx2_tests_common.edeaeddec5393c09-cgu.07?download=true
inline.NumInlined: 512
inline.NumDeleted: 247
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE11send_sampleCskqqG2IB5b71_21iceoryx2_tests_common:bb.a
  %.not.i.i.i = icmp eq i64 %i.af, 2
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.04.i.i.i, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1152
  %i.ah = load atomic i8, ptr %i.ag monotonic, align 16
  %i.ai = load atomic i8, ptr %i.u monotonic, align 1
  %i.aj = icmp eq i8 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h, %bb.f
  %exitcond.not.i.i.i = icmp eq i64 %i.aa, %i.x
  br i1 %exitcond.not.i.i.i, label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit.i, label %bb.e

bb.j:                                             ; preds = %bb.h
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE17remove_connectionCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %1, i64 noundef %.sroa.01.04.i.i.i) #17
  br label %bb.i

_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit.i: ; preds = %bb.i, %bb.d
  %i.ak = load i8, ptr %i.b, align 1, !range !27, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i8 %i.ak, -1
  br i1 %.not.i, label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit.i._crit_edge, label %bb.l

_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit.i._crit_edge: ; preds = %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.l, %bb.b
  %.sink42 = phi i64 [ 2, %bb.l ], [ 1, %bb.b ]
  %.sink = phi i8 [ %i.ak, %bb.l ], [ 2, %bb.b ]
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink42
  store i8 %.sink, ptr %.sroa.424.0..sroa_idx, align 1
  store i8 1, ptr %0, align 8
  br label %bb.s

bb.l:                                             ; preds = %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBD_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.c, ptr noundef nonnull @45, ptr noundef nonnull inttoptr (i64 197 to ptr)) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBD_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.f, ptr noundef nonnull @44, ptr noundef nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.al, align 1
  br label %bb.k

bb.m:                                             ; preds = %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit.i._crit_edge, %bb.c
  %i.am = phi ptr [ %.pre, %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit.i._crit_edge ], [ %1, %bb.c ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3632
  %i.ao = load i64, ptr %i.an, align 16, !range !13, !noundef !8
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.n, label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE21add_sample_to_historyCskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 3640
  %i.ar = call fastcc { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE13borrow_sampleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %i.am, i64 noundef %2) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE23push_with_overflow_implCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aq, i64 noundef %2, i64 noundef %3) #17
  %i.as = load i64, ptr %i.a, align 8, !range !13, !noundef !8
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.o, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !8 ; 3 uses
  %i.aw = and i64 %i.av, 255                      ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 2632
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !8 ; 2 uses
  %i.az = icmp ult i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 2624
  %i.bb = load ptr, ptr %i.ba, align 16, !nonnull !8, !noundef !8
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.aw
  %i.bd = lshr i64 %i.av, 8
  %i.be = call noundef i64 @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState14release_sample(ptr noundef nonnull align 8 %i.bc, i64 noundef %i.bd) #17
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.r, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #16
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE17deallocate_bucketCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.bg, i64 noundef %i.av) #17
  br label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i: ; preds = %bb.r, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre34 = load ptr, ptr %i.j, align 8
  br label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE21add_sample_to_historyCskqqG2IB5b71_21iceoryx2_tests_common.exit

_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE21add_sample_to_historyCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.m, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  %i.bh = phi ptr [ %i.am, %bb.m ], [ %.pre34, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14deliver_offsetCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 16 %i.bh, i64 noundef %2, i64 noundef %3, i64 noundef 0) #17
  br label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE21add_sample_to_historyCskqqG2IB5b71_21iceoryx2_tests_common.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE13borrow_sampleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %1 to i8
  %i.b = and i64 %1, 255                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.g = load ptr, ptr %i.f, align 16, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.b ; 4 uses
  %i.i = tail call noundef i64 @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState12payload_size(ptr noundef nonnull align 8 %i.h) #17
  %i.j = tail call noundef i64 @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState12payload_size(ptr noundef nonnull align 8 %i.h) #17
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = tail call noundef i64 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE11bucket_sizeCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.l, i8 noundef %i.a) #17 ; 2 uses
  tail call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState16set_payload_size(ptr noundef nonnull align 8 %i.h, i64 noundef %i.m) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i64 [ %i.m, %bb.d ], [ %i.i, %bb.b ]
  %i.n = lshr i64 %1, 8
  %i.o = tail call noundef i64 @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState13borrow_sample(ptr noundef nonnull align 8 %i.h, i64 noundef %i.n) #17
  %i.p = insertvalue { i64, i64 } poison, i64 %i.o, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.0.0, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE13close_channelCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree noundef nonnull readonly align 16 captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.b = load i64, ptr %i.a, align 16, !noundef !8 ; 2 uses
  %i.c = icmp ult i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw [1168 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = load i64, ptr %i.f, align 16, !range !9, !noundef !8
  %.not = icmp eq i64 %i.g, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvYINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details6SenderINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails13close_channelCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.f, i64 noundef %1, i64 noundef %3) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14deliver_offsetCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 16 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 13 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 13 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 16 uses
  %i.l = alloca [16 x i8], align 8                ; 15 uses
  %i.m = alloca [8 x i8], align 8                 ; 14 uses
  %i.n = alloca [8 x i8], align 8                 ; 14 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [2 x i8], align 1                 ; 5 uses
  tail call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE25retrieve_returned_samplesCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %1) #17
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2656 ; 3 uses
  %i.r = load i64, ptr %i.q, align 16, !noundef !8 ; 5 uses
  %i.s = icmp ult i64 %i.r, 7896722634293473
  tail call void @llvm.assume(i1 %i.s)
  %.not81 = icmp eq i64 %i.r, 0
  br i1 %.not81, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load i8, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2648 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3625 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2632
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2624
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 3560 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %.promoted67 = load i8, ptr %i.ad, align 1
  %.promoted74 = load i64, ptr %i.ar, align 8
  br label %.outer

bb.b:                                             ; preds = %bb.t
  store i8 %i.cp, ptr %i.ad, align 1
  store i64 %.sroa.05.0.i76129, ptr %i.ar, align 8
  %.not = icmp eq i8 %.sroa.016.1, -1
  br i1 %.not, label %.thread, label %bb.r

.outer.peel.newph:                                ; preds = %.thread136.peel, %.thread136
  %.sroa.019.063 = phi i64 [ %i.as, %.thread136 ], [ %i.cq, %.thread136.peel ] ; 4 uses
  %i.as = add nuw nsw i64 %.sroa.019.063, 1       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %1, ptr %i.n, align 8, !noalias !449
  store i64 %2, ptr %i.m, align 8, !noalias !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !449
  store ptr @52, ptr %i.l, align 8, !noalias !449, !captures !26
  store i64 28, ptr %i.t, align 8, !noalias !449
  %i.at = load i64, ptr %i.q, align 16, !noalias !449, !noundef !8 ; 2 uses
  %i.au = icmp ult i64 %.sroa.019.063, %i.at
  br i1 %i.au, label %bb.c, label %.loopexit502

bb.c:                                             ; preds = %.outer.peel.newph
  %i.av = load ptr, ptr %i.u, align 8, !noalias !449, !nonnull !8, !noundef !8
  %i.aw = getelementptr inbounds nuw [1168 x i8], ptr %i.av, i64 %.sroa.019.063 ; 8 uses
  %i.ax = load i64, ptr %i.aw, align 16, !range !9, !noalias !449, !noundef !8
  %.not.i = icmp eq i64 %i.ax, 2
  br i1 %.not.i, label %.loopexit, label %bb.d

.loopexit502:                                     ; preds = %.outer, %.outer.peel.newph
  %.lcssa452 = phi i8 [ 3, %.outer.peel.newph ], [ %.ph, %.outer ]
  %.sroa.019.063.lcssa = phi i64 [ %.sroa.019.063, %.outer.peel.newph ], [ %.sroa.019.063.ph, %.outer ]
  %.lcssa405 = phi i8 [ 1, %.outer.peel.newph ], [ %.ph154, %.outer ]
  %.lcssa = phi i64 [ %i.at, %.outer.peel.newph ], [ %i.cr, %.outer ]
  store i8 %.lcssa452, ptr %i.ad, align 1
  store i64 %.sroa.05.0.i75.ph, ptr %i.ar, align 8
  store i8 %.lcssa405, ptr %0, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 7896722634293472) %.sroa.019.063.lcssa, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16, !noalias !449
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !449
  %i.ay = load i128, ptr %1, align 16, !range !16, !noalias !449, !noundef !8
  %i.az = trunc nuw i128 %i.ay to i1
  %i.ba = load i8, ptr %i.v, align 1, !range !28, !noalias !449, !noundef !8 ; 2 uses
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %..i = add nuw nsw i8 %i.ba, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !449
  store ptr %5, ptr %i.j, align 8, !noalias !449
  store ptr %1, ptr %6, align 8, !noalias !449
  store ptr %i.aw, ptr %i.w, align 8, !noalias !449
  call void @_RINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB6_6SenderINtNtNtBc_15dynamic_storage19posix_shared_memory7StorageNtB6_20SharedManagementDataEENtBa_14ZeroCopySender13blocking_sendNCNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB3x_6SenderNtNtNtB3D_7service14ipc_threadsafe7ServiceE33deliver_offset_to_connection_impl0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.aw, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, i8 noundef %..i) #17, !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !449
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_RNvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_6SenderINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_14ZeroCopySender8try_sendCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.aw, i64 noundef %2, i64 noundef %3, i64 noundef %4) #17, !noalias !449
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_RINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB6_6SenderINtNtNtBc_15dynamic_storage19posix_shared_memory7StorageNtB6_20SharedManagementDataEENtBa_14ZeroCopySender13blocking_sendNCNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB3x_6SenderNtNtNtB3D_7service14ipc_threadsafe7ServiceE33deliver_offset_to_connection_impls_0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.aw, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef 1) #17, !noalias !449
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.bc = load i64, ptr %i.k, align 8, !range !9, !noalias !449, !noundef !8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 2
  br i1 %i.bd, label %bb.j, label %.loopexit503

bb.j:                                             ; preds = %bb.i
  %i.be = load i8, ptr %i.x, align 8, !range !15, !noalias !449, !noundef !8
  switch i8 %i.be, label %.unreachabledefault [
    i8 0, label %bb.o
    i8 1, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
    i8 2, label %.loopexit504
    i8 3, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
    i8 4, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
    i8 5, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
    i8 6, label %.loopexit505
  ]

.loopexit503:                                     ; preds = %bb.i, %bb.aa
  %.lcssa473 = phi i64 [ %i.da, %bb.aa ], [ %i.bc, %bb.i ]
  %.lcssa454 = phi i8 [ %.ph, %bb.aa ], [ 3, %bb.i ] ; 4 uses
  %.sroa.6.062.lcssa430 = phi i8 [ %.sroa.6.062.ph, %bb.aa ], [ %.sroa.8.0.copyload135, %bb.i ] ; 3 uses
  %.sroa.016.060.lcssa417 = phi i8 [ %.sroa.016.060.ph, %bb.aa ], [ 3, %bb.i ] ; 3 uses
  %.lcssa407 = phi i8 [ %.ph154, %bb.aa ], [ 1, %bb.i ]
  %.lcssa396 = phi i64 [ %i.cq, %bb.aa ], [ %i.as, %bb.i ] ; 3 uses
  %i.bf = load i64, ptr %i.x, align 8, !noalias !449 ; 3 uses
  %i.bg = call fastcc { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE13borrow_sampleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %1, i64 noundef %2) #17, !noalias !449 ; 0 uses
  %i.bh = trunc nuw i64 %.lcssa473 to i1
  br i1 %i.bh, label %bb.k, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

bb.k:                                             ; preds = %.loopexit503
  %i.bi = and i64 %i.bf, 255                      ; 3 uses
  %i.bj = load i64, ptr %i.y, align 8, !noalias !449, !noundef !8 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.z, align 16, !noalias !449, !nonnull !8, !noundef !8
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bi
  %i.bn = lshr i64 %i.bf, 8
  %i.bo = call noundef i64 @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState14release_sample(ptr noundef nonnull align 8 %i.bm, i64 noundef %i.bn) #17, !noalias !449
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.n, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

bb.m:                                             ; preds = %bb.k
  store i8 %.lcssa454, ptr %i.ad, align 1
  store i64 %.sroa.05.0.i75.ph, ptr %i.ar, align 8
  store i8 %.lcssa407, ptr %0, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #16, !noalias !449
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE17deallocate_bucketCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.aa, i64 noundef %i.bf) #17, !noalias !449
  br label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i: ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.j, %bb.j, %bb.j, %bb.j, %.loopexit155, %bb.n, %bb.l, %.loopexit503
  %i.bq = phi i8 [ %i.cg, %.loopexit155 ], [ %.lcssa454, %bb.n ], [ %.lcssa454, %.loopexit503 ], [ %.lcssa454, %bb.l ], [ %.ph, %bb.ab ], [ %.ph, %bb.ab ], [ %.ph, %bb.ab ], [ %.ph, %bb.ab ], [ 3, %bb.j ], [ 3, %bb.j ], [ 3, %bb.j ], [ 3, %bb.j ]
  %.sroa.6.062440 = phi i8 [ %.sroa.6.062441, %.loopexit155 ], [ %.sroa.6.062.lcssa430, %bb.n ], [ %.sroa.6.062.lcssa430, %.loopexit503 ], [ %.sroa.6.062.lcssa430, %bb.l ], [ %.sroa.6.062.ph, %bb.ab ], [ %.sroa.6.062.ph, %bb.ab ], [ %.sroa.6.062.ph, %bb.ab ], [ %.sroa.6.062.ph, %bb.ab ], [ %.sroa.8.0.copyload135, %bb.j ], [ %.sroa.8.0.copyload135, %bb.j ], [ %.sroa.8.0.copyload135, %bb.j ], [ %.sroa.8.0.copyload135, %bb.j ]
  %.sroa.016.060427 = phi i8 [ %.sroa.016.060428, %.loopexit155 ], [ %.sroa.016.060.lcssa417, %bb.n ], [ %.sroa.016.060.lcssa417, %.loopexit503 ], [ %.sroa.016.060.lcssa417, %bb.l ], [ %.sroa.016.060.ph, %bb.ab ], [ %.sroa.016.060.ph, %bb.ab ], [ %.sroa.016.060.ph, %bb.ab ], [ %.sroa.016.060.ph, %bb.ab ], [ 3, %bb.j ], [ 3, %bb.j ], [ 3, %bb.j ], [ 3, %bb.j ]
  %i.br = phi i64 [ %i.ch, %.loopexit155 ], [ %.lcssa396, %bb.n ], [ %.lcssa396, %.loopexit503 ], [ %.lcssa396, %bb.l ], [ %i.cq, %bb.ab ], [ %i.cq, %bb.ab ], [ %i.cq, %bb.ab ], [ %i.cq, %bb.ab ], [ %i.as, %bb.j ], [ %i.as, %bb.j ], [ %i.as, %bb.j ], [ %i.as, %bb.j ]
  %.sroa.05.1.i = phi i64 [ 0, %.loopexit155 ], [ 1, %bb.n ], [ 1, %.loopexit503 ], [ 1, %bb.l ], [ 0, %bb.j ], [ 0, %bb.j ], [ 0, %bb.j ], [ 0, %bb.j ], [ 0, %bb.ab ], [ 0, %bb.ab ], [ 0, %bb.ab ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !449
  br label %.loopexit

.unreachabledefault:                              ; preds = %bb.j
  unreachable

default.unreachable:                              ; preds = %bb.ab
  unreachable

.loopexit506:                                     ; preds = %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  unreachable

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !449
  %i.bs = load ptr, ptr %i.ag, align 8, !noalias !449, !nonnull !8, !noundef !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2592
  %.sroa.081.0.copyload.i = load i128, ptr %i.bt, align 8, !noalias !449
  %i.bu = load i128, ptr %i.ah, align 16, !noalias !449, !noundef !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 1136 ; 3 uses
  %i.bw = load i128, ptr %i.bv, align 16, !noalias !449, !noundef !8
  store i128 %.sroa.081.0.copyload.i, ptr %i.e, align 16, !noalias !449
  store i128 %i.bu, ptr %i.ai, align 16, !noalias !449
  store i128 %i.bw, ptr %i.aj, align 16, !noalias !449
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.bx = load ptr, ptr %i.al, align 16, !alias.scope !450, !noalias !451, !align !10, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !452, !nonnull !8, !noundef !8
  %i.ca = call noundef i8 %i.bz(ptr noundef nonnull readonly align 16 dereferenceable(48) %i.ak, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e) #17, !noalias !449, !inline_history !446
  br label %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %i.ak, align 16, !alias.scope !450, !noalias !451, !nonnull !8, !noundef !8
  %i.cc = load ptr, ptr %i.am, align 8, !alias.scope !450, !noalias !451, !nonnull !8, !align !10, !noundef !8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !invariant.load !8, !noalias !452, !nonnull !8
  %i.cf = call noundef i8 %i.ce(ptr noundef nonnull %i.cb, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e) #18, !noalias !453, !inline_history !446
  br label %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i: ; preds = %bb.q, %bb.p
  %.sroa.0.0.i.i = phi i8 [ %i.ca, %bb.p ], [ %i.cf, %bb.q ]
  switch i8 %.sroa.0.0.i.i, label %.loopexit506 [
    i8 0, label %.loopexit155
    i8 1, label %.loopexit507
    i8 2, label %.thread136
  ]

.loopexit155:                                     ; preds = %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i, %.loopexit507
  %i.cg = phi i8 [ %.lcssa461, %.loopexit507 ], [ %.ph, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel ], [ 3, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  %.sroa.6.062441 = phi i8 [ %.sroa.6.062.lcssa437, %.loopexit507 ], [ %.sroa.6.062.ph, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel ], [ %.sroa.8.0.copyload135, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  %.sroa.016.060428 = phi i8 [ %.sroa.016.060.lcssa424, %.loopexit507 ], [ %.sroa.016.060.ph, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel ], [ 3, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  %i.ch = phi i64 [ %.lcssa403, %.loopexit507 ], [ %i.cq, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel ], [ %i.as, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !449
  br label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

.loopexit507:                                     ; preds = %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel
  %.lcssa484 = phi ptr [ %i.dg, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel ], [ %i.bv, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  %.lcssa461 = phi i8 [ %.ph, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel ], [ 3, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  %.sroa.6.062.lcssa437 = phi i8 [ %.sroa.6.062.ph, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel ], [ %.sroa.8.0.copyload135, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  %.sroa.016.060.lcssa424 = phi i8 [ %.sroa.016.060.ph, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel ], [ 3, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  %.lcssa403 = phi i64 [ %i.cq, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel ], [ %i.as, %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !449
  store ptr %i.n, ptr %i.d, align 8, !noalias !449
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !449
  store ptr %i.l, ptr %i.c, align 8, !noalias !449
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.460.0..sroa_idx.i, align 8, !noalias !449
  store ptr %i.m, ptr %i.ap, align 8, !noalias !449
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !449
  store ptr %.lcssa484, ptr %i.aq, align 8, !noalias !449
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.468.0..sroa_idx.i, align 8, !noalias !449
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 4, ptr noundef nonnull @2, ptr noundef nonnull %i.d, ptr noundef nonnull @53, ptr noundef nonnull %i.c) #17, !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !449
  br label %.loopexit155

bb.r:                                             ; preds = %.thread146, %bb.b
  %.sroa.016.1143153 = phi i8 [ 3, %.thread146 ], [ %.sroa.016.1, %bb.b ]
  %.sroa.6.1145152 = phi i8 [ %.sroa.8.0.copyload135, %.thread146 ], [ %.sroa.6.1, %bb.b ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.016.1143153, ptr %i.ci, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.6.1145152, ptr %.sroa.4.0..sroa_idx, align 2
  store i8 1, ptr %0, align 8
  br label %bb.s

.thread:                                          ; preds = %bb.a, %bb.b
  %.sroa.03.0.lcssa127 = phi i64 [ %.sroa.03.1, %bb.b ], [ 0, %bb.a ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0.lcssa127, ptr %i.cj, align 8
  store i8 0, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread, %.loopexit505
  ret void

.loopexit:                                        ; preds = %bb.u, %bb.c, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  %i.ck = phi i8 [ %i.bq, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ], [ %.ph, %bb.u ], [ 3, %bb.c ]
  %.sroa.6.062439 = phi i8 [ %.sroa.6.062440, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ], [ %.sroa.6.062.ph, %bb.u ], [ %.sroa.8.0.copyload135, %bb.c ]
  %.sroa.016.060426 = phi i8 [ %.sroa.016.060427, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ], [ %.sroa.016.060.ph, %bb.u ], [ 3, %bb.c ]
  %i.cl = phi i64 [ %i.br, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ], [ %i.cq, %bb.u ], [ %i.as, %bb.c ]
  %.sroa.05.0.i76.ph = phi i64 [ %.sroa.05.1.i, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ], [ 0, %bb.c ], [ 0, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.cm = add i64 %.sroa.05.0.i76.ph, %.sroa.03.061.ph
  br label %bb.t

bb.t:                                             ; preds = %.loopexit504, %.loopexit
  %i.cn = phi i64 [ %i.cl, %.loopexit ], [ %.lcssa399, %.loopexit504 ] ; 2 uses
  %i.co = phi i8 [ 0, %.loopexit ], [ 1, %.loopexit504 ]
  %i.cp = phi i8 [ %i.ck, %.loopexit ], [ 6, %.loopexit504 ] ; 2 uses
  %.sroa.05.0.i76129 = phi i64 [ %.sroa.05.0.i76.ph, %.loopexit ], [ %.sroa.05.0.i75.ph, %.loopexit504 ] ; 2 uses
  %.sroa.016.1 = phi i8 [ %.sroa.016.060426, %.loopexit ], [ %spec.select, %.loopexit504 ] ; 3 uses
  %.sroa.03.1 = phi i64 [ %i.cm, %.loopexit ], [ %.sroa.03.061.ph, %.loopexit504 ] ; 2 uses
  %.sroa.6.1 = phi i8 [ %.sroa.6.062439, %.loopexit ], [ %spec.select27, %.loopexit504 ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.r
  br i1 %exitcond.not, label %bb.b, label %.outer

.outer:                                           ; preds = %bb.t, %.lr.ph
  %.sroa.05.0.i75.ph = phi i64 [ %.sroa.05.0.i76129, %bb.t ], [ %.promoted74, %.lr.ph ] ; 5 uses
  %.ph = phi i8 [ %i.cp, %bb.t ], [ %.promoted67, %.lr.ph ] ; 9 uses
  %.sroa.019.063.ph = phi i64 [ %i.cn, %bb.t ], [ 0, %.lr.ph ] ; 4 uses
  %.sroa.6.062.ph = phi i8 [ %.sroa.6.1, %bb.t ], [ undef, %.lr.ph ] ; 9 uses
  %.sroa.03.061.ph = phi i64 [ %.sroa.03.1, %bb.t ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.016.060.ph = phi i8 [ %.sroa.016.1, %bb.t ], [ -1, %.lr.ph ] ; 9 uses
  %.ph154 = phi i8 [ %i.co, %bb.t ], [ %.promoted, %.lr.ph ] ; 2 uses
  %.sroa.8.0.copyload135 = load i8, ptr %.sroa.8.0..sroa_idx, align 2 ; 10 uses
  %i.cq = add nuw nsw i64 %.sroa.019.063.ph, 1    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %1, ptr %i.n, align 8, !noalias !449
  store i64 %2, ptr %i.m, align 8, !noalias !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !449
  store ptr @52, ptr %i.l, align 8, !noalias !449, !captures !26
  store i64 28, ptr %i.t, align 8, !noalias !449
  %i.cr = load i64, ptr %i.q, align 16, !noalias !449, !noundef !8 ; 2 uses
  %i.cs = icmp ult i64 %.sroa.019.063.ph, %i.cr
  br i1 %i.cs, label %bb.u, label %.loopexit502

bb.u:                                             ; preds = %.outer
  %i.ct = load ptr, ptr %i.u, align 8, !noalias !449, !nonnull !8, !noundef !8
  %i.cu = getelementptr inbounds nuw [1168 x i8], ptr %i.ct, i64 %.sroa.019.063.ph ; 8 uses
  %i.cv = load i64, ptr %i.cu, align 16, !range !9, !noalias !449, !noundef !8
  %.not.i.peel = icmp eq i64 %i.cv, 2
  br i1 %.not.i.peel, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !449
  %i.cw = load i128, ptr %1, align 16, !range !16, !noalias !449, !noundef !8
  %i.cx = trunc nuw i128 %i.cw to i1
  %i.cy = load i8, ptr %i.v, align 1, !range !28, !noalias !449, !noundef !8 ; 2 uses
  br i1 %i.cx, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB6_6SenderINtNtNtBc_15dynamic_storage19posix_shared_memory7StorageNtB6_20SharedManagementDataEENtBa_14ZeroCopySender13blocking_sendNCNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB3x_6SenderNtNtNtB3D_7service14ipc_threadsafe7ServiceE33deliver_offset_to_connection_impls_0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.cu, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef 1) #17, !noalias !449
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  call void @_RNvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_6SenderINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_14ZeroCopySender8try_sendCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.cu, i64 noundef %2, i64 noundef %3, i64 noundef %4) #17, !noalias !449
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %..i.peel = add nuw nsw i8 %i.cy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !449
  store ptr %5, ptr %i.j, align 8, !noalias !449
  store ptr %1, ptr %6, align 8, !noalias !449
  store ptr %i.cu, ptr %i.w, align 8, !noalias !449
  call void @_RINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB6_6SenderINtNtNtBc_15dynamic_storage19posix_shared_memory7StorageNtB6_20SharedManagementDataEENtBa_14ZeroCopySender13blocking_sendNCNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB3x_6SenderNtNtNtB3D_7service14ipc_threadsafe7ServiceE33deliver_offset_to_connection_impl0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.cu, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, i8 noundef %..i.peel) #17, !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !449
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.da = load i64, ptr %i.k, align 8, !range !9, !noalias !449, !noundef !8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 2
  br i1 %i.db, label %bb.ab, label %.loopexit503

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load i8, ptr %i.x, align 8, !range !15, !noalias !449, !noundef !8
  switch i8 %i.dc, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
    i8 2, label %.loopexit504
    i8 3, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
    i8 4, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
    i8 5, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
    i8 6, label %.loopexit505
  ]

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !449
  %i.dd = load ptr, ptr %i.ag, align 8, !noalias !449, !nonnull !8, !noundef !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2592
  %.sroa.081.0.copyload.i.peel = load i128, ptr %i.de, align 8, !noalias !449
  %i.df = load i128, ptr %i.ah, align 16, !noalias !449, !noundef !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 1136 ; 3 uses
  %i.dh = load i128, ptr %i.dg, align 16, !noalias !449, !noundef !8
  store i128 %.sroa.081.0.copyload.i.peel, ptr %i.e, align 16, !noalias !449
  store i128 %i.df, ptr %i.ai, align 16, !noalias !449
  store i128 %i.dh, ptr %i.aj, align 16, !noalias !449
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.di = load ptr, ptr %i.al, align 16, !alias.scope !454, !noalias !451, !align !10, !noundef !8 ; 2 uses
  %.not.i.i.peel = icmp eq ptr %i.di, null
  br i1 %.not.i.i.peel, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !455, !nonnull !8, !noundef !8
  %i.dl = call noundef i8 %i.dk(ptr noundef nonnull readonly align 16 dereferenceable(48) %i.ak, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e) #17, !noalias !449, !inline_history !446
  br label %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel

bb.ae:                                            ; preds = %bb.ac
  %i.dm = load ptr, ptr %i.ak, align 16, !alias.scope !454, !noalias !451, !nonnull !8, !noundef !8
  %i.dn = load ptr, ptr %i.am, align 8, !alias.scope !454, !noalias !451, !nonnull !8, !align !10, !noundef !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !invariant.load !8, !noalias !455, !nonnull !8
  %i.dq = call noundef i8 %i.dp(ptr noundef nonnull %i.dm, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e) #18, !noalias !456, !inline_history !446
  br label %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel

_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel: ; preds = %bb.ae, %bb.ad
  %.sroa.0.0.i.i.peel = phi i8 [ %i.dl, %bb.ad ], [ %i.dq, %bb.ae ]
  switch i8 %.sroa.0.0.i.i.peel, label %.loopexit506 [
    i8 0, label %.loopexit155
    i8 1, label %.loopexit507
    i8 2, label %.thread136.peel
  ]

.thread136.peel:                                  ; preds = %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !449
  store ptr %i.n, ptr %i.b, align 8, !noalias !449
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !449
  store ptr %i.l, ptr %i.a, align 8, !noalias !449
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.472.0..sroa_idx.i, align 8, !noalias !449
  store ptr %i.m, ptr %i.an, align 8, !noalias !449
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.476.0..sroa_idx.i, align 8, !noalias !449
  store ptr %i.dg, ptr %i.ao, align 8, !noalias !449
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.480.0..sroa_idx.i, align 8, !noalias !449
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @53, ptr noundef nonnull %i.a) #17, !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond.not141.peel = icmp eq i64 %i.cq, %i.r
  br i1 %exitcond.not141.peel, label %.thread146, label %.outer.peel.newph

.thread136:                                       ; preds = %_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !449
  store ptr %i.n, ptr %i.b, align 8, !noalias !449
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !449
  store ptr %i.l, ptr %i.a, align 8, !noalias !449
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.472.0..sroa_idx.i, align 8, !noalias !449
  store ptr %i.m, ptr %i.an, align 8, !noalias !449
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.476.0..sroa_idx.i, align 8, !noalias !449
  store ptr %i.bv, ptr %i.ao, align 8, !noalias !449
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.480.0..sroa_idx.i, align 8, !noalias !449
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @53, ptr noundef nonnull %i.a) #17, !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond.not141 = icmp eq i64 %i.as, %i.r
  br i1 %exitcond.not141, label %.thread146, label %.outer.peel.newph, !llvm.loop !448

.thread146:                                       ; preds = %.thread136.peel, %.thread136
  store i64 %.sroa.05.0.i75.ph, ptr %i.ar, align 8
  br label %bb.r

.loopexit505:                                     ; preds = %bb.ab, %bb.j
  %.lcssa468 = phi ptr [ %i.aw, %bb.j ], [ %i.cu, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !449
  store ptr %i.n, ptr %i.g, align 8, !noalias !449
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !449
  %i.dr = getelementptr inbounds nuw i8, ptr %.lcssa468, i64 1136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !449
  store ptr %i.l, ptr %i.f, align 8, !noalias !449
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !449
  store ptr %i.m, ptr %i.ab, align 8, !noalias !449
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !449
  store ptr %i.dr, ptr %i.ac, align 8, !noalias !449
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !449
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.g, ptr noundef nonnull @55, ptr noundef nonnull %i.f) #17, !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.8.0.copyload132 = load i8, ptr %.sroa.8.0..sroa_idx, align 2
  store i8 7, ptr %i.ad, align 1
  store i64 %.sroa.05.0.i75.ph, ptr %i.ar, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 1
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %.sroa.8.0.copyload132, ptr %.sroa.8.0..sroa_idx10, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsE_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9SendErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @48, ptr noundef nonnull %i.o) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.s

.loopexit504:                                     ; preds = %bb.j, %bb.ab
  %.lcssa467 = phi ptr [ %i.cu, %bb.ab ], [ %i.aw, %bb.j ]
  %.sroa.6.062.lcssa433 = phi i8 [ %.sroa.6.062.ph, %bb.ab ], [ %.sroa.8.0.copyload135, %bb.j ]
  %.sroa.016.060.lcssa420 = phi i8 [ %.sroa.016.060.ph, %bb.ab ], [ 3, %bb.j ] ; 2 uses
  %.lcssa399 = phi i64 [ %i.cq, %bb.ab ], [ %i.as, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !449
  store ptr %i.n, ptr %i.i, align 8, !noalias !449
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !449
  %i.ds = getelementptr inbounds nuw i8, ptr %.lcssa467, i64 1136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !449
  store ptr %i.l, ptr %i.h, align 8, !noalias !449
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !449
  store ptr %i.m, ptr %i.ae, align 8, !noalias !449
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !449
  store ptr %i.ds, ptr %i.af, align 8, !noalias !449
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !449
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.i, ptr noundef nonnull @54, ptr noundef nonnull %i.h) #17, !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 2
  %.not26 = icmp eq i8 %.sroa.016.060.lcssa420, -1 ; 2 uses
  %spec.select = select i1 %.not26, i8 6, i8 %.sroa.016.060.lcssa420
  %spec.select27 = select i1 %.not26, i8 %.sroa.8.0.copyload, i8 %.sroa.6.062.lcssa433
  br label %bb.t
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14release_sampleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %1, 255                          ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.f = load ptr, ptr %i.e, align 16, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.a
  %i.h = lshr i64 %1, 8
  %i.i = tail call noundef i64 @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState14release_sample(ptr noundef nonnull align 8 %i.g, i64 noundef %i.h) #17
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE17deallocate_bucketCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.k, i64 noundef %1) #17
  br label %bb.e
end_hunk_0
