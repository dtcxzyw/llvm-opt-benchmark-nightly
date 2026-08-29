Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.00?download=true
inline.NumInlined: 896
inline.NumDeleted: 262
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayload10into_owned:bb.a
  %i.bc = tail call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 24, 561) 200, i64 noundef 8) #26, !noalias !299 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.ac, label %bb.af, !prof !273

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #28
          to label %.noexc.i unwind label %bb.ad, !noalias !282

.noexc.i:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.j) #22
          to label %bb.ag unwind label %bb.ae, !noalias !282

bb.ae:                                            ; preds = %bb.ad
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !282
  unreachable

bb.af:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bc, ptr noundef nonnull align 8 dereferenceable(200) %i.j, i64 200, i1 false), !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !282
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bc, ptr %i.bg, align 8, !alias.scope !277, !noalias !280
  store i64 -9223372036854775792, ptr %i.n, align 8, !alias.scope !277, !noalias !280
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 200, i64 noundef 8) #26, !noalias !282
  br label %_RNvMs1M_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16HandshakePayload10into_owned.exit

bb.ag:                                            ; preds = %bb.ad, %bb.aa
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bb, %bb.aa ], [ %i.be, %bb.ad ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 200, i64 noundef 8) #26, !noalias !282
  br label %common.resume.i

_RNvMs1M_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16HandshakePayload10into_owned.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_RNvMs1h_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23CertificatePayloadTls1310into_owned.exit.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.n, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayload12read_version(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i16 noundef range(i16 0, 10) %2, i16 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [136 x i8], align 8               ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5171.sroa.8 = alloca [12 x i8], align 4  ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [200 x i8], align 8               ; 5 uses
  %i.i = alloca [200 x i8], align 8               ; 7 uses
  %.sroa.6152 = alloca [24 x i8], align 8         ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.3131 = alloca [16 x i8], align 8         ; 2 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.6125.sroa.7 = alloca [20 x i8], align 4  ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6119.sroa.7 = alloca [20 x i8], align 4  ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6113.sroa.7 = alloca [20 x i8], align 4  ; 6 uses
  %.sroa.3110 = alloca [40 x i8], align 8         ; 2 uses
  %i.n = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.6104.sroa.7 = alloca [20 x i8], align 4  ; 6 uses
  %.sroa.3101.sroa.0 = alloca [54 x i8], align 8  ; 2 uses
  %i.o = alloca [96 x i8], align 8                ; 10 uses
  %.sroa.695.sroa.7 = alloca [20 x i8], align 4   ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.392.sroa.0 = alloca [54 x i8], align 8   ; 2 uses
  %i.q = alloca [104 x i8], align 8               ; 10 uses
  %.sroa.686.sroa.7 = alloca [20 x i8], align 4   ; 6 uses
  %.sroa.5.sroa.8 = alloca [12 x i8], align 4     ; 4 uses
  %.sroa.583.sroa.8 = alloca [12 x i8], align 4   ; 6 uses
  %.sroa.381 = alloca [16 x i8], align 8          ; 2 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.675.sroa.7 = alloca [20 x i8], align 4   ; 6 uses
  %.sroa.070.sroa.4 = alloca [74 x i8], align 4   ; 24 uses
  %i.s = alloca [96 x i8], align 8                ; 10 uses
  %.sroa.063.sroa.8 = alloca [74 x i8], align 4   ; 7 uses
  %.sroa.359.sroa.0 = alloca [54 x i8], align 8   ; 2 uses
  %i.t = alloca [128 x i8], align 8               ; 12 uses
  %.sroa.653.sroa.7 = alloca [20 x i8], align 4   ; 6 uses
  %.sroa.4534 = alloca [20 x i8], align 1         ; 2 uses
  %i.u = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.549.sroa.8 = alloca [20 x i8], align 1   ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.3.sroa.0 = alloca [62 x i8], align 8     ; 2 uses
  %i.x = alloca [136 x i8], align 8               ; 15 uses
  %.sroa.626.sroa.8 = alloca [12 x i8], align 4   ; 6 uses
  %.sroa.64.sroa.8 = alloca [16 x i8], align 8    ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.523 = alloca [24 x i8], align 8          ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 32 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvXsb_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_13HandshakeTypeNtNtNtB7_4msgs5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.ac = load i8, ptr %i.ab, align 8, !range !302, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.ac, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ae = load i8, ptr %i.ad, align 1             ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ag = load i8, ptr %i.af, align 2             ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.6195.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.6191.0..sroa_idx, i64 21, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ac, ptr %i.ah, align 8
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ae, ptr %.sroa.4193.0..sroa_idx, align 1
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ag, ptr %.sroa.5194.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.bz

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB5_3u24NtB5_5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.ai = load i8, ptr %i.aa, align 8, !range !302, !noundef !5 ; 2 uses
  %.not287 = icmp eq i8 %i.ai, -1
  br i1 %.not287, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4205.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4201.0..sroa_idx, i64 3, i1 false)
  %.sroa.5202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.5202.0.copyload = load i32, ptr %.sroa.5202.0..sroa_idx, align 4
  %.sroa.6203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6207.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6203.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ai, ptr %i.aj, align 8
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.5202.0.copyload, ptr %.sroa.5206.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.bz

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.am = zext i32 %i.al to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader3sub(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.am)
  %i.an = load i64, ptr %i.y, align 8, !range !303, !noundef !5
  %i.ao = trunc nuw i64 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.523, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.523, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523)
  br label %bb.bw

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.523, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64.sroa.8)
  switch i8 %i.ae, label %bb.h [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
    i8 6, label %bb.n
    i8 7, label %bb.o
    i8 8, label %bb.p
    i8 9, label %bb.q
    i8 10, label %bb.r
    i8 11, label %bb.s
    i8 12, label %bb.t
    i8 13, label %bb.u
    i8 14, label %bb.v
    i8 16, label %bb.w
    i8 17, label %bb.x
    i8 18, label %bb.y
    i8 19, label %bb.z
  ]

bb.h:                                             ; preds = %bb.i, %bb.g
  call void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %.sroa.5182.sroa.3.6.copyload = load i32, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 20, i1 false)
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val = load i64, ptr %i.ar, align 8, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val294 = load i64, ptr %i.as, align 8, !noundef !5
  %i.at = icmp eq i64 %.val, %.val294
  br i1 %i.at, label %bb.aa, label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.626.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvXsR_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_18ClientHelloPayloadNtNtB7_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.au = load i64, ptr %i.x, align 8, !range !7, !noundef !5 ; 2 uses
  %i.av = icmp eq i64 %i.au, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.0619.0.copyload = load i64, ptr %i.aw, align 8 ; 4 uses
  %.sroa.4620.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4620.0.copyload = load i32, ptr %.sroa.4620.0..sroa_idx.a, align 8 ; 2 uses
  %.sroa.5621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.626.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5621.0..sroa_idx, i64 12, i1 false)
  br i1 %i.av, label %bb.ab, label %bb.ac

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvXsx_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15ProtocolVersionNtNtNtB7_4msgs5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.ax = load i8, ptr %i.w, align 8, !range !302, !noundef !5 ; 2 uses
  %.not292 = icmp eq i8 %i.ax, -1
  br i1 %.not292, label %bb.af, label %bb.ae

