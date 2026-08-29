Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.06?download=true
inline.NumInlined: 5464
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !12917
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !12920
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12923, !noalias !12920, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !12923, !noalias !12920, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !12923, !noalias !12920
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !12923, !noalias !12920
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs6u1mgJOKDyY_13rust_analyzer3lspNtB4_8LspErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCshzWfHUSfYae_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !349, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @278, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtCs8BgAEfz2JJK_7walkdir5errorNtB4_5ErrorNtNtCshzWfHUSfYae_4core5error5Error11description(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !435, !noundef !4
  %.not = icmp eq i64 %i.a, -1                    ; 2 uses
  %. = select i1 %.not, i64 40, i64 22
  %.1 = select i1 %.not, ptr @279, ptr @280
  %i.b = insertvalue { ptr, i64 } poison, ptr %.1, 0
  %i.c = insertvalue { ptr, i64 } %i.b, i64 %., 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs_NtCs8BgAEfz2JJK_7walkdir5errorNtB4_5ErrorNtNtCshzWfHUSfYae_4core5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !435, !noundef !4
  %.not = icmp eq i64 %i.a, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0 = select i1 %.not, ptr %i.b, ptr null
  %i.c = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @29, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs_NtCs8BgAEfz2JJK_7walkdir5errorNtB4_5ErrorNtNtCshzWfHUSfYae_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !435, !noundef !4
  %.not = icmp eq i64 %i.a, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0 = select i1 %.not, ptr %i.b, ptr null
  %i.c = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @29, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsdRkQxkTxnTp_6anyhow7wrapperINtB4_12MessageErrorNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12927)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !12927, !noalias !12930, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !12927, !noalias !12930, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !12927
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsdRkQxkTxnTp_6anyhow7wrapperINtB4_12MessageErrorReENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsjQbM3MYDIrM_10serde_core2deNtNCNvXNvCsixqsALXRULh_14cargo_metadatasl_1__NtBI_10TargetKindNtB4_11Deserialize11deserialize014___FieldVisitorNtB4_8Expected3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNCNvXNvCsixqsALXRULh_14cargo_metadatasl_1__NtB9_10TargetKindNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize0NtB2_14___FieldVisitorNtB12_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsjQbM3MYDIrM_10serde_core2deNtNCNvXNvCsixqsALXRULh_14cargo_metadatasn_1__NtBI_9CrateTypeNtB4_11Deserialize11deserialize014___FieldVisitorNtB4_8Expected3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNCNvXNvCsixqsALXRULh_14cargo_metadatasn_1__NtB9_9CrateTypeNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize0NtB2_14___FieldVisitorNtB10_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsjQbM3MYDIrM_10serde_core2deNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14false_or_never11deserialize1VNtB4_8Expected3fmtBH_(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsjQbM3MYDIrM_10serde_core2deNtNvXNvCsixqsALXRULh_14cargo_metadatasj_1__NtBG_6TargetNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvCsixqsALXRULh_14cargo_metadatasj_1__NtB7_6TargetNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBV_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsjQbM3MYDIrM_10serde_core2deNtNvXNvCsixqsALXRULh_14cargo_metadatasj_1__NtBG_6TargetNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvCsixqsALXRULh_14cargo_metadatasj_1__NtBa_6TargetNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtBY_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsjQbM3MYDIrM_10serde_core2deNtNvXNvCsixqsALXRULh_14cargo_metadatasp_1__NtBG_7EditionNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvCsixqsALXRULh_14cargo_metadatasp_1__NtB7_7EditionNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBW_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 4 ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtNtBa_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr [16 x i8], ptr %.val, i64 %1
  %i.d = getelementptr [16 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB25_31GlobalWorkspaceLocalConfigInputNtB25_12ConfigErrorsEEB13_NCNvMs0_B25_NtB25_6Config12apply_change0EEIB32_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtB25_10RatomlFileB4s_EEB13_NCB4U_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB27_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7 = alloca i64, align 8                  ; 8 uses
  %.sroa.12 = alloca i64, align 8                 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !range !20, !noundef !4 ; 7 uses
  %.not = icmp eq i64 %i.b, -1
  %i.c = load i64, ptr %1, align 8, !range !12, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.g, label %bb.n

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12940)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !12942, !noalias !12943, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !12942, !noalias !12943, !nonnull !4
  %i.h = ptrtoint ptr %.val3.i.i.i to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %.sroa.7.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !12942, !noalias !12943, !noundef !4 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i62.i.i = load ptr, ptr %i.n, align 8, !alias.scope !12942, !noalias !12943, !nonnull !4
  %i.o = ptrtoint ptr %.val3.i62.i.i to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 3
  %.sroa.8.0.i.i = select i1 %.not53.i.i, i64 0, i64 %i.r
  %i.s = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !12942, !noalias !12943, !noundef !4
  %.not54.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load i64, ptr %i.v, align 8, !alias.scope !12942, !noalias !12943
  %i.w = icmp eq i64 %.val.i.i, 0
  %or.cond.i.i = select i1 %.not54.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %bb.e, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB2L_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB2L_16ConfigErrorInnerEENCNvMs0_B2L_NtB2L_6Config12apply_changes_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2N_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.x, align 8, !alias.scope !12943, !noalias !12942
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB2L_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB2L_16ConfigErrorInnerEENCNvMs0_B2L_NtB2L_6Config12apply_changes_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2N_.exit

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB2L_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB2L_16ConfigErrorInnerEENCNvMs0_B2L_NtB2L_6Config12apply_changes_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2N_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  store i64 %i.s, ptr %0, align 8, !alias.scope !12943, !noalias !12942
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit50

bb.f:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.y, align 8
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit50

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit50: ; preds = %bb.t, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i22, %bb.s, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit.i48, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit, %bb.f, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB2L_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB2L_16ConfigErrorInnerEENCNvMs0_B2L_NtB2L_6Config12apply_changes_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2N_.exit
  %.sink58 = phi i64 [ 16, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit ], [ 8, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB2L_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB2L_16ConfigErrorInnerEENCNvMs0_B2L_NtB2L_6Config12apply_changes_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2N_.exit ], [ 16, %bb.f ], [ 16, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i22 ], [ 16, %bb.t ], [ 16, %bb.s ], [ 8, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit.i48 ]
  %.sroa.46.0.sink = phi i64 [ %.sroa.46.0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit ], [ %.sink.i.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB2L_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB2L_16ConfigErrorInnerEENCNvMs0_B2L_NtB2L_6Config12apply_changes_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2N_.exit ], [ 0, %bb.f ], [ %.sroa.46.0.i34, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i22 ], [ %i.cw, %bb.t ], [ 0, %bb.s ], [ %.sink.i.i.i49, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit.i48 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.sink58
  store i64 %.sroa.46.0.sink, ptr %i.z, align 8
  ret void

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12947)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !12947, !noalias !12944, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  %.not7.i = icmp eq i64 %i.b, 2                  ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val10.i = load ptr, ptr %i.ad, align 8, !alias.scope !12947, !noalias !12944, !nonnull !4, !noundef !4
  %i.ae = ptrtoint ptr %.val10.i to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 3                 ; 5 uses
  br i1 %.not7.i, label %bb.m, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i

bb.i:                                             ; preds = %bb.g
  br i1 %.not7.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12957)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !12959, !noalias !12960, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val3.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !12959, !noalias !12960, !nonnull !4
  %i.al = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub nuw i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 3
  %.sroa.7.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !12959, !noalias !12960, !noundef !4 ; 2 uses
  %.not53.i.i.i = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val3.i61.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !12959, !noalias !12960, !nonnull !4
  %i.as = ptrtoint ptr %.val3.i61.i.i.i to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub nuw i64 %i.as, %i.at
  %i.av = lshr exact i64 %i.au, 3
  %.sroa.8.0.i.i.i = select i1 %.not53.i.i.i, i64 0, i64 %i.av
  %i.aw = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 3 uses
  %i.ax = trunc nuw i64 %i.b to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !12959, !noalias !12960, !align !349
  %.not76.i.i.i = icmp ne ptr %.val.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.ax, i1 %.not76.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.aw, ptr %.sroa.12, align 8, !alias.scope !12960, !noalias !12959
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit

