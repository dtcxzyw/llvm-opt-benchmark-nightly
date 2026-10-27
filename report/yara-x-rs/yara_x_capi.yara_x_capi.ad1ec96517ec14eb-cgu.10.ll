Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_capi.yara_x_capi.ad1ec96517ec14eb-cgu.10?download=true
inline.NumInlined: 300
inline.NumDeleted: 165
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned17varint_decode_u32NtNtNtB6_2de4read11SliceReaderECseRvVZ55ETAB_11yara_x_capi:bb.a
  ], !prof !19

bb.e:                                             ; preds = %bb.c
  %i.e = zext i8 %i.c to i32
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit36

bb.f:                                             ; preds = %bb.d
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminantmECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 2, i8 noundef 12) #18
  br label %bb.j

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit35: ; preds = %bb.d
  %.sroa.016.0.copyload = load i16, ptr %i.b, align 1 ; 2 uses
  %i.f = tail call i16 @llvm.bswap.i16(i16 %.sroa.016.0.copyload)
  %.sroa.03.0 = select i1 %2, i16 %i.f, i16 %.sroa.016.0.copyload
  %i.g = zext i16 %.sroa.03.0 to i32
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit36

bb.g:                                             ; preds = %bb.d
  %.sroa.018.0.copyload = load i32, ptr %i.b, align 1 ; 2 uses
  %i.h = tail call i32 @llvm.bswap.i32(i32 %.sroa.018.0.copyload)
  %spec.select = select i1 %2, i32 %i.h, i32 %.sroa.018.0.copyload
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit36

bb.h:                                             ; preds = %bb.d
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminantmECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 2, i8 noundef 3) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminantmECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 2, i8 noundef 4) #18
  br label %bb.j

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit36: ; preds = %bb.g, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit35, %bb.e
  %.sroa.020.0 = phi i64 [ 1, %bb.e ], [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit35 ], [ 5, %bb.g ] ; 2 uses
  %.sroa.09.0 = phi i32 [ %i.e, %bb.e ], [ %i.g, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit35 ], [ %spec.select, %bb.g ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.020.0
  %.sroa.3.0.i38 = sub nuw i64 %.val37, %.sroa.020.0
  store ptr %i.i, ptr %1, align 8, !alias.scope !20, !captures !7
  store i64 %.sroa.3.0.i38, ptr %i.a, align 8, !alias.scope !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.09.0, ptr %i.j, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit36, %bb.f, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned17varint_decode_u64NtNtNtB6_2de4read11SliceReaderECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val48 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not.i.i = icmp samesign ult i64 %.val48, 9
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27deserialize_varint_cold_u64NtNtNtB6_2de4read11SliceReaderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) #18
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 1 ; 3 uses
  %i.c = load i8, ptr %.val, align 1, !noundef !4 ; 3 uses
  %i.d = icmp ult i8 %i.c, -5
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.c, label %bb.f [
    i8 -5, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit44
    i8 -4, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit45
    i8 -3, label %bb.g
    i8 -2, label %bb.h
  ], !prof !8

bb.e:                                             ; preds = %bb.c
  %i.e = zext i8 %i.c to i64
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit47

bb.f:                                             ; preds = %bb.d
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminantyECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 2, i8 noundef 12) #18
  br label %bb.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit44: ; preds = %bb.d
  %.sroa.019.0.copyload = load i16, ptr %i.b, align 1 ; 2 uses
  %i.f = tail call i16 @llvm.bswap.i16(i16 %.sroa.019.0.copyload)
  %.sroa.03.0 = select i1 %2, i16 %i.f, i16 %.sroa.019.0.copyload
  %i.g = zext i16 %.sroa.03.0 to i64
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit47

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit45: ; preds = %bb.d
  %.sroa.021.0.copyload = load i32, ptr %i.b, align 1 ; 2 uses
  %i.h = tail call i32 @llvm.bswap.i32(i32 %.sroa.021.0.copyload)
  %.sroa.09.0 = select i1 %2, i32 %i.h, i32 %.sroa.021.0.copyload
  %i.i = zext i32 %.sroa.09.0 to i64
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit47

bb.g:                                             ; preds = %bb.d
  %.sroa.023.0.copyload = load i64, ptr %i.b, align 1 ; 2 uses
  %i.j = tail call i64 @llvm.bswap.i64(i64 %.sroa.023.0.copyload)
  %spec.select = select i1 %2, i64 %i.j, i64 %.sroa.023.0.copyload
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit47

