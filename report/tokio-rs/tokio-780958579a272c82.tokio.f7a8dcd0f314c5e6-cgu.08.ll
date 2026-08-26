Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.08?download=true
begin_hunk_0_@_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration6try_iojNCNvMs4_NtNtNtBc_3net4unix4pipeNtB1u_8Receiver8try_read0EBc_:bb.a
  %i.am = icmp ult ptr %i.r, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %i.v, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

bb.p:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %i.r, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !337
  store i8 3, ptr %i.a, align 8, !alias.scope !337
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.n, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.q:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.r:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration7poll_ioNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrNCNvMNtNtBc_3net3udpNtB2j_9UdpSocket16poll_peek_sender0EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, i1 noundef zeroext %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [144 x i8], align 8               ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration10poll_ready(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 9 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !340, !noundef !15 ; 3 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.74.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.8.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %.fr = freeze i32 %i.j
  %.not.i = icmp eq i32 %.fr, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.45.sroa.0.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %.sroa.45.sroa.0.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.914.sroa.6.i.i.sroa.4.0..sroa.45.sroa.0.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split, !prof !188

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.sroa.08.0.copyload.us = load ptr, ptr %i.e, align 8
  %i.p = icmp eq i8 %i.g, 2
  br i1 %i.p, label %.split.us, label %.split89.us

.split89.us:                                      ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28, !noalias !341
  unreachable

._crit_edge:                                      ; preds = %bb.r, %bb.a
  store i16 -1, ptr %0, align 8
  br label %bb.v

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %i.q = phi i8 [ %i.au, %bb.r ], [ %i.g, %.lr.ph ] ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %i.r = icmp eq i8 %i.q, 2
  br i1 %i.r, label %.split.us, label %bb.b

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.sroa.08.0.copyload.us, %.lr.ph.split.us ], [ %.sroa.08.0.copyload, %.lr.ph.split ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi) ]
  store i16 2, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi, ptr %.sroa.424.0..sroa_idx, align 8
  br label %bb.v

bb.b:                                             ; preds = %.lr.ph.split
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %.sroa.08.0.copyload, ptr %i.d, align 8
  store i8 %.sroa.3.0.copyload, ptr %.sroa.7.0..sroa_idx2, align 8
  store i8 %i.q, ptr %.sroa.74.0..sroa_idx5, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx7, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.0..sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !344
  %i.s = call noundef i32 @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket9as_socket(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4), !noalias !348
  store i32 %i.s, ptr %i.b, align 4, !noalias !344
  call void @_RNvMNtCskSTaaYajini_7socket26socketNtB2_6Socket11peek_sender(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b), !noalias !348
  %i.t = load i64, ptr %i.c, align 8, !range !14, !noalias !344, !noundef !15
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = load ptr, ptr %i.k, align 8, !noalias !344 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !344
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.sroa.45.sroa.0.sroa.0.0.copyload.i.i = load i16, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !344
  %.sroa.45.sroa.0.sroa.4.0.copyload.i.i = load i16, ptr %.sroa.45.sroa.0.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !344
  %.sroa.914.sroa.6.i.i.sroa.0.0.copyload = load ptr, ptr %.sroa.45.sroa.0.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !344
  %.sroa.914.sroa.6.i.i.sroa.4.0.copyload = load i32, ptr %.sroa.914.sroa.6.i.i.sroa.4.0..sroa.45.sroa.0.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 4, !noalias !344
  %.sroa.45.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !344
  %i.w = ptrtoint ptr %i.v to i64                 ; 5 uses
  %.sroa.07.0.extract.trunc.i.i = trunc i64 %i.w to i16
  switch i16 %.sroa.07.0.extract.trunc.i.i, label %_RNvMs0_NtCskSTaaYajini_7socket28sockaddrNtB5_8SockAddr9as_socket.exit.i.i [
    i16 2, label %bb.e
    i16 10, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %.sroa.07.4.extract.shift12.i.i = lshr i64 %i.w, 32
  %.sroa.07.4.extract.trunc13.i.i = trunc nuw i64 %.sroa.07.4.extract.shift12.i.i to i32
  %.sroa.07.2.extract.shift9.i.i = lshr i64 %i.w, 16
  %.sroa.07.2.extract.trunc10.i.i = trunc i64 %.sroa.07.2.extract.shift9.i.i to i16
  %i.x = call i16 @llvm.bswap.i16(i16 %.sroa.07.2.extract.trunc10.i.i)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %.sroa.07.2.extract.shift.i.i = lshr i64 %i.w, 16
  %.sroa.07.2.extract.trunc.i.i = trunc i64 %.sroa.07.2.extract.shift.i.i to i16
  %i.y = call i16 @llvm.bswap.i16(i16 %.sroa.07.2.extract.trunc.i.i)
  %.sroa.07.4.extract.shift.i.i = lshr i64 %i.w, 32
  %.sroa.07.4.extract.trunc.i.i = trunc nuw i64 %.sroa.07.4.extract.shift.i.i to i32
  %.sroa.4.sroa.010.i.sroa.0.2.insert.ext.i.i = zext i16 %.sroa.45.sroa.0.sroa.0.0.copyload.i.i to i32
  %.sroa.4.sroa.010.i.sroa.0.2.insert.shift.i.i = shl nuw i32 %.sroa.4.sroa.010.i.sroa.0.2.insert.ext.i.i, 16
  br label %bb.l

_RNvMs0_NtCskSTaaYajini_7socket28sockaddrNtB5_8SockAddr9as_socket.exit.i.i: ; preds = %bb.d
  %i.z = call noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 20) #26, !noalias !348
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvMs0_NtCskSTaaYajini_7socket28sockaddrNtB5_8SockAddr9as_socket.exit.i.i
  %.sroa.12.0.ph = phi ptr [ %i.z, %_RNvMs0_NtCskSTaaYajini_7socket28sockaddrNtB5_8SockAddr9as_socket.exit.i.i ], [ %i.v, %bb.c ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !344
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.ph) ]
  %i.aa = ptrtoint ptr %.sroa.12.0.ph to i64      ; 4 uses
  %i.ab = and i64 %i.aa, 3                        ; 2 uses
  switch i64 %i.ab, label %default.unreachable [
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 0, label %bb.j
    i64 1, label %bb.k
  ], !prof !195

