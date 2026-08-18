inline.NumInlined: 405
inline.NumDeleted: 215
begin_hunk_0_@_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load <2 x ptr>, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !6 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !347

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #19
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x ptr> %i.d, ptr %i.l, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.j, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #19
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #19
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = invoke { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util9write_allINtB2_8WriteAllNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.p = extractvalue { i64, ptr } %i.n, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %common.ret, label %bb.k

common.ret:                                       ; preds = %bb.j, %bb.p
  %storemerge18 = phi i64 [ 0, %bb.p ], [ 1, %bb.j ]
  %storemerge = phi i8 [ 1, %bb.p ], [ 3, %bb.j ]
  store i64 %storemerge18, ptr %0, align 8
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.k:                                             ; preds = %bb.j
  %i.r = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %i.r)
          to label %bb.s unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.t, ptr %i.a, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1j_NtCsj6eKBz9Db1c_4core3fmtQjNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client, ptr %.sroa.517.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @282, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !6, !align !204, !noundef !6
  store i64 0, ptr %i.v, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %.sroa.04.0 = phi ptr [ %i.z, %bb.s ], [ null, %bb.o ]
  %.sroa.3.0 = phi ptr [ %i.aa, %bb.s ], [ undef, %bb.o ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.x, align 8
  br label %common.ret

bb.q:                                             ; preds = %bb.r, %bb.i, %bb.d, %bb.n
  %.pn11.pn = phi { ptr, i32 } [ %i.u, %bb.n ], [ %i.y, %bb.r ], [ %i.o, %bb.i ], [ %i.k, %bb.d ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn11.pn

bb.r:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.l
  %i.z = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.s, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onINtNtB9_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00ENtNtB7_6future6Future4pollB3n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !204, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.c = load ptr, ptr %.val, align 8, !noalias !351, !nonnull !6, !align !204, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsa_NtNtCskruEhpekJ3V_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !348
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !351
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.e = load ptr, ptr %.val1, align 8, !noalias !351, !nonnull !6, !align !204, !noundef !6
  call void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EENtB4_6Future4pollB1y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !348
  %i.f = load i64, ptr %i.a, align 8, !range !217, !noalias !351, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !348, !noalias !353
  br label %_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00B2H_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !351
  store i64 2, ptr %0, align 8, !alias.scope !348, !noalias !353
  br label %_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00B2H_.exit

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %0, align 8, !alias.scope !348, !noalias !353
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !noalias !351
  store <2 x ptr> %i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !348, !noalias !353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !351
  br label %_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00B2H_.exit

_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00B2H_.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00ENtNtB7_6future6Future4pollB2y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.517.i.i.i.i.i = alloca [16 x i8], align 8 ; 8 uses
  %.sroa.915.i.i.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 4                ; 8 uses
  %.sroa.958.i.i.i.i = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.955.i.i.i.i = alloca [16 x i8], align 8  ; 11 uses
  %i.k = alloca [32 x i8], align 4                ; 10 uses
  %.sroa.6.i.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 14 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 15 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [64 x i8], align 8               ; 11 uses
  %i.aj = alloca [48 x i8], align 8               ; 15 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [56 x i8], align 8               ; 7 uses
  %i.ao = alloca [72 x i8], align 8               ; 6 uses
  %i.ap = alloca [64 x i8], align 8               ; 23 uses
  %.sroa.6259.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %.sroa.10256.i.i.i = alloca [16 x i8], align 8  ; 7 uses
  %i.aq = alloca [32 x i8], align 8               ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.0248.i.i.i = alloca [24 x i8], align 8   ; 8 uses
  %.sroa.8.i.i.i = alloca [64 x i8], align 8      ; 7 uses
  %.sroa.5.i.i.i = alloca [904 x i8], align 8     ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [8 x i8], align 8                ; 13 uses
  %i.av = alloca [976 x i8], align 8              ; 10 uses
  %i.aw = alloca [360 x i8], align 8              ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 5 uses
  %i.ay = alloca [8 x i8], align 8                ; 5 uses
  %i.az = alloca [168 x i8], align 8              ; 5 uses
  %i.ba = alloca [184 x i8], align 8              ; 5 uses
  %i.bb = alloca [344 x i8], align 8              ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 8 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !204, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.be, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.bf = load ptr, ptr %.val, align 8, !noalias !357, !nonnull !6, !align !204, !noundef !6
  %i.bg = tail call noundef zeroext i1 @_RNvXsa_NtNtCskruEhpekJ3V_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !354
  br i1 %i.bg, label %bb.b, label %bb.mm

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.bh = load ptr, ptr %.val1, align 8, !noalias !357, !nonnull !6, !align !204, !noundef !6 ; 194 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1393 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !range !178, !noalias !359, !noundef !6
  switch i8 %i.bj, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
  ]

default.unreachable:                              ; preds = %bb.ga, %bb.dr, %bb.dl, %bb.cd, %bb.bx, %bb.be, %bb.z, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1392 ; 3 uses
  store i8 0, ptr %i.bk, align 8, !noalias !359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !363
  invoke void @_RNvXsw_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEINtNtCsj6eKBz9Db1c_4core7convert4FromRSBF_E4fromCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @247, i64 noundef 121)
          to label %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.d, !noalias !364

bb.d:                                             ; preds = %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !363
  br label %bb.w

_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.c
  store i8 1, ptr %i.bk, align 8, !noalias !359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !363
  store ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, ptr %i.ay, align 8, !noalias !363
  invoke void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig30builder_with_protocol_versions(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ay, i64 noundef 1)
          to label %bb.f unwind label %bb.e, !noalias !364

bb.e:                                             ; preds = %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.f:                                             ; preds = %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !363
  store i8 0, ptr %i.bk, align 8, !noalias !359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !363
  invoke void @_RINvMs_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtBM_13WantsVerifierE22with_root_certificatesNtNtNtB9_6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.az, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.h unwind label %bb.g, !noalias !364

bb.g:                                             ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !363
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !363
  invoke void @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtB5_15WantsClientCertE19with_no_client_auth(ptr noalias nofree noundef nonnull sret([344 x i8]) align 8 captures(address) dereferenceable(344) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.ba)
          to label %bb.k unwind label %bb.j, !noalias !364

bb.i:                                             ; preds = %bb.v, %bb.j
  %.pn6.i.i = phi { ptr, i32 } [ %i.bo, %bb.j ], [ %.pn.i.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !363
  br label %.body.i.i

bb.j:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !365
  store i64 1, ptr %i.aw, align 8, !noalias !365
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 1, ptr %i.bp, align 8, !noalias !365
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(344) %i.bb, i64 344, i1 false), !noalias !363
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !368
  %i.br = call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 360, i64 noundef 8) #18, !noalias !368 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.l, label %bb.p, !prof !347

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #20
          to label %.noexc.i.i.i unwind label %bb.m, !noalias !371

.noexc.i.i.i:                                     ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.aw) #16
          to label %.body.i.i unwind label %bb.n, !noalias !371

bb.n:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !371
  unreachable

.body.i.i:                                        ; preds = %bb.q, %.body29.i.i, %bb.o, %bb.m, %bb.i
  %.pn16.i.i = phi { ptr, i32 } [ %.pn6.i.i, %bb.i ], [ %i.bt, %bb.m ], [ %i.by, %bb.o ], [ %.pn14.i.i, %bb.q ], [ %.pn14.i.i, %.body29.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !363
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 1392
  %i.bw = load i8, ptr %i.bv, align 8, !range !259, !noalias !359, !noundef !6
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.ml, label %bb.w

bb.o:                                             ; preds = %bb.mj, %bb.mb
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.br, ptr noundef nonnull align 8 dereferenceable(360) %i.aw, i64 360, i1 false), !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !365
  store ptr %i.br, ptr %i.bh, align 8, !noalias !359
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  invoke void @_RINvNtCs4wP2HXfJTCR_5alloc3vec9from_elemhECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, i8 noundef 0, i64 noundef 16384)
          to label %bb.s unwind label %bb.r, !noalias !364

.body29.i.i:                                      ; preds = %bb.mg, %bb.ly, %.body25.i.i, %bb.r
  %.pn14.i.i = phi { ptr, i32 } [ %.pn12.i.i, %.body25.i.i ], [ %i.aax, %bb.ly ], [ %i.cd, %bb.r ], [ %i.abg, %bb.mg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.ca = load ptr, ptr %i.bh, align 8, !alias.scope !378, !noalias !359, !nonnull !6, !noundef !6
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !379
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.q, label %.body.i.i

bb.q:                                             ; preds = %.body29.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #17
          to label %.body.i.i unwind label %bb.mk, !noalias !364

bb.r:                                             ; preds = %bb.mh, %bb.lz, %bb.p
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i.i

bb.s:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  invoke void @_RINvNtCs4wP2HXfJTCR_5alloc3vec9from_elemhECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, i8 noundef 0, i64 noundef 1024)
          to label %.thread.i.i unwind label %bb.t, !noalias !364

.body25.i.i:                                      ; preds = %bb.md, %bb.lv, %bb.u, %bb.t
  %.pn12.i.i = phi { ptr, i32 } [ %.pn10.i.i, %bb.u ], [ %i.aau, %bb.lv ], [ %i.cg, %bb.t ], [ %i.abd, %bb.md ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cf) #16
          to label %.body29.i.i unwind label %bb.mk, !noalias !364

