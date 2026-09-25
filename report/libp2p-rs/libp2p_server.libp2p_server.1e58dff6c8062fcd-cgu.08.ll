Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.08?download=true
inline.NumInlined: 3352
inline.NumDeleted: 1955
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server:bb.a
  store i8 %.sroa.112.0.i.i, ptr %.sroa.16110.0..sroa_idx.i, align 1, !noalias !5967
  %.sroa.17111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17111.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17111.i, i64 16, i1 false), !noalias !5967
  %.sroa.18112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 160
  store i64 %.sroa.113.sroa.14.0.i.i, ptr %.sroa.18112.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.19113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 168
  store ptr %.sroa.113191.0.i.i, ptr %.sroa.19113.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.20114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 176
  store i64 %.sroa.118.0.i.i, ptr %.sroa.20114.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.21115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 184
  store ptr %.sroa.119.0.i.i, ptr %.sroa.21115.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.22116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 192
  store i64 %.sroa.120.sroa.0.0.insert.insert.i.i, ptr %.sroa.22116.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.23117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 200
  store ptr %.sroa.123.0.i.i, ptr %.sroa.23117.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.24118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 208
  store i64 %.sroa.124.0.i.i, ptr %.sroa.24118.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.25119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 216
  store i64 %.sroa.125.sroa.0.0.insert.insert.i.i, ptr %.sroa.25119.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.26120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 224
  store i16 %.sroa.128.0.i.i, ptr %.sroa.26120.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.27121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 226
  store i16 %.sroa.129.0.i.i, ptr %.sroa.27121.0..sroa_idx.i, align 2, !noalias !5967
  %.sroa.28122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 228
  store i16 %.sroa.130.0.i.i, ptr %.sroa.28122.0..sroa_idx.i, align 4, !noalias !5967
  %.sroa.29123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 230
  store i16 %.sroa.131.0.i.i, ptr %.sroa.29123.0..sroa_idx.i, align 2, !noalias !5967
  %.sroa.30124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 232
  store i64 %.sroa.132.0.i.i, ptr %.sroa.30124.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.31125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 240
  store i32 %.sroa.132207.0.i.i, ptr %.sroa.31125.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.32126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 244
  store i32 %.sroa.133.0.i.i, ptr %.sroa.32126.0..sroa_idx.i, align 4, !noalias !5967
  %.sroa.33127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 248
  store i32 %.sroa.134.0.i.i, ptr %.sroa.33127.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.34128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 252
  store i32 %.sroa.135.0.i.i, ptr %.sroa.34128.0..sroa_idx.i, align 4, !noalias !5967
  %.sroa.35129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 256
  store i32 %.sroa.136.0.i.i, ptr %.sroa.35129.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.37131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 264
  store <2 x i16> %i.bx, ptr %.sroa.37131.0..sroa_idx.i, align 8, !noalias !5967
  %.sroa.39133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 268
  store i32 %i.bz, ptr %.sroa.39133.0..sroa_idx.i, align 4, !noalias !5967
  %.sroa.40134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.no, i64 272
  store i8 %i.nl, ptr %.sroa.40134.0..sroa_idx.i, align 8, !noalias !5967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.097.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17111.i)
  %i.np = icmp eq i64 %i.bs, 0
  br i1 %i.np, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.c

bb.cl:                                            ; preds = %bb.cm
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !5967
  unreachable

bb.cm:                                            ; preds = %.body.i.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.0247.i, ptr %i.ar, align 8, !noalias !5966
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #22
          to label %bb.cn unwind label %bb.cl, !noalias !5967

