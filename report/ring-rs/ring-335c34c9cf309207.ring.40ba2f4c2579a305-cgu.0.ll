Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair10from_pkcs8:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bg, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.06.i, i64 7, i1 false), !noalias !2081
  %.sroa.3.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.1.copyload.i, ptr %.sroa.3.0..sroa_idx7.i, align 8, !alias.scope !2076
  %.sroa.4.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.1.copyload.i, ptr %.sroa.4.0..sroa_idx9.i, align 8, !alias.scope !2076
  %.sroa.511.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %.sroa.511.0..sroa_idx12.i, ptr noundef nonnull align 8 dereferenceable(73) %.sroa.11.i, i64 73, i1 false), !noalias !2081
  br label %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair24from_seed_and_public_key.exit

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sroa.013.0.i = phi ptr [ @55, %bb.t ], [ @53, %bb.s ]
  %.sroa.314.0.i = phi i64 [ 22, %bb.t ], [ 15, %bb.s ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.013.0.i, ptr %i.bh, align 8, !alias.scope !2076
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.314.0.i, ptr %i.bi, align 8, !alias.scope !2076
  br label %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair24from_seed_and_public_key.exit

_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair24from_seed_and_public_key.exit: ; preds = %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread.i, %bb.u, %bb.v
  %.sink = phi i8 [ 1, %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread.i ], [ 0, %bb.u ], [ 1, %bb.v ]
  store i8 %.sink, ptr %0, align 8, !alias.scope !2076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2077
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  br label %bb.x

bb.w:                                             ; preds = %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #41
  unreachable

bb.x:                                             ; preds = %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair24from_seed_and_public_key.exit, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair10from_seed_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [128 x i8], align 1               ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [80 x i8], align 8                ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 8 uses
  %i.j = alloca [208 x i8], align 8               ; 5 uses
  %i.k = alloca [208 x i8], align 8               ; 11 uses
  %i.l = alloca [96 x i8], align 1                ; 6 uses
  %i.m = alloca [160 x i8], align 8               ; 7 uses
  %i.n = alloca [32 x i8], align 1                ; 6 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.k, i8 0, i64 128, i1 false), !noalias !2112
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  store ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA512, ptr %i.o, align 8, !noalias !2112
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store ptr inttoptr (i64 7640891576956012808 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !2112
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA512, i64 16), i64 32, i1 false), !noalias !2112
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA512, i64 48), i64 24, i1 false), !noalias !2112
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2112
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 32), !noalias !2113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %i.k, i64 208, i1 false), !noalias !2112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !noalias !2112
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.j), !noalias !2115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2114
  %i.p = load ptr, ptr %i.i, align 8, !noalias !2114, !noundef !15 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !2116 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !2115
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !2114, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8
  store i8 1, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2112
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 89
  %i.y = load i8, ptr %i.x, align 1, !range !44, !noundef !15 ; 2 uses
  %.not.i = icmp samesign ult i8 %i.y, 32
  br i1 %.not.i, label %bb.f, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5yxAJGbRKSL_4ring.exit8, !prof !16

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #41, !noalias !2117
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5yxAJGbRKSL_4ring.exit8: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.s, ptr %i.g, align 8, !noalias !2119
  call void @ring_core_0_17_16000__x25519_sc_mask(ptr noalias nofree noundef nonnull dereferenceable(32) %i.g) #36, !noalias !2118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !2120, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1664
  %.sroa.0.0.i.i = icmp eq i32 %i.ab, 1664
  br i1 %.sroa.0.0.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5yxAJGbRKSL_4ring.exit8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2121
  call void @ring_core_0_17_16000__x25519_ge_scalarmult_base_adx(ptr noalias nofree noundef nonnull dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.n) #36, !noalias !2122
  call void @ring_core_0_17_16000__x25519_ge_scalarmult_base_adx_from_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(128) %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2121
  br label %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit

bb.h:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5yxAJGbRKSL_4ring.exit8
  call void @ring_core_0_17_16000__x25519_ge_scalarmult_base(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.n) #36
  br label %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit

