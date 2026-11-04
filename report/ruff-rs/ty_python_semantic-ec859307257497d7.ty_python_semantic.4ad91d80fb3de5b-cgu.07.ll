Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4118
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict23DynamicTypedDictLiteralNtB6_5Debug3fmtBE_:bb.a
_RNvXsc_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__NtB7_23DynamicTypedDictLiteralNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi i1 [ %i.j, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20684
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic13ConfigBooleanNtB6_5Debug3fmtBE_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %.val = load i8, ptr %i.a, align 1, !range !64, !noundef !15 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic13ConfigBooleanNtB6_5Debug3fmtBE_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic13ConfigBooleanNtB6_5Debug3fmtBE_.897, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic13ExtraBehaviorNtB6_5Debug3fmtBE_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %.val = load i8, ptr %i.a, align 1, !range !64, !noundef !15 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic13ExtraBehaviorNtB6_5Debug3fmtBE_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic13ExtraBehaviorNtB6_5Debug3fmtBE_.898, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxeENtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !18, !noundef !15 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15
  %i.c = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs24_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_21SubDiagnosticSeverityNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !20687, !noundef !15 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs24_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_21SubDiagnosticSeverityNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs24_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_21SubDiagnosticSeverityNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.899, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2B_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_17DiagnosticMessageNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @329, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @328)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !26, !noundef !15 ; 3 uses
  %i.b = icmp ne i32 %i.a, 17
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -4
  %i.d = icmp samesign ugt i32 %i.a, 3
  %narrow = select i1 %i.d, i32 %i.c, i32 13      ; 2 uses
  %i.e = load i32, ptr %1, align 4, !range !26, !noundef !15 ; 3 uses
  %i.f = icmp ne i32 %i.e, 17
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -4
  %i.h = icmp samesign ugt i32 %i.e, 3
  %narrow1 = select i1 %i.h, i32 %i.g, i32 13
  %i.i = icmp eq i32 %narrow, %narrow1
  br i1 %i.i, label %bb.b, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.av, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.e ], [ %.sroa.0.0.i76, %bb.l ], [ %.sroa.0.0.i77, %bb.m ], [ %i.ba, %bb.n ], [ %i.bd, %bb.o ], [ %.sroa.0.0.i78, %bb.p ], [ %.sroa.0.0.i79, %bb.q ], [ %.sroa.0.0.i80, %bb.r ], [ %.sroa.0.0.i81, %bb.s ], [ %i.ca, %bb.t ], [ %.sroa.0.0.i82, %bb.u ], [ %i.cg, %bb.v ], [ %i.cj, %bb.w ], [ %i.cm, %bb.x ], [ false, %bb.g ], [ %i.cx, %bb.ad ], [ %.sroa.0.0.i83, %bb.ae ], [ %.sroa.0.0.i84, %bb.af ], [ %.sroa.0.0.i85, %bb.ag ], [ %.sroa.0.0.i86, %bb.ah ], [ %i.du, %bb.ai ], [ %.sroa.0.0.i87, %bb.aj ], [ %.sroa.0.0.i88, %bb.ak ], [ %.sroa.0.0.i89, %bb.al ], [ %.sroa.0.0.i90, %bb.am ], [ %.sroa.0.0.i91, %bb.an ], [ %i.ew, %bb.ao ], [ true, %bb.z ], [ %.sroa.0.0.i93, %bb.av ], [ false, %bb.c ], [ %i.y, %bb.f ], [ true, %bb.d ], [ %.not2.i, %bb.j ], [ false, %bb.h ], [ %i.an, %bb.k ], [ false, %bb.y ], [ %i.cs, %bb.aa ], [ %i.ct, %bb.ab ], [ %i.cu, %bb.ac ], [ %i.fr, %bb.au ], [ false, %bb.as ], [ %i.fm, %bb.at ], [ false, %bb.ap ], [ false, %bb.ar ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %bb.a
  switch i32 %narrow, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit [
    i32 0, label %bb.c
    i32 1, label %bb.g
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 7, label %bb.p
    i32 8, label %bb.q
    i32 9, label %bb.r
    i32 10, label %bb.s
    i32 11, label %bb.t
    i32 12, label %bb.u
    i32 13, label %bb.v
    i32 14, label %bb.w
    i32 15, label %bb.x
    i32 16, label %bb.y
    i32 17, label %bb.ad
    i32 18, label %bb.ae
    i32 19, label %bb.af
    i32 20, label %bb.ag
    i32 21, label %bb.ah
    i32 24, label %bb.ai
    i32 25, label %bb.aj
    i32 26, label %bb.ak
    i32 27, label %bb.al
    i32 28, label %bb.am
    i32 29, label %bb.an
    i32 30, label %bb.ao
    i32 31, label %bb.ap
    i32 32, label %bb.av
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20698)
  %i.l = load i32, ptr %i.j, align 4, !range !80, !alias.scope !20697, !noundef !15 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !range !80, !alias.scope !20698, !noundef !15
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.l, 2
  br i1 %i.o, label %bb.e, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !20697, !noundef !15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !20698, !noundef !15
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4, !range !31, !alias.scope !20697, !noundef !15
  %i.x = load i32, ptr %i.u, align 4, !range !31, !alias.scope !20698, !noundef !15
  %i.y = icmp eq i32 %i.w, %i.x
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20700)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !20699, !noundef !15
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !20700, !noundef !15
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !range !31, !alias.scope !20699, !noundef !15
  %i.ah = load i32, ptr %i.ae, align 4, !range !31, !alias.scope !20700, !noundef !15
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !range !49, !alias.scope !20699, !noundef !15 ; 2 uses
  %.not.i = icmp eq i8 %i.ak, 2
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load i8, ptr %i.al, align 4, !range !49, !alias.scope !20700, !noundef !15 ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not2.i = icmp eq i8 %i.ak, %i.am
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.i
  %i.an = icmp eq i8 %i.am, 2
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = load <2 x i32>, ptr %i.ao, align 4
  %i.ar = load <2 x i32>, ptr %i.ap, align 4
  %i.as = icmp eq <2 x i32> %i.aq, %i.ar          ; 2 uses
  %2 = extractelement <2 x i1> %i.as, i64 0
  %3 = extractelement <2 x i1> %i.as, i64 1
  %.sroa.0.0.i76 = select i1 %3, i1 %2, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load <2 x i32>, ptr %i.at, align 4
  %i.aw = load <2 x i32>, ptr %i.au, align 4
  %i.ax = icmp eq <2 x i32> %i.av, %i.aw          ; 2 uses
  %4 = extractelement <2 x i1> %i.ax, i64 0
  %5 = extractelement <2 x i1> %i.ax, i64 1
  %.sroa.0.0.i77 = select i1 %5, i1 %4, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = tail call fastcc noundef zeroext i1 @_RNvXsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB5_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ay, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.az)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val9 = load i8, ptr %i.bb, align 4, !range !64, !noundef !15
  %.val10 = load i8, ptr %i.bc, align 4, !range !64, !noundef !15
  %i.bd = icmp eq i8 %.val9, %.val10
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load <2 x i32>, ptr %i.be, align 4
  %i.bh = load <2 x i32>, ptr %i.bf, align 4
  %i.bi = icmp eq <2 x i32> %i.bg, %i.bh          ; 2 uses
  %6 = extractelement <2 x i1> %i.bi, i64 0
  %7 = extractelement <2 x i1> %i.bi, i64 1
  %.sroa.0.0.i78 = select i1 %7, i1 %6, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = load <2 x i32>, ptr %i.bj, align 4
  %i.bm = load <2 x i32>, ptr %i.bk, align 4
  %i.bn = icmp eq <2 x i32> %i.bl, %i.bm          ; 2 uses
  %8 = extractelement <2 x i1> %i.bn, i64 0
  %9 = extractelement <2 x i1> %i.bn, i64 1
  %.sroa.0.0.i79 = select i1 %9, i1 %8, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = load <2 x i32>, ptr %i.bo, align 4
  %i.br = load <2 x i32>, ptr %i.bp, align 4
  %i.bs = icmp eq <2 x i32> %i.bq, %i.br          ; 2 uses
  %10 = extractelement <2 x i1> %i.bs, i64 0
  %11 = extractelement <2 x i1> %i.bs, i64 1
  %.sroa.0.0.i80 = select i1 %11, i1 %10, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load <2 x i32>, ptr %i.bt, align 4
  %i.bw = load <2 x i32>, ptr %i.bu, align 4
  %i.bx = icmp eq <2 x i32> %i.bv, %i.bw          ; 2 uses
  %12 = extractelement <2 x i1> %i.bx, i64 0
  %13 = extractelement <2 x i1> %i.bx, i64 1
  %.sroa.0.0.i81 = select i1 %13, i1 %12, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ca = tail call fastcc noundef zeroext i1 @_RNvXs12_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.by, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.bz)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cd = load <2 x i32>, ptr %i.cb, align 4
  %i.ce = load <2 x i32>, ptr %i.cc, align 4
  %i.cf = icmp eq <2 x i32> %i.cd, %i.ce          ; 2 uses
  %14 = extractelement <2 x i1> %i.cf, i64 0
  %15 = extractelement <2 x i1> %i.cf, i64 1
  %.sroa.0.0.i82 = select i1 %15, i1 %14, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.b
  %i.cg = tail call fastcc noundef zeroext i1 @_RNvXsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_14SubclassOfTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cj = tail call fastcc noundef zeroext i1 @_RNvXsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_19NominalInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ch, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ci)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cm = tail call fastcc noundef zeroext i1 @_RNvXsS_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20ProtocolInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ck, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cl)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.b
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val31 = load i8, ptr %i.cn, align 4, !range !61, !noundef !15 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.val32 = load i8, ptr %i.cp, align 1           ; 3 uses
  %.val33 = load i8, ptr %i.co, align 4, !range !61, !noundef !15
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val34 = load i8, ptr %i.cq, align 1           ; 3 uses
  %i.cr = icmp eq i8 %.val31, %.val33
  br i1 %i.cr, label %bb.z, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.y
  switch i8 %.val31, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit [
    i8 0, label %bb.aa
    i8 1, label %bb.ab
    i8 32, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cs = icmp eq i8 %.val32, %.val34
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.z
  %i.ct = icmp eq i8 %.val32, %.val34
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.z
  %i.cu = icmp eq i8 %.val32, %.val34
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.b
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cx = tail call fastcc noundef zeroext i1 @_RNvXsF_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instanceNtB5_17KnownInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cv, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cw)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.da = load <2 x i32>, ptr %i.cy, align 4
  %i.db = load <2 x i32>, ptr %i.cz, align 4
  %i.dc = icmp eq <2 x i32> %i.da, %i.db          ; 2 uses
  %16 = extractelement <2 x i1> %i.dc, i64 0
  %17 = extractelement <2 x i1> %i.dc, i64 1
  %.sroa.0.0.i83 = select i1 %17, i1 %16, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.b
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.df = load <2 x i32>, ptr %i.dd, align 4
  %i.dg = load <2 x i32>, ptr %i.de, align 4
  %i.dh = icmp eq <2 x i32> %i.df, %i.dg          ; 2 uses
  %18 = extractelement <2 x i1> %i.dh, i64 0
  %19 = extractelement <2 x i1> %i.dh, i64 1
  %.sroa.0.0.i84 = select i1 %19, i1 %18, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.b
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dk = load <2 x i32>, ptr %i.di, align 4
  %i.dl = load <2 x i32>, ptr %i.dj, align 4
  %i.dm = icmp eq <2 x i32> %i.dk, %i.dl          ; 2 uses
  %20 = extractelement <2 x i1> %i.dm, i64 0
  %21 = extractelement <2 x i1> %i.dm, i64 1
  %.sroa.0.0.i85 = select i1 %21, i1 %20, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.b
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = load <2 x i32>, ptr %i.dn, align 4
  %i.dq = load <2 x i32>, ptr %i.do, align 4
  %i.dr = icmp eq <2 x i32> %i.dp, %i.dq          ; 2 uses
  %22 = extractelement <2 x i1> %i.dr, i64 0
  %23 = extractelement <2 x i1> %i.dr, i64 1
  %.sroa.0.0.i86 = select i1 %23, i1 %22, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.b
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.du = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB5_16LiteralValueTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ds, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.dt)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dx = load <2 x i32>, ptr %i.dv, align 4
  %i.dy = load <2 x i32>, ptr %i.dw, align 4
  %i.dz = icmp eq <2 x i32> %i.dx, %i.dy          ; 2 uses
  %24 = extractelement <2 x i1> %i.dz, i64 0
  %25 = extractelement <2 x i1> %i.dz, i64 1
  %.sroa.0.0.i87 = select i1 %25, i1 %24, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ec = load <2 x i32>, ptr %i.ea, align 4
  %i.ed = load <2 x i32>, ptr %i.eb, align 4
  %i.ee = icmp eq <2 x i32> %i.ec, %i.ed          ; 2 uses
  %26 = extractelement <2 x i1> %i.ee, i64 0
  %27 = extractelement <2 x i1> %i.ee, i64 1
  %.sroa.0.0.i88 = select i1 %27, i1 %26, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.b
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.eh = load <2 x i32>, ptr %i.ef, align 4
  %i.ei = load <2 x i32>, ptr %i.eg, align 4
  %i.ej = icmp eq <2 x i32> %i.eh, %i.ei          ; 2 uses
  %28 = extractelement <2 x i1> %i.ej, i64 0
  %29 = extractelement <2 x i1> %i.ej, i64 1
  %.sroa.0.0.i89 = select i1 %29, i1 %28, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.b
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.em = load <2 x i32>, ptr %i.ek, align 4
  %i.en = load <2 x i32>, ptr %i.el, align 4
  %i.eo = icmp eq <2 x i32> %i.em, %i.en          ; 2 uses
  %30 = extractelement <2 x i1> %i.eo, i64 0
  %31 = extractelement <2 x i1> %i.eo, i64 1
  %.sroa.0.0.i90 = select i1 %31, i1 %30, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.b
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.er = load <2 x i32>, ptr %i.ep, align 4
  %i.es = load <2 x i32>, ptr %i.eq, align 4
  %i.et = icmp eq <2 x i32> %i.er, %i.es          ; 2 uses
  %32 = extractelement <2 x i1> %i.et, i64 0
  %33 = extractelement <2 x i1> %i.et, i64 1
  %.sroa.0.0.i91 = select i1 %33, i1 %32, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %bb.b
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ew = tail call fastcc noundef zeroext i1 @_RNvXsP_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.eu, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ev)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %bb.b
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20702)
  %i.ez = load i32, ptr %i.ex, align 4, !range !54, !alias.scope !20701, !noundef !15 ; 2 uses
  %i.fa = load i32, ptr %i.ey, align 4, !range !54, !alias.scope !20702, !noundef !15
  %i.fb = icmp eq i32 %i.ez, %i.fa
  br i1 %i.fb, label %bb.aq, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fc = trunc nuw i32 %i.ez to i1
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !alias.scope !20701, !noundef !15
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !alias.scope !20702, !noundef !15
  %i.fh = icmp eq i32 %i.fe, %i.fg                ; 2 uses
  br i1 %i.fc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.fh, label %bb.au, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.aq
  br i1 %i.fh, label %bb.at, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !range !31, !alias.scope !20701, !noundef !15
  %i.fl = load i32, ptr %i.fi, align 4, !range !31, !alias.scope !20702, !noundef !15
  %i.fm = icmp eq i32 %i.fk, %i.fl
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.au:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !range !31, !alias.scope !20701, !noundef !15
  %i.fq = load i32, ptr %i.fn, align 4, !range !31, !alias.scope !20702, !noundef !15
  %i.fr = icmp eq i32 %i.fp, %i.fq
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.av:                                            ; preds = %bb.b
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fu = load <2 x i32>, ptr %i.fs, align 4
  %i.fv = load <2 x i32>, ptr %i.ft, align 4
  %i.fw = icmp eq <2 x i32> %i.fu, %i.fv          ; 2 uses
  %34 = extractelement <2 x i1> %i.fw, i64 0
  %35 = extractelement <2 x i1> %i.fw, i64 1
  %.sroa.0.0.i93 = select i1 %35, i1 %34, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow1__52all_narrowing_constraints_for_pattern_Configuration_ENtNtNtB9_5table4memo4Memo9has_valueB10_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !range !23, !noundef !15
  %i.c = icmp ne i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrows0_1__61all_negative_narrowing_constraints_for_pattern_Configuration_ENtNtNtB9_5table4memo4Memo9has_valueB10_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !range !23, !noundef !15
  %i.c = icmp ne i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrows1_1__68all_narrowing_constraints_for_subject_element_pattern_Configuration_ENtNtNtB9_5table4memo4Memo9has_valueB10_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !range !23, !noundef !15
  %i.c = icmp ne i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrows3_1__36pattern_success_types_Configuration_ENtNtNtB9_5table4memo4Memo9has_valueB10_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !range !21, !noundef !15
  %i.c = icmp ne i32 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrows_1__55all_narrowing_constraints_for_expression_Configuration_ENtNtNtB9_5table4memo4Memo9has_valueB10_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !range !23, !noundef !15
  %i.c = icmp ne i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantics0_1__27model_config_Configuration_ENtNtNtB9_5table4memo4Memo9has_valueB12_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !76, !noundef !15
  %i.c = icmp ne i8 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantics1_1__50has_before_or_plain_field_validator_Configuration_ENtNtNtB9_5table4memo4Memo9has_valueB12_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !49, !noundef !15
  %i.c = icmp ne i8 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantics_1__28is_root_model_Configuration_ENtNtNtB9_5table4memo4Memo9has_valueB12_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !49, !noundef !15
  %i.c = icmp ne i8 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNvMsl_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB12_23DynamicTypedDictLiteral3mro1__19mro__Configuration_ENtNtNtB9_5table4memo4Memo9has_valueB18_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !align !19, !noundef !15
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1h_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXsg_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neBN_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXsg_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neBN_.exit
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXsg_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neBN_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.09 ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.09 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val5 = load i64, ptr %i.e, align 8, !noundef !15 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val7 = load i64, ptr %i.f, align 8, !noundef !15
  %i.g = icmp eq i64 %.val5, %.val7
  br i1 %i.g, label %_RNvXsg_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neBN_.exit, label %_RNvXsg_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neBN_.exit.thread

