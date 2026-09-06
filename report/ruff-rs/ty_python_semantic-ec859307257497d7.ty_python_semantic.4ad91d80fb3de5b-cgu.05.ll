Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.05?download=true
inline.NumInlined: 9178
inline.NumDeleted: 3311
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic11suppression1__NtB5_27suppressions_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration12values_equal:bb.a
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !8392, !noalias !8393, !noundef !9 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !8393, !noalias !8392, !noundef !9
  %i.fl = icmp eq i64 %i.fi, %i.fk
  br i1 %i.fl, label %.sink.split.i.i.i.i.i, label %_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !8392, !noalias !8393, !noundef !9 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !8393, !noalias !8392, !noundef !9
  %i.fq = icmp eq i64 %i.fn, %i.fp
  br i1 %i.fq, label %bb.ag, label %_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.ac
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !8392, !noalias !8393, !noundef !9 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !8393, !noalias !8392, !noundef !9
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.aj, label %_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !8393, !noalias !8392, !nonnull !9, !noundef !9
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !8392, !noalias !8393, !nonnull !9, !noundef !9
  %bcmp13.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.fz, ptr nonnull %i.fx, i64 %i.fn), !noalias !8394
  %i.ga = icmp eq i32 %bcmp13.i.i.i.i.i, 0
  br i1 %i.ga, label %bb.ah, label %_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !range !19, !alias.scope !8392, !noalias !8393, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.gc, -1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !range !19, !alias.scope !8393, !noalias !8392, !noundef !9 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, -1
  %brmerge.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.gf
  br i1 %brmerge.i.i.i.i.i, label %_RNvYNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !8392, !noalias !8393, !noundef !9 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !8393, !noalias !8392, !noundef !9
  %i.gk = icmp eq i64 %i.gh, %i.gj
  br i1 %i.gk, label %.sink.split.i.i.i.i.i, label %_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !8393, !noalias !8392, !nonnull !9, !noundef !9
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !8392, !noalias !8393, !nonnull !9, !noundef !9
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.go, ptr nonnull %i.gm, i64 %i.fs), !noalias !8394
  %i.gp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.gp, label %bb.ak, label %_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !8392, !noalias !8393, !noundef !9 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !8393, !noalias !8392, !noundef !9
  %i.gu = icmp eq i64 %i.gr, %i.gt
  br i1 %i.gu, label %.sink.split.i.i.i.i.i, label %_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvYNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i: ; preds = %bb.ah
  %i.gv = and i64 %i.ge, %i.gc
  %.mux.i.i.i.i.i = icmp eq i64 %i.gv, -1
  br i1 %.mux.i.i.i.i.i, label %bb.x, label %_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.i: ; preds = %bb.x, %bb.w
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !8365, !noalias !8366, !noundef !9 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !8366, !noalias !8365, !noundef !9
  %i.ha = icmp eq i64 %i.gx, %i.gz
  br i1 %i.ha, label %bb.al, label %_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !8366, !noalias !8365, !nonnull !9, !noundef !9
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !8365, !noalias !8366, !nonnull !9, !noundef !9
  %i.hf = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef %i.he, ptr noundef %i.hc, i64 noundef %i.gx)
  br label %_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsa_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_12SuppressionsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %_RNvYNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i.i, %.lr.ph.i.i, %bb.n, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %_RNvXsg_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_11SuppressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i, %_RNvYNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i, %.lr.ph.i3.i, %bb.y, %bb.z, %bb.aa, %bb.ab, %.sink.split.i.i.i.i.i, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ai, %bb.aj, %bb.ak, %_RNvYNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i, %bb.a, %_RNvXsy_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBM_.exit.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.i, %bb.al
  %.sroa.0.0.i = phi i1 [ %i.hf, %bb.al ], [ false, %.lr.ph.i3.i ], [ false, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.i ], [ false, %_RNvXsy_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBM_.exit.i ], [ false, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.i ], [ false, %.lr.ph.i.i ], [ false, %bb.a ], [ false, %_RNvYNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %.sink.split.i.i.i.i.i ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.y ], [ false, %_RNvYNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i ], [ false, %_RNvXsg_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_11SuppressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.n ], [ false, %_RNvYNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i.i ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %.lr.ph.i.i.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic11suppression1__NtB5_27suppressions_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration13cycle_initial(ptr dead_on_unwind noalias nofree noundef readnone sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i32 noundef range(i32 1, 0) %5, i32 noundef %6) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @416, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @417) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic11suppression1__NtB5_27suppressions_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [72 x i8], align 8                ; 9 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [160 x i8], align 8               ; 14 uses
  %i.h = alloca [48 x i8], align 8                ; 14 uses
  %i.i = alloca [48 x i8], align 8                ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [160 x i8], align 8               ; 28 uses
  %i.n = alloca [8 x i8], align 8                 ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.p = tail call { i32, i32 } @_RINvMs9_NvCs56aZGHL6Dc6_7ruff_db1__NtB8_10PythonFile4fileDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EBY_(i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !8512 ; 2 uses
  %i.q = extractvalue { i32, i32 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i32, i32 } %i.p, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8514
  %i.s = tail call noundef nonnull align 8 ptr @_RNvNtCs56aZGHL6Dc6_7ruff_db6parsed13parsed_module(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4), !noalias !8512
  call void @_RNvMNtCs56aZGHL6Dc6_7ruff_db6parsedNtB2_12ParsedModule4load(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !8512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8514
  %i.t = invoke noundef nonnull ptr @_RNvNtCs56aZGHL6Dc6_7ruff_db6source11source_text(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %i.q, i32 noundef %i.r)
          to label %bb.h unwind label %bb.g, !noalias !8512

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.i, %.thread72.i, %bb.g
  %.pn30.i = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %.pn.pn.i, %bb.i ], [ %.pn.pn.i, %.thread72.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8515)
  call void @llvm.experimental.noalias.scope.decl(metadata !8516)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8517)
  call void @llvm.experimental.noalias.scope.decl(metadata !8518)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !8519, !noalias !8514, !nonnull !9, !noundef !9
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !8520
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.c, !noalias !8512

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8521)
  call void @llvm.experimental.noalias.scope.decl(metadata !8522)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !8523, !noalias !8514, !nonnull !9, !noundef !9
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !8524
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.d, label %.body.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %.body.i unwind label %bb.f, !noalias !8512

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8525)
  call void @llvm.experimental.noalias.scope.decl(metadata !8526)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !8527, !noalias !8514, !nonnull !9, !noundef !9
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !8528
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.e, label %common.resume.i

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %common.resume.i unwind label %bb.dd, !noalias !8512

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !8512
  unreachable

bb.g:                                             ; preds = %bb.dh, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.h:                                             ; preds = %bb.a
  store ptr %i.t, ptr %i.n, align 8, !noalias !8514
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !9, !alias.scope !8513, !noalias !8512, !nonnull !9
  %i.al = invoke noundef nonnull align 8 ptr %i.ak(ptr noundef nonnull %1, i32 noundef %i.q, i32 noundef %i.r)
          to label %bb.k unwind label %bb.j, !noalias !8512