bb.l:                                             ; preds = %bb.i
  store i64 1, ptr %.sroa.7, align 8, !alias.scope !12944, !noalias !12947
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i: ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !12961, !noalias !12966, !noundef !4 ; 2 uses
  %.not.i.i13.i = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val3.i.i.i14.i = load ptr, ptr %i.bb, align 8, !alias.scope !12961, !noalias !12966, !nonnull !4
  %i.bc = ptrtoint ptr %.val3.i.i.i14.i to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub nuw i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 3
  %.sroa.7.0.i.i15.i = select i1 %.not.i.i13.i, i64 0, i64 %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !12961, !noalias !12966, !noundef !4 ; 2 uses
  %.not53.i.i16.i = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val3.i61.i.i17.i = load ptr, ptr %i.bi, align 8, !alias.scope !12961, !noalias !12966, !nonnull !4
  %i.bj = ptrtoint ptr %.val3.i61.i.i17.i to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub nuw i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 3
  %.sroa.8.0.i.i18.i = select i1 %.not53.i.i16.i, i64 0, i64 %i.bm
  %i.bn = add nuw nsw i64 %.sroa.8.0.i.i18.i, %.sroa.7.0.i.i15.i ; 2 uses
  %i.bo = trunc nuw i64 %i.b to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i.i19.i = load ptr, ptr %i.bp, align 8, !alias.scope !12961, !noalias !12966, !align !349
  %.not76.i.i20.i = icmp ne ptr %.val.i.i19.i, null
  %or.cond.not.i.i21.i = select i1 %i.bo, i1 %.not76.i.i20.i, i1 false ; 3 uses
  %spec.select.i = select i1 %or.cond.not.i.i21.i, i64 undef, i64 %i.bn
  %not.or.cond.not.i.i21.i = xor i1 %or.cond.not.i.i21.i, true
  %i.bq = add nuw nsw i64 %i.bn, %i.ah
  %i.br = add i64 %spec.select.i, %i.ah           ; 2 uses
  %i.bs = icmp uge i64 %i.br, %i.ah
  %.sroa.46.0.i = select i1 %or.cond.not.i.i21.i, i64 undef, i64 %i.br
  %narrow.i = select i1 %not.or.cond.not.i.i21.i, i1 %i.bs, i1 false
  %.sroa.05.0.i = zext i1 %narrow.i to i64
  store i64 %.sroa.05.0.i, ptr %.sroa.7, align 8, !alias.scope !12944, !noalias !12947
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit

bb.m:                                             ; preds = %bb.h
  store i64 1, ptr %.sroa.7, align 8, !alias.scope !12969, !noalias !12947
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit: ; preds = %bb.j, %bb.k, %bb.l, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i, %bb.m
  %.sroa.0.0 = phi i64 [ 0, %bb.l ], [ %i.bq, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i ], [ %i.ah, %bb.m ], [ %i.aw, %bb.k ], [ %i.aw, %bb.j ]
  %.sink30.i.sroa.phi = phi ptr [ %.sroa.12, %bb.l ], [ %.sroa.12, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i ], [ %.sroa.12, %bb.m ], [ %.sroa.7, %bb.k ], [ %.sroa.7, %bb.j ]
  %.sroa.46.0.sink.i = phi i64 [ 0, %bb.l ], [ %.sroa.46.0.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i ], [ %i.ah, %bb.m ], [ 1, %bb.k ], [ 0, %bb.j ]
  store i64 %.sroa.46.0.sink.i, ptr %.sink30.i.sroa.phi, align 8, !alias.scope !12944, !noalias !12947
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8. = load i64, ptr %.sroa.7, align 8, !range !12, !noundef !4
  %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.16. = load i64, ptr %.sroa.12, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.bt = load ptr, ptr %i.aa, align 8, !alias.scope !12972, !noalias !12977, !noundef !4 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.bt, null
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i.i9 = load ptr, ptr %i.bu, align 8, !alias.scope !12972, !noalias !12977, !nonnull !4
  %i.bv = ptrtoint ptr %.val3.i.i.i9 to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub nuw i64 %i.bv, %i.bw
  %i.by = lshr exact i64 %i.bx, 3
  %.sroa.7.0.i.i10 = select i1 %.not.i.i8, i64 0, i64 %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !12972, !noalias !12977, !noundef !4 ; 2 uses
  %.not53.i.i11 = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i62.i.i12 = load ptr, ptr %i.cb, align 8, !alias.scope !12972, !noalias !12977, !nonnull !4
  %i.cc = ptrtoint ptr %.val3.i62.i.i12 to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub nuw i64 %i.cc, %i.cd
  %i.cf = lshr exact i64 %i.ce, 3
  %.sroa.8.0.i.i13 = select i1 %.not53.i.i11, i64 0, i64 %i.cf
  %i.cg = add nuw nsw i64 %.sroa.8.0.i.i13, %.sroa.7.0.i.i10 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !12972, !noalias !12977, !noundef !4
  %.not54.i.i14 = icmp eq ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i15 = load i64, ptr %i.cj, align 8, !alias.scope !12972, !noalias !12977
  %i.ck = icmp eq i64 %.val.i.i15, 0
  %or.cond.i.i16 = select i1 %.not54.i.i14, i1 true, i1 %i.ck ; 2 uses
  %spec.select = select i1 %or.cond.i.i16, i64 %i.cg, i64 undef
  %i.cl = add nuw i64 %i.cg, %.sroa.0.0
  %i.cm = trunc nuw i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8. to i1
  %or.cond = select i1 %i.cm, i1 %or.cond.i.i16, i1 false ; 2 uses
  %i.cn = add i64 %spec.select, %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.16. ; 2 uses
  %i.co = icmp uge i64 %i.cn, %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.16.
  %.sroa.46.0 = select i1 %or.cond, i64 %i.cn, i64 undef
  %narrow = select i1 %or.cond, i1 %i.co, i1 false
  %.sroa.05.0 = zext i1 %narrow to i64
  store i64 %i.cl, ptr %0, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.cp, align 8
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit50

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12983)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !12983, !noalias !12980, !noundef !4 ; 2 uses
  %.not.i19 = icmp eq ptr %i.cr, null
  %.not7.i20 = icmp eq i64 %i.b, 2                ; 2 uses
  br i1 %.not.i19, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val10.i21 = load ptr, ptr %i.cs, align 8, !alias.scope !12983, !noalias !12980, !nonnull !4, !noundef !4
  %i.ct = ptrtoint ptr %.val10.i21 to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub nuw i64 %i.ct, %i.cu
  %i.cw = lshr exact i64 %i.cv, 3                 ; 5 uses
  br i1 %.not7.i20, label %bb.t, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i22

