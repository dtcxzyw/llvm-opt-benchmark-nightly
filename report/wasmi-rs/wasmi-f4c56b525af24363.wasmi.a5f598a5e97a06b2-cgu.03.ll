Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.03?download=true
begin_hunk_0_@_RNvNtCs5zeGauAcNNa_10wasmi_core4simd12i8x16_avgr_u:bb.a
  %i.b = load <16 x i8>, ptr %2, align 1, !alias.scope !4046, !noalias !4047
  %i.c = zext <16 x i8> %i.a to <16 x i16>
  %i.d = zext <16 x i8> %i.b to <16 x i16>
  %i.e = add nuw nsw <16 x i16> %i.d, %i.c        ; 2 uses
  %i.f = lshr <16 x i16> %i.e, splat (i16 1)
  %i.g = sub nuw nsw <16 x i16> %i.e, %i.f
  %i.h = trunc <16 x i16> %i.g to <16 x i8>
  store <16 x i8> %i.h, ptr %0, align 1, !alias.scope !4048, !noalias !4049
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd12i8x16_popcnt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4060)
  %i.a = load <16 x i8>, ptr %1, align 1, !alias.scope !4061, !noalias !4059
  %i.b = tail call range(i8 0, 9) <16 x i8> @llvm.ctpop.v16i8(<16 x i8> %i.a)
  store <16 x i8> %i.b, ptr %0, align 1, !alias.scope !4062, !noalias !4060
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd13f32x4_nearest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4073)
  %.sroa.01.0.copyload.i = load float, ptr %1, align 1, !alias.scope !4074, !noalias !4072 ; 3 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.42.0.copyload.i = load float, ptr %.sroa.42.0..sroa_idx.i, align 1, !alias.scope !4074, !noalias !4072 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.53.0.copyload.i = load float, ptr %.sroa.53.0..sroa_idx.i, align 1, !alias.scope !4074, !noalias !4072 ; 3 uses
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.64.0.copyload.i = load float, ptr %.sroa.64.0..sroa_idx.i, align 1, !alias.scope !4074, !noalias !4072 ; 3 uses
  %i.a = fcmp ord float %.sroa.01.0.copyload.i, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.b = bitcast float %.sroa.01.0.copyload.i to i32
  %i.c = or i32 %i.b, 4194304
  %i.d = bitcast i32 %i.c to float
  br label %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.e = tail call float @llvm.rint.f32(float %.sroa.01.0.copyload.i)
  br label %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.i.i