bb.cn:                                            ; preds = %bb.cm
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.c, %bb.ck, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i
  store i64 %i.ah, ptr %i.ar, align 8, !noalias !5966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !5965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5966
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !13, !noundef !13
  %i.e = load i64, ptr %i.b, align 8, !noundef !13 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6087)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6088
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 4611686018427387904) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !6088
  %i.f = load i64, ptr %i.a, align 8, !range !22, !noalias !6088, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !23, !noalias !6088, !noundef !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !6088
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25, !noalias !6088
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !6088, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6088
  store i64 %i.i, ptr %0, align 8, !alias.scope !6087, !noalias !6089
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !6087, !noalias !6089
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !6087, !noalias !6089
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.p = shl nuw nsw i64 %i.e, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 %i.p, i1 false), !noalias !6087
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !6087, !noalias !6089
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.sroa.9.i = alloca [68 x i8], align 4 ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.1028.i = alloca [68 x i8], align 4       ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6141
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef range(i64 0, 82351536043346213) %i.p, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112), !noalias !6141
  %i.q = load i64, ptr %i.k, align 8, !range !22, !noalias !6141, !noundef !13
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !23, !noalias !6141, !noundef !13 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8, !noalias !6141
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #25, !noalias !6142
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !noalias !6141, !nonnull !13, !noundef !13 ; 4 uses
  %i.x = icmp ule i64 %i.p, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6141
  store i64 %i.t, ptr %i.l, align 8, !noalias !6141
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.w, ptr %i.y, align 8, !noalias !6141
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %i.p
  %i.ab = icmp eq i64 %i.t, 0
  br i1 %i.ab, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.0.i.sroa.9.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.9.i, i64 20
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.0.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %.sroa.0.i.sroa.9.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.9.i, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs4z_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.018.0148.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.at, %_RNvXs4z_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 19 uses
  %.sroa.7.0145.i = phi i64 [ 0, %.lr.ph.i ], [ %i.au, %_RNvXs4z_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 7 uses
  %.sroa.10.0144.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.ar, %_RNvXs4z_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.ar = add i64 %.sroa.10.0144.i, -1            ; 2 uses
  %i.as = icmp eq ptr %.sroa.018.0148.i, %i.aa
  br i1 %i.as, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.h, %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp.i:                             ; preds = %.invoke
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 112
  %i.au = add nuw nsw i64 %.sroa.7.0145.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1028.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6143)
  %i.av = load i64, ptr %.sroa.018.0148.i, align 8, !range !26, !alias.scope !6144, !noalias !6145, !noundef !13
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 32
  %2 = load i16, ptr %i.ax, align 8, !range !30, !alias.scope !6144, !noalias !6145, !noundef !13 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 34
  %4 = load i16, ptr %3, align 2, !alias.scope !6144, !noalias !6145 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6146)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !6147, !noalias !6148, !nonnull !13, !noundef !13
  %i.bb = load i64, ptr %i.ay, align 8, !alias.scope !6147, !noalias !6148, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6149
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.bb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !6142

.noexc.i:                                         ; preds = %bb.e
  %i.bc = load i64, ptr %i.j, align 8, !range !22, !noalias !6149, !noundef !13
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = load i64, ptr %i.ap, align 8, !range !23, !noalias !6149, !noundef !13 ; 4 uses
  br i1 %i.bd, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, !prof !20

bb.f:                                             ; preds = %.noexc.i
  %i.bf = load i64, ptr %i.aq, align 8, !noalias !6149
  br label %.invoke

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %.noexc.i
  %i.bg = load ptr, ptr %i.aq, align 8, !noalias !6149, !nonnull !13, !noundef !13 ; 3 uses
  %i.bh = icmp ule i64 %i.bb, %i.be
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6149
  %.not.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i, label %_RNvXs4z_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.ba, i64 range(i64 0, -9223372036854775808) %i.bb, i1 false), !noalias !6150
  br label %_RNvXs4z_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6154)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 52
  %i.bj = load i8, ptr %i.bi, align 4, !alias.scope !6155, !noalias !6156, !noundef !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 48
  %i.bl = load <2 x i16>, ptr %i.bk, align 8, !alias.scope !6155, !noalias !6156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6158)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !6159, !noalias !6160, !nonnull !13, !noundef !13
  %i.bp = load i64, ptr %i.bm, align 8, !alias.scope !6159, !noalias !6160, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6161
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.bp, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc13.i unwind label %.loopexit.i, !noalias !6142