bb.p:                                             ; preds = %bb.n
  br i1 %.not7.i20, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12993)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !12995, !noalias !12996, !noundef !4 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.cy, null
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val3.i.i.i.i40 = load ptr, ptr %i.cz, align 8, !alias.scope !12995, !noalias !12996, !nonnull !4
  %i.da = ptrtoint ptr %.val3.i.i.i.i40 to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub nuw i64 %i.da, %i.db
  %i.dd = lshr exact i64 %i.dc, 3
  %.sroa.7.0.i.i.i41 = select i1 %.not.i.i.i39, i64 0, i64 %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !12995, !noalias !12996, !noundef !4 ; 2 uses
  %.not53.i.i.i42 = icmp eq ptr %i.df, null
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val3.i61.i.i.i43 = load ptr, ptr %i.dg, align 8, !alias.scope !12995, !noalias !12996, !nonnull !4
  %i.dh = ptrtoint ptr %.val3.i61.i.i.i43 to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub nuw i64 %i.dh, %i.di
  %i.dk = lshr exact i64 %i.dj, 3
  %.sroa.8.0.i.i.i44 = select i1 %.not53.i.i.i42, i64 0, i64 %i.dk
  %i.dl = add nuw nsw i64 %.sroa.8.0.i.i.i44, %.sroa.7.0.i.i.i41 ; 2 uses
  %i.dm = trunc nuw i64 %i.b to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i.i.i45 = load ptr, ptr %i.dn, align 8, !alias.scope !12995, !noalias !12996, !align !349
  %.not76.i.i.i46 = icmp ne ptr %.val.i.i.i45, null
  %or.cond.not.i.i.i47 = select i1 %i.dm, i1 %.not76.i.i.i46, i1 false
  br i1 %or.cond.not.i.i.i47, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit.i48, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dl, ptr %i.do, align 8, !alias.scope !12996, !noalias !12995
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit.i48

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit.i48: ; preds = %bb.r, %bb.q
  %.sink.i.i.i49 = phi i64 [ 1, %bb.r ], [ 0, %bb.q ]
  store i64 %i.dl, ptr %0, align 8, !alias.scope !12996, !noalias !12995
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit50

bb.s:                                             ; preds = %bb.p
  store i64 0, ptr %0, align 8, !alias.scope !12980, !noalias !12983
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.dp, align 8, !alias.scope !12980, !noalias !12983
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit50

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRTNtNtCs6u1mgJOKDyY_13rust_analyzer6config31GlobalWorkspaceLocalConfigInputNtB1w_12ConfigErrorsEEINtNtNtBb_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtB1w_16ConfigErrorInnerEENCNvMs0_B1w_NtB1w_6Config12apply_change0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1y_.exit23.i22: ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !12997, !noalias !13002, !noundef !4 ; 2 uses
  %.not.i.i13.i23 = icmp eq ptr %i.dr, null
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val3.i.i.i14.i24 = load ptr, ptr %i.ds, align 8, !alias.scope !12997, !noalias !13002, !nonnull !4
  %i.dt = ptrtoint ptr %.val3.i.i.i14.i24 to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub nuw i64 %i.dt, %i.du
  %i.dw = lshr exact i64 %i.dv, 3
  %.sroa.7.0.i.i15.i25 = select i1 %.not.i.i13.i23, i64 0, i64 %i.dw
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !12997, !noalias !13002, !noundef !4 ; 2 uses
  %.not53.i.i16.i26 = icmp eq ptr %i.dy, null
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val3.i61.i.i17.i27 = load ptr, ptr %i.dz, align 8, !alias.scope !12997, !noalias !13002, !nonnull !4
  %i.ea = ptrtoint ptr %.val3.i61.i.i17.i27 to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub nuw i64 %i.ea, %i.eb
  %i.ed = lshr exact i64 %i.ec, 3
  %.sroa.8.0.i.i18.i28 = select i1 %.not53.i.i16.i26, i64 0, i64 %i.ed
  %i.ee = add nuw nsw i64 %.sroa.8.0.i.i18.i28, %.sroa.7.0.i.i15.i25 ; 2 uses
  %i.ef = trunc nuw i64 %i.b to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i.i19.i29 = load ptr, ptr %i.eg, align 8, !alias.scope !12997, !noalias !13002, !align !349
  %.not76.i.i20.i30 = icmp ne ptr %.val.i.i19.i29, null
  %or.cond.not.i.i21.i31 = select i1 %i.ef, i1 %.not76.i.i20.i30, i1 false ; 3 uses
  %spec.select.i32 = select i1 %or.cond.not.i.i21.i31, i64 undef, i64 %i.ee
  %not.or.cond.not.i.i21.i33 = xor i1 %or.cond.not.i.i21.i31, true
  %i.eh = add nuw nsw i64 %i.ee, %i.cw
  %i.ei = add i64 %spec.select.i32, %i.cw         ; 2 uses
  %i.ej = icmp uge i64 %i.ei, %i.cw
  %.sroa.46.0.i34 = select i1 %or.cond.not.i.i21.i31, i64 undef, i64 %i.ei
  %narrow.i35 = select i1 %not.or.cond.not.i.i21.i33, i1 %i.ej, i1 false
  %.sroa.05.0.i36 = zext i1 %narrow.i35 to i64
  store i64 %i.eh, ptr %0, align 8, !alias.scope !12980, !noalias !12983
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i36, ptr %i.ek, align 8, !alias.scope !12980, !noalias !12983
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit50