bb.l:                                             ; preds = %bb.g
  %i.ay = icmp eq i16 %2, 5
  br i1 %i.ay, label %bb.ar, label %bb.aq

bb.m:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val299 = load i64, ptr %i.az, align 8, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val300 = load i64, ptr %i.ba, align 8, !noundef !5
  %i.bb = icmp ult i64 %.val300, %.val299
  br i1 %i.bb, label %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader12expect_empty.exit, label %bb.aa

bb.n:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 16, ptr %i.bc, align 8
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @17, ptr %.sroa.4178.0..sroa_idx, align 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 17, ptr %.sroa.5179.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXsP_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_16ServerExtensionsNtNtB7_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.bd = load i64, ptr %i.i, align 8, !range !8, !noundef !5 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6152, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  br i1 %i.be, label %bb.aw, label %bb.ax

bb.p:                                             ; preds = %bb.g
  %i.bg = icmp eq i16 %2, 5
  br i1 %i.bg, label %bb.bb, label %bb.ba

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.686.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXs1v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_24ServerKeyExchangePayloadNtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.bh = load i64, ptr %i.q, align 8, !range !8, !noundef !5 ; 4 uses
  %i.bi = icmp eq i64 %i.bh, -2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0678.0.copyload = load i32, ptr %i.bj, align 8 ; 2 uses
  %.sroa.4679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.686.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4679.0..sroa_idx, i64 20, i1 false)
  br i1 %i.bi, label %bb.bg, label %bb.bh

bb.r:                                             ; preds = %bb.g
  %i.bk = icmp eq i16 %2, 5
  br i1 %i.bk, label %bb.bj, label %bb.bi

bb.s:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val297 = load i64, ptr %i.bl, align 8, !noundef !5
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val298 = load i64, ptr %i.bm, align 8, !noundef !5
  %i.bn = icmp ult i64 %.val298, %.val297
  br i1 %i.bn, label %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader12expect_empty.exit307, label %bb.aa

