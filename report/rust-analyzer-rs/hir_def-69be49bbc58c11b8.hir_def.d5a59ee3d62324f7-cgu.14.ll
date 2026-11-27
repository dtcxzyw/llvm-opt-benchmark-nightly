Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.14?download=true
inline.NumInlined: 4030
inline.NumDeleted: 1869
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXsb_NvNtCsileJQcQObtj_7hir_def10signaturess_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt:bb.a
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtCsileJQcQObtj_7hir_def10signatures1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !6270 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !99
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def10signatures11StructFlagsQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtCsileJQcQObtj_7hir_def10signaturess0_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !6271 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !99
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def10signatures10ConstFlagsQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtCsileJQcQObtj_7hir_def10signaturess1_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !6272 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !99
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def10signatures11StaticFlagsQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtCsileJQcQObtj_7hir_def10signaturess2_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !6273 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !99
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def10signatures9ImplFlagsQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtCsileJQcQObtj_7hir_def10signaturess3_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !6274 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !99
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def10signatures10TraitFlagsQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtCsileJQcQObtj_7hir_def10signaturess4_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !6275 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !99
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def10signatures7FnFlagsQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtCsileJQcQObtj_7hir_def10signaturess5_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !6276 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !99
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def10signatures14TypeAliasFlagsQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtCsileJQcQObtj_7hir_def10signaturess_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !6277 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !99
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def10signatures9EnumFlagsQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsd9_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10MacroItemsNtBa_7AstNode6syntax(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(8) %0) unnamed_addr #19 !guid !6278 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @_RNvXsd_NvNtCsileJQcQObtj_7hir_def10signatures1__NtB5_16InternalBitFlagsNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 !guid !6279 {
bb.a:
  %i.a = tail call { i1, i8 } @_RINvNtCslRtAOKA59qD_8bitflags6parser8from_strNtNtCsileJQcQObtj_7hir_def10signatures11StructFlagsEBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  ret { i1, i8 } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @_RNvXsd_NvNtCsileJQcQObtj_7hir_def10signaturess0_1__NtB5_16InternalBitFlagsNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 !guid !6280 {
bb.a:
  %i.a = tail call { i1, i8 } @_RINvNtCslRtAOKA59qD_8bitflags6parser8from_strNtNtCsileJQcQObtj_7hir_def10signatures10ConstFlagsEBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  ret { i1, i8 } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @_RNvXsd_NvNtCsileJQcQObtj_7hir_def10signaturess1_1__NtB5_16InternalBitFlagsNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 !guid !6281 {
bb.a:
  %i.a = tail call { i1, i8 } @_RINvNtCslRtAOKA59qD_8bitflags6parser8from_strNtNtCsileJQcQObtj_7hir_def10signatures11StaticFlagsEBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  ret { i1, i8 } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @_RNvXsd_NvNtCsileJQcQObtj_7hir_def10signaturess2_1__NtB5_16InternalBitFlagsNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 !guid !6282 {
bb.a:
  %i.a = tail call { i1, i8 } @_RINvNtCslRtAOKA59qD_8bitflags6parser8from_strNtNtCsileJQcQObtj_7hir_def10signatures9ImplFlagsEBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  ret { i1, i8 } %i.a
}

; Function Attrs: nonlazybind uwtable
define range(i32 0, -254) i32 @_RNvXsd_NvNtCsileJQcQObtj_7hir_def10signaturess3_1__NtB5_16InternalBitFlagsNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 !guid !6283 {
bb.a:
  %i.a = tail call i32 @_RINvNtCslRtAOKA59qD_8bitflags6parser8from_strNtNtCsileJQcQObtj_7hir_def10signatures10TraitFlagsEBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %.sroa.0.0.insert.insert = and i32 %i.a, -255
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define range(i32 0, -254) i32 @_RNvXsd_NvNtCsileJQcQObtj_7hir_def10signaturess4_1__NtB5_16InternalBitFlagsNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 !guid !6284 {
bb.a:
  %i.a = tail call i32 @_RINvNtCslRtAOKA59qD_8bitflags6parser8from_strNtNtCsileJQcQObtj_7hir_def10signatures7FnFlagsEBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %.sroa.0.0.insert.insert = and i32 %i.a, -255
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @_RNvXsd_NvNtCsileJQcQObtj_7hir_def10signaturess5_1__NtB5_16InternalBitFlagsNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 !guid !6285 {
bb.a:
  %i.a = tail call { i1, i8 } @_RINvNtCslRtAOKA59qD_8bitflags6parser8from_strNtNtCsileJQcQObtj_7hir_def10signatures14TypeAliasFlagsEBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  ret { i1, i8 } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @_RNvXsd_NvNtCsileJQcQObtj_7hir_def10signaturess_1__NtB5_16InternalBitFlagsNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 !guid !6286 {
bb.a:
  %i.a = tail call { i1, i8 } @_RINvNtCslRtAOKA59qD_8bitflags6parser8from_strNtNtCsileJQcQObtj_7hir_def10signatures9EnumFlagsEBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsgP_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_11RecordFieldNtBa_7AstNode6syntax(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(8) %0) unnamed_addr #19 !guid !6287 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #2 !guid !6323 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsE8data_rawBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.b = load ptr, ptr %0, align 8, !nonnull !99, !noundef !99
  %i.c = load i64, ptr %i.b, align 8, !noundef !99 ; 3 uses
  %i.d = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsE8data_rawBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.e = load ptr, ptr %1, align 8, !nonnull !99, !noundef !99
  %i.f = load i64, ptr %i.e, align 8, !noundef !99
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %_RNvYNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i, %.split124.i, %.split123.i, %.split121.i, %.split122.i, %_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def.exit, %.split.i
  %i.i = add nuw i64 %.sroa.01.07.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.c
  br i1 %exitcond.not.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.01.07.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %.sroa.01.07.i ; 61 uses
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %.sroa.01.07.i ; 61 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6327)
  %i.l = load i64, ptr %i.j, align 8, !range !129, !alias.scope !6328, !noundef !99 ; 3 uses
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 4) ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !range !129, !alias.scope !6329, !noundef !99 ; 3 uses
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %i.n, i64 4)
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.d:                                             ; preds = %.lr.ph.i
  switch i64 %i.m, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.i
    i64 2, label %bb.m
    i64 3, label %bb.q
    i64 4, label %bb.u
    i64 5, label %bb.y
    i64 6, label %bb.ac
  ]

default.unreachable:                              ; preds = %bb.d, %.lr.ph.i2
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.q = icmp samesign ult i64 %i.n, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6331)
  %i.t = load i32, ptr %i.r, align 8, !range !101, !alias.scope !6332, !noundef !99 ; 2 uses
  %i.u = load i32, ptr %i.s, align 8, !range !101, !alias.scope !6333, !noundef !99
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = trunc nuw i32 %i.t to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !6332, !noundef !99
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !alias.scope !6333, !noundef !99
  %i.ab = icmp eq i32 %i.y, %i.aa                 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.ab, label %.split.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.h:                                             ; preds = %bb.f
  br i1 %i.ab, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split.i.i.i:                                     ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !range !102, !alias.scope !6332, !noundef !99
  %i.af = load i32, ptr %i.ac, align 4, !range !102, !alias.scope !6333, !noundef !99
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.ag, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !range !102, !alias.scope !6332, !noundef !99
  %i.ak = load i32, ptr %i.ah, align 4, !range !102, !alias.scope !6333, !noundef !99
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.ag, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.i:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6335)
  %i.ao = load i32, ptr %i.am, align 8, !range !101, !alias.scope !6336, !noundef !99 ; 2 uses
  %i.ap = load i32, ptr %i.an, align 8, !range !101, !alias.scope !6337, !noundef !99
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.j, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = trunc nuw i32 %i.ao to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.at = load i32, ptr %i.as, align 8, !alias.scope !6336, !noundef !99
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.av = load i32, ptr %i.au, align 8, !alias.scope !6337, !noundef !99
  %i.aw = icmp eq i32 %i.at, %i.av                ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.aw, label %.split17.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.l:                                             ; preds = %bb.j
  br i1 %i.aw, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split17.i.i.i:                                   ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !range !102, !alias.scope !6336, !noundef !99
  %i.ba = load i32, ptr %i.ax, align 4, !range !102, !alias.scope !6337, !noundef !99
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.an, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i: ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !range !102, !alias.scope !6336, !noundef !99
  %i.bf = load i32, ptr %i.bc, align 4, !range !102, !alias.scope !6337, !noundef !99
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.an, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.m:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6339)
  %i.bj = load i32, ptr %i.bh, align 8, !range !101, !alias.scope !6340, !noundef !99 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 8, !range !101, !alias.scope !6341, !noundef !99
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.n, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.n:                                             ; preds = %bb.m
  %i.bm = trunc nuw i32 %i.bj to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !alias.scope !6340, !noundef !99
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !alias.scope !6341, !noundef !99
  %i.br = icmp eq i32 %i.bo, %i.bq                ; 2 uses
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.br, label %.split19.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.p:                                             ; preds = %bb.n
  br i1 %i.br, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit6.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split19.i.i.i:                                   ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !range !102, !alias.scope !6340, !noundef !99
  %i.bv = load i32, ptr %i.bs, align 4, !range !102, !alias.scope !6341, !noundef !99
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.at, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit6.i.i.i: ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !range !102, !alias.scope !6340, !noundef !99
  %i.ca = load i32, ptr %i.bx, align 4, !range !102, !alias.scope !6341, !noundef !99
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.at, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.q:                                             ; preds = %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6343)
  %i.ce = load i32, ptr %i.cc, align 8, !range !101, !alias.scope !6344, !noundef !99 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 8, !range !101, !alias.scope !6345, !noundef !99
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.r, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.r:                                             ; preds = %bb.q
  %i.ch = trunc nuw i32 %i.ce to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.cj = load i32, ptr %i.ci, align 8, !alias.scope !6344, !noundef !99
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.cl = load i32, ptr %i.ck, align 8, !alias.scope !6345, !noundef !99
  %i.cm = icmp eq i32 %i.cj, %i.cl                ; 2 uses
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.cm, label %.split21.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.t:                                             ; preds = %bb.r
  br i1 %i.cm, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit8.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split21.i.i.i:                                   ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !range !102, !alias.scope !6344, !noundef !99
  %i.cq = load i32, ptr %i.cn, align 4, !range !102, !alias.scope !6345, !noundef !99
  %i.cr = icmp eq i32 %i.cp, %i.cq
  br i1 %i.cr, label %bb.aw, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit8.i.i.i: ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.cu = load i32, ptr %i.ct, align 4, !range !102, !alias.scope !6344, !noundef !99
  %i.cv = load i32, ptr %i.cs, align 4, !range !102, !alias.scope !6345, !noundef !99
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.aw, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.u:                                             ; preds = %bb.d
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6347)
  %i.cz = load i32, ptr %i.cx, align 8, !range !101, !alias.scope !6348, !noundef !99 ; 2 uses
  %i.da = load i32, ptr %i.cy, align 8, !range !101, !alias.scope !6349, !noundef !99
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.v, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = trunc nuw i32 %i.cz to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !6348, !noundef !99
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !alias.scope !6349, !noundef !99
  %i.dh = icmp eq i32 %i.de, %i.dg                ; 2 uses
  br i1 %i.dc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %i.dh, label %.split23.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.x:                                             ; preds = %bb.v
  br i1 %i.dh, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit10.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split23.i.i.i:                                   ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !range !102, !alias.scope !6348, !noundef !99
  %i.dl = load i32, ptr %i.di, align 4, !range !102, !alias.scope !6349, !noundef !99
  %i.dm = icmp eq i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.ba, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit10.i.i.i: ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !range !102, !alias.scope !6348, !noundef !99
  %i.dq = load i32, ptr %i.dn, align 4, !range !102, !alias.scope !6349, !noundef !99
  %i.dr = icmp eq i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ba, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.y:                                             ; preds = %bb.d
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6351)
  %i.du = load i32, ptr %i.ds, align 8, !range !101, !alias.scope !6352, !noundef !99 ; 2 uses
  %i.dv = load i32, ptr %i.dt, align 8, !range !101, !alias.scope !6353, !noundef !99
  %i.dw = icmp eq i32 %i.du, %i.dv
  br i1 %i.dw, label %bb.z, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.z:                                             ; preds = %bb.y
  %i.dx = trunc nuw i32 %i.du to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !alias.scope !6352, !noundef !99
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !alias.scope !6353, !noundef !99
  %i.ec = icmp eq i32 %i.dz, %i.eb                ; 2 uses
  br i1 %i.dx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %i.ec, label %.split25.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ab:                                            ; preds = %bb.z
  br i1 %i.ec, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit12.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split25.i.i.i:                                   ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !range !102, !alias.scope !6352, !noundef !99
  %i.eg = load i32, ptr %i.ed, align 4, !range !102, !alias.scope !6353, !noundef !99
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.bd, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit12.i.i.i: ; preds = %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !range !102, !alias.scope !6352, !noundef !99
  %i.el = load i32, ptr %i.ei, align 4, !range !102, !alias.scope !6353, !noundef !99
  %i.em = icmp eq i32 %i.ek, %i.el
  br i1 %i.em, label %bb.bd, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ac:                                            ; preds = %bb.d
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6355)
  %i.ep = load i32, ptr %i.en, align 8, !range !101, !alias.scope !6356, !noundef !99 ; 2 uses
  %i.eq = load i32, ptr %i.eo, align 8, !range !101, !alias.scope !6357, !noundef !99
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.ad, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.es = trunc nuw i32 %i.ep to i1
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !alias.scope !6356, !noundef !99
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !alias.scope !6357, !noundef !99
  %i.ex = icmp eq i32 %i.eu, %i.ew                ; 2 uses
  br i1 %i.es, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ex, label %.split27.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.ex, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit14.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split27.i.i.i:                                   ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !range !102, !alias.scope !6356, !noundef !99
  %i.fb = load i32, ptr %i.ey, align 4, !range !102, !alias.scope !6357, !noundef !99
  %i.fc = icmp eq i32 %i.fa, %i.fb
  br i1 %i.fc, label %bb.bf, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit14.i.i.i: ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !range !102, !alias.scope !6356, !noundef !99
  %i.fg = load i32, ptr %i.fd, align 4, !range !102, !alias.scope !6357, !noundef !99
  %i.fh = icmp eq i32 %i.ff, %i.fg
  br i1 %i.fh, label %bb.bf, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ag:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.fj = load i16, ptr %i.fi, align 4, !range !103, !alias.scope !6328, !noundef !99
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.fl = load i16, ptr %i.fk, align 4, !range !103, !alias.scope !6329, !noundef !99
  %i.fm = icmp eq i16 %i.fj, %i.fl
  br i1 %i.fm, label %bb.ah, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.fp = load i32, ptr %i.fo, align 4, !alias.scope !6328, !noundef !99
  %i.fq = load i32, ptr %i.fn, align 4, !alias.scope !6329, !noundef !99
  %i.fr = icmp eq i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.ai, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ft = load i32, ptr %i.fs, align 8, !alias.scope !6328, !noundef !99
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.fv = load i32, ptr %i.fu, align 8, !alias.scope !6329, !noundef !99
  %i.fw = icmp eq i32 %i.ft, %i.fv
  %i.fx = icmp eq i64 %i.l, %i.n
  %or.cond = and i1 %i.fx, %i.fw
  br i1 %or.cond, label %.lr.ph.i2, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.lr.ph.i2:                                        ; preds = %bb.ai, %tailrecurse.i
  %i.fy = phi i64 [ %i.gd, %tailrecurse.i ], [ %i.l, %bb.ai ]
  %.tr717.i = phi ptr [ %i.gc, %tailrecurse.i ], [ %i.k, %bb.ai ] ; 7 uses
  %.tr16.i = phi ptr [ %i.ga, %tailrecurse.i ], [ %i.j, %bb.ai ] ; 7 uses
  switch i64 %i.fy, label %default.unreachable [
    i64 1, label %bb.aj
    i64 2, label %bb.al
    i64 3, label %bb.am
    i64 4, label %tailrecurse.i
    i64 0, label %.split.i
  ]

