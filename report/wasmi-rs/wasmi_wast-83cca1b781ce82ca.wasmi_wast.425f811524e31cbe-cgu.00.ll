Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_wast-83cca1b781ce82ca.wasmi_wast.425f811524e31cbe-cgu.00?download=true
inline.NumInlined: 472
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMCs5HiJSMzJl2A_10wasmi_wastNtB2_10WastRunner17register_spectest:bb.a
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4339.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4248.0..sroa_idx, i64 7, i1 false)
  %.sroa.5249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5249.0.copyload = load ptr, ptr %.sroa.5249.0..sroa_idx, align 8
  %.sroa.6250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.6341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6341.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6250.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i8 %i.ct, ptr %i.g, align 8
  %.sroa.5340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.5249.0.copyload, ptr %.sroa.5340.0..sroa_idx, align 8
  %i.cu = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.g), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !522
  br label %bb.aj

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RINvMs7_NtCsefoF4u9kbII_5wasmi6linkerINtB6_6LinkeruE9func_wrapTlEuNCNvMCs5HiJSMzJl2A_10wasmi_wastNtB17_10WastRunner17register_spectests_0EB17_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 9)
  %i.cv = load i8, ptr %i.t, align 8, !range !21, !noundef !4 ; 2 uses
  %.not306 = icmp eq i8 %i.cv, -1
  br i1 %.not306, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.4343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4343.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4256.0..sroa_idx, i64 7, i1 false)
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5257.0.copyload = load ptr, ptr %.sroa.5257.0..sroa_idx, align 8
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6345.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6258.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i8 %i.cv, ptr %i.f, align 8
  %.sroa.5344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.5257.0.copyload, ptr %.sroa.5344.0..sroa_idx, align 8
  %i.cw = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.f), !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !523
  br label %bb.aj

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RINvMs7_NtCsefoF4u9kbII_5wasmi6linkerINtB6_6LinkeruE9func_wrapTxEuNCNvMCs5HiJSMzJl2A_10wasmi_wastNtB17_10WastRunner17register_spectests0_0EB17_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 9)
  %i.cx = load i8, ptr %i.s, align 8, !range !21, !noundef !4 ; 2 uses
  %.not307 = icmp eq i8 %i.cx, -1
  br i1 %.not307, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.4347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4347.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4264.0..sroa_idx, i64 7, i1 false)
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5265.0.copyload = load ptr, ptr %.sroa.5265.0..sroa_idx, align 8
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.6349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6349.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6266.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i8 %i.cx, ptr %i.e, align 8
  %.sroa.5348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5265.0.copyload, ptr %.sroa.5348.0..sroa_idx, align 8
  %i.cy = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.e), !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !524
  br label %bb.aj

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvMs7_NtCsefoF4u9kbII_5wasmi6linkerINtB6_6LinkeruE9func_wrapTNtNtCs5zeGauAcNNa_10wasmi_core5float3F32EuNCNvMCs5HiJSMzJl2A_10wasmi_wastNtB1K_10WastRunner17register_spectests1_0EB1K_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 9)
  %i.cz = load i8, ptr %i.r, align 8, !range !21, !noundef !4 ; 2 uses
  %.not308 = icmp eq i8 %i.cz, -1
  br i1 %.not308, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.4351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4351.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4272.0..sroa_idx, i64 7, i1 false)
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5273.0.copyload = load ptr, ptr %.sroa.5273.0..sroa_idx, align 8
  %.sroa.6274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6353.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6274.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i8 %i.cz, ptr %i.d, align 8
  %.sroa.5352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5273.0.copyload, ptr %.sroa.5352.0..sroa_idx, align 8
  %i.da = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.d), !noalias !525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !525
  br label %bb.aj

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RINvMs7_NtCsefoF4u9kbII_5wasmi6linkerINtB6_6LinkeruE9func_wrapTNtNtCs5zeGauAcNNa_10wasmi_core5float3F64EuNCNvMCs5HiJSMzJl2A_10wasmi_wastNtB1K_10WastRunner17register_spectests2_0EB1K_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 9)
  %i.db = load i8, ptr %i.q, align 8, !range !21, !noundef !4 ; 2 uses
  %.not309 = icmp eq i8 %i.db, -1
  br i1 %.not309, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.4280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.4355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4355.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4280.0..sroa_idx, i64 7, i1 false)
  %.sroa.5281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5281.0.copyload = load ptr, ptr %.sroa.5281.0..sroa_idx, align 8
  %.sroa.6282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6357.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6282.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i8 %i.db, ptr %i.c, align 8
  %.sroa.5356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5281.0.copyload, ptr %.sroa.5356.0..sroa_idx, align 8
  %i.dc = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !526
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RINvMs7_NtCsefoF4u9kbII_5wasmi6linkerINtB6_6LinkeruE9func_wrapTlNtNtCs5zeGauAcNNa_10wasmi_core5float3F32EuNCNvMCs5HiJSMzJl2A_10wasmi_wastNtB1L_10WastRunner17register_spectests3_0EB1L_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 13)
  %i.dd = load i8, ptr %i.p, align 8, !range !21, !noundef !4 ; 2 uses
  %.not310 = icmp eq i8 %i.dd, -1
  br i1 %.not310, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.4288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.4359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4359.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4288.0..sroa_idx, i64 7, i1 false)
  %.sroa.5289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5289.0.copyload = load ptr, ptr %.sroa.5289.0..sroa_idx, align 8
  %.sroa.6290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6361.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6290.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i8 %i.dd, ptr %i.b, align 8
  %.sroa.5360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5289.0.copyload, ptr %.sroa.5360.0..sroa_idx, align 8
  %i.de = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.b), !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !527
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvMs7_NtCsefoF4u9kbII_5wasmi6linkerINtB6_6LinkeruE9func_wrapTNtNtCs5zeGauAcNNa_10wasmi_core5float3F64BZ_EuNCNvMCs5HiJSMzJl2A_10wasmi_wastNtB1N_10WastRunner17register_spectests4_0EB1N_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 13)
  %i.df = load i8, ptr %i.o, align 8, !range !21, !noundef !4 ; 2 uses
  %.not311 = icmp eq i8 %i.df, -1
  br i1 %.not311, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.4363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4363.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4296.0..sroa_idx, i64 7, i1 false)
  %.sroa.5297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5297.0.copyload = load ptr, ptr %.sroa.5297.0..sroa_idx, align 8
  %.sroa.6298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6365.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6298.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i8 %i.df, ptr %i.a, align 8
  %.sroa.5364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5297.0.copyload, ptr %.sroa.5364.0..sroa_idx, align 8
  %i.dg = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !528
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.b, %bb.f, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.d, %bb.ai
  %.sroa.0.0 = phi ptr [ %i.ar, %bb.b ], [ %i.ba, %bb.d ], [ %i.bj, %bb.f ], [ %i.cg, %bb.h ], [ %i.ci, %bb.j ], [ %i.ck, %bb.l ], [ %i.cm, %bb.n ], [ %i.co, %bb.p ], [ %i.cq, %bb.r ], [ %i.cs, %bb.t ], [ %i.cu, %bb.v ], [ %i.cw, %bb.x ], [ %i.cy, %bb.z ], [ %i.da, %bb.ab ], [ %i.dc, %bb.ad ], [ %i.de, %bb.af ], [ %i.dg, %bb.ah ], [ null, %bb.ai ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMCs5HiJSMzJl2A_10wasmi_wastNtB2_10WastRunner18assert_result_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1888) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 14 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 16               ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 16               ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 16               ; 9 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 16               ; 21 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [64 x i8], align 8                ; 11 uses
  %i.w = alloca [96 x i8], align 8                ; 15 uses
  %i.x = alloca [8 x i8], align 8                 ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 6 uses
  %i.ab = alloca [64 x i8], align 8               ; 11 uses
  %i.ac = alloca [96 x i8], align 8               ; 15 uses
  %i.ad = alloca [4 x i8], align 4                ; 6 uses
  %i.ae = alloca [4 x i8], align 4                ; 6 uses
  %i.af = alloca [8 x i8], align 8                ; 6 uses
  %i.ag = alloca [8 x i8], align 8                ; 6 uses
  %i.ah = alloca [16 x i8], align 16              ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [8 x i8], align 8                ; 2 uses
  %i.ao = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.ao, align 8
  store ptr %2, ptr %i.an, align 8
  %i.ap = load i32, ptr %2, align 8, !range !550, !noundef !4
  switch i32 %i.ap, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 15, label %bb.i
  ], !prof !551

