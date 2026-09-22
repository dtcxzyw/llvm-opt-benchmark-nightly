Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/_iceoryx2._iceoryx2.76e6eba86560f5d9-cgu.01?download=true
inline.NumInlined: 3482
inline.NumDeleted: 1604
begin_hunk_0_@_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service16local_threadsafe7ServiceSNtNtB10_7builder19CustomPayloadMarkerNtB1G_18CustomHeaderMarkerE4sendCsacUAxWRcRNR_9__iceoryx2:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 21, ptr %i.aa, align 8, !noalias !4576
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 5080
  %i.ac = load atomic i8, ptr %i.ab monotonic, align 8, !noalias !4576
  %.not.i2 = icmp eq i8 %i.ac, 0
  br i1 %.not.i2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4576
  store ptr %i.g, ptr %i.e, align 8, !noalias !4576
  %.sroa.410.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBD_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.410.0..sroa_idx.i3, align 8, !noalias !4576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4576
  store ptr %i.f, ptr %i.d, align 8, !noalias !4576
  %.sroa.414.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.414.0..sroa_idx.i4, align 8, !noalias !4576
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @29, ptr noundef nonnull %i.d) #22, !noalias !4576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4576
  br label %bb.f

bb.e:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit
  %i.ad = call fastcc { i8, i8 } @_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE18update_connectionsCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.u) #22, !noalias !4576 ; 2 uses
  %i.ae = extractvalue { i8, i8 } %i.ad, 0        ; 2 uses
  %.not26.i = icmp eq i8 %i.ae, 2
  br i1 %.not26.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ 2, %bb.g ], [ 1, %bb.d ]
  %.sink.i = phi i8 [ %i.af, %bb.g ], [ 2, %bb.d ]
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink27.i
  store i8 %.sink.i, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !4576
  store i8 1, ptr %0, align 8, !alias.scope !4576
  br label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE11send_sampleCsacUAxWRcRNR_9__iceoryx2.exit

bb.g:                                             ; preds = %bb.e
  %i.af = extractvalue { i8, i8 } %i.ad, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4576
  store ptr %i.g, ptr %i.c, align 8, !noalias !4576
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBD_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !4576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4576
  store ptr %i.f, ptr %i.b, align 8, !noalias !4576
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !4576
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.c, ptr noundef nonnull @31, ptr noundef nonnull %i.b) #22, !noalias !4576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4576
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ae, ptr %i.ag, align 1, !alias.scope !4576
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 3856
  %i.ai = load i64, ptr %i.ah, align 16, !range !16, !noalias !4576, !noundef !13
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE21add_sample_to_historyCsacUAxWRcRNR_9__iceoryx2.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 3864
  %i.al = call { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE13borrow_sampleCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.u, i64 noundef %i.x) #22, !noalias !4576 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4576
  call void @_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE23push_with_overflow_implCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ak, i64 noundef %i.x, i64 noundef %i.z) #22, !noalias !4576
  %i.am = load i64, ptr %i.a, align 8, !range !16, !noalias !4576, !noundef !13
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !4576, !noundef !13
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE14release_sampleCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.u, i64 noundef %i.ap) #22, !noalias !4576
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4576
  %.pre.i = load ptr, ptr %i.g, align 8, !noalias !4576
  br label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE21add_sample_to_historyCsacUAxWRcRNR_9__iceoryx2.exit.i

_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE21add_sample_to_historyCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.k, %bb.h
  %i.aq = phi ptr [ %i.u, %bb.h ], [ %.pre.i, %bb.k ]
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE14deliver_offsetCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 16 %i.aq, i64 noundef %i.x, i64 noundef %i.z, i64 noundef 0) #22
  br label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE11send_sampleCsacUAxWRcRNR_9__iceoryx2.exit

_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE11send_sampleCsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %bb.f, %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE21add_sample_to_historyCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXs2_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service16local_threadsafe7ServiceSNtNtB10_7builder19CustomPayloadMarkerNtB1G_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !4577)
  call void @llvm.experimental.noalias.scope.decl(metadata !4578)
  call void @llvm.experimental.noalias.scope.decl(metadata !4579)
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !4580, !nonnull !13, !noundef !13
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !4581
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1t_7builder19CustomPayloadMarkerNtB29_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit

bb.l:                                             ; preds = %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE11send_sampleCsacUAxWRcRNR_9__iceoryx2.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1I_7service16local_threadsafe7ServiceEEE9drop_slowCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1t_7builder19CustomPayloadMarkerNtB29_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1t_7builder19CustomPayloadMarkerNtB29_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE11send_sampleCsacUAxWRcRNR_9__iceoryx2.exit, %bb.l
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden i16 @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx212response_mutINtB5_11ResponseMutNtNtNtB7_7service14ipc_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1J_18CustomHeaderMarkerE4sendCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @34, ptr %i.l, align 8, !captures !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 23, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8, !noalias !4612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4612
  %i.n = load ptr, ptr %0, align 8, !alias.scope !4612, !nonnull !13, !noundef !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.e, align 8, !noalias !4612
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB13_7service14ipc_threadsafe7ServiceEE4lockCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #22
  %i.p = load i32, ptr %i.f, align 8, !range !29, !noalias !4612, !noundef !13
  %.not.i = icmp eq i32 %i.p, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !4612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4612
  store ptr %i.g, ptr %i.c, align 8, !noalias !4612
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4612
  store ptr %i.d, ptr %i.b, align 8, !noalias !4612
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !4612
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.c, ptr noundef nonnull @326, ptr noundef nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4612
  store ptr %i.g, ptr %i.a, align 8, !noalias !4612
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !4612
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.q, align 8, !noalias !4612
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !4612
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @327, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #25
  unreachable

_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !4612, !nonnull !13, !align !43, !noundef !13 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.s, ptr %i.k, align 8
  %i.t = load i128, ptr %i.s, align 16, !range !44, !noalias !4613, !noundef !13
  %.not.i33 = icmp eq i128 %i.t, 2
  br i1 %.not.i33, label %bb.c, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit, !prof !25

bb.c:                                             ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #25, !noalias !4613
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2.exit
  %i.u = call { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.s) #22 ; 2 uses
  %i.v = extractvalue { i8, i8 } %i.u, 0          ; 2 uses
  %.not = icmp eq i8 %i.v, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit
  %i.w = extractvalue { i8, i8 } %i.u, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %0, ptr %i.j, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs_NtCsg6ZEkMtNi4J_8iceoryx212response_mutINtB4_11ResponseMutNtNtNtB6_7service14ipc_threadsafe7ServiceSNtNtB14_7builder19CustomPayloadMarkerNtB1I_18CustomHeaderMarkerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.l, ptr %i.i, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.j, ptr noundef nonnull @31, ptr noundef nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.2.0.insert.ext.i = zext i8 %i.w to i16
  %.sroa.2.0.insert.shift.i = shl nuw i16 %.sroa.2.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext nneg i8 %i.v to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.l

bb.e:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load i64, ptr %i.x, align 8, !noundef !13 ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aa = load i128, ptr %i.s, align 16, !range !44, !noalias !4614, !noundef !13
  %.not.i34 = icmp eq i128 %i.aa, 2
  br i1 %.not.i34, label %bb.g, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit35, !prof !25

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #25, !noalias !4614
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit35: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.012.0.copyload = load i64, ptr %i.af, align 8
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE28deliver_offset_to_connectionCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull align 16 %i.s, i64 noundef %i.ac, i64 noundef %i.ae, i64 noundef %.sroa.012.0.copyload, i64 noundef %i.y) #22
  %i.ag = load i8, ptr %i.h, align 8, !range !30, !noundef !13
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.k
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXs0_NtCsg6ZEkMtNi4J_8iceoryx212response_mutINtB5_11ResponseMutNtNtNtB7_7service14ipc_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1J_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !4615)
  call void @llvm.experimental.noalias.scope.decl(metadata !4616)
  call void @llvm.experimental.noalias.scope.decl(metadata !4617)
  %i.ai = load ptr, ptr %0, align 8, !alias.scope !4618, !nonnull !13, !noundef !13
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !4619
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4620)
  call void @llvm.experimental.noalias.scope.decl(metadata !4621)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !4622, !nonnull !13, !noundef !13
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !4623
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service14ipc_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2c_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service14ipc_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2c_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit

bb.j:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit35
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.025.0.copyload = load i16, ptr %i.ap, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.k:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service14ipc_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2c_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit.sink.split: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36
  %.sink = phi ptr [ %i.at, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36 ], [ %i.al, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i ]
  %.sroa.0.0.insert.insert.ph = phi i16 [ %.sroa.4.1.in.in, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36 ], [ 255, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i ]
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic11AtomicUsizeE9drop_slowCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sink) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service14ipc_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2c_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service14ipc_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2c_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service14ipc_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2c_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit.sink.split, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i
  %.sroa.0.0.insert.insert = phi i16 [ %.sroa.4.1.in.in, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36 ], [ 255, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i ], [ %.sroa.0.0.insert.insert.ph, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service14ipc_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2c_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit.sink.split ]
  ret i16 %.sroa.0.0.insert.insert

