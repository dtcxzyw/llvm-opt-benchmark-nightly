Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.06?download=true
inline.NumInlined: 11983
inline.NumDeleted: 6300
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyINtNtCscgRAwXFJnXP_4core6option6OptionRyEEEE7reserveCsfcROwRM8ZtH_11polars_plan:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69246
  %i.b = load i64, ptr %i.a, align 8, !dbg !69246, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69247, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69252
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69254
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69255, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69256

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !69257
  br label %bb.b, !dbg !69257
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !49046 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69258
  %i.b = load i64, ptr %i.a, align 8, !dbg !69258, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69259, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69264
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69266
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69267, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69268

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !69269
  br label %bb.b, !dbg !69269
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !49236 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69270
  %i.b = load i64, ptr %i.a, align 8, !dbg !69270, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69271, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69276
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69278
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69279, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69280

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !69281
  br label %bb.b, !dbg !69281
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyRdEEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !49426 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69282
  %i.b = load i64, ptr %i.a, align 8, !dbg !69282, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69283, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69288
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69290
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69291, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69292

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !69293
  br label %bb.b, !dbg !69293
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyRfEEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !49616 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69294
  %i.b = load i64, ptr %i.a, align 8, !dbg !69294, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69295, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69300
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69302
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69303, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69304

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !69305
  br label %bb.b, !dbg !69305
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyRhEEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !49806 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69306
  %i.b = load i64, ptr %i.a, align 8, !dbg !69306, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69307, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69312
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69314
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69315, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69316

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !69317
  br label %bb.b, !dbg !69317
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyRmEEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !49996 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69318
  %i.b = load i64, ptr %i.a, align 8, !dbg !69318, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69319, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69324
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69326
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69327, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69328

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !69329
  br label %bb.b, !dbg !69329
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyRoEEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !50186 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69330
  %i.b = load i64, ptr %i.a, align 8, !dbg !69330, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69331, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69336
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69338
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69339, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69340

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !69341
  br label %bb.b, !dbg !69341
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyRtEEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !50376 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69342
  %i.b = load i64, ptr %i.a, align 8, !dbg !69342, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69343, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69348
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69350
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69351, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69352

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !69353
  br label %bb.b, !dbg !69353
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyRyEEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !50566 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69354
  %i.b = load i64, ptr %i.a, align 8, !dbg !69354, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69355, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69360
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69362
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69363, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69364

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !69365
  br label %bb.b, !dbg !69365
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE6removeCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !dbg !69366 {
bb.a:
  %.sroa.6 = alloca [79 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !69367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69368), !dbg !69371
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !69372 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !69372, !alias.scope !69368, !noalias !69377, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698, !dbg !69379
  tail call void @llvm.assume(i1 %i.c), !dbg !69381
  %.not.i = icmp ult i64 %2, %i.b, !dbg !69382
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !69382

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !69384
  %i.e = load ptr, ptr %i.d, align 8, !dbg !69384, !alias.scope !69368, !noalias !69377, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %2, !dbg !69394 ; 4 uses
  %.sroa.0.0.copyload1 = load i8, ptr %i.f, align 16, !dbg !69397, !noalias !69368 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 1, !dbg !69397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx2, i64 79, i1 false), !dbg !69397, !noalias !69368
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80, !dbg !69401
  %i.h = xor i64 %2, -1, !dbg !69403
  %i.i = add nsw i64 %i.b, %i.h, !dbg !69403
  %i.j = mul nuw nsw i64 %i.i, 80, !dbg !69404
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.f, ptr nonnull align 16 %i.g, i64 %i.j, i1 false), !dbg !69404, !noalias !69407
  %i.k = add nsw i64 %i.b, -1, !dbg !69408        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !69409, !alias.scope !69368, !noalias !69377
  %.not = icmp eq i8 %.sroa.0.0.copyload1, 31, !dbg !69367
  br i1 %.not, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.b, !dbg !69412, !prof !6522

