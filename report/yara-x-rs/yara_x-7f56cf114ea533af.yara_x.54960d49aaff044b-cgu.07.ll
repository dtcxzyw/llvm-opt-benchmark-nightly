Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.07?download=true
inline.NumInlined: 4768
inline.NumDeleted: 1854
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTTReNtCsfF8zpZz1lvn_13yara_x_parser4SpanEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs7gfv9tzbXmh_6yara_x:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTTjjEAyj100_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BW_NtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [2064 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -2064
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRTjjEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2064) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTTjuEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRTjuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTTxxENtNtCsexYYUdYSQU6_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BW_NtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -40
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRTxxEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTTxxExEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_xNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRTxxEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRjECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTtReEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !align !25, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRtECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTxNtNtCsexYYUdYSQU6_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !align !25, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRxECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B11_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [128 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -128
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !align !25, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRxECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTxbEE14reserve_rehashNCINvNtBa_3map11make_hasherxbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !align !25, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRxECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTxfEE14reserve_rehashNCINvNtBa_3map11make_hasherxfNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !align !25, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRxECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTxxEE14reserve_rehashNCINvNtBa_3map11make_hasherxxNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !align !25, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRxECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB1w_7RegexIdEEEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE0E0B1y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyjEE14reserve_rehashNCINvNtBa_3map11make_hasheryjNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE0E0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticodeNtB4_18AuthenticodeParser22pkcs9_countersignatures0_0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) initializes((7, 8)) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs92Y28wVgKBa_7asn1_rs8datetimeNtB2_12ASN1DateTime11to_datetime(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !42, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %.thread

bb.b:                                             ; preds = %bb.c, %bb.e, %bb.f
  call void @_RNvMNtCs92Y28wVgKBa_7asn1_rs3tagNtB2_3Tag13invalid_value(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @85, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 21), !noalias !5936
  %.pr.pr = load i64, ptr %i.a, align 8           ; 2 uses
  %.not1 = icmp eq i64 %.pr.pr, -1
  br i1 %.not1, label %.thread15, label %.thread

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.44.0.copyload = load i32, ptr %.sroa.44.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5937)
  %i.c = ashr i32 %.sroa.44.0.copyload, 10        ; 2 uses
  %i.d = icmp sgt i32 %i.c, 49
  %.sroa.0.0.v.i = select i1 %i.d, i32 1900, i32 2000
  %.sroa.0.0.i = add nsw i32 %.sroa.0.0.v.i, %i.c ; 3 uses
  %i.e = and i32 %.sroa.44.0.copyload, 511        ; 2 uses
  %i.f = lshr i32 %.sroa.44.0.copyload, 9
  %.lobit.i.i = and i32 %i.f, 1
  %i.g = add nuw nsw i32 %.lobit.i.i, 59          ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %i.e, %i.g    ; 2 uses
  %..i.i = select i1 %.not.i.i, i32 2, i32 0
  %.8.i.i = select i1 %.not.i.i, i32 %i.g, i32 0
  %i.h = sub nsw i32 %i.e, %.8.i.i                ; 2 uses
  %i.i = mul nsw i32 %i.h, 268
  %i.j = add nsw i32 %i.i, 8028
  %i.k = lshr i32 %i.j, 13                        ; 2 uses
  %2 = add nuw nsw i32 %i.k, %..i.i               ; 2 uses
  %3 = trunc i32 %2 to i8                         ; 4 uses
  %i.l = icmp ne i8 %3, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = mul nuw nsw i32 %i.k, 3917
  %i.n = add nuw nsw i32 %i.m, 28902
  %i.o = lshr i32 %i.n, 7
  %i.p = sub nsw i32 %i.h, %i.o                   ; 2 uses
  %i.q = trunc i32 %i.p to i8                     ; 3 uses
  %i.r = add nsw i32 %.sroa.0.0.i, -10000
  %or.cond.i.i = icmp ult i32 %i.r, -19999
  br i1 %or.cond.i.i, label %bb.b, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 range(i32 -2095152, 2099052) %.sroa.0.0.i, i1 true)
  %i.s = mul i32 %.sroa.012.0.i.i, 33555415
  %i.t = and i32 %i.s, 100695055
  %i.u = icmp samesign ult i32 %i.t, 31745        ; 3 uses
  %i.v = add i8 %i.q, -1
  %or.cond1.i.i = icmp ult i8 %i.v, 28
  br i1 %or.cond1.i.i, label %.thread10, label %bb.e, !prof !55

