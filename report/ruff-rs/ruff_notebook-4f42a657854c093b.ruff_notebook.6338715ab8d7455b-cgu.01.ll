inline.NumInlined: 257
inline.NumDeleted: 137
begin_hunk_0_@_RNvXs6_NtCscvBHLZPbXnS_10serde_json5valueNtB5_5ValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.m, label %bb.c

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.aq = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8w9c0syp1Hj_13ruff_notebook(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.an, i64 noundef %i.ai)
  br label %bb.c

bb.n:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsH_NtCs8w9c0syp1Hj_13ruff_notebook6schemaNtB5_11SourceValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !6, !noundef !4
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.a to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %i.i = icmp eq i64 %i.f, %i.h                   ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.g, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.s, %bb.g ], [ false, %bb.e ], [ %i.n, %bb.f ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.g, label %bb.c

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f)
  %i.n = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.s = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCscdodAO9FK5_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8w9c0syp1Hj_13ruff_notebook(ptr noundef nonnull %i.r, ptr noundef nonnull %i.p, i64 noundef %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemas0_1__NtBG_11RawNotebookNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemas2_1__NtBG_4CellNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemas4_1__NtBG_7RawCellNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemas4_1__NtBG_7RawCellNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemas6_1__NtBG_12MarkdownCellNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemas6_1__NtBG_12MarkdownCellNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemas8_1__NtBG_8CodeCellNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemas8_1__NtBG_8CodeCellNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemasa_1__NtBG_12CellMetadataNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemasa_1__NtBG_12CellMetadataNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemasc_1__NtBG_22CodeCellMetadataVSCodeNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemasc_1__NtBG_22CodeCellMetadataVSCodeNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 29)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemase_1__NtBG_19RawNotebookMetadataNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 26)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemasg_1__NtBG_10KernelspecNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 17)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemasi_1__NtBG_12LanguageInfoNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !56, !alias.scope !454, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCs8w9c0syp1Hj_13ruff_notebook.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !454, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !454, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !458, !noalias !459, !noundef !4 ; 5 uses
  %.promoted.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !458, !noalias !459 ; 2 uses
  %i.k = icmp ult i64 %i.j, %.promoted.i.i.i.i
  br i1 %i.k, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.not.i.i.i.i = icmp ugt i64 %i.j, %.val1.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i8, ptr %i.m, align 8, !alias.scope !458, !noalias !459 ; 2 uses
  %i.o = zext nneg i8 %i.n to i64                 ; 4 uses
  %1 = add i8 %i.n, -1
  %i.p = icmp ult i8 %1, 4
  br i1 %.not.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr i8, ptr %i.l, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  tail call void @llvm.assume(i1 %i.p)
  %.pre.i.i.i.i = load i8, ptr %i.r, align 1, !alias.scope !458, !noalias !459 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.split.i.i.i.i
  %i.s = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.t = sub nuw i64 %i.j, %i.s                   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.s ; 2 uses
  %i.v = icmp samesign ult i64 %i.t, 16
  br i1 %i.v, label %.preheader.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %i.t), !noalias !461
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.t, %bb.e ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.e ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.x = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.y = insertvalue { i64, i64 } %i.x, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.e
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.ac, %bb.e ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.05.i.i.i.i.i
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !462, !noalias !461, !noundef !4
  %i.ab = icmp eq i8 %i.aa, %.pre.i.i.i.i
  br i1 %i.ab, label %._crit_edge.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ac, %i.t
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.d
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.y, %._crit_edge.i.i.i.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %i.ad = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.af = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.ag = add i64 %i.s, 1
  %i.ah = add i64 %i.ag, %i.af                    ; 8 uses
  store i64 %i.ah, ptr %i.h, align 8, !alias.scope !458, !noalias !459
  %.not12.i.i.i.i = icmp ult i64 %i.ah, %i.o
  %.not13.i.i.i.i = icmp ugt i64 %i.ah, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not12.i.i.i.i, %.not13.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !458, !noalias !459
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ai = icmp ult i64 %i.j, %i.ah
  br i1 %i.ai, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i, label %bb.c