bb.b:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit
  store i8 %.sroa.0.0.copyload1, ptr %0, align 16, !dbg !69413
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6, i64 79, i1 false), !dbg !69413
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !69414
  ret void, !dbg !69415

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit ], !dbg !69416 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 115292150460684698, !dbg !69419
  tail call void @llvm.assume(i1 %i.m), !dbg !69421
  tail call void @_RNvNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #48, !dbg !69422
  unreachable, !dbg !69422
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE6removeCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !dbg !69423 {
bb.a:
  %.sroa.0 = alloca [31 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !69424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69425), !dbg !69428
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !69429 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !69429, !alias.scope !69425, !noalias !69434, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744, !dbg !69436
  tail call void @llvm.assume(i1 %i.c), !dbg !69438
  %.not.i = icmp ult i64 %2, %i.b, !dbg !69439
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !69439

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !69441
  %i.e = load ptr, ptr %i.d, align 8, !dbg !69441, !alias.scope !69425, !noalias !69434, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %2, !dbg !69451 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(31) %i.f, i64 31, i1 false), !dbg !69454, !noalias !69425
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.f, i64 31, !dbg !69454
  %.sroa.4.0.copyload2 = load i8, ptr %.sroa.4.0..sroa_idx1, align 1, !dbg !69454, !noalias !69425 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !69458
  %i.h = xor i64 %2, -1, !dbg !69460
  %i.i = add nsw i64 %i.b, %i.h, !dbg !69460
  %i.j = shl nuw nsw i64 %i.i, 5, !dbg !69461
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !dbg !69461, !noalias !69464
  %i.k = add nsw i64 %i.b, -1, !dbg !69465        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !69466, !alias.scope !69425, !noalias !69434
  %.not = icmp eq i8 %.sroa.4.0.copyload2, -38, !dbg !69424
  br i1 %.not, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.b, !dbg !69469, !prof !6522

