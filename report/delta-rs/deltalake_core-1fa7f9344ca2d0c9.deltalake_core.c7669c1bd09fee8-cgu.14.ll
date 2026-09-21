Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.14?download=true
inline.NumInlined: 8054
inline.NumDeleted: 3226
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXss1_NtCs4lawaffTVVK_9sqlparser3astNtB6_12OutputClauseNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %.val.i7 = load ptr, ptr %i.cb, align 8, !alias.scope !17397, !noalias !17398, !nonnull !29, !noundef !29
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7.i = load i64, ptr %i.cc, align 8, !alias.scope !17397, !noalias !17398, !noundef !29
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8.i = load ptr, ptr %i.cd, align 8, !alias.scope !17398, !noalias !17397, !nonnull !29, !noundef !29
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val9.i = load i64, ptr %i.ce, align 8, !alias.scope !17398, !noalias !17397, !noundef !29
  %i.cf = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i7, i64 noundef %.val7.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !17399
  br label %_RNvXsei_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsei_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20, %._crit_edge, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.v, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2O_s_0ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  %.sroa.0.0 = phi i8 [ %i.bz, %bb.y ], [ %i.f, %bb.d ], [ %.sroa.0.0.i.i18, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.bd, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2O_s_0ECs14kWLkQVSKO_14deltalake_core.exit ], [ %., %bb.v ], [ 1, %bb.u ], [ %i.cf, %bb.z ], [ %i.bn, %bb.w ], [ %i.bt, %bb.x ], [ %i.co, %._crit_edge ], [ %.sroa.0.0.i.i, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit ]
  ret i8 %.sroa.0.0

bb.aa:                                            ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !29, !noundef !29
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !29 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !29, !noundef !29
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !29 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17403)
  %i.cs = load i64, ptr %i.cq, align 8, !range !102, !alias.scope !17404, !noalias !17405, !noundef !29 ; 4 uses
  %i.ct = icmp ne i64 %i.cs, 72
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = add nsw i64 %i.cs, -70
  %i.cv = icmp samesign ugt i64 %i.cs, 69
  %i.cw = select i1 %i.cv, i64 %i.cu, i64 2       ; 3 uses
  %i.cx = load i64, ptr %i.cr, align 8, !range !102, !alias.scope !17405, !noalias !17404, !noundef !29 ; 4 uses
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
  %i.df = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.de) #55, !inline_history !8
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.af:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.di = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dh) #55, !inline_history !8 ; 2 uses
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.an, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.ag:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17407)
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
  %.val.i25 = load ptr, ptr %i.do, align 8, !alias.scope !17406, !noalias !17407, !nonnull !29, !noundef !29
  %i.dp = getelementptr i8, ptr %i.cq, i64 24
  %.val1.i26 = load i64, ptr %i.dp, align 8, !alias.scope !17406, !noalias !17407, !noundef !29
  %i.dq = getelementptr i8, ptr %i.cr, i64 16
  %.val2.i27 = load ptr, ptr %i.dq, align 8, !alias.scope !17407, !noalias !17406, !nonnull !29, !noundef !29
  %i.dr = getelementptr i8, ptr %i.cr, i64 24
  %.val3.i28 = load i64, ptr %i.dr, align 8, !alias.scope !17407, !noalias !17406, !noundef !29
  %i.ds = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i25, i64 noundef %.val1.i26, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i27, i64 noundef %.val3.i28), !noalias !17408, !inline_history !9
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30

bb.al:                                            ; preds = %bb.ah
  %i.dt = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %i.cr) #55, !inline_history !9
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30

_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30: ; preds = %bb.aj, %bb.ak, %bb.al
  %.sroa.0.0.i29 = phi i8 [ %i.dt, %bb.al ], [ %i.dn, %bb.aj ], [ %i.ds, %bb.ak ] ; 2 uses
  %i.du = icmp eq i8 %.sroa.0.0.i29, 0
  br i1 %i.du, label %bb.ao, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.am:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dx = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.dw) #55, !inline_history !8
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.an:                                            ; preds = %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cr, i64 336
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cq, i64 336
  %i.ea = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dy), !inline_history !8
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit20

bb.ao:                                            ; preds = %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cr, i64 328
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cq, i64 328
  %i.ed = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.eb) #55, !inline_history !8
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
  %.sroa.0.0 = phi i8 [ 0, %bb.c ], [ %i.m, %bb.e ], [ %i.dy, %bb.w ], [ %i.dw, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.u ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader ], [ 0, %bb.f ], [ 1, %.lr.ph.i ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.d, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %1, %3
  br i1 %i.g, label %bb.w, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %0, align 1, !noundef !29   ; 2 uses
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
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !17430, !noundef !29
  %i.p = icmp eq i8 %i.o, %i.h
  br i1 %i.p, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %3
  br i1 %exitcond.not.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17432)
  %i.r = load i8, ptr %0, align 1, !alias.scope !17431, !noalias !17432, !noundef !29 ; 6 uses
  %i.s = add nsw i64 %1, -1                       ; 2 uses
  %i.t = icmp eq i64 %1, 2
  br i1 %i.t, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 24) %1, i64 4) ; 4 uses
  %i.v = icmp samesign ult i64 %i.u, %1
  br i1 %i.v, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

