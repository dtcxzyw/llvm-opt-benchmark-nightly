Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.04?download=true
inline.NumInlined: 1009
inline.NumDeleted: 620
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsiqiOkcJdymw_7similar5types6DiffOpENCNvMs4_NtB1r_5udiffINtB29_15UnifiedDiffHunkeE12iter_changes0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB3U_13FlattenCompatppE13iter_try_fold7flattenINtNtB1r_4text15TextChangesItereEuINtNtNtBc_3ops12control_flow11ControlFlowINtB1p_6ChangeReEENCINvNvXsi_B3U_B47_B31_8try_fold7flattenB4T_uB5r_NCINvNvB31_4find5checkB66_QNCNvNtCshFZivb7RUAJ_8ruff_dev10format_dev22diff_show_only_changes0E0E0E0B5r_EB7I_:bb.a
  br label %_RNCNvMs4_NtCsiqiOkcJdymw_7similar5udiffINtB7_15UnifiedDiffHunkeE12iter_changes0CshFZivb7RUAJ_8ruff_dev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !543, !noalias !544, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !543, !noalias !544, !noundef !4
  %i.x = add i64 %i.w, %i.m
  br label %_RNCNvMs4_NtCsiqiOkcJdymw_7similar5udiffINtB7_15UnifiedDiffHunkeE12iter_changes0CshFZivb7RUAJ_8ruff_dev.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !543, !noalias !544, !noundef !4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !543, !noalias !544, !noundef !4
  %i.ac = add i64 %i.ab, %i.z
  br label %_RNCNvMs4_NtCsiqiOkcJdymw_7similar5udiffINtB7_15UnifiedDiffHunkeE12iter_changes0CshFZivb7RUAJ_8ruff_dev.exit.i.i

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !543, !noalias !544, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !543, !noalias !544, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !543, !noalias !544, !noundef !4
  %i.aj = add i64 %i.ae, %i.m
  %i.ak = add i64 %i.ai, %i.ag
  br label %_RNCNvMs4_NtCsiqiOkcJdymw_7similar5udiffINtB7_15UnifiedDiffHunkeE12iter_changes0CshFZivb7RUAJ_8ruff_dev.exit.i.i