_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi float [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  %i.f = fcmp ord float %.sroa.42.0.copyload.i, 0.000000e+00
  br i1 %i.f, label %bb.e, label %bb.d, !prof !23

bb.d:                                             ; preds = %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.i.i
  %i.g = bitcast float %.sroa.42.0.copyload.i to i32
  %i.h = or i32 %i.g, 4194304
  %i.i = bitcast i32 %i.h to float
  br label %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.1.i.i

bb.e:                                             ; preds = %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.i.i
  %i.j = tail call float @llvm.rint.f32(float %.sroa.42.0.copyload.i)
  br label %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.1.i.i

_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.1.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.1.i.i = phi float [ %i.j, %bb.e ], [ %i.i, %bb.d ]
  %i.k = fcmp ord float %.sroa.53.0.copyload.i, 0.000000e+00
  br i1 %i.k, label %bb.g, label %bb.f, !prof !23

bb.f:                                             ; preds = %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.1.i.i
  %i.l = bitcast float %.sroa.53.0.copyload.i to i32
  %i.m = or i32 %i.l, 4194304
  %i.n = bitcast i32 %i.m to float
  br label %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.2.i.i

bb.g:                                             ; preds = %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.1.i.i
  %i.o = tail call float @llvm.rint.f32(float %.sroa.53.0.copyload.i)
  br label %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.2.i.i

_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.2.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.2.i.i = phi float [ %i.o, %bb.g ], [ %i.n, %bb.f ]
  %i.p = fcmp ord float %.sroa.64.0.copyload.i, 0.000000e+00
  br i1 %i.p, label %bb.i, label %bb.h, !prof !23

bb.h:                                             ; preds = %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.2.i.i
  %i.q = bitcast float %.sroa.64.0.copyload.i to i32
  %i.r = or i32 %i.q, 4194304
  %i.s = bitcast i32 %i.r to float
  br label %_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12814lanewise_unaryfNvNtB8_4wasm11f32_nearestECsefoF4u9kbII_5wasmi.exit

bb.i:                                             ; preds = %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f32_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTfEE4callCsefoF4u9kbII_5wasmi.exit.2.i.i
  %i.t = tail call float @llvm.rint.f32(float %.sroa.64.0.copyload.i)
  br label %_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12814lanewise_unaryfNvNtB8_4wasm11f32_nearestECsefoF4u9kbII_5wasmi.exit

_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12814lanewise_unaryfNvNtB8_4wasm11f32_nearestECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i.i.3.i.i = phi float [ %i.t, %bb.i ], [ %i.s, %bb.h ]
  store float %.sroa.0.0.i.i.i.i.i, ptr %0, align 1, !alias.scope !4075, !noalias !4073
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %.sroa.0.0.i.i.i.1.i.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !4075, !noalias !4073
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.0.0.i.i.i.2.i.i, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !4075, !noalias !4073
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.sroa.0.0.i.i.i.3.i.i, ptr %.sroa.6.0..sroa_idx.i, align 1, !alias.scope !4075, !noalias !4073
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd13f64x2_nearest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4086)
  %.sroa.01.0.copyload.i = load double, ptr %1, align 1, !alias.scope !4087, !noalias !4085 ; 3 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload.i = load double, ptr %.sroa.42.0..sroa_idx.i, align 1, !alias.scope !4087, !noalias !4085 ; 3 uses
  %i.a = fcmp ord double %.sroa.01.0.copyload.i, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.b = bitcast double %.sroa.01.0.copyload.i to i64
  %i.c = or i64 %i.b, 2251799813685248
  %i.d = bitcast i64 %i.c to double
  br label %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f64_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTdEE4callCsefoF4u9kbII_5wasmi.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.e = tail call double @llvm.rint.f64(double %.sroa.01.0.copyload.i)
  br label %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f64_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTdEE4callCsefoF4u9kbII_5wasmi.exit.i.i