bb.b:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %0, ptr noundef nonnull align 8 dereferenceable(31) %.sroa.0, i64 31, i1 false), !dbg !69470
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !69470
  store i8 %.sroa.4.0.copyload2, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !69470
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !69471
  ret void, !dbg !69472

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10try_removeCsfcROwRM8ZtH_11polars_plan.exit ], !dbg !69473 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 288230376151711744, !dbg !69476
  tail call void @llvm.assume(i1 %i.m), !dbg !69478
  tail call void @_RNvNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #48, !dbg !69479
  unreachable, !dbg !69479
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtB1o_7float164pf16EETbINtNtB1o_7idx_vec7UnitVecmEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !50753 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69480
  %i.b = load i64, ptr %i.a, align 8, !dbg !69480, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69481, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69486
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69488
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69489, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69490

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40), !dbg !69491
  br label %bb.b, !dbg !69491
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRdEETbINtNtB1o_7idx_vec7UnitVecmEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !50929 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69492
  %i.b = load i64, ptr %i.a, align 8, !dbg !69492, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69493, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69498
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69500
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69501, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69502

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40), !dbg !69503
  br label %bb.b, !dbg !69503
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRfEETbINtNtB1o_7idx_vec7UnitVecmEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !51104 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69504
  %i.b = load i64, ptr %i.a, align 8, !dbg !69504, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69505, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69510
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69512
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69513, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69514

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40), !dbg !69515
  br label %bb.b, !dbg !69515
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRhEETbINtNtB1o_7idx_vec7UnitVecmEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !51279 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69516
  %i.b = load i64, ptr %i.a, align 8, !dbg !69516, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69517, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69522
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69524
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69525, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69526

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40), !dbg !69527
  br label %bb.b, !dbg !69527
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRmEETbINtNtB1o_7idx_vec7UnitVecmEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !51454 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69528
  %i.b = load i64, ptr %i.a, align 8, !dbg !69528, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69529, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69534
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69536
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69537, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69538

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40), !dbg !69539
  br label %bb.b, !dbg !69539
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRoEETbINtNtB1o_7idx_vec7UnitVecmEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !51629 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69540
  %i.b = load i64, ptr %i.a, align 8, !dbg !69540, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69541, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69546
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69548
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69549, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69550

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40), !dbg !69551
  br label %bb.b, !dbg !69551
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRtEETbINtNtB1o_7idx_vec7UnitVecmEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !51804 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69552
  %i.b = load i64, ptr %i.a, align 8, !dbg !69552, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69553, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69558
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69560
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69561, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69562

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40), !dbg !69563
  br label %bb.b, !dbg !69563
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRyEETbINtNtB1o_7idx_vec7UnitVecmEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !51979 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69564
  %i.b = load i64, ptr %i.a, align 8, !dbg !69564, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69565, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69570
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69572
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69573, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69574

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40), !dbg !69575
  br label %bb.b, !dbg !69575
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1o_7float164pf16ETbINtNtB1o_7idx_vec7UnitVecmEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !52154 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69576
  %i.b = load i64, ptr %i.a, align 8, !dbg !69576, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69577, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69582
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69584
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69585, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69586

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40), !dbg !69587
  br label %bb.b, !dbg !69587
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdETbINtNtB1o_7idx_vec7UnitVecmEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !52329 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69588
  %i.b = load i64, ptr %i.a, align 8, !dbg !69588, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !69589, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !69594
  %i.e = icmp ugt i64 %1, %i.d, !dbg !69596
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !69597, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !69598

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40), !dbg !69599
  br label %bb.b, !dbg !69599
}
end_hunk_0
begin_hunk_1_@_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtB6_6string6StringE16into_boxed_sliceCsfcROwRM8ZtH_11polars_plan:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70151 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70158 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70158
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70158, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 384307168202282326, !dbg !70159
  tail call void @llvm.assume(i1 %i.f), !dbg !70165
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !70166
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !70166
  ret { ptr, i64 } %i.h, !dbg !70166

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0) #45
          to label %bb.h unwind label %bb.g, !dbg !70167

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !70168 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !70169
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, label %bb.e, !dbg !70170, !prof !610

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !70158
  br label %bb.c, !dbg !70170

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !70168
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #44
          to label %bb.f unwind label %bb.d, !dbg !70171

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !70172
  unreachable, !dbg !70172

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !70172
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarE16into_boxed_sliceCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70173 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !70174, !range !4749, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70183 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !70183, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !70184
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !70184

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 16, i64 noundef 96)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70185 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70192 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70192
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70192, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 96076792050570582, !dbg !70193
  tail call void @llvm.assume(i1 %i.f), !dbg !70199
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !70200
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !70200
  ret { ptr, i64 } %i.h, !dbg !70200

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0) #45
          to label %bb.h unwind label %bb.g, !dbg !70201

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !70202 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !70203
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, label %bb.e, !dbg !70204, !prof !610

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !70192
  br label %bb.c, !dbg !70204

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !70202
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #44
          to label %bb.f unwind label %bb.d, !dbg !70205

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !70206
  unreachable, !dbg !70206

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !70206
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !4815 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70207
  %i.b = load i64, ptr %i.a, align 8, !dbg !70207, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !70208, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !70213
  %i.e = icmp ugt i64 %1, %i.d, !dbg !70215
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !70216, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !70217

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8), !dbg !70218
  br label %bb.b, !dbg !70218
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE16into_boxed_sliceCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70219 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !70220, !range !4749, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70229 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !70229, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !70230
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !70230

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70231 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70238 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70238
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70238, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 384307168202282326, !dbg !70239
  tail call void @llvm.assume(i1 %i.f), !dbg !70245
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !70246
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !70246
  ret { ptr, i64 } %i.h, !dbg !70246

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0) #45
          to label %bb.h unwind label %bb.g, !dbg !70247

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !70248 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !70249
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, label %bb.e, !dbg !70250, !prof !610

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !70238
  br label %bb.c, !dbg !70250

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !70248
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #44
          to label %bb.f unwind label %bb.d, !dbg !70251

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !70252
  unreachable, !dbg !70252

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !70252
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE6removeCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !dbg !70253 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !70254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70255), !dbg !70258
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !70259 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !70259, !alias.scope !70255, !noalias !70264, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326, !dbg !70266
  tail call void @llvm.assume(i1 %i.c), !dbg !70268
  %.not.i = icmp ult i64 %2, %i.b, !dbg !70269
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCsfcROwRM8ZtH_11polars_plan.exit, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !70269

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !70271
  %i.e = load ptr, ptr %i.d, align 8, !dbg !70271, !alias.scope !70255, !noalias !70264, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2, !dbg !70281 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !dbg !70284, !noalias !70255 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !70284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !dbg !70284, !noalias !70255
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !70288
  %i.h = xor i64 %2, -1, !dbg !70290
  %i.i = add nsw i64 %i.b, %i.h, !dbg !70290
  %i.j = mul nuw nsw i64 %i.i, 24, !dbg !70291
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !dbg !70291, !noalias !70294
  %i.k = add nsw i64 %i.b, -1, !dbg !70295        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !70296, !alias.scope !70255, !noalias !70264
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null, !dbg !70254
  br i1 %.not, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.b, !dbg !70299, !prof !6522