default.unreachable:                              ; preds = %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness.exit, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ac = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.h
  %i.ad = lshr i64 %i.aa, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !15, !noundef !15
  %i.ah = invoke noundef i8 %i.ag(i32 noundef %i.ae)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.t, !inline_history !196

bb.i:                                             ; preds = %bb.g
  %i.ai = lshr i64 %i.aa, 32
  %i.aj = icmp ult ptr %.sroa.12.0.ph, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ai to i8  ; 2 uses
  %i.ak = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.assume(i1 %i.ak)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.j:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.12.0.ph, i64 16
  %i.am = load i8, ptr %i.al, align 8, !range !197, !noundef !15
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.k:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %.sroa.12.0.ph, i64 31
  %i.ao = load i8, ptr %i.an, align 8, !range !197, !noundef !15
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.l:                                             ; preds = %bb.f, %bb.e
  %.sroa.11.i.i.sroa.0.2 = phi ptr [ undef, %bb.e ], [ %.sroa.914.sroa.6.i.i.sroa.0.0.copyload, %bb.f ]
  %.sroa.21.1 = phi i16 [ undef, %bb.e ], [ %i.y, %bb.f ]
  %.sroa.20.1 = phi i32 [ undef, %bb.e ], [ %.sroa.45.sroa.4.0.copyload.i.i, %bb.f ]
  %.sroa.1938.1 = phi i32 [ undef, %bb.e ], [ %.sroa.07.4.extract.trunc.i.i, %bb.f ]
  %.sroa.19.1 = phi i32 [ undef, %bb.e ], [ %.sroa.914.sroa.6.i.i.sroa.4.0.copyload, %bb.f ]
  %.sroa.11.1 = phi i16 [ %i.x, %bb.e ], [ %.sroa.45.sroa.0.sroa.4.0.copyload.i.i, %bb.f ]
  %.sroa.10.1 = phi i32 [ %.sroa.07.4.extract.trunc13.i.i, %bb.e ], [ %.sroa.4.sroa.010.i.sroa.0.2.insert.shift.i.i, %bb.f ]
  %.sroa.035.0 = phi i16 [ 0, %bb.e ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !344
  store i16 %.sroa.035.0, ptr %0, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.10.1, ptr %.sroa.445.0..sroa_idx, align 2
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %.sroa.11.1, ptr %.sroa.546.0..sroa_idx, align 2
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11.i.i.sroa.0.2, ptr %.sroa.647.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.19.1, ptr %.sroa.748.0..sroa_idx, align 8
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.1938.1, ptr %.sroa.849.0..sroa_idx, align 4
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.20.1, ptr %.sroa.950.0..sroa_idx, align 8
  %.sroa.1051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %.sroa.21.1, ptr %.sroa.1051.0..sroa_idx, align 4
  br label %bb.o

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.k, %bb.j, %bb.i, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.ao, %bb.k ], [ %switch.idx.cast.i.i.i, %bb.i ], [ %i.am, %bb.j ], [ %i.ah, %.noexc ]
  %i.ap = icmp eq i8 %.sroa.0.0.i, 13
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  store i16 2, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph, ptr %.sroa.418.0..sroa_idx, align 8
  br label %bb.o

