Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.10?download=true
inline.NumInlined: 368
inline.NumDeleted: 208
begin_hunk_0_@_RNvMNtNtNtNtCslghKHtsL3a4_5tokio3net4unix8datagram6socketNtB2_12UnixDatagram9poll_recv:bb.a
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.g, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.k = icmp ult i64 %i.g, %i.f
  br i1 %i.k, label %bb.f, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf7advance.exit, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28, !noalias !262
  unreachable

_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf7advance.exit: ; preds = %bb.e
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !262, !noalias !263
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf7advance.exit
  %.sroa.4.0 = phi ptr [ null, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf7advance.exit ], [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf7advance.exit ], [ 0, %bb.b ], [ 1, %bb.a ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio3net4unix8datagram6socketNtB2_12UnixDatagram9poll_send(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.c, align 8
  %i.d = call { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration7poll_iojNCNvMNtNtNtNtBc_3net4unix8datagram6socketNtB1s_12UnixDatagram9poll_send0EBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats27tuned_global_queue_interval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !11, !noundef !4
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !noundef !4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !noundef !4
  %i.g = fdiv double 2.000000e+05, %i.f
  %i.h = tail call i32 @llvm.fptoui.sat.i32.f64(double %i.g)
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 2)
  %.sroa.0.0.i = tail call noundef range(i32 2, 128) i32 @llvm.umin.i32(i32 %i.i, i32 127)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.d, %bb.b ], [ %.sroa.0.0.i, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats30end_processing_scheduled_tasks(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics5batchNtB2_12MetricsBatch30end_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8, !range !264, !noundef !4
  %i.j = tail call { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.d, i32 noundef %i.e, i64 noundef %i.g, i32 noundef %i.i) ; 2 uses
  %i.k = extractvalue { i64, i32 } %i.j, 0
  %i.l = extractvalue { i64, i32 } %i.j, 1        ; 2 uses
  %i.m = zext i64 %i.k to i128
  %i.n = mul nuw nsw i128 %i.m, 1000000000
  %i.o = icmp ult i32 %i.l, 1000000000
  tail call void @llvm.assume(i1 %i.o)
  %i.p = zext nneg i32 %i.l to i128
  %i.q = add nuw nsw i128 %i.n, %i.p
  %i.r = uitofp nneg i128 %i.q to double
  %i.s = load i64, ptr %0, align 8, !noundef !4
  %i.t = uitofp i64 %i.s to double                ; 2 uses
  %i.u = fdiv double %i.r, %i.t
  %i.v = tail call double @llvm.pow.f64(double 9.000000e-01, double %i.t)
  %i.w = fsub double 1.000000e+00, %i.v           ; 2 uses
  %i.x = fmul double %i.w, %i.u
  %i.y = fsub nnan double 1.000000e+00, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !noundef !4
  %i.ab = fmul double %i.aa, %i.y
  %i.ac = fadd double %i.x, %i.ab
  store double %i.ac, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats32start_processing_scheduled_tasks(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics5batchNtB2_12MetricsBatch32start_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = tail call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.b, 0
  %i.d = extractvalue { i64, i32 } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.d, ptr %i.f, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 128 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics5batchNtB2_12MetricsBatch3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull align 128 %1)
  %i.b = tail call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.b, 0
  %i.d = extractvalue { i64, i32 } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.d, ptr %i.f, align 8
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double f0x40A99D60864B8A7E, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats6submit(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noundef nonnull align 128 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !noundef !4
  %i.d = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.c)
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics5batchNtB2_12MetricsBatch6submit(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 128 %1, i64 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_17GlobalOrphanQueue12reap_orphans(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7process3imp6orphanINtB5_15OrphanQueueImplNtNtCsaL1QbXo9JQH_3std7process5ChildE12reap_orphansBb_(ptr noundef nonnull align 8 @_RNvNvNtNtCslghKHtsL3a4_5tokio7process3imp16get_orphan_queue12ORPHAN_QUEUE, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB5_10UnixStream14poll_read_priv(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamE9poll_readB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB5_10UnixStream15poll_write_priv(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamE10poll_writeB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB5_10UnixStream24poll_write_vectored_priv(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.c, align 8
  %i.d = call { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration7poll_iojNCNvMs4_NtNtBc_2io12poll_eventedINtB1v_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamE19poll_write_vectored0EBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.d
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMs3_NtNtCslghKHtsL3a4_5tokio6signal8registryNtB5_7Globals12record_event(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = add i64 %1, -1
  %i.d = icmp uge i64 %i.c, %.val1
  %2 = getelementptr [32 x i8], ptr %.val, i64 %1 ; 2 uses
  %3 = getelementptr i8, ptr %2, i64 -32
  %.not1.i = icmp eq ptr %3, null
  %.not.i = select i1 %i.d, i1 true, i1 %.not1.i
  br i1 %.not.i, label %_RNvMs1_NtNtCslghKHtsL3a4_5tokio6signal8registryINtB5_8RegistryNtNtB7_4unix9OsStorageE12record_eventB9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 -24
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %_RNvMs1_NtNtCslghKHtsL3a4_5tokio6signal8registryINtB5_8RegistryNtNtB7_4unix9OsStorageE12record_eventB9_.exit

_RNvMs1_NtNtCslghKHtsL3a4_5tokio6signal8registryINtB5_8RegistryNtNtB7_4unix9OsStorageE12record_eventB9_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs3_NtNtCslghKHtsL3a4_5tokio6signal8registryNtB5_7Globals17register_listener(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8
  %i.e = add i64 %1, -1
  %i.f = icmp uge i64 %i.e, %.val1
  %2 = getelementptr [32 x i8], ptr %.val, i64 %1
  %3 = getelementptr i8, ptr %2, i64 -32          ; 2 uses
  %.not1.i = icmp eq ptr %3, null
  %.not.i = select i1 %i.f, i1 true, i1 %.not1.i
  br i1 %.not.i, label %bb.b, label %_RNvMs1_NtNtCslghKHtsL3a4_5tokio6signal8registryINtB5_8RegistryNtNtB7_4unix9OsStorageE17register_listenerB9_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
  unreachable

_RNvMs1_NtNtCslghKHtsL3a4_5tokio6signal8registryINtB5_8RegistryNtNtB7_4unix9OsStorageE17register_listenerB9_.exit: ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_6SenderuE9subscribeB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs3_NtNtCslghKHtsL3a4_5tokio6signal8registryNtB5_7Globals9broadcast(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvXs0_NtNtCslghKHtsL3a4_5tokio6signal4unixNtB6_9OsStorageNtNtB8_8registry7Storage8for_eachNCNvMs1_BX_INtBX_8RegistryBG_E9broadcast0EBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull dereferenceable(1) %i.a)
  %i.c = load i8, ptr %i.a, align 1, !range !265, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs4_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_5Child2id(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !4
  switch i64 %i.a, label %bb.d [
    i64 -1, label %bb.b
    i64 2, label %bb.e
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !range !17, !noundef !4
  %.not1 = icmp eq i32 %i.c, 2
  br i1 %.not1, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ 40, %bb.a ], [ 32, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.sroa.0.0 = load i32, ptr %i.d, align 8, !noundef !4
  ret i32 %.sroa.0.0

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_5Child8try_wait(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.a = load i64, ptr %1, align 8, !range !15, !alias.scope !268, !noundef !4
  switch i64 %i.a, label %bb.d [
    i64 -1, label %bb.b
    i64 2, label %bb.e
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !range !17, !alias.scope !268, !noundef !4
  %.not1.i = icmp eq i32 %i.c, 2
  br i1 %.not1.i, label %bb.c, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_5Child9std_child.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28, !noalias !268
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_5Child9std_child.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28, !noalias !268
  unreachable

_RNvMs4_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_5Child9std_child.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  tail call void @_RNvMsT_NtCsaL1QbXo9JQH_3std7processNtB5_5Child8try_wait(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %.sroa.0.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtB2i_9scheduler14current_thread6HandleEEEEE16into_boxed_sliceBN_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBV_4util11linked_list10LinkedListINtNtNtBV_7runtime4task4TaskINtNtB7_4sync3ArcNtNtNtB2q_9scheduler14current_thread6HandleEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1h_4util11linked_list10LinkedListINtNtNtB1h_7runtime4task4TaskINtNtBG_4sync3ArcNtNtNtB2N_9scheduler14current_thread6HandleEEEEEEB1h_.exit unwind label %bb.g

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit._crit_edge, label %bb.e, !prof !9

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit._crit_edge: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #29
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1h_4util11linked_list10LinkedListINtNtNtB1h_7runtime4task4TaskINtNtBG_4sync3ArcNtNtNtB2N_9scheduler14current_thread6HandleEEEEEEB1h_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtNtB2i_9scheduler12multi_thread6handle6HandleEEEEE16into_boxed_sliceBN_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBV_4util11linked_list10LinkedListINtNtNtBV_7runtime4task4TaskINtNtB7_4sync3ArcNtNtNtNtB2q_9scheduler12multi_thread6handle6HandleEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1h_4util11linked_list10LinkedListINtNtNtB1h_7runtime4task4TaskINtNtBG_4sync3ArcNtNtNtNtB2N_9scheduler12multi_thread6handle6HandleEEEEEEB1h_.exit unwind label %bb.g

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit._crit_edge, label %bb.e, !prof !9

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit._crit_edge: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCslghKHtsL3a4_5tokio.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #29
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1h_4util11linked_list10LinkedListINtNtNtB1h_7runtime4task4TaskINtNtBG_4sync3ArcNtNtNtNtB2N_9scheduler12multi_thread6handle6HandleEEEEEEB1h_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtNtBN_7runtime4task8NotifiedINtNtB6_4sync3ArcNtNtNtNtB2F_9scheduler12multi_thread6handle6HandleEEEEE16into_boxed_sliceBN_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
end_hunk_0