bb.t:                                             ; preds = %bb.me, %bb.lw, %bb.s
  %i.cg = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00ENtNtB7_6future6Future4pollB2y_:bb.a

select.unfold.i.i.i.i.i:                          ; preds = %bb.hb, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i
  %.sroa.4.1.i.i.i.i.i.i.i = phi i64 [ %.sroa.10288.8.copyload290.i.i.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i ], [ %i.rv, %bb.hb ] ; 4 uses
  %i.rz = insertvalue { ptr, i64 } poison, ptr %.sroa.6286.8.copyload287.i.i.i, 0
  %i.sa = insertvalue { ptr, i64 } %i.rz, i64 %.sroa.4.1.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !545
  store i32 10, ptr %i.b, align 4, !noalias !545
  %i.sb = invoke noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6286.8.copyload287.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc191.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !385

.noexc191.i.i.i:                                  ; preds = %select.unfold.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !545
  br i1 %i.sb, label %bb.hc, label %_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i.i.i

bb.hc:                                            ; preds = %.noexc191.i.i.i
  %i.sc = add i64 %.sroa.4.1.i.i.i.i.i.i.i, -1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !545
  store i32 13, ptr %i.a, align 4, !noalias !545
  %i.sd = invoke noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6286.8.copyload287.i.i.i, i64 noundef %i.sc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc192.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !385 ; 2 uses

.noexc192.i.i.i:                                  ; preds = %bb.hc
  %i.se = insertvalue { ptr, i64 } %i.sa, i64 %i.sc, 1
  %i.sf = add i64 %.sroa.4.1.i.i.i.i.i.i.i, -2
  %.sroa.0.0.i15.i.i.i.i.i.i.i = select i1 %i.sd, ptr %.sroa.6286.8.copyload287.i.i.i, ptr null
  %i.sg = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.i.i.i, 0
  %i.sh = insertvalue { ptr, i64 } %i.sg, i64 %i.sf, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !545
  %..i.i.i.i.i.i.i = select i1 %i.sd, { ptr, i64 } %i.sh, { ptr, i64 } %i.se
  br label %_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i.i.i

_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i.i.i: ; preds = %.noexc192.i.i.i, %.noexc191.i.i.i
  %.merged.i.i.i.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i.i.i.i, %.noexc192.i.i.i ], [ %i.sa, %.noexc191.i.i.i ] ; 2 uses
  %i.si = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.sj = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i.i, 1
  br label %bb.hd

bb.hd:                                            ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i.i.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i
  %.sroa.3.0.i.i.i.i.i = phi i64 [ %i.sj, %_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i.i.i ], [ undef, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.si, %_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i.i.i ], [ null, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i193.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null ; 2 uses
  %..i194.i.i.i = select i1 %.not.i193.i.i.i, ptr %.sroa.6286.8.copyload287.i.i.i, ptr %.sroa.0.0.i.i.i.i.i
  %.5.i.i.i.i = select i1 %.not.i193.i.i.i, i64 %.sroa.10288.8.copyload290.i.i.i, i64 %.sroa.3.0.i.i.i.i.i
  store ptr %..i194.i.i.i, ptr %i.ag, align 8, !noalias !384
  store i64 %.5.i.i.i.i, ptr %i.ql, align 8, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !384
  store ptr %i.ag, ptr %i.af, align 8, !noalias !384
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client, ptr %.sroa.5294.0..sroa_idx.i.i.i, align 8, !noalias !384
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @268, ptr noundef nonnull %i.af)
          to label %bb.hf unwind label %bb.he, !noalias !385

bb.he:                                            ; preds = %bb.hd
  %i.sk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !384
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !384
  br label %bb.gu