bb.t:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6119.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvXs4_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_21DigitallySignedStructNtNtNtB7_4msgs5codec5Codec4read(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.bo = load i64, ptr %i.l, align 8, !range !7, !noundef !5 ; 4 uses
  %i.bp = icmp eq i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4703.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.0702.0.copyload = load i32, ptr %i.bq, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6119.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4703.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.bp, label %bb.bo, label %bb.bp

bb.u:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %.sroa.25.8.copyload381 = load i64, ptr %i.p, align 8 ; 3 uses
  %.sroa.25.sroa.0.0.extract.trunc442 = trunc i64 %.sroa.25.8.copyload381 to i8
  %.sroa.25.sroa.23.0.extract.shift471 = lshr i64 %.sroa.25.8.copyload381, 8
  %.sroa.25.sroa.23.0.extract.trunc472 = trunc i64 %.sroa.25.sroa.23.0.extract.shift471 to i8
  %.sroa.25.sroa.25.0.extract.shift505 = and i64 %.sroa.25.8.copyload381, -65536
  %.sroa.46.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.46.8.copyload389 = load i32, ptr %.sroa.46.8..sroa_idx, align 8
  %.sroa.55.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.55.8..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.aa

bb.v:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %.sroa.25.8.copyload382 = load i64, ptr %i.f, align 8 ; 3 uses
  %.sroa.25.sroa.0.0.extract.trunc443 = trunc i64 %.sroa.25.8.copyload382 to i8
  %.sroa.25.sroa.23.0.extract.shift473 = lshr i64 %.sroa.25.8.copyload382, 8
  %.sroa.25.sroa.23.0.extract.trunc474 = trunc i64 %.sroa.25.sroa.23.0.extract.shift473 to i8
  %.sroa.25.sroa.25.0.extract.shift507 = and i64 %.sroa.25.8.copyload382, -65536
  %.sroa.46.8..sroa_idx390 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.46.8.copyload391 = load i32, ptr %.sroa.46.8..sroa_idx390, align 8
  %.sroa.55.8..sroa_idx405 = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.55.8..sroa_idx405, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aa

bb.w:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5171.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs1I_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17CertificateStatusNtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.br = load i64, ptr %i.e, align 8, !range !303, !noundef !5
  %i.bs = trunc nuw i64 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.0718.0.copyload = load i64, ptr %i.bt, align 8 ; 4 uses
  %.sroa.4719.0.copyload = load i32, ptr %.sroa.4719.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5171.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5720.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.bs, label %bb.bq, label %bb.br

bb.x:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs2m_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_16KeyUpdateRequestNtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.bu = load i8, ptr %i.g, align 8, !range !302, !noundef !5 ; 2 uses
  %.not288 = icmp eq i8 %i.bu, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bw = load i8, ptr %i.bv, align 1             ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.by = load i8, ptr %i.bx, align 2             ; 2 uses
  br i1 %.not288, label %bb.bt, label %bb.bs

bb.y:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6113.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXs1K_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_28CompressedCertificatePayloadNtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.bz = load i64, ptr %i.m, align 8, !range !8, !noundef !5 ; 4 uses
  %i.ca = icmp eq i64 %i.bz, -2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.0696.0.copyload = load i32, ptr %i.cb, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6113.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4697.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.ca, label %bb.bu, label %bb.bv

bb.z:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 16, ptr %i.cc, align 8
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @19, ptr %.sroa.4174.0..sroa_idx, align 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 11, ptr %.sroa.5175.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.aa:                                            ; preds = %bb.s, %bb.m, %bb.i, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bh, %bb.bf, %bb.bd, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit, %bb.av, %bb.at, %bb.am, %bb.ac, %bb.v, %bb.u, %bb.h
  %.sroa.25.sroa.25.sroa.0.0 = phi i64 [ 0, %bb.h ], [ %.sroa.25.sroa.25.0.extract.shift501, %bb.bv ], [ %.sroa.25.sroa.25.0.extract.shift513, %bb.ac ], [ %.sroa.25.sroa.25.sroa.0.1.in, %bb.am ], [ %.sroa.25.sroa.25.0.extract.shift489, %bb.av ], [ %.sroa.25.sroa.25.0.extract.shift, %bb.at ], [ 0, %bb.i ], [ %.sroa.25.sroa.25.0.extract.shift485, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit ], [ %.sroa.25.sroa.25.0.extract.shift491, %bb.bf ], [ %.sroa.25.sroa.25.0.extract.shift509, %bb.bd ], [ %.sroa.25.sroa.25.0.extract.shift493, %bb.bh ], [ %.sroa.25.sroa.25.0.extract.shift497, %bb.bn ], [ %.sroa.25.sroa.25.0.extract.shift495, %bb.bl ], [ 0, %bb.m ], [ %.sroa.25.sroa.25.0.extract.shift499, %bb.bp ], [ %.sroa.25.sroa.25.0.extract.shift505, %bb.u ], [ %.sroa.25.sroa.25.0.extract.shift507, %bb.v ], [ %.sroa.25.sroa.25.0.extract.shift511, %bb.br ], [ 0, %bb.bt ], [ 0, %bb.s ]
  %.sroa.25.sroa.23.0 = phi i8 [ %i.ag, %bb.h ], [ %.sroa.25.sroa.23.0.extract.trunc468, %bb.bv ], [ %.sroa.25.sroa.23.0.extract.trunc480, %bb.ac ], [ %.sroa.25.sroa.23.1, %bb.am ], [ %.sroa.25.sroa.23.0.extract.trunc456, %bb.av ], [ %.sroa.25.sroa.23.0.extract.trunc, %bb.at ], [ undef, %bb.i ], [ %.sroa.25.sroa.23.0.extract.trunc452, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit ], [ %.sroa.25.sroa.23.0.extract.trunc458, %bb.bf ], [ %.sroa.25.sroa.23.0.extract.trunc476, %bb.bd ], [ %.sroa.25.sroa.23.0.extract.trunc460, %bb.bh ], [ %.sroa.25.sroa.23.0.extract.trunc464, %bb.bn ], [ %.sroa.25.sroa.23.0.extract.trunc462, %bb.bl ], [ undef, %bb.m ], [ %.sroa.25.sroa.23.0.extract.trunc466, %bb.bp ], [ %.sroa.25.sroa.23.0.extract.trunc472, %bb.u ], [ %.sroa.25.sroa.23.0.extract.trunc474, %bb.v ], [ %.sroa.25.sroa.23.0.extract.trunc478, %bb.br ], [ %i.by, %bb.bt ], [ undef, %bb.s ]
  %.sroa.25.sroa.0.0 = phi i8 [ %i.ae, %bb.h ], [ %.sroa.25.sroa.0.0.extract.trunc440, %bb.bv ], [ %.sroa.25.sroa.0.0.extract.trunc446, %bb.ac ], [ %.sroa.25.sroa.0.1, %bb.am ], [ %.sroa.25.sroa.0.0.extract.trunc434, %bb.av ], [ %.sroa.25.sroa.0.0.extract.trunc, %bb.at ], [ undef, %bb.i ], [ %.sroa.25.sroa.0.0.extract.trunc432, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit ], [ %.sroa.25.sroa.0.0.extract.trunc435, %bb.bf ], [ %.sroa.25.sroa.0.0.extract.trunc444, %bb.bd ], [ %.sroa.25.sroa.0.0.extract.trunc436, %bb.bh ], [ %.sroa.25.sroa.0.0.extract.trunc438, %bb.bn ], [ %.sroa.25.sroa.0.0.extract.trunc437, %bb.bl ], [ undef, %bb.m ], [ %.sroa.25.sroa.0.0.extract.trunc439, %bb.bp ], [ %.sroa.25.sroa.0.0.extract.trunc442, %bb.u ], [ %.sroa.25.sroa.0.0.extract.trunc443, %bb.v ], [ %.sroa.25.sroa.0.0.extract.trunc445, %bb.br ], [ %i.bw, %bb.bt ], [ undef, %bb.s ]
  %.sroa.66.0 = phi i32 [ undef, %bb.h ], [ undef, %bb.bv ], [ %.sroa.5210.sroa.10.0.copyload, %bb.ac ], [ %.sroa.66.1, %bb.am ], [ undef, %bb.av ], [ undef, %bb.at ], [ undef, %bb.i ], [ undef, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit ], [ undef, %bb.bf ], [ undef, %bb.bd ], [ undef, %bb.bh ], [ undef, %bb.bn ], [ undef, %bb.bl ], [ undef, %bb.m ], [ undef, %bb.bp ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.br ], [ undef, %bb.bt ], [ undef, %bb.s ]
  %.sroa.65.0 = phi i16 [ undef, %bb.h ], [ undef, %bb.bv ], [ %.sroa.5210.sroa.9.0.copyload, %bb.ac ], [ %.sroa.65.1, %bb.am ], [ undef, %bb.av ], [ undef, %bb.at ], [ undef, %bb.i ], [ undef, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit ], [ undef, %bb.bf ], [ undef, %bb.bd ], [ undef, %bb.bh ], [ undef, %bb.bn ], [ undef, %bb.bl ], [ undef, %bb.m ], [ undef, %bb.bp ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.br ], [ undef, %bb.bt ], [ undef, %bb.s ]
  %.sroa.64422.0 = phi i16 [ undef, %bb.h ], [ undef, %bb.bv ], [ %.sroa.5210.sroa.8.0.copyload, %bb.ac ], [ %i.cm, %bb.am ], [ undef, %bb.av ], [ undef, %bb.at ], [ undef, %bb.i ], [ undef, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit ], [ undef, %bb.bf ], [ undef, %bb.bd ], [ undef, %bb.bh ], [ undef, %bb.bn ], [ undef, %bb.bl ], [ undef, %bb.m ], [ undef, %bb.bp ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.br ], [ undef, %bb.bt ], [ undef, %bb.s ]
  %.sroa.62.0 = phi i16 [ undef, %bb.h ], [ undef, %bb.bv ], [ %.sroa.5210.sroa.4.0.copyload, %bb.ac ], [ %.sroa.62.1, %bb.am ], [ undef, %bb.av ], [ undef, %bb.at ], [ undef, %bb.i ], [ undef, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit ], [ undef, %bb.bf ], [ undef, %bb.bd ], [ %.sroa.5240.sroa.4.0.copyload, %bb.bh ], [ %.sroa.5243.sroa.4.0.copyload, %bb.bn ], [ undef, %bb.bl ], [ undef, %bb.m ], [ undef, %bb.bp ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.br ], [ undef, %bb.bt ], [ undef, %bb.s ]
  %.sroa.46.0 = phi i32 [ %.sroa.5182.sroa.3.6.copyload, %bb.h ], [ %.sroa.0696.0.copyload, %bb.bv ], [ %.sroa.4620.0.copyload, %bb.ac ], [ %.sroa.46.1, %bb.am ], [ %.sroa.0708.0.copyload, %bb.av ], [ %i.dw, %bb.at ], [ undef, %bb.i ], [ undef, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit ], [ %.sroa.0654.0.copyload, %bb.bf ], [ %.sroa.5.sroa.7.0.copyload666, %bb.bd ], [ %.sroa.0678.0.copyload, %bb.bh ], [ %.sroa.0684.0.copyload, %bb.bn ], [ %.sroa.0690.0.copyload, %bb.bl ], [ undef, %bb.m ], [ %.sroa.0702.0.copyload, %bb.bp ], [ %.sroa.46.8.copyload389, %bb.u ], [ %.sroa.46.8.copyload391, %bb.v ], [ %.sroa.4719.0.copyload, %bb.br ], [ undef, %bb.bt ], [ undef, %bb.s ]
  %.sroa.0.0 = phi i64 [ -9223372036854775787, %bb.h ], [ -9223372036854775802, %bb.bv ], [ %i.au, %bb.ac ], [ %storemerge.a, %bb.am ], [ -9223372036854775793, %bb.av ], [ -9223372036854775794, %bb.at ], [ -9223372036854775808, %bb.i ], [ -9223372036854775792, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit ], [ -9223372036854775803, %bb.bf ], [ -9223372036854775804, %bb.bd ], [ -9223372036854775801, %bb.bh ], [ -9223372036854775799, %bb.bn ], [ -9223372036854775800, %bb.bl ], [ -9223372036854775796, %bb.m ], [ -9223372036854775798, %bb.bp ], [ -9223372036854775795, %bb.u ], [ -9223372036854775790, %bb.v ], [ -9223372036854775789, %bb.br ], [ -9223372036854775791, %bb.bt ], [ -9223372036854775797, %bb.s ]
  %i.cd = phi <2 x i64> [ undef, %bb.h ], [ undef, %bb.bv ], [ %i.ci, %bb.ac ], [ %4, %bb.am ], [ undef, %bb.av ], [ undef, %bb.at ], [ undef, %bb.i ], [ undef, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit ], [ undef, %bb.bf ], [ undef, %bb.bd ], [ %i.eo, %bb.bh ], [ %i.ex, %bb.bn ], [ undef, %bb.bl ], [ undef, %bb.m ], [ undef, %bb.bp ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.br ], [ undef, %bb.bt ], [ undef, %bb.s ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val295 = load i64, ptr %i.ce, align 8, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val296 = load i64, ptr %i.cf, align 8, !noundef !5
  %i.cg = icmp ult i64 %.val296, %.val295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0, ptr %i.b, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.25.sroa.23.0.insert.ext = zext i8 %.sroa.25.sroa.23.0 to i64
  %.sroa.25.sroa.23.0.insert.shift = shl nuw nsw i64 %.sroa.25.sroa.23.0.insert.ext, 8
  %.sroa.25.sroa.23.0.insert.insert = or disjoint i64 %.sroa.25.sroa.25.sroa.0.0, %.sroa.25.sroa.23.0.insert.shift
  %.sroa.25.sroa.0.0.insert.ext = zext i8 %.sroa.25.sroa.0.0 to i64
  %.sroa.25.sroa.0.0.insert.insert = or disjoint i64 %.sroa.25.sroa.23.0.insert.insert, %.sroa.25.sroa.0.0.insert.ext
  store i64 %.sroa.25.sroa.0.0.insert.insert, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.46.0, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(74) %.sroa.55.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(74) %.sroa.070.sroa.4, i64 74, i1 false)
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 94
  store i16 %.sroa.62.0, ptr %.sroa.62.0..sroa_idx, align 2
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <2 x i64> %i.cd, ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.64.sroa.8.0..sroa.64.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64.sroa.8.0..sroa.64.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64.sroa.8, i64 16, i1 false)
  %.sroa.64422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i16 %.sroa.64422.0, ptr %.sroa.64422.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 130
  store i16 %.sroa.65.0, ptr %.sroa.65.0..sroa_idx, align 2
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i32 %.sroa.66.0, ptr %.sroa.66.0..sroa_idx, align 4
  br i1 %i.cg, label %bb.bx, label %bb.by