_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ac = icmp eq i8 %i.y, 64
  br i1 %i.ac, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5yxAJGbRKSL_4ring.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41, !noalias !2123
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5yxAJGbRKSL_4ring.exit: ; preds = %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit
  %.sroa.6.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.40..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(160) %i.m, i64 40, i1 false), !noalias !2125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2124
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !noalias !2125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2124
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.af, i64 40, i1 false), !noalias !2125
  call void @ring_core_0_17_16000__x25519_fe_invert(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #36, !noalias !2126
  call void @ring_core_0_17_16000__x25519_fe_mul_assign_tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c) #36, !noalias !2127
  call void @ring_core_0_17_16000__x25519_fe_mul_assign_tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c) #36, !noalias !2128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !noalias !2129
  call void @ring_core_0_17_16000__x25519_fe_tobytes(ptr noalias nofree noundef nonnull dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d) #36, !noalias !2128
  %i.ag = call noundef i8 @ring_core_0_17_16000__x25519_fe_isnegative(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e) #36, !noalias !2128
  %i.ah = shl i8 %i.ag, 7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !2129, !noundef !15
  %i.ak = xor i8 %i.aj, %i.ah
  store i8 %i.ak, ptr %i.ai, align 1, !noalias !2129
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.al, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.l, ptr noundef nonnull align 1 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.am, ptr noundef nonnull align 1 dereferenceable(96) %i.l, i64 96, i1 false)
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5yxAJGbRKSL_4ring.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair14generate_pkcs8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [96 x i8], align 1                ; 5 uses
  %i.d = alloca [32 x i8], align 1                ; 5 uses
  %i.e = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val = load ptr, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !alias.scope !2136, !noalias !2135
  %i.g = call noundef zeroext i1 %.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull %i.a, i64 noundef 32) #40, !noalias !2135, !inline_history !2134
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2135
  store i64 1, ptr %0, align 8
  br label %bb.g

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair10from_seed_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %i.d)
  %i.h = load i8, ptr %i.b, align 8, !range !34, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.c, ptr noundef nonnull align 1 dereferenceable(96) %i.j, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RNvNtCs5yxAJGbRKSL_4ring5pkcs88wrap_key(ptr noalias nofree noundef align 8 captures(none) dereferenceable(200) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signing14PKCS8_TEMPLATE, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 32)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 1), (8, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = icmp eq i64 %2, 32
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.b, %bb.c
  call fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair10from_seed_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1)
  %i.d = load i8, ptr %i.a, align 8, !range !34, !noundef !15
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @53, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %i.g, align 8
  store i8 1, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @123, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 8, ptr %i.i, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.k, ptr noundef nonnull align 1 dereferenceable(96) %i.j, i64 96, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i8 [ 1, %bb.e ], [ 0, %bb.f ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair24from_seed_and_public_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 1), (8, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.06 = alloca [7 x i8], align 1            ; 2 uses
  %.sroa.11.sroa.0 = alloca [73 x i8], align 8    ; 3 uses
  %i.b = alloca [96 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp eq i64 %2, 32
  br i1 %i.c, label %bb.b, label %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2140
  %i.d = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !2140
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %bb.c, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i: ; preds = %bb.c, %bb.b
  call fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair10from_seed_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1), !noalias !2141
  %i.e = load i8, ptr %i.a, align 8, !range !34, !noalias !2140, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread24, label %bb.d

_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread24: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2140
  br label %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread

_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread: ; preds = %bb.a, %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread24
  %.sroa.8.123 = phi ptr [ @123, %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread24 ], [ @53, %bb.a ]
  %.sroa.12.122 = phi i64 [ 8, %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread24 ], [ 15, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.123, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.122, ptr %i.h, align 8
  br label %bb.g

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.06, ptr noundef nonnull align 1 dereferenceable(7) %i.i, i64 7, i1 false)
  %.sroa.8.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.1.copyload = load ptr, ptr %.sroa.8.1..sroa_idx, align 8, !noalias !2142
  %.sroa.12.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.12.1.copyload = load i64, ptr %.sroa.12.1..sroa_idx, align 8, !noalias !2142
  %.sroa.16.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %.sroa.11.sroa.0, ptr noundef nonnull align 8 dereferenceable(73) %.sroa.16.1..sroa_idx, i64 73, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2140
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(73) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(73) %.sroa.11.sroa.0, i64 73, i1 false)
  %cond = icmp eq i64 %4, 32
  br i1 %cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.k = load i128, ptr %3, align 1
  %i.l = load i128, ptr %i.j, align 1
  %i.m = xor i128 %i.k, %i.l
  %i.n = getelementptr i8, ptr %3, i64 16
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load i128, ptr %i.n, align 1
  %i.q = load i128, ptr %i.o, align 1
  %i.r = xor i128 %i.p, %i.q
  %i.s = or i128 %i.m, %i.r
  %i.t = icmp ne i128 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.v, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.06, i64 7, i1 false)
  %.sroa.3.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.1.copyload, ptr %.sroa.3.0..sroa_idx7, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.1.copyload, ptr %.sroa.4.0..sroa_idx9, align 8
  %.sroa.511.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %.sroa.511.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(73) %.sroa.11.sroa.0, i64 73, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread, %bb.h, %bb.f
  %.sink = phi i8 [ 1, %_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair19from_seed_unchecked.exit.thread ], [ 1, %bb.h ], [ 0, %bb.f ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.d, %bb.e
  %.sroa.013.0 = phi ptr [ @55, %bb.e ], [ @53, %bb.d ]
  %.sroa.314.0 = phi i64 [ 22, %bb.e ], [ 15, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.013.0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.314.0, ptr %i.x, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair26from_pkcs8_maybe_unchecked(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 1), (8, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.06.i = alloca [7 x i8], align 1          ; 4 uses
  %.sroa.11.i = alloca [80 x i8], align 8         ; 5 uses
  %i.c = alloca [96 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2163
  call fastcc void @_RNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) getelementptr inbounds nuw (i8, ptr @241, i64 7), i64 noundef 5, i8 noundef range(i8 0, 3) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
  %i.e = load ptr, ptr %i.d, align 8, !noalias !2163, !noundef !15 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !2163 ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8, !noalias !2163, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2163
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.420.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !2163 ; 5 uses
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.622.0.copyload.i = load i64, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !2163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2163
  %.not.i.i = icmp eq i64 %.sroa.420.0.copyload.i, 0
  br i1 %.not.i.i, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.e, align 1, !noalias !2164, !noundef !15 ; 2 uses
  %i.l = and i8 %i.k, 31
  %i.m = icmp ne i8 %i.l, 31
  %i.n = icmp ne i64 %.sroa.420.0.copyload.i, 1
  %or.cond.i.i.i.i = and i1 %i.n, %i.m
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noalias !2164, !noundef !15 ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.g
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551911x25519_ecdh:bb.a
  call void @llvm.assume(i1 %i.m)
  %i.n = and i32 %i.l, 1664
  %.sroa.0.0.i.i = icmp eq i32 %i.n, 1664
  br i1 %.sroa.0.0.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ring_core_0_17_16000__x25519_scalar_mult_generic_masked(ptr noalias nofree noundef nonnull dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %3) #36
  br label %_RNvNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551911x25519_ecdh11scalar_mult.exit

bb.f:                                             ; preds = %bb.d
  call void @ring_core_0_17_16000__x25519_scalar_mult_adx(ptr noalias nofree noundef nonnull dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %3) #36
  br label %_RNvNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551911x25519_ecdh11scalar_mult.exit

_RNvNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551911x25519_ecdh11scalar_mult.exit: ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !4703)
  call void @llvm.experimental.noalias.scope.decl(metadata !4704)
  %i.o = load <4 x i64>, ptr %0, align 1, !alias.scope !4705, !noalias !4706
  %i.p = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.o)
  %i.q = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.p) #36, !noalias !4707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4708
  store i64 %i.q, ptr %i.a, align 8, !noalias !4708
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !4708, !srcloc !37
  %i.r = load i64, ptr %i.a, align 8, !noalias !4708, !noundef !15
  %.not.i = icmp ne i64 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4708
  br label %.sink.split

