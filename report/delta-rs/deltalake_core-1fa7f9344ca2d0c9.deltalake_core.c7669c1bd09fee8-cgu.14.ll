Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.14?download=true
inline.NumInlined: 8054
inline.NumDeleted: 3226
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXss1_NtCs4lawaffTVVK_9sqlparser3astNtB6_12OutputClauseNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %.val9.i = load i64, ptr %i.ce, align 8, !alias.scope !17388, !noalias !17385, !noundef !12
  %i.cf = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i7, i64 noundef %.val7.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !17390
  br label %_RNvXsei_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsei_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20, %._crit_edge, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.v, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2O_s_0ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  %.sroa.0.0 = phi i8 [ %i.bz, %bb.y ], [ %i.f, %bb.d ], [ %.sroa.0.0.i.i18, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.bd, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2O_s_0ECs14kWLkQVSKO_14deltalake_core.exit ], [ %., %bb.v ], [ 1, %bb.u ], [ %i.cf, %bb.z ], [ %i.bn, %bb.w ], [ %i.bt, %bb.x ], [ %i.co, %._crit_edge ], [ %.sroa.0.0.i.i, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit ]
  ret i8 %.sroa.0.0

bb.aa:                                            ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !12, !noundef !12
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !12 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !12, !noundef !12
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !12 ; 2 uses
  %.sroa.0.0.i21 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 12397005425880076) %i.cn, i64 range(i64 0, 12397005425880076) %i.cj) ; 2 uses
  %.not43 = icmp eq i64 %.sroa.0.0.i21, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph41

._crit_edge:                                      ; preds = %.backedge, %bb.aa
  %i.co = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.cj, i64 %i.cn)
  br label %_RNvXsei_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

.lr.ph41:                                         ; preds = %bb.aa, %.backedge
  %.sroa.01.0.i1040 = phi i64 [ %i.cp, %.backedge ], [ 0, %bb.aa ] ; 3 uses
  %i.cp = add nuw i64 %.sroa.01.0.i1040, 1        ; 2 uses
  %i.cq = getelementptr inbounds nuw [744 x i8], ptr %i.ch, i64 %.sroa.01.0.i1040 ; 9 uses
  %i.cr = getelementptr inbounds nuw [744 x i8], ptr %i.cl, i64 %.sroa.01.0.i1040 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17399)
  %i.cs = load i64, ptr %i.cq, align 8, !range !5504, !alias.scope !17401, !noalias !17402, !noundef !12 ; 4 uses
  %i.ct = icmp ne i64 %i.cs, 72
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = add nsw i64 %i.cs, -70
  %i.cv = icmp samesign ugt i64 %i.cs, 69
  %i.cw = select i1 %i.cv, i64 %i.cu, i64 2       ; 3 uses
  %i.cx = load i64, ptr %i.cr, align 8, !range !5504, !alias.scope !17402, !noalias !17401, !noundef !12 ; 4 uses
  %i.cy = icmp ne i64 %i.cx, 72
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = add nsw i64 %i.cx, -70
  %i.da = icmp samesign ugt i64 %i.cx, 69
  %i.db = select i1 %i.da, i64 %i.cz, i64 2       ; 2 uses
  %.not.i.i17 = icmp eq i64 %i.cw, %i.db
  br i1 %.not.i.i17, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph41
  switch i64 %i.cw, label %bb.ad [
    i64 0, label %bb.ae
    i64 1, label %bb.af
    i64 2, label %bb.ag
    i64 3, label %bb.am
  ]

bb.ac:                                            ; preds = %.lr.ph41
  %i.dc = tail call i8 @llvm.scmp.i8.i64(i64 %i.cw, i64 %i.db)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.df = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.de) #55, !inline_history !14089
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.af:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.di = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dh) #55, !inline_history !14089 ; 2 uses
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.an, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.ag:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17406)
  %i.dk = icmp ne i64 %i.cs, 69                   ; 2 uses
  %i.dl = zext i1 %i.dk to i8
  %i.dm = icmp ne i64 %i.cx, 69                   ; 3 uses
  %.neg.i24 = sext i1 %i.dm to i8
  br i1 %i.dk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.dm, label %bb.al, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.dm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dn = add nsw i8 %.neg.i24, %i.dl
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30

