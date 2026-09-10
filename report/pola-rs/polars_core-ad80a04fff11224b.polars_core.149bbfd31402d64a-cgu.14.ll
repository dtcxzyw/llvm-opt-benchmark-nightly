Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.14?download=true
inline.NumInlined: 11286
inline.NumDeleted: 5449
loop-unroll.NumRuntimeUnrolled: 110
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMB8_SB17_16sort_unstable_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
  %.us-phi.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.us.i, %bb.u ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.w ], !dbg !180776
  %.us-phi8.i = phi ptr [ %i.bc, %bb.u ], [ %i.bq, %bb.w ], !dbg !180776
  %.us-phi9.i = phi i64 [ %.sroa.23.1.i.us.i, %bb.u ], [ %.sroa.23.1.i.i, %bb.w ], !dbg !180776
  store i16 %i.ae, ptr %.us-phi8.i, align 2, !dbg !180776, !alias.scope !180672, !noalias !180682
  %i.by = add i64 %.us-phi9.i, %.us-phi.i, !dbg !180777
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMB8_SB1x_16sort_unstable_byNvYB1x_NtNtB1B_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !180780

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit32.i.i
  %.sroa.13.051.i.i = phi ptr [ %.sroa.13.0.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit32.i.i ], [ %.sroa.13.048.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.033.050.i.i = phi ptr [ %i.cg, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit32.i.i ], [ %i.ad, %.lr.ph.i.i ] ; 3 uses
  %.sroa.23.049.i.i = phi i64 [ %i.cn, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit32.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.val.i11.i.i = load i16, ptr %.sroa.13.051.i.i, align 2, !dbg !180750, !alias.scope !180674, !noalias !180675, !noundef !3972 ; 5 uses
  %i.bz = and i16 %.val.i11.i.i, 32767, !dbg !180751 ; 2 uses
  %i.ca = icmp samesign ugt i16 %i.bz, 31744, !dbg !180751
  br i1 %i.ca, label %.thread9.i.i.i15.i.i, label %bb.x, !dbg !180781

bb.x:                                             ; preds = %.lr.ph.split.split.i.i
  %i.cb = icmp sgt i16 %.val.i11.i.i, -1, !dbg !180782
  br i1 %i.cb, label %bb.y, label %bb.z, !dbg !180782

bb.y:                                             ; preds = %bb.x
  %.not22.i.i.i19.i.i = icmp samesign ult i16 %.val.i11.i.i, %.pre.i.i
  %or.cond.i.i20.i.i = select i1 %.not.i4.i.i.i13.i.i, i1 %.not22.i.i.i19.i.i, i1 false, !dbg !180782
  br i1 %or.cond.i.i20.i.i, label %bb.ab, label %.thread9.i.i.i15.i.i, !dbg !180782

bb.z:                                             ; preds = %bb.x
  br i1 %.not.i4.i.i.i13.i.i, label %.split.i.i.i17.i.i, label %bb.aa, !dbg !180782

.split.i.i.i17.i.i:                               ; preds = %bb.z
  %i.cc = or i16 %i.bz, %.pre.i.i, !dbg !180783
  %.not.i.i.i18.i.i = icmp eq i16 %i.cc, 0, !dbg !180783
  br i1 %.not.i.i.i18.i.i, label %.thread9.i.i.i15.i.i, label %bb.ab, !dbg !180784

bb.aa:                                            ; preds = %bb.z
  %.not21.i.i.i14.i.i = icmp samesign ult i16 %.pre.i.i, %.val.i11.i.i, !dbg !180785
  br i1 %.not21.i.i.i14.i.i, label %bb.ab, label %.thread9.i.i.i15.i.i, !dbg !180784

.thread9.i.i.i15.i.i:                             ; preds = %bb.aa, %.split.i.i.i17.i.i, %bb.y, %.lr.ph.split.split.i.i
  br label %bb.ab, !dbg !180786

bb.ab:                                            ; preds = %.thread9.i.i.i15.i.i, %bb.aa, %.split.i.i.i17.i.i, %bb.y
  %.sroa.0.0.i.i.i.i16.i.i = phi i64 [ 1, %bb.aa ], [ 0, %.thread9.i.i.i15.i.i ], [ 1, %bb.y ], [ 1, %.split.i.i.i17.i.i ], !dbg !180752
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.sroa.23.049.i.i, !dbg !180753 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !dbg !180754, !alias.scope !180672, !noalias !180676
  store i16 %i.ce, ptr %.sroa.033.050.i.i, align 2, !dbg !180754, !alias.scope !180672, !noalias !180676
  store i16 %.val.i11.i.i, ptr %i.cd, align 2, !dbg !180755, !alias.scope !180672, !noalias !180676
  %i.cf = add i64 %.sroa.0.0.i.i.i.i16.i.i, %.sroa.23.049.i.i, !dbg !180756 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i, i64 4, !dbg !180757 ; 3 uses
  %.val.i22.i.i = load i16, ptr %i.cg, align 2, !dbg !180758, !alias.scope !180677, !noalias !180678, !noundef !3972 ; 5 uses
  %i.ch = and i16 %.val.i22.i.i, 32767, !dbg !180759 ; 2 uses
  %i.ci = icmp samesign ugt i16 %i.ch, 31744, !dbg !180759
  br i1 %i.ci, label %.thread9.i.i.i26.i.i, label %bb.ac, !dbg !180760

bb.ac:                                            ; preds = %bb.ab
  %i.cj = icmp sgt i16 %.val.i22.i.i, -1, !dbg !180787
  br i1 %i.cj, label %bb.ad, label %bb.ae, !dbg !180787

bb.ad:                                            ; preds = %bb.ac
  %.not22.i.i.i30.i.i = icmp samesign ult i16 %.val.i22.i.i, %.pre.i.i
  %or.cond.i.i31.i.i = select i1 %.not.i4.i.i.i13.i.i, i1 %.not22.i.i.i30.i.i, i1 false, !dbg !180787
  br i1 %or.cond.i.i31.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit32.i.i, label %.thread9.i.i.i26.i.i, !dbg !180787

bb.ae:                                            ; preds = %bb.ac
  br i1 %.not.i4.i.i.i13.i.i, label %.split.i.i.i28.i.i, label %bb.af, !dbg !180787

.split.i.i.i28.i.i:                               ; preds = %bb.ae
  %i.ck = or i16 %i.ch, %.pre.i.i, !dbg !180788
  %.not.i.i.i29.i.i = icmp eq i16 %i.ck, 0, !dbg !180788
  br i1 %.not.i.i.i29.i.i, label %.thread9.i.i.i26.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit32.i.i, !dbg !180789

bb.af:                                            ; preds = %bb.ae
  %.not21.i.i.i25.i.i = icmp samesign ult i16 %.pre.i.i, %.val.i22.i.i, !dbg !180790
  br i1 %.not21.i.i.i25.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit32.i.i, label %.thread9.i.i.i26.i.i, !dbg !180789

.thread9.i.i.i26.i.i:                             ; preds = %bb.af, %.split.i.i.i28.i.i, %bb.ad, %bb.ab
  br label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit32.i.i, !dbg !180791

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit32.i.i: ; preds = %.thread9.i.i.i26.i.i, %bb.af, %.split.i.i.i28.i.i, %bb.ad
  %.sroa.0.0.i.i.i.i27.i.i = phi i64 [ 1, %bb.af ], [ 0, %.thread9.i.i.i26.i.i ], [ 1, %bb.ad ], [ 1, %.split.i.i.i28.i.i ], !dbg !180792
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.cf, !dbg !180761 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2, !dbg !180762, !alias.scope !180672, !noalias !180679
  store i16 %i.cm, ptr %.sroa.13.051.i.i, align 2, !dbg !180762, !alias.scope !180672, !noalias !180679
  store i16 %.val.i22.i.i, ptr %i.cl, align 2, !dbg !180763, !alias.scope !180672, !noalias !180679
  %i.cn = add i64 %.sroa.0.0.i.i.i.i27.i.i, %i.cf, !dbg !180764 ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i, i64 6, !dbg !180748 ; 3 uses
  %i.co = icmp ult ptr %.sroa.13.0.i.i, %i.ag, !dbg !180749
  br i1 %i.co, label %.lr.ph.split.split.i.i, label %.preheader.i.i, !dbg !180749

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMB8_SB1x_16sort_unstable_byNvYB1x_NtNtB1B_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %.split.us.loopexit84.i.i, %.split.us.loopexit.i.i
  %.sroa.0.0.i.i = phi i64 [ %i.by, %.split.us.loopexit84.i.i ], [ %i.bx, %.split.us.loopexit.i.i ], !dbg !180793 ; 5 uses
  %.not7.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.15.099194, !dbg !180794
  br i1 %.not7.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1612split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, label %bb.ag, !dbg !180794

bb.ag:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMB8_SB1x_16sort_unstable_byNvYB1x_NtNtB1B_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.trap(), !dbg !180795
  unreachable, !dbg !180795

_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1612split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMB8_SB1x_16sort_unstable_byNvYB1x_NtNtB1B_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1614swap_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %.sroa.0.0100193, i64 noundef range(i64 33, 4611686018427387904) %.sroa.15.099194, i64 noundef 0, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19), !dbg !180796
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0100193, i64 %.sroa.0.0.i.i, !dbg !180797 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2, !dbg !180798
  %i.cr = xor i64 %.sroa.0.0.i.i, -1, !dbg !180799
  %i.cs = add i64 %.sroa.15.099194, %i.cr, !dbg !180799
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMB8_SB17_16sort_unstable_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %.sroa.0.0100193, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %.sroa.023.098195, i32 noundef %i.d, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !180800
  br label %.backedge, !dbg !180801

bb.ah:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMB8_SB15_16sort_unstable_byNvYB15_NtNtB19_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0100193, i64 %i.ab, !dbg !180802
  %.sroa.023.0.val = load i16, ptr %.sroa.023.098195, align 2, !dbg !180803, !alias.scope !4401, !noalias !4402, !noundef !3972 ; 4 uses
  %.val = load i16, ptr %i.ct, align 2, !dbg !180803 ; 5 uses
  %i.cu = and i16 %.sroa.023.0.val, 32767, !dbg !180804 ; 2 uses
  %i.cv = icmp samesign ugt i16 %i.cu, 31744, !dbg !180804
  br i1 %i.cv, label %bb.an, label %bb.ai, !dbg !180805

bb.ai:                                            ; preds = %bb.ah
  %i.cw = and i16 %.val, 32767, !dbg !180806
  %i.cx = icmp samesign ugt i16 %i.cw, 31744, !dbg !180806
  br i1 %i.cx, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1616sort_unstable_byNvYBx_NtNtBB_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.aj, !dbg !180807

bb.aj:                                            ; preds = %bb.ai
  %.not.i4.i.i = icmp sgt i16 %.val, -1, !dbg !180808 ; 2 uses
  %i.cy = icmp sgt i16 %.sroa.023.0.val, -1, !dbg !180809
  br i1 %i.cy, label %bb.ak, label %bb.al, !dbg !180809

bb.ak:                                            ; preds = %bb.aj
  %.not22.i.i = icmp samesign ult i16 %.sroa.023.0.val, %.val
  %or.cond.i41 = select i1 %.not.i4.i.i, i1 %.not22.i.i, i1 false, !dbg !180809
  br i1 %or.cond.i41, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1616sort_unstable_byNvYBx_NtNtBB_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.an, !dbg !180809

bb.al:                                            ; preds = %bb.aj
  br i1 %.not.i4.i.i, label %.split.i.i, label %bb.am, !dbg !180809

.split.i.i:                                       ; preds = %bb.al
  %i.cz = or i16 %i.cu, %.val, !dbg !180810
  %.not.i.i = icmp eq i16 %i.cz, 0, !dbg !180810
  br i1 %.not.i.i, label %bb.an, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1616sort_unstable_byNvYBx_NtNtBB_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit.thread, !dbg !180811

bb.am:                                            ; preds = %bb.al
  %.not21.i.i = icmp samesign ult i16 %.val, %.sroa.023.0.val, !dbg !180812
  br i1 %.not21.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1616sort_unstable_byNvYBx_NtNtBB_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.an, !dbg !180811

bb.an:                                            ; preds = %bb.ah, %bb.ak, %.split.i.i, %bb.am
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1614swap_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %.sroa.0.0100193, i64 noundef range(i64 33, 4611686018427387904) %.sroa.15.099194, i64 noundef 0, i64 noundef range(i64 0, 4611686018427387903) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18), !dbg !180813
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0100193, i64 2, !dbg !180814 ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180683), !dbg !180815
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180684), !dbg !180815
  %i.db = load i16, ptr %i.da, align 2, !dbg !180816, !alias.scope !180685, !noalias !180684, !noundef !3972 ; 5 uses
  %i.dc = getelementptr [2 x i8], ptr %.sroa.0.0100193, i64 %.sroa.15.099194, !dbg !180817 ; 5 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 -2, !dbg !180817 ; 3 uses
  %.sroa.13.053.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0100193, i64 4, !dbg !180818 ; 6 uses
  %i.de = icmp ult ptr %.sroa.13.053.i.i, %i.dd, !dbg !180819
  %.val1.i.pre.i.i43 = load i16, ptr %.sroa.0.0100193, align 2, !alias.scope !180686, !noalias !180683 ; 9 uses
  %i.df = and i16 %.val1.i.pre.i.i43, 32767       ; 5 uses
  br i1 %i.de, label %.lr.ph.i.i60, label %.preheader.i.i44, !dbg !180819