_RNCNvMs4_NtCsiqiOkcJdymw_7similar5udiffINtB7_15UnifiedDiffHunkeE12iter_changes0CshFZivb7RUAJ_8ruff_dev.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sink7.i.i.i.i = phi i8 [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.d ], [ 0, %bb.c ]
  %.sink5.i.i.i.i = phi i64 [ %i.aj, %bb.f ], [ %i.m, %bb.e ], [ %i.x, %bb.d ], [ %i.r, %bb.c ]
  %.sink3.i.i.i.i = phi i64 [ %i.ag, %bb.f ], [ %i.z, %bb.e ], [ %i.u, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %.sink.i.i.i.i = phi i64 [ %i.ak, %bb.f ], [ %i.ac, %bb.e ], [ %i.u, %bb.d ], [ %i.s, %bb.c ]
  store ptr %.val.i.i, ptr %3, align 8, !alias.scope !545, !noalias !546
  store i64 %i.m, ptr %.sroa.45.0..val3.sroa_idx.i.i, align 8, !alias.scope !545, !noalias !546
  store i64 %.sink5.i.i.i.i, ptr %.sroa.56.0..val3.sroa_idx.i.i, align 8, !alias.scope !545, !noalias !546
  store i64 %.sink3.i.i.i.i, ptr %.sroa.67.0..val3.sroa_idx.i.i, align 8, !alias.scope !545, !noalias !546
  store i64 %.sink.i.i.i.i, ptr %.sroa.78.0..val3.sroa_idx.i.i, align 8, !alias.scope !545, !noalias !546
  store i64 %i.m, ptr %.sroa.89.0..val3.sroa_idx.i.i, align 8, !alias.scope !545, !noalias !546
  store i64 %.sink3.i.i.i.i, ptr %.sroa.910.0..val3.sroa_idx.i.i, align 8, !alias.scope !545, !noalias !546
  store i64 %i.m, ptr %.sroa.1011.0..val3.sroa_idx.i.i, align 8, !alias.scope !545, !noalias !546
  store i64 %.sink3.i.i.i.i, ptr %.sroa.1112.0..val3.sroa_idx.i.i, align 8, !alias.scope !545, !noalias !546
  store i8 %.sink7.i.i.i.i, ptr %.sroa.1213.0..val3.sroa_idx.i.i, align 8, !alias.scope !545, !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !547
  store ptr %2, ptr %i.d, align 8, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !548
  call void @_RNvXs2_NtCsiqiOkcJdymw_7similar4textINtB5_15TextChangesItereENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %3), !noalias !549
  %i.al = load i64, ptr %i.c, align 8, !range !16, !noalias !548, !noundef !4
  %.not8.i.i.i.i.i = icmp eq i64 %i.al, 2
  br i1 %.not8.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNCNvMs4_NtCsiqiOkcJdymw_7similar5udiffINtB7_15UnifiedDiffHunkeE12iter_changes0CshFZivb7RUAJ_8ruff_dev.exit.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !548
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkINtNtCsiqiOkcJdymw_7similar5types6ChangeReEQNCNvNtCshFZivb7RUAJ_8ruff_dev10format_dev22diff_show_only_changes0E0INtB7_5FnMutTuB1L_EE8call_mutB2z_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !548
  %i.am = load i64, ptr %i.b, align 8, !range !16, !alias.scope !550, !noalias !551, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.am, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !548
  call void @_RNvXs2_NtCsiqiOkcJdymw_7similar4textINtB5_15TextChangesItereENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %3), !noalias !549
  %i.an = load i64, ptr %i.c, align 8, !range !16, !noalias !548, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %i.an, 2
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.7.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx4.i.i.i.i.i, i64 48, i1 false), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !547
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1t_8adapters3map12map_try_foldRBJ_INtNtBN_4text15TextChangesItereEuINtNtNtBa_3ops12control_flow11ControlFlowINtBL_6ChangeReEENCNvMs4_NtBN_5udiffINtB4v_15UnifiedDiffHunkeE12iter_changes0NCINvNvMsg_NtB2j_7flattenINtB5w_13FlattenCompatppE13iter_try_fold7flattenB2U_uB3r_NCINvNvXsi_B5w_B5K_B1n_8try_fold7flattenB2U_uB3r_NCINvNvB1n_4find5checkB46_QNCNvNtCshFZivb7RUAJ_8ruff_dev10format_dev22diff_show_only_changes0E0E0E0E0B3r_EB7Z_.exit

