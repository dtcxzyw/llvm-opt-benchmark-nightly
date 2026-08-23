Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/webpki-ce99a4d7babff5cd.webpki.d0e49e753f3852db-cgu.4?download=true
inline.NumInlined: 44
inline.NumDeleted: 35
begin_hunk_0_@_RNvXs0_NtCshVVPy9isBpn_6webpki4x509NtB5_21DistributionPointNameNtNtB7_3der7FromDer8from_der:bb.a
bb.t:                                             ; preds = %bb.s
  %i.br = add nuw i64 %i.b, 5                     ; 3 uses
  store i64 %i.br, ptr %i.a, align 8, !alias.scope !129, !noalias !132
  %i.bs = icmp ult i64 %i.br, %i.d
  br i1 %i.bs, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bn
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !134, !noundef !4
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.br
  %i.bx = add nuw i64 %i.b, 6                     ; 2 uses
  store i64 %i.bx, ptr %i.a, align 8, !alias.scope !129, !noalias !132
  %i.by = load i8, ptr %i.bw, align 1, !noalias !134, !noundef !4
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bk, 24
  %i.cb = shl nuw nsw i64 %i.bp, 16
  %i.cc = shl nuw nsw i64 %i.bv, 8
  %i.cd = or disjoint i64 %i.cb, %i.ca
  %i.ce = or disjoint i64 %i.cd, %i.cc
  %i.cf = or disjoint i64 %i.ce, %i.bz
  %i.cg = icmp eq i8 %i.bj, 0
  br i1 %i.cg, label %bb.y, label %bb.f