bb.t:                                             ; preds = %bb.o
  store i64 %i.cw, ptr %0, align 8, !alias.scope !13005, !noalias !12983
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.el, align 8, !alias.scope !13005, !noalias !12983
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTNtB21_31GlobalWorkspaceLocalConfigInputNtB21_12ConfigErrorsEEBZ_NCNvMs0_B21_NtB21_6Config12apply_change0EENtNtNtB8_6traits8iterator8Iterator9size_hintB23_.exit50
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1O_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3F_20DiagnosticCollection15diagnostics_for0EIB10_B1n_B3v_NCB3C_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3H_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !390, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8, !range !390, !noundef !4 ; 3 uses
  %.not7 = icmp eq i64 %i.c, 2                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.o, label %bb.j

bb.c:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13016)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !13018, !noalias !13019, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val3.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !13020, !noalias !13023, !nonnull !4, !noundef !4
  %i.g = ptrtoint ptr %.val3.i.i.i to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 312
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i = phi i64 [ %i.j, %bb.e ], [ 0, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !13018, !noalias !13019, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainIB12_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB2f_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB46_20DiagnosticCollection15diagnostics_for0EIB1r_B1O_B3W_NCB43_s_0EEINtB1t_7FlattenINtNtB6_10filter_map9FilterMapIB1r_INtNtNtBa_5slice4iter4IterNtB46_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1R_6OptionNtNtB48_8flycheck16PackageSpecifierENtB46_25PackageFlycheckDiagnosticENCB43_s0_0ENCB43_s1_0EEEENtNtNtB8_6traits8iterator8Iterator4nextB48_:bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13378
  store i64 -1, ptr %i.k, align 8, !noalias !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13378
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13378
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 144 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !range !435, !alias.scope !13376, !noalias !13373, !noundef !4
  %.not18.i = icmp eq i64 %i.el, -1
  br i1 %.not18.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13378
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i8 %i.eg, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !13378
  br label %bb.aq

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13378
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations13DiagnosticTagENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek)
          to label %bb.ax unwind label %bb.aw, !noalias !13373

bb.at:                                            ; preds = %bb.aq
  store i64 -1, ptr %i.j, align 8, !noalias !13378
  br label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13378
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 168 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !range !435, !alias.scope !13376, !noalias !13373, !noundef !4
  %.not19.i = icmp eq i64 %i.en, -1
  br i1 %.not19.i, label %bb.az, label %bb.ay

bb.av:                                            ; preds = %bb.bb, %bb.aw
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bb ], [ %i.eo, %bb.aw ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors7MessageECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #44
          to label %bb.an unwind label %bb.bm, !noalias !13373

bb.aw:                                            ; preds = %bb.as
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ax:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13378
  br label %bb.au

bb.ay:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13378
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.em)
          to label %bb.bd unwind label %bb.bc, !noalias !13373

bb.az:                                            ; preds = %bb.au
  store i64 -1, ptr %i.i, align 8, !noalias !13378
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %bb.az
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 216 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !range !4428, !alias.scope !13376, !noalias !13373, !noundef !4 ; 3 uses
  %.not20.i = icmp eq i64 %i.eq, -1
  br i1 %.not20.i, label %_RNvXsvT_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_10DiagnosticNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit, label %bb.be