bb.i:                                             ; preds = %bb.f
  %i.aj = sub nuw i64 %i.ah, %i.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aj
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.l, i64 %i.o), !noalias !459
  %i.al = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.al, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.h

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.i
  %i.am = load i64, ptr %0, align 8, !alias.scope !454, !noundef !4 ; 2 uses
  %i.an = sub nuw i64 %i.ah, %i.am
  store i64 %i.ah, ptr %0, align 8, !alias.scope !454
  br label %select.unfold.i

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i.i, %bb.b
  store i8 1, ptr %i.c, align 1, !alias.scope !465
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load i8, ptr %i.ao, align 8, !range !56, !alias.scope !465, !noundef !4
  %i.aq = trunc nuw i8 %i.ap to i1
  %.pre.i2.i.i.i = load i64, ptr %0, align 8, !alias.scope !465 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !465 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i3.i.i.i
  %i.ar = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCs8w9c0syp1Hj_13ruff_notebook.exit

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %i.ar, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i ] ; 4 uses
  %.pn.i = phi i64 [ %i.am, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %.pre.i2.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i ]
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn.i ; 4 uses
  %i.as = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %.sroa.4.1.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !468
  store i32 10, ptr %i.b, align 4, !noalias !468
  %i.au = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %.sroa.4.1.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !468
  br i1 %i.au, label %bb.j, label %_RNvXs4_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i

bb.j:                                             ; preds = %select.unfold.i
  %i.av = add i64 %.sroa.4.1.i.i.i, -1            ; 2 uses
  %i.aw = insertvalue { ptr, i64 } %i.at, i64 %i.av, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !468
  store i32 13, ptr %i.a, align 4, !noalias !468
  %i.ax = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %i.av, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !445 ; 2 uses
  %i.ay = add i64 %.sroa.4.1.i.i.i, -2
  %.sroa.0.0.i15.i.i.i = select i1 %i.ax, ptr %.sroa.0.1.i.i.i, ptr null
  %i.az = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i, 0
  %i.ba = insertvalue { ptr, i64 } %i.az, i64 %i.ay, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !468
  %..i.i.i = select i1 %i.ax, { ptr, i64 } %i.ba, { ptr, i64 } %i.aw
  br label %_RNvXs4_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i

_RNvXs4_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i: ; preds = %bb.j, %select.unfold.i
  %.merged.i.i.i = phi { ptr, i64 } [ %..i.i.i, %bb.j ], [ %i.at, %select.unfold.i ] ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %.merged.i.i.i, 0
  %i.bc = extractvalue { ptr, i64 } %.merged.i.i.i, 1
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCs8w9c0syp1Hj_13ruff_notebook.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCs8w9c0syp1Hj_13ruff_notebook.exit: ; preds = %bb.a, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i, %_RNvXs4_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i
  %.sroa.3.0.i = phi i64 [ %i.bc, %_RNvXs4_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i ], [ undef, %bb.a ], [ undef, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i ]
  %.sroa.0.0.i = phi ptr [ %i.bb, %_RNvXs4_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i ], [ null, %bb.a ], [ null, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCs8w9c0syp1Hj_13ruff_notebook.exit.i.i.i ]
  %i.bd = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.be = insertvalue { ptr, i64 } %i.bd, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.be
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtCs8w9c0syp1Hj_13ruff_notebook6schema11RawNotebookEBP_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvXs7_NtCscvBHLZPbXnS_10serde_json5errorNtB6_5ErrorNtNtCs6nZeqdiIoCH_10serde_core3ser5Error6customBE_ECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs4_NtCscvBHLZPbXnS_10serde_json6numberNtB6_6NumberNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB1N_15PrettyFormatterEECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB7_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB9_5value5ValueEECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