.noexc13.i:                                       ; preds = %bb.h
  %i.bq = load i64, ptr %i.e, align 8, !range !22, !noalias !6161, !noundef !13
  %i.br = trunc nuw i64 %i.bq to i1
  %i.bs = load i64, ptr %i.ac, align 8, !range !23, !noalias !6161, !noundef !13 ; 3 uses
  br i1 %i.br, label %bb.i, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i, !prof !20

bb.i:                                             ; preds = %.noexc13.i
  %i.bt = load i64, ptr %i.ad, align 8, !noalias !6161
  br label %.invoke

.invoke:                                          ; preds = %bb.f, %bb.i
  %i.bu = phi i64 [ %i.bs, %bb.i ], [ %i.be, %bb.f ]
  %i.bv = phi i64 [ %i.bt, %bb.i ], [ %i.bf, %bb.f ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bu, i64 %i.bv) #25
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !6142

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i: ; preds = %.noexc13.i
  %i.bw = load ptr, ptr %i.ad, align 8, !noalias !6161, !nonnull !13, !noundef !13 ; 2 uses
  %i.bx = icmp ule i64 %i.bp, %i.bs
  tail call void @llvm.assume(i1 %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6161
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull readonly align 1 %i.bo, i64 range(i64 0, -9223372036854775808) %i.bp, i1 false), !noalias !6162
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.j, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i
  store i64 %i.bs, ptr %i.f, align 8, !noalias !6157
  store ptr %i.bw, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !6157
  store i64 %i.bp, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !noalias !6157
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !6155, !noalias !6156, !nonnull !13, !noundef !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 40
  %.val1.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !6155, !noalias !6156, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6163
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 1152921504606846976) %.val1.i.i.i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 8)
          to label %.noexc.i.i.i.i unwind label %.loopexit63.i, !noalias !6164

.noexc.i.i.i.i:                                   ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %i.ca = load i64, ptr %i.d, align 8, !range !22, !noalias !6163, !noundef !13
  %i.cb = trunc nuw i64 %i.ca to i1
  %i.cc = load i64, ptr %i.ae, align 8, !range !23, !noalias !6163, !noundef !13 ; 4 uses
  br i1 %i.cb, label %bb.k, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i2.i.i.i.i, !prof !20

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.cd = load i64, ptr %i.af, align 8, !noalias !6163
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cc, i64 %i.cd) #25
          to label %.noexc4.i.i.i.i unwind label %.loopexit.split-lp64.i, !noalias !6164

.noexc4.i.i.i.i:                                  ; preds = %bb.k
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i2.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.ce = load ptr, ptr %i.af, align 8, !noalias !6163, !nonnull !13, !noundef !13 ; 3 uses
  %i.cf = icmp ule i64 %.val1.i.i.i.i, %i.cc
  tail call void @llvm.assume(i1 %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6163
  %.not.i.i3.i.i.i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %.not.i.i3.i.i.i.i, label %_RNvXs4r_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i2.i.i.i.i
  %i.cg = shl nuw nsw i64 %.val1.i.i.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ce, ptr nonnull readonly align 2 %.val.i.i.i.i, i64 %i.cg, i1 false), !noalias !6165
  br label %_RNvXs4r_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