bb.bb:                                            ; preds = %bb.bl, %bb.bc
  %.pn.i = phi { ptr, i32 } [ %i.fe, %bb.bl ], [ %i.er, %bb.bc ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations13DiagnosticTagEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #44
          to label %bb.av unwind label %bb.bm, !noalias !13373

bb.bc:                                            ; preds = %bb.ay
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bd:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13378
  br label %bb.ba

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13378
  call void @llvm.experimental.noalias.scope.decl(metadata !13388)
  call void @llvm.experimental.noalias.scope.decl(metadata !13391)
  %i.es = xor i64 %i.eq, -9223372036854775808
  %i.et = icmp slt i64 %i.eq, 0
  %i.eu = select i1 %i.et, i64 %i.es, i64 5
  switch i64 %i.eu, label %bb.bf [
    i64 0, label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i
    i64 1, label %bb.bg
    i64 2, label %bb.bh
    i64 3, label %bb.bi
    i64 4, label %bb.bj
    i64 5, label %bb.bk
  ]

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 224
  %i.ew = load i8, ptr %i.ev, align 8, !range !6746, !alias.scope !13393, !noalias !13394, !noundef !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ew, ptr %i.ex, align 8, !alias.scope !13388, !noalias !13395
  br label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.bh:                                            ; preds = %bb.be
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 224
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ey, i64 16, i1 false), !alias.scope !13396, !noalias !13373
  br label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.bi:                                            ; preds = %bb.be
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 224
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fa)
          to label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i unwind label %bb.bl, !noalias !13373

bb.bj:                                            ; preds = %bb.be
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 224
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
          to label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i unwind label %bb.bl, !noalias !13373

bb.bk:                                            ; preds = %bb.be
  invoke void @_RNvXNtCs3gqD4ldeioo_8indexmap3mapINtB2_8IndexMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ep)
          to label %._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i unwind label %bb.bl, !noalias !13373

._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i: ; preds = %bb.bk
  %.sroa.01.0.copyload2.pre.i = load i64, ptr %i.a, align 8, !noalias !13378
  br label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #44
          to label %bb.bb unwind label %bb.bm, !noalias !13373

_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i: ; preds = %._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.be
  %.sroa.01.0.copyload2.i = phi i64 [ %.sroa.01.0.copyload2.pre.i, %._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i ], [ -9223372036854775805, %bb.bi ], [ -9223372036854775808, %bb.be ], [ -9223372036854775806, %bb.bh ], [ -9223372036854775807, %bb.bg ], [ -9223372036854775804, %bb.bj ]
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx3.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13378
  br label %_RNvXsvT_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_10DiagnosticNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit

bb.bm:                                            ; preds = %bb.bl, %bb.bb, %bb.av, %bb.an, %bb.ai, %bb.ac
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !13373
  unreachable

bb.bn:                                            ; preds = %bb.ac
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i

_RNvXsvT_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_10DiagnosticNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit: ; preds = %bb.ba, %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload2.i, %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ], [ -1, %bb.ba ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false), !alias.scope !13378
  %.sroa.0.192..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !13376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false), !noalias !13376
  %.sroa.0.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !13376
  %.sroa.0.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !13376
  %.sroa.0.144..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.144..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !13376
  %.sroa.0.168..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.168..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !13376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0, i64 216, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.sroa.01.0.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i, i64 64, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 %i.cq, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.bo

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator4nextB3L_.exit: ; preds = %.sink.split.i7.i.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2k_8flycheck16PackageSpecifierENtB2i_25PackageFlycheckDiagnosticENCNvMB2i_NtB2i_20DiagnosticCollection15diagnostics_fors0_0ENCB5U_s1_0EEINtB5_8FuseImplBY_E4nextB2k_.exit.thread.i.i.i.i.i, %bb.f
  store i64 -2, ptr %0, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator4nextB3L_.exit, %_RNvXsvT_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_10DiagnosticNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainIB12_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB2f_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB46_20DiagnosticCollection15diagnostics_for0EIB1r_B1O_B3W_NCB43_s_0EEINtB1t_7FlattenINtNtB6_10filter_map9FilterMapIB1r_INtNtNtBa_5slice4iter4IterNtB46_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1R_6OptionNtNtB48_8flycheck16PackageSpecifierENtB46_25PackageFlycheckDiagnosticENCB43_s0_0ENCB43_s1_0EEEENtNtNtB8_6traits8iterator8Iterator9size_hintB48_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %1) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca i64, align 8                ; 5 uses
  %.sroa.8.i = alloca i64, align 8                ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13400)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !range !20, !alias.scope !13400, !noalias !13397, !noundef !4
  %.not.i = icmp eq i64 %i.c, -1
  %i.d = load i64, ptr %1, align 8, !range !390, !alias.scope !13400, !noalias !13397, !noundef !4 ; 3 uses
  %.not7.i = icmp eq i64 %i.d, 2                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7.i, label %bb.p, label %bb.k

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13410)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !13412, !noalias !13413, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val3.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !13414, !noalias !13417, !nonnull !4, !noundef !4
  %i.h = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 312
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !13412, !noalias !13413, !noundef !4 ; 2 uses
  %.not53.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not53.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val3.i61.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !13420, !noalias !13423, !nonnull !4, !noundef !4
  %i.o = ptrtoint ptr %.val3.i61.i.i.i to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = udiv exact i64 %i.q, 312
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i: ; preds = %bb.f, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.r, %bb.f ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ]
  %i.s = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 3 uses
  %i.t = trunc nuw i64 %i.d to i1
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !13426, !noalias !13433, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !13426, !noalias !13433
  %.sroa.7.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i.i.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !13426, !noalias !13433, !noundef !4
  %.not53.i.i.i.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i62.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !13426, !noalias !13433
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not53.i.i.i.i.i.i, i64 0, i64 %.val.i62.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.u, align 8, !alias.scope !13426, !noalias !13433, !noundef !4 ; 2 uses
  %.not54.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val61.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !13426, !noalias !13433, !nonnull !4
  %i.ad = icmp eq ptr %.val61.i.i.i.i.i.i, %i.ab
  %or.cond.i.i.i.i.i.i = select i1 %.not54.i.i.i.i.i.i, i1 true, i1 %i.ad
  %i.ae = add i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i
  %i.af = or i64 %i.ae, %.sroa.7.0.i.i.i.i.i.i
  %i.ag = icmp eq i64 %i.af, 0
  %or.cond59.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 %i.ag, i1 false
  br i1 %or.cond59.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.s, ptr %0, align 8, !alias.scope !13413, !noalias !13412
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit.i