bb.h:                                             ; preds = %bb.d
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminantyECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 2, i8 noundef 4) #18
  br label %bb.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit47: ; preds = %bb.g, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit45, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit44, %bb.e
  %.sroa.027.0 = phi i64 [ 1, %bb.e ], [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit44 ], [ 5, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit45 ], [ 9, %bb.g ] ; 2 uses
  %.sroa.016.0 = phi i64 [ %i.e, %bb.e ], [ %i.g, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit44 ], [ %i.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit45 ], [ %spec.select, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.027.0
  %.sroa.3.0.i53 = sub nuw i64 %.val48, %.sroa.027.0
  store ptr %i.k, ptr %1, align 8, !alias.scope !23, !captures !7
  store i64 %.sroa.3.0.i53, ptr %i.a, align 8, !alias.scope !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.016.0, ptr %i.l, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit47, %bb.f, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned19varint_decode_usizeNtNtNtB6_2de4read11SliceReaderECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val49 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not.i.i = icmp samesign ult i64 %.val49, 9
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned29deserialize_varint_cold_usizeNtNtNtB6_2de4read11SliceReaderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) #18
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 1 ; 3 uses
  %i.c = load i8, ptr %.val, align 1, !noundef !4 ; 3 uses
  %i.d = icmp ult i8 %i.c, -5
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.c, label %bb.f [
    i8 -5, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit45
    i8 -4, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit46
    i8 -3, label %bb.g
    i8 -2, label %bb.h
  ], !prof !8

bb.e:                                             ; preds = %bb.c
  %i.e = zext i8 %i.c to i64
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit48

bb.f:                                             ; preds = %bb.d
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminantjECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 5, i8 noundef 12) #18
  br label %bb.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit45: ; preds = %bb.d
  %.sroa.020.0.copyload = load i16, ptr %i.b, align 1 ; 2 uses
  %i.f = tail call i16 @llvm.bswap.i16(i16 %.sroa.020.0.copyload)
  %.sroa.03.0 = select i1 %2, i16 %i.f, i16 %.sroa.020.0.copyload
  %i.g = zext i16 %.sroa.03.0 to i64
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit48

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit46: ; preds = %bb.d
  %.sroa.022.0.copyload = load i32, ptr %i.b, align 1 ; 2 uses
  %i.h = tail call i32 @llvm.bswap.i32(i32 %.sroa.022.0.copyload)
  %.sroa.09.0 = select i1 %2, i32 %i.h, i32 %.sroa.022.0.copyload
  %i.i = zext i32 %.sroa.09.0 to i64
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit48

bb.g:                                             ; preds = %bb.d
  %.sroa.024.0.copyload = load i64, ptr %i.b, align 1 ; 2 uses
  %i.j = tail call i64 @llvm.bswap.i64(i64 %.sroa.024.0.copyload)
  %spec.select = select i1 %2, i64 %i.j, i64 %.sroa.024.0.copyload
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit48

bb.h:                                             ; preds = %bb.d
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminantjECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 5, i8 noundef 4) #18
  br label %bb.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit48: ; preds = %bb.g, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit46, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit45, %bb.e
  %.sroa.028.0 = phi i64 [ 1, %bb.e ], [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit45 ], [ 5, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit46 ], [ 9, %bb.g ] ; 2 uses
  %.sroa.019.0 = phi i64 [ %i.e, %bb.e ], [ %i.g, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit45 ], [ %i.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit46 ], [ %spec.select, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.028.0
  %.sroa.3.0.i54 = sub nuw i64 %.val49, %.sroa.028.0
  store ptr %i.k, ptr %1, align 8, !alias.scope !26, !captures !7
  store i64 %.sroa.3.0.i54, ptr %i.a, align 8, !alias.scope !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.019.0, ptr %i.l, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseRvVZ55ETAB_11yara_x_capi.exit48, %bb.f, %bb.h
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27deserialize_varint_cold_u16NtNtNtB6_2de4read11SliceReaderECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.b, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !33, !noundef !4 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.533.0..sroa_idx, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !alias.scope !33, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !34
  store ptr %i.g, ptr %1, align 8, !alias.scope !33, !captures !7
  store i64 %i.h, ptr %i.c, align 8, !alias.scope !33
  %i.i = load i8, ptr %i.b, align 1, !noundef !4  ; 3 uses
  %i.j = icmp ult i8 %i.i, -5
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.i, label %bb.f [
    i8 -5, label %bb.g
    i8 -4, label %bb.h
    i8 -3, label %bb.i
    i8 -2, label %bb.j
  ], !prof !6

bb.e:                                             ; preds = %bb.c
  %i.k = zext i8 %i.i to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.k, ptr %i.l, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminanttECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 1, i8 noundef 12) #18
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.m = icmp ult i64 %i.d, 3
  br i1 %i.m, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.d
  call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminanttECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 1, i8 noundef 2) #18
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminanttECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 1, i8 noundef 3) #18
  br label %bb.m

bb.j:                                             ; preds = %bb.d
  call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminanttECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef 1, i8 noundef 4) #18
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.n = sub nuw nsw i64 3, %i.d
  store i8 0, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.553.0..sroa_idx, align 8
  br label %.sink.split