.thread72.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionEEB1b_.exit.i, %bb.z, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %.pn24.i.i, %bb.z ], [ %.pn71.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionEEB1b_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8529)
  call void @llvm.experimental.noalias.scope.decl(metadata !8530)
  call void @llvm.experimental.noalias.scope.decl(metadata !8531)
  %i.am = load ptr, ptr %i.n, align 8, !alias.scope !8532, !noalias !8514, !nonnull !9, !noundef !9
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !8533
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.i:                                             ; preds = %.thread72.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db6source15SourceTextInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.dd, !noalias !8512

bb.j:                                             ; preds = %bb.n, %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.thread72.i

bb.k:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 98
  %i.ar = load i8, ptr %i.aq, align 2, !range !17, !noalias !8512, !noundef !9
  %5 = trunc nuw i8 %i.ar to i1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8514
  %i.as = load ptr, ptr %i.n, align 8, !noalias !8514, !nonnull !9, !noundef !9 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load i64, ptr %i.at, align 8, !range !19, !noalias !8512, !noundef !9
  %i.av = icmp eq i64 %i.au, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !8512, !nonnull !9, !noundef !9 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 368
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 376
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.3.0.in.i = phi ptr [ %i.az, %bb.l ], [ %i.ba, %bb.m ]
  %.sroa.0.0.in.i = phi ptr [ %i.ay, %bb.l ], [ %i.aw, %bb.m ]
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !noalias !8512, !nonnull !9, !noundef !9
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !noalias !8512, !noundef !9
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !9, !alias.scope !8513, !noalias !8512, !nonnull !9
  %i.bd = invoke noundef nonnull align 8 ptr %i.bc(ptr noundef nonnull %1)
          to label %bb.o unwind label %bb.j, !noalias !8512

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !noalias !8514
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.bf, align 8, !noalias !8514
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 4 uses
  store i64 %.sroa.3.0.i, ptr %i.bg, align 8, !noalias !8514
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 152 ; 3 uses
  store i8 0, ptr %i.bh, align 8, !noalias !8514
  store i64 0, ptr %i.m, align 8, !noalias !8514
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8514
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 14 uses
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 7 uses
  store i64 0, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !8514
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !8514
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 6 uses
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !8514
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !8514
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 3 uses
  store i64 0, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !8514
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 6 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !8514, !nonnull !9, !noundef !9 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !8512, !nonnull !9, !noundef !9 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !8512, !noundef !9 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bq, 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i
  %.not77158.i = icmp eq i64 %i.bq, 0
  br i1 %.not77158.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.ab, %.lr.ph.i
  %.sroa.03.0160.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %i.ck, %bb.ab ] ; 5 uses
  %.sroa.025.0159.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.025.1.i, %bb.ab ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.03.0160.i, i64 12 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.0160.i, i64 10
  %i.cm = load i8, ptr %i.cl, align 2, !range !67, !noalias !8512, !noundef !9 ; 2 uses
  switch i8 %i.cm, label %bb.aa [
    i8 12, label %bb.ac
    i8 14, label %bb.ad
  ]

._crit_edge.i:                                    ; preds = %bb.ab, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.m, i64 160, i1 false), !noalias !8514
  call void @llvm.experimental.noalias.scope.decl(metadata !8534)
  call void @llvm.experimental.noalias.scope.decl(metadata !8535)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 3 uses
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E13shrink_to_fitBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cn)
          to label %bb.q unwind label %bb.x, !noalias !8536

bb.q:                                             ; preds = %._crit_edge.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !28, !alias.scope !8535, !noalias !8537, !noundef !9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !8535, !noalias !8537, !noundef !9 ; 2 uses
  %i.cs = icmp ugt i64 %i.cp, %i.cr
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.co, i64 noundef range(i64 0, 9223372036854775807) %i.cr, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.x, !noalias !8536 ; 2 uses

bb.s:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !range !28, !alias.scope !8535, !noalias !8537, !noundef !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !8535, !noalias !8537, !noundef !9 ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.t, label %bb.u

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.r
  %i.cz = extractvalue { i64, i64 } %i.ct, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.cz, -1
  br i1 %.not.i.i, label %bb.s, label %.invoke.i.i, !prof !36

bb.t:                                             ; preds = %bb.s
  %i.da = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cu, i64 noundef range(i64 0, 9223372036854775807) %i.cx, i64 noundef 4, i64 noundef 16)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit17.i.i unwind label %bb.x, !noalias !8536 ; 2 uses

bb.u:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit17.i.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.cn, i64 56, i1 false), !noalias !8537
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 8, !alias.scope !8535, !noalias !8537
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !8535, !noalias !8537, !nonnull !9, !noundef !9 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !8535, !noalias !8537 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8539
  %i.db = icmp ult i64 %.sroa.5.0.copyload.i.i, 192153584101141163
  call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw [48 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.e, align 8, !noalias !8539
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !8539
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !8539
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.dc, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !8539
  %i.dd = invoke { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB20_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterNtBR_11SuppressionENCNvMs6_BR_NtBR_13IntervalIndex11from_sorted0EEBT_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.dg unwind label %bb.v, !noalias !8536 ; 2 uses

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit17.i.i: ; preds = %bb.t
  %i.de = extractvalue { i64, i64 } %i.da, 0      ; 2 uses
  %.not11.i.i = icmp eq i64 %i.de, -1
  br i1 %.not11.i.i, label %bb.u, label %.invoke.i.i, !prof !36

.invoke.i.i:                                      ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit17.i.i, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %.sink.i.i = phi { i64, i64 } [ %i.ct, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %i.da, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit17.i.i ]
  %i.df = phi i64 [ %i.cz, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %i.de, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsoTR8nlGN3X_18ty_python_semantic.exit17.i.i ]
  %i.dg = extractvalue { i64, i64 } %.sink.i.i, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #41
          to label %.cont.i.i unwind label %bb.x, !noalias !8536

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %.critedge.i.i unwind label %bb.w, !noalias !8536

bb.w:                                             ; preds = %bb.z, %bb.y, %.critedge.i.i, %bb.x, %bb.v
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !8536
  unreachable

bb.x:                                             ; preds = %.invoke.i.i, %bb.t, %bb.r, %._crit_edge.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.g) #39
          to label %bb.y unwind label %bb.w, !noalias !8536

.critedge.i.i:                                    ; preds = %bb.y, %bb.v
  %.pn24.i.i = phi { ptr, i32 } [ %i.dh, %bb.v ], [ %i.dj, %bb.y ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.dk) #39
          to label %bb.z unwind label %bb.w, !noalias !8536

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cn)
          to label %.critedge.i.i unwind label %bb.w, !noalias !8536

bb.z:                                             ; preds = %.critedge.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.dl) #39
          to label %.thread72.i unwind label %bb.w, !noalias !8536

