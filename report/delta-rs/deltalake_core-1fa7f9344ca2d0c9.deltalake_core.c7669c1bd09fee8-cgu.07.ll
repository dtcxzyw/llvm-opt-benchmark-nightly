Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.07?download=true
inline.NumInlined: 9996
inline.NumDeleted: 4213
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB3o_s_0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %.val2.i = load ptr, ptr %i.ag, align 8, !alias.scope !6667, !noalias !6666, !nonnull !34, !noundef !34
  %i.ah = getelementptr i8, ptr %i.d, i64 24
  %.val3.i = load i64, ptr %i.ah, align 8, !alias.scope !6667, !noalias !6666, !noundef !34
  %i.ai = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i), !noalias !6668, !inline_history !6659
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.q:                                             ; preds = %bb.m
  %i.aj = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %i.d) #56, !inline_history !6659
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.0.0.i18 = phi i8 [ %i.aj, %bb.q ], [ %i.ad, %bb.o ], [ %i.ai, %bb.p ] ; 2 uses
  %i.ak = icmp eq i8 %.sroa.0.0.i18, 0
  br i1 %i.ak, label %bb.t, label %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.r:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.am) #56, !inline_history !6655
  br label %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.s:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.aq = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ao), !inline_history !6655
  br label %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.t:                                             ; preds = %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.at = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ar) #56, !inline_history !6655
  br label %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.u:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6670)
  %i.aw = load i64, ptr %i.au, align 8, !range !37, !alias.scope !6671, !noalias !6672, !noundef !34
  %.not.i1.i = icmp eq i64 %i.aw, -9223372036854775808
  %i.ax = load i64, ptr %i.av, align 8, !range !37, !alias.scope !6672, !noalias !6671, !noundef !34
  %.not8.i.i = icmp eq i64 %i.ax, -9223372036854775808 ; 2 uses
  br i1 %.not.i1.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %.thread, label %bb.y

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.az = load i32, ptr %i.ay, align 8, !alias.scope !6671, !noalias !6672, !noundef !34 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.bb = load i32, ptr %i.ba, align 8, !alias.scope !6672, !noalias !6671, !noundef !34 ; 2 uses
  %i.bc = tail call i8 @llvm.scmp.i8.i32(i32 %i.az, i32 %i.bb)
  %i.bd = icmp eq i32 %i.az, %i.bb
  br i1 %i.bd, label %bb.z, label %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.y:                                             ; preds = %bb.v
  %i.be = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.av), !inline_history !6663 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.x, label %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.z:                                             ; preds = %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !range !37, !alias.scope !6671, !noalias !6672, !noundef !34
  %.not10.i.i = icmp eq i64 %i.bh, -9223372036854775808
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !range !37, !alias.scope !6672, !noalias !6671, !noundef !34
  %.not11.i.i = icmp eq i64 %i.bj, -9223372036854775808 ; 2 uses
  br i1 %.not10.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not11.i.i, label %.thread, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  br i1 %.not11.i.i, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !37, !alias.scope !6671, !noalias !6672, !noundef !34
  %.not13.i.i = icmp eq i64 %i.bl, -9223372036854775808
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !range !37, !alias.scope !6672, !noalias !6671, !noundef !34 ; 2 uses
  br i1 %.not13.i.i, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.bo = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bi), !inline_history !6663 ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.ac, label %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.ae:                                            ; preds = %bb.ac
  %.not15.i.i = icmp eq i64 %i.bn, -9223372036854775808
  br i1 %.not15.i.i, label %.thread, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %.not14.i.i = icmp ne i64 %i.bn, -9223372036854775808
  %..i.i = sext i1 %.not14.i.i to i8
  br label %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.ag:                                            ; preds = %bb.ae
  %i.bq = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bm), !inline_history !6663
  br label %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.x, %bb.y, %bb.ad, %bb.af, %bb.ag, %bb.h, %bb.j, %bb.k, %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.r, %bb.s, %bb.t, %bb.e
  %.sroa.0.0.i16 = phi i8 [ %i.an, %bb.r ], [ %i.j, %bb.e ], [ %i.s, %bb.h ], [ %i.v, %bb.j ], [ %i.aq, %bb.s ], [ %i.y, %bb.k ], [ %i.at, %bb.t ], [ %.sroa.0.0.i18, %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ %i.bq, %bb.ag ], [ %i.bc, %bb.x ], [ %..i.i, %bb.af ], [ %i.be, %bb.y ], [ %i.bo, %bb.ad ]
  %.sroa.0.0.i16.fr = freeze i8 %.sroa.0.0.i16    ; 2 uses
  %i.br = icmp eq i8 %.sroa.0.0.i16.fr, 0
  br i1 %i.br, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.ae, %bb.v, %bb.ab, %bb.aa, %bb.w, %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ -1, %bb.w ], [ 1, %bb.aa ], [ -1, %bb.ab ], [ 1, %bb.v ], [ 1, %bb.ae ], [ %.sroa.0.0.i16.fr, %_RNvXsh_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB3l_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %0, i64 noundef range(i64 0, 64051194700380388) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef range(i64 0, 64051194700380388) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not18 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond.not18, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvXsc_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp10PartialOrd11partial_cmpCs14kWLkQVSKO_14deltalake_core.exit
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.019 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.019, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.01.019 ; 3 uses
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %2, i64 %.sroa.01.019 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6678)
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !6677, !noalias !6678, !nonnull !34, !noundef !34
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %.val4.i = load i64, ptr %i.f, align 16, !alias.scope !6677, !noalias !6678, !noundef !34
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val5.i = load ptr, ptr %i.g, align 8, !alias.scope !6678, !noalias !6677, !nonnull !34, !noundef !34
  %i.h = getelementptr i8, ptr %i.d, i64 16
  %.val6.i = load i64, ptr %i.h, align 16, !alias.scope !6678, !noalias !6677, !noundef !34
  %i.i = tail call noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val4.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val5.i, i64 noundef %.val6.i), !noalias !6679, !inline_history !6676 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_RNvXsc_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp10PartialOrd11partial_cmpCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.k, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l) #56, !inline_history !6676
  br label %_RNvXsc_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp10PartialOrd11partial_cmpCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsc_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp10PartialOrd11partial_cmpCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i16 = phi i8 [ %i.m, %bb.c ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.n = icmp eq i8 %.sroa.0.0.i16, 0
  br i1 %i.n, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_RNvXsc_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp10PartialOrd11partial_cmpCs14kWLkQVSKO_14deltalake_core.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ %.sroa.0.0.i16, %_RNvXsc_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp10PartialOrd11partial_cmpCs14kWLkQVSKO_14deltalake_core.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable7ipnsortNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYBT_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCs8ulvy0Wg6Ot_12delta_kernel8FileMeta7reverseCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 112
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 120
  %.val11 = load i64, ptr %i.c, align 8, !noundef !34 ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.d, align 8, !nonnull !34, !noundef !34
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.e, align 8, !noundef !34 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.val10, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.val11, %.val13
  %spec.select.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g
  %i.j = icmp slt i64 %spec.select.i.i.i, 0       ; 2 uses
  %.not32 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.b
  br i1 %.not32, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not32, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph28

.lr.ph:                                           ; preds = %.preheader22, %bb.c
  %.val9 = phi i64 [ %.val7, %bb.c ], [ %.val11, %.preheader22 ] ; 2 uses
  %.val8 = phi ptr [ %.val6, %bb.c ], [ %.val10, %.preheader22 ]
  %.sroa.01.0.i24 = phi i64 [ %i.s, %bb.c ], [ 2, %.preheader22 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.01.0.i24 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val6 = load ptr, ptr %i.l, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %.val7 = load i64, ptr %i.m, align 8, !noundef !34 ; 3 uses
  %spec.store.select.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %.val7, i64 %.val9)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val6, ptr nonnull readonly %.val8, i64 %spec.store.select.i.i.i14) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %.val7, %.val9
  %spec.select.i.i.i15 = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i.i15, 0
  br i1 %i.r, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %.sroa.01.0.i24, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