bb.hg:                                            ; preds = %bb.he, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.pn108.pn.i.i.i = phi { ptr, i32 } [ %i.sk, %bb.he ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !384
  br label %bb.hr

bb.hh:                                            ; preds = %bb.gx
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.hi:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !527
  br label %bb.hj

bb.hj:                                            ; preds = %bb.ho, %bb.hi
  %.pn117.i.i.i = phi { ptr, ptr } [ %i.qx, %bb.ho ], [ %i.rg, %bb.hi ]
  %i.sm = load i64, ptr %i.aj, align 8, !range !5, !alias.scope !550, !noalias !384, !noundef !6
  %i.sn = icmp eq i64 %i.sm, -1
  br i1 %i.sn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit201.i.i.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i197.i.i.i unwind label %bb.hl, !noalias !385

bb.hl:                                            ; preds = %bb.hk
  %i.so = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %.body180.i.i.i unwind label %bb.hm, !noalias !385

bb.hm:                                            ; preds = %bb.hl
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !385
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i197.i.i.i: ; preds = %bb.hk
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit201.i.i.i unwind label %bb.hp, !noalias !385

bb.hn:                                            ; preds = %bb.gn
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.ho:                                            ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !517
  br label %bb.hj

.body180.i.i.i:                                   ; preds = %bb.hr, %bb.hp, %bb.hl, %bb.gl
  %.pn119.i.i.i = phi { ptr, i32 } [ %.pn113.pn.pn.i.i.i, %bb.hr ], [ %i.qv, %bb.gl ], [ %i.sr, %bb.hp ], [ %i.so, %bb.hl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !384
  br label %bb.hs

bb.hp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i197.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %.body180.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit201.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i197.i.i.i, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !384
  br label %bb.hq

bb.hq:                                            ; preds = %bb.lf, %bb.kh, %bb.kg, %bb.js, %bb.jr, %bb.jg, %bb.iu, %bb.in, %bb.ib, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit201.i.i.i
  %i.ss = phi ptr [ %i.my, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit201.i.i.i ], [ %i.my, %bb.ib ], [ %i.ug, %bb.in ], [ %i.uy, %bb.iu ], [ %i.xw, %bb.kh ], [ %i.yl, %bb.kg ], [ %i.np, %bb.lf ], [ %i.my, %bb.js ], [ %i.wz, %bb.jr ], [ %i.we, %bb.jg ] ; 4 uses
  %i.st = phi ptr [ %i.mz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit201.i.i.i ], [ %i.mz, %bb.ib ], [ %i.uh, %bb.in ], [ %i.uz, %bb.iu ], [ %i.xx, %bb.kh ], [ %i.ym, %bb.kg ], [ %i.nq, %bb.lf ], [ %i.mz, %bb.js ], [ %i.xa, %bb.jr ], [ %i.wf, %bb.jg ] ; 7 uses
  %.pn117.pn.i.i.i = phi { ptr, ptr } [ %.pn117.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit201.i.i.i ], [ %i.tl, %bb.ib ], [ %i.uu, %bb.in ], [ %i.vj, %bb.iu ], [ %i.yy, %bb.kh ], [ %i.yw, %bb.kg ], [ %i.aaf, %bb.lf ], [ %i.xo, %bb.js ], [ %i.xl, %bb.jr ], [ %i.wp, %bb.jg ] ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.bh, i64 1136 ; 2 uses
  %i.sv = load i64, ptr %i.su, align 8, !range !155, !noalias !380, !noundef !6
  switch i64 %i.sv, label %bb.lg [
    i64 0, label %bb.lh
    i64 4, label %bb.lh
    i64 5, label %bb.lh
    i64 7, label %bb.lh
  ]

bb.hr:                                            ; preds = %bb.hn, %bb.hh, %bb.hg, %bb.gv, %bb.gs, %bb.gp, %bb.gg
  %.pn113.pn.pn.i.i.i = phi { ptr, i32 } [ %i.qr, %bb.gg ], [ %i.sq, %bb.hn ], [ %i.rb, %bb.gp ], [ %.pn108.pn.i.i.i, %bb.hg ], [ %i.rc, %bb.gs ], [ %i.sl, %bb.hh ], [ %i.rd, %bb.gv ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj) #16
          to label %.body180.i.i.i unwind label %bb.ba, !noalias !385

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !384
  br label %bb.ew

bb.hs:                                            ; preds = %bb.ki, %bb.kc, %bb.jw, %bb.jm, %bb.ji, %bb.jc, %bb.iw, %bb.iq, %bb.ii, %bb.ie, %.body204.i.i.i, %.body180.i.i.i, %bb.es
  %i.sw = phi ptr [ %i.my, %.body180.i.i.i ], [ %i.my, %.body204.i.i.i ], [ %i.ug, %bb.ii ], [ %i.my, %bb.ie ], [ %i.my, %bb.ki ], [ %i.uy, %bb.iq ], [ %i.xw, %bb.jw ], [ %i.yl, %bb.kc ], [ %i.np, %bb.es ], [ %i.my, %bb.ji ], [ %i.wz, %bb.jm ], [ %i.we, %bb.jc ], [ %i.my, %bb.iw ] ; 5 uses
  %i.sx = phi ptr [ %i.mz, %.body180.i.i.i ], [ %i.mz, %.body204.i.i.i ], [ %i.uh, %bb.ii ], [ %i.mz, %bb.ie ], [ %i.mz, %bb.ki ], [ %i.uz, %bb.iq ], [ %i.xx, %bb.jw ], [ %i.ym, %bb.kc ], [ %i.nq, %bb.es ], [ %i.mz, %bb.ji ], [ %i.xa, %bb.jm ], [ %i.wf, %bb.jc ], [ %i.mz, %bb.iw ] ; 5 uses
  %.pn119.pn.i.i.i = phi { ptr, i32 } [ %.pn119.i.i.i, %.body180.i.i.i ], [ %.pn97.i.i.i, %.body204.i.i.i ], [ %i.uj, %bb.ii ], [ %i.tz, %bb.ie ], [ %i.yz, %bb.ki ], [ %i.vb, %bb.iq ], [ %i.xz, %bb.jw ], [ %i.yo, %bb.kc ], [ %i.ns, %bb.es ], [ %i.wr, %bb.ji ], [ %i.xc, %bb.jm ], [ %i.wh, %bb.jc ], [ %i.vu, %bb.iw ] ; 5 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.bh, i64 1136 ; 2 uses
  %i.sz = load i64, ptr %i.sy, align 8, !range !155, !noalias !380, !noundef !6
  switch i64 %i.sz, label %bb.ln [
    i64 0, label %.body.i.i.i
    i64 4, label %.body.i.i.i
    i64 5, label %.body.i.i.i
    i64 7, label %.body.i.i.i
  ]

bb.ht:                                            ; preds = %bb.gd
  %i.ta = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !384
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae) #16
          to label %.body204.i.i.i unwind label %bb.ba, !noalias !385

bb.hu:                                            ; preds = %bb.gd
  %i.tb = load ptr, ptr %i.ad, align 8, !alias.scope !555, !noalias !558, !noundef !6 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.td = load i64, ptr %i.tc, align 8, !alias.scope !555, !noalias !558 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !384
  %.not94.i.i.i = icmp eq ptr %i.tb, null
  br i1 %.not94.i.i.i, label %bb.hv, label %bb.ia

bb.hv:                                            ; preds = %bb.hu
  %i.te = load i64, ptr %i.ae, align 8, !range !5, !alias.scope !560, !noalias !384, !noundef !6
  %i.tf = icmp eq i64 %i.te, -1
  br i1 %i.tf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i203.i.i.i unwind label %bb.hx, !noalias !385

bb.hx:                                            ; preds = %bb.hw
  %i.tg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.body204.i.i.i unwind label %bb.hy, !noalias !385

bb.hy:                                            ; preds = %bb.hx
  %i.th = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !385
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i203.i.i.i: ; preds = %bb.hw
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.hz, !noalias !385

.body204.i.i.i:                                   ; preds = %6, %bb.hz, %bb.hx, %bb.ht
  %.pn97.i.i.i = phi { ptr, i32 } [ %i.ta, %bb.ht ], [ %i.tg, %bb.hx ], [ %i.ti, %bb.hz ], [ %7, %6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !384
  br label %bb.hs

bb.hz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i203.i.i.i
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %.body204.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i203.i.i.i, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !384
  br label %bb.ew

bb.ia:                                            ; preds = %bb.hu
  %i.tj = icmp ne i64 %i.td, 0
  call void @llvm.assume(i1 %i.tj)
  %3 = load i64, ptr %i.ae, align 8, !range !5, !alias.scope !565, !noalias !570, !noundef !6
  %4 = icmp eq i64 %3, -1
  br i1 %4, label %bb.ib, label %5

5:                                                ; preds = %bb.ia
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %6, !noalias !385

6:                                                ; preds = %5
  %7 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.body204.i.i.i unwind label %8, !noalias !385

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !385
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %5
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.ib unwind label %bb.hz, !noalias !364

bb.ib:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %bb.ia
  %i.tk = insertvalue { ptr, ptr } poison, ptr %i.tb, 0
  %.sink1.i.i.i.i = inttoptr i64 %i.td to ptr
  %i.tl = insertvalue { ptr, ptr } %i.tk, ptr %.sink1.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !384
  br label %bb.hq

bb.ic:                                            ; preds = %bb.ga
  %i.tm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  %i.tn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1144
  %i.to = load ptr, ptr %i.tn, align 8, !noalias !380, !nonnull !6, !align !204, !noundef !6 ; 3 uses
  store ptr %i.to, ptr %i.tm, align 8, !noalias !380
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 822
  %i.tq = load i8, ptr %i.tp, align 2, !range !259, !noalias !385, !noundef !6
  %i.tr = trunc nuw i8 %i.tq to i1
  br i1 %i.tr, label %bb.id, label %bb.ig

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !384
  store ptr %i.to, ptr %i.ac, align 8, !noalias !384
  %i.ts = getelementptr inbounds nuw i8, ptr %i.bh, i64 1096
  %i.tt = load ptr, ptr %i.ts, align 8, !noalias !380, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.tu = getelementptr i8, ptr %i.tt, i64 8
  %.val.i.i.i = load ptr, ptr %i.tu, align 8, !noalias !385, !nonnull !6, !noundef !6
  %i.tv = getelementptr i8, ptr %i.tt, i64 16
  %.val143.i.i.i = load i64, ptr %i.tv, align 8, !noalias !385, !noundef !6
  %i.tw = getelementptr inbounds nuw i8, ptr %i.bh, i64 1218
  %i.tx = getelementptr inbounds nuw i8, ptr %i.bh, i64 1112
  %i.ty = invoke noundef zeroext i1 @_RNvCsc044841uM34_23unbuffered_async_client20encrypt_http_request(ptr noalias nofree noundef nonnull dereferenceable(1) %i.tw, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull %.val.i.i.i, i64 noundef %.val143.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.tx)
          to label %bb.if unwind label %bb.ie, !noalias !385 ; 0 uses

bb.ie:                                            ; preds = %bb.id
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !384
  br label %bb.hs

bb.if:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !384
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ic
  %i.ua = getelementptr inbounds nuw i8, ptr %i.bh, i64 1096
  %i.ub = load ptr, ptr %i.ua, align 8, !noalias !380, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.uc = getelementptr i8, ptr %i.ub, i64 8
  %.val152.i.i.i = load ptr, ptr %i.uc, align 8, !noalias !385, !nonnull !6, !noundef !6
  %i.ud = getelementptr i8, ptr %i.ub, i64 16
  %.val153.i.i.i = load i64, ptr %i.ud, align 8, !noalias !385, !noundef !6
  %i.ue = getelementptr inbounds nuw i8, ptr %i.bh, i64 1112
  %i.uf = getelementptr inbounds nuw i8, ptr %i.bh, i64 1232
  store ptr %i.mz, ptr %i.uf, align 8, !noalias !380
  %.sroa.8305.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1240
  store ptr %.val152.i.i.i, ptr %.sroa.8305.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.9306.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1248
  store i64 %.val153.i.i.i, ptr %.sroa.9306.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.10307.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1256
  store ptr %i.ue, ptr %.sroa.10307.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.12309.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1296
  store i8 0, ptr %.sroa.12309.0..sroa_idx.i.i.i, align 8, !noalias !380
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.ac
  %i.ug = phi ptr [ %i.my, %bb.ig ], [ %.phi.trans.insert.i.i, %bb.ac ] ; 4 uses
  %i.uh = phi ptr [ %i.mz, %bb.ig ], [ %i.cm, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !384
  %i.ui = getelementptr inbounds nuw i8, ptr %i.bh, i64 1232
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull align 8 %i.ui, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ij unwind label %bb.ii, !noalias !385

bb.ii:                                            ; preds = %bb.ih
  %i.uj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !384
  br label %bb.hs

bb.ij:                                            ; preds = %bb.ih
  %i.uk = load i64, ptr %i.ab, align 8, !range !217, !noalias !384, !noundef !6
  %i.ul = trunc nuw i64 %i.uk to i1
  br i1 %i.ul, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !384
  br label %bb.mn

bb.il:                                            ; preds = %bb.ij
  %i.um = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !noalias !384, !noundef !6 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.up = load ptr, ptr %i.uo, align 8, !noalias !384 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !384
  %.not.i207.i.i.i = icmp eq ptr %i.un, null
  br i1 %.not.i207.i.i.i, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.uq = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  %i.ur = load ptr, ptr %i.uq, align 8, !noalias !380, !nonnull !6, !align !204, !noundef !6
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 968
  store i8 0, ptr %i.us, align 8, !alias.scope !571, !noalias !385
  br label %bb.ew

bb.in:                                            ; preds = %bb.il
  %i.ut = insertvalue { ptr, ptr } poison, ptr %i.un, 0
  %i.uu = insertvalue { ptr, ptr } %i.ut, ptr %i.up, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.up) ]
  br label %bb.hq

bb.io:                                            ; preds = %bb.ga
  %i.uv = load ptr, ptr %i.po, align 8, !noalias !380, !nonnull !6, !noundef !6
  %i.uw = load i64, ptr %i.pp, align 8, !noalias !380, !noundef !6
  %i.ux = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  store ptr %i.mz, ptr %i.ux, align 8, !noalias !380
  %.sroa.8319.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1232
  store ptr %i.uv, ptr %.sroa.8319.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.9320.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1240
  store i64 %i.uw, ptr %.sroa.9320.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.10321.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1248
  store ptr %i.pr, ptr %.sroa.10321.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.12323.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1288
  store i8 0, ptr %.sroa.12323.0..sroa_idx.i.i.i, align 8, !noalias !380
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.ad
  %i.uy = phi ptr [ %i.my, %bb.io ], [ %.phi.trans.insert.i.i, %bb.ad ] ; 4 uses
  %i.uz = phi ptr [ %i.mz, %bb.io ], [ %i.cm, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !384
  %i.va = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %i.va, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ir unwind label %bb.iq, !noalias !385

bb.iq:                                            ; preds = %bb.ip
  %i.vb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !384
  br label %bb.hs

bb.ir:                                            ; preds = %bb.ip
  %i.vc = load i64, ptr %i.aa, align 8, !range !217, !noalias !384, !noundef !6
  %i.vd = trunc nuw i64 %i.vc to i1
  br i1 %i.vd, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !384
  br label %bb.mn

bb.it:                                            ; preds = %bb.ir
  %i.ve = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8, !noalias !384, !noundef !6 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8, !noalias !384 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !384
  %.not.i209.i.i.i = icmp eq ptr %i.vf, null
  br i1 %.not.i209.i.i.i, label %bb.ew, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.vi = insertvalue { ptr, ptr } poison, ptr %i.vf, 0
  %i.vj = insertvalue { ptr, ptr } %i.vi, ptr %i.vh, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vh) ]
  br label %bb.hq