.sink.split:                                      ; preds = %_RNvNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551911x25519_ecdh11scalar_mult.exit, %bb.c
  %.sroa.0.0.ph = phi i1 [ true, %bb.c ], [ %.not.i, %_RNvNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551911x25519_ecdh11scalar_mult.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551926x25519_public_from_private(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 1               ; 4 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  %i.c = alloca [160 x i8], align 8               ; 5 uses
  %i.d = alloca [32 x i8], align 1                ; 5 uses
  %i.e = icmp eq i64 %1, 32
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4720)
  %i.f = load ptr, ptr %2, align 8, !alias.scope !4720, !nonnull !15, !align !17, !noundef !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noalias !4720, !noundef !15 ; 3 uses
  %i.i = icmp ult i64 %i.h, 49
  br i1 %i.i, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.h, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #41, !noalias !4720
  unreachable

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit: ; preds = %bb.b
  %i.j = icmp eq i64 %i.h, 32
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @ring_core_0_17_16000__x25519_sc_mask(ptr noalias nofree noundef nonnull dereferenceable(32) %i.b) #36, !noalias !4721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !4722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !4723, !noundef !15 ; 2 uses
  %i.m = icmp ne i32 %i.l, 0
  call void @llvm.assume(i1 %i.m)
  %i.n = and i32 %i.l, 1664
  %.sroa.0.0.i.i = icmp eq i32 %i.n, 1664
  br i1 %.sroa.0.0.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4724
  call void @ring_core_0_17_16000__x25519_ge_scalarmult_base_adx(ptr noalias nofree noundef nonnull dereferenceable(128) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.d) #36, !noalias !4725
  call void @ring_core_0_17_16000__x25519_ge_scalarmult_base_adx_from_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(128) %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4724
  br label %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit

bb.f:                                             ; preds = %bb.d
  call void @ring_core_0_17_16000__x25519_ge_scalarmult_base(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.d) #36
  br label %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit

_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit: ; preds = %bb.e, %bb.f
  call void @ring_core_0_17_16000__x25519_u_coordinate(ptr noalias nofree noundef nonnull dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit, %bb.a, %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit ], [ true, %bb.a ], [ true, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551927x25519_generate_private_key(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !15, !nonnull !15
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull %2, i64 noundef %3) #40
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551930x25519_check_private_key_bytes(ptr noalias nofree nonnull readonly captures(none) %0, i64 range(i64 0, -9223372036854775808) %1) unnamed_addr #20 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed2551912eddsa_digest(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [208 x i8], align 8               ; 5 uses
  %i.e = alloca [208 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA512, ptr %i.f, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA512, i64 8), i64 64, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 32)
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.e, i64 208, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4735)
  %i.g = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !4736
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i, !prof !16

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !4738
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.d), !noalias !4738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4737
  %i.i = load ptr, ptr %i.c, align 8, !noalias !4737, !noundef !15 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !4739 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6finish.exit

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !4738
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4737
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41, !noalias !4740
  unreachable

