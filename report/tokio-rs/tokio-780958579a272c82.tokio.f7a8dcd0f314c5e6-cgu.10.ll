Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.10?download=true
inline.NumInlined: 368
inline.NumDeleted: 208
begin_hunk_0_@_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream4pair:bb.a
bb.k:                                             ; preds = %bb.j
  %i.af = call noundef i32 @close(i32 noundef %.val.i.i) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEEBI_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #25
          to label %.thread unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEECslghKHtsL3a4_5tokio.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEEBI_.exit.i: ; preds = %bb.k, %bb.j
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.m:                                             ; preds = %.noexc36
  %.sroa.59.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i33, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.t, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.w, ptr %.sroa.518.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEEBI_.exit.i, %bb.m, %bb.b
  ret void

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEECslghKHtsL3a4_5tokio.exit.i.i, %bb.f, %bb.p
  %.pn49 = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.ai, %bb.p ], [ %i.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEECslghKHtsL3a4_5tokio.exit.i.i ]
  resume { ptr, i32 } %.pn49

bb.p:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = call noundef i32 @close(i32 noundef %i.m) #24 ; 0 uses
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream8from_std(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 0, -1) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef range(i32 0, -1) i32 @_RNvXs2_NtNtNtNtNtCsaL1QbXo9JQH_3std3sys3net10connection6socket4unixNtB5_6SocketNtNtNtNtBf_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.e = invoke noundef range(i32 0, -1) i32 @_RNvXsg_NtCskSTaaYajini_7socket23sysNtNtB7_6socket6SocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw9FromRawFd11from_raw_fd(i32 noundef %i.c)
          to label %_RNvXs_NtCskSTaaYajini_7socket27sockrefNtB4_7SockRefINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtNtNtCsaL1QbXo9JQH_3std2os4unix3net6stream10UnixStreamE4fromCslghKHtsL3a4_5tokio.exit unwind label %bb.f ; 0 uses