bb.b:                                             ; preds = %bb.a
  %i.aq = load i8, ptr %1, align 8, !range !552, !noundef !4
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit, !prof !15

bb.c:                                             ; preds = %bb.a
  %i.as = load i8, ptr %1, align 8, !range !552, !noundef !4
  %i.at = icmp eq i8 %i.as, 1
  br i1 %i.at, label %bb.o, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit, !prof !15

bb.d:                                             ; preds = %bb.a
  %i.au = load i8, ptr %1, align 8, !range !552, !noundef !4
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %bb.t, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit, !prof !15

bb.e:                                             ; preds = %bb.a
  %i.aw = load i8, ptr %1, align 8, !range !552, !noundef !4
  %i.ax = icmp eq i8 %i.aw, 3
  br i1 %i.ax, label %bb.v, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit, !prof !15

bb.f:                                             ; preds = %bb.a
  %i.ay = load i8, ptr %1, align 8, !range !552, !noundef !4
  %i.az = icmp eq i8 %i.ay, 4
  br i1 %i.az, label %bb.x, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit, !prof !15

bb.g:                                             ; preds = %bb.a
  %i.ba = load i8, ptr %1, align 8, !range !552, !noundef !4
  switch i8 %i.ba, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit [
    i8 5, label %bb.aq
    i8 6, label %bb.ar
  ], !prof !553