4:                                                ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %5 = icmp ult i64 %i.u, %18
  br i1 %5, label %.lr.ph.1, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %4
  %6 = add nsw i64 %1, -2                         ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !alias.scope !17431, !noalias !17433, !noundef !29 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %8, %i.r
  br i1 %.not.i.not.i.i.1, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.1
  %i.w = icmp ult i64 %i.u, %6
  br i1 %i.w, label %.lr.ph.2, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.i
  %9 = add nsw i64 %1, -3                         ; 4 uses
  %10 = icmp samesign ugt i64 %1, 2
  br i1 %10, label %.lr.ph.a, label %19

.lr.ph.a:                                         ; preds = %.lr.ph.2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %12 = load i8, ptr %11, align 1, !alias.scope !17431, !noalias !17433, !noundef !29 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %12, %i.r
  br i1 %.not.i.not.i.i.2, label %13, label %bb.k

13:                                               ; preds = %.lr.ph.a
  %14 = icmp ult i64 %i.u, %9
  br i1 %14, label %.lr.ph.3, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %13
  %15 = add nsw i64 %1, -4                        ; 3 uses
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %19, label %bb.j

bb.j:                                             ; preds = %.lr.ph.3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !alias.scope !17431, !noalias !17433, !noundef !29 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %17, %i.r
  br i1 %.not.i.not.i.i.3, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit, label %bb.k

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h
  %18 = add nsw i64 %1, -1                        ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %18
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !17431, !noalias !17433, !noundef !29 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.y, %i.r
  br i1 %.not.i.not.i.i, label %4, label %bb.k

19:                                               ; preds = %.lr.ph.3, %.lr.ph.2
  %.lcssa51 = phi i64 [ %15, %.lr.ph.3 ], [ %9, %.lr.ph.2 ]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.lcssa51, i64 noundef range(i64 2, 24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #56, !noalias !17434
  unreachable

bb.k:                                             ; preds = %bb.j, %.lr.ph.a, %.lr.ph.1, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.lcssa54 = phi i8 [ %i.y, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %8, %.lr.ph.1 ], [ %12, %.lr.ph.a ], [ %17, %bb.j ]
  %.lcssa52 = phi i64 [ %18, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %6, %.lr.ph.1 ], [ %9, %.lr.ph.a ], [ %15, %bb.j ]
  %i.z = add nuw nsw i64 %1, 15
  %i.aa = icmp ult i64 %3, %i.z
  br i1 %i.aa, label %.lr.ph.split.us.i.i, label %bb.l

.thread.i:                                        ; preds = %bb.g
  %i.ab = icmp ult i64 %3, 17
  br i1 %i.ab, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.ac = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !17431, !noalias !17432
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

.lr.ph.split.us.i.i:                              ; preds = %bb.k, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 24) %1), !alias.scope !17435, !noalias !17436
  %i.ag = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.ag, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ah = add i64 %3, -1                          ; 2 uses
  %.not28.i.i45 = icmp ugt i64 %1, %i.ah
  br i1 %.not28.i.i45, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i
  %i.ai = phi i64 [ %i.al, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i ], [ %i.ah, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader ]
  %.pn.i46 = phi ptr [ %i.aj, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn.i46, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aj, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 24) %1), !alias.scope !17435, !noalias !17436
  %i.ak = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ak, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.al = add i64 %i.ai, -1                       ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.al
  br i1 %.not28.i.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.m:                                             ; preds = %bb.l, %.thread93.i
  %i.am = phi i8 [ %.pre.i, %.thread93.i ], [ %.lcssa54, %bb.l ]
  %i.an = phi <16 x i8> [ %i.ad, %.thread93.i ], [ %i.af, %bb.l ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %.lcssa52, %bb.l ] ; 6 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17435
  store ptr %2, ptr %i.a, align 8, !noalias !17435
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ar, align 8, !noalias !17435
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !noalias !17435
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.s, ptr %i.at, align 8, !noalias !17435
  %i.au = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i5 = icmp ult i64 %i.au, %3
  br i1 %.not.i5, label %.lr.ph.i8, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.q, %bb.m
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.m ], [ %.sroa.014.2.3.i, %bb.q ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %i.cq, %bb.q ] ; 2 uses
  %i.av = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.aw = add i64 %.sroa.06.0.lcssa.i, %i.av
  %i.ax = icmp uge i64 %i.aw, %3
  %i.ay = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond3105.i, label %._crit_edge.i7, label %.lr.ph107.i

.lr.ph.i8:                                        ; preds = %bb.m, %bb.q
  %.sroa.06.0103.i = phi i64 [ %i.cq, %bb.q ], [ 0, %bb.m ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !17432, !noalias !17437
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !17432, !noalias !17437
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.an
  %i.bc = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.ap
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !17432, !noalias !17437
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !17432, !noalias !17437
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.an
  %i.bi = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.ap
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !17432, !noalias !17437
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !17432, !noalias !17437
  %i.bn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.an
  %i.bo = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.ap
  %i.bp = and <16 x i1> %i.bn, %i.bo
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !17432, !noalias !17437
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bs, align 1, !alias.scope !17432, !noalias !17437
  %i.bt = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.an
  %i.bu = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.ap
  %i.bv = and <16 x i1> %i.bt, %i.bu
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %i.bx = icmp eq i16 %i.be, 0
  br i1 %i.bx, label %.preheader96.1.i, label %bb.r

.preheader96.1.i:                                 ; preds = %bb.r, %.lr.ph.i8
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i8 ], [ %i.cv, %bb.r ] ; 3 uses
  %i.by = icmp eq i16 %i.bk, 0
  br i1 %i.by, label %.preheader96.2.i, label %bb.n