bb.aa:                                            ; preds = %bb.p
  store i8 1, ptr %i.bh, align 8, !noalias !8514
  %cond.i = icmp eq i8 %i.cm, 13
  br i1 %cond.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.at, %bb.ad, %bb.aa
  %.sroa.025.1.i = phi i32 [ %i.ds, %bb.ad ], [ %.sroa.025.0159.i, %bb.aa ], [ %.sroa.025.0159.i, %bb.at ]
  %.not77.i = icmp eq ptr %i.ck, %i.br
  br i1 %.not77.i, label %._crit_edge.i, label %bb.p

bb.ac:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8514
  %i.dm = load ptr, ptr %i.n, align 8, !noalias !8514, !nonnull !9, !noundef !9 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load i64, ptr %i.dn, align 8, !range !19, !noalias !8512, !noundef !9
  %i.dp = icmp eq i64 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 56 ; 2 uses
  br i1 %i.dp, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa, %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.0160.i, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !noalias !8512, !noundef !9
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ac
  %i.dt = load ptr, ptr %i.dq, align 8, !noalias !8512, !nonnull !9, !noundef !9 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 368
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 376
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.37.0.in.i = phi ptr [ %i.dv, %bb.ae ], [ %i.dw, %bb.af ]
  %.sroa.06.0.in.i = phi ptr [ %i.du, %bb.ae ], [ %i.dq, %bb.af ]
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.0.in.i, align 8, !noalias !8512, !nonnull !9, !noundef !9 ; 4 uses
  %.sroa.37.0.i = load i64, ptr %.sroa.37.0.in.i, align 8, !noalias !8512, !noundef !9 ; 5 uses
  %i.dx = load i32, ptr %.sroa.03.0160.i, align 4, !noalias !8512, !noundef !9 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.03.0160.i, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !noalias !8512, !noundef !9 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8540)
  call void @llvm.experimental.noalias.scope.decl(metadata !8541)
  %i.ea = zext i32 %i.dx to i64                   ; 6 uses
  %i.eb = zext i32 %i.dz to i64                   ; 5 uses
  %.not.i.i.i = icmp ugt i32 %i.dx, %i.dz
  br i1 %.not.i.i.i, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = icmp eq i32 %i.dx, 0
  br i1 %i.ec, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not5.i.i.i = icmp ugt i64 %.sroa.37.0.i, %i.ea
  br i1 %.not5.i.i.i, label %bb.ak, label %.split.i.i.i

bb.aj:                                            ; preds = %bb.ak, %.split.i.i.i, %bb.ah
  %i.ed = icmp eq i32 %i.dz, 0
  br i1 %i.ed, label %bb.an, label %bb.al

.split.i.i.i:                                     ; preds = %bb.ai
  %i.ee = icmp eq i64 %.sroa.37.0.i, %i.ea
  br i1 %i.ee, label %bb.aj, label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 %i.ea
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !8542, !noalias !8543, !noundef !9
  %i.eh = icmp sgt i8 %i.eg, -65
  br i1 %i.eh, label %bb.aj, label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %.not6.i.i.i = icmp ugt i64 %.sroa.37.0.i, %i.eb
  br i1 %.not6.i.i.i, label %bb.am, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.al
  %i.ei = icmp eq i64 %.sroa.37.0.i, %i.eb
  br i1 %i.ei, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 %i.eb
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !8542, !noalias !8543, !noundef !9
  %i.el = icmp sgt i8 %i.ek, -65
  br i1 %i.el, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %.split7.i.i.i, %bb.aj
  %i.em = sub nuw nsw i64 %i.eb, %i.ea
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 %i.ea
  invoke void @_RNvMNtCskVZVgnzM3Oh_18ruff_python_trivia6cursorNtB2_6Cursor3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.en, i64 noundef %i.em)
          to label %bb.aq unwind label %.thread75.loopexit.i, !noalias !8512

bb.ao:                                            ; preds = %bb.am, %.split7.i.i.i, %bb.ak, %.split.i.i.i, %bb.ag
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.06.0.i, i64 noundef %.sroa.37.0.i, i64 noundef %i.ea, i64 noundef %i.eb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #41
          to label %.noexc36.i unwind label %.thread75.loopexit.split-lp.i, !noalias !8512

.noexc36.i:                                       ; preds = %bb.ao
  unreachable

.thread75.loopexit.i:                             ; preds = %bb.an
  %lpad.loopexit84.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread75.loopexit.split-lp.i:                    ; preds = %bb.ao
  %lpad.loopexit.split-lp85.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ap:                                            ; preds = %bb.df, %bb.ax, %.backedge.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.aq:                                            ; preds = %bb.an
  store i32 %i.dx, ptr %i.bs, align 8, !alias.scope !8540, !noalias !8544
  store i32 %i.dz, ptr %i.bt, align 4, !alias.scope !8540, !noalias !8544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !8514
  %.not.not.not.i.not.not.not.not.not = icmp ule i32 %.sroa.025.0159.i, %i.dz ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.aq
  invoke void @_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic11suppression6parserNtB4_17SuppressionParserNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.ar unwind label %bb.ap, !noalias !8512

bb.ar:                                            ; preds = %.backedge.i
  %i.eo = load i64, ptr %i.j, align 8, !range !31, !noalias !8514, !noundef !9 ; 4 uses
  %.not27.i = icmp eq i64 %i.eo, -1
  br i1 %.not27.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.6.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !8514 ; 2 uses
  %.sroa.6.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !8514 ; 3 uses
  %.sroa.6.sroa.7.0.copyload.i = load i8, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i, align 1, !noalias !8514 ; 4 uses
  %.sroa.6.sroa.8.0.copyload.i = load i16, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i, align 2, !noalias !8514 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 2
  br i1 %i.ep, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8514
  br label %bb.ab

bb.au:                                            ; preds = %bb.as
  %switch.i = icmp ugt i8 %.sroa.6.sroa.6.0.copyload.i, 1
  %6 = icmp ne i8 %.sroa.6.sroa.7.0.copyload.i, 0
  %brmerge2.i = or i1 %6, %5
  %or.cond332.i = select i1 %switch.i, i1 %brmerge2.i, i1 false
  br i1 %or.cond332.i, label %bb.de, label %.backedge.i.backedge

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8514
  store i64 %i.eo, ptr %i.i, align 8, !noalias !8514
  store i64 %.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !8514
  store i8 %.sroa.6.sroa.6.0.copyload.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx10.sroa_idx.i, align 8, !noalias !8514
  store i8 %.sroa.6.sroa.7.0.copyload.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i, align 1, !noalias !8514
  store i16 %.sroa.6.sroa.8.0.copyload.i, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx10.sroa_idx.i, align 2, !noalias !8514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.0..sroa_idx11.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.0..sroa_idx.i, i64 28, i1 false), !noalias !8514
  %i.eq = load i8, ptr %i.bu, align 8, !range !17, !noalias !8514, !noundef !9
  %7 = icmp ne i8 %i.eq, 0
  %brmerge.i = or i1 %7, %5
  br i1 %brmerge.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.er = icmp eq i64 %i.eo, 0
  br i1 %i.er, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression6parser18SuppressionCommentEBH_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx10.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression6parser18SuppressionCommentEBH_.exit.i unwind label %bb.ap, !noalias !8512

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !8514
  br i1 %.not.not.not.i.not.not.not.not.not, label %bb.ba, label %bb.az, !prof !36

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression6parser18SuppressionCommentEBH_.exit.i: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8514
  br label %.backedge.i.backedge

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #41
          to label %bb.db unwind label %.loopexit.split-lp.i, !noalias !8512

