Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.12?download=true
inline.NumInlined: 353
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket17multicast_loop_v4:bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket17multicast_loop_v6(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCsbPfeiB6icZG_3mio3net3udpNtB2_9UdpSocket17multicast_loop_v6(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket18leave_multicast_v4(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  store i32 %2, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !noundef !6
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef ptr @_RNvMNtNtCsbPfeiB6icZG_3mio3net3udpNtB2_9UdpSocket18leave_multicast_v4(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.a)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket18leave_multicast_v6(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RNvMNtNtCsbPfeiB6icZG_3mio3net3udpNtB2_9UdpSocket18leave_multicast_v6(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %1, i32 noundef %2)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket20set_multicast_ttl_v4(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RNvMNtNtCsbPfeiB6icZG_3mio3net3udpNtB2_9UdpSocket20set_multicast_ttl_v4(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, i32 noundef %1)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket21set_multicast_loop_v4(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RNvMNtNtCsbPfeiB6icZG_3mio3net3udpNtB2_9UdpSocket21set_multicast_loop_v4(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, i1 noundef zeroext %1)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket21set_multicast_loop_v6(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RNvMNtNtCsbPfeiB6icZG_3mio3net3udpNtB2_9UdpSocket21set_multicast_loop_v6(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, i1 noundef zeroext %1)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket3tos(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !204
  %i.b = tail call noundef range(i32 0, -1) i32 @_RNvXs_NtCskSTaaYajini_7socket27sockrefNtB4_7SockRefINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtCslghKHtsL3a4_5tokio3net3udp9UdpSocketE4fromB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !205
  store i32 %i.b, ptr %i.a, align 4, !noalias !204
  call void @_RNvMs0_NtCskSTaaYajini_7socket26socketNtB5_6Socket6tos_v4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !204
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket3ttl(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCsbPfeiB6icZG_3mio3net3udpNtB2_9UdpSocket3ttl(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket6device(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef range(i32 0, -1) i32 @_RNvXs_NtCskSTaaYajini_7socket27sockrefNtB4_7SockRefINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtCslghKHtsL3a4_5tokio3net3udp9UdpSocketE4fromB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store i32 %i.b, ptr %i.a, align 4
  call void @_RNvMs7_NtCskSTaaYajini_7socket23sysNtNtB7_6socket6Socket6device(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket6tos_v4(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef range(i32 0, -1) i32 @_RNvXs_NtCskSTaaYajini_7socket27sockrefNtB4_7SockRefINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtCslghKHtsL3a4_5tokio3net3udp9UdpSocketE4fromB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store i32 %i.b, ptr %i.a, align 4
  call void @_RNvMs0_NtCskSTaaYajini_7socket26socketNtB5_6Socket6tos_v4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket7set_tos(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !208
  %i.b = tail call noundef range(i32 0, -1) i32 @_RNvXs_NtCskSTaaYajini_7socket27sockrefNtB4_7SockRefINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtCslghKHtsL3a4_5tokio3net3udp9UdpSocketE4fromB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  store i32 %i.b, ptr %i.a, align 4, !noalias !208
  %i.c = call noundef ptr @_RNvMs0_NtCskSTaaYajini_7socket26socketNtB5_6Socket10set_tos_v4(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, i32 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !208
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket7set_ttl(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RNvMNtNtCsbPfeiB6icZG_3mio3net3udpNtB2_9UdpSocket7set_ttl(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, i32 noundef %1)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket8from_std(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 0, -1) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.c, align 4
  %i.d = invoke noundef i32 @_RNvXs_NtCskSTaaYajini_7socket27sockrefNtB4_7SockRefINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtCsaL1QbXo9JQH_3std3net3udp9UdpSocketE4fromCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.e = invoke { i64, ptr } @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.e, !noalias !219 ; 2 uses

.body.i.i:                                        ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val15.i.i.i = load i32, ptr %i.b, align 4, !range !12, !noalias !220, !noundef !6
  br label %.body

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, ptr } %i.e, 0
  %i.h = extractvalue { i64, ptr } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !221
  store i32 %1, ptr %i.b, align 4, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !220
  invoke void @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration28new_with_interest_and_handleNtNtNtCsbPfeiB6icZG_3mio3net3udp9UdpSocketEBc_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 3, i64 noundef range(i64 0, 2) %i.g, ptr noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.d unwind label %.body.i.i, !noalias !222

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.a, align 8, !range !14, !noalias !220, !noundef !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !220 ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !220
  %.val.i.i.i = load i32, ptr %i.b, align 4, !range !12, !noalias !220, !noundef !6
  %i.n = call noundef i32 @close(i32 noundef %.val.i.i.i) #18, !noalias !222 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !221
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.511.0.copyload.i.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !220
  %i.o = load i32, ptr %i.b, align 4, !range !12, !noalias !220, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !221
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.511.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !218
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.o, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !218
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.p, align 8, !alias.scope !218
  store i64 %i.i, ptr %0, align 8, !alias.scope !218
  ret void

.body:                                            ; preds = %bb.e, %.body.i.i
  %.sink = phi i32 [ %1, %bb.e ], [ %.val15.i.i.i, %.body.i.i ]
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.f, %.body.i.i ]
  %i.q = call noundef i32 @close(i32 noundef %.sink) #18 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body4
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket8into_std(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !226, !noundef !6 ; 2 uses
  store i32 -1, ptr %i.c, align 8, !alias.scope !226
  %.not.i = icmp eq i32 %i.d, -1
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %i.a, align 4, !noalias !227
  %i.e = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration6handle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !228

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.f unwind label %bb.e, !noalias !227

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %bb.g ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtCsbPfeiB6icZG_3mio3net3udp9UdpSocketEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #20
          to label %bb.k unwind label %bb.j, !noalias !228

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load i32, ptr %i.a, align 4, !range !12, !noalias !227, !noundef !6
  %i.h = call noundef i32 @close(i32 noundef %.val8.i) #18, !noalias !228 ; 0 uses
  br label %bb.d

bb.h:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = invoke noundef ptr @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtCsbPfeiB6icZG_3mio3net3udp9UdpSocketEBc_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.g, !noalias !228 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not6.i = icmp eq ptr %i.j, null
  %i.k = load i32, ptr %i.a, align 4, !range !12, !noalias !227, !noundef !6 ; 2 uses
  br i1 %.not6.i, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !228
  unreachable

bb.k:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn.i

bb.l:                                             ; preds = %bb.i
  %i.m = call noundef i32 @close(i32 noundef %i.k) #18, !noalias !228 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtCsbPfeiB6icZG_3mio3net3udp9UdpSocketEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.n, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtCsbPfeiB6icZG_3mio3net3udp9UdpSocketEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %i.o, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge = phi i32 [ 0, %bb.m ], [ 1, %bb.l ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket8try_peek(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = call { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration6try_iojNCNvMNtNtBc_3net3udpNtB1r_9UdpSocket8try_peek0EBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket8try_recv(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = call { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration6try_iojNCNvMNtNtBc_3net3udpNtB1r_9UdpSocket8try_recv0EBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket8try_send(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = call { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration6try_iojNCNvMNtNtBc_3net3udpNtB1r_9UdpSocket8try_send0EBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket9as_socket(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXs_NtCskSTaaYajini_7socket27sockrefNtB4_7SockRefINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtCslghKHtsL3a4_5tokio3net3udp9UdpSocketE4fromB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket9bind_addr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtCsbPfeiB6icZG_3mio3net3udpNtB2_9UdpSocket4bind(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %1)
  %i.d = load i32, ptr %i.c, align 8, !range !17, !noundef !6
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket3new.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !12, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.j = invoke { i64, ptr } @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18)
          to label %bb.d unwind label %bb.g, !noalias !239 ; 2 uses

.body.i.i:                                        ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val15.i.i.i = load i32, ptr %i.b, align 4, !range !12, !noalias !240, !noundef !6
  %i.l = call noundef i32 @close(i32 noundef %.val15.i.i.i) #18, !noalias !241 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, ptr } %i.j, 0
  %i.n = extractvalue { i64, ptr } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !242
  store i32 %i.i, ptr %i.b, align 4, !noalias !240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !240
  invoke void @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration28new_with_interest_and_handleNtNtNtCsbPfeiB6icZG_3mio3net3udp9UdpSocketEBc_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 3, i64 noundef range(i64 0, 2) %i.m, ptr noundef %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18)
          to label %bb.e unwind label %.body.i.i, !noalias !241

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.a, align 8, !range !14, !noalias !240, !noundef !6 ; 3 uses
  %i.p = icmp eq i64 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !240 ; 3 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.g, %.body.i.i
  %eh.lpad-body5.i.i = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.k, %.body.i.i ]
  resume { ptr, i32 } %eh.lpad-body5.i.i

bb.g:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = tail call noundef i32 @close(i32 noundef range(i32 0, -1) %i.i) #18, !noalias !239 ; 0 uses
  br label %bb.f

bb.h:                                             ; preds = %bb.e
end_hunk_0
