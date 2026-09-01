Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.08?download=true
inline.NumInlined: 923
inline.NumDeleted: 396
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXsa_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_13MemberExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB5_10MemberExprE4from:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.c = load i8, ptr %i.b, align 1, !range !31, !alias.scope !1660, !noalias !1655, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1660, !noalias !1655, !noundef !4
  %i.f = and i64 %i.e, 72057594037927935
  %i.g = icmp ult i8 %i.c, -48
  %i.h = zext i8 %i.c to i64
  %i.i = add nsw i64 %i.h, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %.sroa.0.0.i.i = select i1 %i.g, i64 %spec.store.select.i.i, i64 %i.f
  %i.j = icmp ugt i8 %i.c, -49
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !1660, !noalias !1655
  %.sroa.01.0.i.i = select i1 %i.j, ptr %i.k, ptr %i.a
  %i.l = load ptr, ptr %1, align 8, !alias.scope !1658, !noalias !1655, !noundef !4
  %.sroa.5.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.i = load i64, ptr %.sroa.5.0.in.i, align 8, !alias.scope !1658, !noalias !1655, !noundef !4
  store ptr %.sroa.01.0.i.i, ptr %0, align 8, !alias.scope !1655, !noalias !1658
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.m, align 8, !alias.scope !1655, !noalias !1658
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !1655, !noalias !1658
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1655, !noalias !1658
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.b, ptr %i.a, align 16
  %i.c = call noundef zeroext i1 @_RNvXsl_NtCs4NRVxsYgnAr_4core3fmtPDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_NtB5_7Pointer3fmtCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NvNtCs2O29vuvTAEJ_14ty_python_core6member1__NtB5_16InternalBitFlagsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %0, align 1, !noundef !4    ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @174, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !3, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @175, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1663
  store i8 %i.c, ptr %i.a, align 1, !noalias !1663
  %i.i = call noundef zeroext i1 @_RINvNtCs3kOHrDoa4ON_8bitflags6parser9to_writerNtNtCs2O29vuvTAEJ_14ty_python_core6member11MemberFlagsQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEBM_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1663
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtCs2O29vuvTAEJ_14ty_python_core6member1__NtB5_16InternalBitFlagsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RINvNtCs3kOHrDoa4ON_8bitflags6parser9to_writerNtNtCs2O29vuvTAEJ_14ty_python_core6member11MemberFlagsQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEBM_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_15IngredientIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @177, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsd_NvNtCs2O29vuvTAEJ_14ty_python_core6member1__NtB5_16InternalBitFlagsNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 9)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtCs3kOHrDoa4ON_8bitflags6parser8from_strNtNtCs2O29vuvTAEJ_14ty_python_core6member11MemberFlagsEBL_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !1668, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i8, ptr %i.c, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXse_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_11MemberTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = icmp eq i64 %i.b, 0
  br i1 %i.j, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %_RNvYNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i
  %i.k = add nuw i64 %.sroa.01.08.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %i.b
  br i1 %exitcond.not.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.01.08.i = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.01.08.i ; 6 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.01.08.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 31
  %i.q = load i8, ptr %i.p, align 1, !range !31, !alias.scope !1684, !noalias !1687, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1684, !noalias !1687, !noundef !4
  %i.t = and i64 %i.s, 72057594037927935
  %i.u = icmp ult i8 %i.q, -48
  %i.v = zext i8 %i.q to i64
  %i.w = add nsw i64 %i.v, -192
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.u, i64 %spec.store.select.i.i.i.i.i, i64 %i.t ; 2 uses
  %i.x = icmp ugt i8 %i.q, -49
  %i.y = load ptr, ptr %i.n, align 8, !alias.scope !1684, !noalias !1687
  %.sroa.01.0.i.i.i.i.i = select i1 %i.x, ptr %i.y, ptr %i.n ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 31
  %i.aa = load i8, ptr %i.z, align 1, !range !31, !alias.scope !1688, !noalias !1691, !noundef !4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1688, !noalias !1691, !noundef !4
  %i.ad = and i64 %i.ac, 72057594037927935
  %i.ae = icmp ult i8 %i.aa, -48
  %i.af = zext i8 %i.aa to i64
  %i.ag = add nsw i64 %i.af, -192
  %spec.store.select.i4.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 16)
  %.sroa.0.0.i5.i.i.i.i = select i1 %i.ae, i64 %spec.store.select.i4.i.i.i.i, i64 %i.ad
  %i.ah = icmp ugt i8 %i.aa, -49
  %i.ai = load ptr, ptr %i.o, align 8, !alias.scope !1688, !noalias !1691
  %.sroa.01.0.i6.i.i.i.i = select i1 %i.ah, ptr %i.ai, ptr %i.o ; 2 uses
  %i.aj = icmp eq i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i5.i.i.i.i
  br i1 %i.aj, label %bb.d, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.ak = icmp eq ptr %.sroa.01.0.i.i.i.i.i, %.sroa.01.0.i6.i.i.i.i
  br i1 %i.ak, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i.i, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i.i

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i.i, ptr %.sroa.01.0.i6.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i)
  %i.al = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.al, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i.i: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i.i, %bb.d
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1692, !noalias !1693, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !1692, !noalias !1693 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1693, !noalias !1692, !noundef !4 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val3.i.i.i = load i64, ptr %2, align 8, !alias.scope !1693, !noalias !1692 ; 2 uses
  %i.an = icmp ne ptr %.val.i.i.i, null           ; 2 uses
  %i.ao = icmp eq ptr %.val2.i.i.i, null          ; 3 uses
  %not..i.i.i.i = xor i1 %i.ao, true
  %i.ap = xor i1 %i.an, %i.ao
  br i1 %i.ap, label %3, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

