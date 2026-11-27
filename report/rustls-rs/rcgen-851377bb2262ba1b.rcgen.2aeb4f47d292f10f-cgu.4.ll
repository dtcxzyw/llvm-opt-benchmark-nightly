Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rcgen-851377bb2262ba1b.rcgen.2aeb4f47d292f10f-cgu.4?download=true
inline.NumInlined: 179
inline.NumDeleted: 88
begin_hunk_0_@_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapNtNtCs3GsnHLZgB3f_5rcgen11certificate6DnTypeNtBR_7DnValueNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6insertBR_:bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.o:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3GsnHLZgB3f_5rcgen11certificate6DnTypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #17
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCs3GsnHLZgB3f_5rcgen3crlNtB5_27CrlIssuingDistributionPoint9write_der(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMNtCsREDRWlgvuQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCNvMs2_NtCs3GsnHLZgB3f_5rcgen3crlNtB19_27CrlIssuingDistributionPoint9write_der0EB1b_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs3GsnHLZgB3f_5rcgen3crlNtB5_17RevokedCertParams9write_der(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMNtCsREDRWlgvuQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCNvMs3_NtCs3GsnHLZgB3f_5rcgen3crlNtB19_17RevokedCertParams9write_der0EB1b_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs3GsnHLZgB3f_5rcgen9ring_like16ecdsa_from_pkcs8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr nofree noundef nonnull readnone captures(none) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair10from_pkcs8(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.k, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113
  store i64 0, ptr %i.c, align 8, !noalias !113
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !113
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.m, align 8, !noalias !113
  store ptr %i.c, ptr %i.b, align 8, !noalias !113
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @58, ptr %i.n, align 8, !noalias !113
  %i.o = invoke noundef zeroext i1 @_RNvXs3_NtCs222MioR9bx1_9aws_lc_rs5errorNtB5_11KeyRejectedNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !114

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3GsnHLZgB3f_5rcgen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %bb.g unwind label %bb.f, !noalias !114

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.e, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCs222MioR9bx1_9aws_lc_rs5error11KeyRejectedNtB5_12SpecToString14spec_to_stringCs3GsnHLZgB3f_5rcgen.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #18
          to label %.noexc.i unwind label %bb.c, !noalias !114

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !114
  unreachable

bb.g:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.p

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCs222MioR9bx1_9aws_lc_rs5error11KeyRejectedNtB5_12SpecToString14spec_to_stringCs3GsnHLZgB3f_5rcgen.exit: ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.r, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCs222MioR9bx1_9aws_lc_rs5error11KeyRejectedNtB5_12SpecToString14spec_to_stringCs3GsnHLZgB3f_5rcgen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs3GsnHLZgB3f_5rcgen9ring_like26ecdsa_from_private_key_der(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair20from_private_key_der(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.k, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !118
  store i64 0, ptr %i.c, align 8, !noalias !118
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !118
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.m, align 8, !noalias !118
  store ptr %i.c, ptr %i.b, align 8, !noalias !118
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @58, ptr %i.n, align 8, !noalias !118
  %i.o = invoke noundef zeroext i1 @_RNvXs3_NtCs222MioR9bx1_9aws_lc_rs5errorNtB5_11KeyRejectedNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !119

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3GsnHLZgB3f_5rcgen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %bb.g unwind label %bb.f, !noalias !119

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.e, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCs222MioR9bx1_9aws_lc_rs5error11KeyRejectedNtB5_12SpecToString14spec_to_stringCs3GsnHLZgB3f_5rcgen.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #18
          to label %.noexc.i unwind label %bb.c, !noalias !119

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !119
  unreachable

bb.g:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.p

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCs222MioR9bx1_9aws_lc_rs5error11KeyRejectedNtB5_12SpecToString14spec_to_stringCs3GsnHLZgB3f_5rcgen.exit: ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.r, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCs222MioR9bx1_9aws_lc_rs5error11KeyRejectedNtB5_12SpecToString14spec_to_stringCs3GsnHLZgB3f_5rcgen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtCs3GsnHLZgB3f_5rcgen9ring_like31rsa_key_pair_public_modulus_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs3rsa3keyNtB5_7KeyPair18public_modulus_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, 4785070309113859) i64 @_RNvXNtNtCsj6eKBz9Db1c_4core4char6decodeINtB2_11DecodeUtf16INtNtNtNtB6_4iter8adapters3map3MapINtNtNtB6_5slice4iter11ChunksExacthENCNvMss_NtCs3GsnHLZgB3f_5rcgen6stringNtB2a_9BmpString12from_utf16be0EENtNtNtB11_6traits8iterator8Iterator4nextB2c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !range !132, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2
  store i16 0, ptr %i.a, align 8
  %i.e = trunc nuw i16 %i.b to i1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !134, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !134, !noundef !4 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.i, %i.g
  br i1 %.not.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter11ChunksExacthENCNvMss_NtCs3GsnHLZgB3f_5rcgen6stringNtB1E_9BmpString12from_utf16be0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !alias.scope !134, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  %i.l = sub nuw i64 %i.g, %i.i
  store ptr %i.k, ptr %0, align 8, !alias.scope !134, !captures !135
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  switch i64 %i.i, label %bb.f [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18, !noalias !137
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18, !noalias !137
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.m = load i16, ptr %i.j, align 1, !alias.scope !136, !noalias !133
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.sroa.020.0 = phi i16 [ %i.n, %bb.f ], [ %i.d, %bb.a ] ; 7 uses
  %i.o = and i16 %.sroa.020.0, -2048
  %or.cond = icmp eq i16 %i.o, -10240
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.428.4.insert.ext = zext i16 %.sroa.020.0 to i64
  %.sroa.428.4.insert.shift = shl nuw nsw i64 %.sroa.428.4.insert.ext, 16
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter11ChunksExacthENCNvMss_NtCs3GsnHLZgB3f_5rcgen6stringNtB1E_9BmpString12from_utf16be0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

bb.i:                                             ; preds = %bb.g
  %i.p = icmp samesign ugt i16 %.sroa.020.0, -9217
  br i1 %i.p, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !139, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !139, !noundef !4 ; 4 uses
  %.not.i.i41 = icmp ugt i64 %i.t, %i.r
  br i1 %.not.i.i41, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %0, align 8, !alias.scope !139, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  %i.w = sub nuw i64 %i.r, %i.t
  store ptr %i.v, ptr %0, align 8, !alias.scope !139, !captures !135
  store i64 %i.w, ptr %i.q, align 8, !alias.scope !139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  switch i64 %i.t, label %bb.o [
    i64 0, label %bb.l
    i64 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18, !noalias !141
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18, !noalias !141
  unreachable

bb.n:                                             ; preds = %bb.i
  %.sroa.430.2.insert.ext = zext i16 %.sroa.020.0 to i64
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter11ChunksExacthENCNvMss_NtCs3GsnHLZgB3f_5rcgen6stringNtB1E_9BmpString12from_utf16be0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

bb.o:                                             ; preds = %bb.k
  %i.x = load i16, ptr %i.u, align 1, !alias.scope !140, !noalias !138
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x) ; 3 uses
  %i.z = add i16 %i.y, 8192
  %or.cond1 = icmp ult i16 %i.z, -1024
  br i1 %or.cond1, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.j
  %.sroa.436.2.insert.ext = zext i16 %.sroa.020.0 to i64
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter11ChunksExacthENCNvMss_NtCs3GsnHLZgB3f_5rcgen6stringNtB1E_9BmpString12from_utf16be0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

bb.q:                                             ; preds = %bb.o
  store i16 1, ptr %i.a, align 8
  store i16 %i.y, ptr %i.c, align 2
  %.sroa.438.2.insert.ext = zext i16 %.sroa.020.0 to i64
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter11ChunksExacthENCNvMss_NtCs3GsnHLZgB3f_5rcgen6stringNtB1E_9BmpString12from_utf16be0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

bb.r:                                             ; preds = %bb.o
  %i.aa = and i16 %.sroa.020.0, 1023
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = and i16 %i.y, 1023
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ab, 26
  %i.af = shl nuw nsw i64 %i.ad, 16
  %.sroa.440.4.insert.ext = add nuw nsw i64 %i.ae, 4294967296
  %.sroa.440.4.insert.shift = or disjoint i64 %.sroa.440.4.insert.ext, %i.af
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter11ChunksExacthENCNvMss_NtCs3GsnHLZgB3f_5rcgen6stringNtB1E_9BmpString12from_utf16be0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter11ChunksExacthENCNvMss_NtCs3GsnHLZgB3f_5rcgen6stringNtB1E_9BmpString12from_utf16be0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit: ; preds = %bb.b, %bb.n, %bb.r, %bb.p, %bb.q, %bb.h
  %.sroa.7.sroa.0.0 = phi i64 [ %.sroa.430.2.insert.ext, %bb.n ], [ %.sroa.438.2.insert.ext, %bb.q ], [ %.sroa.440.4.insert.shift, %bb.r ], [ %.sroa.436.2.insert.ext, %bb.p ], [ %.sroa.428.4.insert.shift, %bb.h ], [ 0, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %bb.n ], [ 1, %bb.q ], [ 0, %bb.r ], [ 1, %bb.p ], [ 0, %bb.h ], [ 2, %bb.b ]
  %.sroa.7.0.insert.ext = shl nuw nsw i64 %.sroa.7.sroa.0.0, 16
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.ext, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaKJjC64KgbL_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs3GsnHLZgB3f_5rcgen(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCsaKJjC64KgbL_3std3sys5stdio4unix6StderrNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCs3GsnHLZgB3f_5rcgen(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3GsnHLZgB3f_5rcgen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3GsnHLZgB3f_5rcgen.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3GsnHLZgB3f_5rcgen.exit.i
    i64 1, label %bb.e
  ], !prof !10

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3GsnHLZgB3f_5rcgen.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !144
  store i8 3, ptr %i.a, align 8, !alias.scope !144
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3GsnHLZgB3f_5rcgen.exit.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3GsnHLZgB3f_5rcgen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3GsnHLZgB3f_5rcgen.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3GsnHLZgB3f_5rcgen.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3GsnHLZgB3f_5rcgen.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3GsnHLZgB3f_5rcgen.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_5Debug3fmtCs3GsnHLZgB3f_5rcgen(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairNtB6_5Debug3fmtCs3GsnHLZgB3f_5rcgen(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB2_12EcdsaKeyPairNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairNtB6_5Debug3fmtCs3GsnHLZgB3f_5rcgen(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCs222MioR9bx1_9aws_lc_rs3rsa3keyNtB5_7KeyPairNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCs3GsnHLZgB3f_5rcgen(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs3GsnHLZgB3f_5rcgen(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.c = icmp eq ptr %.promoted, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8
  tail call void @_RNvXCshEiLVZluVSb_7zeroizehNtB2_7Zeroize7zeroizeCs3GsnHLZgB3f_5rcgen(ptr noalias nofree noundef nonnull dereferenceable(1) %i.d)
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs6_NtNtCs222MioR9bx1_9aws_lc_rs3rsa9signatureNtB5_20RsaSignatureEncodingNtB5_11RsaEncoding8encoding(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCs3GsnHLZgB3f_5rcgen8key_pairNtCseO5Jl7W60Eg_16rustls_pki_types18PrivatePkcs8KeyDerINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_7KeyPairE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs0_NtCs3GsnHLZgB3f_5rcgen8key_pairNtB5_7KeyPair13serialize_der(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3GsnHLZgB3f_5rcgen8key_pair7KeyPairEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %1) #17
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3GsnHLZgB3f_5rcgen8key_pair7KeyPairEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %1)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtCs3GsnHLZgB3f_5rcgen8key_pairNtCseO5Jl7W60Eg_16rustls_pki_types13PrivateKeyDerINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_7KeyPairE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  invoke void @_RNvMs0_NtCs3GsnHLZgB3f_5rcgen8key_pairNtB5_7KeyPair13serialize_der(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %_RNvXs7_NtCs3GsnHLZgB3f_5rcgen8key_pairNtCseO5Jl7W60Eg_16rustls_pki_types18PrivatePkcs8KeyDerINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_7KeyPairE4from.exit unwind label %bb.b, !noalias !149

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3GsnHLZgB3f_5rcgen8key_pair7KeyPairEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %1) #17
          to label %bb.d unwind label %bb.c, !noalias !149

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