.loopexit63.i:                                    ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %lpad.loopexit65.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp64.i:                           ; preds = %bb.k
  %lpad.loopexit.split-lp66.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp64.i, %.loopexit63.i
  %lpad.phi67.i = phi { ptr, i32 } [ %lpad.loopexit65.i, %.loopexit63.i ], [ %lpad.loopexit.split-lp66.i, %.loopexit.split-lp64.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ag unwind label %bb.n, !noalias !6164

bb.n:                                             ; preds = %bb.m
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !6164
  unreachable

_RNvXs4r_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.l, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i2.i.i.i.i
  store i8 %i.bj, ptr %i.ag, align 4, !alias.scope !6153, !noalias !6166
  store <2 x i16> %i.bl, ptr %i.ah, align 8, !alias.scope !6153, !noalias !6166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !6166
  store i64 %i.cc, ptr %i.ai, align 8, !alias.scope !6153, !noalias !6166
  store ptr %i.ce, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6153, !noalias !6166
  store i64 %.val1.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6153, !noalias !6166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6157
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 104
  %i.cj = load i8, ptr %i.ci, align 8, !alias.scope !6167, !noalias !6168, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6152
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 80 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !26, !alias.scope !6167, !noalias !6168, !noundef !13
  %.not.i.i.i = icmp eq i64 %i.cl, -1
  %i.cm = ptrtoint ptr %i.ce to i64               ; 2 uses
  %5 = trunc i64 %i.cm to i16
  %6 = lshr i64 %i.cm, 16
  %7 = trunc i64 %6 to i16
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvXs4r_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6152
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck)
          to label %bb.ac unwind label %bb.ab, !noalias !6168

bb.p:                                             ; preds = %_RNvXs4r_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 88
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !6167, !noalias !6168, !nonnull !13, !noundef !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 96
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !6167, !noalias !6168, !noundef !13
  br label %bb.q

bb.q:                                             ; preds = %bb.ac, %bb.p
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i.i, %bb.ac ], [ %i.cq, %bb.p ]
  %.sroa.5.0.i.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i.i, %bb.ac ], [ %i.co, %bb.p ]
  %i.cr = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.ac ], [ -1, %bb.p ] ; 2 uses
  store i64 %i.cr, ptr %i.h, align 8, !noalias !6152
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !6152
  store i64 %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !6152
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 64
  %.val.i.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !6167, !noalias !6168, !nonnull !13, !noundef !13 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 72
  %.val9.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !6167, !noalias !6168, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6169)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6170
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %.val9.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc.i.i.i unwind label %.loopexit68.i, !noalias !6168

.noexc.i.i.i:                                     ; preds = %bb.q
  %i.cu = load i64, ptr %i.b, align 8, !range !22, !noalias !6170, !noundef !13
  %i.cv = trunc nuw i64 %i.cu to i1
  %i.cw = load i64, ptr %i.aj, align 8, !range !23, !noalias !6170, !noundef !13 ; 5 uses
  br i1 %i.cv, label %bb.r, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i, !prof !20

bb.r:                                             ; preds = %.noexc.i.i.i
  %i.cx = load i64, ptr %i.ak, align 8, !noalias !6170
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cw, i64 %i.cx) #25
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp69.i, !noalias !6168

.noexc10.i.i.i:                                   ; preds = %bb.r
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.cy = load ptr, ptr %i.ak, align 8, !noalias !6170, !nonnull !13, !noundef !13 ; 2 uses
  %i.cz = icmp ule i64 %.val9.i.i.i, %i.cw
  tail call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6170
  store i64 %i.cw, ptr %i.c, align 8, !noalias !6170
  store ptr %i.cy, ptr %i.al, align 8, !noalias !6170
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.val9.i.i.i
  %i.db = icmp eq i64 %i.cw, 0
  br i1 %i.db, label %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i, %_RNvXs4D_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %.sroa.013.049.i.i.i.i.i = phi ptr [ %i.de, %_RNvXs4D_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.val.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.7.048.i.i.i.i.i = phi i64 [ %i.df, %_RNvXs4D_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.10.047.i.i.i.i.i = phi i64 [ %i.dc, %_RNvXs4D_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %i.cw, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i ]
  %i.dc = add i64 %.sroa.10.047.i.i.i.i.i, -1     ; 2 uses
  %i.dd = icmp eq ptr %.sroa.013.049.i.i.i.i.i, %i.da
  br i1 %i.dd, label %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i, i64 32
  %i.df = add nuw nsw i64 %.sroa.7.048.i.i.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6172)
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i, i64 24
  %i.dh = load <2 x i16>, ptr %i.dg, align 8, !alias.scope !6173, !noalias !6174
  %i.di = load i64, ptr %.sroa.013.049.i.i.i.i.i, align 8, !range !26, !alias.scope !6173, !noalias !6174, !noundef !13
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.di, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6175)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !6176, !noalias !6177, !nonnull !13, !noundef !13
  %i.dm = load i64, ptr %i.dj, align 8, !alias.scope !6176, !noalias !6177, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6178
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.dm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !6179

