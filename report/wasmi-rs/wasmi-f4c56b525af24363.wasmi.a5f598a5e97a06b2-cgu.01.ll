Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.01?download=true
inline.NumInlined: 5053
inline.NumDeleted: 3765
begin_hunk_0_@_RNvXs2_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorENtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator35visit_i32x4_extadd_pairwise_i16x8_uB9_:bb.a
  %i.h = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9507
  br label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator35visit_i32x4_extadd_pairwise_i16x8_u0NCB2v_s_0EB9_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.j = call noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator22bump_fuel_for_operator(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.i, i16 noundef 361) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.d, label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator35visit_i32x4_extadd_pairwise_i16x8_u0NCB2v_s_0EB9_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef align 8 ptr @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func4simd5visitNtB8_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator35visit_i32x4_extadd_pairwise_i16x8_u(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.i)
  br label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator35visit_i32x4_extadd_pairwise_i16x8_u0NCB2v_s_0EB9_.exit

_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator35visit_i32x4_extadd_pairwise_i16x8_u0NCB2v_s_0EB9_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs2_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorENtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator37visit_i16x8_relaxed_dot_i8x16_i7x16_sB9_(ptr noalias nofree noundef align 8 dereferenceable(728) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9514
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %0, ptr %i.b, align 8, !noalias !9514
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !9514
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9514
  %i.f = call noundef align 8 ptr @_RNvXsb_NtNtCs9FmeSmcCnTG_10wasmparser9validator9operatorsINtB5_21WasmProposalValidatorNtNtB7_4core18ValidatorResourcesENtNtNtNtB9_7readers4core9operators17VisitSimdOperator37visit_i16x8_relaxed_dot_i8x16_i7x16_sCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9514
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9515
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !9515
  store i8 20, ptr %i.a, align 8, !noalias !9515
  %i.h = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9515
  br label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator37visit_i16x8_relaxed_dot_i8x16_i7x16_s0NCB2v_s_0EB9_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.j = call noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator22bump_fuel_for_operator(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.i, i16 noundef 461) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.d, label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator37visit_i16x8_relaxed_dot_i8x16_i7x16_s0NCB2v_s_0EB9_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef align 8 ptr @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func4simd5visitNtB8_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator37visit_i16x8_relaxed_dot_i8x16_i7x16_s(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.i)
  br label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator37visit_i16x8_relaxed_dot_i8x16_i7x16_s0NCB2v_s_0EB9_.exit

_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator37visit_i16x8_relaxed_dot_i8x16_i7x16_s0NCB2v_s_0EB9_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs2_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorENtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_s_zeroB9_(ptr noalias nofree noundef align 8 dereferenceable(728) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9522
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %0, ptr %i.b, align 8, !noalias !9522
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !9522
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9522
  %i.f = call noundef align 8 ptr @_RNvXsb_NtNtCs9FmeSmcCnTG_10wasmparser9validator9operatorsINtB5_21WasmProposalValidatorNtNtB7_4core18ValidatorResourcesENtNtNtNtB9_7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_s_zeroCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9522
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9523
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !9523
  store i8 20, ptr %i.a, align 8, !noalias !9523
  %i.h = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9523
  br label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_s_zero0NCB2v_s_0EB9_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.j = call noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator22bump_fuel_for_operator(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.i, i16 noundef 446) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.d, label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_s_zero0NCB2v_s_0EB9_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef align 8 ptr @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func4simd5visitNtB8_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_s_zero(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.i)
  br label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_s_zero0NCB2v_s_0EB9_.exit

_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_s_zero0NCB2v_s_0EB9_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs2_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorENtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_u_zeroB9_(ptr noalias nofree noundef align 8 dereferenceable(728) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9530
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %0, ptr %i.b, align 8, !noalias !9530
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !9530
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9530
  %i.f = call noundef align 8 ptr @_RNvXsb_NtNtCs9FmeSmcCnTG_10wasmparser9validator9operatorsINtB5_21WasmProposalValidatorNtNtB7_4core18ValidatorResourcesENtNtNtNtB9_7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_u_zeroCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9530
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9531
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !9531
  store i8 20, ptr %i.a, align 8, !noalias !9531
  %i.h = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9531
  br label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_u_zero0NCB2v_s_0EB9_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.j = call noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator22bump_fuel_for_operator(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.i, i16 noundef 447) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.d, label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_u_zero0NCB2v_s_0EB9_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef align 8 ptr @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func4simd5visitNtB8_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_u_zero(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.i)
  br label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_u_zero0NCB2v_s_0EB9_.exit

_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator38visit_i32x4_relaxed_trunc_f64x2_u_zero0NCB2v_s_0EB9_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs2_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorENtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator41visit_i32x4_relaxed_dot_i8x16_i7x16_add_sB9_(ptr noalias nofree noundef align 8 dereferenceable(728) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9538
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %0, ptr %i.b, align 8, !noalias !9538
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !9538
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9538
  %i.f = call noundef align 8 ptr @_RNvXsb_NtNtCs9FmeSmcCnTG_10wasmparser9validator9operatorsINtB5_21WasmProposalValidatorNtNtB7_4core18ValidatorResourcesENtNtNtNtB9_7readers4core9operators17VisitSimdOperator41visit_i32x4_relaxed_dot_i8x16_i7x16_add_sCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9538
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9539
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !9539
  store i8 20, ptr %i.a, align 8, !noalias !9539
  %i.h = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9539
  br label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator41visit_i32x4_relaxed_dot_i8x16_i7x16_add_s0NCB2v_s_0EB9_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.j = call noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator22bump_fuel_for_operator(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.i, i16 noundef 462) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.d, label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator41visit_i32x4_relaxed_dot_i8x16_i7x16_add_s0NCB2v_s_0EB9_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef align 8 ptr @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func4simd5visitNtB8_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator41visit_i32x4_relaxed_dot_i8x16_i7x16_add_s(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.i)
  br label %_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator41visit_i32x4_relaxed_dot_i8x16_i7x16_add_s0NCB2v_s_0EB9_.exit

_RINvMs_NtNtCsefoF4u9kbII_5wasmi6engine10translatorINtB5_24ValidatingFuncTranslatorNtNtNtB5_4func4fuel26FuelMeteringFuncTranslatorE23validate_then_translateNCNvXs2_B5_BM_NtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator41visit_i32x4_relaxed_dot_i8x16_i7x16_add_s0NCB2v_s_0EB9_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCsefoF4u9kbII_5wasmi6engine10translatorNtB5_10ValidationNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load ptr, ptr %0, align 8, !noundef !4
  %i.e = icmp ne ptr %i.d, null                   ; 2 uses
  %i.f = zext i1 %i.e to i8
  store i8 %i.f, ptr %i.b, align 1
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %storemerge.in.v = select i1 %i.e, i64 16, i64 8
  %storemerge.in = getelementptr inbounds nuw i8, ptr %0, i64 %storemerge.in.v
  %storemerge = load i32, ptr %storemerge.in, align 8, !noundef !4
  store i32 %storemerge, ptr %i.a, align 4
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCs9FmeSmcCnTG_10wasmparser8featuresNtB5_12WasmFeaturesNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6engine10translatorNtB5_18LazyFuncTranslatorNtB5_14WasmTranslator5setup(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = tail call noundef ptr @_RNvMs_NtCsefoF4u9kbII_5wasmi6engineNtB4_10EngineWeak7upgrade(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !9552

bb.b:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = icmp eq ptr %i.m, null                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.o, align 8
  %.val17 = load i32, ptr %i.p, align 8
  %.sroa.05.0 = select i1 %i.n, i32 %.val, i32 %.val17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  store ptr null, ptr %i.l, align 8
  store i32 %.sroa.05.0, ptr %i.o, align 8
  br i1 %i.n, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsefoF4u9kbII_5wasmi6engine10EngineWeakNtB6_5Debug3fmtBA_, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  store ptr %i.m, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  invoke void @_RNvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB5_6Engine14init_lazy_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, i32 noundef %i.i, i32 noundef %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !9553
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #15
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !9554
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit16

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit16: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.v, align 1
  store i8 0, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvYINtNtNtCsefoF4u9kbII_5wasmi6engine10translator24ValidatingFuncTranslatorNtB5_18LazyFuncTranslatorENtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators13VisitOperator14visit_operatorB9_(ptr noalias nofree noundef align 8 dereferenceable(272) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 4 uses
  %i.al = alloca [16 x i8], align 8               ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 4 uses
  %i.ar = alloca [16 x i8], align 8               ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 4 uses
  %i.ay = alloca [16 x i8], align 8               ; 4 uses
  %i.az = alloca [16 x i8], align 8               ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 4 uses
  %i.bb = alloca [16 x i8], align 8               ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 4 uses
  %i.be = alloca [16 x i8], align 8               ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 4 uses
  %i.bg = alloca [16 x i8], align 8               ; 4 uses
  %i.bh = alloca [16 x i8], align 8               ; 4 uses
  %i.bi = alloca [16 x i8], align 8               ; 4 uses
  %i.bj = alloca [16 x i8], align 8               ; 4 uses
  %i.bk = alloca [16 x i8], align 8               ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 4 uses
  %i.bm = alloca [16 x i8], align 8               ; 4 uses
  %i.bn = alloca [16 x i8], align 8               ; 4 uses
  %i.bo = alloca [16 x i8], align 8               ; 4 uses
  %i.bp = alloca [16 x i8], align 8               ; 4 uses
  %i.bq = alloca [16 x i8], align 8               ; 4 uses
  %i.br = alloca [48 x i8], align 8               ; 8 uses
  %i.bs = load i16, ptr %1, align 8, !range !7, !noundef !4
end_hunk_0