bb.iv:                                            ; preds = %bb.ga
  %i.vk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1192 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1144
  %i.vm = load ptr, ptr %i.vl, align 8, !noalias !380, !nonnull !6, !align !204, !noundef !6
  store ptr %i.vm, ptr %i.vk, align 8, !noalias !380
  %i.vn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1096 ; 4 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !noalias !380, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.vp = getelementptr i8, ptr %i.vo, i64 8
  %.val144.i.i.i = load ptr, ptr %i.vp, align 8, !noalias !385, !nonnull !6, !noundef !6
  %i.vq = getelementptr i8, ptr %i.vo, i64 16
  %.val145.i.i.i = load i64, ptr %i.vq, align 8, !noalias !385, !noundef !6
  %i.vr = getelementptr inbounds nuw i8, ptr %i.bh, i64 1218
  %i.vs = getelementptr inbounds nuw i8, ptr %i.bh, i64 1112 ; 4 uses
  %i.vt = invoke noundef zeroext i1 @_RNvCsc044841uM34_23unbuffered_async_client20encrypt_http_request(ptr noalias nofree noundef nonnull dereferenceable(1) %i.vr, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vk, ptr noalias nofree noundef nonnull %.val144.i.i.i, i64 noundef %.val145.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vs)
          to label %bb.ix unwind label %bb.iw, !noalias !385

bb.iw:                                            ; preds = %bb.iv
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

bb.ix:                                            ; preds = %bb.iv
  br i1 %i.vt, label %bb.ju, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.vv = getelementptr inbounds nuw i8, ptr %i.bh, i64 1219
  %i.vw = load i8, ptr %i.vv, align 1, !range !259, !noalias !380, !noundef !6
  %i.vx = trunc nuw i8 %i.vw to i1
  br i1 %i.vx, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.vy = getelementptr inbounds nuw i8, ptr %i.bh, i64 1216
  %i.vz = load i8, ptr %i.vy, align 8, !range !259, !noalias !380, !noundef !6
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %bb.jt, label %bb.jh

bb.ja:                                            ; preds = %bb.iy
  %i.wb = load ptr, ptr %i.po, align 8, !noalias !380, !nonnull !6, !noundef !6
  %i.wc = load i64, ptr %i.pp, align 8, !noalias !380, !noundef !6
  %i.wd = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  store ptr %i.mz, ptr %i.wd, align 8, !noalias !380
  %.sroa.8361.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1232
  store ptr %i.wb, ptr %.sroa.8361.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.9362.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1240
  store i64 %i.wc, ptr %.sroa.9362.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.10363.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1248
  store ptr %i.pr, ptr %.sroa.10363.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.12365.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1288
  store i8 0, ptr %.sroa.12365.0..sroa_idx.i.i.i, align 8, !noalias !380
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.ag
  %i.we = phi ptr [ %i.my, %bb.ja ], [ %.phi.trans.insert.i.i, %bb.ag ] ; 4 uses
  %i.wf = phi ptr [ %i.mz, %bb.ja ], [ %i.cm, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !384
  %i.wg = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %i.wg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jd unwind label %bb.jc, !noalias !385

bb.jc:                                            ; preds = %bb.jb
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !384
  br label %bb.hs

bb.jd:                                            ; preds = %bb.jb
  %i.wi = load i64, ptr %i.x, align 8, !range !217, !noalias !384, !noundef !6
  %i.wj = trunc nuw i64 %i.wi to i1
  br i1 %i.wj, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !384
  br label %bb.mn

bb.jf:                                            ; preds = %bb.jd
  %i.wk = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8, !noalias !384, !noundef !6 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.wn = load ptr, ptr %i.wm, align 8, !noalias !384 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !384
  %.not.i211.i.i.i = icmp eq ptr %i.wl, null
  br i1 %.not.i211.i.i.i, label %bb.ew, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.wo = insertvalue { ptr, ptr } poison, ptr %i.wl, 0
  %i.wp = insertvalue { ptr, ptr } %i.wo, ptr %i.wn, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wn) ]
  br label %bb.hq

bb.jh:                                            ; preds = %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !384
  %i.wq = load ptr, ptr %i.vn, align 8, !noalias !380, !nonnull !6, !align !204, !noundef !6
  invoke void @_RINvCsc044841uM34_23unbuffered_async_client23try_or_resize_and_retryNtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered12EncryptErrorNCNCNvB2_8converse0s0_0NCB22_s1_0EB2_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.wq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vs)
          to label %bb.jj unwind label %bb.ji, !noalias !385

bb.ji:                                            ; preds = %bb.jh
  %i.wr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !384
  br label %bb.hs

bb.jj:                                            ; preds = %bb.jh
  %i.ws = load ptr, ptr %i.w, align 8, !alias.scope !574, !noalias !577, !noundef !6 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.wu = load i64, ptr %i.wt, align 8, !alias.scope !574, !noalias !577 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !384
  %.not55.i.i.i = icmp eq ptr %i.ws, null
  br i1 %.not55.i.i.i, label %bb.jk, label %bb.js

bb.jk:                                            ; preds = %bb.jj
  %i.wv = load ptr, ptr %i.vn, align 8, !noalias !380, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wv, i64 8
  %.val148.i.i.i = load ptr, ptr %i.ww, align 8, !noalias !385, !nonnull !6, !noundef !6
  %i.wx = getelementptr i8, ptr %i.wv, i64 16
  %.val149.i.i.i = load i64, ptr %i.wx, align 8, !noalias !385, !noundef !6
  %i.wy = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  store ptr %i.mz, ptr %i.wy, align 8, !noalias !380
  %.sroa.8377.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1232
  store ptr %.val148.i.i.i, ptr %.sroa.8377.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.9378.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1240
  store i64 %.val149.i.i.i, ptr %.sroa.9378.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.10379.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1248
  store ptr %i.vs, ptr %.sroa.10379.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.12381.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1288
  store i8 0, ptr %.sroa.12381.0..sroa_idx.i.i.i, align 8, !noalias !380
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.ah
  %i.wz = phi ptr [ %i.my, %bb.jk ], [ %.phi.trans.insert.i.i, %bb.ah ] ; 4 uses
  %i.xa = phi ptr [ %i.mz, %bb.jk ], [ %i.cm, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !384
  %i.xb = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull align 8 %i.xb, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jn unwind label %bb.jm, !noalias !385

bb.jm:                                            ; preds = %bb.jl
  %i.xc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !384
  br label %bb.hs

bb.jn:                                            ; preds = %bb.jl
  %i.xd = load i64, ptr %i.v, align 8, !range !217, !noalias !384, !noundef !6
  %i.xe = trunc nuw i64 %i.xd to i1
  br i1 %i.xe, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !384
  br label %bb.mn

bb.jp:                                            ; preds = %bb.jn
  %i.xf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8, !noalias !384, !noundef !6 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.xi = load ptr, ptr %i.xh, align 8, !noalias !384 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !384
  %.not.i214.i.i.i = icmp eq ptr %i.xg, null
  br i1 %.not.i214.i.i.i, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.xj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1216
  store i8 1, ptr %i.xj, align 8, !noalias !380
  br label %bb.ew

bb.jr:                                            ; preds = %bb.jp
  %i.xk = insertvalue { ptr, ptr } poison, ptr %i.xg, 0
  %i.xl = insertvalue { ptr, ptr } %i.xk, ptr %i.xi, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xi) ]
  br label %bb.hq

bb.js:                                            ; preds = %bb.jj
  %.sink1.i213.i.i.i = inttoptr i64 %i.wu to ptr
  %i.xm = icmp ne i64 %i.wu, 0
  call void @llvm.assume(i1 %i.xm)
  %i.xn = insertvalue { ptr, ptr } poison, ptr %i.ws, 0
  %i.xo = insertvalue { ptr, ptr } %i.xn, ptr %.sink1.i213.i.i.i, 1
  br label %bb.hq