.noexc.i.i.i.i.i:                                 ; preds = %bb.t
  %i.dn = load i64, ptr %i.a, align 8, !range !22, !noalias !6178, !noundef !13
  %i.do = trunc nuw i64 %i.dn to i1
  %i.dp = load i64, ptr %i.an, align 8, !range !23, !noalias !6178, !noundef !13 ; 4 uses
  br i1 %i.do, label %bb.u, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i.i.i.i, !prof !20

bb.u:                                             ; preds = %.noexc.i.i.i.i.i
  %i.dq = load i64, ptr %i.ao, align 8, !noalias !6178
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dp, i64 %i.dq) #25
          to label %.noexc12.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !6179

.noexc12.i.i.i.i.i:                               ; preds = %bb.u
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  %i.dr = load ptr, ptr %i.ao, align 8, !noalias !6178, !nonnull !13, !noundef !13 ; 3 uses
  %i.ds = icmp ule i64 %i.dm, %i.dp
  tail call void @llvm.assume(i1 %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6178
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs4D_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull readonly align 1 %i.dl, i64 range(i64 0, -9223372036854775808) %i.dm, i1 false), !noalias !6180
  br label %_RNvXs4D_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !6173, !noalias !6174, !nonnull !13, !noundef !13
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !6173, !noalias !6174, !noundef !13
  br label %_RNvXs4D_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXs4D_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i = phi i64 [ %i.dw, %bb.w ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i.i.i.i ], [ %i.dm, %bb.v ]
  %.sroa.5.0.i.i.i.i.i.i.i = phi ptr [ %i.du, %bb.w ], [ %i.dr, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i.i.i.i ], [ %i.dr, %bb.v ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ -1, %bb.w ], [ %i.dp, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i.i.i.i ], [ %i.dp, %bb.v ]
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %.sroa.7.048.i.i.i.i.i ; 4 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.dx, align 8, !noalias !6179
  %.sroa.431.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !noalias !6179
  %.sroa.532.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.sroa.6.0.i.i.i.i.i.i.i, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !noalias !6179
  %.sroa.633.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store <2 x i16> %i.dh, ptr %.sroa.633.0..sroa_idx.i.i.i.i.i, align 8, !noalias !6179
  %i.dy = icmp eq i64 %i.dc, 0
  br i1 %i.dy, label %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.x:                                             ; preds = %bb.y
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !6179
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %bb.t
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.u
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  store i64 %.sroa.7.048.i.i.i.i.i, ptr %i.am, align 8, !noalias !6170
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake18EchConfigExtensionEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %.body.i.i.i unwind label %bb.x, !noalias !6179

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FOtPNjzuti_16rustls_pki_types11server_name7DnsNameECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i: ; preds = %bb.ad, %.body.i.i.i, %bb.ab
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ec, %bb.ab ], [ %eh.lpad-body.i.i.i, %bb.ad ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshPShd8ZVvJf_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs2Bxje7pdMIr_13libp2p_server.exit.i.i unwind label %bb.z, !noalias !6168

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FOtPNjzuti_16rustls_pki_types11server_name7DnsNameECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body16.i unwind label %bb.aa, !noalias !6168

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshPShd8ZVvJf_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs2Bxje7pdMIr_13libp2p_server.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FOtPNjzuti_16rustls_pki_types11server_name7DnsNameECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.ag unwind label %bb.ae, !noalias !6142

bb.aa:                                            ; preds = %bb.z
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !6168
  unreachable

bb.ab:                                            ; preds = %bb.o
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FOtPNjzuti_16rustls_pki_types11server_name7DnsNameECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

bb.ac:                                            ; preds = %bb.o
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.g, align 8, !noalias !6152
  %.sroa.5.0.copyload3.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !6152
  %.sroa.6.0.copyload5.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !noalias !6152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6152
  br label %bb.q

.loopexit68.i:                                    ; preds = %bb.q
  %lpad.loopexit70.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp69.i:                           ; preds = %bb.r
  %lpad.loopexit.split-lp71.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp69.i, %.loopexit68.i, %bb.y
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i, %bb.y ], [ %lpad.loopexit70.i, %.loopexit68.i ], [ %lpad.loopexit.split-lp71.i, %.loopexit.split-lp69.i ] ; 2 uses
  %i.ed = icmp eq i64 %i.cr, -1
  br i1 %i.ed, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FOtPNjzuti_16rustls_pki_types11server_name7DnsNameECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FOtPNjzuti_16rustls_pki_types11server_name7DnsNameECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i unwind label %bb.ae, !noalias !6168