bb.ak:                                            ; preds = %bb.ai
  %i.do = getelementptr i8, ptr %i.cq, i64 16
  %.val.i25 = load ptr, ptr %i.do, align 8, !alias.scope !17403, !noalias !17406, !nonnull !12, !noundef !12
  %i.dp = getelementptr i8, ptr %i.cq, i64 24
  %.val1.i26 = load i64, ptr %i.dp, align 8, !alias.scope !17403, !noalias !17406, !noundef !12
  %i.dq = getelementptr i8, ptr %i.cr, i64 16
  %.val2.i27 = load ptr, ptr %i.dq, align 8, !alias.scope !17406, !noalias !17403, !nonnull !12, !noundef !12
  %i.dr = getelementptr i8, ptr %i.cr, i64 24
  %.val3.i28 = load i64, ptr %i.dr, align 8, !alias.scope !17406, !noalias !17403, !noundef !12
  %i.ds = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i25, i64 noundef %.val1.i26, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i27, i64 noundef %.val3.i28), !noalias !17408, !inline_history !14096
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30

bb.al:                                            ; preds = %bb.ah
  %i.dt = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %i.cr) #55, !inline_history !14096
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30

_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30: ; preds = %bb.aj, %bb.ak, %bb.al
  %.sroa.0.0.i29 = phi i8 [ %i.dt, %bb.al ], [ %i.dn, %bb.aj ], [ %i.ds, %bb.ak ] ; 2 uses
  %i.du = icmp eq i8 %.sroa.0.0.i29, 0
  br i1 %i.du, label %bb.ao, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.am:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dx = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.dw) #55, !inline_history !14089
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.an:                                            ; preds = %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cr, i64 336
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cq, i64 336
  %i.ea = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dy), !inline_history !14089
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.ao:                                            ; preds = %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cr, i64 328
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cq, i64 328
  %i.ed = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.eb) #55, !inline_history !14089
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ac, %bb.ae, %bb.af, %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30, %bb.am, %bb.an, %bb.ao
  %.sroa.0.0.i.i18 = phi i8 [ %i.dc, %bb.ac ], [ %i.df, %bb.ae ], [ %i.ea, %bb.an ], [ %i.di, %bb.af ], [ %i.ed, %bb.ao ], [ %.sroa.0.0.i29, %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30 ], [ %i.dx, %bb.am ] ; 2 uses
  %cond = icmp eq i8 %.sroa.0.0.i.i18, 0
  br i1 %cond, label %.backedge, label %_RNvXsei_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