.lr.ph.i.i60:                                     ; preds = %bb.an
  %i.dg = icmp samesign ugt i16 %i.df, 31744
  br i1 %i.dg, label %.thread9.i.i.i.i25.us.i.i.preheader, label %.lr.ph.split.i.i

.thread9.i.i.i.i25.us.i.i.preheader:              ; preds = %.lr.ph.i.i60
  %i.dh = shl i64 %.sroa.15.099194, 1, !dbg !180819
  %i.di = add i64 %i.dh, -8, !dbg !180819
  %i.dj = lshr i64 %i.di, 2, !dbg !180819         ; 2 uses
  %i.dk = add nuw nsw i64 %i.dj, 1, !dbg !180819  ; 2 uses
  %i.dl = icmp eq i64 %i.dj, 0, !dbg !180819
  br i1 %i.dl, label %.thread9.i.i.i.i25.us.i.i.epil.preheader, label %.thread9.i.i.i.i25.us.i.i.preheader.new, !dbg !180819

.thread9.i.i.i.i25.us.i.i.preheader.new:          ; preds = %.thread9.i.i.i.i25.us.i.i.preheader
  %unroll_iter = and i64 %i.dk, 9223372036854775806, !dbg !180819
  br label %.thread9.i.i.i.i25.us.i.i, !dbg !180819