bb.i:                                             ; preds = %bb.g, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i
  store i64 %i.s, ptr %0, align 8, !alias.scope !13413, !noalias !13412
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ah, align 8, !alias.scope !13413, !noalias !13412
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit.i: ; preds = %bb.i, %bb.h
  %.sink78.i.i.i = phi i64 [ 16, %bb.i ], [ 8, %bb.h ]
  %.sink.i.i.i = phi i64 [ %i.s, %bb.i ], [ 0, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink78.i.i.i
  store i64 %.sink.i.i.i, ptr %i.ai, align 8, !alias.scope !13413, !noalias !13412
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_.exit

bb.j:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !13397, !noalias !13400
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aj, align 8, !alias.scope !13397, !noalias !13400
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ak, align 8, !alias.scope !13397, !noalias !13400
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_.exit

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13437
  call fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1O_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3F_20DiagnosticCollection15diagnostics_for0EIB10_B1n_B3v_NCB3C_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3H_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #46, !noalias !13397
  %i.al = load i64, ptr %i.a, align 8, !noalias !13437, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !12, !noalias !13437, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !13437 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13437
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13446)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !13448, !noalias !13449, !noundef !4 ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i10.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val3.i.i.i11.i = load ptr, ptr %i.as, align 8, !alias.scope !13450, !noalias !13453, !nonnull !4, !noundef !4
  %i.at = ptrtoint ptr %.val3.i.i.i11.i to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub nuw i64 %i.at, %i.au
  %i.aw = udiv exact i64 %i.av, 312
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i: ; preds = %bb.l, %bb.k
  %.sroa.7.0.i.i13.i = phi i64 [ %i.aw, %bb.l ], [ 0, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !13448, !noalias !13449, !noundef !4 ; 2 uses
  %.not53.i.i14.i = icmp eq ptr %i.ay, null
  br i1 %.not53.i.i14.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i16.i, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val3.i61.i.i15.i = load ptr, ptr %i.az, align 8, !alias.scope !13456, !noalias !13459, !nonnull !4, !noundef !4
  %i.ba = ptrtoint ptr %.val3.i61.i.i15.i to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub nuw i64 %i.ba, %i.bb
  %i.bd = udiv exact i64 %i.bc, 312
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i16.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i16.i: ; preds = %bb.m, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i
  %.sroa.8.0.i.i17.i = phi i64 [ %i.bd, %bb.m ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i ]
  %i.be = add nuw nsw i64 %.sroa.8.0.i.i17.i, %.sroa.7.0.i.i13.i ; 2 uses
  %i.bf = trunc nuw i64 %i.d to i1
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i16.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !13462, !noalias !13469, !noundef !4
  %.not.i.i.i.i.i20.i = icmp eq ptr %i.bi, null
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i.i.i.i21.i = load i64, ptr %i.bj, align 8, !alias.scope !13462, !noalias !13469
  %.sroa.7.0.i.i.i.i.i22.i = select i1 %.not.i.i.i.i.i20.i, i64 0, i64 %.val.i.i.i.i.i.i21.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !13462, !noalias !13469, !noundef !4
  %.not53.i.i.i.i.i23.i = icmp eq ptr %i.bl, null
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i62.i.i.i.i.i24.i = load i64, ptr %i.bm, align 8, !alias.scope !13462, !noalias !13469
  %.sroa.8.0.i.i.i.i.i25.i = select i1 %.not53.i.i.i.i.i23.i, i64 0, i64 %.val.i62.i.i.i.i.i24.i
  %i.bn = load ptr, ptr %i.bg, align 8, !alias.scope !13462, !noalias !13469, !noundef !4 ; 2 uses
  %.not54.i.i.i.i.i26.i = icmp eq ptr %i.bn, null
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val61.i.i.i.i.i27.i = load ptr, ptr %i.bo, align 8, !alias.scope !13462, !noalias !13469, !nonnull !4
  %i.bp = icmp eq ptr %.val61.i.i.i.i.i27.i, %i.bn
  %or.cond.i.i.i.i.i28.i = select i1 %.not54.i.i.i.i.i26.i, i1 true, i1 %i.bp
  %i.bq = add i64 %.sroa.8.0.i.i.i.i.i25.i, %.sroa.7.0.i.i.i.i.i22.i
  %i.br = or i64 %i.bq, %.sroa.7.0.i.i.i.i.i22.i
  %i.bs = icmp eq i64 %i.br, 0
  %or.cond59.i.i29.i = select i1 %or.cond.i.i.i.i.i28.i, i1 %i.bs, i1 false
  br i1 %or.cond59.i.i29.i, label %bb.o, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit30.i

bb.o:                                             ; preds = %bb.n, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i16.i
  store i64 1, ptr %.sroa.5.i, align 8, !alias.scope !13473, !noalias !13474
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit30.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit30.i: ; preds = %bb.o, %bb.n
  %.sink78.i.i18.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.o ], [ %.sroa.5.i, %bb.n ]
  %.sink.i.i19.i = phi i64 [ %i.be, %bb.o ], [ 0, %bb.n ]
  store i64 %.sink.i.i19.i, ptr %.sink78.i.i18.sroa.phi.i, align 8, !alias.scope !13473, !noalias !13474
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i = load i64, ptr %.sroa.5.i, align 8, !range !12, !noalias !13437, !noundef !4
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i = load i64, ptr %.sroa.8.i, align 8, !noalias !13437
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.bt = tail call i64 @llvm.uadd.sat.i64(i64 %i.al, i64 %i.be)
  %2 = and i64 %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, %i.an
  %or.cond.not.i = icmp ne i64 %2, 0              ; 2 uses
  %i.bu = add i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i, %i.ap ; 2 uses
  %i.bv = icmp uge i64 %i.bu, %i.ap
  %.sroa.46.0.i = select i1 %or.cond.not.i, i64 %i.bu, i64 undef
  %narrow.i = select i1 %or.cond.not.i, i1 %i.bv, i1 false
  %.sroa.05.0.i = zext i1 %narrow.i to i64
  store i64 %i.bt, ptr %0, align 8, !alias.scope !13397, !noalias !13400
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i, ptr %i.bw, align 8, !alias.scope !13397, !noalias !13400
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.0.i, ptr %i.bx, align 8, !alias.scope !13397, !noalias !13400
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_.exit

