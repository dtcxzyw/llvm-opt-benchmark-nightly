Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.07?download=true
inline.NumInlined: 9996
inline.NumDeleted: 4213
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXsg_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.zg = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zd) #56, !inline_history !22895
  br i1 %i.zg, label %bb.ec, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ec:                                            ; preds = %.split76, %bb.eb
  %i.zh = tail call fastcc noundef zeroext i1 @_RNvXs1o_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18CreateFunctionBodyNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.xq, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.xr) #56, !inline_history !22895
  br i1 %i.zh, label %bb.ed, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ed:                                            ; preds = %bb.ec
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.zj = load ptr, ptr %i.zi, align 8, !alias.scope !22974, !nonnull !37, !noundef !37 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.zl = load ptr, ptr %i.zk, align 8, !alias.scope !22975, !nonnull !37, !noundef !37 ; 2 uses
  %i.zm = icmp eq ptr %i.zj, %i.zl
  br i1 %i.zm, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %i.zp = tail call fastcc noundef zeroext i1 @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.zn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.zo) #56, !inline_history !22895
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ef:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22978)
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.zr = load i8, ptr %i.zq, align 8, !range !56, !alias.scope !22977, !noundef !37
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.zt = load i8, ptr %i.zs, align 8, !range !56, !alias.scope !22978, !noundef !37
  %i.zu = icmp eq i8 %i.zr, %i.zt
  br i1 %i.zu, label %bb.eg, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eg:                                            ; preds = %bb.ef
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.zw = load i64, ptr %i.zv, align 8, !alias.scope !22977, !noundef !37 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zy = load i64, ptr %i.zx, align 8, !alias.scope !22978, !noundef !37
  %i.zz = icmp eq i64 %i.zw, %i.zy
  br i1 %i.zz, label %bb.eh, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eh:                                            ; preds = %bb.eg
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aab = load ptr, ptr %i.aaa, align 16, !alias.scope !22978, !nonnull !37, !noundef !37
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aad = load ptr, ptr %i.aac, align 16, !alias.scope !22977, !nonnull !37, !noundef !37
  %bcmp.i67 = tail call i32 @bcmp(ptr nonnull %i.aad, ptr nonnull %i.aab, i64 %i.zw), !noalias !22979
  %i.aae = icmp eq i32 %bcmp.i67, 0
  br i1 %i.aae, label %bb.ei, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ei:                                            ; preds = %bb.eh
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aag = load ptr, ptr %i.aaf, align 16, !alias.scope !22977, !nonnull !37, !noundef !37 ; 6 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aai = load ptr, ptr %i.aah, align 16, !alias.scope !22978, !nonnull !37, !noundef !37 ; 6 uses
  %i.aaj = icmp eq ptr %i.aag, %i.aai
  br i1 %i.aaj, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22981)
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aag, i64 64
  %i.aal = load ptr, ptr %i.aak, align 8, !alias.scope !22980, !noalias !22979, !nonnull !37, !noundef !37 ; 4 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 64
  %i.aan = load ptr, ptr %i.aam, align 8, !alias.scope !22981, !noalias !22979, !nonnull !37, !noundef !37 ; 4 uses
  %i.aao = icmp eq ptr %i.aal, %i.aan
  br i1 %i.aao, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22983)
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aal, i64 24
  %i.aaq = load i64, ptr %i.aap, align 8, !alias.scope !22982, !noalias !22984, !noundef !37 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  %i.aas = load i64, ptr %i.aar, align 8, !alias.scope !22983, !noalias !22984, !noundef !37
  %i.aat = icmp eq i64 %i.aaq, %i.aas
  br i1 %i.aat, label %bb.el, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.el:                                            ; preds = %bb.ek
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aaw = load ptr, ptr %i.aau, align 8, !alias.scope !22983, !noalias !22984, !nonnull !37, !noundef !37
  %i.aax = load ptr, ptr %i.aav, align 8, !alias.scope !22982, !noalias !22984, !nonnull !37, !noundef !37
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %i.aba = icmp eq i64 %i.aaq, 0
  br i1 %i.aba, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i75, label %.lr.ph.i.i.i.i68