bb.n:                                             ; preds = %.preheader96.1.i
  %i.bz = or disjoint i64 %.sroa.06.0103.i, 16
  %i.ca = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.bk, i1 noundef zeroext %i.ca) #55
  %i.cc = zext i1 %i.cb to i8
  %i.cd = or i8 %.sroa.014.2.i, %i.cc
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.n, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.cd, %bb.n ] ; 3 uses
  %i.ce = icmp eq i16 %i.bq, 0
  br i1 %i.ce, label %.preheader96.3.i, label %bb.o

bb.o:                                             ; preds = %.preheader96.2.i
  %i.cf = or disjoint i64 %.sroa.06.0103.i, 32
  %i.cg = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.ch = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cf, i16 noundef %i.bq, i1 noundef zeroext %i.cg) #55
  %i.ci = zext i1 %i.ch to i8
  %i.cj = or i8 %.sroa.014.2.1.i, %i.ci
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.o, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.cj, %bb.o ] ; 3 uses
  %i.ck = icmp eq i16 %i.bw, 0
  br i1 %i.ck, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader96.3.i
  %i.cl = or disjoint i64 %.sroa.06.0103.i, 48
  %i.cm = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cl, i16 noundef %i.bw, i1 noundef zeroext %i.cm) #55
  %i.co = zext i1 %i.cn to i8
  %i.cp = or i8 %.sroa.014.2.2.i, %i.co
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.cp, %bb.p ] ; 2 uses
  %i.cq = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.cr = add i64 %i.cq, %i.au
  %i.cs = icmp uge i64 %i.cr, %3
  %i.ct = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i, label %.preheader.i6, label %.lr.ph.i8

bb.r:                                             ; preds = %.lr.ph.i8
  %i.cu = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.be, i1 noundef zeroext false) #55
  %i.cv = zext i1 %i.cu to i8
  br label %.preheader96.1.i

._crit_edge.i7:                                   ; preds = %bb.s, %.preheader.i6
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i6 ], [ %.sroa.014.4.i, %bb.s ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ay, %.preheader.i6 ], [ %i.dp, %bb.s ]
  %i.cw = sub i64 %3, %i.s
  %i.cx = add i64 %i.cw, -16                      ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.cy, align 1, !alias.scope !17432, !noalias !17438
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.cz, align 1, !alias.scope !17432, !noalias !17438
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.an
  %i.db = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.ap
  %i.dc = and <16 x i1> %i.da, %i.db
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %bb.u, label %bb.v

.lr.ph107.i:                                      ; preds = %.preheader.i6, %bb.s
  %.sroa.06.1106.i = phi i64 [ %i.dm, %bb.s ], [ %.sroa.06.0.lcssa.i, %.preheader.i6 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1106.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.df, align 1, !alias.scope !17432, !noalias !17439
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.dg, align 1, !alias.scope !17432, !noalias !17439
  %i.dh = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.an
  %i.di = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.ap
  %i.dj = and <16 x i1> %i.dh, %i.di
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %.lr.ph107.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph107.i ], [ %i.dr, %bb.t ] ; 2 uses
  %i.dm = add i64 %.sroa.06.1106.i, 16            ; 2 uses
  %i.dn = add i64 %i.dm, %i.av
  %i.do = icmp uge i64 %i.dn, %3
  %i.dp = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.do, %i.dp
  br i1 %or.cond3.i, label %._crit_edge.i7, label %.lr.ph107.i

bb.t:                                             ; preds = %.lr.ph107.i
  %i.dq = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i, i16 noundef %i.dk, i1 noundef zeroext false) #55
  %i.dr = zext i1 %i.dq to i8
  br label %bb.s