_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6finish.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx8.i, i64 56, i1 false), !noalias !4741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4737
  call void @llvm.experimental.noalias.scope.decl(metadata !4742)
  call void @llvm.experimental.noalias.scope.decl(metadata !4743)
  store ptr %i.i, ptr %0, align 8, !alias.scope !4740
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !4740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b10public_key24parse_uncompressed_point(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.4 = alloca [96 x i8], align 8            ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 48 ; 2 uses
  %i.i = alloca [96 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4757
  store ptr %3, ptr %i.g, align 8, !noalias !4757
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 %4, ptr %i.l, align 8, !noalias !4757
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.m, align 8, !alias.scope !4758, !noalias !4757
  %i.n = load i8, ptr %3, align 1, !noalias !4759, !noundef !15
  %i.o = icmp eq i8 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4759
  call fastcc void @_RNvMsa_NtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3opsNtB5_12PublicKeyOps10elem_parse(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !4760
  %i.p = load i64, ptr %i.f, align 8, !range !22, !noalias !4759, !noundef !15
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4759
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !4759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4759
  call fastcc void @_RNvMsa_NtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3opsNtB5_12PublicKeyOps10elem_parse(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !4760
  %i.s = load i64, ptr %i.d, align 8, !range !22, !noalias !4759, !noundef !15
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4759
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !4757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !4757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.w = load i64, ptr %i.m, align 8, !noalias !4757, !noundef !15
  %i.x = load i64, ptr %i.l, align 8, !noalias !4757, !noundef !15
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4762
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !4761, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ab, i64 48, i1 false), !noalias !4762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4762
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !noalias !4762
  %i.ad = call fastcc noundef zeroext i1 @_RNvNtNtCs5yxAJGbRKSL_4ring2ec7suite_b42verify_affine_point_is_on_the_curve_scaled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4762
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4, i64 48, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.i, i64 96, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key19public_from_private(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull writeonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 10 uses
  %i.f = alloca [144 x i8], align 8               ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.l = load i8, ptr %i.k, align 8, !range !34, !noundef !15 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.n, align 8
  %i.o = trunc nuw i8 %i.l to i1                  ; 3 uses
  %. = select i1 %i.o, i64 48, i64 32             ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4787)
  %i.q = load ptr, ptr %3, align 8, !alias.scope !4787, !nonnull !15, !align !17, !noundef !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noalias !4787, !noundef !15 ; 3 uses
  %i.t = icmp ult i64 %i.s, 49
  br i1 %i.t, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.s, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #41, !noalias !4787
  unreachable

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit: ; preds = %bb.a
  %..i.i = select i1 %i.o, i64 6, i64 4           ; 3 uses
  %.not.i.i = icmp eq i64 %i.s, %.
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4788
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 0, i64 48, i1 false), !noalias !4788
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4790
  store ptr %i.e, ptr %i.c, align 8, !noalias !4790
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %..i.i, ptr %i.v, align 8, !noalias !4790
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.w, align 8, !noalias !4790
  %i.x = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %., i64 noundef range(i64 4, 7) %..i.i), !noalias !4791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4790
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i: ; preds = %bb.c
  %i.aa = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.e, ptr noundef nonnull readonly align 8 %i.p, i64 noundef range(i64 4, 7) %..i.i) #36, !noalias !4792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4793
  store i64 %i.aa, ptr %i.b, align 8, !noalias !4793
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.b) #36, !noalias !4792, !srcloc !37
  %i.ab = load i64, ptr %i.b, align 8, !noalias !4793, !noundef !15
  %.not.i.i.i.i = icmp eq i64 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4793
  br i1 %.not.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, label %vector.body.1