bb.ab:                                            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.5624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5624.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.626.sroa.8, i64 12, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0619.0.copyload, ptr %i.ch, align 8
  %.sroa.4623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.4620.0.copyload, ptr %.sroa.4623.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626.sroa.8)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.j
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(62) %.sroa.3.sroa.0, ptr noundef nonnull align 8 dereferenceable(62) %.sroa.5210.0..sroa_idx, i64 62, i1 false)
  %.sroa.5210.sroa.4.0..sroa.5210.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 94
  %.sroa.5210.sroa.4.0.copyload = load i16, ptr %.sroa.5210.sroa.4.0..sroa.5210.0..sroa_idx.sroa_idx, align 2
  %.sroa.5210.sroa.5.0..sroa.5210.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ci = load <2 x i64>, ptr %.sroa.5210.sroa.5.0..sroa.5210.0..sroa_idx.sroa_idx, align 8
  %.sroa.5210.sroa.7.0..sroa.5210.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5210.sroa.7.0..sroa.5210.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.5210.sroa.8.0..sroa.5210.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %.sroa.5210.sroa.8.0.copyload = load i16, ptr %.sroa.5210.sroa.8.0..sroa.5210.0..sroa_idx.sroa_idx, align 8
  %.sroa.5210.sroa.9.0..sroa.5210.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 130
  %.sroa.5210.sroa.9.0.copyload = load i16, ptr %.sroa.5210.sroa.9.0..sroa.5210.0..sroa_idx.sroa_idx, align 2
  %.sroa.5210.sroa.10.0..sroa.5210.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 132
  %.sroa.5210.sroa.10.0.copyload = load i32, ptr %.sroa.5210.sroa.10.0..sroa.5210.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.626.sroa.8, i64 12, i1 false)
  %.sroa.25.sroa.0.0.extract.trunc446 = trunc i64 %.sroa.0619.0.copyload to i8
  %.sroa.25.sroa.23.0.extract.shift479 = lshr i64 %.sroa.0619.0.copyload, 8
  %.sroa.25.sroa.23.0.extract.trunc480 = trunc i64 %.sroa.25.sroa.23.0.extract.shift479 to i8
  %.sroa.25.sroa.25.0.extract.shift513 = and i64 %.sroa.0619.0.copyload, -65536
  %.sroa.55.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.070.sroa.4, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(62) %.sroa.55.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(62) %.sroa.3.sroa.0, i64 62, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626.sroa.8)
  br label %bb.aa

bb.ad:                                            ; preds = %bb.ae, %bb.ap, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader12expect_empty.exit307, %bb.bm, %bb.bk, %bb.bg, %bb.be, %bb.bc, %bb.aw, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader12expect_empty.exit, %bb.au, %bb.as, %bb.ab, %bb.z, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64.sroa.8)
  br label %bb.bw