bb.jt:                                            ; preds = %bb.iz
  %i.xp = load ptr, ptr %i.po, align 8, !noalias !380, !nonnull !6, !noundef !6
  %i.xq = load i64, ptr %i.pp, align 8, !noalias !380, !noundef !6
  %i.xr = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  store ptr %i.mz, ptr %i.xr, align 8, !noalias !380
  %.sroa.8391.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1232
  store ptr %i.xp, ptr %.sroa.8391.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.9392.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1240
  store i64 %i.xq, ptr %.sroa.9392.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.10393.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1248
  store ptr %i.pr, ptr %.sroa.10393.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.12395.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1288
  store i8 0, ptr %.sroa.12395.0..sroa_idx.i.i.i, align 8, !noalias !380
  br label %bb.er

bb.ju:                                            ; preds = %bb.ix
  %i.xs = load ptr, ptr %i.vn, align 8, !noalias !380, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xs, i64 8
  %.val150.i.i.i = load ptr, ptr %i.xt, align 8, !noalias !385, !nonnull !6, !noundef !6
  %i.xu = getelementptr i8, ptr %i.xs, i64 16
  %.val151.i.i.i = load i64, ptr %i.xu, align 8, !noalias !385, !noundef !6
  %i.xv = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  store ptr %i.mz, ptr %i.xv, align 8, !noalias !380
  %.sroa.8333.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1232
  store ptr %.val150.i.i.i, ptr %.sroa.8333.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.9334.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1240
  store i64 %.val151.i.i.i, ptr %.sroa.9334.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.10335.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1248
  store ptr %i.vs, ptr %.sroa.10335.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.12337.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1288
  store i8 0, ptr %.sroa.12337.0..sroa_idx.i.i.i, align 8, !noalias !380
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.ae
  %i.xw = phi ptr [ %i.my, %bb.ju ], [ %.phi.trans.insert.i.i, %bb.ae ] ; 4 uses
  %i.xx = phi ptr [ %i.mz, %bb.ju ], [ %i.cm, %bb.ae ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !384
  %i.xy = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224 ; 2 uses
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %i.xy, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jx unwind label %bb.jw, !noalias !385

bb.jw:                                            ; preds = %bb.jv
  %i.xz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !384
  br label %bb.hs

bb.jx:                                            ; preds = %bb.jv
  %i.ya = load i64, ptr %i.z, align 8, !range !217, !noalias !384, !noundef !6
  %i.yb = trunc nuw i64 %i.ya to i1
  br i1 %i.yb, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !384
  br label %bb.mn

bb.jz:                                            ; preds = %bb.jx
  %i.yc = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8, !noalias !384, !noundef !6 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.yf = load ptr, ptr %i.ye, align 8, !noalias !384 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !384
  %.not.i216.i.i.i = icmp eq ptr %i.yd, null
  br i1 %.not.i216.i.i.i, label %bb.ka, label %bb.kh

bb.ka:                                            ; preds = %bb.jz
  %i.yg = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.yh = load ptr, ptr %i.yg, align 8, !noalias !380, !nonnull !6, !noundef !6
  %i.yi = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.yj = load i64, ptr %i.yi, align 8, !noalias !380, !noundef !6
  %i.yk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1104
  store ptr %i.xx, ptr %i.xy, align 8, !noalias !380
  %.sroa.8347.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1232
  store ptr %i.yh, ptr %.sroa.8347.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.9348.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1240
  store i64 %i.yj, ptr %.sroa.9348.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.10349.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1248
  store ptr %i.yk, ptr %.sroa.10349.0..sroa_idx.i.i.i, align 8, !noalias !380
  %.sroa.12351.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1288
  store i8 0, ptr %.sroa.12351.0..sroa_idx.i.i.i, align 8, !noalias !380
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.af
  %i.yl = phi ptr [ %i.xw, %bb.ka ], [ %.phi.trans.insert.i.i, %bb.af ] ; 4 uses
  %i.ym = phi ptr [ %i.xx, %bb.ka ], [ %i.cm, %bb.af ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !384
  %i.yn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %i.yn, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.kd unwind label %bb.kc, !noalias !385

bb.kc:                                            ; preds = %bb.kb
  %i.yo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !384
  br label %bb.hs

bb.kd:                                            ; preds = %bb.kb
  %i.yp = load i64, ptr %i.y, align 8, !range !217, !noalias !384, !noundef !6
  %i.yq = trunc nuw i64 %i.yp to i1
  br i1 %i.yq, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !384
  br label %bb.mn

bb.kf:                                            ; preds = %bb.kd
  %i.yr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !noalias !384, !noundef !6 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8, !noalias !384 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !384
  %.not.i218.i.i.i = icmp eq ptr %i.ys, null
  br i1 %.not.i218.i.i.i, label %bb.ew, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.yv = insertvalue { ptr, ptr } poison, ptr %i.ys, 0
  %i.yw = insertvalue { ptr, ptr } %i.yv, ptr %i.yu, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yu) ]
  br label %bb.hq

bb.kh:                                            ; preds = %bb.jz
  %i.yx = insertvalue { ptr, ptr } poison, ptr %i.yd, 0
  %i.yy = insertvalue { ptr, ptr } %i.yx, ptr %i.yf, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yf) ]
  br label %bb.hq

bb.ki:                                            ; preds = %bb.ge
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

bb.kj:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !384
  br label %.body.i.i.i

bb.kk:                                            ; preds = %bb.fs, %bb.fq
  %.pn45.i.i.i = phi { ptr, i32 } [ %i.pw, %bb.fs ], [ %i.pt, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !384
  br label %bb.ko

bb.kl:                                            ; preds = %bb.fn
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @270, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #20
          to label %bb.ff unwind label %bb.kn, !noalias !385

bb.km:                                            ; preds = %bb.fn
  %i.za = getelementptr inbounds nuw i8, ptr %i.bh, i64 1219
  %i.zb = load i8, ptr %i.za, align 1, !range !259, !noalias !380, !noundef !6
  %i.zc = trunc nuw i8 %i.zb to i1
  br i1 %i.zc, label %bb.kq, label %bb.kp, !prof !503

bb.kn:                                            ; preds = %bb.kl
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.ko:                                            ; preds = %bb.lo, %bb.lc, %bb.ku, %bb.kr, %bb.kn, %bb.kk
  %i.ze = phi ptr [ %i.my, %bb.lc ], [ %i.my, %bb.ku ], [ %i.my, %bb.kr ], [ %i.my, %bb.kn ], [ %i.pg, %bb.lo ], [ %i.my, %bb.kk ]
  %i.zf = phi ptr [ %i.mz, %bb.lc ], [ %i.mz, %bb.ku ], [ %i.mz, %bb.kr ], [ %i.mz, %bb.kn ], [ %i.ph, %bb.lo ], [ %i.mz, %bb.kk ] ; 2 uses
  %.pn126.i.i.i = phi { ptr, i32 } [ %i.zw, %bb.lc ], [ %i.zn, %bb.ku ], [ %i.zj, %bb.kr ], [ %i.zd, %bb.kn ], [ %.pn123.pn.i.i.i, %bb.lo ], [ %.pn45.i.i.i, %bb.kk ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.zf) #16
          to label %.body220.i.i.i unwind label %bb.ba, !noalias !385

bb.kp:                                            ; preds = %bb.km
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #20
          to label %bb.ff unwind label %bb.kr, !noalias !385

bb.kq:                                            ; preds = %bb.km
  %i.zg = getelementptr inbounds nuw i8, ptr %i.bh, i64 1104 ; 2 uses
  %i.zh = load i64, ptr %i.zg, align 8, !noalias !380, !noundef !6
  %i.zi = icmp eq i64 %i.zh, 0
  br i1 %i.zi, label %bb.kt, label %bb.ks, !prof !503

bb.kr:                                            ; preds = %bb.kp
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.ks:                                            ; preds = %bb.kq
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @274, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zg, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #20
          to label %bb.ff unwind label %bb.ku, !noalias !385

bb.kt:                                            ; preds = %bb.kq
  %i.zk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1112 ; 2 uses
  %i.zl = load i64, ptr %i.zk, align 8, !noalias !380, !noundef !6
  %i.zm = icmp eq i64 %i.zl, 0
  br i1 %i.zm, label %bb.kw, label %bb.kv, !prof !503

bb.ku:                                            ; preds = %bb.ks
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.kv:                                            ; preds = %bb.kt
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @274, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zk, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #20
          to label %bb.ff unwind label %bb.lc, !noalias !385

bb.kw:                                            ; preds = %bb.kt
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mz)
          to label %bb.kz unwind label %bb.kx, !noalias !385

bb.kx:                                            ; preds = %bb.kw
  %i.zo = landingpad { ptr, i32 }
          cleanup
  %i.zp = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %.val2.i.i.i.i.i = load i32, ptr %i.zp, align 8, !alias.scope !579, !noalias !380, !noundef !6 ; 2 uses
  %i.zq = icmp eq i32 %.val2.i.i.i.i.i, -1
  br i1 %i.zq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.zr = call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i) #18, !noalias !385 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i