_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f64_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTdEE4callCsefoF4u9kbII_5wasmi.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi double [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  %i.f = fcmp ord double %.sroa.42.0.copyload.i, 0.000000e+00
  br i1 %i.f, label %bb.e, label %bb.d, !prof !23

bb.d:                                             ; preds = %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f64_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTdEE4callCsefoF4u9kbII_5wasmi.exit.i.i
  %i.g = bitcast double %.sroa.42.0.copyload.i to i64
  %i.h = or i64 %i.g, 2251799813685248
  %i.i = bitcast i64 %i.h to double
  br label %_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12814lanewise_unarydNvNtB8_4wasm11f64_nearestECsefoF4u9kbII_5wasmi.exit

bb.e:                                             ; preds = %_RNvYNvNtCs5zeGauAcNNa_10wasmi_core4wasm11f64_nearestINtNtNtCskKLDkoKarTP_4core3ops8function2FnTdEE4callCsefoF4u9kbII_5wasmi.exit.i.i
  %i.j = tail call double @llvm.rint.f64(double %.sroa.42.0.copyload.i)
  br label %_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12814lanewise_unarydNvNtB8_4wasm11f64_nearestECsefoF4u9kbII_5wasmi.exit

_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12814lanewise_unarydNvNtB8_4wasm11f64_nearestECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i.1.i.i = phi double [ %i.j, %bb.e ], [ %i.i, %bb.d ]
  store double %.sroa.0.0.i.i.i.i.i, ptr %0, align 1, !alias.scope !4088, !noalias !4086
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.0.0.i.i.i.1.i.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !4088, !noalias !4086
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 0, 256) i32 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd13i16x8_bitmask(ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <8 x i16>, ptr %0, align 1, !alias.scope !4094
  %i.b = lshr <8 x i16> %i.a, <i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8>
  %i.c = and <8 x i16> %i.b, <i16 -1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128>
  %i.d = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.c)
  %i.e = zext nneg i16 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 0, 16) i32 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd13i32x4_bitmask(ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 1, !alias.scope !4100
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !4100
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !4100
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 1, !alias.scope !4100
  %.lobit.i.i.i = lshr i32 %.sroa.0.0.copyload.i, 31
  %i.a = lshr i32 %.sroa.4.0.copyload.i, 30
  %i.b = and i32 %i.a, 2
  %i.c = or disjoint i32 %i.b, %.lobit.i.i.i
  %i.d = lshr i32 %.sroa.5.0.copyload.i, 29
  %i.e = and i32 %i.d, 4
  %i.f = or disjoint i32 %i.c, %i.e
  %i.g = lshr i32 %.sroa.6.0.copyload.i, 28
  %i.h = and i32 %i.g, 8
  %i.i = or disjoint i32 %i.f, %i.h
  ret i32 %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 0, 4) i32 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd13i64x2_bitmask(ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 1, !alias.scope !4106
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !4106
  %.lobit.i.i.i = lshr i64 %.sroa.0.0.copyload.i, 63
  %i.a = trunc nuw nsw i64 %.lobit.i.i.i to i32
  %sh.diff.i.i = lshr i64 %.sroa.4.0.copyload.i, 62
  %tr.sh.diff.i.i = trunc nuw nsw i64 %sh.diff.i.i to i32
  %i.b = and i32 %tr.sh.diff.i.i, 2
  %i.c = or disjoint i32 %i.b, %i.a
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 0, 65536) i32 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_bitmask(ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !4112
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.10.0.copyload.i = load i8, ptr %.sroa.10.0..sroa_idx.i, align 1, !alias.scope !4112
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.11.0.copyload.i = load i8, ptr %.sroa.11.0..sroa_idx.i, align 1, !alias.scope !4112
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 11
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.sroa.18.0.copyload.i = load i8, ptr %.sroa.18.0..sroa_idx.i, align 1, !alias.scope !4112
  %1 = lshr i8 %.sroa.5.0.copyload.i, 5
  %2 = load <4 x i8>, ptr %.sroa.6.0..sroa_idx.i, align 1, !alias.scope !4112
  %3 = lshr <4 x i8> %2, <i8 4, i8 3, i8 2, i8 1>
  %.lobit.i.8.i.i = lshr i8 %.sroa.11.0.copyload.i, 7
  %4 = load <2 x i8>, ptr %0, align 1, !alias.scope !4112
  %5 = load <2 x i8>, ptr %.sroa.12.0..sroa_idx.i, align 1, !alias.scope !4112
  %6 = shufflevector <2 x i8> %4, <2 x i8> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = lshr <4 x i8> %6, <i8 7, i8 6, i8 7, i8 7>
  %8 = load <4 x i8>, ptr %.sroa.14.0..sroa_idx.i, align 1, !alias.scope !4112
  %9 = lshr <4 x i8> %8, splat (i8 7)
  %.lobit.i.15.i.i = lshr i8 %.sroa.18.0.copyload.i, 7
  %10 = and <4 x i8> %3, <i8 8, i8 16, i8 32, i8 64>
  %11 = zext nneg <4 x i8> %10 to <4 x i32>
  %12 = and <4 x i8> %7, <i8 -1, i8 2, i8 -1, i8 -1>
  %13 = zext nneg <4 x i8> %12 to <4 x i32>
  %14 = shl nuw nsw <4 x i32> %13, <i32 0, i32 0, i32 9, i32 10>
  %15 = zext nneg <4 x i8> %9 to <4 x i32>
  %16 = shl nuw nsw <4 x i32> %15, <i32 11, i32 12, i32 13, i32 14>
  %rdx.op = or <4 x i32> %14, %11
  %rdx.op1 = or <4 x i32> %rdx.op, %16
  %i.a = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %rdx.op1)
  %17 = zext nneg i8 %.lobit.i.8.i.i to i32
  %18 = shl nuw nsw i32 %17, 8
  %op.rdx = or i32 %i.a, %18
  %19 = and i8 %1, 4
  %20 = zext nneg i8 %19 to i32
  %21 = zext nneg i8 %.lobit.i.15.i.i to i32
  %22 = shl nuw nsw i32 %21, 15
  %op.rdx2 = or disjoint i32 %22, %20
  %op.rdx3 = or i32 %op.rdx, %op.rdx2
  %23 = and i8 %.sroa.10.0.copyload.i, -128
  %24 = zext i8 %23 to i32
  %op.rdx4 = or i32 %op.rdx3, %24
  ret i32 %op.rdx4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %2, align 1  ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 5
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 1 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 7
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 9
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 1 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 11
  %.sroa.14.0.copyload = load i8, ptr %.sroa.14.0..sroa_idx, align 1 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.15.0.copyload = load i8, ptr %.sroa.15.0..sroa_idx, align 1 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 13
  %.sroa.16.0.copyload = load i8, ptr %.sroa.16.0..sroa_idx, align 1 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 14
  %.sroa.17.0.copyload = load i8, ptr %.sroa.17.0..sroa_idx, align 1 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 15
  %.sroa.18.0.copyload = load i8, ptr %.sroa.18.0..sroa_idx, align 1 ; 2 uses
  %i.a = icmp ult i8 %.sroa.0.0.copyload, 16
  br i1 %i.a, label %bb.b, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %.sroa.0.0.copyload to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.i.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.e = icmp ult i8 %.sroa.4.0.copyload, 16
  br i1 %i.e, label %bb.c, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.1.i.i