bb.ae:                                            ; preds = %bb.k
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.4217.0.copyload = load i8, ptr %.sroa.4217.0..sroa_idx, align 1
  %.sroa.5218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %.sroa.7220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %.sroa.7225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.7225.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.7220.0..sroa_idx, i64 18, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ck = load <2 x i16>, ptr %.sroa.5218.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i8 %i.ax, ptr %i.cj, align 8
  store i8 %.sroa.4217.0.copyload, ptr %.sroa.4222.0..sroa_idx, align 1
  store <2 x i16> %i.ck, ptr %.sroa.5223.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.af:                                            ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !range !304, !noundef !5 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.co = load i16, ptr %i.cn, align 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.549.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB4_6RandomNtNtB6_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.cp = load i8, ptr %i.u, align 8, !range !4, !noundef !5
  %i.cq = trunc nuw i8 %i.cp to i1
  %.sroa.4632.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %.sroa.5633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 13 ; 2 uses
  %.sroa.4632.0.copyload = load i32, ptr %.sroa.4632.0..sroa_idx.a, align 1 ; 3 uses
  br i1 %i.cq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0631.0.copyload = load i8, ptr %i.cr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.549.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5633.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.5636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5636.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.549.sroa.8, i64 19, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0631.0.copyload, ptr %i.cs, align 8
  %.sroa.4635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i32 %.sroa.4632.0.copyload, ptr %.sroa.4635.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.549.sroa.8)
  br label %bb.ap

bb.ah:                                            ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.0625.0.copyload = load i64, ptr %i.ct, align 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.549.sroa.8, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.5633.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.4534, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.549.sroa.8, i64 20, i1 false)
  store i64 %.sroa.0625.0.copyload, ptr %i.v, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %.sroa.4632.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4534.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.549.sroa.8, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.549.sroa.8)
  %i.cu = load i128, ptr %i.v, align 8
  %i.cv = xor i128 %i.cu, -146586874009152049272879457959727521329
  %i.cw = getelementptr i8, ptr %i.v, i64 16
  %i.cx = load i128, ptr %i.cw, align 8
  %i.cy = xor i128 %i.cx, -132654569078305155925981863284619238718
  %i.cz = or i128 %i.cv, %i.cy
  %i.da = icmp ne i128 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.063.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs13_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18ServerHelloPayloadNtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 86
  %i.de = load i16, ptr %i.dd, align 2, !range !242, !noundef !5
  %i.df = icmp eq i16 %i.de, -1
  br i1 %i.df, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.653.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvXsZ_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_17HelloRetryRequestNtNtB7_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.dg = load i64, ptr %i.t, align 8, !range !8, !noundef !5 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -2
  %i.di = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0639.0.copyload = load i32, ptr %i.di, align 8 ; 2 uses
  %.sroa.4640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.653.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4640.0..sroa_idx, i64 20, i1 false)
  br i1 %i.dh, label %bb.an, label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %.sroa.0646.0.copyload = load i64, ptr %i.s, align 8
  %.sroa.4647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4647.0.copyload = load i32, ptr %.sroa.4647.0..sroa_idx, align 8
  %.sroa.5648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.063.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5648.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.5651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5651.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.063.sroa.8, i64 12, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0646.0.copyload, ptr %i.dj, align 8
  %.sroa.4650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.4647.0.copyload, ptr %.sroa.4650.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.063.sroa.8)
  br label %bb.ap

bb.al:                                            ; preds = %bb.ai
  %.sroa.0232.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(74) %.sroa.063.sroa.8, ptr noundef nonnull align 4 dereferenceable(74) %.sroa.0232.sroa.5.0..sroa_idx, i64 74, i1 false)
  %.sroa.5234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %.sroa.5234.0.copyload = load i64, ptr %.sroa.5234.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(74) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(74) %.sroa.063.sroa.8, i64 74, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.063.sroa.8)
  %.sroa.572.88.insert.ext = zext i16 %i.co to i64
  %.sroa.572.88.insert.mask = and i64 %.sroa.5234.0.copyload, -65536
  %.sroa.572.88.insert.insert = or disjoint i64 %.sroa.572.88.insert.mask, %.sroa.572.88.insert.ext
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.070.sroa.4, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.4534, i64 20, i1 false)
  %i.dk = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.572.88.insert.insert, i64 0
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.sroa.25.sroa.25.sroa.0.1.in.in = phi i64 [ %i.dg, %bb.ao ], [ %.sroa.0625.0.copyload, %bb.al ] ; 3 uses
  %.sroa.66.1 = phi i32 [ %.sroa.8231.0.copyload, %bb.ao ], [ undef, %bb.al ]
  %.sroa.65.1 = phi i16 [ %i.co, %bb.ao ], [ undef, %bb.al ]
  %.sroa.62.1 = phi i16 [ %.sroa.5228.sroa.4.0.copyload, %bb.ao ], [ %i.cm, %bb.al ]
  %.sroa.46.1 = phi i32 [ %.sroa.0639.0.copyload, %bb.ao ], [ %.sroa.4632.0.copyload, %bb.al ]
  %storemerge.a = phi i64 [ -9223372036854775805, %bb.ao ], [ -9223372036854775806, %bb.al ]
  %4 = phi <2 x i64> [ %i.dm, %bb.ao ], [ %i.dk, %bb.al ]
  %.sroa.25.sroa.0.1 = trunc i64 %.sroa.25.sroa.25.sroa.0.1.in.in to i8
  %.sroa.25.sroa.23.1.in = lshr i64 %.sroa.25.sroa.25.sroa.0.1.in.in, 8
  %.sroa.25.sroa.23.1 = trunc i64 %.sroa.25.sroa.23.1.in to i8
  %.sroa.25.sroa.25.sroa.0.1.in = and i64 %.sroa.25.sroa.25.sroa.0.1.in.in, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aa

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.4642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4642.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.653.sroa.7, i64 20, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0639.0.copyload, ptr %i.dl, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.653.sroa.7)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %.sroa.5228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(54) %.sroa.359.sroa.0, ptr noundef nonnull align 8 dereferenceable(54) %.sroa.5228.0..sroa_idx, i64 54, i1 false)
  %.sroa.5228.sroa.4.0..sroa.5228.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 86
  %.sroa.5228.sroa.4.0.copyload = load i16, ptr %.sroa.5228.sroa.4.0..sroa.5228.0..sroa_idx.sroa_idx, align 2
  %.sroa.5228.sroa.5.0..sroa.5228.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.dm = load <2 x i64>, ptr %.sroa.5228.sroa.5.0..sroa.5228.0..sroa_idx.sroa_idx, align 8
  %.sroa.5228.sroa.7.0..sroa.5228.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5228.sroa.7.0..sroa.5228.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.8231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 124
  %.sroa.8231.0.copyload = load i32, ptr %.sroa.8231.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.653.sroa.7, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.653.sroa.7)
  %.sroa.55.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.070.sroa.4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(54) %.sroa.55.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(54) %.sroa.359.sroa.0, i64 54, i1 false)
  br label %bb.am

bb.ap:                                            ; preds = %bb.ak, %bb.an, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ad