bb.u:                                             ; preds = %bb.v, %._crit_edge.i7
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i7 ], [ %i.du, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17435
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.v:                                             ; preds = %._crit_edge.i7
  %i.ds = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cx, i16 noundef %i.dd, i1 noundef zeroext %.lcssa.i) #55
  %i.dt = zext i1 %i.ds to i8
  %i.du = or i8 %.sroa.014.3.lcssa.i, %i.dt
  br label %bb.u

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit: ; preds = %4, %bb.i, %13, %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b) #55
  %i.dv = load i64, ptr %i.c, align 8, !range !30, !noundef !29
  %i.dw = trunc nuw nsw i64 %i.dv to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.w:                                             ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dx = icmp eq i32 %bcmp, 0
  %i.dy = zext i1 %i.dx to i8
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsuH_NtCs4lawaffTVVK_9sqlparser3astNtB6_15MacroDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !96, !noundef !29
  %i.b = icmp eq i64 %i.a, 69                     ; 2 uses
  %i.c = zext i1 %i.b to i8
  %i.d = load i64, ptr %1, align 8, !range !96, !noundef !29
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
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !29, !noundef !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !29, !noundef !29
  %i.l = tail call fastcc noundef i8 @_RNvXs1w_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.k) #55
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsuR_NtCs4lawaffTVVK_9sqlparser3astNtB6_10SchemaNameNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !36, !noundef !29 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 2          ; 3 uses
  %i.e = load i64, ptr %1, align 8, !range !36, !noundef !29 ; 2 uses
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
  %.val8 = load ptr, ptr %i.j, align 8, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9 = load i64, ptr %i.k, align 8, !noundef !29
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load ptr, ptr %i.l, align 8, !nonnull !29, !noundef !29
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load i64, ptr %i.m, align 8, !noundef !29
  %i.n = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val8, i64 noundef %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val10, i64 noundef %.val11)
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.p)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.r, align 8, !nonnull !29, !noundef !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.s, align 8, !noundef !29
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !29, !noundef !29
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.u, align 8, !noundef !29
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
  %i.a = load i64, ptr %0, align 8, !range !103, !noundef !29 ; 2 uses
  %i.b = add nsw i64 %i.a, -70
  %i.c = icmp samesign ugt i64 %i.a, 69
  %i.d = select i1 %i.c, i64 %i.b, i64 5          ; 3 uses
  %i.e = load i64, ptr %1, align 8, !range !103, !noundef !29 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17444)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !17443, !noalias !17444, !nonnull !29, !noundef !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !17443, !noalias !17444, !noundef !29 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !17444, !noalias !17443, !nonnull !29, !noundef !29
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !17444, !noalias !17443, !noundef !29 ; 2 uses
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
  %i.aa = tail call fastcc noundef i8 @_RNvXsc8_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.z) #55, !noalias !17445, !inline_history !22 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h, %bb.g
  %i.ac = tail call noundef i8 @llvm.ucmp.i8.i64(i64 %i.s, i64 %i.w)
  br label %_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

