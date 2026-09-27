Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.10?download=true
inline.NumInlined: 991
inline.NumDeleted: 474
begin_hunk_0_@_RNvXsi_NtNtCsjXdHNeFfodD_13hickory_proto2op6headerNtB5_8MetadataNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @181, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @386, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @387, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @180, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.g, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @180, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.h, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @180, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @180, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.j, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @180, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.k, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @180, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.a, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @376, ptr %i.ad, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @399, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @398, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_ENtNtBM_3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !align !8, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !7, !nonnull !7
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2700
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.d, ptr %i.a, align 8, !noalias !2700
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 10, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2700
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxShENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2704
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !2705
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly %i.e)
  %i.g = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2704
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_9ErrorKindNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !43, !noundef !7
  %i.b = zext nneg i8 %i.a to i64
  %i.c = load ptr, ptr @_RNvNvXsn_NtNtCsj6eKBz9Db1c_4core2io5errorNtB7_9ErrorKindNtNtBb_3fmt5Debug3fmt7___NAMES, align 8, !nonnull !7, !noundef !7
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsn_NtNtCsj6eKBz9Db1c_4core2io5errorNtB7_9ErrorKindNtNtBb_3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noundef !7
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXsn_NtNtCsj6eKBz9Db1c_4core2io5errorNtB7_9ErrorKindNtNtBb_3fmt5Debug3fmt8___OFFSET, i64 noundef 45, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeNtB5_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeNtB5_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigNtB5_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierNtB5_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtBy_10EdnsOptionENtB5_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtB17_10EdnsOptionEINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtShNtB5_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSjNtB5_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_NtNtCsjXdHNeFfodD_13hickory_proto2op6headerNtB5_11MessageTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !16, !noundef !7
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 8, i64 5
  %.1 = select i1 %i.b, ptr @407, ptr @146
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorNtNtCsj6eKBz9Db1c_4core5error5Error6sourceCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @419, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs5MfxasYgTEl_11hickory_net5error8DnsErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5MfxasYgTEl_11hickory_net5error8DnsErrorNtNtCsj6eKBz9Db1c_4core5error5Error6sourceCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs5MfxasYgTEl_11hickory_net5error8DnsErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs5MfxasYgTEl_11hickory_net5error8DnsErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @420, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @421, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error6sourceCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @422, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs9Nm16QDoYu7_3url6parser10ParseErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs9Nm16QDoYu7_3url6parser10ParseErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs9Nm16QDoYu7_3url6parser10ParseErrorNtNtCsj6eKBz9Db1c_4core5error5Error6sourceCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs9Nm16QDoYu7_3url6parser10ParseErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9Nm16QDoYu7_3url6parser10ParseErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @423, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name19InvalidDnsNameErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name19InvalidDnsNameErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name19InvalidDnsNameErrorNtNtCsj6eKBz9Db1c_4core5error5Error6sourceCsi17nFaBu4HY_10ech_client(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name19InvalidDnsNameErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name19InvalidDnsNameErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @424, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsjXdHNeFfodD_13hickory_proto5error10ProtoErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsjXdHNeFfodD_13hickory_proto5error10ProtoErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjXdHNeFfodD_13hickory_proto5error10ProtoErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @425, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorNtNtB8_5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @426, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @427, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @428, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCsjXdHNeFfodD_13hickory_proto9serialize6binary7decoder11DecodeErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @418, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCsjXdHNeFfodD_13hickory_proto9serialize6binary7decoder11DecodeErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCsi17nFaBu4HY_10ech_client(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCsjXdHNeFfodD_13hickory_proto9serialize6binary7decoder11DecodeErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @429, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6HdZZ4a9Zp9_12tokio_rustls6clientNtB3_12TlsConnector12connect_implINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1e_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEENCINvB2_7connectB1b_E0ECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([1144 x i8]) align 8 captures(none) dereferenceable(1144), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCsjpgBhlqJ253_12tracing_core5fieldNtNtCsj6eKBz9Db1c_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCs4okMlIQ9Z13_2h25frame6reasonNtB5_6ReasonNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsl0TPHHzpGH6_5bytes5bytesNtB3_5Bytes5sliceNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putNtNtB8_5bytes5BytesECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMNtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE10poll_readyCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(1456), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 13) i8 @_RNvMs_NtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE6bufferCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(304), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(296)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCs4t2ynGArmuo_12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCs4wP2HXfJTCR_5alloc2io5error21custom_owner_from_box(i8 noundef range(i8 0, 44), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs0_NtNtNtCsj6eKBz9Db1c_4core2io5error4reprNtB5_4Repr10new_custom(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_19InvalidDnsNameErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCsj6eKBz9Db1c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB6_5QueueNtNtB8_6stream16NextWindowUpdateE3popNtB6_5StoreECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 4 dereferenceable(20), ptr noalias nofree noundef align 8 dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams6countsNtB3_6Counts10transitionNCINvMNtB5_4recvNtB1f_4Recv26send_stream_window_updatesINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE0uECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(2024)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams12flow_controlNtB2_11FlowControl10inc_window(ptr noalias nofree noundef align 4 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeNtB5_3PtrNtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5stateNtB5_5StateNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeNtB5_3PtrNtNtNtCsj6eKBz9Db1c_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams6streamNtB2_6Stream9set_reset(ptr noalias nofree noundef align 8 dereferenceable(320), i32 noundef, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams10prioritizeNtB3_10Prioritize11clear_queueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams10prioritizeNtB3_10Prioritize11queue_frameNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(296), ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams10prioritizeNtB2_10Prioritize20reclaim_all_capacity(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs4okMlIQ9Z13_2h25frame7headersNtB5_7HeadersNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 13) i8 @_RNvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4sendNtB2_4Send13check_headers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 13) i8 @_RNvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams5stateNtB2_5State9send_open(ptr noalias nofree noundef align 8 dereferenceable(40), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtCs4okMlIQ9Z13_2h25proto4peerNtB2_3Dyn13is_local_init(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams10prioritizeNtB2_10Prioritize10queue_open(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeNtB3_5Store12try_for_eachNCINvMNtB5_4sendNtB1f_4Send21apply_remote_settingsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE0NtNtB7_5error5ErrorECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(112), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams10prioritizeNtB3_10Prioritize26assign_connection_capacityNtNtB5_5store5StoreECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(96), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeNtB3_5Store12try_for_eachNCINvMNtB5_4sendNtB1f_4Send21apply_remote_settingsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEs_0NtNtB7_5error5ErrorECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(112), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams10prioritizeNtB2_10Prioritize25recv_stream_window_update(ptr noalias nofree noundef align 8 dereferenceable(96), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs1_NtCsUoH6ltOcnV_3mio4pollNtB6_8Registry10deregisterNtNtNtB8_3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io16registration_set6SyncedE4lockCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCskruEhpekJ3V_5tokio7runtime2io16registration_setNtB2_15RegistrationSet10deregister(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime2io6driverNtB5_6Handle6unpark(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs1_NtCsUoH6ltOcnV_3mio4pollNtB6_8Registry10deregisterNtNtNtNtB8_3net3tcp6stream9TcpStreamECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsaKJjC64KgbL_3std3sys5stdio4unix6StderrNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsaKJjC64KgbL_3std7process5abort() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs4okMlIQ9Z13_2h25hpack5table3PosEENtNtNtBK_3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsjSDXC2TkEdJ_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsjSDXC2TkEdJ_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_0