bb.aq:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs1E_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23NewSessionTicketPayloadNtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.dn = load i8, ptr %i.j, align 8, !range !302, !noundef !5 ; 2 uses
  %.not291 = icmp eq i8 %i.dn, -1
  br i1 %.not291, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6125.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs1H_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_28NewSessionTicketPayloadTls13NtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.do = load i64, ptr %i.k, align 8, !range !7, !noundef !5 ; 4 uses
  %i.dp = icmp eq i64 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0708.0.copyload = load i32, ptr %i.dq, align 8 ; 2 uses
  %.sroa.4709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6125.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4709.0..sroa_idx, i64 20, i1 false)
  br i1 %i.dp, label %bb.au, label %bb.av

bb.as:                                            ; preds = %bb.aq
  %.sroa.4260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4265.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4260.0..sroa_idx, i64 7, i1 false)
  %.sroa.5261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5261.0.copyload = load ptr, ptr %.sroa.5261.0..sroa_idx, align 8
  %.sroa.6262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load <2 x i32>, ptr %.sroa.6262.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i8 %i.dn, ptr %i.dr, align 8
  store ptr %.sroa.5261.0.copyload, ptr %.sroa.5266.0..sroa_idx, align 8
  store <2 x i32> %i.ds, ptr %.sroa.6267.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.at:                                            ; preds = %bb.aq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dw = load i32, ptr %i.dv, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dx = ptrtoint ptr %i.du to i64               ; 3 uses
  %.sroa.25.sroa.0.0.extract.trunc = trunc i64 %i.dx to i8
  %.sroa.25.sroa.23.0.extract.shift = lshr i64 %i.dx, 8
  %.sroa.25.sroa.23.0.extract.trunc = trunc i64 %.sroa.25.sroa.23.0.extract.shift to i8
  %.sroa.25.sroa.25.0.extract.shift = and i64 %i.dx, -65536
  br label %bb.aa

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.4711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4711.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6125.sroa.7, i64 20, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0708.0.copyload, ptr %i.dy, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6125.sroa.7)
  br label %bb.ad

bb.av:                                            ; preds = %bb.ar
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3131, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5253.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6125.sroa.7, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6125.sroa.7)
  %.sroa.25.sroa.0.0.extract.trunc434 = trunc i64 %i.do to i8
  %.sroa.25.sroa.23.0.extract.shift455 = lshr i64 %i.do, 8
  %.sroa.25.sroa.23.0.extract.trunc456 = trunc i64 %.sroa.25.sroa.23.0.extract.shift455 to i8
  %.sroa.25.sroa.25.0.extract.shift489 = and i64 %i.do, -65536
  %.sroa.55.40..sroa_idx412 = getelementptr inbounds nuw i8, ptr %.sroa.070.sroa.4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.55.40..sroa_idx412, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3131, i64 16, i1 false)
  br label %bb.aa

_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader12expect_empty.exit: ; preds = %bb.m
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 15, ptr %i.dz, align 8
  %.sroa.5365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @16, ptr %.sroa.5365.0..sroa_idx, align 8
  %.sroa.6366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 14, ptr %.sroa.6366.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.aw:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6152, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6152)
  br label %bb.ad

bb.ax:                                            ; preds = %bb.o
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.8154.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.8154.0..sroa_idx155, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5271.0..sroa_idx, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.bd, ptr %i.h, align 8
  %.sroa.6152.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6152.0..sroa_idx153, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6152, i64 24, i1 false)
  %i.eb = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 200)
          to label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit unwind label %bb.ay ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.h) #22
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.ay
  resume { ptr, i32 } %i.ec

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE3newBK_.exit: ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.eb, ptr noundef nonnull align 8 dereferenceable(200) %i.h, i64 200, i1 false)
  %i.ee = ptrtoint ptr %i.eb to i64               ; 3 uses
  %.sroa.25.sroa.0.0.extract.trunc432 = trunc i64 %i.ee to i8
  %.sroa.25.sroa.23.0.extract.shift451 = lshr i64 %i.ee, 8
  %.sroa.25.sroa.23.0.extract.trunc452 = trunc i64 %.sroa.25.sroa.23.0.extract.shift451 to i8
  %.sroa.25.sroa.25.0.extract.shift485 = and i64 %i.ee, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6152)
  br label %bb.aa

bb.ba:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.583.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !305
  call void @_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtB5_5Codec4readB9_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z), !noalias !309
  %i.ef = load i64, ptr %i.a, align 8, !range !303, !noalias !305, !noundef !5
  %i.eg = trunc nuw i64 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload662 = load i64, ptr %i.eh, align 8, !noalias !310 ; 4 uses
  %.sroa.5.sroa.7.0..sroa_idx665 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.sroa.7.0.copyload666 = load i32, ptr %.sroa.5.sroa.7.0..sroa_idx665, align 8, !noalias !310 ; 2 uses
  %.sroa.5.sroa.8.0..sroa_idx668 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.8.0..sroa_idx668, i64 12, i1 false), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.583.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.8, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.8)
  br i1 %i.eg, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.675.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvXs1g_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23CertificatePayloadTls13NtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.ei = load i64, ptr %i.r, align 8, !range !7, !noundef !5 ; 4 uses
  %i.ej = icmp eq i64 %i.ei, -1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0654.0.copyload = load i32, ptr %i.ek, align 8 ; 2 uses
  %.sroa.4655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.675.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4655.0..sroa_idx, i64 20, i1 false)
  br i1 %i.ej, label %bb.be, label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %.sroa.5675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5675.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.583.sroa.8, i64 12, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.0.0.copyload662, ptr %i.el, align 8
  %.sroa.4674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.sroa.7.0.copyload666, ptr %.sroa.4674.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.583.sroa.8)
  br label %bb.ad

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.583.sroa.8, i64 12, i1 false)
  %.sroa.25.sroa.0.0.extract.trunc444 = trunc i64 %.sroa.5.sroa.0.0.copyload662 to i8
  %.sroa.25.sroa.23.0.extract.shift475 = lshr i64 %.sroa.5.sroa.0.0.copyload662, 8
  %.sroa.25.sroa.23.0.extract.trunc476 = trunc i64 %.sroa.25.sroa.23.0.extract.shift475 to i8
  %.sroa.25.sroa.25.0.extract.shift509 = and i64 %.sroa.5.sroa.0.0.copyload662, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.583.sroa.8)
  br label %bb.aa

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.4657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4657.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.675.sroa.7, i64 20, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0654.0.copyload, ptr %i.em, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.sroa.7)
  br label %bb.ad

