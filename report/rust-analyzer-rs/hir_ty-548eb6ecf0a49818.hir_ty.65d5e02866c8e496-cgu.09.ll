Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.09?download=true
inline.NumInlined: 5162
inline.NumDeleted: 2096
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtCsileJQcQObtj_7hir_def7TraitIdNvYB14_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty:bb.a
  %.sroa.0.0.val18 = load i32, ptr %i.n, align 4  ; 2 uses
  %.sroa.04.0.val19 = load i32, ptr %.sroa.04.0, align 4, !range !2311, !noundef !5 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 4
  %.sroa.04.0.val20 = load i32, ptr %i.o, align 4 ; 2 uses
  %i.p = icmp eq i32 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.q = icmp ult i32 %.sroa.0.0.val18, %.sroa.04.0.val20
  %i.r = icmp ult i32 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r         ; 2 uses
  %.sroa.08.0.val15 = load i32, ptr %.sroa.08.0, align 4, !range !2311, !noundef !5 ; 4 uses
  %i.t = getelementptr i8, ptr %.sroa.08.0, i64 4
  %.sroa.08.0.val16 = load i32, ptr %i.t, align 4 ; 2 uses
  %i.u = icmp eq i32 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.v = icmp ult i32 %.sroa.0.0.val18, %.sroa.08.0.val16
  %i.w = icmp ult i32 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w
  %i.y = xor i1 %i.s, %i.x
  br i1 %i.y, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtCsileJQcQObtj_7hir_def7TraitIdNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq i32 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.aa = icmp ult i32 %.sroa.04.0.val20, %.sroa.08.0.val16
  %i.ab = icmp ult i32 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.ac = select i1 %i.z, i1 %i.aa, i1 %i.ab
  %i.ad = xor i1 %i.s, %i.ac
  %..i = select i1 %i.ad, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtCsileJQcQObtj_7hir_def7TraitIdNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtCsileJQcQObtj_7hir_def7TraitIdNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvMs0_NtNtB16_7closure8analysisNtB16_16InferenceContext20compute_min_capturess_0E0EB18_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvMs0_NtNtB16_7closure8analysisNtB16_16InferenceContext20compute_min_capturess_0E0EB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvMs0_NtNtB16_7closure8analysisNtB16_16InferenceContext20compute_min_capturess_0E0EB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [104 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvMs0_NtNtB16_7closure8analysisNtB16_16InferenceContext20compute_min_capturess_0E0EB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8  ; 2 uses
  %.sroa.0.0.val17 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !noundef !5
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 8 ; 2 uses
  %.sroa.04.0.val19 = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 16 ; 2 uses
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !noundef !5
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlace7sort_byNCNvMs0_NtNtBA_7closure8analysisNtBA_16InferenceContext20compute_min_capturess_0E0BC_(ptr nonnull %.sroa.0.0.val17, i64 %.sroa.0.0.val18, ptr nonnull %.sroa.04.0.val19, i64 %.sroa.04.0.val20) #40 ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %.sroa.0.0.val14 = load i64, ptr %i.o, align 8, !noundef !5
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8 ; 2 uses
  %.sroa.08.0.val15 = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %.sroa.08.0, i64 16 ; 2 uses
  %.sroa.08.0.val16 = load i64, ptr %i.t, align 8, !noundef !5
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlace7sort_byNCNvMs0_NtNtBA_7closure8analysisNtBA_16InferenceContext20compute_min_capturess_0E0BC_(ptr nonnull %.sroa.0.0.val, i64 %.sroa.0.0.val14, ptr nonnull %.sroa.08.0.val15, i64 %.sroa.08.0.val16) #40
  %i.v = xor i1 %i.r, %i.u
  br i1 %i.v, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvMs0_NtNtB11_7closure8analysisNtB11_16InferenceContext20compute_min_capturess_0E0EB13_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.04.0.val = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %.sroa.04.0.val12 = load i64, ptr %i.q, align 8, !noundef !5
  %.sroa.08.0.val = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %.sroa.08.0.val13 = load i64, ptr %i.t, align 8, !noundef !5
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlace7sort_byNCNvMs0_NtNtBA_7closure8analysisNtBA_16InferenceContext20compute_min_capturess_0E0BC_(ptr nonnull %.sroa.04.0.val, i64 %.sroa.04.0.val12, ptr nonnull %.sroa.08.0.val, i64 %.sroa.08.0.val13) #40
  %i.x = xor i1 %i.r, %i.w
  %..i = select i1 %i.x, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvMs0_NtNtB11_7closure8analysisNtB11_16InferenceContext20compute_min_capturess_0E0EB13_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvMs0_NtNtB11_7closure8analysisNtB11_16InferenceContext20compute_min_capturess_0E0EB13_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyTINtNtBa_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3e_16LayoutCalculatorRNtB3g_16TargetDataLayoutE17univariant_biasedB14_NtB16_19RustcEnumVariantIdxRRINtB3g_10LayoutDataB14_B53_EEs3_0E0EB18_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  %i.g = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %3, 3                           ; 5 uses
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = mul nuw i64 %i.h, 7                      ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyTINtNtBa_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3e_16LayoutCalculatorRNtB3g_16TargetDataLayoutE17univariant_biasedB14_NtB16_19RustcEnumVariantIdxRRINtB3g_10LayoutDataB14_B53_EEs3_0E0EB18_(ptr noundef %0, ptr noundef %i.j, ptr noundef %i.l, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.p = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyTINtNtBa_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3e_16LayoutCalculatorRNtB3g_16TargetDataLayoutE17univariant_biasedB14_NtB16_19RustcEnumVariantIdxRRINtB3g_10LayoutDataB14_B53_EEs3_0E0EB18_(ptr noundef %1, ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.s = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyTINtNtBa_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3e_16LayoutCalculatorRNtB3g_16TargetDataLayoutE17univariant_biasedB14_NtB16_19RustcEnumVariantIdxRRINtB3g_10LayoutDataB14_B53_EEs3_0E0EB18_(ptr noundef %2, ptr noundef %i.q, ptr noundef %i.r, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.s, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.p, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.val14 = load ptr, ptr %4, align 8, !nonnull !5, !align !1504, !noundef !5 ; 2 uses
  %.sroa.0.0.val15 = load i32, ptr %.sroa.0.0, align 4, !noundef !5
  %.sroa.04.0.val16 = load i32, ptr %.sroa.04.0, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs3_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %.val14, i32 %.sroa.0.0.val15) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs3_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %.val14, i32 %.sroa.04.0.val16) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implINtB2_7ReverseyEBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u) ; 2 uses
  %.not.i.i = icmp eq i8 %i.v, 2
  br i1 %.not.i.i, label %bb.d, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit

bb.d:                                             ; preds = %bb.c
  %.val.i.i = load i128, ptr %i.f, align 16, !alias.scope !2554, !noalias !2557, !noundef !5 ; 2 uses
  %.val6.i.i = load i128, ptr %i.e, align 16, !alias.scope !2557, !noalias !2554, !noundef !5 ; 2 uses
  %i.w = icmp eq i128 %.val.i.i, %.val6.i.i
  %i.x = icmp ult i128 %.val.i.i, %.val6.i.i
  %i.y = zext i1 %i.x to i8
  br i1 %i.w, label %bb.e, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  %i.ab = load i64, ptr %i.z, align 8, !alias.scope !2564, !noalias !2565, !noundef !5
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !2565, !noalias !2564, !noundef !5
  %i.ad = icmp ult i64 %i.ab, %i.ac
  %i.ae = zext i1 %i.ad to i8
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.1.i.i = phi i8 [ %i.v, %bb.c ], [ %i.ae, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val12 = load ptr, ptr %4, align 8, !nonnull !5, !align !1504, !noundef !5 ; 2 uses
  %.sroa.0.0.val = load i32, ptr %.sroa.0.0, align 4, !noundef !5
  %.sroa.08.0.val13 = load i32, ptr %.sroa.08.0, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs3_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %.val12, i32 %.sroa.0.0.val) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs3_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %.val12, i32 %.sroa.08.0.val13) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  call void @llvm.experimental.noalias.scope.decl(metadata !2569)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ah = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implINtB2_7ReverseyEBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag) ; 2 uses
  %.not.i.i17 = icmp eq i8 %i.ah, 2
  br i1 %.not.i.i17, label %bb.f, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit21