bb.ae:                                            ; preds = %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshPShd8ZVvJf_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs2Bxje7pdMIr_13libp2p_server.exit.i.i
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body16.i

.body16.i:                                        ; preds = %bb.ae, %bb.z
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !6168
  unreachable

_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs4D_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i
  store i64 %.val9.i.i.i, ptr %i.am, align 8, !noalias !6170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.i.sroa.9.56..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6170
  %.sroa.0.i.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !6181
  %.sroa.0.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.0.i.sroa.4.0..sroa_idx.i, align 8, !noalias !6181
  %.sroa.0.i.sroa.5.0.copyload.i = load ptr, ptr %.sroa.0.i.sroa.5.0..sroa_idx.i, align 8, !noalias !6181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.i.sroa.9.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.i.sroa.9.0..sroa_idx.i, i64 20, i1 false), !noalias !6181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.i.sroa.9.80..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !6181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.1028.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.0.i.sroa.9.i, i64 68, i1 false), !noalias !6182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.9.i)
  br label %_RNvXs4z_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs4z_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %bb.g, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %.sroa.1029.0.i = phi i8 [ %i.cj, %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.g ], [ undef, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ]
  %.sroa.9.0.i = phi i16 [ %7, %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %4, %bb.g ], [ %4, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ]
  %.sroa.8.0.i = phi i16 [ %5, %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %2, %bb.g ], [ %2, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ]
  %.sroa.724.0.i = phi i64 [ %i.cc, %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.bb, %bb.g ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ]
  %.sroa.6.0.i = phi ptr [ %.sroa.0.i.sroa.5.0.copyload.i, %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.bg, %bb.g ], [ %i.bg, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ]
  %.sroa.521.0.i = phi i64 [ %.sroa.0.i.sroa.4.0.copyload.i, %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.be, %bb.g ], [ %i.be, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ]
  %.sroa.019.0.i = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i, %_RNvXs4v_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ -1, %bb.g ], [ -1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ]
  %i.ef = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %.sroa.7.0145.i ; 8 uses
  %.sroa.954.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.954.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.1028.i, i64 68, i1 false), !noalias !6142
  store i64 %.sroa.019.0.i, ptr %i.ef, align 8, !noalias !6142
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %.sroa.521.0.i, ptr %.sroa.449.0..sroa_idx.i, align 8, !noalias !6142
  %.sroa.550.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.550.0..sroa_idx.i.a, align 8, !noalias !6142
  %.sroa.651.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store i64 %.sroa.724.0.i, ptr %.sroa.651.0..sroa_idx.i.a, align 8, !noalias !6142
  %.sroa.752.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  store i16 %.sroa.8.0.i, ptr %.sroa.752.0..sroa_idx.i.a, align 8, !noalias !6142
  %.sroa.853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 34
  store i16 %.sroa.9.0.i, ptr %.sroa.853.0..sroa_idx.i, align 2, !noalias !6142
  %.sroa.1055.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  store i8 %.sroa.1029.0.i, ptr %.sroa.1055.0..sroa_idx.i, align 8, !noalias !6142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1028.i)
  %i.eg = icmp eq i64 %i.ar, 0
  br i1 %i.eg, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.c

