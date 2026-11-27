Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/execute.execute.3f09b7a32ff94216-cgu.0?download=true
inline.NumInlined: 382
inline.NumDeleted: 239
begin_hunk_0
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core5value4V128NtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi7reftype8NullableNtNtBB_4func4FuncENtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@52 = private unnamed_addr constant [7 x i8] c"FuncRef", align 1
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi7reftype8NullableNtBz_9ExternRefENtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@54 = private unnamed_addr constant [9 x i8] c"ExternRef", align 1
@55 = private unnamed_addr constant [22 x i8] c"UnreachableCodeReached", align 1
@56 = private unnamed_addr constant [17 x i8] c"MemoryOutOfBounds", align 1
@57 = private unnamed_addr constant [16 x i8] c"TableOutOfBounds", align 1
@58 = private unnamed_addr constant [18 x i8] c"IndirectCallToNull", align 1
@59 = private unnamed_addr constant [21 x i8] c"IntegerDivisionByZero", align 1
@60 = private unnamed_addr constant [15 x i8] c"IntegerOverflow", align 1
@61 = private unnamed_addr constant [22 x i8] c"BadConversionToInteger", align 1
@62 = private unnamed_addr constant [13 x i8] c"StackOverflow", align 1
@63 = private unnamed_addr constant [12 x i8] c"BadSignature", align 1
@64 = private unnamed_addr constant [22 x i8] c"GrowthOperationLimited", align 1
@65 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr7ConstOpNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@66 = private unnamed_addr constant [5 x i8] c"Const", align 1
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr11GlobalGetOpNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@68 = private unnamed_addr constant [9 x i8] c"GlobalGet", align 1
@69 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9FuncRefOpNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr6ExprOpNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@71 = private unnamed_addr constant [4 x i8] c"Expr", align 1
@72 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr8ConstValNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@73 = private unnamed_addr constant [7 x i8] c"ConstOp", align 1
@74 = private unnamed_addr constant [5 x i8] c"value", align 1
@75 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@76 = private unnamed_addr constant [11 x i8] c"GlobalGetOp", align 1
@77 = private unnamed_addr constant [5 x i8] c"index", align 1
@78 = private unnamed_addr constant [9 x i8] c"FuncRefOp", align 1
@79 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs5zeGauAcNNa_10wasmi_core5table2ty7RefTypeNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@80 = private unnamed_addr constant [4 x i8] c"Null", align 1
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeNtB6_5Debug3fmtCs5py4yDLWIja_7execute = private unnamed_addr constant [12 x i8] c"\16\11\10\12\15\0F\16\0D\0C\09\16\11", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeNtB6_5Debug3fmtCs5py4yDLWIja_7execute.70 = private unnamed_addr constant [12 x ptr] [ptr @55, ptr @56, ptr @57, ptr @58, ptr @59, ptr @60, ptr @61, ptr @62, ptr @63, ptr @35, ptr @64, ptr @24], align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi4func5error9FuncErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute = private unnamed_addr constant [5 x i8] c"\14\18\17\15\14", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi4func5error9FuncErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute.71 = private unnamed_addr constant [5 x ptr] [ptr @16, ptr @17, ptr @18, ptr @19, ptr @20], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsefoF4u9kbII_5wasmi5tableNtB3_5Table10dynamic_tyRRQINtNtB5_5store5StoreNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %2, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner13resolve_table(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table10dynamic_ty(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsefoF4u9kbII_5wasmi5tableNtB3_5Table2tyQQINtNtB5_5store5StoreNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %2, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner13resolve_table(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsefoF4u9kbII_5wasmi5tableNtB3_5Table3newINtNtNtB5_5store7context15StoreContextMutNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1)
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load <2 x ptr>, ptr %i.i, align 8
  store <2 x ptr> %i.j, ptr %i.g, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtCsefoF4u9kbII_5wasmi5tableNtB2_5Table10unwrap_ref(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %3)
  %i.k = load i64, ptr %i.e, align 8, !range !24, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.o, align 8
  store i8 14, ptr %i.b, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.l, align 8, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.t = load i8, ptr %i.s, align 4, !range !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %i.r, i1 noundef zeroext %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  %i.v = load i64, ptr %i.d, align 8, !range !8, !noundef !5 ; 2 uses
  %i.w = icmp eq i64 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.aa, ptr %i.ac, align 8
  store i8 14, ptr %i.a, align 8
  %i.ad = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.616.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.v, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.y, ptr %.sroa.5.0..sroa_idx21, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8
  %i.af = call { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner11alloc_table(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c) ; 2 uses
  %i.ag = extractvalue { i32, i32 } %i.af, 0
  %i.ah = extractvalue { i32, i32 } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ag, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ah, ptr %i.aj, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.sink = phi i32 [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.e ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RINvMNtCsefoF4u9kbII_5wasmi5tableNtB3_5Table4sizeRQQINtNtB5_5store5StoreNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner13resolve_table(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ult i64 %i.c, 2305843009213693952
  tail call void @llvm.assume(i1 %i.d)
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvMNtCsefoF4u9kbII_5wasmi6globalNtB3_6Global2tyQQINtNtB5_5store5StoreNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner14resolve_global(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.f = load i8, ptr %i.e, align 1, !range !9, !noundef !5
  %i.g = insertvalue { i1, i8 } poison, i1 %i.d, 0
  %i.h = insertvalue { i1, i8 } %i.g, i8 %i.f, 1
  ret { i1, i8 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvMNtCsefoF4u9kbII_5wasmi6globalNtB3_6Global2tyRRQINtNtB5_5store5StoreNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner14resolve_global(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.f = load i8, ptr %i.e, align 1, !range !9, !noundef !5
  %i.g = insertvalue { i1, i8 } poison, i1 %i.d, 0
  %i.h = insertvalue { i1, i8 } %i.g, i8 %i.f, 1
  ret { i1, i8 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMNtCsefoF4u9kbII_5wasmi6globalNtB3_6Global3newINtNtNtB5_5store7context15StoreContextMutNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(1688) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load i8, ptr %1, align 8, !range !9, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsefoF4u9kbII_5wasmi5valueNtB3_3Val14unwrap_raw_valINtNtNtB5_5store7context12StoreContextNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %0)
  %i.e = load i64, ptr %i.b, align 8, !range !10, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load <2 x i64>, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x i64> %i.h, ptr %i.a, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %3 = zext i1 %2 to i16
  %4 = zext nneg i8 %i.d to i16
  %5 = shl nuw nsw i16 %4, 8
  %6 = or disjoint i16 %5, %3
  store i16 %6, ptr %i.i, align 16
  %i.j = call { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12alloc_global(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i32, i32 } %i.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsc_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsefoF4u9kbII_5wasmi6memoryNtB3_6Memory10dynamic_tyRRQINtNtB5_5store5StoreNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %2, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner14resolve_memory(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory10dynamic_ty(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsefoF4u9kbII_5wasmi6memoryNtB3_6Memory2tyQQINtNtB5_5store5StoreNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %2, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner14resolve_memory(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsefoF4u9kbII_5wasmi6memoryNtB3_6Memory3newINtNtNtB5_5store7context15StoreContextMutNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1)
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load <2 x ptr>, ptr %i.h, align 8
  store <2 x ptr> %i.i, ptr %i.f, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = load i64, ptr %i.d, align 8, !range !8, !noundef !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.o, ptr %i.q, align 8
  store i8 13, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.68.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.j, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.o, ptr %.sroa.8.0..sroa_idx4, align 8
  %i.t = call { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12alloc_memory(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b) ; 2 uses
  %i.u = extractvalue { i32, i32 } %i.t, 0
  %i.v = extractvalue { i32, i32 } %i.t, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.u, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.v, ptr %i.x, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMNtCsefoF4u9kbII_5wasmi6memoryNtB3_6Memory5writeINtNtNtB5_5store7context15StoreContextMutNtNtB5_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner18resolve_memory_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0)
  %i.b = tail call { i64, i64 } @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret { i64, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsefoF4u9kbII_5wasmi8instanceNtB3_8Instance7exportsNtNtB5_7limiter11StoreLimitsRINtNtB5_5store5StoreBU_EECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1688) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1)
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load <2 x i64>, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = phi <2 x i64> [ %i.f, %bb.b ], [ <i64 undef, i64 0>, %bb.a ] ; 2 uses
  store i64 %.sroa.0.sroa.0.0, ptr %0, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = extractelement <2 x i64> %i.g, i64 0
  store i64 %i.h, ptr %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.sroa.0.0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.g, ptr %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMNtNtCsefoF4u9kbII_5wasmi5table7elementNtB3_14ElementSegment3newINtNtNtB7_5store7context15StoreContextMutNtNtB7_7limiter11StoreLimitsEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(1688) %0, i1 noundef zeroext %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMNtNtCs5zeGauAcNNa_10wasmi_core5table7elementNtB3_14ElementSegment3newINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtB5_3raw6RawRefEECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3)
  %i.b = call { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner21alloc_element_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i32, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCsefoF4u9kbII_5wasmi5table7elementNtB3_14ElementSegment4sizeRQQINtNtB7_5store5StoreNtNtB7_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner15resolve_element(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0)
  %i.b = tail call noundef i32 @_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table7elementNtB2_14ElementSegment4size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1w_IB1w_INtNtB1A_6copied6CopiedINtNtNtB1E_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvYNtNtCscoiT177WhKJ_10wasmi_fuzz5value11FuzzValTypeINtNtB1E_7convert4FromB3h_E4fromENCNvCs5py4yDLWIja_7execute11fill_values0ENvYBG_IB4S_NtB46_7FuzzValE4fromEEB5s_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENtNtNtB8_6traits8iterator8Iterator9size_hintCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !10, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.b, label %bb.d, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !36, !noundef !5 ; 3 uses
  %i.j = load i64, ptr %0, align 8, !range !12, !alias.scope !36, !noundef !5
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE7reserveCs5py4yDLWIja_7execute.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.f, i64 noundef 8, i64 noundef 24)
  %.pre = load i64, ptr %i.h, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE7reserveCs5py4yDLWIja_7execute.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE7reserveCs5py4yDLWIja_7execute.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