bb.kz:                                            ; preds = %bb.kw
  %i.zs = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %.val.i.i.i.i.i = load i32, ptr %i.zs, align 8, !alias.scope !579, !noalias !380, !noundef !6 ; 2 uses
  %i.zt = icmp eq i32 %.val.i.i.i.i.i, -1
  br i1 %i.zt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.zu = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i) #18, !noalias !385 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i: ; preds = %bb.ky, %bb.kx
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mz) #16
          to label %.body220.i.i.i unwind label %bb.lb, !noalias !385

bb.lb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
  %i.zv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !385
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.la, %bb.kz
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.ld, !noalias !385

bb.lc:                                            ; preds = %bb.kv
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.ld:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i226.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  %i.zx = phi ptr [ %i.ss, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i226.i.i.i ], [ %i.my, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ]
  %i.zy = phi ptr [ %i.st, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i226.i.i.i ], [ %i.mz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ]
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %.body220.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.aaa)
          to label %bb.lr unwind label %bb.le, !noalias !385

bb.le:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230.i.i.i
  %i.aab = phi ptr [ %i.my, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.ng, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230.i.i.i ]
  %i.aac = phi ptr [ %i.mz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.nh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230.i.i.i ]
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.lf:                                            ; preds = %bb.ev
  %i.aae = insertvalue { ptr, ptr } poison, ptr %i.nw, 0
  %i.aaf = insertvalue { ptr, ptr } %i.aae, ptr %i.ny, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ny) ]
  br label %bb.hq

bb.lg:                                            ; preds = %bb.hq
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.su)
          to label %bb.lh unwind label %bb.ez, !noalias !385

bb.lh:                                            ; preds = %bb.lg, %bb.hq, %bb.hq, %bb.hq, %bb.hq
  %i.aag = getelementptr inbounds nuw i8, ptr %i.bh, i64 1220
  store i8 0, ptr %i.aag, align 4, !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !384
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.st)
          to label %bb.lk unwind label %bb.li, !noalias !385

bb.li:                                            ; preds = %bb.lh
  %i.aah = landingpad { ptr, i32 }
          cleanup
  %i.aai = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %.val2.i.i223.i.i.i = load i32, ptr %i.aai, align 8, !alias.scope !584, !noalias !380, !noundef !6 ; 2 uses
  %i.aaj = icmp eq i32 %.val2.i.i223.i.i.i, -1
  br i1 %i.aaj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i224.i.i.i, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.aak = call noundef i32 @close(i32 noundef %.val2.i.i223.i.i.i) #18, !noalias !385 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i224.i.i.i

bb.lk:                                            ; preds = %bb.lh
  %i.aal = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %.val.i.i225.i.i.i = load i32, ptr %i.aal, align 8, !alias.scope !584, !noalias !380, !noundef !6 ; 2 uses
  %i.aam = icmp eq i32 %.val.i.i225.i.i.i, -1
  br i1 %i.aam, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i226.i.i.i, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.aan = call noundef i32 @close(i32 noundef %.val.i.i225.i.i.i) #18, !noalias !385 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i226.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i224.i.i.i: ; preds = %bb.lj, %bb.li
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.st) #16
          to label %.body220.i.i.i unwind label %bb.lm, !noalias !385

bb.lm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i224.i.i.i
  %i.aao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !385
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i226.i.i.i: ; preds = %bb.ll, %bb.lk
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.st)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i226._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230_crit_edge.i.i.i unwind label %bb.ld, !noalias !385

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i226._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230_crit_edge.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i226.i.i.i
  %.pre497.i.i.i = extractvalue { ptr, ptr } %.pn117.pn.i.i.i, 1
  %.pre498.i.i.i = extractvalue { ptr, ptr } %.pn117.pn.i.i.i, 0
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230.i.i.i

bb.ln:                                            ; preds = %bb.hs
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.sy) #16
          to label %.body.i.i.i unwind label %bb.ba, !noalias !385

bb.lo:                                            ; preds = %bb.lp, %.body.i.i.i
  store i8 0, ptr %i.pi, align 4, !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !384
  br label %bb.ko

bb.lp:                                            ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtB14_6client11client_conn20ClientConnectionDataENtNtB14_5error5ErrorEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ap) #16
          to label %bb.lo unwind label %bb.ba, !noalias !385

bb.lq:                                            ; preds = %bb.bd, %bb.bc
  %i.aap = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i

bb.lr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i, %bb.au
  %i.aaq = phi ptr [ %i.my, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.ng, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230.i.i.i ], [ %i.cr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.cr, %bb.au ]
  %i.aar = phi ptr [ %i.mz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.nh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230.i.i.i ], [ %i.cs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.cs, %bb.au ]
  %.sroa.1453.0.i.i = phi ptr [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %.sroa.031.1.pre-phi.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230.i.i.i ], [ %i.dv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.dt, %bb.au ] ; 2 uses
  %.sroa.16.0.i.i = phi ptr [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %.sroa.16.1.pre-phi.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit230.i.i.i ], [ %i.dw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.du, %bb.au ] ; 3 uses
  store i8 1, ptr %i.aaq, align 1, !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6259.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !363
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %i.aar)
          to label %bb.lt unwind label %bb.ls, !noalias !364

bb.ls:                                            ; preds = %bb.lr
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.lt:                                            ; preds = %bb.lr
  %.not.i.i.i = icmp eq ptr %.sroa.1453.0.i.i, null
  br i1 %.not.i.i.i, label %bb.lu, label %bb.mc

bb.lu:                                            ; preds = %bb.lt
  %i.aat = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aat)
          to label %bb.lw unwind label %bb.lv, !noalias !364

bb.lv:                                            ; preds = %bb.lu
  %i.aau = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aat)
          to label %.body25.i.i unwind label %bb.lx, !noalias !364

bb.lw:                                            ; preds = %bb.lu
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aat)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.t, !noalias !364

bb.lx:                                            ; preds = %bb.lv
  %i.aav = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !364
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.lw
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aaw)
          to label %bb.lz unwind label %bb.ly, !noalias !364

bb.ly:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.aax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aaw)
          to label %.body29.i.i unwind label %bb.ma, !noalias !364

bb.lz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aaw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i unwind label %bb.r, !noalias !364

bb.ma:                                            ; preds = %bb.ly
  %i.aay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !364
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i: ; preds = %bb.lz
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.aaz = load ptr, ptr %i.bh, align 8, !alias.scope !595, !noalias !359, !nonnull !6, !noundef !6
  %i.aba = atomicrmw sub ptr %i.aaz, i64 1 release, align 8, !noalias !596
  %i.abb = icmp eq i64 %i.aba, 1
  br i1 %i.abb, label %bb.mb, label %bb.mo

bb.mb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #17
          to label %bb.mo unwind label %bb.o, !noalias !364

bb.mc:                                            ; preds = %bb.lt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.i.i) ]
  %i.abc = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abc)
          to label %bb.me unwind label %bb.md, !noalias !364

bb.md:                                            ; preds = %bb.mc
  %i.abd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abc)
          to label %.body25.i.i unwind label %bb.mf, !noalias !364

bb.me:                                            ; preds = %bb.mc
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i unwind label %bb.t, !noalias !364

bb.mf:                                            ; preds = %bb.md
  %i.abe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !364
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i: ; preds = %bb.me
  %i.abf = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abf)
          to label %bb.mh unwind label %bb.mg, !noalias !364

bb.mg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i
  %i.abg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abf)
          to label %.body29.i.i unwind label %bb.mi, !noalias !364

bb.mh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i unwind label %bb.r, !noalias !364

bb.mi:                                            ; preds = %bb.mg
  %i.abh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !364
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i: ; preds = %bb.mh
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.abi = load ptr, ptr %i.bh, align 8, !alias.scope !603, !noalias !359, !nonnull !6, !noundef !6
  %i.abj = atomicrmw sub ptr %i.abi, i64 1 release, align 8, !noalias !604
  %i.abk = icmp eq i64 %i.abj, 1
  br i1 %i.abk, label %bb.mj, label %bb.mo

bb.mj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #17
          to label %bb.mo unwind label %bb.o, !noalias !364

.body20.i.i:                                      ; preds = %bb.lq, %bb.bb
  %i.abl = phi ptr [ %i.eh, %bb.bb ], [ %i.cm, %bb.lq ]
  %.pn8.i.i = phi { ptr, i32 } [ %.pn135.pn.pn.pn.pn.i.i.i, %bb.bb ], [ %i.aap, %bb.lq ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %i.abl) #16
          to label %bb.u unwind label %bb.mk, !noalias !364

bb.mk:                                            ; preds = %bb.ml, %.body20.i.i, %bb.u, %.body25.i.i, %bb.q
  %i.abm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !364
  unreachable

bb.ml:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #16
          to label %bb.w unwind label %bb.mk, !noalias !364

bb.mm:                                            ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !354, !noalias !605
  br label %_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00B1C_.exit