bb.c:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.i.i
  %i.f = zext nneg i8 %.sroa.4.0.copyload to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.1.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.1.i.i: ; preds = %bb.c, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.i.i
  %.sroa.0.0.i.i.1.i.i = phi i8 [ %i.h, %bb.c ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.i.i ]
  %i.i = icmp ult i8 %.sroa.5.0.copyload, 16
  br i1 %i.i, label %bb.d, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.2.i.i

bb.d:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.1.i.i
  %i.j = zext nneg i8 %.sroa.5.0.copyload to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.2.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.2.i.i: ; preds = %bb.d, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.1.i.i
  %.sroa.0.0.i.i.2.i.i = phi i8 [ %i.l, %bb.d ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.1.i.i ]
  %i.m = icmp ult i8 %.sroa.6.0.copyload, 16
  br i1 %i.m, label %bb.e, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.3.i.i

bb.e:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.2.i.i
  %i.n = zext nneg i8 %.sroa.6.0.copyload to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.3.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.3.i.i: ; preds = %bb.e, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.2.i.i
  %.sroa.0.0.i.i.3.i.i = phi i8 [ %i.p, %bb.e ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.2.i.i ]
  %i.q = icmp ult i8 %.sroa.7.0.copyload, 16
  br i1 %i.q, label %bb.f, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.4.i.i

bb.f:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.3.i.i
  %i.r = zext nneg i8 %.sroa.7.0.copyload to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.4.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.4.i.i: ; preds = %bb.f, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.3.i.i
  %.sroa.0.0.i.i.4.i.i = phi i8 [ %i.t, %bb.f ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.3.i.i ]
  %i.u = icmp ult i8 %.sroa.8.0.copyload, 16
  br i1 %i.u, label %bb.g, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.5.i.i

bb.g:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.4.i.i
  %i.v = zext nneg i8 %.sroa.8.0.copyload to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.5.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.5.i.i: ; preds = %bb.g, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.4.i.i
  %.sroa.0.0.i.i.5.i.i = phi i8 [ %i.x, %bb.g ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.4.i.i ]
  %i.y = icmp ult i8 %.sroa.9.0.copyload, 16
  br i1 %i.y, label %bb.h, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.6.i.i