.backedge:                                        ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20
  %exitcond47.not = icmp eq i64 %i.cp, %.sroa.0.0.i21
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph41
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 1, 24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.b, label %bb.c

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i, %bb.f, %.lr.ph.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader, %bb.e, %.lr.ph.split.us.i.i, %bb.u, %bb.c, %bb.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.c ], [ %i.m, %bb.e ], [ %i.ea, %bb.w ], [ %i.dy, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.u ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader ], [ 0, %bb.f ], [ 1, %.lr.ph.i ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.d, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %1, %3
  br i1 %i.g, label %bb.w, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %0, align 1, !noundef !12   ; 2 uses
  %i.i = icmp samesign ult i64 %3, 16
  br i1 %i.i, label %.lr.ph.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = icmp eq i64 %i.k, 1
  %i.m = zext i1 %i.l to i8
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.sroa.01.05.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.i
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !17409, !noundef !12
  %i.p = icmp eq i8 %i.o, %i.h
  br i1 %i.p, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %3
  br i1 %exitcond.not.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17415)
  %i.r = load i8, ptr %0, align 1, !alias.scope !17412, !noalias !17415, !noundef !12 ; 3 uses
  %i.s = add nsw i64 %1, -1                       ; 2 uses
  %i.t = icmp eq i64 %1, 2
  br i1 %i.t, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 24) %1, i64 4) ; 2 uses
  %4 = icmp samesign ult i64 %i.u, %1
  br i1 %4, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.v = icmp ult i64 %i.u, %i.x
  br i1 %i.v, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %i.w = phi i64 [ %i.x, %bb.i ], [ %1, %bb.h ]
  %i.x = add nsw i64 %i.w, -1                     ; 6 uses
  %i.y = icmp ult i64 %i.x, %1
  br i1 %i.y, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef range(i64 2, 24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #56, !noalias !17417
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !17412, !noalias !17425, !noundef !12 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.aa, %i.r
  br i1 %.not.i.not.i.i, label %bb.i, label %bb.k

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ab = add nuw nsw i64 %1, 15
  %i.ac = icmp ult i64 %3, %i.ab
  br i1 %i.ac, label %.lr.ph.split.us.i.i, label %bb.l

.thread.i:                                        ; preds = %bb.g
  %i.ad = icmp ult i64 %3, 17
  br i1 %i.ad, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.ae = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !17412, !noalias !17415
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

.lr.ph.split.us.i.i:                              ; preds = %bb.k, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 24) %1), !alias.scope !17426, !noalias !17427
  %i.ai = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.ai, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.aj = add i64 %3, -1                          ; 2 uses
  %.not28.i.i45 = icmp ugt i64 %1, %i.aj
  br i1 %.not28.i.i45, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i
  %i.ak = phi i64 [ %i.an, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i ], [ %i.aj, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader ]
  %.pn.i46 = phi ptr [ %i.al, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.pn.i46, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.al, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 24) %1), !alias.scope !17426, !noalias !17427
  %i.am = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.am, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.an = add i64 %i.ak, -1                       ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.an
  br i1 %.not28.i.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.m:                                             ; preds = %bb.l, %.thread93.i
  %i.ao = phi i8 [ %.pre.i, %.thread93.i ], [ %i.aa, %bb.l ]
  %i.ap = phi <16 x i8> [ %i.af, %.thread93.i ], [ %i.ah, %bb.l ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %i.x, %bb.l ] ; 6 uses
  %i.aq = insertelement <16 x i8> poison, i8 %i.ao, i64 0
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17426
  store ptr %2, ptr %i.a, align 8, !noalias !17426
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.at, align 8, !noalias !17426
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.as, ptr %i.au, align 8, !noalias !17426
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.s, ptr %i.av, align 8, !noalias !17426
  %i.aw = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i5 = icmp ult i64 %i.aw, %3
  br i1 %.not.i5, label %.lr.ph.i8, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.q, %bb.m
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.m ], [ %.sroa.014.2.3.i, %bb.q ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %i.cs, %bb.q ] ; 2 uses
  %i.ax = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.ay = add i64 %.sroa.06.0.lcssa.i, %i.ax
  %i.az = icmp uge i64 %i.ay, %3
  %i.ba = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond3105.i, label %._crit_edge.i7, label %.lr.ph107.i

.lr.ph.i8:                                        ; preds = %bb.m, %bb.q
  %.sroa.06.0103.i = phi i64 [ %i.cs, %bb.q ], [ 0, %bb.m ] ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !17415, !noalias !17431
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.bc, align 1, !alias.scope !17415, !noalias !17431
  %i.bd = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ap
  %i.be = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.ar
  %i.bf = and <16 x i1> %i.bd, %i.be
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bh, align 1, !alias.scope !17415, !noalias !17431
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bi, align 1, !alias.scope !17415, !noalias !17431
  %i.bj = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ap
  %i.bk = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.ar
  %i.bl = and <16 x i1> %i.bj, %i.bk
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !17415, !noalias !17431
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bo, align 1, !alias.scope !17415, !noalias !17431
  %i.bp = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ap
  %i.bq = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.ar
  %i.br = and <16 x i1> %i.bp, %i.bq
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bt, align 1, !alias.scope !17415, !noalias !17431
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bu, align 1, !alias.scope !17415, !noalias !17431
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ap
  %i.bw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.ar
  %i.bx = and <16 x i1> %i.bv, %i.bw
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %i.bz = icmp eq i16 %i.bg, 0
  br i1 %i.bz, label %.preheader96.1.i, label %bb.r

.preheader96.1.i:                                 ; preds = %bb.r, %.lr.ph.i8
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i8 ], [ %i.cx, %bb.r ] ; 3 uses
  %i.ca = icmp eq i16 %i.bm, 0
  br i1 %i.ca, label %.preheader96.2.i, label %bb.n