bb.ba:                                            ; preds = %bb.ay
  %i.es = load ptr, ptr %i.bl, align 8, !noalias !8514, !nonnull !9, !noundef !9
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8545)
  call void @llvm.experimental.noalias.scope.decl(metadata !8546)
  %i.eu = load i8, ptr %i.bh, align 8, !range !17, !alias.scope !8545, !noalias !8547, !noundef !9
  %i.ev = trunc nuw i8 %i.eu to i1                ; 3 uses
  %i.ew = load i32, ptr %i.bv, align 8, !alias.scope !8546, !noalias !8548, !noundef !9 ; 15 uses
  %i.ex = invoke { i32, i32 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11token_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et, i32 noundef %i.ew)
          to label %bb.bc unwind label %.loopexit.split-lp.i.loopexit.i, !noalias !8549

.loopexit152.i.i:                                 ; preds = %bb.cx, %bb.cv, %bb.cn, %bb.ck
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.loopexit.i:                  ; preds = %bb.ca, %bb.by, %bb.bu, %bb.bt, %.noexc30.i.i, %bb.bi, %bb.bg, %bb.ba
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.loopexit.split-lp.i:         ; preds = %bb.cj, %bb.bo, %bb.bf
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.cr, %.loopexit.split-lp.i.loopexit.split-lp.i, %.loopexit.split-lp.i.loopexit.i, %.loopexit152.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.js, %bb.cr ], [ %lpad.loopexit.i.i, %.loopexit152.i.i ], [ %lpad.loopexit.i, %.loopexit.split-lp.i.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i.loopexit.split-lp.i ] ; 2 uses
  %i.ey = load i64, ptr %i.h, align 8, !range !32, !alias.scope !8550, !noalias !8548, !noundef !9
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.body45.i, label %bb.bb

bb.bb:                                            ; preds = %.body.i.i
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %.body45.i unwind label %bb.da, !noalias !8512

bb.bc:                                            ; preds = %bb.ba
  %i.fa = extractvalue { i32, i32 } %i.ex, 0
  br i1 %i.ev, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fb = load i8, ptr %i.bw, align 8, !range !17, !alias.scope !8546, !noalias !8548, !noundef !9 ; 2 uses
  %i.fc = icmp eq i8 %i.fb, 0
  br i1 %i.fc, label %bb.bp, label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.fd = load i64, ptr %i.bg, align 8, !alias.scope !8545, !noalias !8547, !noundef !9 ; 2 uses
  %i.fe = icmp ugt i64 %i.fd, 4294967295
  %i.ff = shl nuw i64 %i.fd, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.fe, i64 513, i64 %i.ff ; 2 uses
  %i.fg = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.fg, label %bb.bf, label %.thread137.i.i, !prof !16

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8551
  store i8 2, ptr %i.b, align 1, !noalias !8551
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @570) #41
          to label %.noexc29.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i, !noalias !8549

.noexc29.i.i:                                     ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bd
  %i.fh = load ptr, ptr %i.bf, align 8, !alias.scope !8545, !noalias !8547, !nonnull !9, !noundef !9
  %i.fi = load i64, ptr %i.bg, align 8, !alias.scope !8545, !noalias !8547, !noundef !9
  %i.fj = invoke { ptr, i64 } @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace21indentation_at_offset(i32 noundef %i.fa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fh, i64 noundef %i.fi)
          to label %bb.bh unwind label %.loopexit.split-lp.i.loopexit.i, !noalias !8549

bb.bh:                                            ; preds = %bb.bg
  %i.fk = extractvalue { ptr, i64 } %i.fj, 0
  %.not.i43.i = icmp eq ptr %i.fk, null
  br i1 %.not.i43.i, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fl = load i32, ptr %i.bx, align 4, !alias.scope !8546, !noalias !8548, !noundef !9 ; 4 uses
  %i.fm = invoke { i32, i32 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11token_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et, i32 noundef %i.ew)
          to label %.noexc30.i.i unwind label %.loopexit.split-lp.i.loopexit.i, !noalias !8549

.noexc30.i.i:                                     ; preds = %bb.bi
  %i.fn = extractvalue { i32, i32 } %i.fm, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8552
  invoke void @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8split_at(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et, i32 noundef %i.fn)
          to label %.noexc31.i.i unwind label %.loopexit.split-lp.i.loopexit.i, !noalias !8549