3:                                                ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i.i
  br i1 %i.an, label %bb.e, label %_RNvXs1s_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_8SegmentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i

bb.e:                                             ; preds = %3
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  %i.aq = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i
  br i1 %i.aq, label %bb.f, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.f:                                             ; preds = %bb.e
  %i.ar = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ar, label %_RNvYNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.as = add nuw i64 %.sroa.01.06.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.as, %.val1.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvYNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.sroa.01.06.i.i.i.i.i = phi i64 [ %i.as, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.sroa.01.06.i.i.i.i.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val2.i.i.i, i64 %.sroa.01.06.i.i.i.i.i
  %.val.i.i.i.i.i = load i32, ptr %i.at, align 4, !noalias !1694, !noundef !4
  %.val5.i.i.i.i.i = load i32, ptr %i.au, align 4, !noalias !1694, !noundef !4
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1s_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_8SegmentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %3
  tail call void @llvm.assume(i1 %i.ao)
  %4 = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i
  br i1 %4, label %_RNvYNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvYNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i: ; preds = %bb.g, %_RNvXs1s_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_8SegmentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aw = load i8, ptr %i.av, align 8, !alias.scope !1692, !noalias !1693, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ay = load i8, ptr %i.ax, align 8, !alias.scope !1693, !noalias !1692, !noundef !4
  %.not.i = icmp eq i8 %i.aw, %i.ay
  br i1 %.not.i, label %bb.c, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %_RNvYNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i, %_RNvXs1s_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_8SegmentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, %bb.e, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i.i, %.lr.ph.i, %bb.c, %.lr.ph.i.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %.lr.ph.i.i.i.i.i ], [ true, %bb.b ], [ false, %bb.e ], [ false, %.lr.ph.i ], [ false, %_RNvXs1s_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_8SegmentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i ], [ false, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i.i ], [ false, %_RNvYNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i ], [ true, %bb.c ], [ false, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsg_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_11MemberTableNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 11)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179)
  %i.c = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtCs2O29vuvTAEJ_14ty_python_core6member1__NtB5_16InternalBitFlagsNtNtCs4NRVxsYgnAr_4core3fmt6Binary3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsj_NvNtCs2O29vuvTAEJ_14ty_python_core6member1__NtB5_16InternalBitFlagsNtNtCs4NRVxsYgnAr_4core3fmt5Octal3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXsc_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsk_NvNtCs2O29vuvTAEJ_14ty_python_core6member1__NtB5_16InternalBitFlagsNtNtCs4NRVxsYgnAr_4core3fmt8LowerHex3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsl_NvNtCs2O29vuvTAEJ_14ty_python_core6member1__NtB5_16InternalBitFlagsNtNtCs4NRVxsYgnAr_4core3fmt8UpperHex3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsm_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_11SegmentInfoNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i32, ptr %0, align 4, !noundef !4   ; 2 uses
  %i.e = trunc i32 %i.d to i8
  %switch.idx.cast.i = and i8 %i.e, 3
  store i8 %switch.idx.cast.i, ptr %i.b, align 1
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = lshr i32 %i.d, 2
  store i32 %i.g, ptr %i.a, align 4
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @183)
  %i.i = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXso_NtCs2O29vuvTAEJ_14ty_python_core6memberINtB5_16SegmentsIteratorINtCsddXFpJ32JCa_6either6EitherNtB5_25SmallSegmentsInfoIteratorINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB2g_5slice4iter4IterNtB5_11SegmentInfoEEEENtNtNtB2e_6traits8iterator8Iterator4nextB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !range !1695, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  store i32 0, ptr %i.c, align 8
  %i.g = trunc nuw i32 %i.d to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !range !1695, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.k = trunc nuw i32 %i.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = icmp ugt i64 %i.m, 4294967295            ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.p
  %switch.idx.cast.i.sink = phi i8 [ %switch.idx.cast.i, %bb.p ], [ -1, %bb.a ]
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %switch.idx.cast.i.sink, ptr %.sroa.511.0..sroa_idx, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.e, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.b, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #32
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit: ; preds = %bb.d
  %i.o = load i32, ptr %i.j, align 4              ; 2 uses
  %i.p = lshr i32 %i.o, 2
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.q = shl nuw i64 %i.m, 32
  %.sroa.09.0.insert.insert.i21 = select i1 %i.n, i64 513, i64 %i.q ; 2 uses
  %i.r = trunc i64 %.sroa.09.0.insert.insert.i21 to i1
  br i1 %i.r, label %bb.g, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit24, !prof !5

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #32
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit24: ; preds = %bb.f
  %.sroa.6.0.extract.shift.i.i22 = lshr i64 %.sroa.09.0.insert.insert.i21, 32
  %.sroa.6.0.extract.trunc.i.i23 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i22 to i32
  %.pre = load i32, ptr %i.j, align 4
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit24, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit
  %i.s = phi i32 [ %i.o, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit ], [ %.pre, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit24 ]
  %.sroa.07.0 = phi i32 [ %i.p, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit ], [ %.sroa.6.0.extract.trunc.i.i23, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit24 ] ; 3 uses
  store i32 %i.i, ptr %i.c, align 8
  store i32 %i.s, ptr %i.e, align 4
  %i.t = tail call { i32, i32 } @_RNvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB7_6EitherNtNtCs2O29vuvTAEJ_14ty_python_core6member25SmallSegmentsInfoIteratorINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB23_5slice4iter4IterNtBQ_11SegmentInfoEEENtNtNtB21_6traits8iterator8Iterator4nextBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.u = extractvalue { i32, i32 } %i.t, 0
  %i.v = extractvalue { i32, i32 } %i.t, 1
  store i32 %i.u, ptr %i.h, align 8
  store i32 %i.v, ptr %i.j, align 4
  %i.w = trunc i32 %i.f to i8
  %switch.idx.cast.i = and i8 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4 ; 5 uses
  %i.ab = lshr i32 %i.f, 2                        ; 3 uses
  %.not = icmp ugt i32 %i.ab, %.sroa.07.0
  br i1 %.not, label %bb.i, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #32
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %i.ab to i64              ; 6 uses
  %i.ad = zext i32 %.sroa.07.0 to i64             ; 5 uses
  %i.ae = icmp eq i32 %i.ab, 0
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not5.i = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not5.i, label %bb.m, label %.split.i

bb.l:                                             ; preds = %bb.m, %.split.i, %bb.j
  %i.af = icmp eq i32 %.sroa.07.0, 0
  br i1 %i.af, label %bb.p, label %bb.n

.split.i:                                         ; preds = %bb.k
  %i.ag = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ag, label %bb.l, label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !1696, !noundef !4
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %bb.l, label %bb.q

bb.n:                                             ; preds = %bb.l
  %.not6.i = icmp ugt i64 %i.aa, %i.ad
  br i1 %.not6.i, label %bb.o, label %.split7.i
end_hunk_0