_RNvXsg_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neBN_.exit: ; preds = %.lr.ph
  %.val6 = load ptr, ptr %i.d, align 8, !nonnull !15, !noundef !15
  %.val = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15
  %i.h = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull readonly align 8 %.val, ptr noundef nonnull readonly align 8 %.val6, i64 noundef range(i64 0, 104811045873349726) %.val5)
  br i1 %i.h, label %bb.b, label %_RNvXsg_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neBN_.exit.thread

_RNvXsg_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neBN_.exit.thread: ; preds = %bb.b, %_RNvXsg_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neBN_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvXsg_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neBN_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit
  %.sroa.01.07 = phi i64 [ %i.ab, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.07 ; 3 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.sroa.01.07 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20731)
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !20732, !noundef !15 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 2                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !20732, !nonnull !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !20732
  %.sink10.i.i.i.i.i = select i1 %i.e, ptr %i.g, ptr %i.f
  %.sink9.i.i.i.i.i = select i1 %i.e, i64 %i.i, i64 %i.d ; 3 uses
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !20733, !noundef !15 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 2                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20733, !nonnull !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !20733
  %.sink10.i.i1.i.i.i = select i1 %i.k, ptr %i.m, ptr %i.l
  %.sink9.i.i2.i.i.i = select i1 %i.k, i64 %i.o, i64 %i.j
  %i.p = icmp eq i64 %.sink9.i.i.i.i.i, %.sink9.i.i2.i.i.i ; 3 uses
  br i1 %i.p, label %bb.b, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.q = icmp eq i64 %.sink9.i.i.i.i.i, 0
  br i1 %i.q, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.i.i.i.i
  %i.r = add nuw nsw i64 %.sroa.01.06.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.r, %.sink9.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.sroa.01.06.i.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %.sink10.i.i.i.i.i, i64 %.sroa.01.06.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %.sink10.i.i1.i.i.i, i64 %.sroa.01.06.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20737)
  %i.u = load i32, ptr %i.s, align 4, !range !54, !alias.scope !20738, !noalias !20739, !noundef !15
  %i.v = load i32, ptr %i.t, align 4, !range !54, !alias.scope !20740, !noalias !20741, !noundef !15
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.i.i.i.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.z = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.y)
  br i1 %i.z, label %bb.c, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread: ; preds = %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, %.lr.ph, %.lr.ph.i.i.i.i, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.i.i.i.i, %bb.a
  %i.aa = phi i1 [ true, %bb.a ], [ false, %.lr.ph.i.i.i.i ], [ false, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.i.i.i.i ], [ %i.p, %.lr.ph ], [ %i.p, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit ]
  ret i1 %i.aa

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit: ; preds = %bb.c, %bb.b
  %i.ab = add nuw i64 %.sroa.01.07, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvXs3_NtCs45bxiIjzMqg_5salsa23memo_ingredient_indicesNtB5_28MemoIngredientSingletonIndexNtB5_24NewMemoIngredientIndices6create(ptr noalias noundef nonnull align 8 dereferenceable(1368) %0, ptr noalias noundef nonnull align 4 captures(address) %1, i64 noundef %2, i32 noundef %3, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !noundef !15  ; 2 uses
  %i.d = invoke noundef i32 @_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa26next_memo_ingredient_index(ptr noalias noundef nonnull align 8 dereferenceable(1368) %0, i32 noundef %i.c, i32 noundef %3)
end_hunk_0
begin_hunk_1_@_RNvXs9_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBU_BU_Ej2_ENCINvMs8_NtBW_6narrowNtB2B_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2x_31matched_or_pattern_subject_type0E0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBY_:bb.a
  %i.e = load i64, ptr %i.b, align 8, !noundef !15
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !15 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  %i.j = icmp ugt i64 %i.d, %i.h
  %or.cond.i = or i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.d, label %_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_31matched_or_pattern_subject_type0E0E10drop_groupB10_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #40
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %i.g, align 8
  br label %_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_31matched_or_pattern_subject_type0E0E10drop_groupB10_.exit

_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_31matched_or_pattern_subject_type0E0E10drop_groupB10_.exit: ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBU_BU_Ej2_ENCINvMs8_NtBW_6narrowNtB2B_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2x_36matched_mapping_pattern_subject_type0E0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !align !18, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !15
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !15 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  %i.j = icmp ugt i64 %i.d, %i.h
  %or.cond.i = or i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.d, label %_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_36matched_mapping_pattern_subject_type0E0E10drop_groupB10_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #40
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %i.g, align 8
  br label %_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_36matched_mapping_pattern_subject_type0E0E10drop_groupB10_.exit

_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_36matched_mapping_pattern_subject_type0E0E10drop_groupB10_.exit: ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBU_BU_Ej2_ENCINvMs8_NtBW_6narrowNtB2B_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2x_37matched_sequence_pattern_subject_type0E0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !align !18, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !15
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !15 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  %i.j = icmp ugt i64 %i.d, %i.h
  %or.cond.i = or i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.d, label %_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_37matched_sequence_pattern_subject_type0E0E10drop_groupB10_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #40
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %i.g, align 8
  br label %_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_37matched_sequence_pattern_subject_type0E0E10drop_groupB10_.exit

_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_37matched_sequence_pattern_subject_type0E0E10drop_groupB10_.exit: ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBU_BU_Ej2_ENCINvMs8_NtBW_6narrowNtB2B_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2x_46matched_class_pattern_subject_type_for_context0E0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !align !18, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !15
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !15 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  %i.j = icmp ugt i64 %i.d, %i.h
  %or.cond.i = or i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.d, label %_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_46matched_class_pattern_subject_type_for_context0E0E10drop_groupB10_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #40
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %i.g, align 8
  br label %_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_46matched_class_pattern_subject_type_for_context0E0E10drop_groupB10_.exit

_RNvMs5_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATBW_BW_Ej2_ENCINvMs8_NtBY_6narrowNtB2D_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB2z_46matched_class_pattern_subject_type_for_context0E0E10drop_groupB10_.exit: ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsC_NtCscdodAO9FK5_5alloc3vecINtNtB7_5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_3VecBN_EE4fromBT_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE16into_boxed_sliceBJ_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsE_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydanticNtB5_13ConfigBooleanNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @260) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @62, i64 32, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.c, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx, align 8
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsF_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instanceNtB5_17KnownInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !62, !noundef !15 ; 5 uses
  %i.b = icmp ne i32 %i.a, 5
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -2
  %i.d = icmp samesign ugt i32 %i.a, 1
  %narrow = select i1 %i.d, i32 %i.c, i32 3       ; 2 uses
  %i.e = load i32, ptr %1, align 4, !range !62, !noundef !15 ; 4 uses
  %i.f = icmp ne i32 %i.e, 5
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -2
  %i.h = icmp samesign ugt i32 %i.e, 1
  %narrow2 = select i1 %i.h, i32 %i.g, i32 3
  %i.i = icmp eq i32 %narrow, %narrow2
  br i1 %i.i, label %bb.b, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %narrow, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.m
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
    i32 8, label %bb.r
    i32 9, label %bb.s
    i32 10, label %bb.t
    i32 11, label %bb.u
    i32 12, label %bb.v
    i32 13, label %bb.w
    i32 14, label %bb.x
    i32 15, label %bb.y
    i32 16, label %bb.z
    i32 17, label %bb.aa
    i32 18, label %bb.ab
    i32 19, label %bb.ac
    i32 20, label %bb.ad
    i32 21, label %bb.ae
  ]