bb.h:                                             ; preds = %bb.a
  %i.bb = load i8, ptr %1, align 8, !range !552, !noundef !4
  %i.bc = icmp eq i8 %i.bb, 6
  br i1 %i.bc, label %bb.as, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit, !prof !15

bb.i:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bg, 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit, label %.lr.ph, !prof !554

.lr.ph:                                           ; preds = %bb.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreINtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB3q_10WastRunner18assert_result_core0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1M_NCB3n_s_0E0E0B3q_.exit
  %.sroa.0.086 = phi ptr [ %i.bl, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreINtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB3q_10WastRunner18assert_result_core0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1M_NCB3n_s_0E0E0B3q_.exit ], [ %i.be, %bb.i ] ; 2 uses
  %i.bj = call fastcc noundef ptr @_RNvMCs5HiJSMzJl2A_10wasmi_wastNtB2_10WastRunner18assert_result_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1888) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.086), !noalias !555, !inline_history !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !556
  store ptr %i.bj, ptr %i.a, align 8, !noalias !556
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit.thread, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreINtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB3q_10WastRunner18assert_result_core0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1M_NCB3n_s_0E0E0B3q_.exit

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreINtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB3q_10WastRunner18assert_result_core0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1M_NCB3n_s_0E0E0B3q_.exit: ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.086, i64 48 ; 2 uses
  call void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !557, !inline_history !537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !556
  %i.bm = icmp eq ptr %i.bl, %i.bh
  br i1 %i.bm, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit, label %.lr.ph, !prof !558

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMCs5HiJSMzJl2A_10wasmi_wastNtB4H_10WastRunner18assert_result_core0NCINvNvB1w_3any5checkB33_NCB4E_s_0E0E0B3V_EB4H_.exit.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !556
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.j:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.bn, ptr %i.ag, align 8, !noalias !561
  store ptr %i.bo, ptr %i.af, align 8, !noalias !561
  %i.bp = load i32, ptr %i.bn, align 4, !alias.scope !559, !noalias !560, !noundef !4 ; 3 uses
  %i.bq = load i32, ptr %i.bo, align 4, !alias.scope !560, !noalias !559, !noundef !4 ; 3 uses
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %_RNvCs5HiJSMzJl2A_10wasmi_wast18i32_matches_or_err.exit.thread, label %bb.k, !prof !15