.noexc31.i.i:                                     ; preds = %.noexc30.i.i
  %i.fo = load ptr, ptr %i.a, align 8, !noalias !8552, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.fp = load i64, ptr %i.bz, align 8, !noalias !8552, !noundef !9 ; 2 uses
  %i.fq = load ptr, ptr %i.ca, align 8, !noalias !8552, !nonnull !9, !align !14, !noundef !9 ; 4 uses
  %i.fr = load i64, ptr %i.cb, align 8, !noalias !8552, !noundef !9 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8552
  %i.fs = icmp eq i64 %i.fp, 0
  br i1 %i.fs, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.noexc31.i.i
  %.idx.i.i.i = mul nuw nsw i64 %i.fp, 12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenbNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0B29_.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %i.fu = phi ptr [ %i.fw, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenbNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0B29_.exit.i.i.i.i ], [ %i.ft, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 -2
  %.val.i.i.i.i = load i8, ptr %i.fv, align 2, !range !67, !noalias !8553, !noundef !9
  switch i8 %.val.i.i.i.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.thread.i.i.i [
    i8 12, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenbNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0B29_.exit.i.i.i.i
    i8 13, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.i.i.i
    i8 14, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenbNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0B29_.exit.i.i.i.i
  ]

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenbNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0B29_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 -12 ; 2 uses
  %i.fx = icmp eq ptr %i.fo, %i.fw
  br i1 %i.fx, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenbNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0B29_.exit.i.i.i.i, %.lr.ph.i.i.i.i, %.noexc31.i.i
  %.idx24.i.i.i = mul nuw nsw i64 %i.fr, 12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx24.i.i.i
  %i.fz = icmp eq i64 %i.fr, 0
  br i1 %i.fz, label %.loopexit.i.i.i, label %.lr.ph.split.i.i.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.idx2434.i.i.i = mul nuw nsw i64 %i.fr, 12
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx2434.i.i.i
  %i.gb = icmp eq i64 %i.fr, 0
  br i1 %i.gb, label %.loopexit.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.thread.i.i.i, %bb.bl
  %.sroa.03.019.us.i.i.i = phi i1 [ %.sroa.03.1.us.i.i.i, %bb.bl ], [ true, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.thread.i.i.i ] ; 2 uses
  %.sroa.04.018.us.i.i.i = phi i1 [ %.sroa.04.1.us.i.i.i, %bb.bl ], [ false, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.thread.i.i.i ] ; 3 uses
  %.sroa.05.017.us.i.i.i = phi ptr [ %i.gc, %bb.bl ], [ %i.fq, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.thread.i.i.i ] ; 5 uses
  %.sroa.09.016.us.i.i.i = phi i32 [ %.sroa.09.1.us.i.i.i, %bb.bl ], [ %i.fl, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.thread.i.i.i ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.05.017.us.i.i.i, i64 12 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.05.017.us.i.i.i, i64 10
  %i.ge = load i8, ptr %i.gd, align 2, !range !67, !noalias !8549, !noundef !9
  switch i8 %i.ge, label %bb.bk [
    i8 12, label %bb.bl
    i8 13, label %.split.us.i.i.i
    i8 14, label %bb.bj
  ]

bb.bj:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.gf = load i32, ptr %.sroa.05.017.us.i.i.i, align 4, !noalias !8549, !noundef !9 ; 2 uses
  %.not.us.i.i.i = xor i1 %.sroa.04.018.us.i.i.i, true
  %or.cond.us.i.i.i = select i1 %.not.us.i.i.i, i1 true, i1 %.sroa.03.019.us.i.i.i
  br i1 %or.cond.us.i.i.i, label %bb.bl, label %.loopexit.i.i.i

bb.bk:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.05.017.us.i.i.i, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !noalias !8549, !noundef !9
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %.lr.ph.split.us.i.i.i
  %.sroa.09.1.us.i.i.i = phi i32 [ %i.gh, %bb.bk ], [ %.sroa.09.016.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %i.gf, %bb.bj ] ; 2 uses
  %.sroa.04.1.us.i.i.i = phi i1 [ %.sroa.04.018.us.i.i.i, %bb.bk ], [ %.sroa.04.018.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ true, %bb.bj ]
  %.sroa.03.1.us.i.i.i = phi i1 [ false, %bb.bk ], [ %.sroa.03.019.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ true, %bb.bj ]
  %i.gi = icmp eq ptr %i.gc, %i.ga
  br i1 %i.gi, label %.loopexit.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.i.i.i, %bb.bn
  %.sroa.05.017.i.i.i = phi ptr [ %i.gj, %bb.bn ], [ %i.fq, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.i.i.i ] ; 4 uses
  %.sroa.09.016.i.i.i = phi i32 [ %.sroa.09.1.i.i.i, %bb.bn ], [ %i.fl, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1z_8iterator8Iterator8find_map5checkRBJ_bNCNvNtCsoTR8nlGN3X_18ty_python_semantic11suppression26own_line_suppression_range0E0INtNtNtBa_3ops12control_flow11ControlFlowbEEB3z_.exit.i.i.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i.i, i64 12 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i.i, i64 10
  %i.gl = load i8, ptr %i.gk, align 2, !range !67, !noalias !8549, !noundef !9
  switch i8 %i.gl, label %bb.bm [
    i8 12, label %bb.bn
    i8 13, label %.split.us.i.i.i
  ]

bb.bm:                                            ; preds = %.lr.ph.split.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i.i, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !noalias !8549, !noundef !9
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.split.i.i.i
  %.sroa.09.1.i.i.i = phi i32 [ %i.gn, %bb.bm ], [ %.sroa.09.016.i.i.i, %.lr.ph.split.i.i.i ] ; 2 uses
  %i.go = icmp eq ptr %i.gj, %i.fy
  br i1 %i.go, label %.loopexit.i.i.i, label %.lr.ph.split.i.i.i

end_hunk_0
begin_hunk_1_@_RNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic11suppression1__NtB5_27suppressions_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute:bb.a

bb.cj:                                            ; preds = %bb.ch, %.split7.i.i42.i, %bb.cf, %.split.i.i40.i, %bb.cb
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.iu, i64 noundef %i.iv, i64 noundef %i.iw, i64 noundef %i.ix, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #41
          to label %bb.bq unwind label %.loopexit.split-lp.i.loopexit.split-lp.i, !noalias !8549

bb.ck:                                            ; preds = %bb.ci
  %i.jk = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jj, i64 noundef %i.ji, ptr noalias noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 3)
          to label %bb.cl unwind label %.loopexit152.i.i, !noalias !8549

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.jk, label %bb.cm, label %.backedge.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.jl = add nsw i64 %i.ji, -3
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 3
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ci
  %.sroa.616.0.i.i = phi i64 [ %i.jl, %bb.cm ], [ %i.ji, %bb.ci ]
  %.sroa.012.0.i.i = phi ptr [ %i.jm, %bb.cm ], [ %i.jj, %bb.ci ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8551
  %i.jn = load ptr, ptr %i.be, align 8, !alias.scope !8545, !noalias !8547, !nonnull !9, !align !18, !noundef !9
  invoke void @_RNvMs9_NtCsoTR8nlGN3X_18ty_python_semantic4lintNtB5_12LintRegistry3get(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.i.i, i64 noundef %.sroa.616.0.i.i)
          to label %bb.co unwind label %.loopexit152.i.i, !noalias !8549

bb.co:                                            ; preds = %bb.cn
  %i.jo = load i64, ptr %i.d, align 8, !range !31, !noalias !8551, !noundef !9
  %.not28.i.i = icmp eq i64 %i.jo, -1
  br i1 %.not28.i.i, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !8551
  store i32 %i.ir, ptr %i.cf, align 8, !noalias !8551
  store i32 %i.it, ptr %i.cg, align 4, !noalias !8551
  store i32 %i.ew, ptr %i.ch, align 8, !noalias !8551
  store i32 %i.hz, ptr %i.ci, align 4, !noalias !8551
  %i.jp = load i64, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !8572, !noalias !8573, !noundef !9 ; 3 uses
  %i.jq = load i64, ptr %i.bj, align 8, !range !28, !alias.scope !8572, !noalias !8573, !noundef !9
  %i.jr = icmp eq i64 %i.jp, %i.jq
  br i1 %i.jr, label %bb.cq, label %bb.cz

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.cz unwind label %bb.cr, !noalias !8574

bb.cr:                                            ; preds = %bb.cq
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #39
          to label %.body.i.i unwind label %bb.cs, !noalias !8549

bb.cs:                                            ; preds = %bb.cr
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !8549
  unreachable

bb.ct:                                            ; preds = %bb.co
  %i.ju = load ptr, ptr %i.cj, align 8, !noalias !8551, !nonnull !9, !align !18, !noundef !9 ; 2 uses
  br i1 %i.ev, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.jv = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8576, !noundef !9 ; 3 uses
  %i.jw = load i64, ptr %i.m, align 8, !range !28, !alias.scope !8575, !noalias !8576, !noundef !9
  %i.jx = icmp eq i64 %i.jv, %i.jw
  br i1 %i.jx, label %bb.cv, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionE8push_mutBI_.exit51.i.i

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.m)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionE8push_mutBI_.exit51.i.i unwind label %.loopexit152.i.i, !noalias !8549

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionE8push_mutBI_.exit51.i.i: ; preds = %bb.cv, %bb.cu
  %i.jy = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8576, !nonnull !9, !noundef !9
  %i.jz = getelementptr inbounds nuw [48 x i8], ptr %i.jy, i64 %i.jv ; 9 uses
  store i64 1, ptr %i.jz, align 8, !noalias !8549
  %.sroa.5109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %i.ju, ptr %.sroa.5109.0..sroa_idx.i.i, align 8, !noalias !8549
  %.sroa.6112.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i32 %i.ir, ptr %.sroa.6112.0..sroa_idx.i.i, align 8, !noalias !8549
  %.sroa.7115.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 20
  store i32 %i.it, ptr %.sroa.7115.0..sroa_idx.i.i, align 4, !noalias !8549
  %.sroa.8118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  store i32 %i.ew, ptr %.sroa.8118.0..sroa_idx.i.i, align 8, !noalias !8549
  %.sroa.9121.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 28
  store i32 %i.hz, ptr %.sroa.9121.0..sroa_idx.i.i, align 4, !noalias !8549
  %.sroa.10124.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  store i32 %.sroa.0.0143.i.i, ptr %.sroa.10124.0..sroa_idx.i.i, align 8, !noalias !8549
  %.sroa.11127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 36
  store i32 %.sroa.6.0141.i.i, ptr %.sroa.11127.0..sroa_idx.i.i, align 4, !noalias !8549
  %.sroa.12130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  store i8 %i.hx, ptr %.sroa.12130.0..sroa_idx.i.i, align 8, !noalias !8549
  %i.ka = add i64 %i.jv, 1
  store i64 %i.ka, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8576
  br label %bb.cy

bb.cw:                                            ; preds = %bb.ct
  %i.kb = load i64, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !8577, !noalias !8578, !noundef !9 ; 2 uses
  %i.kc = icmp ugt i64 %i.kb, 1                   ; 2 uses
  %i.kd = load ptr, ptr %i.bi, align 8, !alias.scope !8577, !noalias !8578, !nonnull !9
  %.sink9.i.i52.i.i = select i1 %i.kc, ptr %i.kd, ptr %i.bi
  %.sink8.i.i53.i.i = select i1 %i.kc, ptr %i.by, ptr %.sroa.418.0..sroa_idx.i ; 2 uses
  %.sink.i.i54.i.i = call i64 @llvm.umax.i64(i64 %i.kb, i64 1)
  %i.ke = load i64, ptr %.sink8.i.i53.i.i, align 8, !alias.scope !8579, !noalias !8580, !noundef !9 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, %.sink.i.i54.i.i
  br i1 %i.kf, label %bb.cx, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E4pushBM_.exit59.i.i, !prof !16

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bi)
          to label %.noexc58.i.i unwind label %.loopexit152.i.i, !noalias !8549

.noexc58.i.i:                                     ; preds = %bb.cx
  %i.kg = load ptr, ptr %i.bi, align 8, !alias.scope !8579, !noalias !8580, !nonnull !9, !noundef !9
  %.pre.i57.i.i = load i64, ptr %i.by, align 8, !alias.scope !8579, !noalias !8580
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E4pushBM_.exit59.i.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E4pushBM_.exit59.i.i: ; preds = %.noexc58.i.i, %bb.cw
  %i.kh = phi i64 [ %.pre.i57.i.i, %.noexc58.i.i ], [ %i.ke, %bb.cw ]
  %.sroa.01.0.i55.i.i = phi ptr [ %i.by, %.noexc58.i.i ], [ %.sink8.i.i53.i.i, %bb.cw ] ; 2 uses
  %.sroa.0.0.i56.i.i = phi ptr [ %i.kg, %.noexc58.i.i ], [ %.sink9.i.i52.i.i, %bb.cw ]
  %i.ki = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i56.i.i, i64 %i.kh ; 9 uses
  store i64 1, ptr %i.ki, align 8, !noalias !8549
  %.sroa.5109.0..sroa_idx110.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr %i.ju, ptr %.sroa.5109.0..sroa_idx110.i.i, align 8, !noalias !8549
  %.sroa.6112.0..sroa_idx113.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i32 %i.ir, ptr %.sroa.6112.0..sroa_idx113.i.i, align 8, !noalias !8549
  %.sroa.7115.0..sroa_idx116.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  store i32 %i.it, ptr %.sroa.7115.0..sroa_idx116.i.i, align 4, !noalias !8549
  %.sroa.8118.0..sroa_idx119.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store i32 %i.ew, ptr %.sroa.8118.0..sroa_idx119.i.i, align 8, !noalias !8549
  %.sroa.9121.0..sroa_idx122.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 28
  store i32 %i.hz, ptr %.sroa.9121.0..sroa_idx122.i.i, align 4, !noalias !8549
  %.sroa.10124.0..sroa_idx125.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  store i32 %.sroa.0.0143.i.i, ptr %.sroa.10124.0..sroa_idx125.i.i, align 8, !noalias !8549
  %.sroa.11127.0..sroa_idx128.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 36
  store i32 %.sroa.6.0141.i.i, ptr %.sroa.11127.0..sroa_idx128.i.i, align 4, !noalias !8549
  %.sroa.12130.0..sroa_idx131.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  store i8 %i.hx, ptr %.sroa.12130.0..sroa_idx131.i.i, align 8, !noalias !8549
  %i.kj = load i64, ptr %.sroa.01.0.i55.i.i, align 8, !alias.scope !8579, !noalias !8580, !noundef !9
  %i.kk = add i64 %i.kj, 1
  store i64 %i.kk, ptr %.sroa.01.0.i55.i.i, align 8, !alias.scope !8579, !noalias !8580
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cz, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E4pushBM_.exit59.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionE8push_mutBI_.exit51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8551
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.cy, %bb.cl
  %i.kl = icmp eq ptr %i.iq, %i.hw
  br i1 %i.kl, label %.loopexit.i.i, label %bb.cb

bb.cz:                                            ; preds = %bb.cq, %bb.cp
  %i.km = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !8572, !noalias !8573, !nonnull !9, !noundef !9
  %i.kn = getelementptr inbounds nuw [72 x i8], ptr %i.km, i64 %i.jp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kn, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !8549
  %i.ko = add i64 %i.jp, 1
  store i64 %i.ko, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !8572, !noalias !8573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8551
  br label %bb.cy

bb.da:                                            ; preds = %bb.bb
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !8512
  unreachable

.loopexit.i:                                      ; preds = %bb.bv
  %lpad.loopexit81.i = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i

.loopexit.split-lp.i:                             ; preds = %bb.az
  %lpad.loopexit.split-lp82.i = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i

.body45.i:                                        ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.bb, %.body.i.i
  %eh.lpad-body46.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.bb ], [ %lpad.loopexit81.i, %.loopexit.i ], [ %lpad.loopexit.split-lp82.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.kq = load i64, ptr %i.h, align 8, !range !32, !noalias !8514
  %i.kr = icmp eq i64 %i.kq, 0
  %or.cond.i = select i1 %.not.not.not.i.not.not.not.not.not, i1 true, i1 %i.kr
  br i1 %or.cond.i, label %.thread.i, label %bb.dc

bb.db:                                            ; preds = %bb.az
  unreachable

_RNvMs5_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_19SuppressionsBuilder11add_comment.exit.i: ; preds = %bb.bv, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8514
  br label %.backedge.i.backedge

bb.dc:                                            ; preds = %.body45.i
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %.thread.i unwind label %bb.dd, !noalias !8512

bb.dd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionEEB1b_.exit.i, %bb.dc, %bb.i, %bb.e
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %.body5.i, %bb.dw, %bb.dd, %bb.d, %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !8512
  unreachable

bb.de:                                            ; preds = %bb.au
  %i.kt = load i64, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !8581, !noalias !8582, !noundef !9 ; 3 uses
  %i.ku = load i64, ptr %i.bk, align 8, !range !28, !alias.scope !8581, !noalias !8582, !noundef !9
  %i.kv = icmp eq i64 %i.kt, %i.ku
  br i1 %i.kv, label %bb.df, label %_RNvMs5_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_19SuppressionsBuilder19add_invalid_comment.exit.i

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RNvMs5_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_19SuppressionsBuilder19add_invalid_comment.exit.i unwind label %bb.ap, !noalias !8512

_RNvMs5_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_19SuppressionsBuilder19add_invalid_comment.exit.i: ; preds = %bb.df, %bb.de
  %i.kw = load ptr, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !8581, !noalias !8582, !nonnull !9, !noundef !9
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.kw, i64 %i.kt ; 5 uses
  store i64 %.sroa.6.sroa.0.0.copyload.i, ptr %i.kx, align 4, !noalias !8512
  %.sroa.5.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i8 %.sroa.6.sroa.6.0.copyload.i, ptr %.sroa.5.0..sroa_idx57.i, align 4, !noalias !8512
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 9
  store i8 %.sroa.6.sroa.7.0.copyload.i, ptr %.sroa.659.0..sroa_idx.i, align 1, !noalias !8512
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 10
  store i16 %.sroa.6.sroa.8.0.copyload.i, ptr %.sroa.10.0..sroa_idx.i, align 2, !noalias !8512
  %.sroa.4.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  store i8 %.sroa.6.sroa.7.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i49.i, align 4, !noalias !8583
  %i.ky = add i64 %i.kt, 1
  store i64 %i.ky, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !8581, !noalias !8582
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs5_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_19SuppressionsBuilder19add_invalid_comment.exit.i, %_RNvMs5_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_19SuppressionsBuilder11add_comment.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression6parser18SuppressionCommentEBH_.exit.i, %bb.au
  br label %.backedge.i

bb.dg:                                            ; preds = %bb.u
  %i.kz = extractvalue { ptr, i64 } %i.dd, 0      ; 2 uses
  %i.la = extractvalue { ptr, i64 } %i.dd, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8539
  %i.lb = call fastcc { i32, i64 } @_RNvMs6_NtCsoTR8nlGN3X_18ty_python_semantic11suppressionNtB5_13IntervalIndex20set_subtree_max_ends(ptr noalias noundef nonnull align 8 %i.kz, i64 noundef %i.la), !noalias !8584 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !alias.scope !8585, !noalias !8513
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !alias.scope !8585, !noalias !8513
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ld, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !8586
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.kz, ptr %i.le, align 8, !alias.scope !8536, !noalias !8586
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.la, ptr %i.lf, align 8, !alias.scope !8536, !noalias !8586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8514
  call void @llvm.experimental.noalias.scope.decl(metadata !8587)
  call void @llvm.experimental.noalias.scope.decl(metadata !8588)
  call void @llvm.experimental.noalias.scope.decl(metadata !8589)
  %i.lg = load ptr, ptr %i.n, align 8, !alias.scope !8590, !noalias !8514, !nonnull !9, !noundef !9
  %i.lh = atomicrmw sub ptr %i.lg, i64 1 release, align 8, !noalias !8591
  %i.li = icmp eq i64 %i.lh, 1
  br i1 %i.li, label %bb.dh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit52.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db6source15SourceTextInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit52.i unwind label %bb.g, !noalias !8512

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit52.i: ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8514
  call void @llvm.experimental.noalias.scope.decl(metadata !8592)
  call void @llvm.experimental.noalias.scope.decl(metadata !8593)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8594)
  call void @llvm.experimental.noalias.scope.decl(metadata !8595)
  %i.lk = load ptr, ptr %i.lj, align 8, !alias.scope !8596, !noalias !8514, !nonnull !9, !noundef !9
  %i.ll = atomicrmw sub ptr %i.lk, i64 1 release, align 8, !noalias !8597
  %i.lm = icmp eq i64 %i.ll, 1
  br i1 %i.lm, label %bb.di, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i53.i