bb.f:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit
  %.val.i.i19 = load i128, ptr %i.d, align 16, !alias.scope !2566, !noalias !2569, !noundef !5 ; 2 uses
  %.val6.i.i20 = load i128, ptr %i.c, align 16, !alias.scope !2569, !noalias !2566, !noundef !5 ; 2 uses
  %i.ai = icmp eq i128 %.val.i.i19, %.val6.i.i20
  %i.aj = icmp ult i128 %.val.i.i19, %.val6.i.i20
  %i.ak = zext i1 %i.aj to i8
  br i1 %i.ai, label %bb.g, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit21

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  %i.an = load i64, ptr %i.al, align 8, !alias.scope !2576, !noalias !2577, !noundef !5
  %i.ao = load i64, ptr %i.am, align 8, !alias.scope !2577, !noalias !2576, !noundef !5
  %i.ap = icmp ult i64 %i.an, %i.ao
  %i.aq = zext i1 %i.ap to i8
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit21

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit21: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit, %bb.f, %bb.g
  %.sroa.0.1.i.i18 = phi i8 [ %i.ah, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit ], [ %i.aq, %bb.g ], [ %i.ak, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not29 = icmp eq i8 %.sroa.0.1.i.i18, %.sroa.0.1.i.i
  br i1 %.not29, label %bb.h, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyTINtNtBa_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB38_16LayoutCalculatorRNtB3a_16TargetDataLayoutE17univariant_biasedBZ_NtB11_19RustcEnumVariantIdxRRINtB3a_10LayoutDataBZ_B4W_EEs3_0E0EB13_.exit

bb.h:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit21
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !align !1504, !noundef !5 ; 2 uses
  %.sroa.04.0.val = load i32, ptr %.sroa.04.0, align 4, !noundef !5
  %.sroa.08.0.val = load i32, ptr %.sroa.08.0, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs3_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %.val, i32 %.sroa.04.0.val) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs3_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %.val, i32 %.sroa.08.0.val) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2578)
  call void @llvm.experimental.noalias.scope.decl(metadata !2581)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.at = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implINtB2_7ReverseyEBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as) ; 2 uses
  %.not.i.i22 = icmp eq i8 %i.at, 2
  br i1 %.not.i.i22, label %bb.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit26