bb.bf:                                            ; preds = %bb.bb
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.381, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5237.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.675.sroa.7, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.sroa.7)
  %.sroa.25.sroa.0.0.extract.trunc435 = trunc i64 %i.ei to i8
  %.sroa.25.sroa.23.0.extract.shift457 = lshr i64 %i.ei, 8
  %.sroa.25.sroa.23.0.extract.trunc458 = trunc i64 %.sroa.25.sroa.23.0.extract.shift457 to i8
  %.sroa.25.sroa.25.0.extract.shift491 = and i64 %i.ei, -65536
  %.sroa.55.40..sroa_idx411 = getelementptr inbounds nuw i8, ptr %.sroa.070.sroa.4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.55.40..sroa_idx411, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.381, i64 16, i1 false)
  br label %bb.aa

bb.bg:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.4681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4681.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.686.sroa.7, i64 20, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0678.0.copyload, ptr %i.en, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.686.sroa.7)
  br label %bb.ad

bb.bh:                                            ; preds = %bb.q
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(54) %.sroa.392.sroa.0, ptr noundef nonnull align 8 dereferenceable(54) %.sroa.5240.0..sroa_idx, i64 54, i1 false)
  %.sroa.5240.sroa.4.0..sroa.5240.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 86
  %.sroa.5240.sroa.4.0.copyload = load i16, ptr %.sroa.5240.sroa.4.0..sroa.5240.0..sroa_idx.sroa_idx, align 2
  %.sroa.5240.sroa.5.0..sroa.5240.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.eo = load <2 x i64>, ptr %.sroa.5240.sroa.5.0..sroa.5240.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.686.sroa.7, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.686.sroa.7)
  %.sroa.25.sroa.0.0.extract.trunc436 = trunc i64 %i.bh to i8
  %.sroa.25.sroa.23.0.extract.shift459 = lshr i64 %i.bh, 8
  %.sroa.25.sroa.23.0.extract.trunc460 = trunc i64 %.sroa.25.sroa.23.0.extract.shift459 to i8
  %.sroa.25.sroa.25.0.extract.shift493 = and i64 %i.bh, -65536
  %.sroa.55.40..sroa_idx408 = getelementptr inbounds nuw i8, ptr %.sroa.070.sroa.4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(54) %.sroa.55.40..sroa_idx408, ptr noundef nonnull align 8 dereferenceable(54) %.sroa.392.sroa.0, i64 54, i1 false)
  br label %bb.aa

bb.bi:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6104.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvXs1A_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_25CertificateRequestPayloadNtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.ep = load i64, ptr %i.n, align 8, !range !7, !noundef !5 ; 4 uses
  %i.eq = icmp eq i64 %i.ep, -1
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0690.0.copyload = load i32, ptr %i.er, align 8 ; 2 uses
  %.sroa.4691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6104.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4691.0..sroa_idx, i64 20, i1 false)
  br i1 %i.eq, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.695.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs1C_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_30CertificateRequestPayloadTls13NtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.es = load i64, ptr %i.o, align 8, !range !7, !noundef !5 ; 4 uses
  %i.et = icmp eq i64 %i.es, -1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0684.0.copyload = load i32, ptr %i.eu, align 8 ; 2 uses
  %.sroa.4685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.695.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4685.0..sroa_idx, i64 20, i1 false)
  br i1 %i.et, label %bb.bm, label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.4693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4693.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6104.sroa.7, i64 20, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0690.0.copyload, ptr %i.ev, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6104.sroa.7)
  br label %bb.ad

bb.bl:                                            ; preds = %bb.bi
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3110, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5246.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6104.sroa.7, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6104.sroa.7)
  %.sroa.25.sroa.0.0.extract.trunc437 = trunc i64 %i.ep to i8
  %.sroa.25.sroa.23.0.extract.shift461 = lshr i64 %i.ep, 8
  %.sroa.25.sroa.23.0.extract.trunc462 = trunc i64 %.sroa.25.sroa.23.0.extract.shift461 to i8
  %.sroa.25.sroa.25.0.extract.shift495 = and i64 %i.ep, -65536
  %.sroa.55.40..sroa_idx410 = getelementptr inbounds nuw i8, ptr %.sroa.070.sroa.4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.55.40..sroa_idx410, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3110, i64 40, i1 false)
  br label %bb.aa

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.4687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4687.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.695.sroa.7, i64 20, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0684.0.copyload, ptr %i.ew, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.695.sroa.7)
  br label %bb.ad

bb.bn:                                            ; preds = %bb.bj
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(54) %.sroa.3101.sroa.0, ptr noundef nonnull align 8 dereferenceable(54) %.sroa.5243.0..sroa_idx, i64 54, i1 false)
  %.sroa.5243.sroa.4.0..sroa.5243.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 86
  %.sroa.5243.sroa.4.0.copyload = load i16, ptr %.sroa.5243.sroa.4.0..sroa.5243.0..sroa_idx.sroa_idx, align 2
  %.sroa.5243.sroa.5.0..sroa.5243.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.5243.sroa.5.0.copyload = load i64, ptr %.sroa.5243.sroa.5.0..sroa.5243.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.695.sroa.7, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.695.sroa.7)
  %.sroa.25.sroa.0.0.extract.trunc438 = trunc i64 %i.es to i8
  %.sroa.25.sroa.23.0.extract.shift463 = lshr i64 %i.es, 8
  %.sroa.25.sroa.23.0.extract.trunc464 = trunc i64 %.sroa.25.sroa.23.0.extract.shift463 to i8
  %.sroa.25.sroa.25.0.extract.shift497 = and i64 %i.es, -65536
  %.sroa.55.40..sroa_idx409 = getelementptr inbounds nuw i8, ptr %.sroa.070.sroa.4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(54) %.sroa.55.40..sroa_idx409, ptr noundef nonnull align 8 dereferenceable(54) %.sroa.3101.sroa.0, i64 54, i1 false)
  %i.ex = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.5243.sroa.5.0.copyload, i64 0
  br label %bb.aa

_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader12expect_empty.exit307: ; preds = %bb.s
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 15, ptr %i.ey, align 8
  %.sroa.5345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @18, ptr %.sroa.5345.0..sroa_idx, align 8
  %.sroa.6346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 15, ptr %.sroa.6346.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.bo:                                            ; preds = %bb.t
  %.sroa.4705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4705.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6119.sroa.7, i64 20, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0702.0.copyload, ptr %i.ez, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6119.sroa.7)
  br label %bb.ad

bb.bp:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6119.sroa.7, i64 20, i1 false)
  %.sroa.25.sroa.0.0.extract.trunc439 = trunc i64 %i.bo to i8
  %.sroa.25.sroa.23.0.extract.shift465 = lshr i64 %i.bo, 8
  %.sroa.25.sroa.23.0.extract.trunc466 = trunc i64 %.sroa.25.sroa.23.0.extract.shift465 to i8
  %.sroa.25.sroa.25.0.extract.shift499 = and i64 %i.bo, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6119.sroa.7)
  br label %bb.aa