bb.mn:                                            ; preds = %bb.ke, %bb.jy, %bb.jo, %bb.je, %bb.is, %bb.ik, %bb.eu, %bb.ei
  %i.abn = phi ptr [ %i.np, %bb.eu ], [ %i.ug, %bb.ik ], [ %i.uy, %bb.is ], [ %i.we, %bb.je ], [ %i.wz, %bb.jo ], [ %i.xw, %bb.jy ], [ %i.yl, %bb.ke ], [ %i.mm, %bb.ei ]
  %.sink.i.ph.i.i = phi i8 [ 10, %bb.eu ], [ 4, %bb.ik ], [ 5, %bb.is ], [ 8, %bb.je ], [ 9, %bb.jo ], [ 6, %bb.jy ], [ 7, %bb.ke ], [ 3, %bb.ei ]
  store i8 %.sink.i.ph.i.i, ptr %i.abn, align 1, !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6259.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !363
  store i8 3, ptr %i.bi, align 1, !noalias !359
  store i64 2, ptr %0, align 8, !alias.scope !354, !noalias !605
  br label %_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00B1C_.exit

bb.mo:                                            ; preds = %bb.mj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i, %bb.mb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i
  %.sroa.3.0.i.i = phi ptr [ %.sroa.16.0.i.i, %bb.mj ], [ %.sroa.16.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i ], [ undef, %bb.mb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !363
  %i.abo = getelementptr inbounds nuw i8, ptr %i.bh, i64 1392
  store i8 0, ptr %i.abo, align 8, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !363
  store i8 1, ptr %i.bi, align 1, !noalias !359
  store i64 1, ptr %0, align 8, !alias.scope !354, !noalias !605
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.1453.0.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !354, !noalias !605
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !354, !noalias !605
  br label %_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00B1C_.exit

_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00B1C_.exit: ; preds = %bb.mm, %bb.mn, %bb.mo
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB11_9TcpStream11connect_mio00ENtNtB7_6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !204, !noundef !6
  tail call void @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime2io12registrationNtB5_12Registration16poll_write_ready(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = load i8, ptr %0, align 8, !range !230, !noundef !6
  switch i8 %i.m, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.o, ptr %i.l, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @289, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 12, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @287, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 8, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @288)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.r, ptr %i.k, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 29, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 12, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @292, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 8, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @293)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.t, ptr %i.j, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @296, i64 noundef 27, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @295)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.i, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 14, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.f:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @299, i64 noundef 23)
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 19)
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 12)
  br label %bb.x

bb.i:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @302, i64 noundef 12)
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.h, align 8
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @304, i64 noundef 16, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @303)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ad, ptr %i.g, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 14, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @305)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.af, ptr %i.f, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @308, i64 noundef 13, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.e, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 18, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.d, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 25, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @311)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.c, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.p:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @315, i64 noundef 22)
  br label %bb.x

bb.q:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @316, i64 noundef 22)
  br label %bb.x

bb.r:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 20)
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 23)
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @319, i64 noundef 21)
  br label %bb.x