bb.i:                                             ; preds = %bb.h
  %.val.i.i24 = load i128, ptr %i.b, align 16, !alias.scope !2578, !noalias !2581, !noundef !5 ; 2 uses
  %.val6.i.i25 = load i128, ptr %i.a, align 16, !alias.scope !2581, !noalias !2578, !noundef !5 ; 2 uses
  %i.au = icmp eq i128 %.val.i.i24, %.val6.i.i25
  %i.av = icmp ult i128 %.val.i.i24, %.val6.i.i25
  %i.aw = zext i1 %i.av to i8
  br i1 %i.au, label %bb.j, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit26

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !2588, !noalias !2589, !noundef !5
  %i.ba = load i64, ptr %i.ay, align 8, !alias.scope !2589, !noalias !2588, !noundef !5
  %i.bb = icmp ult i64 %i.az, %i.ba
  %i.bc = zext i1 %i.bb to i8
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit26

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit26: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0.1.i.i23 = phi i8 [ %i.at, %bb.h ], [ %i.bc, %bb.j ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not30 = icmp eq i8 %.sroa.0.1.i.i23, %.sroa.0.1.i.i
  %..i = select i1 %.not30, ptr %.sroa.04.0, ptr %.sroa.08.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyTINtNtBa_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB38_16LayoutCalculatorRNtB3a_16TargetDataLayoutE17univariant_biasedBZ_NtB11_19RustcEnumVariantIdxRRINtB3a_10LayoutDataBZ_B4W_EEs3_0E0EB13_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyTINtNtBa_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB38_16LayoutCalculatorRNtB3a_16TargetDataLayoutE17univariant_biasedBZ_NtB11_19RustcEnumVariantIdxRRINtB3a_10LayoutDataBZ_B4W_EEs3_0E0EB13_.exit: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit21, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit26
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit21 ], [ %..i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit26 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2S_16LayoutCalculatorRNtB2U_16TargetDataLayoutE17univariant_biasedB14_NtB16_19RustcEnumVariantIdxRRINtB2U_10LayoutDataB14_B4H_EEs4_0E0EB18_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 16               ; 5 uses
  %i.f = alloca [32 x i8], align 16               ; 5 uses
  %i.g = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %3, 3                           ; 5 uses
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = mul nuw i64 %i.h, 7                      ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2S_16LayoutCalculatorRNtB2U_16TargetDataLayoutE17univariant_biasedB14_NtB16_19RustcEnumVariantIdxRRINtB2U_10LayoutDataB14_B4H_EEs4_0E0EB18_(ptr noundef %0, ptr noundef %i.j, ptr noundef %i.l, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.p = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2S_16LayoutCalculatorRNtB2U_16TargetDataLayoutE17univariant_biasedB14_NtB16_19RustcEnumVariantIdxRRINtB2U_10LayoutDataB14_B4H_EEs4_0E0EB18_(ptr noundef %1, ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.s = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2S_16LayoutCalculatorRNtB2U_16TargetDataLayoutE17univariant_biasedB14_NtB16_19RustcEnumVariantIdxRRINtB2U_10LayoutDataB14_B4H_EEs4_0E0EB18_(ptr noundef %2, ptr noundef %i.q, ptr noundef %i.r, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.s, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.p, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.val14 = load ptr, ptr %4, align 8, !nonnull !5, !align !1504, !noundef !5 ; 2 uses
  %.sroa.0.0.val15 = load i32, ptr %.sroa.0.0, align 4, !noundef !5
  %.sroa.04.0.val16 = load i32, ptr %.sroa.04.0, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val14, i32 %.sroa.0.0.val15) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val14, i32 %.sroa.04.0.val16) #40
  %.val2.i = load i64, ptr %i.f, align 16, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val3.i = load i128, ptr %i.t, align 16
  %.val4.i = load i64, ptr %i.e, align 16, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val5.i = load i128, ptr %i.u, align 16
  %i.v = icmp eq i64 %.val2.i, %.val4.i
  %i.w = icmp ult i64 %.val2.i, %.val4.i
  %i.x = icmp ult i128 %.val3.i, %.val5.i
  %.sroa.0.0.i.i = select i1 %i.v, i1 %i.x, i1 %i.w ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val12 = load ptr, ptr %4, align 8, !nonnull !5, !align !1504, !noundef !5 ; 2 uses
  %.sroa.0.0.val = load i32, ptr %.sroa.0.0, align 4, !noundef !5
  %.sroa.08.0.val13 = load i32, ptr %.sroa.08.0, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val12, i32 %.sroa.0.0.val) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val12, i32 %.sroa.08.0.val13) #40
  %.val2.i17 = load i64, ptr %i.d, align 16, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val3.i18 = load i128, ptr %i.y, align 16
  %.val4.i19 = load i64, ptr %i.c, align 16, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val5.i20 = load i128, ptr %i.z, align 16
  %i.aa = icmp eq i64 %.val2.i17, %.val4.i19
  %i.ab = icmp ult i64 %.val2.i17, %.val4.i19
  %i.ac = icmp ult i128 %.val3.i18, %.val5.i20
  %.sroa.0.0.i.i21 = select i1 %i.aa, i1 %i.ac, i1 %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ad = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i21
  br i1 %i.ad, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2M_16LayoutCalculatorRNtB2O_16TargetDataLayoutE17univariant_biasedBZ_NtB11_19RustcEnumVariantIdxRRINtB2O_10LayoutDataBZ_B4A_EEs4_0E0EB13_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !align !1504, !noundef !5 ; 2 uses
  %.sroa.04.0.val = load i32, ptr %.sroa.04.0, align 4, !noundef !5
  %.sroa.08.0.val = load i32, ptr %.sroa.08.0, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val, i32 %.sroa.04.0.val) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val, i32 %.sroa.08.0.val) #40
  %.val2.i22 = load i64, ptr %i.b, align 16, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val3.i23 = load i128, ptr %i.ae, align 16
  %.val4.i24 = load i64, ptr %i.a, align 16, !noundef !5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val5.i25 = load i128, ptr %i.af, align 16
  %i.ag = icmp eq i64 %.val2.i22, %.val4.i24
  %i.ah = icmp ult i64 %.val2.i22, %.val4.i24
  %i.ai = icmp ult i128 %.val3.i23, %.val5.i25
  %.sroa.0.0.i.i26 = select i1 %i.ag, i1 %i.ai, i1 %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i26
  %..i = select i1 %i.aj, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2M_16LayoutCalculatorRNtB2O_16TargetDataLayoutE17univariant_biasedBZ_NtB11_19RustcEnumVariantIdxRRINtB2O_10LayoutDataBZ_B4A_EEs4_0E0EB13_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2M_16LayoutCalculatorRNtB2O_16TargetDataLayoutE17univariant_biasedBZ_NtB11_19RustcEnumVariantIdxRRINtB2O_10LayoutDataBZ_B4A_EEs4_0E0EB13_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtB18_5PatIdNCNvMNtB1a_10usefulnessINtB4I_19BranchPatUsefulnessB2e_E12is_redundant0E0EB2m_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtB13_5PatIdNCNvMNtB15_10usefulnessINtB4C_19BranchPatUsefulnessB29_E12is_redundant0E0EB2h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtB18_5PatIdNCNvMNtB1a_10usefulnessINtB4I_19BranchPatUsefulnessB2e_E12is_redundant0E0EB2m_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtB18_5PatIdNCNvMNtB1a_10usefulnessINtB4I_19BranchPatUsefulnessB2e_E12is_redundant0E0EB2m_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtB18_5PatIdNCNvMNtB1a_10usefulnessINtB4I_19BranchPatUsefulnessB2e_E12is_redundant0E0EB2m_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtB13_5PatIdNCNvMNtB15_10usefulnessINtB4C_19BranchPatUsefulnessB29_E12is_redundant0E0EB2h_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtB13_5PatIdNCNvMNtB15_10usefulnessINtB4C_19BranchPatUsefulnessB29_E12is_redundant0E0EB2h_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !align !2590, !noundef !5
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !align !2590, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 120
  %i.o = load i32, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 120
  %i.q = load i32, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.r = icmp ult i32 %i.o, %i.q                  ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !5, !align !2590, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 120
  %i.t = load i32, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %i.u = icmp ult i32 %i.o, %i.t
  %i.v = xor i1 %i.r, %i.u
  %i.w = icmp ult i32 %i.q, %i.t
  %i.x = xor i1 %i.r, %i.w
  %..i = select i1 %i.x, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.v, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB14_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 24019198012642646) %3) unnamed_addr #1 {
bb.a:
end_hunk_0