_RNvCs5HiJSMzJl2A_10wasmi_wast18i32_matches_or_err.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !561
  store i32 %i.bq, ptr %i.ae, align 4, !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !561
  store i32 %i.bp, ptr %i.ad, align 4, !noalias !561
  %i.bs = or i32 %i.bq, %i.bp
  %or.cond.not.i = icmp sgt i32 %i.bs, -1
  br i1 %or.cond.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !561
  store ptr %i.af, ptr %i.ac, align 8, !noalias !561
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRlNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !561
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ae, ptr %i.bt, align 8, !noalias !561
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !561
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ae, ptr %i.bu, align 8, !noalias !561
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !561
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %i.ag, ptr %i.bv, align 8, !noalias !561
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRlNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !561
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %i.ad, ptr %i.bw, align 8, !noalias !561
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !561
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %i.ad, ptr %i.bx, align 8, !noalias !561
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !561
  %i.by = call fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @7, ptr noundef nonnull %i.ac) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !561
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !561
  store ptr %i.af, ptr %i.ab, align 8, !noalias !561
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRlNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !561
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ae, ptr %i.bz, align 8, !noalias !561
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !561
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ag, ptr %i.ca, align 8, !noalias !561
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRlNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !561
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %i.ad, ptr %i.cb, align 8, !noalias !561
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !561
  %i.cc = call fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @6, ptr noundef nonnull %i.ab) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !561
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i = phi ptr [ %i.by, %bb.l ], [ %i.cc, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.cd = call noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error7contextReECs5HiJSMzJl2A_10wasmi_wast(ptr noundef nonnull %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 35)
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.o:                                             ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ce, ptr %i.aa, align 8, !noalias !564
  store ptr %i.cf, ptr %i.z, align 8, !noalias !564
  %i.cg = load i64, ptr %i.ce, align 8, !alias.scope !562, !noalias !563, !noundef !4 ; 3 uses
  %i.ch = load i64, ptr %i.cf, align 8, !alias.scope !563, !noalias !562, !noundef !4 ; 3 uses
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %_RNvCs5HiJSMzJl2A_10wasmi_wast18i64_matches_or_err.exit.thread, label %bb.p, !prof !15

_RNvCs5HiJSMzJl2A_10wasmi_wast18i64_matches_or_err.exit.thread: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !564
  store i64 %i.ch, ptr %i.y, align 8, !noalias !564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !564
  store i64 %i.cg, ptr %i.x, align 8, !noalias !564
  %i.cj = or i64 %i.ch, %i.cg
  %or.cond.not.i49 = icmp sgt i64 %i.cj, -1
  br i1 %or.cond.not.i49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !564
  store ptr %i.z, ptr %i.w, align 8, !noalias !564
  %.sroa.43.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRxNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.43.0..sroa_idx.i50, align 8, !noalias !564
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.y, ptr %i.ck, align 8, !noalias !564
  %.sroa.47.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i51, align 8, !noalias !564
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.y, ptr %i.cl, align 8, !noalias !564
  %.sroa.411.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt, ptr %.sroa.411.0..sroa_idx.i52, align 8, !noalias !564
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr %i.aa, ptr %i.cm, align 8, !noalias !564
  %.sroa.415.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRxNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.415.0..sroa_idx.i53, align 8, !noalias !564
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr %i.x, ptr %i.cn, align 8, !noalias !564
  %.sroa.419.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx.i54, align 8, !noalias !564
  %i.co = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store ptr %i.x, ptr %i.co, align 8, !noalias !564
  %.sroa.423.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store ptr @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt, ptr %.sroa.423.0..sroa_idx.i55, align 8, !noalias !564
  %i.cp = call fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @8, ptr noundef nonnull %i.w) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !564
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !564
  store ptr %i.z, ptr %i.v, align 8, !noalias !564
  %.sroa.427.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRxNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.427.0..sroa_idx.i58, align 8, !noalias !564
  %i.cq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.y, ptr %i.cq, align 8, !noalias !564
  %.sroa.431.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt, ptr %.sroa.431.0..sroa_idx.i59, align 8, !noalias !564
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.aa, ptr %i.cr, align 8, !noalias !564
  %.sroa.435.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRxNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.435.0..sroa_idx.i60, align 8, !noalias !564
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.x, ptr %i.cs, align 8, !noalias !564
  %.sroa.439.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt, ptr %.sroa.439.0..sroa_idx.i61, align 8, !noalias !564
  %i.ct = call fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @6, ptr noundef nonnull %i.v) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !564
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.0.i56 = phi ptr [ %i.cp, %bb.q ], [ %i.ct, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.cu = call noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error7contextReECs5HiJSMzJl2A_10wasmi_wast(ptr noundef nonnull %.sroa.0.0.i56, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 35)
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.t:                                             ; preds = %bb.d
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val41 = load i32, ptr %i.cv, align 4
  %.val42 = load i32, ptr %i.cw, align 4, !range !565, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val43 = load i32, ptr %i.cx, align 8
  %i.cy = tail call fastcc noundef ptr @_RNvCs5HiJSMzJl2A_10wasmi_wast18f32_matches_or_err(i32 %.val41, i32 %.val42, i32 %.val43) ; 2 uses
  %.not32 = icmp eq ptr %i.cy, null
  br i1 %.not32, label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread, label %bb.u, !prof !15

bb.u:                                             ; preds = %bb.t
  %i.cz = tail call noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error7contextReECs5HiJSMzJl2A_10wasmi_wast(ptr noundef nonnull %i.cy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 35)
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.v:                                             ; preds = %bb.e
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val44 = load i64, ptr %i.da, align 8
  %.val45 = load i64, ptr %i.db, align 8, !range !8, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val46 = load i64, ptr %i.dc, align 8
  %i.dd = tail call fastcc noundef ptr @_RNvCs5HiJSMzJl2A_10wasmi_wast18f64_matches_or_err(i64 %.val44, i64 %.val45, i64 %.val46) ; 2 uses
  %.not31 = icmp eq ptr %i.dd, null
  br i1 %.not31, label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread, label %bb.w, !prof !15

bb.w:                                             ; preds = %bb.v
  %i.de = tail call noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error7contextReECs5HiJSMzJl2A_10wasmi_wast(ptr noundef nonnull %i.dd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 35)
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.x:                                             ; preds = %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val47 = load i128, ptr %i.df, align 1         ; 28 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.dh = load i8, ptr %i.dg, align 8, !range !567, !alias.scope !566, !noundef !4
  switch i8 %i.dh, label %default.unreachable [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %.preheader.preheader.i
    i8 5, label %.preheader36.preheader.i
  ]

.preheader36.preheader.i:                         ; preds = %bb.x
  %.sroa.02.0.ptr.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !566
  store i64 0, ptr %i.h, align 8, !noalias !566
  %i.di = trunc i128 %.val47 to i64
  %.val63.i = load i64, ptr %.sroa.02.0.ptr.i, align 8, !range !8, !alias.scope !566, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val64.i = load i64, ptr %i.dj, align 8, !alias.scope !566
  %i.dk = tail call fastcc noundef ptr @_RNvCs5HiJSMzJl2A_10wasmi_wast18f64_matches_or_err(i64 %i.di, i64 %.val63.i, i64 %.val64.i), !noalias !566 ; 2 uses
  %.not53.i = icmp eq ptr %i.dk, null
  br i1 %.not53.i, label %.preheader36.1.i, label %bb.an

.preheader.preheader.i:                           ; preds = %bb.x
  %.sroa.0.023.ptr.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !566
  store i64 0, ptr %i.i, align 8, !noalias !566
  %i.dl = trunc i128 %.val47 to i32
  %.val60.i = load i32, ptr %.sroa.0.023.ptr.i, align 4, !range !565, !alias.scope !566, !noundef !4
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val61.i = load i32, ptr %i.dm, align 8, !alias.scope !566
  %i.dn = tail call fastcc noundef ptr @_RNvCs5HiJSMzJl2A_10wasmi_wast18f32_matches_or_err(i32 %i.dl, i32 %.val60.i, i32 %.val61.i), !noalias !566 ; 2 uses
  %.not55.i = icmp eq ptr %i.dn, null
  br i1 %.not55.i, label %.preheader.1.i, label %bb.ak

default.unreachable:                              ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !566
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  store ptr %i.do, ptr %i.u, align 8, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !566
  %3 = trunc i128 %.val47 to i8
  %4 = lshr i128 %.val47, 8
  %5 = trunc i128 %4 to i8
  %6 = lshr i128 %.val47, 16
  %7 = trunc i128 %6 to i8
  %8 = lshr i128 %.val47, 24
  %9 = trunc i128 %8 to i8
  %10 = lshr i128 %.val47, 32
  %11 = trunc i128 %10 to i8
  %12 = lshr i128 %.val47, 40
  %13 = trunc i128 %12 to i8
  %14 = lshr i128 %.val47, 48
  %15 = trunc i128 %14 to i8
  %16 = lshr i128 %.val47, 56
  %17 = trunc i128 %16 to i8
  %18 = lshr i128 %.val47, 64
  %19 = trunc i128 %18 to i8
  %20 = lshr i128 %.val47, 72
  %21 = trunc i128 %20 to i8
  %22 = lshr i128 %.val47, 80
  %23 = trunc i128 %22 to i8
  %24 = lshr i128 %.val47, 88
  %25 = trunc i128 %24 to i8
  %26 = lshr i128 %.val47, 96
  %27 = trunc i128 %26 to i8
  %28 = lshr i128 %.val47, 104
  %29 = trunc i128 %28 to i8
  %30 = lshr i128 %.val47, 112
  %31 = trunc i128 %30 to i8
  %32 = lshr i128 %.val47, 120
  %33 = trunc nuw i128 %32 to i8
  store i8 %3, ptr %i.t, align 16, !noalias !566
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 %5, ptr %.sroa.416.0..sroa_idx.i, align 1, !noalias !566
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %7, ptr %.sroa.517.0..sroa_idx.i, align 2, !noalias !566
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store i8 %9, ptr %.sroa.618.0..sroa_idx.i, align 1, !noalias !566
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i8 %11, ptr %.sroa.719.0..sroa_idx.i, align 4, !noalias !566
  %.sroa.820.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store i8 %13, ptr %.sroa.820.0..sroa_idx.i, align 1, !noalias !566
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  store i8 %15, ptr %.sroa.921.0..sroa_idx.i, align 2, !noalias !566
  %.sroa.1022.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  store i8 %17, ptr %.sroa.1022.0..sroa_idx.i, align 1, !noalias !566
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 %19, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !566
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  store i8 %21, ptr %.sroa.12.0..sroa_idx.i, align 1, !noalias !566
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  store i8 %23, ptr %.sroa.13.0..sroa_idx.i, align 2, !noalias !566
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  store i8 %25, ptr %.sroa.14.0..sroa_idx.i, align 1, !noalias !566
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i8 %27, ptr %.sroa.15.0..sroa_idx.i, align 4, !noalias !566
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 13
  store i8 %29, ptr %.sroa.16.0..sroa_idx.i, align 1, !noalias !566
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 14
  store i8 %31, ptr %.sroa.17.0..sroa_idx.i, align 2, !noalias !566
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 15
  store i8 %33, ptr %.sroa.18.0..sroa_idx.i, align 1, !noalias !566
  %34 = load i128, ptr %i.t, align 16, !noalias !566, !noundef !4
  %i.dp = load i128, ptr %i.do, align 1, !alias.scope !566, !noundef !4
  %.not59.i = icmp eq i128 %34, %i.dp
  br i1 %.not59.i, label %bb.ac, label %bb.ad, !prof !15

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !566
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  store ptr %i.dq, ptr %i.r, align 8, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !566
  %35 = lshr i128 %.val47, 16
  %36 = insertelement <2 x i128> poison, i128 %.val47, i64 0 ; 2 uses
  %37 = shufflevector <2 x i128> %36, <2 x i128> poison, <2 x i32> zeroinitializer ; 3 uses
  %38 = lshr <2 x i128> %37, <i128 32, i128 48>
  %39 = lshr <2 x i128> %37, <i128 64, i128 80>
  %40 = lshr <2 x i128> %37, <i128 96, i128 112>
  %41 = insertelement <2 x i128> %36, i128 %35, i64 1
  %42 = trunc <2 x i128> %41 to <2 x i16>
  store <2 x i16> %42, ptr %i.q, align 16, !noalias !566
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %43 = trunc <2 x i128> %38 to <2 x i16>
  store <2 x i16> %43, ptr %.sroa.512.0..sroa_idx.i, align 4, !noalias !566
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %44 = trunc <2 x i128> %39 to <2 x i16>
  store <2 x i16> %44, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !566
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %45 = trunc <2 x i128> %40 to <2 x i16>
  store <2 x i16> %45, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !566
  %46 = load i128, ptr %i.q, align 16, !noalias !566, !noundef !4
  %i.dr = load i128, ptr %i.dq, align 2, !alias.scope !566, !noundef !4
  %.not58.i = icmp eq i128 %46, %i.dr
  br i1 %.not58.i, label %bb.ae, label %bb.af, !prof !15

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !566
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store ptr %i.ds, ptr %i.o, align 8, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !566
  %i.dt = lshr i128 %.val47, 32
  %i.du = insertelement <2 x i128> poison, i128 %.val47, i64 0 ; 2 uses
  %i.dv = shufflevector <2 x i128> %i.du, <2 x i128> poison, <2 x i32> zeroinitializer
  %i.dw = lshr <2 x i128> %i.dv, <i128 64, i128 96>
  %i.dx = insertelement <2 x i128> %i.du, i128 %i.dt, i64 1
  %i.dy = trunc <2 x i128> %i.dx to <2 x i32>
  store <2 x i32> %i.dy, ptr %i.n, align 16, !noalias !566
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dz = trunc <2 x i128> %i.dw to <2 x i32>
  store <2 x i32> %i.dz, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !566
  %i.ea = load i128, ptr %i.n, align 16, !noalias !566, !noundef !4
  %i.eb = load i128, ptr %i.ds, align 4, !alias.scope !566, !noundef !4
  %.not57.i = icmp eq i128 %i.ea, %i.eb
  br i1 %.not57.i, label %bb.ag, label %bb.ah, !prof !15

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !566
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ec, ptr %i.l, align 8, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !566
  %i.ed = trunc i128 %.val47 to i64
  %i.ee = lshr i128 %.val47, 64
  %i.ef = trunc nuw i128 %i.ee to i64
  store i64 %i.ed, ptr %i.k, align 16, !noalias !566
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.ef, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !566
  %i.eg = load i128, ptr %i.k, align 16, !noalias !566, !noundef !4
  %i.eh = load i128, ptr %i.ec, align 8, !alias.scope !566, !noundef !4
  %.not56.i = icmp eq i128 %i.eg, %i.eh
  br i1 %.not56.i, label %bb.ai, label %bb.aj, !prof !15

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !566
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !566
  store ptr %i.u, ptr %i.s, align 8, !noalias !566
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAaj10_NtB6_5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !566
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.ei, align 8, !noalias !566
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core5arrayAaj10_NtNtB7_3fmt5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !566
  %i.ej = call fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @9, ptr noundef nonnull %i.s) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !566
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit

bb.ae:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !566
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.af:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !566
  store ptr %i.r, ptr %i.p, align 8, !noalias !566
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAsj8_NtB6_5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !566
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.ek, align 8, !noalias !566
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core5arrayAsj8_NtNtB7_3fmt5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !566
  %i.el = call fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @9, ptr noundef nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !566
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !566
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !566
  store ptr %i.o, ptr %i.m, align 8, !noalias !566
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAlj4_NtB6_5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !566
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.em, align 8, !noalias !566
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core5arrayAlj4_NtNtB7_3fmt5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !566
  %i.en = call fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @9, ptr noundef nonnull %i.m) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !566
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit

bb.ai:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !566
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !566
  store ptr %i.l, ptr %i.j, align 8, !noalias !566
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAxj2_NtB6_5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !566
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.eo, align 8, !noalias !566
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core5arrayAxj2_NtNtB7_3fmt5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !566
  %i.ep = call fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @9, ptr noundef nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !566
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit

bb.ak:                                            ; preds = %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa.i = phi ptr [ %i.dn, %.preheader.preheader.i ], [ %i.ew, %.preheader.1.i ], [ %i.fa, %.preheader.2.i ], [ %i.fe, %.preheader.3.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !568
  store ptr %.lcssa.i, ptr %i.g, align 8, !noalias !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !568
  store ptr %i.i, ptr %i.e, align 8, !noalias !568
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !568
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @2, ptr noundef nonnull %i.e)
          to label %_RNCNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_errs2_0B3_.exit.i unwind label %bb.al, !noalias !566