bb.h:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.5.i.i
  %i.z = zext nneg i8 %.sroa.9.0.copyload to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.6.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.6.i.i: ; preds = %bb.h, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.5.i.i
  %.sroa.0.0.i.i.6.i.i = phi i8 [ %i.ab, %bb.h ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.5.i.i ]
  %i.ac = icmp ult i8 %.sroa.10.0.copyload, 16
  br i1 %i.ac, label %bb.i, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.7.i.i

bb.i:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.6.i.i
  %i.ad = zext nneg i8 %.sroa.10.0.copyload to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.7.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.7.i.i: ; preds = %bb.i, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.6.i.i
  %.sroa.0.0.i.i.7.i.i = phi i8 [ %i.af, %bb.i ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.6.i.i ]
  %i.ag = icmp ult i8 %.sroa.11.0.copyload, 16
  br i1 %i.ag, label %bb.j, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.8.i.i

bb.j:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.7.i.i
  %i.ah = zext nneg i8 %.sroa.11.0.copyload to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.8.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.8.i.i: ; preds = %bb.j, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.7.i.i
  %.sroa.0.0.i.i.8.i.i = phi i8 [ %i.aj, %bb.j ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.7.i.i ]
  %i.ak = icmp ult i8 %.sroa.12.0.copyload, 16
  br i1 %i.ak, label %bb.k, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.9.i.i

bb.k:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.8.i.i
  %i.al = zext nneg i8 %.sroa.12.0.copyload to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.9.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.9.i.i: ; preds = %bb.k, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.8.i.i
  %.sroa.0.0.i.i.9.i.i = phi i8 [ %i.an, %bb.k ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.8.i.i ]
  %i.ao = icmp ult i8 %.sroa.13.0.copyload, 16
  br i1 %i.ao, label %bb.l, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.10.i.i

bb.l:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.9.i.i
  %i.ap = zext nneg i8 %.sroa.13.0.copyload to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.10.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.10.i.i: ; preds = %bb.l, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.9.i.i
  %.sroa.0.0.i.i.10.i.i = phi i8 [ %i.ar, %bb.l ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.9.i.i ]
  %i.as = icmp ult i8 %.sroa.14.0.copyload, 16
  br i1 %i.as, label %bb.m, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.11.i.i

bb.m:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.10.i.i
  %i.at = zext nneg i8 %.sroa.14.0.copyload to i64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.11.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.11.i.i: ; preds = %bb.m, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.10.i.i
  %.sroa.0.0.i.i.11.i.i = phi i8 [ %i.av, %bb.m ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.10.i.i ]
  %i.aw = icmp ult i8 %.sroa.15.0.copyload, 16
  br i1 %i.aw, label %bb.n, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.12.i.i

bb.n:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.11.i.i
  %i.ax = zext nneg i8 %.sroa.15.0.copyload to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.12.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.12.i.i: ; preds = %bb.n, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.11.i.i
  %.sroa.0.0.i.i.12.i.i = phi i8 [ %i.az, %bb.n ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.11.i.i ]
  %i.ba = icmp ult i8 %.sroa.16.0.copyload, 16
  br i1 %i.ba, label %bb.o, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.13.i.i

bb.o:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.12.i.i
  %i.bb = zext nneg i8 %.sroa.16.0.copyload to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.13.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.13.i.i: ; preds = %bb.o, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.12.i.i
  %.sroa.0.0.i.i.13.i.i = phi i8 [ %i.bd, %bb.o ], [ 0, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.12.i.i ]
  %i.be = icmp ult i8 %.sroa.17.0.copyload, 16
  br i1 %i.be, label %bb.p, label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.14.i.i

bb.p:                                             ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.13.i.i
  %i.bf = zext nneg i8 %.sroa.17.0.copyload to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !4121, !noalias !4122, !noundef !10
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.14.i.i