.lr.ph.i.i.i.i68:                                 ; preds = %bb.el, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i73
  %.sroa.01.07.i.i.i.i69 = phi i64 [ %i.abh, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i73 ], [ 0, %bb.el ] ; 3 uses
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %.sroa.01.07.i.i.i.i69
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %.sroa.01.07.i.i.i.i69
  %.val.i.i.i.i70 = load ptr, ptr %i.abb, align 8, !noalias !22985, !nonnull !37, !noundef !37 ; 2 uses
  %.val5.i.i.i.i71 = load ptr, ptr %i.abc, align 8, !noalias !22985, !nonnull !37, !noundef !37 ; 2 uses
  %i.abd = icmp eq ptr %.val.i.i.i.i70, %.val5.i.i.i.i71
  br i1 %i.abd, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i73, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i72

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i72: ; preds = %.lr.ph.i.i.i.i68
  %i.abe = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i70, i64 16
  %i.abf = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i71, i64 16
  %i.abg = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.abe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.abf), !noalias !22985
  br i1 %i.abg, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i73, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i73: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i72, %.lr.ph.i.i.i.i68
  %i.abh = add nuw i64 %.sroa.01.07.i.i.i.i69, 1  ; 2 uses
  %exitcond.not.i.i.i.i74 = icmp eq i64 %i.abh, %i.aaq
  br i1 %exitcond.not.i.i.i.i74, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i75, label %.lr.ph.i.i.i.i68

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i75: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i73, %bb.el
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aal, i64 32
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aan, i64 32
  %i.abk = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.abi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.abj), !noalias !22984
  br i1 %i.abk, label %bb.em, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.em:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i75, %bb.ej
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aag, i64 32
  %i.abm = load i64, ptr %i.abl, align 8, !alias.scope !22980, !noalias !22979, !noundef !37 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aai, i64 32
  %i.abo = load i64, ptr %i.abn, align 8, !alias.scope !22981, !noalias !22979, !noundef !37
  %i.abp = icmp eq i64 %i.abm, %i.abo
  br i1 %i.abp, label %bb.en, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.en:                                            ; preds = %bb.em
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aai, i64 24
  %i.abr = load ptr, ptr %i.abq, align 8, !alias.scope !22981, !noalias !22979, !nonnull !37, !noundef !37
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %i.abt = load ptr, ptr %i.abs, align 8, !alias.scope !22980, !noalias !22979, !nonnull !37, !noundef !37
  %i.abu = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.abt, ptr noundef nonnull %i.abr, i64 noundef %i.abm), !noalias !22984
  br i1 %i.abu, label %bb.eo, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eo:                                            ; preds = %bb.en
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aag, i64 56
  %i.abw = load i64, ptr %i.abv, align 8, !alias.scope !22980, !noalias !22979, !noundef !37 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.aai, i64 56
  %i.aby = load i64, ptr %i.abx, align 8, !alias.scope !22981, !noalias !22979, !noundef !37
  %i.abz = icmp eq i64 %i.abw, %i.aby
  br i1 %i.abz, label %bb.ep, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ep:                                            ; preds = %bb.eo
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aai, i64 48
  %i.acb = load ptr, ptr %i.aca, align 8, !alias.scope !22981, !noalias !22979, !nonnull !37, !noundef !37
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aag, i64 48
  %i.acd = load ptr, ptr %i.acc, align 8, !alias.scope !22980, !noalias !22979, !nonnull !37, !noundef !37
  %i.ace = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.acd, ptr noundef nonnull %i.acb, i64 noundef %i.abw), !noalias !22984
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXshM_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %1) unnamed_addr #3 !guid !22996 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !89, !noundef !37 ; 3 uses
  %i.b = icmp ne i64 %i.a, 70
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -69
  %i.d = icmp samesign ugt i64 %i.a, 68
  %i.e = select i1 %i.d, i64 %i.c, i64 1          ; 3 uses
  %i.f = load i64, ptr %1, align 8, !range !89, !noundef !37 ; 3 uses
  %i.g = icmp ne i64 %i.f, 70
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -69
  %i.i = icmp samesign ugt i64 %i.f, 68
  %i.j = select i1 %i.i, i64 %i.h, i64 1          ; 2 uses
  %.not = icmp eq i64 %i.e, %i.j
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i8 @llvm.scmp.i8.i64(i64 %i.e, i64 %i.j)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.p = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n) ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.m, label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.t = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #56 ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.t, label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22998)
  %i.x = load i64, ptr %i.v, align 8, !range !94, !alias.scope !22997, !noundef !37
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 68) ; 2 uses
  %i.z = load i64, ptr %i.w, align 8, !range !94, !alias.scope !22998, !noundef !37 ; 2 uses
  %i.aa = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 68) ; 2 uses
  switch i64 %i.y, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.t, %bb.m, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp samesign ult i64 %i.z, 69
  br i1 %i.ab, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ad = tail call i8 @llvm.scmp.i8.i64(i64 %i.y, i64 %i.aa)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.h
  %i.ae = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.w) #56, !inline_history !22989
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !22997, !nonnull !37, !noundef !37
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.ag, align 8, !alias.scope !22997, !noundef !37
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i = load ptr, ptr %i.ah, align 8, !alias.scope !22998, !nonnull !37, !noundef !37
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i = load i64, ptr %i.ai, align 8, !alias.scope !22998, !noundef !37
  %i.aj = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i), !noalias !22999
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23001)
  %i.am = load i64, ptr %i.al, align 8, !range !94, !alias.scope !23000, !noundef !37
  %i.an = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 68) ; 2 uses
  %i.ao = load i64, ptr %i.ak, align 8, !range !94, !alias.scope !23001, !noundef !37 ; 2 uses
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %i.ao, i64 68) ; 2 uses
  switch i64 %i.an, label %default.unreachable [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp samesign ult i64 %i.ao, 69
  br i1 %i.aq, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ar = icmp eq i64 %i.ap, 1
  br i1 %i.ar, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.as = tail call i8 @llvm.scmp.i8.i64(i64 %i.an, i64 %i.ap)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25

bb.q:                                             ; preds = %bb.n
  %i.at = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak) #56, !inline_history !22989
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25

