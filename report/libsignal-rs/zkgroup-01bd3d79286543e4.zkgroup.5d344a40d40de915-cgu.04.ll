Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/zkgroup-01bd3d79286543e4.zkgroup.5d344a40d40de915-cgu.04?download=true
inline.NumInlined: 264
inline.NumDeleted: 140
begin_hunk_0_@_RNvMs0_NtNtCs807GXlIGG3x_7zkgroup3api13server_paramsNtB5_18ServerSecretParams8generate:bb.a
  %i.l = alloca [768 x i8], align 8               ; 4 uses
  %i.m = alloca [768 x i8], align 8               ; 4 uses
  %i.n = alloca [800 x i8], align 8               ; 4 uses
  %i.o = alloca [736 x i8], align 8               ; 4 uses
  %i.p = alloca [192 x i8], align 8               ; 5 uses
  %i.q = alloca [736 x i8], align 8               ; 4 uses
  %i.r = alloca [736 x i8], align 8               ; 4 uses
  %i.s = alloca [224 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho3new(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_14AuthCredentialE8generateB9_(ptr noalias nofree noundef nonnull sret([736 x i8]) align 8 captures(none) dereferenceable(736) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.s)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.d, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false), !noalias !511
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.s, ptr nonnull align 1 %i.e, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.s) #16, !srcloc !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.u)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_20ProfileKeyCredentialE8generateB9_(ptr noalias nofree noundef nonnull sret([736 x i8]) align 8 captures(none) dereferenceable(736) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.s)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !512
  invoke void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho10get_scalar(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.s)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) @6, i64 160, i1 false), !noalias !512
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  invoke void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.v, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.b)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.p, ptr noundef nonnull align 1 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_17ReceiptCredentialE8generateB9_(ptr noalias nofree noundef nonnull sret([736 x i8]) align 8 captures(none) dereferenceable(736) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.s)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_13PniCredentialE8generateB9_(ptr noalias nofree noundef nonnull sret([800 x i8]) align 8 captures(none) dereferenceable(800) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.s)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_28ExpiringProfileKeyCredentialE8generateB9_(ptr noalias nofree noundef nonnull sret([768 x i8]) align 8 captures(none) dereferenceable(768) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.s)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_21AuthCredentialWithPniE8generateB9_(ptr noalias nofree noundef nonnull sret([768 x i8]) align 8 captures(none) dereferenceable(768) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.s)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvMNtCs17t5S1clqUH_12zkcredential11credentialsNtB2_20CredentialPrivateKey8generate(ptr noalias nofree noundef nonnull sret([512 x i8]) align 8 captures(none) dereferenceable(512) %i.i, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.g)
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCs17t5S1clqUH_12zkcredential11credentialsNtB2_20CredentialPrivateKey10public_key(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(512) %i.i, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.k, ptr noundef nonnull align 8 dereferenceable(512) %i.i, i64 512, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.w, ptr noundef nonnull align 8 dereferenceable(1120) %i.h, i64 1120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvMs8_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_17ServerRootKeyPair8generate(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.j, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.f)
          to label %bb.l unwind label %bb.b

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(736) %i.x, ptr noundef nonnull align 8 dereferenceable(736) %i.r, i64 736, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(736) %i.y, ptr noundef nonnull align 8 dereferenceable(736) %i.q, i64 736, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.z, ptr noundef nonnull align 8 dereferenceable(192) %i.p, i64 192, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(736) %i.aa, ptr noundef nonnull align 8 dereferenceable(736) %i.o, i64 736, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %i.ab, ptr noundef nonnull align 8 dereferenceable(800) %i.n, i64 800, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %0, ptr noundef nonnull align 8 dereferenceable(768) %i.m, i64 768, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %i.ac, ptr noundef nonnull align 8 dereferenceable(768) %i.l, i64 768, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1632) %i.ad, ptr noundef nonnull align 8 dereferenceable(1632) %i.k, i64 1632, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ae, ptr noundef nonnull align 8 dereferenceable(192) %i.j, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.s, ptr nonnull align 1 %i.a, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.s) #16, !srcloc !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.m:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs807GXlIGG3x_7zkgroup3api7avatars24avatar_upload_credentialNtB5_21CmWellFormednessProof9statement(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsfFEWD1QhNwv_6poksho9statementNtB2_9Statement3new(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.a)
  invoke void @_RNvMNtCsfFEWD1QhNwv_6poksho9statementNtB2_9Statement3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @41, i64 noundef 1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho9statement9StatementECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(168) %i.a) #15
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtCsfFEWD1QhNwv_6poksho9statementNtB2_9Statement3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @42, i64 noundef 3)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtCsfFEWD1QhNwv_6poksho9statementNtB2_9Statement3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @43, i64 noundef 2)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs1_NtNtCs807GXlIGG3x_7zkgroup3api13server_paramsNtB5_18ServerPublicParams16verify_signature(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(3360) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(64) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(160) %i.b, i64 160, i1 false), !noalias !520
  %i.c = call noundef i8 @_RNvNtCsfFEWD1QhNwv_6poksho4sign16verify_signature(ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(64) %3, i64 noundef 64, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !519
  %.not.i = icmp ne i8 %i.c, -1
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs807GXlIGG3x_7zkgroup3api13server_paramsNtB5_18ServerPublicParams26receive_receipt_credential(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([392 x i8]) align 8 captures(none) dereferenceable(392) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(3360) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %3) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [368 x i8], align 8           ; 5 uses
  %i.a = alloca [320 x i8], align 8               ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = urem i64 %i.d, 86400
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 544 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %i.n, i64 160, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 dereferenceable(160) %i.o, i64 160, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.r = call noundef zeroext i1 @_RNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto6proofsNtB5_30ReceiptCredentialIssuanceProof6verify(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.r, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 1, ptr %0, align 8
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto26receipt_credential_requestNtB2_7KeyPair34decrypt_blinded_receipt_credential(ptr noalias nofree noundef nonnull sret([352 x i8]) align 8 captures(none) dereferenceable(352) %.sroa.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %i.q)
  %.sroa.0.352..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.352..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.s, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.0, i64 368, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs807GXlIGG3x_7zkgroup3api13server_paramsNtB5_18ServerPublicParams38create_receipt_credential_presentation(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([856 x i8]) align 8 captures(none) dereferenceable(856) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(3360) %1, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(384) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [824 x i8], align 8               ; 4 uses
  %i.d = alloca [224 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho3new(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 85, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 640
  invoke void @_RNvMs3_NtNtCs807GXlIGG3x_7zkgroup6crypto6proofsNtB5_34ReceiptCredentialPresentationProof3new(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(none) dereferenceable(824) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !546
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.d, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.d) #16, !srcloc !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(824) %i.c, i64 824, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.l = load <2 x i64>, ptr %i.h, align 8
  store <2 x i64> %i.l, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !547
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.d, ptr nonnull align 1 %i.a, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.d) #16, !srcloc !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs807GXlIGG3x_7zkgroup3api13server_paramsNtB5_18ServerPublicParams39receive_expiring_profile_key_credential(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([416 x i8]) align 8 captures(none) dereferenceable(416) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(3360) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(544) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [400 x i8], align 8           ; 6 uses
  %i.a = alloca [640 x i8], align 8               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.h, ptr noundef nonnull align 8 dereferenceable(160) %i.g, i64 160, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull align 8 dereferenceable(160) %i.i, i64 160, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 808
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull align 8 dereferenceable(160) %i.k, i64 160, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 536
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 4 uses
  %i.p = call noundef zeroext i1 @_RNvMs_NtNtCs807GXlIGG3x_7zkgroup6crypto6proofsNtB4_41ExpiringProfileKeyCredentialIssuanceProof6verify(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %i.m, i64 noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.q = urem i64 %i.o, 86400
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 %4)
  %i.t = add i64 %i.s, -691200
  %or.cond = icmp ult i64 %i.t, -604800
  br i1 %or.cond, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto30profile_key_credential_requestNtB2_7KeyPair47decrypt_blinded_expiring_profile_key_credential(ptr noalias nofree noundef nonnull sret([352 x i8]) align 8 captures(none) dereferenceable(352) %.sroa.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %i.m)
  %.sroa.0.384..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.384..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.0.352..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.352..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.v, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.0, i64 400, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %i.o, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs807GXlIGG3x_7zkgroup3api13server_paramsNtB5_18ServerPublicParams41create_receipt_credential_request_context(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([560 x i8]) align 8 captures(none) dereferenceable(560) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(3360) %1, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 1                ; 4 uses
  %i.d = alloca [352 x i8], align 8               ; 4 uses
  %i.e = alloca [192 x i8], align 8               ; 5 uses
  %i.f = alloca [224 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6common3shoNtB2_3Sho3new(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 87, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto26receipt_credential_requestNtB2_7KeyPair8generate(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.f)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !572
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.f, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.f) #16, !srcloc !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  invoke void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto26receipt_credential_requestNtB2_7KeyPair7encrypt(ptr noalias nofree noundef nonnull sret([352 x i8]) align 8 captures(none) dereferenceable(352) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.e, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.f)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.e, i64 192, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(352) %i.d, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !573
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.f, ptr nonnull align 1 %i.a, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.f) #16, !srcloc !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs807GXlIGG3x_7zkgroup3api13server_paramsNtB5_18ServerPublicParams45create_profile_key_credential_request_context(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([968 x i8]) align 8 captures(none) dereferenceable(968) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(3360) %1, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %3, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [704 x i8], align 8               ; 3 uses
  %i.d = alloca [352 x i8], align 8               ; 4 uses
end_hunk_0