bb.l:                                             ; preds = %bb.j, %bb.d
  %.sroa.4.1.in.in = phi i16 [ %.sroa.0.0.insert.insert.i, %bb.d ], [ %.sroa.025.0.copyload, %bb.j ] ; 2 uses
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXs0_NtCsg6ZEkMtNi4J_8iceoryx212response_mutINtB5_11ResponseMutNtNtNtB7_7service14ipc_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1J_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !4624)
  call void @llvm.experimental.noalias.scope.decl(metadata !4625)
  call void @llvm.experimental.noalias.scope.decl(metadata !4626)
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !4627, !nonnull !13, !noundef !13
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !4628
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.m, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36: ; preds = %bb.m, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4629)
  call void @llvm.experimental.noalias.scope.decl(metadata !4630)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !4631, !nonnull !13, !noundef !13
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !4632
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service14ipc_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2c_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service14ipc_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2c_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden i16 @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx212response_mutINtB5_11ResponseMutNtNtNtB7_7service16local_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1L_18CustomHeaderMarkerE4sendCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @34, ptr %i.l, align 8, !captures !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 23, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8, !noalias !4663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4663
  %i.n = load ptr, ptr %0, align 8, !alias.scope !4663, !nonnull !13, !noundef !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.e, align 8, !noalias !4663
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB13_7service16local_threadsafe7ServiceEE4lockCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #22
  %i.p = load i32, ptr %i.f, align 8, !range !29, !noalias !4663, !noundef !13
  %.not.i = icmp eq i32 %i.p, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !4663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4663
  store ptr %i.g, ptr %i.c, align 8, !noalias !4663
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service16local_threadsafe7ServiceEENtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4663
  store ptr %i.d, ptr %i.b, align 8, !noalias !4663
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !4663
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.c, ptr noundef nonnull @326, ptr noundef nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4663
  store ptr %i.g, ptr %i.a, align 8, !noalias !4663
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service16local_threadsafe7ServiceEENtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !4663
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.q, align 8, !noalias !4663
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !4663
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @327, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #25
  unreachable

_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !4663, !nonnull !13, !align !43, !noundef !13 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.s, ptr %i.k, align 8
  %i.t = load i128, ptr %i.s, align 16, !range !44, !noalias !4664, !noundef !13
  %.not.i33 = icmp eq i128 %i.t, 2
  br i1 %.not.i33, label %bb.c, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit, !prof !25

bb.c:                                             ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #25, !noalias !4664
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2.exit
  %i.u = call { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service16local_threadsafe7ServiceE18update_connectionsCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.s) #22 ; 2 uses
  %i.v = extractvalue { i8, i8 } %i.u, 0          ; 2 uses
  %.not = icmp eq i8 %i.v, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit
  %i.w = extractvalue { i8, i8 } %i.u, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %0, ptr %i.j, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs_NtCsg6ZEkMtNi4J_8iceoryx212response_mutINtB4_11ResponseMutNtNtNtB6_7service16local_threadsafe7ServiceSNtNtB14_7builder19CustomPayloadMarkerNtB1K_18CustomHeaderMarkerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.l, ptr %i.i, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.j, ptr noundef nonnull @31, ptr noundef nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.2.0.insert.ext.i = zext i8 %i.w to i16
  %.sroa.2.0.insert.shift.i = shl nuw i16 %.sroa.2.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext nneg i8 %i.v to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.l

bb.e:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load i64, ptr %i.x, align 8, !noundef !13 ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aa = load i128, ptr %i.s, align 16, !range !44, !noalias !4665, !noundef !13
  %.not.i34 = icmp eq i128 %i.aa, 2
  br i1 %.not.i34, label %bb.g, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit35, !prof !25

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #25, !noalias !4665
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit35: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.012.0.copyload = load i64, ptr %i.af, align 8
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE28deliver_offset_to_connectionCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull align 16 %i.s, i64 noundef %i.ac, i64 noundef %i.ae, i64 noundef %.sroa.012.0.copyload, i64 noundef %i.y) #22
  %i.ag = load i8, ptr %i.h, align 8, !range !30, !noundef !13
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.k
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXs0_NtCsg6ZEkMtNi4J_8iceoryx212response_mutINtB5_11ResponseMutNtNtNtB7_7service16local_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1L_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !4666)
  call void @llvm.experimental.noalias.scope.decl(metadata !4667)
  call void @llvm.experimental.noalias.scope.decl(metadata !4668)
  %i.ai = load ptr, ptr %0, align 8, !alias.scope !4669, !nonnull !13, !noundef !13
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !4670
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service16local_threadsafe7ServiceEEE9drop_slowCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4671)
  call void @llvm.experimental.noalias.scope.decl(metadata !4672)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !4673, !nonnull !13, !noundef !13
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !4674
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2e_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2e_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit

bb.j:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit35
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.025.0.copyload = load i16, ptr %i.ap, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.k:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2e_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit.sink.split: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36
  %.sink = phi ptr [ %i.at, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36 ], [ %i.al, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i ]
  %.sroa.0.0.insert.insert.ph = phi i16 [ %.sroa.4.1.in.in, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36 ], [ 255, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i ]
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic11AtomicUsizeE9drop_slowCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sink) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2e_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2e_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2e_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit.sink.split, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i
  %.sroa.0.0.insert.insert = phi i16 [ %.sroa.4.1.in.in, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36 ], [ 255, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i ], [ %.sroa.0.0.insert.insert.ph, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2e_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit.sink.split ]
  ret i16 %.sroa.0.0.insert.insert

bb.l:                                             ; preds = %bb.j, %bb.d
  %.sroa.4.1.in.in = phi i16 [ %.sroa.0.0.insert.insert.i, %bb.d ], [ %.sroa.025.0.copyload, %bb.j ] ; 2 uses
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXs0_NtCsg6ZEkMtNi4J_8iceoryx212response_mutINtB5_11ResponseMutNtNtNtB7_7service16local_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1L_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !4675)
  call void @llvm.experimental.noalias.scope.decl(metadata !4676)
  call void @llvm.experimental.noalias.scope.decl(metadata !4677)
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !4678, !nonnull !13, !noundef !13
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !4679
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.m, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service16local_threadsafe7ServiceEEE9drop_slowCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2.exit.i36: ; preds = %bb.m, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4680)
  call void @llvm.experimental.noalias.scope.decl(metadata !4681)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !4682, !nonnull !13, !noundef !13
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !4683
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2e_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx212response_mut11ResponseMutNtNtNtBG_7service16local_threadsafe7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB2e_18CustomHeaderMarkerEECsacUAxWRcRNR_9__iceoryx2.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB5_6WriterNtNtNtB9_7service14ipc_threadsafe7ServiceNtNtBZ_7builder15CustomKeyMarkerE3newCsacUAxWRcRNR_9__iceoryx2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1384 x i8]) align 8 captures(none) dereferenceable(1384) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.5.i = alloca [96 x i8], align 8          ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 4                 ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 4                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 4                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 3 uses
  %i.ab = alloca [1384 x i8], align 8             ; 10 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [1 x i8], align 1                ; 4 uses
  %i.af = alloca [40 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [1 x i8], align 1                ; 4 uses
  %i.aj = alloca [1360 x i8], align 8             ; 7 uses
  %i.ak = alloca [1360 x i8], align 8             ; 8 uses
  %i.al = alloca [16 x i8], align 16              ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 8 uses
  %i.an = alloca [16 x i8], align 8               ; 8 uses
  %i.ao = alloca [8 x i8], align 8                ; 7 uses
  store ptr %1, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr @39, ptr %i.an, align 8, !captures !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 13, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr @40, ptr %i.am, align 8, !captures !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 28, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @_RNvMs1v_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB6_14UniqueWriterId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.al) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 9312
  %.sroa.01.0.copyload = load i128, ptr %i.al, align 16
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service14ipc_threadsafe7ServiceE15create_port_tagCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([1360 x i8]) align 8 captures(address) dereferenceable(1360) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 28, i128 noundef %.sroa.01.0.copyload) #22
  %i.as = load i64, ptr %i.aj, align 8, !range !20, !noundef !13
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.av = load i8, ptr %i.au, align 8, !range !45, !noundef !13
  store i8 %i.av, ptr %i.ai, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.an, ptr %i.ah, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.am, ptr %i.ag, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.49.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ai, ptr %i.aw, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.ah, ptr noundef nonnull @43, ptr noundef nonnull %i.ag) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.ax, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.q

end_hunk_0