bb.l:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.p = add nsw i64 %i.d, -3
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull %i.a, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !36
  store ptr %i.o, ptr %1, align 8, !alias.scope !35, !captures !7
  store i64 %i.p, ptr %i.c, align 8, !alias.scope !35
  %.sroa.03.0.copyload = load i16, ptr %i.a, align 2 ; 2 uses
  %i.q = call i16 @llvm.bswap.i16(i16 %.sroa.03.0.copyload)
  %.sroa.0.0 = select i1 %2, i16 %i.q, i16 %.sroa.03.0.copyload
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.0.0, ptr %i.r, align 2
  store i8 -1, ptr %0, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned27invalid_varint_discriminanttECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 3)) %0, i8 noundef range(i8 0, 13) %1, i8 noundef range(i8 0, 13) %2) unnamed_addr #2 {
bb.a:
  store i8 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %2, ptr %.sroa.5.0..sroa_idx, align 2
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs14_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromENtBc_11Deserialize11deserializeNtB3_14NonZeroVisitorNtBc_7Visitor9visit_u32NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.c, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.d, align 8
  store i8 1, ptr %i.b, align 8
  call void @_RNvYNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error13invalid_valueCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdENtBb_7Visitor9visit_seqINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB3r_12SerdeDecoderpENtBb_12Deserializer17deserialize_tuple6AccessINtNtNtB3x_2de7decoder11DecoderImplNtNtB5w_4read11SliceReaderNtNtB3x_6config13ConfigurationuEEECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8
  %..i = tail call noundef range(i64 0, 1048577) i64 @llvm.umin.i64(i64 %2, i64 262144) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.m = icmp samesign ule i64 %..i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB9_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_tupleINtB3_6AccessINtNtNtBf_2de7decoder11DecoderImplNtNtB2L_4read11SliceReaderNtNtBf_6config13ConfigurationuEENtB1r_9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdEECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvYINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtBc_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_tuple6AccessINtNtNtBi_2de7decoder11DecoderImplNtNtB2I_4read11SliceReaderNtNtBi_6config13ConfigurationuEENtB1u_9SeqAccess12next_elementNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdECseRvVZ55ETAB_11yara_x_capi.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdEECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %common.resume unwind label %bb.o

_RINvYINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtBc_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_tuple6AccessINtNtNtBi_2de7decoder11DecoderImplNtNtB2I_4read11SliceReaderNtNtBi_6config13ConfigurationuEENtB1u_9SeqAccess12next_elementNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %bb.d
  %i.s = load i8, ptr %i.b, align 8, !range !11, !noundef !4
  %.not = icmp eq i8 %i.s, -1
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RINvYINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtBc_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_tuple6AccessINtNtNtBi_2de7decoder11DecoderImplNtNtB2I_4read11SliceReaderNtNtBi_6config13ConfigurationuEENtB1u_9SeqAccess12next_elementNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdECseRvVZ55ETAB_11yara_x_capi.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdEECseRvVZ55ETAB_11yara_x_capi.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.r, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdEECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.n

bb.i:                                             ; preds = %_RINvYINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtBc_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_tuple6AccessINtNtNtBi_2de7decoder11DecoderImplNtNtB2I_4read11SliceReaderNtNtBi_6config13ConfigurationuEENtB1u_9SeqAccess12next_elementNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdECseRvVZ55ETAB_11yara_x_capi.exit
  %i.v = load i32, ptr %i.p, align 4, !range !12, !noundef !4
  %i.w = trunc nuw i32 %i.v to i1
  br i1 %i.w, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %i.q, align 8
  %i.y = load i64, ptr %i.o, align 8, !alias.scope !39, !noundef !4 ; 3 uses
  %i.z = load i64, ptr %i.c, align 8, !range !13, !alias.scope !39, !noundef !4
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %bb.m unwind label %bb.e

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.ac = load ptr, ptr %i.n, align 8, !alias.scope !39, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.y
  store i32 %i.x, ptr %i.ad, align 4
  %i.ae = add i64 %i.y, 1
  store i64 %i.ae, ptr %i.o, align 8, !alias.scope !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdEECseRvVZ55ETAB_11yara_x_capi.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCs7gfv9tzbXmh_6yara_x8compiler7IdentIdENtBb_7Visitor9visit_seqINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB3l_12SerdeDecoderpENtBb_12Deserializer17deserialize_tuple6AccessINtNtNtB3r_2de7decoder11DecoderImplNtNtB5q_4read11SliceReaderNtNtB3r_6config13ConfigurationuEEECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8
  %..i = tail call noundef range(i64 0, 1048577) i64 @llvm.umin.i64(i64 %2, i64 262144) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.m = icmp samesign ule i64 %..i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
end_hunk_0