bb.b:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCsfcROwRM8ZtH_11polars_plan.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8, !dbg !70300
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !70300
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !70301
  ret void, !dbg !70302

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCsfcROwRM8ZtH_11polars_plan.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCsfcROwRM8ZtH_11polars_plan.exit ], !dbg !70303 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326, !dbg !70306
  tail call void @llvm.assume(i1 %i.m), !dbg !70308
  tail call void @_RNvNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #48, !dbg !70309
  unreachable, !dbg !70309
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE16into_boxed_sliceCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70310 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !70311, !range !4749, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70320 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !70320, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !70321
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !70321

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 16, i64 noundef 48)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70322 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70329 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70329
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70329, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 192153584101141163, !dbg !70330
  tail call void @llvm.assume(i1 %i.f), !dbg !70336
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !70337
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !70337
  ret { ptr, i64 } %i.h, !dbg !70337

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0) #45
          to label %bb.h unwind label %bb.g, !dbg !70338

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !70339 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !70340
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, label %bb.e, !dbg !70341, !prof !610

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !70329
  br label %bb.c, !dbg !70341

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !70339
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #44
          to label %bb.f unwind label %bb.d, !dbg !70342

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !70343
  unreachable, !dbg !70343

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !70343
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1d9mkheQt2j_4http6header3map3PosE16into_boxed_sliceCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70344 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !70345, !range !4749, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70354 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !70354, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !70355
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !70355

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 2, i64 noundef 4)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70356 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70363 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70363
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70363, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 2305843009213693952, !dbg !70364
  tail call void @llvm.assume(i1 %i.f), !dbg !70370
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !70371
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !70371
  ret { ptr, i64 } %i.h, !dbg !70371

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1d9mkheQt2j_4http6header3map3PosENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1d9mkheQt2j_4http6header3map3PosEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.g, !dbg !70372

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !70377 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !70378
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, label %bb.e, !dbg !70379, !prof !610

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !70363
  br label %bb.c, !dbg !70379

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !70377
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #44
          to label %bb.f unwind label %bb.d, !dbg !70380

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !70381
  unreachable, !dbg !70381

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1d9mkheQt2j_4http6header3map3PosEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !70381
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated11ArrowSchemaE16into_boxed_sliceCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70382 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !70383, !range !4749, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70392 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !70392, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !70393
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !70393

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70394 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70401 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70401
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70401, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 128102389400760776, !dbg !70402
  tail call void @llvm.assume(i1 %i.f), !dbg !70408
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !70409
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !70409
  ret { ptr, i64 } %i.h, !dbg !70409

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated11ArrowSchemaEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0) #45
          to label %bb.h unwind label %bb.g, !dbg !70410

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !70411 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !70412
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, label %bb.e, !dbg !70413, !prof !610

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !70401
  br label %bb.c, !dbg !70413

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !70411
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #44
          to label %bb.f unwind label %bb.d, !dbg !70414

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !70415
  unreachable, !dbg !70415

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !70415
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnE16into_boxed_sliceBK_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70416 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !70417, !range !4749, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70426 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !70426, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !70427
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !70427

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 16, i64 noundef 160)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70428 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70435 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70435
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70435, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 57646075230342349, !dbg !70436
  tail call void @llvm.assume(i1 %i.f), !dbg !70442
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !70443
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !70443
  ret { ptr, i64 } %i.h, !dbg !70443

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %0) #45
          to label %bb.h unwind label %bb.g, !dbg !70444

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !70445 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !70446
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, label %bb.e, !dbg !70447, !prof !610

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !70435
  br label %bb.c, !dbg !70447

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !70445
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #44
          to label %bb.f unwind label %bb.d, !dbg !70448

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !70449
  unreachable, !dbg !70449

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !70449
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE16into_boxed_sliceBK_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70450 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !70451, !range !4749, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70460 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !70460, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !70461
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !70461

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 16, i64 noundef 368)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70462 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70469 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70469
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70469, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 25063510969714065, !dbg !70470
  tail call void @llvm.assume(i1 %i.f), !dbg !70476
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !70477
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !70477
  ret { ptr, i64 } %i.h, !dbg !70477

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %0) #45
          to label %bb.h unwind label %bb.g, !dbg !70478

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !70479 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !70480
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, label %bb.e, !dbg !70481, !prof !610

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !70469
  br label %bb.c, !dbg !70481

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !70479
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #44
          to label %bb.f unwind label %bb.d, !dbg !70482

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !70483
  unreachable, !dbg !70483

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !70483
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE6removeBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !dbg !70484 {
bb.a:
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !70485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70486), !dbg !70489
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !70490 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !70490, !alias.scope !70486, !noalias !70495, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 82351536043346213, !dbg !70497
  tail call void @llvm.assume(i1 %i.c), !dbg !70499
  %.not.i = icmp ult i64 %2, %i.b, !dbg !70500
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE10try_removeBK_.exit, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE10try_removeBK_.exit.thread, !dbg !70500

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE10try_removeBK_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !70502
  %i.e = load ptr, ptr %i.d, align 8, !dbg !70502, !alias.scope !70486, !noalias !70495, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %2, !dbg !70512 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 16, !dbg !70515, !noalias !70486 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !70515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx2, i64 104, i1 false), !dbg !70515, !noalias !70486
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !70519
  %i.h = xor i64 %2, -1, !dbg !70521
  %i.i = add nsw i64 %i.b, %i.h, !dbg !70521
  %i.j = mul nuw nsw i64 %i.i, 112, !dbg !70522
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.f, ptr nonnull align 16 %i.g, i64 %i.j, i1 false), !dbg !70522, !noalias !70525
  %i.k = add nsw i64 %i.b, -1, !dbg !70526        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !70527, !alias.scope !70486, !noalias !70495
  %.not = icmp eq i64 %.sroa.0.0.copyload1, 5, !dbg !70485
  br i1 %.not, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE10try_removeBK_.exit.thread, label %bb.b, !dbg !70530, !prof !6522