.lr.ph28:                                         ; preds = %.preheader, %bb.d
  %.val5 = phi i64 [ %.val3, %bb.d ], [ %.val11, %.preheader ] ; 2 uses
  %.val4 = phi ptr [ %.val, %bb.d ], [ %.val10, %.preheader ]
  %.sroa.01.1.i27 = phi i64 [ %i.ab, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.01.1.i27 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val = load ptr, ptr %i.u, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val3 = load i64, ptr %i.v, align 8, !noundef !34 ; 3 uses
  %spec.store.select.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %.val3, i64 %.val5)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val4, i64 %spec.store.select.i.i.i16) ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.val3, %.val5
  %spec.select.i.i.i17 = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = icmp slt i64 %spec.select.i.i.i17, 0
  br i1 %i.aa, label %bb.d, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %.lr.ph28
  %i.ab = add nuw nsw i64 %.sroa.01.1.i27, 1      ; 2 uses
  %exitcond35.not = icmp eq i64 %i.ab, %1
  br i1 %exitcond35.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph28

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %.lr.ph28, %.preheader22, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader22 ], [ 2, %.preheader ], [ %.sroa.01.1.i27, %.lr.ph28 ], [ %.sroa.01.0.i24, %.lr.ph ] ; 2 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ad, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCs8ulvy0Wg6Ot_12delta_kernel8FileMeta7reverseCs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit
  %i.ae = or i64 %1, 1
  %i.af = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 126
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort9quicksortNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB17_NtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, i32 noundef %i.ai, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCs8ulvy0Wg6Ot_12delta_kernel8FileMeta7reverseCs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCs8ulvy0Wg6Ot_12delta_kernel8FileMeta7reverseCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.a, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB12_NtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.aj = lshr i64 %1, 1
  %i.ak = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ap, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i, -1
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.an = getelementptr [104 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 13)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCs8ulvy0Wg6Ot_12delta_kernel8FileMeta7reverseCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable7ipnsortTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SBT_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB23_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTjNtCslnB3YlOUCfj_9arrow_row3RowE7reverseCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val11 = load i64, ptr %i.c, align 8, !noundef !34 ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.d, align 8, !nonnull !34, !noundef !34
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.e, align 8, !noundef !34 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.val10, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i) ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.val11, %.val13
  %spec.select.i.i = select i1 %i.h, i64 %i.i, i64 %i.g
  %i.j = icmp slt i64 %spec.select.i.i, 0         ; 2 uses
  %.not32 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.b
  br i1 %.not32, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not32, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit, label %.lr.ph28