bb.e:                                             ; preds = %bb.d
  %i.w = add i8 %i.q, -29
  %or.cond2.i.i = icmp ult i8 %i.w, 3
  br i1 %or.cond2.i.i, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %3, 2
  %i.y = lshr i8 %3, 3
  %i.z = xor i8 %i.y, %3
  %i.aa = or i8 %i.z, 30
  %..i15.i = select i1 %i.u, i8 29, i8 28
  %.sroa.05.0.i.i = select i1 %i.x, i8 %..i15.i, i8 %i.aa
  %.not.i16.i = icmp samesign ult i8 %.sroa.05.0.i.i, %i.q
  br i1 %.not.i16.i, label %bb.b, label %.thread10

.thread10:                                        ; preds = %bb.d, %bb.f
  %.mask.i = and i32 %2, 255
  %i.ab = zext nneg i32 %.mask.i to i64
  %.sroa.sel.i.i = select i1 %i.u, ptr getelementptr inbounds nuw (i8, ptr @96, i64 24), ptr @96
  %i.ac = getelementptr [2 x i8], ptr %.sroa.sel.i.i, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -2
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !5938, !noundef !8
  %i.af = trunc i32 %i.p to i16
  %i.ag = and i16 %i.af, 255
  %i.ah = add i16 %i.ae, %i.ag
  %i.ai = shl nsw i32 %.sroa.0.0.i, 10
  %i.aj = select i1 %i.u, i32 512, i32 0
  %i.ak = or disjoint i32 %i.aj, %i.ai
  %i.al = zext i16 %i.ah to i32
  %i.am = or i32 %i.ak, %i.al                     ; 2 uses
  %i.an = icmp ne i32 %i.am, 0
  tail call void @llvm.assume(i1 %i.an)
  store i32 %i.am, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !5937, !noalias !5936
  br label %.thread15

.thread15:                                        ; preds = %bb.b, %.thread10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35YnhoVJM5o_4time16offset_date_time14OffsetDateTimeNtNtCs92Y28wVgKBa_7asn1_rs5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit

.thread:                                          ; preds = %bb.a, %bb.b
  %i.ap = phi i64 [ %.pr.pr, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 -1, ptr %i.aq, align 1
  %i.ar = icmp ne i64 %i.ap, -9223372036854775805
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp sgt i64 %i.ap, -1
  br i1 %i.as, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35YnhoVJM5o_4time16offset_date_time14OffsetDateTimeNtNtCs92Y28wVgKBa_7asn1_rs5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit

bb.g:                                             ; preds = %.thread
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %bb.h
  resume { ptr, i32 } %i.at

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.g
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35YnhoVJM5o_4time16offset_date_time14OffsetDateTimeNtNtCs92Y28wVgKBa_7asn1_rs5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35YnhoVJM5o_4time16offset_date_time14OffsetDateTimeNtNtCs92Y28wVgKBa_7asn1_rs5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i, %.thread, %.thread15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules3crx17___thunk__permhashINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextEEE9call_once6vtableBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %2, align 8, !alias.scope !5947, !noalias !5948, !nonnull !8, !align !25, !noundef !8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 664
  %i.c = load i64, ptr %i.b, align 8, !range !58, !noalias !5949, !noundef !8 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  tail call fastcc void @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules3crx8permhash(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.g), !noalias !5950
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash16___thunk__crc_strINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextENtNtNtBa_4wasm6string13RuntimeStringEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !5966
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !5965
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5967)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !5968, !noalias !5969, !nonnull !8, !align !25, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 792
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  %i.f = load i64, ptr %i.e, align 8, !range !58, !noalias !5970, !noundef !8 ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.h, %i.f
  %i.j = getelementptr i8, ptr %i.g, i64 %i.i
  %i.k = invoke { ptr, i64 } @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString7as_bstr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.j)
          to label %bb.c unwind label %bb.b, !noalias !5971 ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #38
          to label %bb.h unwind label %bb.g, !noalias !5971