bb.n:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB4_11ScheduledIo15clear_readiness(ptr noundef nonnull align 128 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d)
          to label %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness.exit unwind label %bb.t

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.v
  ret void

_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.ph) ]
  switch i64 %i.ab, label %default.unreachable [
    i64 2, label %bb.r
    i64 3, label %bb.p
    i64 0, label %bb.r
    i64 1, label %bb.q
  ], !prof !195

bb.p:                                             ; preds = %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness.exit
  %i.aq = icmp ult ptr %.sroa.12.0.ph, inttoptr (i64 188978561024 to ptr)
  %i.ar = and i64 %i.aa, 1095216660480
  %i.as = icmp ne i64 %i.ar, 1095216660480
  call void @llvm.assume(i1 %i.aq)
  call void @llvm.assume(i1 %i.as)
  br label %bb.r

bb.q:                                             ; preds = %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness.exit
  %i.at = getelementptr i8, ptr %.sroa.12.0.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  store ptr %i.at, ptr %i.o, align 8, !alias.scope !349
  store i8 3, ptr %i.a, align 8, !alias.scope !349
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness.exit, %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration10poll_ready(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  %i.au = load i8, ptr %i.f, align 1, !range !340, !noundef !15 ; 2 uses
  %i.av = icmp eq i8 %i.au, -1
  br i1 %i.av, label %._crit_edge, label %.lr.ph.split

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %i.aw

bb.t:                                             ; preds = %bb.h, %.noexc, %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr %.sroa.12.0.ph) #25
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.v:                                             ; preds = %.split.us, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration7poll_ioTNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamNtNtNtNtNtCsaL1QbXo9JQH_3std2os4unix3net4addr10SocketAddrENCNvMNtNtNtBc_3net4unix8listenerNtB3f_12UnixListener11poll_accept0EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, i1 noundef zeroext %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration10poll_ready(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !340, !noundef !15 ; 3 uses
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.74.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.sroa.8.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.fr = freeze i32 %i.i
  %.not.i = icmp eq i32 %.fr, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split, !prof !188

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.sroa.08.0.copyload.us = load ptr, ptr %i.d, align 8
  %i.o = icmp eq i8 %i.f, 2
  br i1 %i.o, label %.split.us, label %.split45.us

.split45.us:                                      ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28, !noalias !352
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %i.p = phi i8 [ %i.aq, %bb.n ], [ %i.f, %.lr.ph ] ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %.split.us, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix8listenerNtB4_12UnixListener11poll_accept0Ba_.exit

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.sroa.08.0.copyload.us, %.lr.ph.split.us ], [ %.sroa.08.0.copyload, %.lr.ph.split ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi) ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.r, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.us-phi, ptr %.sroa.424.0..sroa_idx, align 8
  br label %.loopexit

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix8listenerNtB4_12UnixListener11poll_accept0Ba_.exit: ; preds = %.lr.ph.split
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %.sroa.08.0.copyload, ptr %i.c, align 8
  store i8 %.sroa.3.0.copyload, ptr %.sroa.7.0..sroa_idx2, align 8
  store i8 %i.p, ptr %.sroa.74.0..sroa_idx5, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx7, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.0..sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtNtCsbPfeiB6icZG_3mio3net3uds8listenerNtB2_12UnixListener6accept(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h)
  %i.s = load i32, ptr %i.b, align 8, !noundef !15
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix8listenerNtB4_12UnixListener11poll_accept0Ba_.exit
  %.val30 = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15 ; 8 uses
  %i.u = ptrtoint ptr %.val30 to i64              ; 4 uses
  %i.v = and i64 %i.u, 3                          ; 2 uses
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !195

default.unreachable:                              ; preds = %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness.exit, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.w = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  %i.x = lshr i64 %i.u, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !15, !noundef !15
  %i.ab = invoke noundef i8 %i.aa(i32 noundef %i.y)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.p, !inline_history !196

bb.d:                                             ; preds = %bb.b
  %i.ac = lshr i64 %i.u, 32
  %i.ad = icmp ult ptr %.val30, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ac to i8  ; 2 uses
  %i.ae = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.ae)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !197, !noundef !15
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.ah = getelementptr i8, ptr %.val30, i64 31
  %i.ai = load i8, ptr %i.ah, align 8, !range !197, !noundef !15
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.g:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix8listenerNtB4_12UnixListener11poll_accept0Ba_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.aj, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false)
end_hunk_0