.thread9.i.i.i.i25.us.i.i:                        ; preds = %.thread9.i.i.i.i25.us.i.i, %.thread9.i.i.i.i25.us.i.i.preheader.new
  %.sroa.13.056.us.i.i = phi ptr [ %.sroa.13.053.i.i, %.thread9.i.i.i.i25.us.i.i.preheader.new ], [ %.sroa.13.0.us.i.i.1, %.thread9.i.i.i.i25.us.i.i ] ; 2 uses
  %.sroa.031.055.us.i.i = phi ptr [ %i.da, %.thread9.i.i.i.i25.us.i.i.preheader.new ], [ %i.du, %.thread9.i.i.i.i25.us.i.i ] ; 5 uses
  %.sroa.23.054.us.i.i = phi i64 [ 0, %.thread9.i.i.i.i25.us.i.i.preheader.new ], [ %i.dx, %.thread9.i.i.i.i25.us.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.thread9.i.i.i.i25.us.i.i.preheader.new ], [ %niter.next.1, %.thread9.i.i.i.i25.us.i.i ]
  %.val.i11.us.i.i = load i16, ptr %.sroa.13.056.us.i.i, align 2, !dbg !180820, !alias.scope !180685, !noalias !180687
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %.sroa.23.054.us.i.i, !dbg !180821 ; 3 uses
  %i.dn = load i16, ptr %i.dm, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %i.dn, ptr %.sroa.031.055.us.i.i, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %.val.i11.us.i.i, ptr %i.dm, align 2, !dbg !180823, !alias.scope !180685, !noalias !180687
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.031.055.us.i.i, i64 4, !dbg !180824 ; 2 uses
  %.val.i21.us.i.i = load i16, ptr %i.do, align 2, !dbg !180825, !alias.scope !180685, !noalias !180688
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 2, !dbg !180826 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !dbg !180827, !alias.scope !180685, !noalias !180688
  store i16 %i.dq, ptr %.sroa.13.056.us.i.i, align 2, !dbg !180827, !alias.scope !180685, !noalias !180688
  store i16 %.val.i21.us.i.i, ptr %i.dp, align 2, !dbg !180828, !alias.scope !180685, !noalias !180688
  %.sroa.13.0.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.031.055.us.i.i, i64 6, !dbg !180818 ; 2 uses
  %.val.i11.us.i.i.1 = load i16, ptr %.sroa.13.0.us.i.i, align 2, !dbg !180820, !alias.scope !180685, !noalias !180687
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %.sroa.23.054.us.i.i, !dbg !180821 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4, !dbg !180821 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %i.dt, ptr %i.do, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %.val.i11.us.i.i.1, ptr %i.ds, align 2, !dbg !180823, !alias.scope !180685, !noalias !180687
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.031.055.us.i.i, i64 8, !dbg !180824 ; 4 uses
  %.val.i21.us.i.i.1 = load i16, ptr %i.du, align 2, !dbg !180825, !alias.scope !180685, !noalias !180688
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 6, !dbg !180826 ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 2, !dbg !180827, !alias.scope !180685, !noalias !180688
  store i16 %i.dw, ptr %.sroa.13.0.us.i.i, align 2, !dbg !180827, !alias.scope !180685, !noalias !180688
  store i16 %.val.i21.us.i.i.1, ptr %i.dv, align 2, !dbg !180828, !alias.scope !180685, !noalias !180688
  %i.dx = add nuw nsw i64 %.sroa.23.054.us.i.i, 4, !dbg !180829 ; 3 uses
  %.sroa.13.0.us.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.031.055.us.i.i, i64 10, !dbg !180818 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !180819 ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !180819
  br i1 %niter.ncmp.1.not, label %.thread9.i.i.i.i.us.preheader.i.i.loopexit.unr-lcssa, label %.thread9.i.i.i.i25.us.i.i, !dbg !180819

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i60
  %i.dy = icmp sgt i16 %.val1.i.pre.i.i43, -1
  br i1 %i.dy, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i61

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i
  %.sroa.13.056.us61.i.i = phi ptr [ %.sroa.13.0.us67.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i ], [ %.sroa.13.053.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %.sroa.031.055.us62.i.i = phi ptr [ %i.ei, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i ], [ %i.da, %.lr.ph.split.i.i ] ; 4 uses
  %.sroa.23.054.us63.i.i = phi i64 [ %i.en, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i ], [ 0, %.lr.ph.split.i.i ] ; 4 uses
  %.val.i11.us64.i.i = load i16, ptr %.sroa.13.056.us61.i.i, align 2, !dbg !180820, !alias.scope !180685, !noalias !180687 ; 6 uses
  %i.dz = and i16 %.val.i11.us64.i.i, 32767, !dbg !180830
  %i.ea = icmp samesign ugt i16 %i.dz, 31744, !dbg !180830
  br i1 %i.ea, label %.thread.us.i.i, label %bb.ao, !dbg !180831

bb.ao:                                            ; preds = %.lr.ph.split.split.us.i.i
  %.not.i4.i.i.i.i13.us.i.i = icmp sgt i16 %.val.i11.us64.i.i, -1, !dbg !180832
  %.not22.i.i.i.i18.us.i.i = icmp samesign ult i16 %.val1.i.pre.i.i43, %.val.i11.us64.i.i
  %or.cond.i.i.i19.us.i.i = select i1 %.not.i4.i.i.i.i13.us.i.i, i1 %.not22.i.i.i.i18.us.i.i, i1 false, !dbg !180833
  br i1 %or.cond.i.i.i19.us.i.i, label %.thread.us.i.i, label %.thread51.us.i.i, !dbg !180833

.thread51.us.i.i:                                 ; preds = %bb.ao
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %.sroa.23.054.us63.i.i, !dbg !180821 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %i.ec, ptr %.sroa.031.055.us62.i.i, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %.val.i11.us64.i.i, ptr %i.eb, align 2, !dbg !180823, !alias.scope !180685, !noalias !180687
  %i.ed = add i64 %.sroa.23.054.us63.i.i, 1, !dbg !180834 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.ed
  %.pre.i64 = load i16, ptr %.phi.trans.insert.i, align 2, !dbg !180827, !alias.scope !180685, !noalias !180688
  br label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i, !dbg !180835

.thread.us.i.i:                                   ; preds = %bb.ao, %.lr.ph.split.split.us.i.i
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %.sroa.23.054.us63.i.i, !dbg !180821 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %i.ef, ptr %.sroa.031.055.us62.i.i, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %.val.i11.us64.i.i, ptr %i.ee, align 2, !dbg !180823, !alias.scope !180685, !noalias !180687
  br label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i, !dbg !180835

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i: ; preds = %.thread.us.i.i, %.thread51.us.i.i
  %i.eg = phi i16 [ %.val.i11.us64.i.i, %.thread.us.i.i ], [ %.pre.i64, %.thread51.us.i.i ], !dbg !180827
  %i.eh = phi i64 [ %.sroa.23.054.us63.i.i, %.thread.us.i.i ], [ %i.ed, %.thread51.us.i.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.031.055.us62.i.i, i64 4, !dbg !180824 ; 3 uses
  %.val.i2147.us.i.i = load i16, ptr %i.ei, align 2, !dbg !180825, !alias.scope !180685, !noalias !180684 ; 4 uses
  %i.ej = and i16 %.val.i2147.us.i.i, 32767, !dbg !180836
  %i.ek = icmp samesign ult i16 %i.ej, 31745, !dbg !180836
  %.not.i4.i.i.i.i23.us.i.i = icmp slt i16 %.val.i2147.us.i.i, 0, !dbg !180837
  %.not22.i.i.i.i28.us.i.i = icmp samesign uge i16 %.val1.i.pre.i.i43, %.val.i2147.us.i.i, !dbg !180837
  %or.cond.i.i.i29.us.not.i.i = select i1 %.not.i4.i.i.i.i23.us.i.i, i1 true, i1 %.not22.i.i.i.i28.us.i.i, !dbg !180837
  %narrow131.i.i = select i1 %i.ek, i1 %or.cond.i.i.i29.us.not.i.i, i1 false, !dbg !180837
  %i.el = zext i1 %narrow131.i.i to i64, !dbg !180837
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.eh, !dbg !180826
  store i16 %i.eg, ptr %.sroa.13.056.us61.i.i, align 2, !dbg !180827, !alias.scope !180685, !noalias !180688
  store i16 %.val.i2147.us.i.i, ptr %i.em, align 2, !dbg !180828, !alias.scope !180685, !noalias !180688
  %i.en = add i64 %i.eh, %i.el, !dbg !180829      ; 2 uses
  %.sroa.13.0.us67.i.i = getelementptr inbounds nuw i8, ptr %.sroa.031.055.us62.i.i, i64 6, !dbg !180818 ; 3 uses
  %i.eo = icmp ult ptr %.sroa.13.0.us67.i.i, %i.dd, !dbg !180819
  br i1 %i.eo, label %.lr.ph.split.split.us.i.i, label %.preheader.i.i44, !dbg !180819

.preheader.i.i44:                                 ; preds = %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i, %bb.an
  %.sroa.23.0.lcssa.i.i45 = phi i64 [ %i.en, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i ], [ 0, %bb.an ], [ %i.go, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i ], !dbg !180818 ; 3 uses
  %.sroa.031.0.lcssa.i.i = phi ptr [ %i.ei, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i ], [ %i.da, %bb.an ], [ %i.gh, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i ], !dbg !180818 ; 3 uses
  %.sroa.13.0.lcssa.i.i46 = phi ptr [ %.sroa.13.0.us67.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.us66.i.i ], [ %.sroa.13.053.i.i, %bb.an ], [ %.sroa.13.0.i.i63, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i ], !dbg !180818 ; 3 uses
  %i.ep = icmp samesign ugt i16 %i.df, 31744
  br i1 %i.ep, label %.thread9.i.i.i.i.us.preheader.i.i, label %.preheader.split.i.i47

.thread9.i.i.i.i.us.preheader.i.i.loopexit.unr-lcssa: ; preds = %.thread9.i.i.i.i25.us.i.i
  %i.eq = and i64 %.sroa.15.099194, 2, !dbg !180819
  %lcmp.mod.not.not = icmp eq i64 %i.eq, 0, !dbg !180819
  br i1 %lcmp.mod.not.not, label %.thread9.i.i.i.i25.us.i.i.epil.preheader, label %.thread9.i.i.i.i.us.preheader.i.i, !dbg !180819

.thread9.i.i.i.i25.us.i.i.epil.preheader:         ; preds = %.thread9.i.i.i.i.us.preheader.i.i.loopexit.unr-lcssa, %.thread9.i.i.i.i25.us.i.i.preheader
  %.sroa.13.056.us.i.i.epil.init = phi ptr [ %.sroa.13.053.i.i, %.thread9.i.i.i.i25.us.i.i.preheader ], [ %.sroa.13.0.us.i.i.1, %.thread9.i.i.i.i.us.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.031.055.us.i.i.epil.init = phi ptr [ %i.da, %.thread9.i.i.i.i25.us.i.i.preheader ], [ %i.du, %.thread9.i.i.i.i.us.preheader.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.23.054.us.i.i.epil.init = phi i64 [ 0, %.thread9.i.i.i.i25.us.i.i.preheader ], [ %i.dx, %.thread9.i.i.i.i.us.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod224 = trunc i64 %i.dk to i1, !dbg !180819
  tail call void @llvm.assume(i1 %lcmp.mod224), !dbg !180819
  %.val.i11.us.i.i.epil = load i16, ptr %.sroa.13.056.us.i.i.epil.init, align 2, !dbg !180820, !alias.scope !180685, !noalias !180687
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %.sroa.23.054.us.i.i.epil.init, !dbg !180821 ; 3 uses
  %i.es = load i16, ptr %i.er, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %i.es, ptr %.sroa.031.055.us.i.i.epil.init, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %.val.i11.us.i.i.epil, ptr %i.er, align 2, !dbg !180823, !alias.scope !180685, !noalias !180687
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.031.055.us.i.i.epil.init, i64 4, !dbg !180824 ; 2 uses
  %.val.i21.us.i.i.epil = load i16, ptr %i.et, align 2, !dbg !180825, !alias.scope !180685, !noalias !180688
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 2, !dbg !180826 ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2, !dbg !180827, !alias.scope !180685, !noalias !180688
  store i16 %i.ev, ptr %.sroa.13.056.us.i.i.epil.init, align 2, !dbg !180827, !alias.scope !180685, !noalias !180688
  store i16 %.val.i21.us.i.i.epil, ptr %i.eu, align 2, !dbg !180828, !alias.scope !180685, !noalias !180688
  %i.ew = add nuw nsw i64 %.sroa.23.054.us.i.i.epil.init, 2, !dbg !180829
  %.sroa.13.0.us.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.031.055.us.i.i.epil.init, i64 6, !dbg !180818
  br label %.thread9.i.i.i.i.us.preheader.i.i, !dbg !180838

.thread9.i.i.i.i.us.preheader.i.i:                ; preds = %.thread9.i.i.i.i25.us.i.i.epil.preheader, %.thread9.i.i.i.i.us.preheader.i.i.loopexit.unr-lcssa, %.preheader.i.i44
  %.sroa.13.0.lcssa115.i.i = phi ptr [ %.sroa.13.0.lcssa.i.i46, %.preheader.i.i44 ], [ %.sroa.13.0.us.i.i.1, %.thread9.i.i.i.i.us.preheader.i.i.loopexit.unr-lcssa ], [ %.sroa.13.0.us.i.i.epil, %.thread9.i.i.i.i25.us.i.i.epil.preheader ] ; 2 uses
  %.sroa.031.0.lcssa114.i.i = phi ptr [ %.sroa.031.0.lcssa.i.i, %.preheader.i.i44 ], [ %i.du, %.thread9.i.i.i.i.us.preheader.i.i.loopexit.unr-lcssa ], [ %i.et, %.thread9.i.i.i.i25.us.i.i.epil.preheader ]
  %.sroa.23.0.lcssa113.i.i = phi i64 [ %.sroa.23.0.lcssa.i.i45, %.preheader.i.i44 ], [ %i.dx, %.thread9.i.i.i.i.us.preheader.i.i.loopexit.unr-lcssa ], [ %i.ew, %.thread9.i.i.i.i25.us.i.i.epil.preheader ] ; 3 uses
  %i.ex = icmp eq ptr %.sroa.13.0.lcssa115.i.i, %i.dc, !dbg !180838
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %.sroa.23.0.lcssa113.i.i, !dbg !180839 ; 3 uses
  %i.ez = load i16, ptr %i.ey, align 2, !dbg !180840, !alias.scope !180685, !noalias !180689
  store i16 %i.ez, ptr %.sroa.031.0.lcssa114.i.i, align 2, !dbg !180840, !alias.scope !180685, !noalias !180689
  br i1 %i.ex, label %.split.us.loopexit.i.i58, label %.thread9.i.i.i.i.us.cont.i.i, !dbg !180841

.thread9.i.i.i.i.us.cont.i.i:                     ; preds = %.thread9.i.i.i.i.us.preheader.i.i, %.thread9.i.i.i.i.us.cont.i.i
  %i.fa = phi ptr [ %i.fd, %.thread9.i.i.i.i.us.cont.i.i ], [ %i.ey, %.thread9.i.i.i.i.us.preheader.i.i ]
  %.sroa.13.1.us.i16.i = phi ptr [ %.sroa.13.1.sroa.gep.us.i.i57, %.thread9.i.i.i.i.us.cont.i.i ], [ %.sroa.13.0.lcssa115.i.i, %.thread9.i.i.i.i.us.preheader.i.i ] ; 3 uses
  %.sroa.23.1.us.i15.i = phi i64 [ %i.fb, %.thread9.i.i.i.i.us.cont.i.i ], [ %.sroa.23.0.lcssa113.i.i, %.thread9.i.i.i.i.us.preheader.i.i ]
  %.else.val100.i.i = load i16, ptr %.sroa.13.1.us.i16.i, align 2, !dbg !180841, !alias.scope !180685, !noalias !180689
  store i16 %.else.val100.i.i, ptr %i.fa, align 2, !dbg !180841, !alias.scope !180685, !noalias !180689
  %i.fb = add i64 %.sroa.23.1.us.i15.i, 1, !dbg !180842 ; 3 uses
  %.sroa.13.1.sroa.gep.us.i.i57 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.us.i16.i, i64 2, !dbg !180843 ; 2 uses
  %i.fc = icmp eq ptr %.sroa.13.1.sroa.gep.us.i.i57, %i.dc, !dbg !180838
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.fb, !dbg !180839 ; 3 uses
  %i.fe = load i16, ptr %i.fd, align 2, !dbg !180840, !alias.scope !180685, !noalias !180689
  store i16 %i.fe, ptr %.sroa.13.1.us.i16.i, align 2, !dbg !180840, !alias.scope !180685, !noalias !180689
  br i1 %i.fc, label %.split.us.loopexit.i.i58, label %.thread9.i.i.i.i.us.cont.i.i, !dbg !180841

.preheader.split.i.i47:                           ; preds = %.preheader.i.i44
  %i.ff = icmp sgt i16 %.val1.i.pre.i.i43, -1
  br i1 %i.ff, label %.preheader.split.split.us.i.i, label %.preheader.split.split.i.i

.preheader.split.split.us.i.i:                    ; preds = %.preheader.split.i.i47, %.preheader.split.split.us.cont.i.i
  %.sroa.23.1.us75.i.i = phi i64 [ %i.fm, %.preheader.split.split.us.cont.i.i ], [ %.sroa.23.0.lcssa.i.i45, %.preheader.split.i.i47 ], !dbg !180818 ; 3 uses
  %.sroa.13.1.us76.i.i = phi ptr [ %.sroa.13.1.sroa.gep.us81.i.i, %.preheader.split.split.us.cont.i.i ], [ %.sroa.13.0.lcssa.i.i46, %.preheader.split.i.i47 ], !dbg !180818 ; 5 uses
  %.sroa.031.1.us77.i.i = phi ptr [ %.sroa.13.1.us76.i.i, %.preheader.split.split.us.cont.i.i ], [ %.sroa.031.0.lcssa.i.i, %.preheader.split.i.i47 ], !dbg !180818
  %i.fg = icmp eq ptr %.sroa.13.1.us76.i.i, %i.dc, !dbg !180838 ; 2 uses
  br i1 %i.fg, label %.preheader.split.split.us.cont97.i.i, label %.preheader.split.split.us.else98.i.i, !dbg !180844

.preheader.split.split.us.else98.i.i:             ; preds = %.preheader.split.split.us.i.i
  %.val.i.us79.else.val.i.i = load i16, ptr %.sroa.13.1.us76.i.i, align 2, !dbg !180844, !alias.scope !180685, !noalias !180689
  br label %.preheader.split.split.us.cont97.i.i, !dbg !180844

.preheader.split.split.us.cont97.i.i:             ; preds = %.preheader.split.split.us.else98.i.i, %.preheader.split.split.us.i.i
  %.val.i.us79.i.i = phi i16 [ %i.db, %.preheader.split.split.us.i.i ], [ %.val.i.us79.else.val.i.i, %.preheader.split.split.us.else98.i.i ] ; 3 uses
  %i.fh = and i16 %.val.i.us79.i.i, 32767, !dbg !180845
  %i.fi = icmp samesign ult i16 %i.fh, 31745, !dbg !180845
  %.not.i4.i.i.i.i.us.i.i = icmp slt i16 %.val.i.us79.i.i, 0, !dbg !180846
  %.not22.i.i.i.i.us.i.i = icmp samesign uge i16 %.val1.i.pre.i.i43, %.val.i.us79.i.i, !dbg !180846
  %or.cond.i.i.i.us.not.i.i = select i1 %.not.i4.i.i.i.i.us.i.i, i1 true, i1 %.not22.i.i.i.i.us.i.i, !dbg !180846
  %narrow.i.i = select i1 %i.fi, i1 %or.cond.i.i.i.us.not.i.i, i1 false, !dbg !180846
  %i.fj = zext i1 %narrow.i.i to i64, !dbg !180846 ; 2 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %.sroa.23.1.us75.i.i, !dbg !180839 ; 3 uses
  %i.fl = load i16, ptr %i.fk, align 2, !dbg !180840, !alias.scope !180685, !noalias !180689
  store i16 %i.fl, ptr %.sroa.031.1.us77.i.i, align 2, !dbg !180840, !alias.scope !180685, !noalias !180689
  br i1 %i.fg, label %.split.us.loopexit84.i.i56, label %.preheader.split.split.us.cont.i.i, !dbg !180841

.preheader.split.split.us.cont.i.i:               ; preds = %.preheader.split.split.us.cont97.i.i
  %.else.val.i.i = load i16, ptr %.sroa.13.1.us76.i.i, align 2, !dbg !180841, !alias.scope !180685, !noalias !180689
  store i16 %.else.val.i.i, ptr %i.fk, align 2, !dbg !180841, !alias.scope !180685, !noalias !180689
  %i.fm = add i64 %.sroa.23.1.us75.i.i, %i.fj, !dbg !180842
  %.sroa.13.1.sroa.gep.us81.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.us76.i.i, i64 2, !dbg !180843
  br label %.preheader.split.split.us.i.i, !dbg !180847

.preheader.split.split.i.i:                       ; preds = %.preheader.split.i.i47, %.cont.i.i52
  %.sroa.23.1.i.i48 = phi i64 [ %i.fu, %.cont.i.i52 ], [ %.sroa.23.0.lcssa.i.i45, %.preheader.split.i.i47 ], !dbg !180818 ; 3 uses
  %.sroa.13.1.i.i49 = phi ptr [ %.sroa.13.1.sroa.gep.i.i53, %.cont.i.i52 ], [ %.sroa.13.0.lcssa.i.i46, %.preheader.split.i.i47 ], !dbg !180818 ; 5 uses
  %.sroa.031.1.i.i = phi ptr [ %.sroa.13.1.i.i49, %.cont.i.i52 ], [ %.sroa.031.0.lcssa.i.i, %.preheader.split.i.i47 ], !dbg !180818
  %i.fn = icmp eq ptr %.sroa.13.1.i.i49, %i.dc, !dbg !180838 ; 2 uses
  br i1 %i.fn, label %.preheader.split.split.cont.i.i, label %.preheader.split.split.else.i.i, !dbg !180844

.preheader.split.split.else.i.i:                  ; preds = %.preheader.split.split.i.i
  %.val.i.else.val.i.i50 = load i16, ptr %.sroa.13.1.i.i49, align 2, !dbg !180844, !alias.scope !180685, !noalias !180689
  br label %.preheader.split.split.cont.i.i, !dbg !180844

.preheader.split.split.cont.i.i:                  ; preds = %.preheader.split.split.else.i.i, %.preheader.split.split.i.i
  %.val.i.i.i51 = phi i16 [ %i.db, %.preheader.split.split.i.i ], [ %.val.i.else.val.i.i50, %.preheader.split.split.else.i.i ] ; 4 uses
  %i.fo = and i16 %.val.i.i.i51, 32767, !dbg !180845
  %i.fp = icmp samesign ugt i16 %i.fo, 31744, !dbg !180845
  br i1 %i.fp, label %bb.ar, label %bb.ap, !dbg !180846

bb.ap:                                            ; preds = %.preheader.split.split.cont.i.i
  %.not.i4.i.i.i.i.i.i = icmp sgt i16 %.val.i.i.i51, -1, !dbg !180848
  br i1 %.not.i4.i.i.i.i.i.i, label %.split.i.i.i.i.i.i, label %bb.aq, !dbg !180849

.split.i.i.i.i.i.i:                               ; preds = %bb.ap
  %i.fq = or i16 %.val.i.i.i51, %i.df, !dbg !180850
  %.not.i.i.i.i.i.i = icmp eq i16 %i.fq, 0, !dbg !180850
  br i1 %.not.i.i.i.i.i.i, label %.thread9.i.i.i.i.i.i, label %bb.ar, !dbg !180851

bb.aq:                                            ; preds = %bb.ap
  %.not21.i.i.i.i.i.i = icmp samesign ult i16 %.val.i.i.i51, %.val1.i.pre.i.i43, !dbg !180852
  br i1 %.not21.i.i.i.i.i.i, label %bb.ar, label %.thread9.i.i.i.i.i.i, !dbg !180851

.thread9.i.i.i.i.i.i:                             ; preds = %bb.aq, %.split.i.i.i.i.i.i
  br label %bb.ar, !dbg !180853

bb.ar:                                            ; preds = %.thread9.i.i.i.i.i.i, %bb.aq, %.split.i.i.i.i.i.i, %.preheader.split.split.cont.i.i
  %i.fr = phi i64 [ 0, %bb.aq ], [ 1, %.thread9.i.i.i.i.i.i ], [ 0, %.preheader.split.split.cont.i.i ], [ 0, %.split.i.i.i.i.i.i ], !dbg !180845 ; 2 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %.sroa.23.1.i.i48, !dbg !180839 ; 3 uses
  %i.ft = load i16, ptr %i.fs, align 2, !dbg !180840, !alias.scope !180685, !noalias !180689
  store i16 %i.ft, ptr %.sroa.031.1.i.i, align 2, !dbg !180840, !alias.scope !180685, !noalias !180689
  br i1 %i.fn, label %.split.us.loopexit85.i.i, label %.cont.i.i52, !dbg !180841

.cont.i.i52:                                      ; preds = %bb.ar
  %.else.val102.i.i = load i16, ptr %.sroa.13.1.i.i49, align 2, !dbg !180841, !alias.scope !180685, !noalias !180689
  store i16 %.else.val102.i.i, ptr %i.fs, align 2, !dbg !180841, !alias.scope !180685, !noalias !180689
  %i.fu = add i64 %i.fr, %.sroa.23.1.i.i48, !dbg !180842
  %.sroa.13.1.sroa.gep.i.i53 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i49, i64 2, !dbg !180843
  br label %.preheader.split.split.i.i, !dbg !180847

.split.us.loopexit.i.i58:                         ; preds = %.thread9.i.i.i.i.us.cont.i.i, %.thread9.i.i.i.i.us.preheader.i.i
  %.sroa.23.1.us.i.lcssa.i59 = phi i64 [ %.sroa.23.0.lcssa113.i.i, %.thread9.i.i.i.i.us.preheader.i.i ], [ %i.fb, %.thread9.i.i.i.i.us.cont.i.i ], !dbg !180818
  %.lcssa.i = phi ptr [ %i.ey, %.thread9.i.i.i.i.us.preheader.i.i ], [ %i.fd, %.thread9.i.i.i.i.us.cont.i.i ], !dbg !180839
  store i16 %i.db, ptr %.lcssa.i, align 2, !dbg !180841, !alias.scope !180685, !noalias !180689
  %i.fv = add i64 %.sroa.23.1.us.i.lcssa.i59, 1, !dbg !180842
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNvYB1x_NtNtB1B_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !180854

.split.us.loopexit84.i.i56:                       ; preds = %.preheader.split.split.us.cont97.i.i
  store i16 %i.db, ptr %i.fk, align 2, !dbg !180841, !alias.scope !180685, !noalias !180689
  %i.fw = add i64 %.sroa.23.1.us75.i.i, %i.fj, !dbg !180842
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNvYB1x_NtNtB1B_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !180854

.split.us.loopexit85.i.i:                         ; preds = %bb.ar
  store i16 %i.db, ptr %i.fs, align 2, !dbg !180841, !alias.scope !180685, !noalias !180689
  %i.fx = add i64 %i.fr, %.sroa.23.1.i.i48, !dbg !180842
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNvYB1x_NtNtB1B_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !180854

.lr.ph.split.split.i.i61:                         ; preds = %.lr.ph.split.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i
  %.sroa.13.056.i.i = phi ptr [ %.sroa.13.0.i.i63, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i ], [ %.sroa.13.053.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %.sroa.031.055.i.i = phi ptr [ %i.gh, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i ], [ %i.da, %.lr.ph.split.i.i ] ; 4 uses
  %.sroa.23.054.i.i = phi i64 [ %i.go, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i ], [ 0, %.lr.ph.split.i.i ] ; 4 uses
  %.val.i11.i.i62 = load i16, ptr %.sroa.13.056.i.i, align 2, !dbg !180820, !alias.scope !180685, !noalias !180687 ; 6 uses
  %i.fy = and i16 %.val.i11.i.i62, 32767, !dbg !180830
  %i.fz = icmp samesign ugt i16 %i.fy, 31744, !dbg !180830
  br i1 %i.fz, label %.thread.i.i, label %bb.as, !dbg !180831

bb.as:                                            ; preds = %.lr.ph.split.split.i.i61
  %.not.i4.i.i.i.i13.i.i = icmp sgt i16 %.val.i11.i.i62, -1, !dbg !180832
  br i1 %.not.i4.i.i.i.i13.i.i, label %.split.i.i.i.i16.i.i, label %bb.at, !dbg !180833

.split.i.i.i.i16.i.i:                             ; preds = %bb.as
  %i.ga = or i16 %.val.i11.i.i62, %i.df, !dbg !180855
  %.not.i.i.i.i17.i.i = icmp eq i16 %i.ga, 0, !dbg !180855
  br i1 %.not.i.i.i.i17.i.i, label %.thread51.i.i, label %.thread.i.i, !dbg !180856

bb.at:                                            ; preds = %bb.as
  %.not21.i.i.i.i14.i.i = icmp samesign ult i16 %.val.i11.i.i62, %.val1.i.pre.i.i43, !dbg !180857
  br i1 %.not21.i.i.i.i14.i.i, label %.thread.i.i, label %.thread51.i.i, !dbg !180856

.thread.i.i:                                      ; preds = %bb.at, %.split.i.i.i.i16.i.i, %.lr.ph.split.split.i.i61
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %.sroa.23.054.i.i, !dbg !180821 ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %i.gc, ptr %.sroa.031.055.i.i, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %.val.i11.i.i62, ptr %i.gb, align 2, !dbg !180823, !alias.scope !180685, !noalias !180687
  br label %bb.au, !dbg !180835

.thread51.i.i:                                    ; preds = %bb.at, %.split.i.i.i.i16.i.i
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %.sroa.23.054.i.i, !dbg !180821 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %i.ge, ptr %.sroa.031.055.i.i, align 2, !dbg !180822, !alias.scope !180685, !noalias !180687
  store i16 %.val.i11.i.i62, ptr %i.gd, align 2, !dbg !180823, !alias.scope !180685, !noalias !180687
  %i.gf = add i64 %.sroa.23.054.i.i, 1, !dbg !180834
  br label %bb.au, !dbg !180835

bb.au:                                            ; preds = %.thread51.i.i, %.thread.i.i
  %i.gg = phi i64 [ %.sroa.23.054.i.i, %.thread.i.i ], [ %i.gf, %.thread51.i.i ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.031.055.i.i, i64 4, !dbg !180824 ; 3 uses
  %.val.i2147.i.i = load i16, ptr %i.gh, align 2, !dbg !180825, !alias.scope !180685, !noalias !180684 ; 5 uses
  %i.gi = and i16 %.val.i2147.i.i, 32767, !dbg !180836
  %i.gj = icmp samesign ugt i16 %i.gi, 31744, !dbg !180836
  br i1 %i.gj, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i, label %bb.av, !dbg !180837

bb.av:                                            ; preds = %bb.au
  %.not.i4.i.i.i.i23.i.i = icmp sgt i16 %.val.i2147.i.i, -1, !dbg !180858
  br i1 %.not.i4.i.i.i.i23.i.i, label %.split.i.i.i.i26.i.i, label %bb.aw, !dbg !180859

.split.i.i.i.i26.i.i:                             ; preds = %bb.av
  %i.gk = or i16 %.val.i2147.i.i, %i.df, !dbg !180860
  %.not.i.i.i.i27.i.i = icmp eq i16 %i.gk, 0, !dbg !180860
  br i1 %.not.i.i.i.i27.i.i, label %.thread9.i.i.i.i25.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i, !dbg !180861

bb.aw:                                            ; preds = %bb.av
  %.not21.i.i.i.i24.i.i = icmp samesign ult i16 %.val.i2147.i.i, %.val1.i.pre.i.i43, !dbg !180862
  br i1 %.not21.i.i.i.i24.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i, label %.thread9.i.i.i.i25.i.i, !dbg !180861

.thread9.i.i.i.i25.i.i:                           ; preds = %bb.aw, %.split.i.i.i.i26.i.i
  br label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i, !dbg !180863

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNvYB1z_NtNtB1D_9total_ord8TotalOrd7tot_cmpE0E0E0Cs1LHh8CLbVkQ_11polars_core.exit30.i.i: ; preds = %.thread9.i.i.i.i25.i.i, %bb.aw, %.split.i.i.i.i26.i.i, %bb.au
  %i.gl = phi i64 [ 0, %bb.aw ], [ 1, %.thread9.i.i.i.i25.i.i ], [ 0, %bb.au ], [ 0, %.split.i.i.i.i26.i.i ], !dbg !180836
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.gg, !dbg !180826 ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 2, !dbg !180827, !alias.scope !180685, !noalias !180688
  store i16 %i.gn, ptr %.sroa.13.056.i.i, align 2, !dbg !180827, !alias.scope !180685, !noalias !180688
  store i16 %.val.i2147.i.i, ptr %i.gm, align 2, !dbg !180828, !alias.scope !180685, !noalias !180688
  %i.go = add i64 %i.gl, %i.gg, !dbg !180829      ; 2 uses
  %.sroa.13.0.i.i63 = getelementptr inbounds nuw i8, ptr %.sroa.031.055.i.i, i64 6, !dbg !180818 ; 3 uses
  %i.gp = icmp ult ptr %.sroa.13.0.i.i63, %i.dd, !dbg !180819
  br i1 %i.gp, label %.lr.ph.split.split.i.i61, label %.preheader.i.i44, !dbg !180819

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNvYB1x_NtNtB1B_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %.split.us.loopexit85.i.i, %.split.us.loopexit84.i.i56, %.split.us.loopexit.i.i58
end_hunk_0