bb.c:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, i64 } %i.k, 0
  %i.n = extractvalue { ptr, i64 } %i.k, 1
  %i.o = invoke noundef i32 @_RNvCsahlYIikORpl_9crc32fast4hash(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.n)
          to label %bb.d unwind label %bb.b, !noalias !5971

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !5972), !noalias !5967
  %i.p = load i32, ptr %i.b, align 8, !range !48, !alias.scope !5973, !noalias !5974, !noundef !8
  %switch.i.i.i = icmp samesign ult i32 %i.p, 2
  br i1 %switch.i.i.i, label %_RNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash16___thunk__crc_strINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtB8_7scanner7context11ScanContextENtNtNtB8_4wasm6string13RuntimeStringEE9call_onceB8_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5975), !noalias !5967
  call void @llvm.experimental.noalias.scope.decl(metadata !5976), !noalias !5967
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !5977, !noalias !5974, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !5978, !noundef !8
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !noalias !5978
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %_RNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash16___thunk__crc_strINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtB8_7scanner7context11ScanContextENtNtNtB8_4wasm6string13RuntimeStringEE9call_onceB8_.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #43, !noalias !5971
  br label %_RNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash16___thunk__crc_strINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtB8_7scanner7context11ScanContextENtNtNtB8_4wasm6string13RuntimeStringEE9call_onceB8_.exit

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40, !noalias !5971
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.l

_RNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash16___thunk__crc_strINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtB8_7scanner7context11ScanContextENtNtNtB8_4wasm6string13RuntimeStringEE9call_onceB8_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.w = zext i32 %i.o to i64
  %i.x = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.w, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, i64 } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash16___thunk__md5_strINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextENtNtNtBa_4wasm6string13RuntimeStringEE9call_once6vtableBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree readnone captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5987)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !5988
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !5989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5990)
  %i.c = load ptr, ptr %2, align 8, !alias.scope !5991, !noalias !5992, !nonnull !8, !align !25, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 792
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  %i.f = load i64, ptr %i.e, align 8, !range !58, !noalias !5993, !noundef !8 ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.h, %i.f
  %i.j = getelementptr i8, ptr %i.g, i64 %i.i
  call fastcc void @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash7md5_str(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(2208) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !5994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash17___thunk__crc_dataINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextExxEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !alias.scope !5999, !nonnull !8, !align !25, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 792
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 664
  %i.g = load i64, ptr %i.f, align 8, !range !58, !noalias !6000, !noundef !8 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.g
  %i.k = getelementptr i8, ptr %i.h, i64 %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8, !noalias !6000
  store i64 %3, ptr %i.c, align 8, !noalias !6000
  %i.l = call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtNtNtBa_11collections4hash3map7HashMapTxxExNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEEE4withNCNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash8crc_data0INtNtBY_6option6OptionxEEB3c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @207, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !6000 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  %i.o = icmp eq i64 %i.m, 1
  br i1 %i.o, label %_RNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash17___thunk__crc_dataINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtB8_7scanner7context11ScanContextExxEE9call_onceB8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp sgt i64 %2, -1
  br i1 %i.p, label %bb.c, label %_RNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash17___thunk__crc_dataINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtB8_7scanner7context11ScanContextExxEE9call_onceB8_.exit

bb.c:                                             ; preds = %bb.b
  %i.q = add i64 %3, %2                           ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  br i1 %i.r, label %bb.d, label %_RNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules4hash17___thunk__crc_dataINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtB8_7scanner7context11ScanContextExxEE9call_onceB8_.exit
end_hunk_0