bb.di:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit52.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i53.i unwind label %bb.dj, !noalias !8512

bb.dj:                                            ; preds = %bb.di
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8598)
  call void @llvm.experimental.noalias.scope.decl(metadata !8599)
  %i.lo = load ptr, ptr %i.bl, align 8, !alias.scope !8600, !noalias !8514, !nonnull !9, !noundef !9
  %i.lp = atomicrmw sub ptr %i.lo, i64 1 release, align 8, !noalias !8601
  %i.lq = icmp eq i64 %i.lp, 1
  br i1 %i.lq, label %bb.dk, label %common.resume.i

bb.dk:                                            ; preds = %bb.dj
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %common.resume.i unwind label %bb.dm, !noalias !8512

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i53.i: ; preds = %bb.di, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsoTR8nlGN3X_18ty_python_semantic.exit52.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8602)
  call void @llvm.experimental.noalias.scope.decl(metadata !8603)
  %i.lr = load ptr, ptr %i.bl, align 8, !alias.scope !8604, !noalias !8514, !nonnull !9, !noundef !9
  %i.ls = atomicrmw sub ptr %i.lr, i64 1 release, align 8, !noalias !8605
  %i.lt = icmp eq i64 %i.ls, 1
  br i1 %i.lt, label %bb.dl, label %_RNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic11suppression1__NtB7_27suppressions_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