bb.r:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i21 = load ptr, ptr %i.au, align 8, !alias.scope !23000, !nonnull !37, !noundef !37
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i22 = load i64, ptr %i.av, align 8, !alias.scope !23000, !noundef !37
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i23 = load ptr, ptr %i.aw, align 8, !alias.scope !23001, !nonnull !37, !noundef !37
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i24 = load i64, ptr %i.ax, align 8, !alias.scope !23001, !noundef !37
  %i.ay = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i21, i64 noundef %.val1.i22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i23, i64 noundef %.val3.i24), !noalias !23002
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25

_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25: ; preds = %bb.p, %bb.q, %bb.r
  %.sroa.0.0.i20 = phi i8 [ %i.at, %bb.q ], [ %i.as, %bb.p ], [ %i.ay, %bb.r ] ; 2 uses
  %i.az = icmp eq i8 %.sroa.0.0.i20, 0
  br i1 %i.az, label %bb.s, label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.s:                                             ; preds = %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25
  %.val18 = load i8, ptr %i.m, align 8, !range !68, !noundef !37
  %.val19 = load i8, ptr %i.o, align 8, !range !68, !noundef !37
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val18, i8 %.val19)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.l, %bb.k, %bb.j, %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31, %bb.f, %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25, %bb.e, %bb.z, %bb.s, %bb.c
  %.sroa.0.0 = phi i8 [ %i.k, %bb.c ], [ %i.ba, %bb.s ], [ %.sroa.0.0.i20, %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25 ], [ %i.p, %bb.e ], [ %i.br, %bb.z ], [ %.sroa.0.0.i26, %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31 ], [ %i.t, %bb.f ], [ %i.ae, %bb.k ], [ %i.ad, %bb.j ], [ %i.aj, %bb.l ]
  ret i8 %.sroa.0.0

bb.t:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23004)
  %i.bd = load i64, ptr %i.bc, align 8, !range !94, !alias.scope !23003, !noundef !37
  %i.be = tail call i64 @llvm.usub.sat.i64(i64 %i.bd, i64 68) ; 2 uses
  %i.bf = load i64, ptr %i.bb, align 8, !range !94, !alias.scope !23004, !noundef !37 ; 2 uses
  %i.bg = tail call i64 @llvm.usub.sat.i64(i64 %i.bf, i64 68) ; 2 uses
  switch i64 %i.be, label %default.unreachable [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.bh = icmp samesign ult i64 %i.bf, 69
  br i1 %i.bh, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bi = icmp eq i64 %i.bg, 1
  br i1 %i.bi, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.bj = tail call i8 @llvm.scmp.i8.i64(i64 %i.be, i64 %i.bg)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31

bb.x:                                             ; preds = %bb.u
  %i.bk = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bb) #56, !inline_history !22989
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31

bb.y:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val.i27 = load ptr, ptr %i.bl, align 8, !alias.scope !23003, !nonnull !37, !noundef !37
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val1.i28 = load i64, ptr %i.bm, align 8, !alias.scope !23003, !noundef !37
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val2.i29 = load ptr, ptr %i.bn, align 8, !alias.scope !23004, !nonnull !37, !noundef !37
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val3.i30 = load i64, ptr %i.bo, align 8, !alias.scope !23004, !noundef !37
  %i.bp = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i27, i64 noundef %.val1.i28, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i29, i64 noundef %.val3.i30), !noalias !23005
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31