_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.a, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i82, %bb.e ], [ %.sroa.0.0.i83, %bb.f ], [ false, %bb.a ], [ false, %bb.i ], [ %.sroa.0.0.i84, %bb.o ], [ %.sroa.0.0.i85, %bb.p ], [ %.sroa.0.0.i86, %bb.q ], [ %.sroa.0.0.i87, %bb.r ], [ %.sroa.0.0.i88, %bb.s ], [ %.sroa.0.0.i89, %bb.t ], [ %.sroa.0.0.i90, %bb.u ], [ %.sroa.0.0.i91, %bb.v ], [ %.sroa.0.0.i92, %bb.w ], [ %.sroa.0.0.i93, %bb.x ], [ %.sroa.0.0.i94, %bb.y ], [ %.sroa.0.0.i95, %bb.z ], [ %.sroa.0.0.i96, %bb.aa ], [ %.sroa.0.0.i97, %bb.ab ], [ %.sroa.0.0.i98, %bb.ac ], [ %i.dx, %bb.ad ], [ %.sroa.0.0.i99, %bb.ae ], [ %i.ao, %bb.l ], [ false, %bb.j ], [ %i.aj, %bb.k ], [ false, %bb.g ], [ %.sroa.0.0.i.i.i, %bb.n ], [ %.mux.i.i, %bb.m ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load <2 x i32>, ptr %i.j, align 4
  %i.m = load <2 x i32>, ptr %i.k, align 4
  %i.n = icmp eq <2 x i32> %i.l, %i.m             ; 2 uses
  %2 = extractelement <2 x i1> %i.n, i64 0
  %3 = extractelement <2 x i1> %i.n, i64 1
  %.sroa.0.0.i = select i1 %3, i1 %2, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load <2 x i32>, ptr %i.o, align 4
  %i.r = load <2 x i32>, ptr %i.p, align 4
  %i.s = icmp eq <2 x i32> %i.q, %i.r             ; 2 uses
  %4 = extractelement <2 x i1> %i.s, i64 0
  %5 = extractelement <2 x i1> %i.s, i64 1
  %.sroa.0.0.i82 = select i1 %5, i1 %4, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load <2 x i32>, ptr %i.t, align 4
  %i.w = load <2 x i32>, ptr %i.u, align 4
  %i.x = icmp eq <2 x i32> %i.v, %i.w             ; 2 uses
  %6 = extractelement <2 x i1> %i.x, i64 0
  %7 = extractelement <2 x i1> %i.x, i64 1
  %.sroa.0.0.i83 = select i1 %7, i1 %6, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20870)
  %i.y = icmp eq i32 %i.a, %i.e
  br i1 %i.y, label %bb.h, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.z = trunc nuw i32 %i.a to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !20869, !noundef !15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !20870, !noundef !15
  %i.ae = icmp eq i32 %i.ab, %i.ad                ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.ae, label %bb.l, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  br i1 %i.ae, label %bb.k, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !range !31, !alias.scope !20869, !noundef !15
  %i.ai = load i32, ptr %i.af, align 4, !range !31, !alias.scope !20870, !noundef !15
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i32, ptr %i.al, align 4, !range !31, !alias.scope !20869, !noundef !15
  %i.an = load i32, ptr %i.ak, align 4, !range !31, !alias.scope !20870, !noundef !15
  %i.ao = icmp eq i32 %i.am, %i.an
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val22 = load i32, ptr %i.ap, align 4, !noundef !15 ; 2 uses
  %.val24 = load i32, ptr %i.aq, align 4          ; 2 uses
  %.not.i.i = icmp eq i32 %.val22, 0              ; 2 uses
  %i.ar = icmp eq i32 %.val24, 0                  ; 2 uses
  %brmerge.i.i = select i1 %.not.i.i, i1 true, i1 %i.ar
  %.mux.i.i = select i1 %.not.i.i, i1 %i.ar, i1 false
  br i1 %brmerge.i.i, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val25 = load i32, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val23 = load i32, ptr %i.at, align 4
  %i.au = icmp eq i32 %.val23, %.val25
  %i.av = icmp eq i32 %.val22, %.val24
  %.sroa.0.0.i.i.i = select i1 %i.au, i1 %i.av, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load <2 x i32>, ptr %i.aw, align 4
  %i.az = load <2 x i32>, ptr %i.ax, align 4
  %i.ba = icmp eq <2 x i32> %i.ay, %i.az          ; 2 uses
  %8 = extractelement <2 x i1> %i.ba, i64 0
  %9 = extractelement <2 x i1> %i.ba, i64 1
  %.sroa.0.0.i84 = select i1 %9, i1 %8, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = load <2 x i32>, ptr %i.bb, align 4
  %i.be = load <2 x i32>, ptr %i.bc, align 4
  %i.bf = icmp eq <2 x i32> %i.bd, %i.be          ; 2 uses
  %10 = extractelement <2 x i1> %i.bf, i64 0
  %11 = extractelement <2 x i1> %i.bf, i64 1
  %.sroa.0.0.i85 = select i1 %11, i1 %10, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = load <2 x i32>, ptr %i.bg, align 4
  %i.bj = load <2 x i32>, ptr %i.bh, align 4
  %i.bk = icmp eq <2 x i32> %i.bi, %i.bj          ; 2 uses
  %12 = extractelement <2 x i1> %i.bk, i64 0
  %13 = extractelement <2 x i1> %i.bk, i64 1
  %.sroa.0.0.i86 = select i1 %13, i1 %12, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load <2 x i32>, ptr %i.bl, align 4
  %i.bo = load <2 x i32>, ptr %i.bm, align 4
  %i.bp = icmp eq <2 x i32> %i.bn, %i.bo          ; 2 uses
  %14 = extractelement <2 x i1> %i.bp, i64 0
  %15 = extractelement <2 x i1> %i.bp, i64 1
  %.sroa.0.0.i87 = select i1 %15, i1 %14, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bs = load <2 x i32>, ptr %i.bq, align 4
  %i.bt = load <2 x i32>, ptr %i.br, align 4
  %i.bu = icmp eq <2 x i32> %i.bs, %i.bt          ; 2 uses
  %16 = extractelement <2 x i1> %i.bu, i64 0
  %17 = extractelement <2 x i1> %i.bu, i64 1
  %.sroa.0.0.i88 = select i1 %17, i1 %16, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = load <2 x i32>, ptr %i.bv, align 4
  %i.by = load <2 x i32>, ptr %i.bw, align 4
  %i.bz = icmp eq <2 x i32> %i.bx, %i.by          ; 2 uses
  %18 = extractelement <2 x i1> %i.bz, i64 0
  %19 = extractelement <2 x i1> %i.bz, i64 1
  %.sroa.0.0.i89 = select i1 %19, i1 %18, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cc = load <2 x i32>, ptr %i.ca, align 4
  %i.cd = load <2 x i32>, ptr %i.cb, align 4
  %i.ce = icmp eq <2 x i32> %i.cc, %i.cd          ; 2 uses
  %20 = extractelement <2 x i1> %i.ce, i64 0
  %21 = extractelement <2 x i1> %i.ce, i64 1
  %.sroa.0.0.i90 = select i1 %21, i1 %20, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ch = load <2 x i32>, ptr %i.cf, align 4
  %i.ci = load <2 x i32>, ptr %i.cg, align 4
  %i.cj = icmp eq <2 x i32> %i.ch, %i.ci          ; 2 uses
  %22 = extractelement <2 x i1> %i.cj, i64 0
  %23 = extractelement <2 x i1> %i.cj, i64 1
  %.sroa.0.0.i91 = select i1 %23, i1 %22, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cm = load <2 x i32>, ptr %i.ck, align 4
  %i.cn = load <2 x i32>, ptr %i.cl, align 4
  %i.co = icmp eq <2 x i32> %i.cm, %i.cn          ; 2 uses
  %24 = extractelement <2 x i1> %i.co, i64 0
  %25 = extractelement <2 x i1> %i.co, i64 1
  %.sroa.0.0.i92 = select i1 %25, i1 %24, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.b
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cr = load <2 x i32>, ptr %i.cp, align 4
  %i.cs = load <2 x i32>, ptr %i.cq, align 4
  %i.ct = icmp eq <2 x i32> %i.cr, %i.cs          ; 2 uses
  %26 = extractelement <2 x i1> %i.ct, i64 0
  %27 = extractelement <2 x i1> %i.ct, i64 1
  %.sroa.0.0.i93 = select i1 %27, i1 %26, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = load <2 x i32>, ptr %i.cu, align 4
  %i.cx = load <2 x i32>, ptr %i.cv, align 4
  %i.cy = icmp eq <2 x i32> %i.cw, %i.cx          ; 2 uses
  %28 = extractelement <2 x i1> %i.cy, i64 0
  %29 = extractelement <2 x i1> %i.cy, i64 1
  %.sroa.0.0.i94 = select i1 %29, i1 %28, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.b
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.db = load <2 x i32>, ptr %i.cz, align 4
  %i.dc = load <2 x i32>, ptr %i.da, align 4
  %i.dd = icmp eq <2 x i32> %i.db, %i.dc          ; 2 uses
  %30 = extractelement <2 x i1> %i.dd, i64 0
  %31 = extractelement <2 x i1> %i.dd, i64 1
  %.sroa.0.0.i95 = select i1 %31, i1 %30, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.b
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dg = load <2 x i32>, ptr %i.de, align 4
  %i.dh = load <2 x i32>, ptr %i.df, align 4
  %i.di = icmp eq <2 x i32> %i.dg, %i.dh          ; 2 uses
  %32 = extractelement <2 x i1> %i.di, i64 0
  %33 = extractelement <2 x i1> %i.di, i64 1
  %.sroa.0.0.i96 = select i1 %33, i1 %32, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.b
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dl = load <2 x i32>, ptr %i.dj, align 4
  %i.dm = load <2 x i32>, ptr %i.dk, align 4
  %i.dn = icmp eq <2 x i32> %i.dl, %i.dm          ; 2 uses
  %34 = extractelement <2 x i1> %i.dn, i64 0
  %35 = extractelement <2 x i1> %i.dn, i64 1
  %.sroa.0.0.i97 = select i1 %35, i1 %34, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.b
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dq = load <2 x i32>, ptr %i.do, align 4
  %i.dr = load <2 x i32>, ptr %i.dp, align 4
  %i.ds = icmp eq <2 x i32> %i.dq, %i.dr          ; 2 uses
  %36 = extractelement <2 x i1> %i.ds, i64 0
  %37 = extractelement <2 x i1> %i.ds, i64 1
  %.sroa.0.0.i98 = select i1 %37, i1 %36, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.b
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.du = load i8, ptr %i.dt, align 4, !range !20, !noundef !15
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dw = load i8, ptr %i.dv, align 4, !range !20, !noundef !15
  %i.dx = icmp eq i8 %i.du, %i.dw
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.b
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ea = load <2 x i32>, ptr %i.dy, align 4
  %i.eb = load <2 x i32>, ptr %i.dz, align 4
  %i.ec = icmp eq <2 x i32> %i.ea, %i.eb          ; 2 uses
  %38 = extractelement <2 x i1> %i.ec, i64 0
  %39 = extractelement <2 x i1> %i.ec, i64 1
  %.sroa.0.0.i99 = select i1 %39, i1 %38, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtCs2O29vuvTAEJ_14ty_python_core10definition10Definitionj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8
  %.not1 = icmp eq i64 %.promoted, %i.c
  br i1 %.not1, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  store i64 %i.c, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = load i64, ptr %0, align 8
  %i.e = icmp ugt i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !15
  %.sink10.i = select i1 %i.e, ptr %i.g, ptr %i.f
  %i.h = icmp eq i64 %.promoted, %i.c
  br i1 %i.h, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi i64 [ %i.j, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.sink10.i, i64 %i.i
  %.sroa.01.0.copyload = load i32, ptr %i.k, align 4
  %.not = icmp eq i32 %.sroa.01.0.copyload, -1
  %i.l = icmp eq i64 %i.j, %i.c
  %or.cond = or i1 %.not, %i.l
  br i1 %or.cond, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !nonnull !15
  %.sink10.i = select i1 %i.f, ptr %i.g, ptr %0
  %i.h = icmp eq i64 %.promoted, %i.c
  br i1 %i.h, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi i64 [ %i.j, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i, i64 %i.i
  %.sroa.01.0.copyload = load i32, ptr %i.k, align 4
  %.not = icmp eq i32 %.sroa.01.0.copyload, -1
  %i.l = icmp eq i64 %i.j, %i.c
  %or.cond = or i1 %.not, %i.l
  br i1 %or.cond, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %i.e, 8
  %i.g = load ptr, ptr %0, align 8, !nonnull !15
  %.sink10.i = select i1 %i.f, ptr %i.g, ptr %0
  %i.h = icmp eq i64 %.promoted, %i.c
  br i1 %i.h, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi i64 [ %i.j, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i, i64 %i.i
  %.sroa.01.0.copyload = load i32, ptr %i.k, align 4
  %.not = icmp eq i32 %.sroa.01.0.copyload, -1
  %i.l = icmp eq i64 %i.j, %i.c
  %or.cond = or i1 %.not, %i.l
  br i1 %or.cond, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp eq i64 %.promoted, %i.d
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEEB13_.exit1, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !20873, !noundef !15
  %i.h = icmp ugt i64 %i.g, 1
  %i.i = load ptr, ptr %0, align 8, !alias.scope !20873, !nonnull !15
  %.sink10.i = select i1 %i.h, ptr %i.i, ptr %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEEB13_.exit
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEEB13_.exit ] ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.k, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw [144 x i8], ptr %.sink10.i, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.l, i64 144, i1 false)
  %.pr = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %.pr, 2
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEEB13_.exit1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEEB13_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEEB13_.exit: ; preds = %bb.b
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBH_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = icmp eq i64 %i.k, %i.d
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEEB13_.exit1, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEEB13_.exit1: ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEEB13_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9Signaturej1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp eq i64 %.promoted, %i.d
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEEB13_.exit3, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !alias.scope !20902, !noundef !15
  %i.g = icmp ugt i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !20902, !nonnull !15
  %.sink10.i = select i1 %i.g, ptr %i.i, ptr %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEEB13_.exit
  %i.l = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEEB13_.exit ] ; 2 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %.sink10.i, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false)
  %.pr = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %.pr, 2
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEEB13_.exit3, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !20903)
  call void @llvm.experimental.noalias.scope.decl(metadata !20904)
  call void @llvm.experimental.noalias.scope.decl(metadata !20905)
  %i.o = icmp eq i64 %.pr, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !20906)
  call void @llvm.experimental.noalias.scope.decl(metadata !20907)
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !20908, !noundef !15 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_1