bb.bq:                                            ; preds = %bb.w
  %.sroa.5723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5723.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5171.sroa.8, i64 12, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0718.0.copyload, ptr %i.fa, align 8
  %.sroa.4722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.4719.0.copyload, ptr %.sroa.4722.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5171.sroa.8)
  br label %bb.ad

bb.br:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5171.sroa.8, i64 12, i1 false)
  %.sroa.25.sroa.0.0.extract.trunc445 = trunc i64 %.sroa.0718.0.copyload to i8
  %.sroa.25.sroa.23.0.extract.shift477 = lshr i64 %.sroa.0718.0.copyload, 8
  %.sroa.25.sroa.23.0.extract.trunc478 = trunc i64 %.sroa.25.sroa.23.0.extract.shift477 to i8
  %.sroa.25.sroa.25.0.extract.shift511 = and i64 %.sroa.0718.0.copyload, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5171.sroa.8)
  br label %bb.aa

bb.bs:                                            ; preds = %bb.x
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %.sroa.6283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.6283.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.6279.0..sroa_idx, i64 21, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bu, ptr %i.fb, align 8
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bw, ptr %.sroa.4281.0..sroa_idx, align 1
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.by, ptr %.sroa.5282.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.bt:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aa

bb.bu:                                            ; preds = %bb.y
  %.sroa.4699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4699.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6113.sroa.7, i64 20, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0696.0.copyload, ptr %i.fc, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6113.sroa.7)
  br label %bb.ad

bb.bv:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.070.sroa.4, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6113.sroa.7, i64 20, i1 false)
  %.sroa.25.sroa.0.0.extract.trunc440 = trunc i64 %i.bz to i8
  %.sroa.25.sroa.23.0.extract.shift467 = lshr i64 %i.bz, 8
  %.sroa.25.sroa.23.0.extract.trunc468 = trunc i64 %.sroa.25.sroa.23.0.extract.shift467 to i8
  %.sroa.25.sroa.25.0.extract.shift501 = and i64 %i.bz, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6113.sroa.7)
  br label %bb.aa

bb.bw:                                            ; preds = %bb.ad, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bz

bb.bx:                                            ; preds = %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 15, ptr %i.fd, align 8
  %.sroa.5369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @20, ptr %.sroa.5369.0..sroa_idx, align 8
  %.sroa.6370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 23, ptr %.sroa.6370.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16HandshakePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtBK_23HandshakeMessagePayload12read_version0EBO_.exit

bb.by:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtBK_23HandshakeMessagePayload12read_version0EBO_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtBK_23HandshakeMessagePayload12read_version0EBO_.exit: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.b, %bb.bw, %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtBK_23HandshakeMessagePayload12read_version0EBO_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayload14payload_encode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [2 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load i64, ptr %0, align 8, !range !85, !alias.scope !311, !noundef !5 ; 3 uses
  %i.i = icmp ne i64 %i.h, -9223372036854775807
  tail call void @llvm.assume(i1 %i.i)
  %i.j = xor i64 %i.h, -9223372036854775808
  %i.k = icmp slt i64 %i.h, 0
  %i.l = select i1 %i.k, i64 %i.j, i64 1          ; 3 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.v
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.f
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %bb.i
    i64 9, label %bb.i
    i64 10, label %bb.j
    i64 11, label %bb.k
    i64 12, label %bb.l
    i64 13, label %bb.m
    i64 14, label %bb.n
    i64 15, label %bb.n
    i64 16, label %bb.o
    i64 17, label %bb.p
    i64 18, label %bb.q
    i64 19, label %bb.r
    i64 20, label %bb.s
    i64 21, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  br label %bb.v

bb.f:                                             ; preds = %bb.a, %bb.a
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  br label %bb.v

bb.i:                                             ; preds = %bb.a, %bb.a
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br label %bb.v

bb.n:                                             ; preds = %bb.a, %bb.a
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i8, ptr %i.m, align 8, !range !298, !alias.scope !311, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !311
  br label %bb.v

bb.u:                                             ; preds = %bb.aq
  br i1 %.sroa.01.2, label %bb.ax, label %common.resume

.split.thread:                                    ; preds = %_RNvMs1M_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16HandshakePayload6encode.exit, %bb.w, %bb.v
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.20.0.i.i = phi i8 [ %i.p, %bb.t ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ], [ undef, %bb.p ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %bb.a ]
  %.sroa.0.0.i.i = phi i8 [ %i.n, %bb.t ], [ 1, %bb.c ], [ 2, %bb.d ], [ 6, %bb.e ], [ 8, %bb.f ], [ 18, %bb.g ], [ 9, %bb.h ], [ 10, %bb.i ], [ 12, %bb.j ], [ 11, %bb.k ], [ 5, %bb.l ], [ 13, %bb.m ], [ 4, %bb.n ], [ 7, %bb.o ], [ 17, %bb.p ], [ 14, %bb.q ], [ 16, %bb.r ], [ 19, %bb.s ], [ 0, %bb.a ] ; 2 uses
  %i.q = icmp eq i8 %.sroa.0.0.i.i, 6             ; 2 uses
  %spec.select.i = select i1 %i.q, i8 undef, i8 %.sroa.20.0.i.i
  %spec.select3.i = select i1 %i.q, i8 2, i8 %.sroa.0.0.i.i
  store i8 %spec.select3.i, ptr %i.g, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %spec.select.i, ptr %i.r, align 1
  invoke void @_RNvXsb_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_13HandshakeTypeNtNtNtB7_4msgs5codec5Codec6encode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.w unwind label %.split.thread

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 -1, ptr %i.s, align 8
  store i8 10, ptr %i.e, align 8
  invoke void @_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB5_20LengthPrefixedBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.x unwind label %.split.thread

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  switch i64 %i.l, label %bb.y [
    i64 2, label %bb.ao
    i64 3, label %bb.ap
  ]

bb.y:                                             ; preds = %bb.x
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !align !297, !noundef !5 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  switch i64 %i.l, label %bb.z [
    i64 0, label %_RNvMs1M_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16HandshakePayload6encode.exit
    i64 1, label %bb.aa
    i64 20, label %.invoke
    i64 21, label %bb.an
    i64 4, label %bb.ab
    i64 5, label %bb.ac
    i64 6, label %bb.ad
    i64 7, label %bb.ae
    i64 8, label %bb.af
    i64 9, label %bb.ag
    i64 10, label %bb.ah
    i64 11, label %_RNvMs1M_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16HandshakePayload6encode.exit
    i64 12, label %_RNvMs1M_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16HandshakePayload6encode.exit
    i64 13, label %.invoke
    i64 14, label %bb.ai
    i64 15, label %bb.aj
    i64 16, label %bb.ak
    i64 17, label %bb.al
    i64 18, label %.invoke
    i64 19, label %bb.am
  ]

bb.z:                                             ; preds = %bb.y
end_hunk_0
