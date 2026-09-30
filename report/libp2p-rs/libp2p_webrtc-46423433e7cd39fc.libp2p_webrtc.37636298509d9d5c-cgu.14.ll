Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.14?download=true
inline.NumInlined: 1541
inline.NumDeleted: 739
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXsg_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_16TransportLayerCcNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2z_5bytes5BytesINtNtB2x_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc:bb.a
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.088 = alloca [48 x i8], align 8          ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.648 = alloca [32 x i8], align 8          ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  %i.p = alloca [40 x i8], align 8                ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 14 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 17 uses
  %i.u = alloca [24 x i8], align 8                ; 13 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 4 uses
  %i.y = alloca [40 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 11 uses
  %i.aa = alloca [40 x i8], align 8               ; 4 uses
  %i.ab = tail call noundef i64 @_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainNtNtB8_5bytes5BytesINtNtB6_4take4TakeQRShEENtNtB6_8buf_impl3Buf9remainingCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  br i1 %i.ac, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RINvXs2_NtCseeQwDhuaSHd_4rtcp6headerNtB6_6HeaderNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB1O_5bytes5BytesINtNtB1M_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  %i.ad = load i64, ptr %i.z, align 8, !range !34, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.ad, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.096.0.copyload = load i16, ptr %i.ae, align 8 ; 2 uses
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  %.sroa.497.0.copyload = load i8, ptr %.sroa.497.0..sroa_idx, align 2 ; 2 uses
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 11
  %.sroa.598.0.copyload = load i8, ptr %.sroa.598.0..sroa_idx, align 1 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 -9223372036854775744, ptr %i.aa, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 -1, ptr %0, align 8
  br label %bb.az

bb.d:                                             ; preds = %bb.b
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.sroa.7113.0.copyload = load i8, ptr %.sroa.7113.0..sroa_idx, align 4
  %.sroa.8114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  %.sroa.8114.0.copyload = load i8, ptr %.sroa.8114.0..sroa_idx, align 1
  %.sroa.9115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %.sroa.9122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.9122.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.9115.0..sroa_idx, i64 26, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ag, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.096.0.copyload, ptr %.sroa.4117.0..sroa_idx, align 8
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.497.0.copyload, ptr %.sroa.5118.0..sroa_idx, align 2
  %.sroa.6119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %.sroa.598.0.copyload, ptr %.sroa.6119.0..sroa_idx, align 1
  %.sroa.7120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.7113.0.copyload, ptr %.sroa.7120.0..sroa_idx, align 4
  %.sroa.8121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.8114.0.copyload, ptr %.sroa.8121.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  br label %bb.az

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ah = add i16 %.sroa.096.0.copyload, 1        ; 3 uses
  %i.ai = zext i16 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2                ; 3 uses
  %i.ak = icmp ult i16 %i.ah, 5
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = icmp ult i64 %i.ab, %i.aj
  br i1 %i.al, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 -9223372036854775744, ptr %i.y, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 -1, ptr %0, align 8
  br label %bb.az

bb.h:                                             ; preds = %bb.f
  %i.an = icmp eq i8 %.sroa.598.0.copyload, -51
  %i.ao = icmp eq i8 %.sroa.497.0.copyload, 15
  %or.cond = and i1 %i.ao, %i.an
  br i1 %or.cond, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 -9223372036854775744, ptr %i.x, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 -1, ptr %0, align 8
  br label %bb.az

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 -9223372036854775742, ptr %i.w, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 -1, ptr %0, align 8
  br label %bb.az

bb.k:                                             ; preds = %bb.h
  %i.ar = tail call noundef i32 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u32Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  %i.as = tail call noundef i32 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u32Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  %i.at = tail call noundef i16 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u16Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  %i.au = tail call noundef i16 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u16Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1544
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 3, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1544
  %i.av = load i64, ptr %i.f, align 8, !range !30, !noalias !1544, !noundef !10
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !35, !noalias !1544, !noundef !10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.l, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit, !prof !32

bb.l:                                             ; preds = %bb.k
  %i.ba = load i64, ptr %i.az, align 8, !noalias !1544
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #40, !noalias !1544
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.k
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !1544, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1544
  store i64 %i.ay, ptr %i.v, align 8, !alias.scope !1544
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !1544
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  store i64 3, ptr %i.bd, align 8, !alias.scope !1544
  %i.be = invoke noundef i8 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf6get_u8Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.n unwind label %bb.m

.body237:                                         ; preds = %bb.db, %bb.m, %.body
  %.pn193 = phi { ptr, i32 } [ %.pn191, %.body ], [ %i.bf, %bb.m ], [ %i.lu, %bb.db ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #35
          to label %common.resume unwind label %bb.cx

bb.m:                                             ; preds = %.invoke395, %.invoke, %bb.dc, %bb.w, %bb.r, %bb.o, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body237

bb.n:                                             ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %i.bg = load i64, ptr %i.bd, align 8, !noundef !10
  %.not179 = icmp eq i64 %i.bg, 0
  br i1 %.not179, label %.invoke395, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %i.bc, align 8, !nonnull !10, !noundef !10
  store i8 %i.be, ptr %i.bh, align 1
  %i.bi = invoke noundef i8 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf6get_u8Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.q unwind label %bb.m

bb.p:                                             ; preds = %bb.bc
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bj = load i64, ptr %i.bd, align 8, !noundef !10 ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %bb.r, label %.invoke395

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.bc, align 8, !nonnull !10, !noundef !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bi, ptr %i.bm, align 1
  %i.bn = invoke noundef i8 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf6get_u8Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.s unwind label %bb.m

bb.s:                                             ; preds = %bb.r
  %i.bo = load i64, ptr %i.bd, align 8, !noundef !10 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, 2
  br i1 %i.bp, label %bb.t, label %.invoke395

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %i.bc, align 8, !nonnull !10, !noundef !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i8 %i.bn, ptr %i.br, align 1
  %i.bs = load ptr, ptr %i.bc, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.bt = load i64, ptr %i.bd, align 8, !noundef !10 ; 4 uses
  switch i64 %i.bt, label %bb.u [
    i64 0, label %.invoke
    i64 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bu = icmp samesign ugt i64 %i.bt, 2
  br i1 %i.bu, label %bb.w, label %.invoke

bb.v:                                             ; preds = %bb.t
  br label %.invoke

.invoke:                                          ; preds = %bb.u, %bb.t, %bb.v
  %i.bv = phi i64 [ %i.bt, %bb.t ], [ %i.bt, %bb.v ], [ 2, %bb.u ] ; 2 uses
  %i.bw = phi ptr [ @76, %bb.t ], [ @77, %bb.v ], [ @78, %bb.u ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw) #38
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

.invoke395:                                       ; preds = %bb.s, %bb.q, %bb.n
  %i.bx = phi i64 [ 1, %bb.q ], [ 0, %bb.n ], [ 2, %bb.s ]
  %i.by = phi i64 [ %i.bj, %bb.q ], [ 0, %bb.n ], [ %i.bo, %bb.s ]
  %i.bz = phi ptr [ @10, %bb.q ], [ @9, %bb.n ], [ @11, %bb.s ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bx, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz) #40
          to label %.cont396 unwind label %bb.m

.cont396:                                         ; preds = %.invoke395
  unreachable

bb.w:                                             ; preds = %bb.u
  %2 = load i8, ptr %i.bs, align 1, !alias.scope !1545, !noundef !10
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 16
  %5 = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %6 = load i8, ptr %5, align 1, !alias.scope !1545, !noundef !10
  %i.ca = zext i8 %6 to i32
  %i.cb = shl nuw nsw i32 %i.ca, 8
  %7 = or disjoint i32 %i.cb, %4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !1545, !noundef !10
  %i.ce = zext i8 %i.cd to i32
  %i.cf = or disjoint i32 %7, %i.ce
  %i.cg = invoke noundef i8 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf6get_u8Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.x unwind label %bb.m

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store i64 0, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 8 uses
  store i64 0, ptr %i.ck, align 8
  %.not318 = icmp eq i16 %i.au, 0
  br i1 %.not318, label %._crit_edge316, label %.lr.ph311

.lr.ph311:                                        ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 22 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 21 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.5.0..sroa_idx.i219 = getelementptr inbounds nuw i8, ptr %i.n, i64 34
  %i.cq = getelementptr inbounds nuw i8, ptr %i.o, i64 26
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %.not183412.not = icmp eq i16 %i.ah, 5
  br i1 %.not183412.not, label %._crit_edge415, label %.lr.ph414

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4KPtkQIfQGm_13libp2p_webrtc.exit235
  %.pre347 = load ptr, ptr %i.cj, align 8         ; 2 uses
  %.pre348 = load i64, ptr %i.ck, align 8         ; 2 uses
  %.idx320 = shl nuw nsw i64 %.pre348, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre347, i64 %.idx320
  %i.cx = icmp eq i64 %.pre348, 0
  br i1 %i.cx, label %._crit_edge316, label %.lr.ph315

.lr.ph315:                                        ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4KPtkQIfQGm_13libp2p_webrtc.exit235
  %i.de = add nuw nsw i64 %i.ej, 2                ; 2 uses
  %.not183 = icmp samesign ult i64 %i.de, %i.aj
  br i1 %.not183, label %.lr.ph414, label %._crit_edge415

bb.z:                                             ; preds = %.lr.ph315, %bb.aj
  %.sroa.014.1313 = phi i64 [ %i.ej, %.lr.ph315 ], [ %.sroa.014.3, %bb.aj ] ; 3 uses
  %.sroa.057.0312 = phi ptr [ %.pre347, %.lr.ph315 ], [ %i.df, %bb.aj ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.057.0312, i64 16 ; 2 uses
  %.not180 = icmp ult i64 %.sroa.014.1313, %i.aj
  br i1 %.not180, label %bb.aa, label %bb.ab

._crit_edge316:                                   ; preds = %bb.aj, %bb.x, %._crit_edge
  %i.dg = invoke noundef zeroext i1 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf13has_remainingCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %1)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.057.0312, i64 8 ; 4 uses
  %i.di = load i16, ptr %i.dh, align 8, !range !36, !noundef !10 ; 2 uses
  %i.dj = icmp eq i16 %i.di, 1
  br i1 %i.dj, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775744, ptr %i.k, align 8
  invoke void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ai, %bb.aa
  %i.dk = phi i16 [ %.pr, %bb.ai ], [ %i.di, %bb.aa ]
  %.sroa.014.2 = phi i64 [ %i.du, %bb.ai ], [ %.sroa.014.1313, %bb.aa ] ; 2 uses
  %i.dl = icmp eq i16 %i.dk, 2
  br i1 %i.dl, label %bb.ak, label %bb.aj

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %1, ptr %i.j, align 8
  store i64 1, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dm = invoke noundef i64 @_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf4takeINtB4_4TakeQINtNtB6_5chain5ChainNtNtB8_5bytes5BytesIBC_QRShEEENtNtB6_8buf_impl3Buf9remainingCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %.noexc198 unwind label %.loopexit

.noexc198:                                        ; preds = %bb.ad
  switch i64 %i.dm, label %bb.ae [
    i64 1, label %bb.af
    i64 2, label %bb.ag
  ]

bb.ae:                                            ; preds = %.noexc198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1546
  store i64 -9223372036854775729, ptr %i.e, align 8, !noalias !1546
  invoke void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %.loopexit

bb.af:                                            ; preds = %.noexc198
  %i.dn = invoke noundef i8 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB7_5chain5ChainNtNtB9_5bytes5BytesIB3_QRShEEENtNtB7_8buf_impl3Buf6get_u8Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.noexc200 unwind label %.loopexit

.noexc200:                                        ; preds = %bb.af
  %i.do = zext i8 %i.dn to i64
  br label %_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread

bb.ag:                                            ; preds = %.noexc198
  %i.dp = invoke noundef i16 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB7_5chain5ChainNtNtB9_5bytes5BytesIB3_QRShEEENtNtB7_8buf_impl3Buf7get_i16Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.noexc201 unwind label %.loopexit

.noexc201:                                        ; preds = %bb.ag
  %i.dq = sext i16 %i.dp to i64
  br label %_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread

_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread: ; preds = %.noexc200, %.noexc201
  %.sroa.01.0.i = phi i16 [ 1, %.noexc200 ], [ 2, %.noexc201 ]
  %.sroa.0.0.in.i = phi i64 [ %i.do, %.noexc200 ], [ %i.dq, %.noexc201 ]
  %.sroa.0.0.i = mul nsw i64 %.sroa.0.0.in.i, 250
  br label %bb.ai

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.body223
  %.pn189 = phi { ptr, i32 } [ %.pn187, %.body223 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit263, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp264, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_cc9RecvDeltaEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #35
          to label %.body unwind label %bb.cx

.loopexit:                                        ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ak, %bb.al, %bb.am, %bb.an
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4KPtkQIfQGm_13libp2p_webrtc.exit

.loopexit.split-lp.loopexit:                      ; preds = %bb.cy, %.lr.ph414
  %lpad.loopexit263 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4KPtkQIfQGm_13libp2p_webrtc.exit

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.cl, %._crit_edge415, %bb.ay, %bb.ax, %bb.ab, %._crit_edge316
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4KPtkQIfQGm_13libp2p_webrtc.exit

_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1546
  %.pr239 = load i64, ptr %i.i, align 8           ; 2 uses
  %.not181 = icmp eq i64 %.pr239, -1
  %.pre349 = load i64, ptr %i.cz, align 8         ; 2 uses
  %.pre350 = load i16, ptr %i.da, align 8         ; 2 uses
  br i1 %.not181, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %.sroa.6158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6158.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6154.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pr239, ptr %i.dr, align 8
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre349, ptr %.sroa.4156.0..sroa_idx, align 8
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.pre350, ptr %.sroa.5157.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ar

bb.ai:                                            ; preds = %_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread, %_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %i.ds = phi i16 [ %.sroa.01.0.i, %_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread ], [ %.pre350, %_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit ]
  %i.dt = phi i64 [ %.sroa.0.0.i, %_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread ], [ %.pre349, %_RINvXsb_NtNtCseeQwDhuaSHd_4rtcp19transport_feedbacks18transport_layer_ccNtB6_9RecvDeltaNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQINtNtB2p_5chain5ChainNtNtB2r_5bytes5BytesIB2l_QRShEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.dt, ptr %.sroa.057.0312, align 8
  store i16 %i.ds, ptr %i.dh, align 8
  %i.du = add nuw nsw i64 %.sroa.014.1313, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pr = load i16, ptr %i.dh, align 8
  br label %bb.ac

bb.aj:                                            ; preds = %bb.ap, %bb.ac
  %.sroa.014.3 = phi i64 [ %i.ee, %bb.ap ], [ %.sroa.014.2, %bb.ac ]
  %i.dv = icmp eq ptr %i.df, %i.cw
  br i1 %i.dv, label %._crit_edge316, label %bb.z

bb.ak:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8
  store i64 2, ptr %i.db, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dw = invoke noundef i64 @_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf4takeINtB4_4TakeQINtNtB6_5chain5ChainNtNtB8_5bytes5BytesIBC_QRShEEENtNtB6_8buf_impl3Buf9remainingCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %.noexc205 unwind label %.loopexit
end_hunk_0