tailrecurse.i:                                    ; preds = %.lr.ph.i2
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !6358, !nonnull !99, !noundef !99 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !6359, !nonnull !99, !noundef !99 ; 2 uses
  %i.gd = load i64, ptr %i.ga, align 8, !range !127, !noalias !6360, !noundef !99 ; 2 uses
  %i.ge = load i64, ptr %i.gc, align 8, !range !127, !noalias !6360, !noundef !99
  %i.gf = icmp eq i64 %i.gd, %i.ge
  br i1 %i.gf, label %.lr.ph.i2, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.aj:                                            ; preds = %.lr.ph.i2
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %.val.i = load ptr, ptr %i.gg, align 8, !noalias !6358, !noundef !99 ; 2 uses
  %.val5.i = load ptr, ptr %i.gh, align 8, !noalias !6359, !noundef !99 ; 3 uses
  %i.gi = icmp ne ptr %.val.i, null               ; 2 uses
  %i.gj = icmp eq ptr %.val5.i, null              ; 2 uses
  %i.gk = xor i1 %i.gi, %i.gj
  br i1 %i.gk, label %bb.ak, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %.val6.i = load ptr, ptr %i.gl, align 8, !noalias !6359
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %.val4.i = load ptr, ptr %i.gm, align 8, !noalias !6358
  %i.gn = icmp eq ptr %.val4.i, %.val6.i          ; 2 uses
  br i1 %i.gi, label %.split6, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