bb.u:                                             ; preds = %bb.a
  %i.as = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 18)
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.at, ptr %i.b, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @324, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.p, %bb.b ], [ %i.s, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.y, %bb.g ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ], [ %i.ae, %bb.k ], [ %i.ag, %bb.l ], [ %i.ai, %bb.m ], [ %i.ak, %bb.n ], [ %i.am, %bb.o ], [ %i.an, %bb.p ], [ %i.ao, %bb.q ], [ %i.ap, %bb.r ], [ %i.aq, %bb.s ], [ %i.ar, %bb.t ], [ %i.as, %bb.u ], [ %i.au, %bb.v ], [ %i.aw, %bb.w ]
  ret i1 %.sroa.0.0.in
}
end_hunk_1
begin_hunk_2_@llvm.experimental.noalias.scope.decl
!365 = !{!366, !360, !362, !355, !358}
!366 = distinct !{!366, !367, !"_RNvMse_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE3newCsc044841uM34_23unbuffered_async_client: argument 0"}
!367 = distinct !{!367, !"_RNvMse_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE3newCsc044841uM34_23unbuffered_async_client"}
!368 = !{!369, !366, !360, !355}
!369 = distinct !{!369, !370, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEE3newCsc044841uM34_23unbuffered_async_client: argument 0"}
!370 = distinct !{!370, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEE3newCsc044841uM34_23unbuffered_async_client"}
!371 = !{!366, !360, !355}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!374 = distinct !{!374, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!377 = distinct !{!377, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!378 = !{!376, !373}
!379 = !{!376, !373, !360, !355}
!380 = !{!381, !383, !360, !362, !355}
!381 = distinct !{!381, !382, !"_RNCNvCsc044841uM34_23unbuffered_async_client8converse0B3_: argument 0"}
!382 = distinct !{!382, !"_RNCNvCsc044841uM34_23unbuffered_async_client8converse0B3_"}
!383 = distinct !{!383, !382, !"_RNCNvCsc044841uM34_23unbuffered_async_client8converse0B3_: argument 1"}
!384 = !{!381, !383, !360, !362, !355, !358}
!385 = !{!381, !360, !355}
!386 = !{!387}
!387 = distinct !{!387, !388, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!388 = distinct !{!388, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!391 = distinct !{!391, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!392 = !{!390, !387}
!393 = !{!390, !387, !381, !360, !355}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtBM_19InvalidDnsNameErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!396 = distinct !{!396, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtBM_19InvalidDnsNameErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!397 = !{!398, !381, !383, !360, !362, !355, !358}
!398 = distinct !{!398, !396, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtBM_19InvalidDnsNameErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!399 = !{i64 0, i64 3}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionNtNtBQ_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!402 = distinct !{!402, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionNtNtBQ_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!403 = !{!404, !381, !383, !360, !362, !355, !358}
!404 = distinct !{!404, !402, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionNtNtBQ_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!405 = !{!406, !381, !383, !360, !362, !355, !358}
!406 = distinct !{!406, !407, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client: argument 0"}
!407 = distinct !{!407, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!410 = distinct !{!410, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!413 = distinct !{!413, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!414 = !{!412, !409}
!415 = !{!412, !409, !381, !360, !355}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!418 = distinct !{!418, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!421 = distinct !{!421, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!422 = !{!420, !417}
!423 = !{!420, !417, !381, !360, !355}
!424 = !{!425, !427, !381, !383, !360, !362, !355}
!425 = distinct !{!425, !426, !"_RNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB5_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0Csc044841uM34_23unbuffered_async_client: argument 0"}
!426 = distinct !{!426, !"_RNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB5_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0Csc044841uM34_23unbuffered_async_client"}
!427 = distinct !{!427, !426, !"_RNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB5_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0Csc044841uM34_23unbuffered_async_client: argument 1"}
!428 = !{!425, !427, !381, !383, !360, !362, !355, !358}
!429 = !{!425, !381, !360, !355}
!430 = !{!431, !433}
!431 = distinct !{!431, !432, !"_RNvXNtNtCsj6eKBz9Db1c_4core6future11into_futureNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyNtB2_10IntoFuture11into_futureCsc044841uM34_23unbuffered_async_client: argument 0"}
!432 = distinct !{!432, !"_RNvXNtNtCsj6eKBz9Db1c_4core6future11into_futureNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyNtB2_10IntoFuture11into_futureCsc044841uM34_23unbuffered_async_client"}
!433 = distinct !{!433, !432, !"_RNvXNtNtCsj6eKBz9Db1c_4core6future11into_futureNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyNtB2_10IntoFuture11into_futureCsc044841uM34_23unbuffered_async_client: argument 1"}
!434 = !{!435, !437}
!435 = distinct !{!435, !436, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed5StateECsc044841uM34_23unbuffered_async_client: argument 0"}
!436 = distinct !{!436, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed5StateECsc044841uM34_23unbuffered_async_client"}
!437 = distinct !{!437, !438, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client: argument 0"}
!438 = distinct !{!438, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client"}
!439 = !{i32 -1, i32 3}
!440 = !{!441, !443}
!441 = distinct !{!441, !442, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed5StateECsc044841uM34_23unbuffered_async_client: argument 0"}
!442 = distinct !{!442, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed5StateECsc044841uM34_23unbuffered_async_client"}
!443 = distinct !{!443, !444, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client: argument 0"}
!444 = distinct !{!444, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client"}
!445 = !{!446, !448, !425, !427, !381, !383, !360, !362, !355}
!446 = distinct !{!446, !447, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream12connect_addr0Csc044841uM34_23unbuffered_async_client: argument 0"}
!447 = distinct !{!447, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream12connect_addr0Csc044841uM34_23unbuffered_async_client"}
!448 = distinct !{!448, !447, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream12connect_addr0Csc044841uM34_23unbuffered_async_client: argument 1"}
!449 = !{!446, !448, !425, !427, !381, !383, !360, !362, !355, !358}
!450 = !{!446, !425, !381, !360, !355}
!451 = !{!452}
!452 = distinct !{!452, !453, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!453 = distinct !{!453, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!454 = !{!455, !446, !448, !425, !427, !381, !383, !360, !362, !355, !358}
!455 = distinct !{!455, !453, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!456 = !{!448, !425, !427, !381, !383, !360, !362, !355, !358}
!457 = !{!458, !460, !446, !448, !425, !427, !381, !383, !360, !362, !355}
!458 = distinct !{!458, !459, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream11connect_mio0Csc044841uM34_23unbuffered_async_client: argument 0"}
!459 = distinct !{!459, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream11connect_mio0Csc044841uM34_23unbuffered_async_client"}
!460 = distinct !{!460, !459, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream11connect_mio0Csc044841uM34_23unbuffered_async_client: argument 1"}
!461 = !{!462}
!462 = distinct !{!462, !463, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB11_9TcpStream11connect_mio00ENtNtB7_6future6Future4pollCsc044841uM34_23unbuffered_async_client: argument 1"}
!463 = distinct !{!463, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB11_9TcpStream11connect_mio00ENtNtB7_6future6Future4pollCsc044841uM34_23unbuffered_async_client"}
!464 = !{!465, !466, !458, !460, !446, !448, !425, !427, !381, !383, !360, !362, !355}
!465 = distinct !{!465, !463, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB11_9TcpStream11connect_mio00ENtNtB7_6future6Future4pollCsc044841uM34_23unbuffered_async_client: argument 0"}
!466 = distinct !{!466, !463, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB11_9TcpStream11connect_mio00ENtNtB7_6future6Future4pollCsc044841uM34_23unbuffered_async_client: argument 2"}
!467 = !{!458, !460, !446, !448, !425, !427, !381, !383, !360, !362, !355, !358}
!468 = !{!458, !460, !446, !425, !381, !360, !355}
!469 = !{!470}
!470 = distinct !{!470, !471, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!471 = distinct !{!471, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!472 = !{!473}
!473 = distinct !{!473, !471, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!474 = !{!470, !458, !460, !446, !448, !425, !427, !381, !383, !360, !362, !355, !358}
!475 = !{!473, !470}
!476 = !{!458, !446, !425, !381, !360, !355}
!477 = !{i8 -1, i8 3}
!478 = !{!479, !481}
!479 = distinct !{!479, !480, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client: argument 0"}
!480 = distinct !{!480, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client"}
!481 = distinct !{!481, !482, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client: argument 0"}
!482 = distinct !{!482, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client"}
!483 = !{!484}
!484 = distinct !{!484, !485, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc044841uM34_23unbuffered_async_client: argument 0"}
!485 = distinct !{!485, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc044841uM34_23unbuffered_async_client"}
!486 = !{!487}
!487 = distinct !{!487, !488, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client: argument 0"}
!488 = distinct !{!488, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client"}
!489 = !{!490}
!490 = distinct !{!490, !491, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc044841uM34_23unbuffered_async_client: argument 0"}
!491 = distinct !{!491, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc044841uM34_23unbuffered_async_client"}
!492 = !{!493}
!493 = distinct !{!493, !494, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client: argument 0"}
!494 = distinct !{!494, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client"}
!495 = !{i16 0, i16 3}
!496 = !{!497}
!497 = distinct !{!497, !498, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client: argument 0"}
!498 = distinct !{!498, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client"}
!499 = !{!427, !381, !383, !360, !362, !355, !358}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsc044841uM34_23unbuffered_async_client: argument 0"}
!502 = distinct !{!502, !"_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsc044841uM34_23unbuffered_async_client"}
!503 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!504 = !{!505, !507, !381, !383, !360, !362, !355, !358}
!505 = distinct !{!505, !506, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBO_6client11client_conn20ClientConnectionDataENtNtBO_5error5ErrorE6unwrapCsc044841uM34_23unbuffered_async_client: argument 0"}
!506 = distinct !{!506, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBO_6client11client_conn20ClientConnectionDataENtNtBO_5error5ErrorE6unwrapCsc044841uM34_23unbuffered_async_client"}
!507 = distinct !{!507, !506, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBO_6client11client_conn20ClientConnectionDataENtNtBO_5error5ErrorE6unwrapCsc044841uM34_23unbuffered_async_client: argument 1"}
!508 = !{!505, !381, !383, !360, !362, !355, !358}
!509 = !{!505, !507, !381, !360, !355}
!510 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 1}
!511 = !{i8 -2, i8 22}
!512 = !{!513, !515}
!513 = distinct !{!513, !514, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client: argument 0"}
!514 = distinct !{!514, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client"}
!515 = distinct !{!515, !516, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client: argument 0"}
!516 = distinct !{!516, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client"}
!517 = !{!518, !381, !383, !360, !362, !355, !358}
!518 = distinct !{!518, !519, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client: argument 0"}
!519 = distinct !{!519, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client"}
!520 = !{!521}
!521 = distinct !{!521, !522, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultReNtNtNtB7_3str5error9Utf8ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!522 = distinct !{!522, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultReNtNtNtB7_3str5error9Utf8ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!523 = !{!524}
!524 = distinct !{!524, !522, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultReNtNtNtB7_3str5error9Utf8ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!525 = !{!521, !381, !383, !360, !362, !355, !358}
!526 = !{!521, !524}
!527 = !{!528, !381, !383, !360, !362, !355, !358}
!528 = distinct !{!528, !529, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_3str5error9Utf8ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client: argument 0"}
!529 = distinct !{!529, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_3str5error9Utf8ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client"}
!530 = !{!531}
!531 = distinct !{!531, !532, !"_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr: argument 0"}
!532 = distinct !{!532, !"_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr"}
!533 = !{!534, !536, !537, !539, !541, !543, !381, !360, !355}
!534 = distinct !{!534, !535, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!535 = distinct !{!535, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!536 = distinct !{!536, !535, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!537 = distinct !{!537, !538, !"_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCsc044841uM34_23unbuffered_async_client: argument 0"}
!538 = distinct !{!538, !"_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCsc044841uM34_23unbuffered_async_client"}
!539 = distinct !{!539, !540, !"_RNvXsH_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_14SplitInclusivecENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsc044841uM34_23unbuffered_async_client: argument 0"}
!540 = distinct !{!540, !"_RNvXsH_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_14SplitInclusivecENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsc044841uM34_23unbuffered_async_client"}
!541 = distinct !{!541, !542, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsc044841uM34_23unbuffered_async_client: argument 0"}
!542 = distinct !{!542, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsc044841uM34_23unbuffered_async_client"}
!543 = distinct !{!543, !544, !"_RNvXss_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!544 = distinct !{!544, !"_RNvXss_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!545 = !{!546, !548, !541, !543, !381, !383, !360, !362, !355, !358}
!546 = distinct !{!546, !547, !"_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call: argument 0"}
!547 = distinct !{!547, !"_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call"}
!548 = distinct !{!548, !549, !"_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut: argument 0"}
!549 = distinct !{!549, !"_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut"}
!550 = !{!551, !553}
!551 = distinct !{!551, !552, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client: argument 0"}
!552 = distinct !{!552, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client"}
!553 = distinct !{!553, !554, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client: argument 0"}
!554 = distinct !{!554, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client"}
!555 = !{!556}
!556 = distinct !{!556, !557, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!557 = distinct !{!557, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!558 = !{!559, !381, !383, !360, !362, !355, !358}
!559 = distinct !{!559, !557, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!560 = !{!561, !563}
!561 = distinct !{!561, !562, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client: argument 0"}
!562 = distinct !{!562, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client"}
!563 = distinct !{!563, !564, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client: argument 0"}
!564 = distinct !{!564, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client"}
!565 = !{!566, !568}
!566 = distinct !{!566, !567, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client: argument 0"}
!567 = distinct !{!567, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client"}
!568 = distinct !{!568, !569, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client: argument 0"}
!569 = distinct !{!569, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client"}
!570 = !{!381, !360, !362, !355, !358}
!571 = !{!572}
!572 = distinct !{!572, !573, !"_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_15TransmitTlsDataNtNtNtB9_6client11client_conn20ClientConnectionDataE4doneCsc044841uM34_23unbuffered_async_client: argument 0"}
!573 = distinct !{!573, !"_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_15TransmitTlsDataNtNtNtB9_6client11client_conn20ClientConnectionDataE4doneCsc044841uM34_23unbuffered_async_client"}
!574 = !{!575}
!575 = distinct !{!575, !576, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!576 = distinct !{!576, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!577 = !{!578, !381, !383, !360, !362, !355, !358}
!578 = distinct !{!578, !576, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!579 = !{!580, !582}
!580 = distinct !{!580, !581, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client: argument 0"}
!581 = distinct !{!581, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client"}
!582 = distinct !{!582, !583, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client: argument 0"}
!583 = distinct !{!583, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client"}
!584 = !{!585, !587}
!585 = distinct !{!585, !586, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client: argument 0"}
!586 = distinct !{!586, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client"}
!587 = distinct !{!587, !588, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client: argument 0"}
!588 = distinct !{!588, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client"}
!589 = !{!590}
!590 = distinct !{!590, !591, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!591 = distinct !{!591, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!594 = distinct !{!594, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!595 = !{!593, !590}
!596 = !{!593, !590, !360, !355}
!597 = !{!598}
!598 = distinct !{!598, !599, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!599 = distinct !{!599, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!600 = !{!601}
!601 = distinct !{!601, !602, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!602 = distinct !{!602, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!603 = !{!601, !598}
!604 = !{!601, !598, !360, !355}
!605 = !{!358}
end_hunk_2