bb.n:                                             ; preds = %.preheader96.1.i
  %i.cb = or disjoint i64 %.sroa.06.0103.i, 16
  %i.cc = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cd = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cb, i16 noundef %i.bm, i1 noundef zeroext %i.cc) #55
  %i.ce = zext i1 %i.cd to i8
  %i.cf = or i8 %.sroa.014.2.i, %i.ce
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.n, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.cf, %bb.n ] ; 3 uses
  %i.cg = icmp eq i16 %i.bs, 0
  br i1 %i.cg, label %.preheader96.3.i, label %bb.o

bb.o:                                             ; preds = %.preheader96.2.i
  %i.ch = or disjoint i64 %.sroa.06.0103.i, 32
  %i.ci = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cj = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ch, i16 noundef %i.bs, i1 noundef zeroext %i.ci) #55
  %i.ck = zext i1 %i.cj to i8
  %i.cl = or i8 %.sroa.014.2.1.i, %i.ck
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.o, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.cl, %bb.o ] ; 3 uses
  %i.cm = icmp eq i16 %i.by, 0
  br i1 %i.cm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader96.3.i
  %i.cn = or disjoint i64 %.sroa.06.0103.i, 48
  %i.co = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cp = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cn, i16 noundef %i.by, i1 noundef zeroext %i.co) #55
  %i.cq = zext i1 %i.cp to i8
  %i.cr = or i8 %.sroa.014.2.2.i, %i.cq
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.cr, %bb.p ] ; 2 uses
  %i.cs = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.ct = add i64 %i.cs, %i.aw
  %i.cu = icmp uge i64 %i.ct, %3
  %i.cv = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond.i, label %.preheader.i6, label %.lr.ph.i8

bb.r:                                             ; preds = %.lr.ph.i8
  %i.cw = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.bg, i1 noundef zeroext false) #55
  %i.cx = zext i1 %i.cw to i8
  br label %.preheader96.1.i

._crit_edge.i7:                                   ; preds = %bb.s, %.preheader.i6
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i6 ], [ %.sroa.014.4.i, %bb.s ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ba, %.preheader.i6 ], [ %i.dr, %bb.s ]
  %i.cy = sub i64 %3, %i.s
  %i.cz = add i64 %i.cy, -16                      ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.cz ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.da, align 1, !alias.scope !17415, !noalias !17434
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.db, align 1, !alias.scope !17415, !noalias !17434
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.ap
  %i.dd = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.ar
  %i.de = and <16 x i1> %i.dc, %i.dd
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %bb.u, label %bb.v

.lr.ph107.i:                                      ; preds = %.preheader.i6, %bb.s
  %.sroa.06.1106.i = phi i64 [ %i.do, %bb.s ], [ %.sroa.06.0.lcssa.i, %.preheader.i6 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1106.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.dh, align 1, !alias.scope !17415, !noalias !17437
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.di, align 1, !alias.scope !17415, !noalias !17437
  %i.dj = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.ap
  %i.dk = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.ar
  %i.dl = and <16 x i1> %i.dj, %i.dk
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %i.dn = icmp eq i16 %i.dm, 0
  br i1 %i.dn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %.lr.ph107.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph107.i ], [ %i.dt, %bb.t ] ; 2 uses
  %i.do = add i64 %.sroa.06.1106.i, 16            ; 2 uses
  %i.dp = add i64 %i.do, %i.ax
  %i.dq = icmp uge i64 %i.dp, %3
  %i.dr = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dq, %i.dr
  br i1 %or.cond3.i, label %._crit_edge.i7, label %.lr.ph107.i

bb.t:                                             ; preds = %.lr.ph107.i
  %i.ds = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i, i16 noundef %i.dm, i1 noundef zeroext false) #55
  %i.dt = zext i1 %i.ds to i8
  br label %bb.s