bb.p:                                             ; preds = %bb.b
  tail call fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1O_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3F_20DiagnosticCollection15diagnostics_for0EIB10_B1n_B3v_NCB3C_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #46
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_.exit: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit.i, %bb.j, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit30.i, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2y_15CargoTargetSpec13runnable_args0EENtNtNtB8_6traits8iterator8Iterator4nextB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13475)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13478)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13475
  store ptr %i.c, ptr %i.b, align 8, !noalias !13481
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !13483, !noalias !13484, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !13483, !noalias !13484 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i, %i.e
  br i1 %i.f, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.h, %bb.b ], [ %.promoted.i.i, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !alias.scope !13483, !noalias !13484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13481
  store ptr %i.g, ptr %i.a, align 8, !noalias !13481, !captures !9704
  %i.i = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtBW_15CargoTargetSpec13runnable_args0INtB7_5FnMutTRRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !13478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13481
  br i1 %i.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = icmp eq ptr %i.h, %i.e
  br i1 %i.j, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread, label %.lr.ph.i.i

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13475
  br label %bb.d

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13475
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit
  call void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  br label %bb.e

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2y_15CargoTargetSpec13runnable_args0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  store i64 0, ptr %0, align 8, !alias.scope !13485
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !13485
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !13485
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs6u1mgJOKDyY_13rust_analyzer6config10SnippetDefEEENtNtNtB8_6traits8iterator8Iterator9size_hintB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 160                 ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !13488
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !13488
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !13488
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 104                 ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !13491
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !13491
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !13491
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENtNtNtB8_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((8, 12)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !13494, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !13494, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %1, align 8, !alias.scope !13494
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !13497, !noalias !13500, !nonnull !4, !noundef !4
  store ptr %i.g, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !13502
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !13502
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !13502
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !13505
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !13505
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !13505
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([704 x i8]) align 8 captures(none) dereferenceable(704) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i8.i = alloca [16 x i8], align 8     ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 13 uses
end_hunk_1