vector.body.1:                                    ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i
  %wide.load = load <2 x i64>, ptr %i.e, align 16, !alias.scope !4789, !noalias !4788
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.ac, align 16, !alias.scope !4789, !noalias !4788
  %i.ad = or <2 x i64> %wide.load.1, %wide.load   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %wide.load.2 = load <2 x i64>, ptr %i.ae, align 16
  %i.af = or <2 x i64> %wide.load.2, %i.ad
  %.lcssa = select i1 %i.o, <2 x i64> %i.af, <2 x i64> %i.ad
  %i.ag = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.ah = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.ag) #36, !noalias !4792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4794
  store i64 %i.ah, ptr %i.d, align 8, !noalias !4794
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.d) #36, !noalias !4792, !srcloc !37
  %i.ai = load i64, ptr %i.d, align 8, !noalias !4794, !noundef !15
  %.not.i.not.i.i = icmp eq i64 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4794
  br i1 %.not.i.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i: ; preds = %vector.body.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4788
  br label %bb.d

bb.d:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #41, !noalias !4795
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit: ; preds = %vector.body.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !15, !noundef !15
  call void %i.ak(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  store i8 4, ptr %1, align 1
  %i.al = add nsw i64 %2, -1                      ; 2 uses
  %.not.i = icmp samesign ugt i64 %., %i.al
  br i1 %.not.i, label %bb.f, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh12split_at_mutCs5yxAJGbRKSL_4ring.exit, !prof !16

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #41, !noalias !4796
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSh12split_at_mutCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.
  %i.ao = sub nuw nsw i64 %i.al, %.
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.ap, align 8
  %i.aq = call fastcc noundef zeroext i1 @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key31big_endian_affine_from_jacobian(ptr nonnull %i.i, ptr %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull %i.am, i64 noundef %., ptr noalias nofree noundef nonnull %i.an, i64 %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %i.aq

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key20affine_from_jacobian(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
vector.ph:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i8, ptr %i.t, align 8, !range !34, !noundef !15
  %i.u = trunc nuw i8 %.val to i1                 ; 4 uses
  %..i = select i1 %i.u, i64 6, i64 4             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4823
  %.idx.i = shl nuw nsw i64 %..i, 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.w = shl nuw nsw i64 %..i, 3                  ; 4 uses
  %i.x = select i1 %i.u, i64 0, i64 16            ; 3 uses
  %i.y = getelementptr i8, ptr %i.f, i64 %i.w
  call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.x, i1 false), !noalias !4823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.v, i64 %i.w, i1 false), !alias.scope !4824, !noalias !4825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !4826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4823
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.z, align 8, !nonnull !15, !align !17, !noundef !15 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4827)
  %i.aa = getelementptr i8, ptr %.val1, i64 256
  %.val.i = load i8, ptr %i.aa, align 8, !range !34, !noalias !4827, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4828)
  %i.ab = trunc nuw i8 %.val.i to i1
  %wide.load = load <2 x i64>, ptr %i.s, align 16, !alias.scope !4829
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.ac, align 16, !alias.scope !4829
  %i.ad = or <2 x i64> %wide.load.1, %wide.load   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %wide.load.2 = load <2 x i64>, ptr %i.ae, align 16
  %i.af = or <2 x i64> %wide.load.2, %i.ad
  %.lcssa = select i1 %i.ab, <2 x i64> %i.af, <2 x i64> %i.ad
  %i.ag = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.ah = tail call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.ag) #36, !noalias !4829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4829
  store i64 %i.ah, ptr %i.e, align 8, !noalias !4829
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.e) #36, !noalias !4829, !srcloc !37
  %i.ai = load i64, ptr %i.e, align 8, !noalias !4829, !noundef !15
  %.not = icmp eq i64 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4829
  br i1 %.not, label %bb.b, label %bb.a, !prof !19

bb.a:                                             ; preds = %vector.ph
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @227, i64 noundef 55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #41
  unreachable
end_hunk_1