.loopexit.i:                                      ; preds = %bb.g, %_RNCNvMs4_NtCsiqiOkcJdymw_7similar5udiffINtB7_15UnifiedDiffHunkeE12iter_changes0CshFZivb7RUAJ_8ruff_dev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !547
  %i.ao = icmp eq ptr %i.j, %i.f
  br i1 %i.ao, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1t_8adapters3map12map_try_foldRBJ_INtNtBN_4text15TextChangesItereEuINtNtNtBa_3ops12control_flow11ControlFlowINtBL_6ChangeReEENCNvMs4_NtBN_5udiffINtB4v_15UnifiedDiffHunkeE12iter_changes0NCINvNvMsg_NtB2j_7flattenINtB5w_13FlattenCompatppE13iter_try_fold7flattenB2U_uB3r_NCINvNvXsi_B5w_B5K_B1n_8try_fold7flattenB2U_uB3r_NCINvNvB1n_4find5checkB46_QNCNvNtCshFZivb7RUAJ_8ruff_dev10format_dev22diff_show_only_changes0E0E0E0E0B3r_EB7Z_.exit, label %bb.b

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1t_8adapters3map12map_try_foldRBJ_INtNtBN_4text15TextChangesItereEuINtNtNtBa_3ops12control_flow11ControlFlowINtBL_6ChangeReEENCNvMs4_NtBN_5udiffINtB4v_15UnifiedDiffHunkeE12iter_changes0NCINvNvMsg_NtB2j_7flattenINtB5w_13FlattenCompatppE13iter_try_fold7flattenB2U_uB3r_NCINvNvXsi_B5w_B5K_B1n_8try_fold7flattenB2U_uB3r_NCINvNvB1n_4find5checkB46_QNCNvNtCshFZivb7RUAJ_8ruff_dev10format_dev22diff_show_only_changes0E0E0E0E0B3r_EB7Z_.exit: ; preds = %.loopexit.i, %bb.a, %bb.h
  %storemerge.i = phi i64 [ %i.am, %bb.h ], [ 2, %bb.a ], [ 2, %.loopexit.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !537, !noalias !552
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENCNvMs2_NtB1s_3argNtB2n_3Arg15get_all_aliases0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4e_3VecB43_E14extend_trustedBN_E0E0ECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 5                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 32
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423486
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val16.i = load ptr, ptr %i.i, align 8, !noalias !563, !nonnull !4, !noundef !4
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val17.i = load i64, ptr %i.j, align 8, !noalias !563, !noundef !4
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %.val16.i, ptr %i.k, align 8, !noalias !564
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val17.i, ptr %i.l, align 8, !noalias !565
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %.val16.i.1 = load ptr, ptr %i.n, align 8, !noalias !563, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.m, i64 48
  %.val17.i.1 = load i64, ptr %i.o, align 8, !noalias !563, !noundef !4
  %i.p = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store ptr %.val16.i.1, ptr %i.q, align 8, !noalias !564
  %i.r = getelementptr i8, ptr %i.p, i64 24
  store i64 %.val17.i.1, ptr %i.r, align 8, !noalias !565
  %i.s = add i64 %i.g, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.u = and i64 %i.d, 32
  %lcmp.mod.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val16.i.epil = load ptr, ptr %i.w, align 8, !noalias !563, !nonnull !4, !noundef !4
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val17.i.epil = load i64, ptr %i.x, align 8, !noalias !563, !noundef !4
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val16.i.epil, ptr %i.y, align 8, !noalias !564
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.val17.i.epil, ptr %i.z, align 8, !noalias !565
  %i.aa = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_ReuNCNvMs2_NtBV_3argNtB3h_3Arg15get_all_aliases0NCINvNvB1I_8for_each4callB36_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4u_3VecB36_E14extend_trustedINtB2y_3MapBF_B39_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !563
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTcbEENCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder3argNtB1A_3Arg21get_all_short_aliases0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6copied9copy_foldcuNCINvNvB2R_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4x_3VeccE14extend_trustedINtB3A_6CopiedBN_EE0E0E0ECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTcbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_RcuNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder3argNtB2u_3Arg21get_all_short_aliases0NCINvNtB1N_6copied9copy_foldcuNCINvNvBV_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4M_3VeccE14extend_trustedINtB3P_6CopiedINtB1L_3MapBF_B2m_EEE0E0E0E0ECshFZivb7RUAJ_8ruff_dev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %i.i = getelementptr i8, ptr %0, i64 %i.d
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <8 x i32>, ptr %i.o, align 4, !alias.scope !582, !noalias !583
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.q, align 4, !alias.scope !582, !noalias !583
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %strided.vec, ptr %i.r, align 4, !alias.scope !584, !noalias !585
  store <4 x i32> %strided.vec5, ptr %i.s, align 4, !alias.scope !584, !noalias !585
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %scalar.ph.preheader, label %vector.body, !llvm.loop !579

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.u = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val16.i.prol = load i32, ptr %i.w, align 4, !range !588, !noalias !583, !noundef !4
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i32 %.val16.i.prol, ptr %i.x, align 4, !noalias !589
  %i.y = add i64 %i.v, 1                          ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !580

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTcbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_RcuNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder3argNtB2u_3Arg21get_all_short_aliases0NCINvNtB1N_6copied9copy_foldcuNCINvNvBV_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4M_3VeccE14extend_trustedINtB3P_6CopiedINtB1L_3MapBF_B2m_EEE0E0E0E0ECshFZivb7RUAJ_8ruff_dev.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i32, ptr %i.ad, align 4, !range !588, !noalias !583, !noundef !4
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i32 %.val16.i, ptr %i.ae, align 4, !noalias !589
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val16.i.1 = load i32, ptr %i.ag, align 4, !range !588, !noalias !583, !noundef !4
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store i32 %.val16.i.1, ptr %i.ai, align 4, !noalias !589
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val16.i.2 = load i32, ptr %i.ak, align 4, !range !588, !noalias !583, !noundef !4
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store i32 %.val16.i.2, ptr %i.am, align 4, !noalias !589
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.val16.i.3 = load i32, ptr %i.ao, align 4, !range !588, !noalias !583, !noundef !4
  %i.ap = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  store i32 %.val16.i.3, ptr %i.aq, align 4, !noalias !589
  %i.ar = add i64 %i.ac, 4                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTcbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_RcuNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder3argNtB2u_3Arg21get_all_short_aliases0NCINvNtB1N_6copied9copy_foldcuNCINvNvBV_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4M_3VeccE14extend_trustedINtB3P_6CopiedINtB1L_3MapBF_B2m_EEE0E0E0E0ECshFZivb7RUAJ_8ruff_dev.exit, label %scalar.ph, !llvm.loop !581

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTcbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_RcuNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder3argNtB2u_3Arg21get_all_short_aliases0NCINvNtB1N_6copied9copy_foldcuNCINvNvBV_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4M_3VeccE14extend_trustedINtB3P_6CopiedINtB1L_3MapBF_B2m_EEE0E0E0E0ECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !583
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB29_8for_each4callhNCINvMsj_NtB1v_3vecINtB3m_3VechE14extend_trustedBN_E0E0ECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.o, align 1, !noalias !598, !noundef !4 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !599, !noundef !4
  %i.q = icmp eq i8 %.val16.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !599, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !600
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val16.i.1 = load i8, ptr %i.u, align 1, !noalias !598, !noundef !4 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !599, !noundef !4
  %i.w = icmp eq i8 %.val16.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !599, !noundef !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !600
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !noalias !598, !noundef !4 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !599, !noundef !4
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !599, !noundef !4
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !600
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECshFZivb7RUAJ_8ruff_dev.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !598
end_hunk_0
begin_hunk_1_@_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0ENtCs6Wt4yPw39th_9itertools9Itertools4joinB2k_:bb.a
  %.sroa.0.0.in.i.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val5.i.us.i.i, i64 8
  %.sroa.0.0.i.i.i.us.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.us.i.i, align 8, !noalias !1586, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val5.i.us.i.i, i64 16
  %.sroa.3.0.i.i.i.us.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.us.i.i, align 8, !noalias !1586, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1587
  store ptr %.sroa.0.0.i.i.i.us.i.i, ptr %i.c, align 8, !noalias !1588
  store i64 %.sroa.3.0.i.i.i.us.i.i, ptr %i.ac, align 8, !noalias !1588
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1588
  store ptr %i.c, ptr %i.b, align 8, !noalias !1588
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshFZivb7RUAJ_8ruff_dev, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1588
  %i.af = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @55, ptr noundef nonnull @54, ptr noundef nonnull %i.b)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %.noexc30
  br i1 %i.af, label %.split.us.i.i.invoke, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0NCINvMB23_B20_10wrap_mut_2uB1X_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2J_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B2P_.exit.i.us.i.i, !prof !11

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0NCINvMB23_B20_10wrap_mut_2uB1X_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2J_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B2P_.exit.i.us.i.i: ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1587
  %i.ag = icmp eq ptr %i.ae, %i.j
  br i1 %i.ag, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callReNCNvYBR_NtCs6Wt4yPw39th_9itertools9Itertools4join0E0EB2M_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.us.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0NCINvMB23_B20_10wrap_mut_2uB1X_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2J_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B2P_.exit.i.i.i
  %i.ah = phi ptr [ %i.ai, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0NCINvMB23_B20_10wrap_mut_2uB1X_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2J_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B2P_.exit.i.i.i ], [ %i.l, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store ptr %i.ai, ptr %1, align 8, !alias.scope !1584, !noalias !1585
  %.val5.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !1586, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 8
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !noalias !1586, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !noalias !1586, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1587
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.c, align 8, !noalias !1588
  store i64 %.sroa.3.0.i.i.i.i.i, ptr %i.ac, align 8, !noalias !1588
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %3)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit

.noexc32:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i
  %i.aj = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !1589, !noalias !1590, !noundef !4 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !1589, !noalias !1590, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !1586
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !1589, !noalias !1590
  %i.an = add i64 %.pre.i.i.i.i.i.i.i.i, %3
  store i64 %i.an, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !1589, !noalias !1590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1588
  store ptr %i.c, ptr %i.b, align 8, !noalias !1588
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshFZivb7RUAJ_8ruff_dev, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1588
  %i.ao = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @55, ptr noundef nonnull @54, ptr noundef nonnull %i.b)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %.noexc32
  br i1 %i.ao, label %.split.us.i.i.invoke, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0NCINvMB23_B20_10wrap_mut_2uB1X_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2J_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B2P_.exit.i.i.i, !prof !11

.split.us.i.i.invoke:                             ; preds = %.noexc33, %.noexc31, %bb.h
  %i.ap = phi ptr [ @95, %bb.h ], [ @57, %.noexc31 ], [ @57, %.noexc33 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #34
          to label %.split.us.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.split.us.i.i.cont:                               ; preds = %.split.us.i.i.invoke
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0NCINvMB23_B20_10wrap_mut_2uB1X_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2J_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B2P_.exit.i.i.i: ; preds = %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1587
  %i.aq = icmp eq ptr %i.ai, %i.j
  br i1 %i.aq, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callReNCNvYBR_NtCs6Wt4yPw39th_9itertools9Itertools4join0E0EB2M_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callReNCNvYBR_NtCs6Wt4yPw39th_9itertools9Itertools4join0E0EB2M_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0NCINvMB23_B20_10wrap_mut_2uB1X_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2J_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B2P_.exit.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands6_0NCINvMB23_B20_10wrap_mut_2uB1X_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2J_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B2P_.exit.i.us.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCshFZivb7RUAJ_8ruff_dev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.i:                                             ; preds = %.loopexit.split-lp
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable_or_null(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noalias !1595, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0CshFZivb7RUAJ_8ruff_dev.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(16) %0)
  br label %_RNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0CshFZivb7RUAJ_8ruff_dev.exit

_RNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0CshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noalias !1600, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CshFZivb7RUAJ_8ruff_dev.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CshFZivb7RUAJ_8ruff_dev.exit

_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs6nZeqdiIoCH_10serde_core6format3BufNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !1603
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !1603
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !1603
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !1603
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !1603
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !1603
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !1603
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !1603
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !1603
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !1603
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core6formatNtB4_3BufNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs6nZeqdiIoCH_10serde_core6format3BufNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtQNtNtCs6nZeqdiIoCH_10serde_core6format3BufNtB4_12SpecWriteFmt14spec_write_fmtCshFZivb7RUAJ_8ruff_dev.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @36, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !1604
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCshFZivb7RUAJ_8ruff_dev(ptr noalias readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @96, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCshFZivb7RUAJ_8ruff_dev(ptr noalias readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCshFZivb7RUAJ_8ruff_dev(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @97, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCshFZivb7RUAJ_8ruff_dev(ptr noalias readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @96, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCshFZivb7RUAJ_8ruff_dev(ptr noalias readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCshFZivb7RUAJ_8ruff_dev(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @98, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_11descriptionCshFZivb7RUAJ_8ruff_dev(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @96, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_5causeCshFZivb7RUAJ_8ruff_dev(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_6sourceCshFZivb7RUAJ_8ruff_dev(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7provideCshFZivb7RUAJ_8ruff_dev(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7type_idCshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @99, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util4iterNtB3_8Searcher30handle_overlapping_empty_matchNCNvXs9_NtNtB7_4meta5regexNtB1D_15CapturesMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0ECsaaRuwTSDeTG_9pep508_rs(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsl_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10MatchErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures4iter(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCs4NRVxsYgnAr_4core5arrayAlj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitReENCINvMBN_BK_10wrap_mut_1lNCINvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB1Z_8Captures7extractKBz_E0E0ECshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCs3MGJH6NE8G5_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(16)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(16)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path15__with_extension(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path5__join(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9extension(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #24

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsy_NtNtCs44bUZaa7qIB_5regex5regex6stringNCNCNvNtCshFZivb7RUAJ_8ruff_dev17generate_ty_rules17generate_markdowns_00NtB5_8Replacer14replace_appendBO_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsfvFeDaCgI3J_8tempfile4util13create_helperNtNtB4_4file13NamedTempFileNCINvMs_B4_NtB4_7Builder11tempfile_inRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std3env4__var(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack5FrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakNtNtCshFZivb7RUAJ_8ruff_dev10format_dev6FormatENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakNtNtCshFZivb7RUAJ_8ruff_dev12generate_all4ModeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack5FrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_1