bb.af:                                            ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.body.i, %bb.af
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !6142
  unreachable

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshPShd8ZVvJf_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs2Bxje7pdMIr_13libp2p_server.exit.i.i, %bb.m, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshPShd8ZVvJf_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs2Bxje7pdMIr_13libp2p_server.exit.i.i ], [ %lpad.phi67.i, %bb.m ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.7.0145.i, ptr %i.z, align 8, !noalias !6141
  %i.ei = icmp eq i64 %.sroa.7.0145.i, 0
  br i1 %i.ei, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server.exit.i, label %.lr.ph

bb.ah:                                            ; preds = %.lr.ph
  %i.ej = icmp eq i64 %i.el, %.sroa.7.0145.i
  br i1 %i.ej, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %.sroa.0.0.i.i.i176 = phi i64 [ %i.el, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %.sroa.0.0.i.i.i176
  %i.el = add nuw nsw i64 %.sroa.0.0.i.i.i176, 1  ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ek)
          to label %bb.ah unwind label %bb.aj, !noalias !6183

bb.ai:                                            ; preds = %.lr.ph178
  %i.em = add i64 %.sroa.0.1.i.i.i177, 1          ; 2 uses
  %i.en = icmp eq i64 %i.em, %.sroa.7.0145.i
  br i1 %i.en, label %.body.i, label %.lr.ph178

bb.aj:                                            ; preds = %.lr.ph
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ep = icmp eq i64 %i.el, %.sroa.7.0145.i
  br i1 %i.ep, label %.body.i, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.aj, %bb.ai
  %.sroa.0.1.i.i.i177 = phi i64 [ %i.em, %bb.ai ], [ %i.el, %bb.aj ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %.sroa.0.1.i.i.i177
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(112) %i.eq) #22
          to label %bb.ai unwind label %bb.ak, !noalias !6183

bb.ak:                                            ; preds = %.lr.ph178
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !6183
  unreachable

.body.i:                                          ; preds = %bb.ai, %bb.aj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.al, !noalias !6142

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.ah, %bb.ag
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.af

bb.al:                                            ; preds = %.body.i
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !6142
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server.exit.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.c, %_RNvXs4z_NtNtCshPShd8ZVvJf_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i
  store i64 %i.p, ptr %i.z, align 8, !noalias !6141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !6140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6141
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6187
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 115292150460684698) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80), !noalias !6187
  %i.h = load i64, ptr %i.a, align 8, !range !22, !noalias !6187, !noundef !13
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noalias !6187, !noundef !13 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !6187
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #25, !noalias !6187
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !6187, !nonnull !13, !noundef !13 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6187
  store i64 %i.k, ptr %i.c, align 8, !noalias !6187
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !6187
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6187
  invoke fastcc void @_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !6188

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 80
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !6187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6187
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !6187
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !6187
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.g unwind label %bb.e, !noalias !6187

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !6187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6187
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CoweEBG_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6198
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 192153584101141163) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !6198
  %i.h = load i64, ptr %i.a, align 8, !range !22, !noalias !6198, !noundef !13
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noalias !6198, !noundef !13 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !6198
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #25, !noalias !6198
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !6198, !nonnull !13, !noundef !13 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6198
  store i64 %i.k, ptr %i.c, align 8, !noalias !6198
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !6198
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inTINtNtB8_6borrow3CoweEBL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph.i

end_hunk_0