.split6:                                          ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.go = icmp eq ptr %.val.i, %.val5.i
  %spec.select.i.i = select i1 %i.go, i1 %i.gn, i1 false
  br i1 %spec.select.i.i, label %.split.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.al:                                            ; preds = %.lr.ph.i2
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !noalias !6358, !noundef !99 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !noalias !6359, !noundef !99
  %i.gt = icmp eq i64 %i.gq, %i.gs
  br i1 %i.gt, label %.split7, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split7:                                          ; preds = %bb.al
  %i.gu = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !6359, !nonnull !99, !noundef !99
  %i.gw = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !6358, !nonnull !99, !noundef !99
  %i.gy = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.gx, ptr noundef nonnull %i.gv, i64 noundef %i.gq), !noalias !6360, !inline_history !0
  br i1 %i.gy, label %.split.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.am:                                            ; preds = %.lr.ph.i2
  %i.gz = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !6358, !noundef !99 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !noalias !6359, !noundef !99
  %i.hd = icmp eq i64 %i.ha, %i.hc
  br i1 %i.hd, label %.split, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split:                                           ; preds = %bb.am
  %i.he = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !6359, !nonnull !99, !noundef !99
  %i.hg = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !6358, !nonnull !99, !noundef !99
  %i.hi = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hf, i64 noundef %i.ha), !noalias !6360, !inline_history !0
  br i1 %i.hi, label %.split.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ak
  tail call void @llvm.assume(i1 %i.gj)
  br i1 %i.gn, label %.split.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split.i:                                         ; preds = %.lr.ph.i2, %.split7, %.split6, %.split, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.hl = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hk)
  br i1 %i.hl, label %bb.c, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.an:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i, %.split17.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.hn = load i16, ptr %i.hm, align 4, !range !103, !alias.scope !6328, !noundef !99
  %i.ho = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.hp = load i16, ptr %i.ho, align 4, !range !103, !alias.scope !6329, !noundef !99
  %i.hq = icmp eq i16 %i.hn, %i.hp
  br i1 %i.hq, label %bb.ao, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ao:                                            ; preds = %bb.an
  %i.hr = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.hs = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.ht = load i32, ptr %i.hs, align 4, !alias.scope !6328, !noundef !99
  %i.hu = load i32, ptr %i.hr, align 4, !alias.scope !6329, !noundef !99
  %i.hv = icmp eq i32 %i.ht, %i.hu
  br i1 %i.hv, label %bb.ap, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.hw = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.hx = load i32, ptr %i.hw, align 8, !alias.scope !6328, !noundef !99
  %i.hy = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.hz = load i32, ptr %i.hy, align 8, !alias.scope !6329, !noundef !99
  %i.ia = icmp eq i32 %i.hx, %i.hz
  br i1 %i.ia, label %bb.aq, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ib = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ic = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6362)
  %i.id = load i8, ptr %i.ib, align 8, !range !125, !alias.scope !6363, !noundef !99 ; 2 uses
  %i.ie = load i8, ptr %i.ic, align 8, !range !125, !alias.scope !6364, !noundef !99
  %i.if = icmp eq i8 %i.id, %i.ie
  br i1 %i.if, label %bb.ar, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ar:                                            ; preds = %bb.aq
  switch i8 %i.id, label %.split125.i [
    i8 1, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
    i8 4, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ig = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ih = load i32, ptr %i.ig, align 8, !alias.scope !6363, !noundef !99
  %i.ii = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ij = load i32, ptr %i.ii, align 8, !alias.scope !6364, !noundef !99
  %i.ik = icmp eq i32 %i.ih, %i.ij
end_hunk_0