_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.14.i.i: ; preds = %bb.p, %_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCNvNtCs5zeGauAcNNa_10wasmi_core4simd13i8x16_swizzle0E0CsefoF4u9kbII_5wasmi.exit.13.i.i
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 7) i8 @_RNvXsb_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtB5_14WasmiValueTypeINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeE4from(i32) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack11pop_control(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120), ptr noalias nofree noundef align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack9push_else(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(120), i1 noundef zeroext, i64 noundef range(i64 0, 2), i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack16push_unreachable(ptr noalias nofree noundef align 8 dereferenceable(216), i8 noundef range(i8 0, 4)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB2_9BlockType3new(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack13branch_params(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12), i8 noundef range(i8 0, 4)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i16 @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB2_9BlockType10len_params(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack9push_loop(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12), i64 noundef, i64 noundef range(i64 0, 2), i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack10push_block(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams10claims_reg(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), i8 noundef range(i8 0, 3)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 7) i8 @_RNvXs9_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtB5_14WasmiValueTypeINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8HeapTypeE4from(i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 7) i8 @_RNvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6localsNtB5_14LocalsRegistry2ty(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RINvMs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandINtB5_15ResolvedOperandNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw11TypedRawRefE3mapNtB1A_6RawRefNCNvXs_NtB9_5visitNtB9_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators13VisitOperator15visit_table_set0EBf_(i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RINvMs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandINtB5_15ResolvedOperandNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE3mapmNvYmINtNtCskKLDkoKarTP_4core7convert4FromB1y_E4fromEBf_(i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtB5_9ConstExprNtB5_4Eval4eval(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack7push_if(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12), i64 noundef, i64 noundef range(i64 0, 3), i64, i64 noundef range(i64 0, 2), i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroupENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtBP_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtCsefoF4u9kbII_5wasmi6engine5costs12OperatorCostE13new_uninit_inBM_() unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f32(float) #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand12LocalOperandNtB6_5Debug3fmtBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand11TempOperandNtB6_5Debug3fmtBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand16ImmediateOperandNtB6_5Debug3fmtBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptoui.sat.i32.f32(float) #22

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func25FuncTranslatorAllocationsINtNtNtBa_5slice4iter4IterB14_EEB1c_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtBR_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands11RegisterMapNtB6_5Debug3fmtBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder12ReportingPosENtB6_5Debug3fmtB12_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef double @_RINvNtCs5zeGauAcNNa_10wasmi_core4simd11neg_mul_adddECsefoF4u9kbII_5wasmi(double noundef, double noundef, double noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef float @_RINvNtCs5zeGauAcNNa_10wasmi_core4simd11neg_mul_addfECsefoF4u9kbII_5wasmi(float noundef, float noundef, float noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef double @_RINvNtCs5zeGauAcNNa_10wasmi_core4simd4pmaxdECsefoF4u9kbII_5wasmi(double noundef, double noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef float @_RINvNtCs5zeGauAcNNa_10wasmi_core4simd4pmaxfECsefoF4u9kbII_5wasmi(float noundef, float noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef double @_RINvNtCs5zeGauAcNNa_10wasmi_core4simd4pmindECsefoF4u9kbII_5wasmi(double noundef, double noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef float @_RINvNtCs5zeGauAcNNa_10wasmi_core4simd4pminfECsefoF4u9kbII_5wasmi(float noundef, float noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd16narrow_i16_to_i8(i16 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd16narrow_u16_to_u8(i16 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17i16x8_q15mulr_sat(i16 noundef, i16 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17narrow_i32_to_i16(i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17narrow_u32_to_u16(i32 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smin.v16i8(<16 x i8>, <16 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.ctpop.v16i8(<16 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.usub.sat.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8>, <16 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8>, <16 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8>, <16 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.abs.v16i8(<16 x i8>, i1 immarg) #25

attributes #0 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { inlinehint }
attributes #27 = { noinline }
attributes #28 = { noinline noreturn }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { cold }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { inlinehint noreturn }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 2, !"RtLibUseGOT", i32 1}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{i8 0, i8 9}
!12 = !{i32 0, i32 2}
!13 = !{i8 0, i8 7}
!14 = !{i64 0, i64 -9223372036854775808}
!15 = !{i64 8}
!16 = !{i8 -1, i8 9}
!17 = !{i8 -1, i8 3}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 2001}
!20 = !{i8 0, i8 3}
!21 = !{i16 -1, i16 1404}
!22 = !{i8 1, i8 13}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!25 = !{i16 0, i16 2}
!26 = !{i64 0, i64 2}
!27 = !{i64 0, i64 4}
!28 = !{i16 -2, i16 1404}
!29 = !{i64 -1, i64 -9223372036854775808}
!30 = !{i8 0, i8 4}
!31 = !{!"branch_weights", i32 2002, i32 2000}
!32 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 1, i32 2000, i32 2000}
!33 = !{i8 -1, i8 5}
!34 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 1}
!35 = !{ptr @_RNvXNtNtNtCsefoF4u9kbII_5wasmi6engine10translator10comparatorNtNtCs6kx5fqqPdgs_8wasmi_ir2op2OpNtB2_14NegateCmpInstr16negate_cmp_instr, ptr @_RNvXs_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator10comparatorNtNtCs6kx5fqqPdgs_8wasmi_ir2op2OpNtB4_18LogicalizeCmpInstr20logicalize_cmp_instr}
!36 = !{i64 0, i64 7}
!37 = !{i64 0, i64 3}
!38 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!39 = !{i8 -1, i8 7}
!40 = !{!"branch_weights", i32 1, i32 1073741824, i32 1073741824, i32 0}
!41 = !{!"branch_weights", i32 2000, i32 2}
!42 = !{ptr @_RNvMs4_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator25fuse_commutative_cmp_with}
!43 = distinct !{!43, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4pop2"}
!44 = distinct !{!44, !43, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4pop2: argument 1"}
!45 = distinct !{!45, !43, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4pop2: argument 0"}
!46 = distinct !{!46, !"_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_"}
!47 = distinct !{!47, !46, !"_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_: argument 1"}
!48 = distinct !{!48, !"_RINvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB6_12OperandStack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBg_"}
!49 = distinct !{!49, !48, !"_RINvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB6_12OperandStack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBg_: argument 1"}
!50 = distinct !{!50, !46, !"_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_: argument 2"}
!51 = distinct !{!51, !46, !"_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_: argument 0"}
!52 = distinct !{!52, !48, !"_RINvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB6_12OperandStack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBg_: argument 2"}
!53 = distinct !{!53, !48, !"_RINvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB6_12OperandStack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBg_: argument 0"}
!54 = distinct !{!54, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_"}
!55 = distinct !{!55, !54, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_: argument 0"}
!56 = distinct !{!56, !54, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_: argument 1"}
!57 = distinct !{!57, !"_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator24push_op_with_result_slotNCINvMNtB6_4simdBU_20translate_simd_shiftAhj10_E0EBc_"}
!58 = distinct !{!58, !57, !"_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator24push_op_with_result_slotNCINvMNtB6_4simdBU_20translate_simd_shiftAhj10_E0EBc_: argument 0"}
!59 = distinct !{!59, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack9push_temp"}
!60 = distinct !{!60, !59, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack9push_temp: argument 1"}
!61 = distinct !{!61, !"_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack9push_temp"}
!62 = distinct !{!62, !61, !"_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack9push_temp: argument 1"}
!63 = distinct !{!63, !57, !"_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator24push_op_with_result_slotNCINvMNtB6_4simdBU_20translate_simd_shiftAhj10_E0EBc_: argument 1"}
!64 = distinct !{!64, !59, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack9push_temp: argument 0"}
!65 = distinct !{!65, !61, !"_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack9push_temp: argument 0"}
!66 = distinct !{!66, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_"}
!67 = distinct !{!67, !66, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_: argument 0"}
!68 = distinct !{!68, !66, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_: argument 1"}
!69 = distinct !{!69, !"_RNCINvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func4simdNtB7_14FuncTranslator20translate_simd_shiftAhj10_E0Bd_"}
!70 = distinct !{!70, !69, !"_RNCINvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func4simdNtB7_14FuncTranslator20translate_simd_shiftAhj10_E0Bd_: argument 1"}
!71 = distinct !{null, null}
!72 = !{!45, !44}
!73 = !{!45}
!74 = !{ptr @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd11i8x16_shr_s, ptr @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd11i8x16_shr_u, ptr @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd9i8x16_shl}
!75 = !{!47}
!76 = !{!49}
!77 = !{!53, !49, !52, !51, !47, !50}
!78 = !{!53, !49, !51, !47}
!79 = !{!53, !52, !51, !50}
!80 = !{!55, !49, !47}
!81 = !{!56, !53, !52, !51, !50}
!82 = !{!58}
!83 = !{!60}
!84 = !{!62}
!85 = !{!65, !64, !63}
!86 = !{!65, !62, !64, !60, !58, !63}
!87 = !{!67, !62, !60, !58}
!88 = !{!68, !65, !64, !63}
!89 = !{!58, !63}
!90 = !{!70, !63}
!91 = !{!63}
!92 = distinct !{!92, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4pop2"}
!93 = distinct !{!93, !92, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4pop2: argument 1"}
!94 = distinct !{!94, !92, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4pop2: argument 0"}
!95 = distinct !{!95, !"_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_"}
!96 = distinct !{!96, !95, !"_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_: argument 1"}
!97 = distinct !{!97, !"_RINvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB6_12OperandStack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBg_"}
!98 = distinct !{!98, !97, !"_RINvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB6_12OperandStack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBg_: argument 1"}
!99 = distinct !{!99, !95, !"_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_: argument 2"}
!100 = distinct !{!100, !95, !"_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_: argument 0"}
!101 = distinct !{!101, !97, !"_RINvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB6_12OperandStack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBg_: argument 2"}
!102 = distinct !{!102, !97, !"_RINvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB6_12OperandStack14push_immediateNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBg_: argument 0"}
!103 = distinct !{!103, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_"}
!104 = distinct !{!104, !103, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_: argument 0"}
!105 = distinct !{!105, !103, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_: argument 1"}
!106 = distinct !{!106, !"_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator24push_op_with_result_slotNCINvMNtB6_4simdBU_20translate_simd_shiftAmj4_E0EBc_"}
!107 = distinct !{!107, !106, !"_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator24push_op_with_result_slotNCINvMNtB6_4simdBU_20translate_simd_shiftAmj4_E0EBc_: argument 0"}
!108 = distinct !{!108, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack9push_temp"}
!109 = distinct !{!109, !108, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack9push_temp: argument 1"}
!110 = distinct !{!110, !"_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack9push_temp"}
!111 = distinct !{!111, !110, !"_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack9push_temp: argument 1"}
!112 = distinct !{!112, !106, !"_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator24push_op_with_result_slotNCINvMNtB6_4simdBU_20translate_simd_shiftAmj4_E0EBc_: argument 1"}
!113 = distinct !{!113, !108, !"_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack9push_temp: argument 0"}
!114 = distinct !{!114, !110, !"_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack9push_temp: argument 0"}
!115 = distinct !{!115, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_"}
!116 = distinct !{!116, !115, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_: argument 0"}
!117 = distinct !{!117, !115, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_: argument 1"}
!118 = distinct !{!118, !"_RNCINvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func4simdNtB7_14FuncTranslator20translate_simd_shiftAmj4_E0Bd_"}
end_hunk_1