_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31: ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.0.0.i26 = phi i8 [ %i.bk, %bb.x ], [ %i.bj, %bb.w ], [ %i.bp, %bb.y ] ; 2 uses
  %i.bq = icmp eq i8 %.sroa.0.0.i26, 0
  br i1 %i.bq, label %bb.z, label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.z:                                             ; preds = %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31
  %.val = load i8, ptr %i.r, align 8, !range !68, !noundef !37
  %.val17 = load i8, ptr %i.s, align 8, !range !68, !noundef !37
  %i.br = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val, i8 %.val17)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXshW_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #3 !guid !23006 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !40, !noundef !37
  %i.b = icmp ne i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !40, !noundef !37
  %i.d = icmp ne i64 %i.c, -9223372036854775808   ; 2 uses
  %or.cond = and i1 %i.b, %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.neg = sext i1 %i.d to i8
  %i.e = zext i1 %i.b to i8
  %i.f = add nsw i8 %.neg, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsi6_NtCs4lawaffTVVK_9sqlparser3astNtB6_10DropDomainNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 !guid !23007 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !56, !noundef !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !56, !noundef !37
  %i.e = sub nsw i8 %i.b, %i.d                    ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !nonnull !37, !noundef !37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load i64, ptr %i.h, align 8, !noundef !37
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.i, align 8, !nonnull !37, !noundef !37
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.j, align 8, !noundef !37
  %i.k = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val9, i64 noundef %.val10) ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.n = load i8, ptr %i.m, align 1, !range !45, !noundef !37 ; 2 uses
  %.not = icmp eq i8 %i.n, 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.p = load i8, ptr %i.o, align 1, !range !45, !noundef !37 ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7 = icmp eq i8 %i.p, 2
  %i.q = sub nsw i8 %i.n, %i.p
  %spec.select = select i1 %.not7, i8 1, i8 %i.q
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not6 = icmp ne i8 %i.p, 2
  %. = sext i1 %.not6 to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.k, %bb.b ], [ %spec.select, %bb.d ], [ %i.e, %bb.a ], [ %., %bb.e ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsiK_NtCs4lawaffTVVK_9sqlparser3astNtB6_20FunctionArgumentListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !23025 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !45, !noundef !37 ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !45, !noundef !37 ; 2 uses
  %.not8 = icmp eq i8 %i.d, 2                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not8, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.d, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c, %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !37, !noundef !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !37 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !37, !noundef !37
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !37 ; 3 uses
  %.sroa.0.0.i18 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 13890620537431892) %i.l, i64 range(i64 0, 13890620537431892) %i.h) ; 2 uses
  %exitcond.not67 = icmp eq i64 %.sroa.0.0.i18, 0
  br i1 %exitcond.not67, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.m = add nuw i64 %.sroa.01.0.i68, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %.sroa.0.0.i18
  br i1 %exitcond.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.01.0.i68 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw [664 x i8], ptr %i.f, i64 %.sroa.01.0.i68
  %i.o = getelementptr inbounds nuw [664 x i8], ptr %i.j, i64 %.sroa.01.0.i68
  %i.p = tail call fastcc noundef i8 @_RNvXshM_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %i.o) #56, !inline_history !20 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.d
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.h, i64 %i.l)
  %i.s = icmp eq i64 %i.h, %i.l
  br i1 %i.s, label %bb.g, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.b
  %i.t = sub nsw i8 %i.b, %i.d                    ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !37, !noundef !37
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8, !noundef !37 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !37, !noundef !37
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !37 ; 2 uses
  %.sroa.0.0.i20 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 27450512014448738) %i.ac, i64 range(i64 0, 27450512014448738) %i.y) ; 2 uses
  %exitcond48.not72 = icmp eq i64 %.sroa.0.0.i20, 0
  br i1 %exitcond48.not72, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge, label %.lr.ph75

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit
  %exitcond48.not = icmp eq i64 %i.ae, %.sroa.0.0.i20
  br i1 %exitcond48.not, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge, label %.lr.ph75

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.g
  %i.ad = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.y, i64 %i.ac)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph75:                                         ; preds = %bb.g, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.01.0.i1373 = phi i64 [ %i.ae, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread ], [ 0, %bb.g ] ; 3 uses
  %i.ae = add nuw i64 %.sroa.01.0.i1373, 1        ; 2 uses
  %i.af = getelementptr inbounds nuw [336 x i8], ptr %i.w, i64 %.sroa.01.0.i1373 ; 13 uses
  %i.ag = getelementptr inbounds nuw [336 x i8], ptr %i.aa, i64 %.sroa.01.0.i1373 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23029)
  %i.ah = load i64, ptr %i.af, align 8, !range !122, !alias.scope !23030, !noundef !37 ; 3 uses
  %i.ai = icmp ne i64 %i.ah, 73
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nsw i64 %i.ah, -69
  %i.ak = icmp samesign ugt i64 %i.ah, 68
  %i.al = select i1 %i.ak, i64 %i.aj, i64 4       ; 3 uses
  %i.am = load i64, ptr %i.ag, align 8, !range !122, !alias.scope !23031, !noundef !37 ; 3 uses
  %i.an = icmp ne i64 %i.am, 73
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nsw i64 %i.am, -69
end_hunk_0