bb.dl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i53.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl), !noalias !8512
  br label %_RNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic11suppression1__NtB7_27suppressions_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

bb.dm:                                            ; preds = %bb.dk
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !8512
  unreachable

common.resume.i:                                  ; preds = %bb.dk, %bb.dj, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ln, %bb.dj ], [ %i.ln, %bb.dk ], [ %.pn30.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %.pn30.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

.thread.i:                                        ; preds = %bb.dc, %.body45.i, %bb.ap, %.thread75.loopexit.split-lp.i, %.thread75.loopexit.i
  %.pn71.i = phi { ptr, i32 } [ %eh.lpad-body46.i, %bb.dc ], [ %lpad.thr_comm.split-lp.i, %bb.ap ], [ %eh.lpad-body46.i, %.body45.i ], [ %lpad.loopexit84.i, %.thread75.loopexit.i ], [ %lpad.loopexit.split-lp85.i, %.thread75.loopexit.split-lp.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.m)
          to label %bb.do unwind label %bb.dn, !noalias !8512

bb.dn:                                            ; preds = %.thread.i
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.m)
          to label %.body.i1 unwind label %bb.dp, !noalias !8512

bb.do:                                            ; preds = %.thread.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEEB1b_.exit.i unwind label %bb.dq, !noalias !8512