end_hunk_0
begin_hunk_1_@llvm.bswap.i64
!17233 = distinct !{!17233, !17231, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl15ColumnOptionDefNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!17234 = distinct !{!17234, !"_RNvXs4S_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15ColumnOptionDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17235 = distinct !{!17235, !17234, !"_RNvXs4S_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15ColumnOptionDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17236 = distinct !{!17236, !17234, !"_RNvXs4S_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15ColumnOptionDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17237 = distinct !{!17237, !"_RNvXs4o_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17238 = distinct !{!17238, !17237, !"_RNvXs4o_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17239 = distinct !{!17239, !17237, !"_RNvXs4o_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17240 = distinct !{!17240, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl15ColumnOptionDefNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core"}
!17241 = distinct !{!17241, !17240, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl15ColumnOptionDefNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17242 = distinct !{!17242, !17240, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl15ColumnOptionDefNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!17243 = distinct !{!17243, !"_RNvXs4S_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15ColumnOptionDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17244 = distinct !{!17244, !17243, !"_RNvXs4S_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15ColumnOptionDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17245 = distinct !{!17245, !17243, !"_RNvXs4S_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15ColumnOptionDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17246 = !{i8 0, i8 116}
!17247 = !{i8 0, i8 14}
!17248 = !{!17218}
!17249 = !{!17219}
!17250 = !{!17222}
!17251 = !{!17223}
!17252 = !{!17225}
!17253 = !{!17226}
!17254 = !{!17225, !17222}
!17255 = !{!17226, !17223}
!17256 = !{!17229}
!17257 = !{!17230}
!17258 = !{!17232}
!17259 = !{!17233}
!17260 = !{!17235}
!17261 = !{!17236}
!17262 = !{!17235, !17232}
!17263 = !{!17236, !17233}
!17264 = !{!17238}
!17265 = !{!17239}
!17266 = !{!17241}
!17267 = !{!17242}
!17268 = !{!17244}
!17269 = !{!17245}
!17270 = !{!17244, !17241}
!17271 = !{!17245, !17242}
!17272 = distinct !{!17272, !"_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17273 = distinct !{!17273, !17272, !"_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17274 = distinct !{!17274, !17272, !"_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17275 = distinct !{!17275, !"_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2K_s_0ECs14kWLkQVSKO_14deltalake_core"}
!17276 = distinct !{!17276, !17275, !"_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2K_s_0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17277 = distinct !{!17277, !17275, !"_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2K_s_0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!17278 = distinct !{!17278, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core"}
!17279 = distinct !{!17279, !17278, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17280 = distinct !{!17280, !17278, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!17281 = distinct !{!17281, !"_RNvXsmt_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ClusteredIndexNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17282 = distinct !{!17282, !17281, !"_RNvXsmt_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ClusteredIndexNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17283 = distinct !{!17283, !17281, !"_RNvXsmt_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ClusteredIndexNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17284 = distinct !{!17284, !"_RNvXswX_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CommentDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17285 = distinct !{!17285, !17284, !"_RNvXswX_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CommentDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17286 = distinct !{!17286, !17284, !"_RNvXswX_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CommentDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17287 = distinct !{!17287, !"_RNvXsnj_NtCs4lawaffTVVK_9sqlparser3astNtB6_16TablespaceOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17288 = distinct !{!17288, !17287, !"_RNvXsnj_NtCs4lawaffTVVK_9sqlparser3astNtB6_16TablespaceOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17289 = distinct !{!17289, !17287, !"_RNvXsnj_NtCs4lawaffTVVK_9sqlparser3astNtB6_16TablespaceOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17290 = distinct !{!17290, !"_RNvXswj_NtCs4lawaffTVVK_9sqlparser3astNtB6_22NamedParenthesizedListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17291 = distinct !{!17291, !17290, !"_RNvXswj_NtCs4lawaffTVVK_9sqlparser3astNtB6_22NamedParenthesizedListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17292 = distinct !{!17292, !17290, !"_RNvXswj_NtCs4lawaffTVVK_9sqlparser3astNtB6_22NamedParenthesizedListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17293 = !{!17273}
!17294 = !{!17274}
!17295 = !{!17273, !17274}
!17296 = !{!17276}
!17297 = !{!17277}
!17298 = !{!17279}
!17299 = !{!17280}
!17300 = !{!17282}
!17301 = !{!17283}
!17302 = !{!17282, !17279, !17276}
!17303 = !{!17283, !17280, !17277, !17273, !17274}
!17304 = !{!17283, !17280, !17277}
!17305 = !{!17282, !17279, !17276, !17273, !17274}
!17306 = !{!17285}
!17307 = !{!17286}
!17308 = !{!17285, !17286}
!17309 = !{!17288}
!17310 = !{!17289}
!17311 = !{!17288, !17289}
!17312 = !{!17291}
!17313 = !{!17292}
!17314 = distinct !{!17314, !"_RNvXsl4_NtCs4lawaffTVVK_9sqlparser3astNtB6_13HiveRowFormatNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17315 = distinct !{!17315, !17314, !"_RNvXsl4_NtCs4lawaffTVVK_9sqlparser3astNtB6_13HiveRowFormatNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17316 = distinct !{!17316, !17314, !"_RNvXsl4_NtCs4lawaffTVVK_9sqlparser3astNtB6_13HiveRowFormatNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17317 = distinct !{!17317, !"_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2M_s_0ECs14kWLkQVSKO_14deltalake_core"}
!17318 = distinct !{!17318, !17317, !"_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2M_s_0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17319 = distinct !{!17319, !17317, !"_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2M_s_0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!17320 = distinct !{!17320, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core"}
!17321 = distinct !{!17321, !17320, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17322 = distinct !{!17322, !17320, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!17323 = distinct !{!17323, !"_RNvXslo_NtCs4lawaffTVVK_9sqlparser3astNtB6_16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17324 = distinct !{!17324, !17323, !"_RNvXslo_NtCs4lawaffTVVK_9sqlparser3astNtB6_16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17325 = distinct !{!17325, !17323, !"_RNvXslo_NtCs4lawaffTVVK_9sqlparser3astNtB6_16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17326 = distinct !{!17326, !"_RNvXsm8_NtCs4lawaffTVVK_9sqlparser3astNtB6_12HiveIOFormatNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17327 = distinct !{!17327, !17326, !"_RNvXsm8_NtCs4lawaffTVVK_9sqlparser3astNtB6_12HiveIOFormatNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17328 = distinct !{!17328, !17326, !"_RNvXsm8_NtCs4lawaffTVVK_9sqlparser3astNtB6_12HiveIOFormatNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17329 = distinct !{null}
!17330 = !{!17315}
!17331 = !{!17316}
!17332 = !{!17315, !17316}
!17333 = !{!17318}
!17334 = !{!17319}
!17335 = !{!17321}
!17336 = !{!17322}
!17337 = !{!17324}
!17338 = !{!17325}
!17339 = !{!17324, !17321, !17318}
!17340 = !{!17325, !17322, !17319, !17315, !17316}
!17341 = !{!17325, !17322, !17319}
!17342 = !{!17324, !17321, !17318, !17315, !17316}
!17343 = !{!17327}
!17344 = !{!17328}
!17345 = !{i64 0, i64 73}
!17346 = distinct !{!17346, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB2_8CopySpec9clone_oneCs14kWLkQVSKO_14deltalake_core"}
!17347 = distinct !{!17347, !17346, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB2_8CopySpec9clone_oneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17348 = distinct !{!17348, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!17349 = distinct !{!17349, !17348, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17350 = distinct !{!17350, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtB2_8CopySpec9clone_oneCs14kWLkQVSKO_14deltalake_core"}
!17351 = distinct !{!17351, !17350, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtB2_8CopySpec9clone_oneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17352 = distinct !{null, ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core}
!17353 = distinct !{!17353, !"_RNvYTaINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!17354 = distinct !{!17354, !17353, !"_RNvYTaINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17355 = distinct !{null}
!17356 = !{!17347}
!17357 = !{!17349}
!17358 = !{ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core}
!17359 = !{!17351, !17349}
!17360 = !{!17354}
!17361 = distinct !{!17361, !"_RNvXsy_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_18DollarQuotedStringNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17362 = distinct !{!17362, !17361, !"_RNvXsy_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_18DollarQuotedStringNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17363 = distinct !{!17363, !17361, !"_RNvXsy_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_18DollarQuotedStringNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17364 = !{!17362}
!17365 = !{!17363}
!17366 = !{!17362, !17363}
!17367 = distinct !{!17367, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core"}
!17368 = distinct !{!17368, !17367, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17369 = distinct !{!17369, !17367, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!17370 = distinct !{!17370, !"_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17371 = distinct !{!17371, !17370, !"_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17372 = distinct !{!17372, !17370, !"_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17373 = distinct !{!17373, !"_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17374 = distinct !{!17374, !17373, !"_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17375 = distinct !{!17375, !17373, !"_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17376 = distinct !{!17376, !"_RNvXsei_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17377 = distinct !{!17377, !17376, !"_RNvXsei_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17378 = distinct !{!17378, !17376, !"_RNvXsei_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17379 = distinct !{!17379, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core"}
!17380 = distinct !{!17380, !17379, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17381 = distinct !{!17381, !17379, !"_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!17382 = distinct !{!17382, !"_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17383 = distinct !{!17383, !17382, !"_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17384 = distinct !{!17384, !17382, !"_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17385 = distinct !{!17385, !"_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17386 = distinct !{!17386, !17385, !"_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17387 = distinct !{!17387, !17385, !"_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17388 = !{!17368}
!17389 = !{!17369}
!17390 = !{!17371}
!17391 = !{!17372}
!17392 = !{!17371, !17368}
!17393 = !{!17372, !17369}
!17394 = !{!17374}
!17395 = !{!17375}
!17396 = !{!17374, !17375}
!17397 = !{!17377}
!17398 = !{!17378}
!17399 = !{!17377, !17378}
!17400 = !{!17380}
!17401 = !{!17381}
!17402 = !{!17383}
!17403 = !{!17384}
!17404 = !{!17383, !17380}
!17405 = !{!17384, !17381}
!17406 = !{!17386}
!17407 = !{!17387}
!17408 = !{!17386, !17387}
!17409 = distinct !{!17409, !"_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr"}
!17410 = distinct !{!17410, !17409, !"_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr: argument 0"}
!17411 = distinct !{!17411, !"_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains"}
!17412 = distinct !{!17412, !17411, !"_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains: argument 0"}
!17413 = distinct !{!17413, !17411, !"_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains: argument 1"}
!17414 = distinct !{!17414, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs14kWLkQVSKO_14deltalake_core"}
!17415 = distinct !{!17415, !17414, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs14kWLkQVSKO_14deltalake_core: argument 1"}
!17416 = distinct !{!17416, !17414, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17417 = distinct !{!17417, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core"}
!17418 = distinct !{!17418, !17417, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17419 = distinct !{!17419, !"_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains0Cs14kWLkQVSKO_14deltalake_core"}
!17420 = distinct !{!17420, !17419, !"_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17421 = distinct !{!17421, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core"}
!17422 = distinct !{!17422, !17421, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core: argument 1"}
!17423 = distinct !{!17423, !17421, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17424 = distinct !{!17424, !"_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0Cs14kWLkQVSKO_14deltalake_core"}
!17425 = distinct !{!17425, !17424, !"_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17426 = distinct !{!17426, !"_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0Cs14kWLkQVSKO_14deltalake_core"}
!17427 = distinct !{!17427, !17426, !"_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17428 = distinct !{!17428, !"_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0Cs14kWLkQVSKO_14deltalake_core"}
!17429 = distinct !{!17429, !17428, !"_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17430 = !{!17410}
!17431 = !{!17412}
!17432 = !{!17413}
!17433 = !{!17420, !17418, !17416, !17415, !17413}
!17434 = !{!17420, !17418, !17416, !17415, !17412, !17413}
!17435 = !{!17412, !17413}
!17436 = !{!17423, !17422}
!17437 = !{!17425, !17412}
!17438 = !{!17427, !17412}
!17439 = !{!17429, !17412}
!17440 = distinct !{!17440, !"_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17441 = distinct !{!17441, !17440, !"_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17442 = distinct !{!17442, !17440, !"_RNvXsac_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17443 = !{!17441}
!17444 = !{!17442}
!17445 = !{!17441, !17442}
!17446 = distinct !{!17446, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!17447 = distinct !{!17447, !17446, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!17448 = distinct !{!17448, !17446, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!17449 = distinct !{!17449, !17446, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!17450 = distinct !{!17450, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!17451 = distinct !{!17451, !17450, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!17452 = distinct !{!17452, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core"}
!17453 = distinct !{!17453, !17452, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17454 = !{!17447}
!17455 = !{!17448}
!17456 = !{!17449}
!17457 = !{!17451}
!17458 = !{!17448, !17449}
!17459 = !{!17453, !17448, !17449}
!17460 = !{!17448, !17447}
!17461 = !{!17453, !17448, !17447}
!17462 = distinct !{!17462, !"_RNvXsgE_NtCs4lawaffTVVK_9sqlparser3astNtB6_11GranteeNameNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17463 = distinct !{!17463, !17462, !"_RNvXsgE_NtCs4lawaffTVVK_9sqlparser3astNtB6_11GranteeNameNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17464 = distinct !{!17464, !17462, !"_RNvXsgE_NtCs4lawaffTVVK_9sqlparser3astNtB6_11GranteeNameNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17465 = !{!17463}
!17466 = !{!17464}
!17467 = !{!17463, !17464}
!17468 = distinct !{!17468, !"_RNvXsxV_NtCs4lawaffTVVK_9sqlparser3astNtB6_15ShowStatementInNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp"}
!17469 = distinct !{!17469, !17468, !"_RNvXsxV_NtCs4lawaffTVVK_9sqlparser3astNtB6_15ShowStatementInNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!17470 = distinct !{!17470, !17468, !"_RNvXsxV_NtCs4lawaffTVVK_9sqlparser3astNtB6_15ShowStatementInNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!17471 = !{!17469}
!17472 = !{!17470}
!17473 = !{!17469, !17470}
!17474 = distinct !{!17474, !"_RNvXs2_NtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence10propertiesNtB5_21EquivalencePropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17475 = distinct !{!17475, !17474, !"_RNvXs2_NtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence10propertiesNtB5_21EquivalencePropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17476 = distinct !{!17476, !17474, !"_RNvXs2_NtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence10propertiesNtB5_21EquivalencePropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17477 = distinct !{!17477, !"_RNvXsr_NtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence5classNtB5_16EquivalenceGroupNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17478 = distinct !{!17478, !17477, !"_RNvXsr_NtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence5classNtB5_16EquivalenceGroupNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17479 = distinct !{!17479, !17477, !"_RNvXsr_NtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence5classNtB5_16EquivalenceGroupNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17480 = distinct !{!17480, !"_RNvXs4_NtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence10propertiesNtB5_24OrderingEquivalenceCacheNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17481 = distinct !{!17481, !17480, !"_RNvXs4_NtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence10propertiesNtB5_24OrderingEquivalenceCacheNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17482 = distinct !{!17482, !17480, !"_RNvXs4_NtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence10propertiesNtB5_24OrderingEquivalenceCacheNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17483 = distinct !{!17483, !"_RNvXsz_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_11LexOrderingNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17484 = distinct !{!17484, !17483, !"_RNvXsz_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_11LexOrderingNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17485 = distinct !{!17485, !17483, !"_RNvXsz_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_11LexOrderingNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17486 = !{!17475}
!17487 = !{!17476}
!17488 = !{!17475, !17476}
!17489 = !{!17479, !17478, !17475, !17476}
!17490 = !{!17479, !17475}
!17491 = !{!17478, !17475, !17476}
!17492 = !{!17482, !17481, !17475, !17476}
!17493 = !{!17482, !17475}
!17494 = !{!17481, !17475, !17476}
!17495 = !{!17485, !17484}
!17496 = !{!17485}
!17497 = !{!17484}
!17498 = distinct !{!17498, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtCseo6ZV82fEK1_3url3UrlNtNtBJ_6parser10ParseErrorE6unwrapCs14kWLkQVSKO_14deltalake_core"}
!17499 = distinct !{!17499, !17498, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtCseo6ZV82fEK1_3url3UrlNtNtBJ_6parser10ParseErrorE6unwrapCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17500 = distinct !{!17500, !17498, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtCseo6ZV82fEK1_3url3UrlNtNtBJ_6parser10ParseErrorE6unwrapCs14kWLkQVSKO_14deltalake_core: argument 1"}
!17501 = distinct !{!17501, !17498, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtCseo6ZV82fEK1_3url3UrlNtNtBJ_6parser10ParseErrorE6unwrapCs14kWLkQVSKO_14deltalake_core: argument 2"}
!17502 = !{!17499}
!17503 = !{!17500}
!17504 = !{!17499, !17501}
!17505 = !{!17499, !17500, !17501}
!17506 = !{!17499, !17500}
!17507 = !{!17501}
!17508 = distinct !{!17508, !"_RNvXsL_NtNtCsbvkFyIu7lgC_4core5slice3cmpcNtB5_13SliceContains14slice_contains"}
!17509 = distinct !{!17509, !17508, !"_RNvXsL_NtNtCsbvkFyIu7lgC_4core5slice3cmpcNtB5_13SliceContains14slice_contains: argument 0"}
!17510 = distinct !{!17510, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherRScENtB5_8Searcher10next_matchCs14kWLkQVSKO_14deltalake_core"}
!17511 = distinct !{!17511, !17510, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherRScENtB5_8Searcher10next_matchCs14kWLkQVSKO_14deltalake_core: argument 1"}
!17512 = distinct !{!17512, !17510, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherRScENtB5_8Searcher10next_matchCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17513 = distinct !{!17513, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core"}
!17514 = distinct !{!17514, !17513, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core: argument 1"}
!17515 = distinct !{!17515, !17513, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17516 = distinct !{!17516, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsL_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs14kWLkQVSKO_14deltalake_core"}
!17517 = distinct !{!17517, !17516, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsL_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!17518 = distinct !{!17518, !17516, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsL_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17519 = distinct !{!17519, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!17520 = distinct !{!17520, !17519, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!17521 = distinct !{!17521, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core"}
!17522 = distinct !{!17522, !17521, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17523 = !{!17509}
!17524 = !{!17518, !17517, !17515, !17514, !17512, !17511}
!17525 = !{!17522, !17520, !17515, !17514, !17512, !17511}
!17526 = distinct !{!17526, !"_RNCNKNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs14kWLkQVSKO_14deltalake_core"}
!17527 = distinct !{!17527, !17526, !"_RNCNKNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17528 = distinct !{!17528, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StoragejzE11get_or_initNvNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core"}
!17529 = distinct !{!17529, !17528, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StoragejzE11get_or_initNvNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17530 = !{!17529, !17527}
!17531 = distinct !{!17531, !"_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs14kWLkQVSKO_14deltalake_core"}
!17532 = distinct !{!17532, !17531, !"_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!17533 = distinct !{!17533, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core"}
!17534 = distinct !{!17534, !17533, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17535 = !{!17534, !17532}
!17536 = distinct !{!17536, !"_RNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX0B5_"}
!17537 = distinct !{!17537, !17536, !"_RNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX0B5_: argument 0"}
!17538 = distinct !{!17538, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtNtCsonPGffhQyS_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core"}
!17539 = distinct !{!17539, !17538, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtNtCsonPGffhQyS_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17540 = distinct !{!17540, !17538, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtNtCsonPGffhQyS_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core: argument 1"}
!17541 = distinct !{!17541, !17538, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtNtCsonPGffhQyS_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core: argument 2"}
!17542 = !{!17537}
!17543 = !{!17539}
!17544 = !{!17540}
!17545 = !{!17539, !17541, !17537}
!17546 = !{!17539, !17540, !17541, !17537}
!17547 = !{!17539, !17540, !17537}
!17548 = !{!17539, !17540}
!17549 = !{!17541}
!17550 = distinct !{!17550, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner12DeltaPlannerEE3newB16_"}
!17551 = distinct !{!17551, !17550, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner12DeltaPlannerEE3newB16_: argument 0"}
!17552 = !{!17551}
!17553 = distinct !{!17553, !"_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner24DELTA_EXTENSION_PLANNERS0B7_"}
!17554 = distinct !{!17554, !17553, !"_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner24DELTA_EXTENSION_PLANNERS0B7_: argument 0"}
!17555 = distinct !{!17555, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core"}
!17556 = distinct !{!17556, !17555, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17557 = distinct !{!17557, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_ENtNtNtB1P_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!17558 = distinct !{!17558, !17557, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_ENtNtNtB1P_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17559 = distinct !{!17559, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core"}
!17560 = distinct !{!17560, !17559, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17561 = distinct !{!17561, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_ENtNtNtB1P_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!17562 = distinct !{!17562, !17561, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_ENtNtNtB1P_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17563 = distinct !{!17563, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core"}
!17564 = distinct !{!17564, !17563, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17565 = distinct !{!17565, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_ENtNtNtB1P_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!17566 = distinct !{!17566, !17565, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_ENtNtNtB1P_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17567 = distinct !{!17567, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation30DataValidationExtensionPlannerEE3newB16_"}
!17568 = distinct !{!17568, !17567, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation30DataValidationExtensionPlannerEE3newB16_: argument 0"}
!17569 = distinct !{!17569, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core"}
!17570 = distinct !{!17570, !17569, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17571 = distinct !{!17571, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_ENtNtNtB1P_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!17572 = distinct !{!17572, !17571, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_ENtNtNtB1P_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17573 = !{!17554}
!17574 = !{!17556}
!17575 = !{!17558}
!17576 = !{!17558, !17556}
!17577 = !{!17558, !17556, !17554}
!17578 = !{!17560}
!17579 = !{!17562}
!17580 = !{!17562, !17560}
!17581 = !{!17562, !17560, !17554}
!17582 = !{!17564}
!17583 = !{!17566}
!17584 = !{!17566, !17564}
!17585 = !{!17566, !17564, !17554}
!17586 = !{!17568, !17554}
!17587 = !{!17572, !17570, !17554}
!17588 = distinct !{!17588, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core"}
!17589 = distinct !{!17589, !17588, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17590 = distinct !{!17590, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!17591 = distinct !{!17591, !17590, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17592 = distinct !{!17592, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaNtNtBL_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core"}
!17593 = distinct !{!17593, !17592, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaNtNtBL_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core: argument 1"}
!17594 = distinct !{!17594, !17592, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaNtNtBL_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17595 = distinct !{!17595, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE3newCs14kWLkQVSKO_14deltalake_core"}
!17596 = distinct !{!17596, !17595, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE3newCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17597 = distinct !{!17597, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core"}
!17598 = distinct !{!17598, !17597, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!17599 = distinct !{!17599, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!17600 = distinct !{!17600, !17599, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!17601 = !{!17589}
!17602 = !{!17591}
!17603 = !{!17591, !17589}
!17604 = !{!17593}
!17605 = !{!17594}
!17606 = !{!17594, !17593}
!17607 = !{!17596}
!17608 = !{!17600, !17598}
!17609 = distinct !{!17609, !"_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA0B9_"}
!17610 = distinct !{!17610, !17609, !"_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA0B9_: argument 0"}
!17611 = distinct !{!17611, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17612 = distinct !{!17612, !17611, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17613 = distinct !{!17613, !17611, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17614 = distinct !{!17614, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17615 = distinct !{!17615, !17614, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17616 = distinct !{!17616, !17614, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17617 = distinct !{!17617, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17618 = distinct !{!17618, !17617, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17619 = distinct !{!17619, !17617, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17620 = distinct !{!17620, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17621 = distinct !{!17621, !17620, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17622 = distinct !{!17622, !17620, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17623 = distinct !{!17623, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17624 = distinct !{!17624, !17623, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17625 = distinct !{!17625, !17623, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17626 = distinct !{!17626, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17627 = distinct !{!17627, !17626, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17628 = distinct !{!17628, !17626, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17629 = distinct !{!17629, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17630 = distinct !{!17630, !17629, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!17631 = distinct !{!17631, !17629, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17632 = distinct !{!17632, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!17633 = distinct !{!17633, !17632, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!17634 = distinct !{!17634, !17632, !"_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
end_hunk_1