_RNvXs_NtCskSTaaYajini_7socket27sockrefNtB4_7SockRefINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtNtNtCsaL1QbXo9JQH_3std2os4unix3net6stream10UnixStreamE4fromCslghKHtsL3a4_5tokio.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB2_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamE17new_with_interestB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %1, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.f = load i64, ptr %i.a, align 8, !range !5, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtCskSTaaYajini_7socket27sockrefNtB4_7SockRefINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtNtNtCsaL1QbXo9JQH_3std2os4unix3net6stream10UnixStreamE4fromCslghKHtsL3a4_5tokio.exit
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtCskSTaaYajini_7socket27sockrefNtB4_7SockRefINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtNtNtCsaL1QbXo9JQH_3std2os4unix3net6stream10UnixStreamE4fromCslghKHtsL3a4_5tokio.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 %i.f, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.k = call noundef i32 @close(i32 noundef %1) #24 ; 0 uses
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream8into_std(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB2_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamE10into_innerB6_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i32, ptr %i.b, align 8, !range !11, !noundef !4
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream8try_read(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = call { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration6try_iojNCNvMNtNtNtBc_3net4unix6streamNtB1r_10UnixStream8try_read0EBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream9peer_addr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !noundef !4
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @_RNvMNtNtNtCsbPfeiB6icZG_3mio3net3uds6streamNtB2_10UnixStream9peer_addr(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
  %i.d = load i32, ptr %i.a, align 8, !range !11, !noundef !4
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %i.j, ptr noundef nonnull align 4 dereferenceable(116) %i.i, i64 116, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ 1, %bb.d ], [ 0, %bb.e ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream9peer_cred(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.c, align 8, !alias.scope !229, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %.not.i.i = icmp eq i32 %.val, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28, !noalias !231
  unreachable

_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !230
  store i32 0, ptr %i.b, align 4, !noalias !230
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !noalias !230
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.e, align 4, !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !230
  store i32 12, ptr %i.a, align 4, !noalias !230
  %i.f = call noundef i32 @getsockopt(i32 noundef %.val, i32 noundef 1, i32 noundef 17, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #24, !noalias !230
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load i32, ptr %i.a, align 4, !noalias !230
  %i.i = icmp eq i32 %i.h, 12
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd.exit.i
  %i.j = tail call noundef ptr @__errno_location() #24
  %i.k = load i32, ptr %i.j, align 4, !noalias !230, !noundef !4
  %i.l = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !230
  %.not.i3.i = icmp eq ptr %i.l, @7
  br i1 %.not.i3.i, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7), !noalias !230
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.d, %bb.c
  %i.m = sext i32 %i.k to i64
  %i.n = shl nsw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, 2
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !230
  store i32 2, ptr %0, align 8, !alias.scope !230
  br label %_RNvNtNtNtNtCslghKHtsL3a4_5tokio3net4unix5ucred10impl_linux13get_peer_cred.exit

bb.e:                                             ; preds = %_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd.exit.i
  %2 = load i64, ptr %i.d, align 4, !noalias !230
  %i.r = load i32, ptr %i.b, align 4, !noalias !230, !noundef !4
  %3 = zext i32 %i.r to i64
  %4 = shl nuw i64 %3, 32
  %5 = or disjoint i64 %4, 1
  store i64 %5, ptr %0, align 8, !alias.scope !230
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !230
  br label %_RNvNtNtNtNtCslghKHtsL3a4_5tokio3net4unix5ucred10impl_linux13get_peer_cred.exit

_RNvNtNtNtNtCslghKHtsL3a4_5tokio3net4unix5ucred10impl_linux13get_peer_cred.exit: ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !230
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream9try_write(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = call { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration6try_iojNCNvMNtNtNtBc_3net4unix6streamNtB1r_10UnixStream9try_write0EBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE22close_and_shutdown_allB8_(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i8 1, ptr %i.a release, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = add i64 %1, 1
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %.lr.ph8, label %._crit_edge

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph8
  %exitcond.not = icmp eq i64 %i.g, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph8

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph8:                                          ; preds = %bb.a, %.loopexit
  %.sroa.0.07 = phi i64 [ %i.g, %.loopexit ], [ %1, %bb.a ] ; 3 uses
  %i.g = add i64 %.sroa.0.07, 1                   ; 2 uses
  %i.h = tail call noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio4util12sharded_listINtB2_11ShardedListINtNtNtB6_7runtime4task4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB17_9scheduler14current_thread6HandleEEE8pop_backB6_(ptr noundef nonnull align 8 %0, i64 noundef %.sroa.0.07) ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph8, %.lr.ph
  %i.i = phi ptr [ %i.j, %.lr.ph ], [ %i.h, %.lr.ph8 ]
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull %i.i)
  %i.j = tail call noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio4util12sharded_listINtB2_11ShardedListINtNtNtB6_7runtime4task4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB17_9scheduler14current_thread6HandleEEE8pop_backB6_(ptr noundef nonnull align 8 %0, i64 noundef %.sroa.0.07) ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE3newB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = icmp ult i64 %1, 2
  br i1 %i.b, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE20gen_shared_list_sizeB8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %i.f = shl i64 %i.e, 2
  %i.g = add i64 %i.f, 4
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 65536)
  br label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE20gen_shared_list_sizeB8_.exit

_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE20gen_shared_list_sizeB8_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.h, %bb.b ], [ 4, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio4util12sharded_listINtB2_11ShardedListINtNtNtB6_7runtime4task4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB17_9scheduler14current_thread6HandleEEE3newB6_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef %.sroa.0.0.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE20gen_shared_list_sizeB8_.exit
  %i.i = atomicrmw add ptr @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list19NEXT_OWNED_TASKS_ID, i64 1 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE6removeB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !14, !noundef !4
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.e, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtNtB4_3num7nonzero7NonZeroyEBM_ECslghKHtsL3a4_5tokio(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio4util12sharded_listINtB2_11ShardedListINtNtNtB6_7runtime4task4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB17_9scheduler14current_thread6HandleEEE6removeB6_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE22close_and_shutdown_allB8_(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i8 1, ptr %i.a release, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = add i64 %1, 1
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %.lr.ph8, label %._crit_edge

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph8
  %exitcond.not = icmp eq i64 %i.g, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph8

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph8:                                          ; preds = %bb.a, %.loopexit
  %.sroa.0.07 = phi i64 [ %i.g, %.loopexit ], [ %1, %bb.a ] ; 3 uses
  %i.g = add i64 %.sroa.0.07, 1                   ; 2 uses
  %i.h = tail call noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio4util12sharded_listINtB2_11ShardedListINtNtNtB6_7runtime4task4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEE8pop_backB6_(ptr noundef nonnull align 8 %0, i64 noundef %.sroa.0.07) ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph8, %.lr.ph
  %i.i = phi ptr [ %i.j, %.lr.ph ], [ %i.h, %.lr.ph8 ]
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull %i.i)
  %i.j = tail call noundef ptr @_RNvMNtNtCslghKHtsL3a4_5tokio4util12sharded_listINtB2_11ShardedListINtNtNtB6_7runtime4task4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEE8pop_backB6_(ptr noundef nonnull align 8 %0, i64 noundef %.sroa.0.07) ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE3newB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = icmp ult i64 %1, 2
  br i1 %i.b, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE20gen_shared_list_sizeB8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %i.f = shl i64 %i.e, 2
  %i.g = add i64 %i.f, 4
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 65536)
  br label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE20gen_shared_list_sizeB8_.exit

_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE20gen_shared_list_sizeB8_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.h, %bb.b ], [ 4, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio4util12sharded_listINtB2_11ShardedListINtNtNtB6_7runtime4task4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEE3newB6_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef %.sroa.0.0.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE20gen_shared_list_sizeB8_.exit
  %i.i = atomicrmw add ptr @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list19NEXT_OWNED_TASKS_ID, i64 1 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE6removeB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
end_hunk_0
begin_hunk_1_@_RNvNtNtCslghKHtsL3a4_5tokio7process3imp11build_child:bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val.i.i.i188 = load i32, ptr %i.dn, align 8, !alias.scope !318, !noundef !4 ; 2 uses
  %i.do = icmp eq i32 %.val.i.i.i188, -1
  br i1 %i.do, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i189, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dp = call noundef i32 @close(i32 noundef %.val.i.i.i188) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i189

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i187: ; preds = %bb.bl, %bb.bk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #25
          to label %.body unwind label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i187
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i189: ; preds = %bb.bn, %bb.bm
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.noexc193 unwind label %bb.g

bb.bp:                                            ; preds = %.body149, %.body157, %bb.al
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit, %.noexc193
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val.i195 = load i32, ptr %i.ds, align 4, !alias.scope !319, !noundef !4 ; 2 uses
  %i.dt = icmp eq i32 %.val.i195, -1
  br i1 %i.dt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i196, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.du = call noundef i32 @close(i32 noundef %.val.i195) #24, !noalias !319 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i196

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i196: ; preds = %bb.br, %bb.bq
  %.val4.i197 = load i32, ptr %i.k, align 4, !alias.scope !319, !noundef !4 ; 2 uses
  %i.dv = icmp eq i32 %.val4.i197, -1
  br i1 %i.dv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i198, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i196
  %i.dw = call noundef i32 @close(i32 noundef %.val4.i197) #24, !noalias !319 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i198

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i198: ; preds = %bb.bs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i196
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val6.i199 = load i32, ptr %i.dx, align 4, !alias.scope !319, !noundef !4 ; 2 uses
  %i.dy = icmp eq i32 %.val6.i199, -1
  br i1 %i.dy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i200, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i198
  %i.dz = call noundef i32 @close(i32 noundef %.val6.i199) #24, !noalias !319 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i200

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i200: ; preds = %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i198
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val8.i201 = load i32, ptr %i.ea, align 4, !alias.scope !319, !noundef !4 ; 2 uses
  %i.eb = icmp eq i32 %.val8.i201, -1
  br i1 %i.eb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit202, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i200
  %i.ec = call noundef i32 @close(i32 noundef %.val8.i201) #24, !noalias !319 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit202

.body157:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i178, %bb.aa, %bb.ac, %bb.al
  %.sroa.0102.4 = phi i8 [ %.sroa.0102.6, %bb.al ], [ 1, %bb.aa ], [ %.sroa.0102.5, %bb.ac ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i178 ]
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.al ], [ %i.bb, %bb.aa ], [ %i.bd, %bb.ac ], [ %i.cv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i178 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #25
          to label %.body149 unwind label %bb.bp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bq

.body149:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i169, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i160, %bb.m, %bb.o, %.body157
  %.sroa.0102.2 = phi i8 [ %.sroa.0102.4, %.body157 ], [ 1, %bb.m ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i160 ], [ %.sroa.0102.3, %bb.o ], [ %.sroa.0102.7, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i169 ]
  %.pn145 = phi { ptr, i32 } [ %.pn, %.body157 ], [ %i.af, %bb.m ], [ %i.bh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i160 ], [ %i.aj, %bb.o ], [ %i.cl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i169 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #25
          to label %.body unwind label %bb.bp

bb.bv:                                            ; preds = %.body.thread, %.body
  %eh.lpad-body.pn250 = phi { ptr, i32 } [ %eh.lpad-body.pn251, %.body.thread ], [ %eh.lpad-body.pn, %.body ]
  resume { ptr, i32 } %eh.lpad-body.pn250

.body.thread:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i, %bb.e, %.body
  %eh.lpad-body.pn251 = phi { ptr, i32 } [ %eh.lpad-body.pn, %.body ], [ %i.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i ], [ %i.s, %bb.e ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 4 dereferenceable(28) %1) #25
  br label %bb.bv
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslghKHtsL3a4_5tokio7process3imp16convert_to_stdio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtCslghKHtsL3a4_5tokio7process3imp24convert_to_blocking_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !11, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !13, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCslghKHtsL3a4_5tokio7process3imp24convert_to_blocking_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB2_11PollEventedNtNtNtB6_7process3imp4PipeE10into_innerB6_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i32, ptr %i.b, align 8, !range !11, !noundef !4
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i32 1, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !13, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call noundef i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) #24 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @__errno_location() #24
  %i.m = load i32, ptr %i.l, align 4, !noundef !4 ; 2 uses
  %i.n = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i.i = icmp eq ptr %i.n, @7
  br i1 %.not.i.i, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.o = and i32 %i.j, -2049
  %i.p = call noundef i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 4, i32 noundef %i.o) #24
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp15set_nonblockingNtNtCsaL1QbXo9JQH_3std2fs4FileEB6_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = tail call noundef ptr @__errno_location() #24
  %i.s = load i32, ptr %i.r, align 4, !noundef !4 ; 2 uses
  %i.t = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i2.i = icmp eq ptr %i.t, @7
  br i1 %.not.i2.i, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i unwind label %bb.j

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.g, %bb.h, %bb.d, %bb.e
  %.sroa.0.0.i.ph.in.in.in.in = phi i32 [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.s, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.0.0.i.ph.in.in.in = sext i32 %.sroa.0.0.i.ph.in.in.in.in to i64
  %.sroa.0.0.i.ph.in.in = shl nsw i64 %.sroa.0.0.i.ph.in.in.in, 32
  %.sroa.0.0.i.ph.in = or disjoint i64 %.sroa.0.0.i.ph.in.in, 2
  %.sroa.0.0.i.ph = inttoptr i64 %.sroa.0.0.i.ph.in to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.u, align 8
  store i32 1, ptr %0, align 8
  %i.v = call noundef i32 @close(i32 noundef %i.i) #24 ; 0 uses
  br label %bb.i

_RINvNtNtCslghKHtsL3a4_5tokio7process3imp15set_nonblockingNtNtCsaL1QbXo9JQH_3std2fs4FileEB6_.exit: ; preds = %bb.f
  %2 = zext i32 %i.i to i64
  %3 = shl nuw i64 %2, 32
  store i64 %3, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp15set_nonblockingNtNtCsaL1QbXo9JQH_3std2fs4FileEB6_.exit
  ret void

bb.j:                                             ; preds = %bb.e, %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = call noundef i32 @close(i32 noundef %i.i) #24 ; 0 uses
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslghKHtsL3a4_5tokio2io4util20vec_with_initialized19into_read_buf_parts(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %.not = icmp ugt i64 %i.e, %i.c
  br i1 %.not, label %bb.b, label %bb.c, !prof !320

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %.not5 = icmp ugt i64 %i.g, %i.c
  br i1 %.not5, label %bb.d, label %bb.e, !prof !320

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %i.a, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys2io5error4unix14is_interrupted(i32 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %0, 4
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 44) i8 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys2io5error4unix17decode_error_kind(i32 noundef %0) unnamed_addr #4 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys2io5error4unix17decode_error_kind, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB13_4util11linked_list10LinkedListINtNtNtB13_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtB2z_9scheduler14current_thread6HandleEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4u_7sources11repeat_with10RepeatWithNCNvMNtB1U_12sharded_listINtB60_11ShardedListB2u_E3new0EEE9from_iterB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !329
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !329
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noalias !329, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !18, !noalias !329, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtB2i_9scheduler14current_thread6HandleEEEEE7reserveBN_.exit.i.i.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !329
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #29, !noalias !329
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtB2i_9scheduler14current_thread6HandleEEEEE7reserveBN_.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !329, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !329
  %.not.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1c_4util11linked_list10LinkedListINtNtNtB1c_7runtime4task4TaskINtNtB8_4sync3ArcNtNtNtB2I_9scheduler14current_thread6HandleEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4K_7sources11repeat_with10RepeatWithNCNvMNtB23_12sharded_listINtB6g_11ShardedListB2D_E3new0EEE9from_iterB1c_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtB2i_9scheduler14current_thread6HandleEEEEE7reserveBN_.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !noalias !330
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1c_4util11linked_list10LinkedListINtNtNtB1c_7runtime4task4TaskINtNtB8_4sync3ArcNtNtNtB2I_9scheduler14current_thread6HandleEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4K_7sources11repeat_with10RepeatWithNCNvMNtB23_12sharded_listINtB6g_11ShardedListB2D_E3new0EEE9from_iterB1c_.exit, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.c
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.h, i64 24
  %i.k = mul i64 %1, 24
  %i.l = add i64 %i.k, -24
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i.i.i, i8 0, i64 %i.l, i1 false), !noalias !330
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1c_4util11linked_list10LinkedListINtNtNtB1c_7runtime4task4TaskINtNtB8_4sync3ArcNtNtNtB2I_9scheduler14current_thread6HandleEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4K_7sources11repeat_with10RepeatWithNCNvMNtB23_12sharded_listINtB6g_11ShardedListB2D_E3new0EEE9from_iterB1c_.exit

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1c_4util11linked_list10LinkedListINtNtNtB1c_7runtime4task4TaskINtNtB8_4sync3ArcNtNtNtB2I_9scheduler14current_thread6HandleEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4K_7sources11repeat_with10RepeatWithNCNvMNtB23_12sharded_listINtB6g_11ShardedListB2D_E3new0EEE9from_iterB1c_.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtB2i_9scheduler14current_thread6HandleEEEEE7reserveBN_.exit.i.i.i, %bb.c, %.lr.ph.i.preheader.i.i.i.i.i
  store i64 %i.e, ptr %0, align 8, !alias.scope !329
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !329
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !329
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB13_4util11linked_list10LinkedListINtNtNtB13_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtNtB2z_9scheduler12multi_thread6handle6HandleEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4B_7sources11repeat_with10RepeatWithNCNvMNtB1U_12sharded_listINtB67_11ShardedListB2u_E3new0EEE9from_iterB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !339
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !339
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noalias !339, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !18, !noalias !339, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtNtB2i_9scheduler12multi_thread6handle6HandleEEEEE7reserveBN_.exit.i.i.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !339
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #29, !noalias !339
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtNtB2i_9scheduler12multi_thread6handle6HandleEEEEE7reserveBN_.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !339, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !339
  %.not.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1c_4util11linked_list10LinkedListINtNtNtB1c_7runtime4task4TaskINtNtB8_4sync3ArcNtNtNtNtB2I_9scheduler12multi_thread6handle6HandleEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4R_7sources11repeat_with10RepeatWithNCNvMNtB23_12sharded_listINtB6n_11ShardedListB2D_E3new0EEE9from_iterB1c_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtNtB2i_9scheduler12multi_thread6handle6HandleEEEEE7reserveBN_.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !noalias !340
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1c_4util11linked_list10LinkedListINtNtNtB1c_7runtime4task4TaskINtNtB8_4sync3ArcNtNtNtNtB2I_9scheduler12multi_thread6handle6HandleEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4R_7sources11repeat_with10RepeatWithNCNvMNtB23_12sharded_listINtB6n_11ShardedListB2D_E3new0EEE9from_iterB1c_.exit, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.c
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.h, i64 24
  %i.k = mul i64 %1, 24
  %i.l = add i64 %i.k, -24
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i.i.i, i8 0, i64 %i.l, i1 false), !noalias !340
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1c_4util11linked_list10LinkedListINtNtNtB1c_7runtime4task4TaskINtNtB8_4sync3ArcNtNtNtNtB2I_9scheduler12multi_thread6handle6HandleEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4R_7sources11repeat_with10RepeatWithNCNvMNtB23_12sharded_listINtB6n_11ShardedListB2D_E3new0EEE9from_iterB1c_.exit

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB1c_4util11linked_list10LinkedListINtNtNtB1c_7runtime4task4TaskINtNtB8_4sync3ArcNtNtNtNtB2I_9scheduler12multi_thread6handle6HandleEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4R_7sources11repeat_with10RepeatWithNCNvMNtB23_12sharded_listINtB6n_11ShardedListB2D_E3new0EEE9from_iterB1c_.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtNtB2i_9scheduler12multi_thread6handle6HandleEEEEE7reserveBN_.exit.i.i.i, %bb.c, %.lr.ph.i.preheader.i.i.i.i.i
  store i64 %i.e, ptr %0, align 8, !alias.scope !339
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !339
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !339
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtNtB13_7runtime4task8NotifiedINtNtB6_4sync3ArcNtNtNtNtB2V_9scheduler12multi_thread6handle6HandleEEEEEINtB2_12SpecFromIterBU_INtNtNtNtB22_4iter8adapters4take4TakeINtNtNtB51_7sources11repeat_with10RepeatWithNCINvNtB3I_5queue5localB3n_E0EEE9from_iterB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !343
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !343
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noalias !343, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !18, !noalias !343, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtNtB1c_7runtime4task8NotifiedINtNtB8_4sync3ArcNtNtNtNtB34_9scheduler12multi_thread6handle6HandleEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB2b_4iter8adapters4take4TakeINtNtNtB5h_7sources11repeat_with10RepeatWithNCINvNtB3R_5queue5localB3w_E0EEE9from_iterB1c_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !343
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #29, !noalias !343
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtNtB1c_7runtime4task8NotifiedINtNtB8_4sync3ArcNtNtNtNtB34_9scheduler12multi_thread6handle6HandleEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB2b_4iter8adapters4take4TakeINtNtNtB5h_7sources11repeat_with10RepeatWithNCINvNtB3R_5queue5localB3w_E0EEE9from_iterB1c_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !343, !nonnull !4, !noundef !4
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !343
  store i64 %i.e, ptr %0, align 8, !alias.scope !343
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !343
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !343
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