bb.u:                                             ; preds = %bb.v, %._crit_edge.i7
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i7 ], [ %i.dw, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17426
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.v:                                             ; preds = %._crit_edge.i7
  %i.du = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cz, i16 noundef %i.df, i1 noundef zeroext %.lcssa.i) #55
  %i.dv = zext i1 %i.du to i8
  %i.dw = or i8 %.sroa.014.3.lcssa.i, %i.dv
  br label %bb.u

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b) #55
  %i.dx = load i64, ptr %i.c, align 8, !range !49, !noundef !12
  %i.dy = trunc nuw nsw i64 %i.dx to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.w:                                             ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dz = icmp eq i32 %bcmp, 0
  %i.ea = zext i1 %i.dz to i8
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsuH_NtCs4lawaffTVVK_9sqlparser3astNtB6_15MacroDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5008, !noundef !12
  %i.b = icmp eq i64 %i.a, 69                     ; 2 uses
  %i.c = zext i1 %i.b to i8
  %i.d = load i64, ptr %1, align 8, !range !5008, !noundef !12
  %i.e = icmp eq i64 %i.d, 69                     ; 3 uses
  %.neg = sext i1 %i.e to i8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add nsw i8 %.neg, %i.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #55
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %i.l, %bb.g ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret i8 %.sroa.0.0

bb.g:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %i.l = tail call fastcc noundef i8 @_RNvXs1w_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.k) #55
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsuR_NtCs4lawaffTVVK_9sqlparser3astNtB6_10SchemaNameNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !157, !noundef !12 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 2          ; 3 uses
  %i.e = load i64, ptr %1, align 8, !range !157, !noundef !12 ; 2 uses
  %i.f = xor i64 %i.e, -9223372036854775808
  %i.g = icmp slt i64 %i.e, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 2          ; 2 uses
  %.not = icmp eq i64 %i.d, %i.h
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.d, i64 %i.h)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9 = load i64, ptr %i.k, align 8, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load i64, ptr %i.m, align 8, !noundef !12
  %i.n = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val8, i64 noundef %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val10, i64 noundef %.val11)
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.p)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.r, align 8, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.s, align 8, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.u, align 8, !noundef !12
  %i.v = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val6, i64 noundef %.val7) ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i, %bb.f, %bb.e, %bb.c
  %.sroa.0.0 = phi i8 [ %i.i, %bb.c ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ %i.z, %bb.i ], [ %i.v, %bb.g ]
  ret i8 %.sroa.0.0

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.x)
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsud_NtCs4lawaffTVVK_9sqlparser3astNtB6_18CreateFunctionBodyNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5879, !noundef !12 ; 2 uses
  %i.b = add nsw i64 %i.a, -70
  %i.c = icmp samesign ugt i64 %i.a, 69
  %i.d = select i1 %i.c, i64 %i.b, i64 5          ; 3 uses
  %i.e = load i64, ptr %1, align 8, !range !5879, !noundef !12 ; 2 uses
  %i.f = add nsw i64 %i.e, -70
  %i.g = icmp samesign ugt i64 %i.e, 69
  %i.h = select i1 %i.g, i64 %i.f, i64 5          ; 2 uses
  %.not = icmp eq i64 %i.d, %i.h
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.i
    i64 4, label %bb.j
    i64 5, label %bb.k
  ]

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.d, i64 %i.h)
  br label %_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.k) #55
  br label %_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.n) #55
  br label %_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17443)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !17440, !noalias !17443, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !17440, !noalias !17443, !noundef !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !17443, !noalias !17440, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !17443, !noalias !17440, !noundef !12 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 3431314001806093) %i.w, i64 range(i64 0, 3431314001806093) %i.s) ; 2 uses
  %exitcond.not7 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not7, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.sroa.01.0.i8, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %.sroa.0.0.i.i
  br i1 %exitcond.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i8 = phi i64 [ %i.x, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.y = getelementptr inbounds nuw [2688 x i8], ptr %i.q, i64 %.sroa.01.0.i8
  %i.z = getelementptr inbounds nuw [2688 x i8], ptr %i.u, i64 %.sroa.01.0.i8
  %i.aa = tail call fastcc noundef i8 @_RNvXsc8_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.z) #55, !noalias !17445, !inline_history !16309 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h, %bb.g
  %i.ac = tail call noundef i8 @llvm.ucmp.i8.i64(i64 %i.s, i64 %i.w)
  br label %_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

end_hunk_0