.lr.ph:                                           ; preds = %.preheader22, %bb.c
  %.val9 = phi i64 [ %.val7, %bb.c ], [ %.val11, %.preheader22 ] ; 2 uses
  %.val8 = phi ptr [ %.val6, %bb.c ], [ %.val10, %.preheader22 ]
  %.sroa.01.0.i24 = phi i64 [ %i.s, %bb.c ], [ 2, %.preheader22 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i24 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val6 = load ptr, ptr %i.l, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %.val7 = load i64, ptr %i.m, align 8, !noundef !34 ; 3 uses
  %spec.store.select.i.i14 = tail call i64 @llvm.umin.i64(i64 %.val7, i64 %.val9)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val6, ptr nonnull readonly %.val8, i64 %spec.store.select.i.i14) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %.val7, %.val9
  %spec.select.i.i15 = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i15, 0
  br i1 %i.r, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %.sroa.01.0.i24, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit.thread, label %.lr.ph

.lr.ph28:                                         ; preds = %.preheader, %bb.d
  %.val5 = phi i64 [ %.val3, %bb.d ], [ %.val11, %.preheader ] ; 2 uses
  %.val4 = phi ptr [ %.val, %bb.d ], [ %.val10, %.preheader ]
  %.sroa.01.1.i27 = phi i64 [ %i.ab, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.1.i27 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val = load ptr, ptr %i.u, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val3 = load i64, ptr %i.v, align 8, !noundef !34 ; 3 uses
  %spec.store.select.i.i16 = tail call i64 @llvm.umin.i64(i64 %.val3, i64 %.val5)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val4, i64 %spec.store.select.i.i16) ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.val3, %.val5
  %spec.select.i.i17 = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = icmp slt i64 %spec.select.i.i17, 0
  br i1 %i.aa, label %bb.d, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit

bb.d:                                             ; preds = %.lr.ph28
  %i.ab = add nuw nsw i64 %.sroa.01.1.i27, 1      ; 2 uses
  %exitcond35.not = icmp eq i64 %i.ab, %1
  br i1 %exitcond35.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit.thread, label %.lr.ph28

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit: ; preds = %.lr.ph, %.lr.ph28, %.preheader22, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader22 ], [ 2, %.preheader ], [ %.sroa.01.1.i27, %.lr.ph28 ], [ %.sroa.01.0.i24, %.lr.ph ] ; 2 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ad, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit.thread, label %bb.e

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTjNtCslnB3YlOUCfj_9arrow_row3RowE7reverseCs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit
  %i.ae = or i64 %1, 1
  %i.af = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 126
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort9quicksortTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB17_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2i_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, i32 noundef %i.ai, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTjNtCslnB3YlOUCfj_9arrow_row3RowE7reverseCs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtCsbvkFyIu7lgC_4core5sliceSTjNtCslnB3YlOUCfj_9arrow_row3RowE7reverseCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTjNtCslnB3YlOUCfj_9arrow_row3RowEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.a, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB6_SB12_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2d_.exit.thread
  %i.aj = lshr i64 %1, 1
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTjNtCslnB3YlOUCfj_9arrow_row3RowEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ap, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTjNtCslnB3YlOUCfj_9arrow_row3RowEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i, -1
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.an = getelementptr [32 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTjNtCslnB3YlOUCfj_9arrow_row3RowEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTjNtCslnB3YlOUCfj_9arrow_row3RowEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTjNtCslnB3YlOUCfj_9arrow_row3RowE7reverseCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2o_6future6future6Futurep6OutputINtNtB2o_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2o_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !6684
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowB4V_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINtNtNtNtBa_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEB3r_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !6689
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtNtNtB1n_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEEB4c_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEE9drop_slowB3C_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtNtNtB1n_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEEB4c_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtNtNtB1n_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEEB4c_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2v_11DeltaWriter5close000EEEB2B_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !6694
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2G_11DeltaWriter5close000EEE9drop_slowB2M_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !6699
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !6704
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2v_11ObjectStoreEL_EEB3Q_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !6709
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBH_DNtB3f_11ObjectStoreEL_EEB46_13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBx_DNtB2G_11ObjectStoreEL_EEB3x_13delete_stream00EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBH_DNtB3f_11ObjectStoreEL_EEB46_13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBH_DNtB3f_11ObjectStoreEL_EEB46_13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4o_13delete_stream00EEEB2z_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !6714
  %i.d = icmp eq i64 %i.c, 1
end_hunk_0