common.resume.i:                                  ; preds = %bb.ao, %bb.al
  %common.resume.op.i = phi { ptr, i32 } [ %i.eq, %bb.al ], [ %i.ff, %bb.ao ]
  resume { ptr, i32 } %common.resume.op.i

bb.al:                                            ; preds = %bb.ak
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %common.resume.i unwind label %bb.am, !noalias !566

bb.am:                                            ; preds = %bb.al
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !566
  unreachable

_RNCNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_errs2_0B3_.exit.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !568
  %i.es = call noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error7contextNtNtCsexYYUdYSQU6_5alloc6string6StringECs5HiJSMzJl2A_10wasmi_wast(ptr noundef nonnull %.lcssa.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !566
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !566
  %.sroa.0.023.ptr.1.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !566
  store i64 1, ptr %i.i, align 8, !noalias !566
  %i.et = lshr i128 %.val47, 32
  %i.eu = trunc i128 %i.et to i32
  %.val60.1.i = load i32, ptr %.sroa.0.023.ptr.1.i, align 4, !range !565, !alias.scope !566, !noundef !4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val61.1.i = load i32, ptr %i.ev, align 8, !alias.scope !566
  %i.ew = tail call fastcc noundef ptr @_RNvCs5HiJSMzJl2A_10wasmi_wast18f32_matches_or_err(i32 %i.eu, i32 %.val60.1.i, i32 %.val61.1.i), !noalias !566 ; 2 uses
  %.not55.1.i = icmp eq ptr %i.ew, null
  br i1 %.not55.1.i, label %.preheader.2.i, label %bb.ak

.preheader.2.i:                                   ; preds = %.preheader.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !566
  %.sroa.0.023.ptr.2.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !566
  store i64 2, ptr %i.i, align 8, !noalias !566
  %i.ex = lshr i128 %.val47, 64
  %i.ey = trunc i128 %i.ex to i32
  %.val60.2.i = load i32, ptr %.sroa.0.023.ptr.2.i, align 4, !range !565, !alias.scope !566, !noundef !4
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val61.2.i = load i32, ptr %i.ez, align 8, !alias.scope !566
  %i.fa = tail call fastcc noundef ptr @_RNvCs5HiJSMzJl2A_10wasmi_wast18f32_matches_or_err(i32 %i.ey, i32 %.val60.2.i, i32 %.val61.2.i), !noalias !566 ; 2 uses
  %.not55.2.i = icmp eq ptr %i.fa, null
  br i1 %.not55.2.i, label %.preheader.3.i, label %bb.ak

.preheader.3.i:                                   ; preds = %.preheader.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !566
  %.sroa.0.023.ptr.3.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !566
  store i64 3, ptr %i.i, align 8, !noalias !566
  %i.fb = lshr i128 %.val47, 96
  %i.fc = trunc nuw i128 %i.fb to i32
  %.val60.3.i = load i32, ptr %.sroa.0.023.ptr.3.i, align 4, !range !565, !alias.scope !566, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val61.3.i = load i32, ptr %i.fd, align 8, !alias.scope !566
  %i.fe = tail call fastcc noundef ptr @_RNvCs5HiJSMzJl2A_10wasmi_wast18f32_matches_or_err(i32 %i.fc, i32 %.val60.3.i, i32 %.val61.3.i), !noalias !566 ; 2 uses
  %.not55.3.i = icmp eq ptr %i.fe, null
  br i1 %.not55.3.i, label %.loopexit.loopexit.i, label %bb.ak

.loopexit.loopexit.i:                             ; preds = %.preheader.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !566
  br label %_RNvCs5HiJSMzJl2A_10wasmi_wast19v128_matches_or_err.exit.thread

end_hunk_0