bb.b:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE10try_removeBK_.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 16, !dbg !70531
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false), !dbg !70531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !70532
  ret void, !dbg !70533

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE10try_removeBK_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE10try_removeBK_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE10try_removeBK_.exit ], !dbg !70534 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 82351536043346213, !dbg !70537
  tail call void @llvm.assume(i1 %i.m), !dbg !70539
  tail call void @_RNvNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #48, !dbg !70540
  unreachable, !dbg !70540
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneE16into_boxed_sliceCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70541 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !70542, !range !4749, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70551 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !70551, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !70552
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !70552

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70553 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70560 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70560
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70560, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 384307168202282326, !dbg !70561
  tail call void @llvm.assume(i1 %i.f), !dbg !70567
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !70568
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !70568
  ret { ptr, i64 } %i.h, !dbg !70568

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0) #45
          to label %bb.h unwind label %bb.g, !dbg !70569

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !70570 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !70571
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, label %bb.e, !dbg !70572, !prof !610

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !70560
  br label %bb.c, !dbg !70572

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !70570
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #44
          to label %bb.f unwind label %bb.d, !dbg !70573

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !70574
  unreachable, !dbg !70574

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !70574
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !6850 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70575
  %i.b = load i64, ptr %i.a, align 8, !dbg !70575, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !70576, !range !4749, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !70581
  %i.e = icmp ugt i64 %1, %i.d, !dbg !70583
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !70584, !prof !783

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !70585

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 16), !dbg !70586
  br label %bb.b, !dbg !70586
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE16into_boxed_sliceBM_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70587 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !70588, !range !4749, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70597 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !70597, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !70598
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !70598

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70599 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70606 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70606
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70606, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 288230376151711744, !dbg !70607
  tail call void @llvm.assume(i1 %i.f), !dbg !70613
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !70614
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !70614
  ret { ptr, i64 } %i.h, !dbg !70614

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %0) #45
          to label %bb.h unwind label %bb.g, !dbg !70615

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !70616 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !70617
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, label %bb.e, !dbg !70618, !prof !610

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !70606
  br label %bb.c, !dbg !70618

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !70616
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #44
          to label %bb.f unwind label %bb.d, !dbg !70619

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !70620
  unreachable, !dbg !70620

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !70620
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecbE6removeCsfcROwRM8ZtH_11polars_plan(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 !dbg !70621 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70622), !dbg !70625
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70626 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !70626, !alias.scope !70622, !noundef !13 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !70631
  tail call void @llvm.assume(i1 %i.c), !dbg !70633
  %.not.i = icmp ult i64 %1, %i.b, !dbg !70634
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !70634

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70636
  %i.e = load ptr, ptr %i.d, align 8, !dbg !70636, !alias.scope !70622, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %1, !dbg !70646 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !dbg !70649, !range !3568, !noalias !70622, !noundef !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1, !dbg !70653
  %i.i = xor i64 %1, -1, !dbg !70655
  %i.j = add nsw i64 %i.b, %i.i, !dbg !70655
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %i.h, i64 %i.j, i1 false), !dbg !70656, !noalias !70622
  %i.k = add nsw i64 %i.b, -1, !dbg !70659
  store i64 %i.k, ptr %i.a, align 8, !dbg !70660, !alias.scope !70622
  %i.l = trunc nuw i8 %i.g to i1, !dbg !70663
  ret i1 %i.l, !dbg !70664

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #48, !dbg !70665
  unreachable, !dbg !70665
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70666 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !70667, !range !4749, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70676 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !70676, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !70677
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !70677

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !70678 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsfcROwRM8ZtH_11polars_plan.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !70685 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70685
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !70685, !nonnull !13, !noundef !13
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1, !dbg !70686
  tail call void @llvm.assume(i1 %i.f), !dbg !70692
end_hunk_1