bb.dp:                                            ; preds = %bb.dn
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !8512
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.lx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i1

.body.i1:                                         ; preds = %bb.dq, %bb.dn
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit.i unwind label %bb.dy, !noalias !8512

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEEB1b_.exit.i: ; preds = %bb.do
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit4.i unwind label %bb.dr, !noalias !8512

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit.i: ; preds = %bb.dr, %.body.i1
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.bj) #39
          to label %.body5.i unwind label %bb.dy, !noalias !8512

bb.dr:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEEB1b_.exit.i
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit4.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEEB1b_.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.dt unwind label %bb.ds, !noalias !8512

bb.ds:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit4.i
  %i.lz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %.body5.i unwind label %bb.du, !noalias !8512

bb.dt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit4.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_.exit.i unwind label %bb.dv, !noalias !8512

bb.du:                                            ; preds = %bb.ds
  %i.ma = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !8512
  unreachable

.body5.i:                                         ; preds = %bb.dv, %bb.ds, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.bk) #39
          to label %.body.i unwind label %bb.dy, !noalias !8512

bb.dv:                                            ; preds = %bb.dt
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body5.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_.exit.i: ; preds = %bb.dt
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionEEB1b_.exit.i unwind label %bb.dw, !noalias !8512

bb.dw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_.exit.i
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.body.i unwind label %bb.dx, !noalias !8512

bb.dx:                                            ; preds = %bb.dw
  %i.md = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !8512
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionEEB1b_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.thread72.i unwind label %bb.dd

bb.dy:                                            ; preds = %.body5.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit.i, %.body.i1
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !8512
  unreachable

_RNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic11suppression1__NtB7_27suppressions_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i53.i, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic11suppression1__NtB5_27suppressions_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizeNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression12SuppressionsE0jE0jEB43_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @418, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0)
  %i.b = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.a, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method1__INtB5_9StructKeyNtNtB9_8function12FunctionTypeNtB9_4TypeEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1e_B1I_EE10into_ownedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 4 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %i.a, align 4
  store <2 x i32> %i.b, ptr %0, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype1__INtB5_9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs4NRVxsYgnAr_4core6option6OptionNtB7_11NewTypeBaseEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1g_B1Z_B2V_EE10into_ownedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !align !18, !noundef !9
  tail call void @_RNvXsj_NtCs45bxiIjzMqg_5salsa8internedRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB5_6LookupBB_E10into_ownedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x i32>, ptr %i.b, align 8
  store <2 x i32> %i.f, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype1__INtB5_9StructKeyReNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs4NRVxsYgnAr_4core6option6OptionNtB7_11NewTypeBaseEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1h_B2d_EE10into_ownedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer9new_exact(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d), !noalias !8615 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i, label %bb.d

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !8616
  %i.i = trunc nuw nsw i64 %i.d to i8
  %i.j = or disjoint i8 %i.i, -64
  %.15..15..15..15..15..15..15..15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.j, ptr %.15..15..15..15..15..15..15..15..15..15..sroa_idx, align 1, !noalias !8616
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.b, i64 %i.d, i1 false), !noalias !8615
  %.0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i = load ptr, ptr %i.a, align 8, !noalias !8617
  %.8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..8..8..8..8..8..8..sroa.6.0.copyload5.i.i = load i64, ptr %.8..8..8..8..8..8..8..sroa_idx, align 8, !noalias !8617
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, i64 } %i.f, 1
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.02.0.i.i = phi ptr [ %.0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i, %bb.c ], [ %i.g, %bb.d ]
  %.sroa.6.0.i.i = phi i64 [ %.8..8..8..8..8..8..8..sroa.6.0.copyload5.i.i, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = icmp ugt i64 %.sroa.6.0.i.i, -72057594037927937
  br i1 %i.l, label %bb.e, label %bb.f, !prof !72

bb.e:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i
  tail call void @_RINvNvXsQ_Csj8vhLppEnlJ_8char_strINtNtCs4NRVxsYgnAr_4core6result6ResultppENtB8_13UnwrapWithMsg15unwrap_with_msg17do_panic_with_msgNtNtNtB8_6errors13reserve_error12ReserveErrorEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #41, !noalias !8618
  unreachable

bb.f:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %i.n, i64 12, i1 false)
  store ptr %.sroa.02.0.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load <2 x i32>, ptr %i.m, align 8
  store <2 x i32> %i.q, ptr %i.p, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides1__NtB5_49effective_superclass_variable_kind_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration11id_to_input(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 12)) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides1__49effective_superclass_variable_kind_Configuration_EE13get_or_createNtB1N_34effective_superclass_variable_kindKj1_EB1R_(ptr noundef nonnull align 4 @_RNvNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides1__48effective_superclass_variable_kind_INTERN_CACHE_, ptr noundef nonnull align 8 %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table3getINtNtB8_8interned5ValueNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides1__49effective_superclass_variable_kind_Configuration_EEB1i_(ptr noundef nonnull align 8 %i.b, i32 noundef %2, i32 noundef %3) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8632)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 12, i1 false), !alias.scope !8633
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8636)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 63
  %i.g = load i8, ptr %i.f, align 1, !range !41, !alias.scope !8637, !noalias !8638, !noundef !9
  %i.h = and i8 %i.g, -2
  %switch.i.i.i = icmp eq i8 %i.h, -48
  br i1 %switch.i.i.i, label %bb.b, label %_RNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit

bb.b:                                             ; preds = %bb.a
  %.pn.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !8637, !noalias !8638, !nonnull !9, !noundef !9
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -8
  %i.i = atomicrmw add ptr %.sroa.0.0.i.i.i, i64 1 monotonic, align 8, !noalias !8639
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_RNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #41, !noalias !8638
  unreachable

_RNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, i64 16, i1 false), !alias.scope !8640
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides1__NtB5_49effective_superclass_variable_kind_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration13cycle_initial(ptr nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4) unnamed_addr #12 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEBI_(ptr noalias noundef align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @416, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @419) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides1__NtB5_49effective_superclass_variable_kind_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration18recover_from_cycle(ptr nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3, i8 noundef returned range(i8 0, 3) %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8653)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8657)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.d = load i8, ptr %i.c, align 1, !range !41, !alias.scope !8658, !noundef !9
  %i.e = and i8 %i.d, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.e, -48
  br i1 %switch.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEBI_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8659)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8660, !nonnull !9, !noundef !9
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.f = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !8660
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEBI_.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEBI_.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %4
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides1__NtB5_49effective_superclass_variable_kind_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [36 x i8], align 4                ; 6 uses
end_hunk_1