.thread:                                          ; preds = %bb.l, %bb.d, %bb.f
  %i.ch = phi i64 [ %i.r, %bb.f ], [ %i.y, %bb.l ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.0232.0.i53 = phi i64 [ %.sroa.0232.0.i, %bb.f ], [ %i.ab, %bb.l ], [ %i.q, %bb.d ] ; 2 uses
  %i.ci = add i64 %i.ch, %.sroa.0232.0.i53        ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %.not.i = icmp ugt i64 %i.ci, %i.d
  %or.cond.i = or i1 %i.cj, %.not.i
  br i1 %or.cond.i, label %bb.y, label %bb.v, !prof !135

bb.v:                                             ; preds = %.thread
  store i64 %i.ci, ptr %i.a, align 8, !alias.scope !136, !noalias !132
  switch i8 %i.i, label %bb.y [
    i8 -96, label %bb.w
    i8 -95, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cl, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0232.0.i53, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.548.0..sroa_idx, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.cm, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %.thread, %bb.b, %bb.q, %bb.j, %bb.r, %bb.s, %bb.t, %bb.n, %bb.i, %bb.o, %bb.p, %bb.k, %bb.h, %bb.m, %bb.e, %bb.g, %bb.f, %bb.u, %bb.a, %bb.w, %bb.x
  %.sink = phi i64 [ -9223372036854775808, %.thread ], [ -1, %bb.w ], [ -1, %bb.x ], [ -9223372036854775808, %bb.a ], [ -9223372036854775808, %bb.u ], [ -9223372036854775808, %bb.f ], [ -9223372036854775808, %bb.g ], [ -9223372036854775808, %bb.e ], [ -9223372036854775808, %bb.m ], [ -9223372036854775808, %bb.h ], [ -9223372036854775808, %bb.k ], [ -9223372036854775808, %bb.p ], [ -9223372036854775808, %bb.o ], [ -9223372036854775808, %bb.i ], [ -9223372036854775808, %bb.n ], [ -9223372036854775808, %bb.t ], [ -9223372036854775808, %bb.s ], [ -9223372036854775808, %bb.r ], [ -9223372036854775808, %bb.j ], [ -9223372036854775808, %bb.q ], [ -9223372036854775808, %bb.b ], [ -9223372036854775808, %bb.v ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB4_16AwsLcRsAlgorithmNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 17, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 16, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCshVVPy9isBpn_6webpki4x509NtB4_9ExtensionNtNtB6_3der7FromDer8from_der(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 41)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCshVVPy9isBpn_6webpki3der10expect_tag(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef 6)
  %i.d = load i64, ptr %i.c, align 8, !range !9, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.649.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.645.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.d, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.548.0..sroa_idx, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCshVVPy9isBpn_6webpki3derbNtB5_7FromDer8from_der(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.i = load i64, ptr %i.b, align 8, !range !9, !noundef !4 ; 2 uses
  %.not71 = icmp eq i64 %i.i, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i8, ptr %i.j, align 8               ; 2 uses
  br i1 %.not71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.558.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.555.0..sroa_idx, i64 47, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %0, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.k, ptr %.sroa.457.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtCshVVPy9isBpn_6webpki3der10expect_tag(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef 4)
  %i.l = load i64, ptr %i.a, align 8, !range !9, !noundef !4 ; 2 uses
  %.not72 = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  br i1 %.not72, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.670.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.666.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %0, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.569.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.q, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.p, ptr %.sroa.636.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.k, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCs222MioR9bx1_9aws_lc_rs2ec9signatureNtB5_26EcdsaVerificationAlgorithmNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 26, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 2, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs222MioR9bx1_9aws_lc_rs7ed25519NtB5_15EdDSAParametersNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCshVVPy9isBpn_6webpki14aws_lc_rs_algs16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm11fips_statusB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !5, !alias.scope !139, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RNvXNtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB2_16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm4fips.exit, label %_RNvXNtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB2_16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm4fips.exit.thread

_RNvXNtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB2_16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm4fips.exit: ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @_RNvCs222MioR9bx1_9aws_lc_rs13try_fips_mode(), !noalias !139
  %.fr3 = freeze { ptr, i64 } %i.d
  %i.e = extractvalue { ptr, i64 } %.fr3, 0
  %i.f = icmp eq ptr %i.e, null
  %spec.select = zext i1 %i.f to i64
  br label %_RNvXNtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB2_16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm4fips.exit.thread

_RNvXNtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB2_16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm4fips.exit.thread: ; preds = %_RNvXNtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB2_16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm4fips.exit, %bb.a
  %2 = phi i64 [ 0, %bb.a ], [ %spec.select, %_RNvXNtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB2_16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm4fips.exit ]
  store i64 %2, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCshVVPy9isBpn_6webpki(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1b_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3e_8BTreeMapB16_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4h_8adapters3map3MapINtNtB8_4iter4IterNtB1H_19BorrowedRevokedCertENCNvMs2_B1H_NtB1H_26BorrowedCertRevocationList8to_owned0EE0E0EB1L_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 115292150460684698), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 115292150460684698), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB35_8BTreeMapBY_B1x_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB47_8adapters3map3MapINtNtB8_4iter4IterNtB1z_19BorrowedRevokedCertENCNvMs2_B1z_NtB1z_26BorrowedCertRevocationList8to_owned0EE0E0EB1D_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 115292150460684698), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 115292150460684698), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCshVVPy9isBpn_6webpki3der16bit_string_flags(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNvYNtNtNtCshVVPy9isBpn_6webpki3crl5types16RevocationReasonNtNtB14_3der7FromDer8from_derBY_NtNtB14_5error5ErrorEB14_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNvYNtCseO5Jl7W60Eg_16rustls_pki_types8UnixTimeNtNtCshVVPy9isBpn_6webpki3der7FromDer8from_derBY_NtNtB1J_5error5ErrorEB1J_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNCNCNvNtCshVVPy9isBpn_6webpki4cert23remember_cert_extension000BB_NtNtB15_5error5ErrorEB15_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNCNvMs2_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB15_26BorrowedCertRevocationList18remember_extension00RShNtNtB19_5error5ErrorEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs222MioR9bx1_9aws_lc_rs6digest3sha13sha256_digest(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtCs222MioR9bx1_9aws_lc_rs2ec9signatureNtB5_26EcdsaVerificationAlgorithmNtNtB9_9signature21VerificationAlgorithm10verify_sig(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtCs222MioR9bx1_9aws_lc_rs2ec9signatureNtB5_26EcdsaVerificationAlgorithmNtNtB9_9signature21VerificationAlgorithm17verify_digest_sig(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs222MioR9bx1_9aws_lc_rs6digest3sha13sha384_digest(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs222MioR9bx1_9aws_lc_rs6digest3sha13sha512_digest(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs222MioR9bx1_9aws_lc_rs3rsa9signatureNtB5_13RsaParametersNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs222MioR9bx1_9aws_lc_rs3rsa9signatureNtB5_13RsaParametersNtNtB9_9signature21VerificationAlgorithm10verify_sig(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs222MioR9bx1_9aws_lc_rs3rsa9signatureNtB5_13RsaParametersNtNtB9_9signature21VerificationAlgorithm17verify_digest_sig(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs222MioR9bx1_9aws_lc_rs7ed25519NtB5_15EdDSAParametersNtNtB7_9signature21VerificationAlgorithm10verify_sig(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshVVPy9isBpn_6webpki(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvCs222MioR9bx1_9aws_lc_rs13try_fips_mode() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCseO5Jl7W60Eg_16rustls_pki_types6alg_idNtB5_19AlgorithmIdentifierNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRDNtNtCs222MioR9bx1_9aws_lc_rs9signature21VerificationAlgorithmEL_NtB6_5Debug3fmtCshVVPy9isBpn_6webpki(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRbNtB6_5Debug3fmtCshVVPy9isBpn_6webpki(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCshVVPy9isBpn_6webpki3der10expect_tag(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24), i8 noundef range(i8 -96, 49)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCshVVPy9isBpn_6webpki3derbNtB5_7FromDer8from_der(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature11AlgorithmIDNtB6_5Debug3fmtCshVVPy9isBpn_6webpki(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs222MioR9bx1_9aws_lc_rs6digest9AlgorithmNtB6_5Debug3fmtCshVVPy9isBpn_6webpki(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature20EcdsaSignatureFormatNtB6_5Debug3fmtCshVVPy9isBpn_6webpki(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { noinline }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { noinline noreturn }
attributes #19 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{}
!5 = !{i8 0, i8 2}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RNCNvMs2_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationList18remember_extension0Bb_: argument 0"}
!8 = distinct !{!8, !"_RNCNvMs2_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationList18remember_extension0Bb_"}
!9 = !{i64 -1, i64 -9223372036854775758}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputNCNCNvMs2_NtNtB4_3crl5typesNtB1C_26BorrowedCertRevocationList18remember_extension0s_0EB4_: argument 0"}
!12 = distinct !{!12, !"_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputNCNCNvMs2_NtNtB4_3crl5typesNtB1C_26BorrowedCertRevocationList18remember_extension0s_0EB4_"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputNCNCNvMs2_NtNtB4_3crl5typesNtB1C_26BorrowedCertRevocationList18remember_extension0s_0EB4_: argument 1"}
!15 = !{!16}
!16 = distinct !{!16, !12, !"_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputNCNCNvMs2_NtNtB4_3crl5typesNtB1C_26BorrowedCertRevocationList18remember_extension0s_0EB4_: argument 2"}
!17 = !{!11, !16, !7}
!18 = !{!19, !11, !14, !7}
!19 = distinct !{!19, !20, !"_RNCNCNvMs2_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB9_26BorrowedCertRevocationList18remember_extension0s_0Bd_: argument 0"}
!20 = distinct !{!20, !"_RNCNCNvMs2_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB9_26BorrowedCertRevocationList18remember_extension0s_0Bd_"}
!21 = !{!11, !7}
!22 = !{!14, !16}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RNCNvMs7_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_19BorrowedRevokedCert18remember_extension0Bb_: argument 0"}
!25 = distinct !{!25, !"_RNCNvMs7_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_19BorrowedRevokedCert18remember_extension0Bb_"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"_RNCNvMs7_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_19BorrowedRevokedCert18remember_extension0Bb_: argument 1"}
!28 = !{i64 8}
!29 = !{!24, !27}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtNtB4_3crl5types16RevocationReasonNCNCNvMs7_BQ_NtBQ_19BorrowedRevokedCert18remember_extension00EB4_: argument 0"}
!32 = distinct !{!32, !"_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtNtB4_3crl5types16RevocationReasonNCNCNvMs7_BQ_NtBQ_19BorrowedRevokedCert18remember_extension00EB4_"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtNtB4_3crl5types16RevocationReasonNCNCNvMs7_BQ_NtBQ_19BorrowedRevokedCert18remember_extension00EB4_: argument 1"}
!35 = !{!36}
!36 = distinct !{!36, !32, !"_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtNtB4_3crl5types16RevocationReasonNCNCNvMs7_BQ_NtBQ_19BorrowedRevokedCert18remember_extension00EB4_: argument 2"}
!37 = !{i8 -1, i8 11}
!38 = !{!31, !36, !24, !27}
!39 = !{!31, !24}
!40 = !{!34, !36, !27}
!41 = !{!31, !34, !36, !24, !27}
!42 = !{!43, !31, !34, !36, !24, !27}
!43 = distinct !{!43, !44, !"_RNCNCNvMs7_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB9_19BorrowedRevokedCert18remember_extension00Bd_: argument 0"}
!44 = distinct !{!44, !"_RNCNCNvMs7_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB9_19BorrowedRevokedCert18remember_extension00Bd_"}
!45 = !{!43, !31, !34, !24, !27}
!46 = !{!47}
end_hunk_0
