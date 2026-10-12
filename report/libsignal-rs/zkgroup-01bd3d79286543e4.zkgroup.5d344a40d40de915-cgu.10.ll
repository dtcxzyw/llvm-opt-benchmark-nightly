Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/zkgroup-01bd3d79286543e4.zkgroup.5d344a40d40de915-cgu.10?download=true
inline.NumInlined: 160
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMs2_NtNtNtCs807GXlIGG3x_7zkgroup3api6groups22group_send_endorsementINtB5_20GroupSendEndorsementNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoE10decompress:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvMs5_NtCs17t5S1clqUH_12zkcredential12endorsementsINtB5_11EndorsementNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoE10decompress(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i64, ptr %i.b, align 8, !range !7, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.016.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.517.0..sroa_idx, i64 144, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.016.0.copyload.sink = phi ptr [ %.sroa.016.0.copyload, %bb.b ], [ @47, %bb.a ]
  %.sroa.4.0.copyload.sink = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ 116, %bb.a ]
  %.sink = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.016.0.copyload.sink, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.sink, ptr %i.g, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtNtCs807GXlIGG3x_7zkgroup3api6groups22group_send_endorsementNtB5_20GroupSendEndorsement8compress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  call void @_RNvMs6_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_11Endorsement8compress(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2720 x i8]) align 8 captures(none) dereferenceable(2720) initializes((0, 2720)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials12SystemParamsE5force0EB1J_.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials12SystemParamsE5force0EB1J_.exit

_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials12SystemParamsE5force0EB1J_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2720) %0, ptr noundef nonnull align 8 dereferenceable(2720) @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtNtCs807GXlIGG3x_7zkgroup3api6groups22group_send_endorsementNtB5_20GroupSendEndorsement6remove(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsb_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_11Endorsement6remove(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_13PniCredentialE8generateB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([800 x i8]) align 8 captures(none) dereferenceable(800) initializes((0, 800)) %0, ptr noalias nofree noundef align 8 dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 1                ; 4 uses
  %i.e = alloca [32 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 1                ; 4 uses
  %i.i = alloca [160 x i8], align 8               ; 24 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [160 x i8], align 8               ; 4 uses
  %i.l = alloca [160 x i8], align 8               ; 4 uses
  %i.m = alloca [160 x i8], align 8               ; 4 uses
  %i.n = alloca [160 x i8], align 8               ; 4 uses
  %i.o = alloca [160 x i8], align 8               ; 4 uses
  %i.p = alloca [160 x i8], align 8               ; 4 uses
  %i.q = alloca [160 x i8], align 8               ; 10 uses
  %i.r = alloca [160 x i8], align 8               ; 4 uses
  %i.s = alloca [160 x i8], align 8               ; 4 uses
  %i.t = alloca [160 x i8], align 8               ; 4 uses
  %i.u = alloca [160 x i8], align 8               ; 4 uses
  %i.v = alloca [192 x i8], align 1               ; 6 uses
  %i.w = alloca [32 x i8], align 1                ; 5 uses
  %i.x = alloca [32 x i8], align 1                ; 5 uses
  %i.y = alloca [32 x i8], align 1                ; 5 uses
  %i.z = alloca [160 x i8], align 8               ; 2 uses
  %i.aa = alloca [160 x i8], align 8              ; 4 uses
  %i.ab = alloca [32 x i8], align 1               ; 6 uses
  %i.ac = alloca [2720 x i8], align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720) acquire, align 8, !noalias !235
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !235
  store ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, ptr %i.b, align 8, !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !235
  store ptr %i.b, ptr %i.a, align 8, !noalias !235
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !235
  br label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit

_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2720) %i.ac, ptr noundef nonnull align 8 dereferenceable(2720) @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 960 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.z, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.aa, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsANtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6Scalarj6_INtB3_9ArrayLikeBO_E6createNCNvMs5_NtNtB7_6crypto11credentialsINtB2e_7KeyPairNtB2e_13PniCredentialE8generate0EB7_(ptr noalias nofree noundef nonnull sret([192 x i8]) align 1 captures(none) dereferenceable(192) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(160) %i.ag, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.s, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsL_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Add3add(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull align 8 dereferenceable(160) %i.ah, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.aj, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.l, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.af)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.j, align 8 ; 7 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.0.sroa.6.0.copyload, i64 %.sroa.0.sroa.5.0.copyload) ; 4 uses
  %exitcond.not.not = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond.not.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit: ; preds = %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.am = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.an = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.am)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.1.not = icmp eq i64 %.sroa.0.sroa.6.0.copyload, %i.an
  br i1 %exitcond.1.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.an
  %i.ap = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.an
  %i.aq = add i64 %.sroa.0.sroa.5.0.copyload, 2   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ap)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.2.not = icmp eq i64 %i.aq, %umax
  br i1 %exitcond.2.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.aq
  %i.as = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.aq
  %i.at = add i64 %.sroa.0.sroa.5.0.copyload, 3   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.as)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.3.not = icmp eq i64 %i.at, %umax
  br i1 %exitcond.3.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.at
  %i.av = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.at
  %i.aw = add i64 %.sroa.0.sroa.5.0.copyload, 4   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.av)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.4.not = icmp eq i64 %i.aw, %umax
  br i1 %exitcond.4.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.4

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.4: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.aw
  %i.az = add i64 %.sroa.0.sroa.5.0.copyload, 5   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ay)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.5.not = icmp eq i64 %i.az, %umax
  br i1 %exitcond.5.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.5

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.5: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.4
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.az
  %i.bb = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.bb)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.5, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.4, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(192) %i.v, i64 192, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bc, ptr noundef nonnull align 8 dereferenceable(160) %i.q, i64 160, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bf, ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i64 160, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bi, ptr noundef nonnull align 8 dereferenceable(160) %i.u, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_14AuthCredentialE8generateB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([736 x i8]) align 8 captures(none) dereferenceable(736) initializes((0, 736)) %0, ptr noalias nofree noundef align 8 dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 1                ; 4 uses
  %i.e = alloca [32 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 1                ; 4 uses
  %i.i = alloca [160 x i8], align 8               ; 12 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [160 x i8], align 8               ; 4 uses
  %i.l = alloca [160 x i8], align 8               ; 4 uses
  %i.m = alloca [160 x i8], align 8               ; 4 uses
  %i.n = alloca [160 x i8], align 8               ; 4 uses
  %i.o = alloca [160 x i8], align 8               ; 4 uses
  %i.p = alloca [160 x i8], align 8               ; 4 uses
  %i.q = alloca [160 x i8], align 8               ; 7 uses
  %i.r = alloca [160 x i8], align 8               ; 4 uses
  %i.s = alloca [160 x i8], align 8               ; 4 uses
  %i.t = alloca [160 x i8], align 8               ; 4 uses
  %i.u = alloca [160 x i8], align 8               ; 4 uses
  %i.v = alloca [128 x i8], align 1               ; 6 uses
  %i.w = alloca [32 x i8], align 1                ; 5 uses
  %i.x = alloca [32 x i8], align 1                ; 5 uses
  %i.y = alloca [32 x i8], align 1                ; 5 uses
  %i.z = alloca [160 x i8], align 8               ; 2 uses
  %i.aa = alloca [160 x i8], align 8              ; 4 uses
  %i.ab = alloca [32 x i8], align 1               ; 6 uses
  %i.ac = alloca [2720 x i8], align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720) acquire, align 8, !noalias !238
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !238
  store ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, ptr %i.b, align 8, !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !238
  store ptr %i.b, ptr %i.a, align 8, !noalias !238
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !238
  br label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit

_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2720) %i.ac, ptr noundef nonnull align 8 dereferenceable(2720) @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 960 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.z, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.aa, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsANtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6Scalarj4_INtB3_9ArrayLikeBO_E6createNCNvMs5_NtNtB7_6crypto11credentialsINtB2e_7KeyPairNtB2e_14AuthCredentialE8generate0EB7_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 1 captures(none) dereferenceable(128) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(160) %i.ag, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.s, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsL_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Add3add(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull align 8 dereferenceable(160) %i.ah, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.aj, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.l, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.af)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.j, align 8 ; 4 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.0.sroa.6.0.copyload, i64 %.sroa.0.sroa.5.0.copyload)
  %exitcond.not.not = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond.not.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit: ; preds = %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.am = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.an = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.am)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.1.not = icmp eq i64 %.sroa.0.sroa.6.0.copyload, %i.an
  br i1 %exitcond.1.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.an
  %i.ap = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.an
  %i.aq = add i64 %.sroa.0.sroa.5.0.copyload, 2   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ap)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.2.not = icmp eq i64 %i.aq, %umax
  br i1 %exitcond.2.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.aq
  %i.as = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.as)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(128) %i.v, i64 128, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.at, ptr noundef nonnull align 8 dereferenceable(160) %i.q, i64 160, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.aw, ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i64 160, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.az, ptr noundef nonnull align 8 dereferenceable(160) %i.u, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_17ReceiptCredentialE8generateB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([736 x i8]) align 8 captures(none) dereferenceable(736) initializes((0, 736)) %0, ptr noalias nofree noundef align 8 dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 1                ; 4 uses
  %i.e = alloca [32 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 1                ; 4 uses
  %i.i = alloca [160 x i8], align 8               ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [160 x i8], align 8               ; 4 uses
  %i.l = alloca [160 x i8], align 8               ; 4 uses
  %i.m = alloca [160 x i8], align 8               ; 4 uses
  %i.n = alloca [160 x i8], align 8               ; 4 uses
  %i.o = alloca [160 x i8], align 8               ; 4 uses
  %i.p = alloca [160 x i8], align 8               ; 4 uses
  %i.q = alloca [160 x i8], align 8               ; 6 uses
  %i.r = alloca [160 x i8], align 8               ; 4 uses
  %i.s = alloca [160 x i8], align 8               ; 4 uses
  %i.t = alloca [160 x i8], align 8               ; 4 uses
  %i.u = alloca [160 x i8], align 8               ; 4 uses
  %i.v = alloca [128 x i8], align 1               ; 6 uses
  %i.w = alloca [32 x i8], align 1                ; 5 uses
  %i.x = alloca [32 x i8], align 1                ; 5 uses
  %i.y = alloca [32 x i8], align 1                ; 5 uses
  %i.z = alloca [160 x i8], align 8               ; 2 uses
  %i.aa = alloca [160 x i8], align 8              ; 4 uses
  %i.ab = alloca [32 x i8], align 1               ; 6 uses
  %i.ac = alloca [2720 x i8], align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720) acquire, align 8, !noalias !241
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !241
  store ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, ptr %i.b, align 8, !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !241
  store ptr %i.b, ptr %i.a, align 8, !noalias !241
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !241
  br label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit

_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2720) %i.ac, ptr noundef nonnull align 8 dereferenceable(2720) @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 960 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.z, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.aa, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsANtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6Scalarj4_INtB3_9ArrayLikeBO_E6createNCNvMs5_NtNtB7_6crypto11credentialsINtB2e_7KeyPairNtB2e_17ReceiptCredentialE8generate0EB7_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 1 captures(none) dereferenceable(128) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(160) %i.ag, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.s, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsL_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Add3add(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull align 8 dereferenceable(160) %i.ah, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.aj, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.l, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.af)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.j, align 8 ; 3 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond.not.not = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond.not.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit: ; preds = %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.am = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.an = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.am)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.1.not = icmp eq i64 %i.an, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond.1.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.an
  %i.ap = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ap)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(128) %i.v, i64 128, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.aq, ptr noundef nonnull align 8 dereferenceable(160) %i.q, i64 160, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.at, ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i64 160, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.aw, ptr noundef nonnull align 8 dereferenceable(160) %i.u, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_20ProfileKeyCredentialE8generateB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([736 x i8]) align 8 captures(none) dereferenceable(736) initializes((0, 736)) %0, ptr noalias nofree noundef align 8 dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 1                ; 4 uses
  %i.e = alloca [32 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 1                ; 4 uses
  %i.i = alloca [160 x i8], align 8               ; 16 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [160 x i8], align 8               ; 4 uses
  %i.l = alloca [160 x i8], align 8               ; 4 uses
  %i.m = alloca [160 x i8], align 8               ; 4 uses
  %i.n = alloca [160 x i8], align 8               ; 4 uses
  %i.o = alloca [160 x i8], align 8               ; 4 uses
  %i.p = alloca [160 x i8], align 8               ; 4 uses
  %i.q = alloca [160 x i8], align 8               ; 8 uses
  %i.r = alloca [160 x i8], align 8               ; 4 uses
  %i.s = alloca [160 x i8], align 8               ; 4 uses
  %i.t = alloca [160 x i8], align 8               ; 4 uses
  %i.u = alloca [160 x i8], align 8               ; 4 uses
  %i.v = alloca [128 x i8], align 1               ; 6 uses
  %i.w = alloca [32 x i8], align 1                ; 5 uses
  %i.x = alloca [32 x i8], align 1                ; 5 uses
  %i.y = alloca [32 x i8], align 1                ; 5 uses
  %i.z = alloca [160 x i8], align 8               ; 2 uses
  %i.aa = alloca [160 x i8], align 8              ; 4 uses
  %i.ab = alloca [32 x i8], align 1               ; 6 uses
  %i.ac = alloca [2720 x i8], align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720) acquire, align 8, !noalias !244
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244
  store ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, ptr %i.b, align 8, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244
  store ptr %i.b, ptr %i.a, align 8, !noalias !244
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244
  br label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit

_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2720) %i.ac, ptr noundef nonnull align 8 dereferenceable(2720) @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 960 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.z, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.aa, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsANtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6Scalarj4_INtB3_9ArrayLikeBO_E6createNCNvMs5_NtNtB7_6crypto11credentialsINtB2e_7KeyPairNtB2e_20ProfileKeyCredentialE8generate0EB7_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 1 captures(none) dereferenceable(128) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(160) %i.ag, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.s, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsL_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Add3add(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull align 8 dereferenceable(160) %i.ah, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.aj, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.l, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.af)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.j, align 8 ; 5 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.0.sroa.6.0.copyload, i64 %.sroa.0.sroa.5.0.copyload) ; 2 uses
  %exitcond.not.not = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond.not.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit: ; preds = %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.am = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.an = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.am)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.1.not = icmp eq i64 %.sroa.0.sroa.6.0.copyload, %i.an
  br i1 %exitcond.1.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.an
  %i.ap = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.an
  %i.aq = add i64 %.sroa.0.sroa.5.0.copyload, 2   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ap)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.2.not = icmp eq i64 %i.aq, %umax
  br i1 %exitcond.2.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.aq
  %i.as = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.aq
  %i.at = add i64 %.sroa.0.sroa.5.0.copyload, 3   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.as)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.3.not = icmp eq i64 %i.at, %umax
  br i1 %exitcond.3.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.at
  %i.av = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.av)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(128) %i.v, i64 128, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.aw, ptr noundef nonnull align 8 dereferenceable(160) %i.q, i64 160, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.az, ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i64 160, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bc, ptr noundef nonnull align 8 dereferenceable(160) %i.u, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_21AuthCredentialWithPniE8generateB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([768 x i8]) align 8 captures(none) dereferenceable(768) initializes((0, 768)) %0, ptr noalias nofree noundef align 8 dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 1                ; 4 uses
  %i.e = alloca [32 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 1                ; 4 uses
  %i.i = alloca [160 x i8], align 8               ; 20 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [160 x i8], align 8               ; 4 uses
  %i.l = alloca [160 x i8], align 8               ; 4 uses
  %i.m = alloca [160 x i8], align 8               ; 4 uses
  %i.n = alloca [160 x i8], align 8               ; 4 uses
  %i.o = alloca [160 x i8], align 8               ; 4 uses
  %i.p = alloca [160 x i8], align 8               ; 4 uses
  %i.q = alloca [160 x i8], align 8               ; 9 uses
  %i.r = alloca [160 x i8], align 8               ; 4 uses
  %i.s = alloca [160 x i8], align 8               ; 4 uses
  %i.t = alloca [160 x i8], align 8               ; 4 uses
  %i.u = alloca [160 x i8], align 8               ; 4 uses
  %i.v = alloca [160 x i8], align 1               ; 6 uses
  %i.w = alloca [32 x i8], align 1                ; 5 uses
  %i.x = alloca [32 x i8], align 1                ; 5 uses
  %i.y = alloca [32 x i8], align 1                ; 5 uses
  %i.z = alloca [160 x i8], align 8               ; 2 uses
  %i.aa = alloca [160 x i8], align 8              ; 4 uses
  %i.ab = alloca [32 x i8], align 1               ; 6 uses
  %i.ac = alloca [2720 x i8], align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720) acquire, align 8, !noalias !247
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !247
  store ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, ptr %i.b, align 8, !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !247
  store ptr %i.b, ptr %i.a, align 8, !noalias !247
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  br label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit

_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2720) %i.ac, ptr noundef nonnull align 8 dereferenceable(2720) @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 960 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.z, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.aa, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsANtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6Scalarj5_INtB3_9ArrayLikeBO_E6createNCNvMs5_NtNtB7_6crypto11credentialsINtB2e_7KeyPairNtB2e_21AuthCredentialWithPniE8generate0EB7_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 1 captures(none) dereferenceable(160) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(160) %i.ag, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.s, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsL_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Add3add(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull align 8 dereferenceable(160) %i.ah, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.aj, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.l, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.af)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.j, align 8 ; 6 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 6 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 8 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.0.sroa.6.0.copyload, i64 %.sroa.0.sroa.5.0.copyload) ; 3 uses
  %exitcond.not.not = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond.not.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit: ; preds = %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.am = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.an = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.am)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.1.not = icmp eq i64 %.sroa.0.sroa.6.0.copyload, %i.an
  br i1 %exitcond.1.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.an
  %i.ap = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.an
  %i.aq = add i64 %.sroa.0.sroa.5.0.copyload, 2   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ap)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.2.not = icmp eq i64 %i.aq, %umax
  br i1 %exitcond.2.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.aq
  %i.as = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.aq
  %i.at = add i64 %.sroa.0.sroa.5.0.copyload, 3   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.as)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.3.not = icmp eq i64 %i.at, %umax
  br i1 %exitcond.3.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.at
  %i.av = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.at
  %i.aw = add i64 %.sroa.0.sroa.5.0.copyload, 4   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.av)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.4.not = icmp eq i64 %i.aw, %umax
  br i1 %exitcond.4.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.4

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.4: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ay)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.4, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.az, ptr noundef nonnull align 1 dereferenceable(160) %i.v, i64 160, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ba, ptr noundef nonnull align 8 dereferenceable(160) %i.q, i64 160, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bc, ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i64 160, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bf, ptr noundef nonnull align 8 dereferenceable(160) %i.u, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_28ExpiringProfileKeyCredentialE8generateB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([768 x i8]) align 8 captures(none) dereferenceable(768) initializes((0, 768)) %0, ptr noalias nofree noundef align 8 dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 1                ; 4 uses
  %i.e = alloca [32 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 1                ; 4 uses
  %i.i = alloca [160 x i8], align 8               ; 20 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [160 x i8], align 8               ; 4 uses
  %i.l = alloca [160 x i8], align 8               ; 4 uses
  %i.m = alloca [160 x i8], align 8               ; 4 uses
  %i.n = alloca [160 x i8], align 8               ; 4 uses
  %i.o = alloca [160 x i8], align 8               ; 4 uses
  %i.p = alloca [160 x i8], align 8               ; 4 uses
  %i.q = alloca [160 x i8], align 8               ; 9 uses
  %i.r = alloca [160 x i8], align 8               ; 4 uses
  %i.s = alloca [160 x i8], align 8               ; 4 uses
  %i.t = alloca [160 x i8], align 8               ; 4 uses
  %i.u = alloca [160 x i8], align 8               ; 4 uses
  %i.v = alloca [160 x i8], align 1               ; 6 uses
  %i.w = alloca [32 x i8], align 1                ; 5 uses
  %i.x = alloca [32 x i8], align 1                ; 5 uses
  %i.y = alloca [32 x i8], align 1                ; 5 uses
  %i.z = alloca [160 x i8], align 8               ; 2 uses
  %i.aa = alloca [160 x i8], align 8              ; 4 uses
  %i.ab = alloca [32 x i8], align 1               ; 6 uses
  %i.ac = alloca [2720 x i8], align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720) acquire, align 8, !noalias !250
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !250
  store ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, ptr %i.b, align 8, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !250
  store ptr %i.b, ptr %i.a, align 8, !noalias !250
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !250
  br label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit

_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2720) %i.ac, ptr noundef nonnull align 8 dereferenceable(2720) @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 960 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.z, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 160, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.aa, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsANtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6Scalarj5_INtB3_9ArrayLikeBO_E6createNCNvMs5_NtNtB7_6crypto11credentialsINtB2e_7KeyPairNtB2e_28ExpiringProfileKeyCredentialE8generate0EB7_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 1 captures(none) dereferenceable(160) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(160) %i.ag, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.s, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsL_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Add3add(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull align 8 dereferenceable(160) %i.ah, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.aj, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.l, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXsP_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Sub3sub(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.af)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.j, align 8 ; 6 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 6 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 8 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.0.sroa.6.0.copyload, i64 %.sroa.0.sroa.5.0.copyload) ; 3 uses
  %exitcond.not.not = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond.not.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit: ; preds = %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.am = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.an = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.am)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.1.not = icmp eq i64 %.sroa.0.sroa.6.0.copyload, %i.an
  br i1 %exitcond.1.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.an
  %i.ap = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.an
  %i.aq = add i64 %.sroa.0.sroa.5.0.copyload, 2   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ap)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.2.not = icmp eq i64 %i.aq, %umax
  br i1 %exitcond.2.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.aq
  %i.as = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.aq
  %i.at = add i64 %.sroa.0.sroa.5.0.copyload, 3   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.as)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.3.not = icmp eq i64 %i.at, %umax
  br i1 %exitcond.3.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.at
  %i.av = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.at
  %i.aw = add i64 %.sroa.0.sroa.5.0.copyload, 4   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.av)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.4.not = icmp eq i64 %i.aw, %umax
  br i1 %exitcond.4.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.4

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.4: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXso_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoRNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ay)
  call void @_RNvXsQ_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.thread: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.4, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.3, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.2, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit.1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEIBX_NtNtB1q_9ristretto14RistrettoPointEEINtB5_7ZipImplBW_B2b_E4nextCs807GXlIGG3x_7zkgroup.exit, %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.az, ptr noundef nonnull align 1 dereferenceable(160) %i.v, i64 160, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ba, ptr noundef nonnull align 8 dereferenceable(160) %i.q, i64 160, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bc, ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i64 160, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bf, ptr noundef nonnull align 8 dereferenceable(160) %i.u, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsdRrpXuHtjOb_16curve25519_dalek6windowINtB5_11LookupTableNtNtNtNtB7_7backend6serial12curve_models20ProjectiveNielsPointE6selectCs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((0, 160)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1280) %1, i8 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 17 uses
  %i.c = sext i8 %2 to i16                        ; 2 uses
  %i.d = ashr i16 %i.c, 7                         ; 3 uses
  %i.e = add nsw i16 %i.d, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(40) @82, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) @82, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) @82, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false), !alias.scope !255
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.o = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %i.p = insertelement <8 x i16> poison, i16 %i.d, i64 0
  %i.q = xor <8 x i16> %i.o, %i.p
  %i.r = shufflevector <8 x i16> %i.q, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.s = icmp eq <8 x i16> %i.r, <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1> ; 8 uses
  %i.t = extractelement <8 x i1> %i.s, i64 7
  %i.u = zext i1 %i.t to i8
  %i.v = tail call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.u) #27
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i8 noundef %i.v)
  %i.w = extractelement <8 x i1> %i.s, i64 6
  %i.x = zext i1 %i.w to i8
  %i.y = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.x) #27
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.i, i8 noundef %i.y)
  %i.z = extractelement <8 x i1> %i.s, i64 5
  %i.aa = zext i1 %i.z to i8
  %i.ab = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.aa) #27
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.j, i8 noundef %i.ab)
  %i.ac = extractelement <8 x i1> %i.s, i64 4
  %i.ad = zext i1 %i.ac to i8
  %i.ae = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.ad) #27
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.k, i8 noundef %i.ae)
  %i.af = extractelement <8 x i1> %i.s, i64 3
  %i.ag = zext i1 %i.af to i8
  %i.ah = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.ag) #27
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.l, i8 noundef %i.ah)
  %i.ai = extractelement <8 x i1> %i.s, i64 2
  %i.aj = zext i1 %i.ai to i8
  %i.ak = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.aj) #27
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.m, i8 noundef %i.ak)
  %i.al = extractelement <8 x i1> %i.s, i64 1
  %i.am = zext i1 %i.al to i8
  %i.an = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.am) #27
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.n, i8 noundef %i.an)
  %i.ao = extractelement <8 x i1> %i.s, i64 0
  %i.ap = zext i1 %i.ao to i8
  %i.aq = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.ap) #27
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1120
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ar, i8 noundef %i.aq)
  %i.as = trunc nsw i16 %i.d to i8
  %i.at = and i8 %i.as, 1
  %i.au = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.at) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !256
  call void @_RNvXsf_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsRNtB5_20ProjectiveNielsPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Neg3neg(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.b)
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.a, i8 noundef %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsdRrpXuHtjOb_16curve25519_dalek6windowINtB5_11LookupTableNtNtNtNtNtB7_7backend6vector4avx27edwards11CachedPointE6selectCs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 32 captures(none) dereferenceable(160) initializes((0, 160)) %0, ptr noalias nofree noundef readonly align 32 captures(address, read_provenance) dereferenceable(1280) %1, i8 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 32              ; 4 uses
  %i.b = alloca [160 x i8], align 32              ; 14 uses
  %i.c = sext i8 %2 to i16                        ; 2 uses
  %i.d = ashr i16 %i.c, 7                         ; 3 uses
  %i.e = add nsw i16 %i.d, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvXNvXse_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtNtBg_6traits8Identity8identityB1e_NtB2_17___Impl_identity__14__impl_identity(ptr noalias nofree noundef nonnull align 32 captures(none) dereferenceable(160) %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.l = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %i.m = insertelement <8 x i16> poison, i16 %i.d, i64 0
  %i.n = xor <8 x i16> %i.l, %i.m
  %i.o = shufflevector <8 x i16> %i.n, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.p = icmp eq <8 x i16> %i.o, <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1> ; 8 uses
  %i.q = extractelement <8 x i1> %i.p, i64 7
  %i.r = zext i1 %i.q to i8
  %i.s = tail call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.r) #27
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %1, i8 noundef %i.s)
  %i.t = extractelement <8 x i1> %i.p, i64 6
  %i.u = zext i1 %i.t to i8
  %i.v = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.u) #27
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.f, i8 noundef %i.v)
  %i.w = extractelement <8 x i1> %i.p, i64 5
  %i.x = zext i1 %i.w to i8
  %i.y = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.x) #27
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.g, i8 noundef %i.y)
  %i.z = extractelement <8 x i1> %i.p, i64 4
  %i.aa = zext i1 %i.z to i8
  %i.ab = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.aa) #27
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.h, i8 noundef %i.ab)
  %i.ac = extractelement <8 x i1> %i.p, i64 3
  %i.ad = zext i1 %i.ac to i8
  %i.ae = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.ad) #27
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.i, i8 noundef %i.ae)
  %i.af = extractelement <8 x i1> %i.p, i64 2
end_hunk_0
