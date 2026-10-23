Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.11?download=true
inline.NumInlined: 12726
inline.NumDeleted: 4733
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 685
loop-unroll.NumUnrolled: 691
begin_hunk_0_@_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate3sumaEB8_:bb.a
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !171486

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.c), !dbg !171487
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !171488

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ 0, %bb.b ], !dbg !171489
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !171490 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !171490, !noundef !3448 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.1.i, %i.i, !dbg !171491
  br i1 %i.j, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraECs1LHh8CLbVkQ_11polars_core.exit, label %bb.e, !dbg !171491

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !171492 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !171492, !noundef !3448
  %.not.i = icmp eq ptr %i.l, null, !dbg !171492
  br i1 %.not.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %bb.f, !dbg !171493

bb.f:                                             ; preds = %bb.e
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !171494
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !171495

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.k, align 8, !dbg !171496, !noundef !3448
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null, !dbg !171496
  br i1 %.not.i.i.i.i.i, label %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge, label %bb.i, !dbg !171497

._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.h, align 8, !dbg !171498
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !171497

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.h, align 8, !dbg !171499, !noundef !3448 ; 2 uses
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !171500

bb.i:                                             ; preds = %bb.g
  %i.p = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.k), !dbg !171501
  %.pre4.pre = load i64, ptr %i.h, align 8, !dbg !171498
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !171502

_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre4 = phi i64 [ %i.o, %bb.h ], [ %.pre4.pre, %bb.i ], !dbg !171498 ; 7 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ], !dbg !171503
  %.not5.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i, 0, !dbg !171504
  br i1 %.not5.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !171505

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !171506
  %i.r = load ptr, ptr %i.q, align 8, !dbg !171506, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !171507
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.k), !dbg !171507
  call void @llvm.experimental.noalias.scope.decl(metadata !171469), !dbg !171508
  call void @llvm.experimental.noalias.scope.decl(metadata !171470), !dbg !171508
  call void @llvm.experimental.noalias.scope.decl(metadata !171471), !dbg !171509
  call void @llvm.experimental.noalias.scope.decl(metadata !171472), !dbg !171509
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !171510
  %i.t = load i64, ptr %i.s, align 8, !dbg !171510, !alias.scope !171473, !noundef !3448
  %i.u = icmp eq i64 %.pre4, %i.t, !dbg !171511
  br i1 %i.u, label %bb.k, label %bb.j, !dbg !171511, !prof !3552

bb.j:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #52, !dbg !171512, !noalias !171474
  unreachable, !dbg !171512

bb.k:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !171475), !dbg !171513
  %i.v = icmp samesign eq i64 %.pre4, 0, !dbg !171514
  br i1 %i.v, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.l, !dbg !171515

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !171476 ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !171476, !nonnull !3448 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !171476 ; 3 uses
  %xtraiter = and i64 %.pre4, 1, !dbg !171516
  %i.ab = icmp eq i64 %.pre4, 1, !dbg !171516
  br i1 %i.ab, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, label %.new, !dbg !171516

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %.pre4, -2, !dbg !171516
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !171516

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, %.new
  %.sroa.2.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.az, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ] ; 4 uses
  %.sroa.02.0.i.i.i.i = phi i8 [ 0, %.new ], [ %i.ay, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], !dbg !171517
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.2.0.i.i.i.i, !dbg !171518
  %.val.i.i.i.i = load i8, ptr %i.ac, align 1, !dbg !171519, !alias.scope !171477, !noalias !171475
  %i.ad = add i64 %.sroa.2.0.i.i.i.i, %i.x, !dbg !171520 ; 2 uses
  %i.ae = lshr i64 %i.ad, 3, !dbg !171520         ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.aa, !dbg !171521
  call void @llvm.assume(i1 %i.af), !dbg !171522
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ae, !dbg !171523
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !171524, !noalias !171478, !noundef !3448
  %i.ai = trunc i64 %i.ad to i8, !dbg !171525
  %i.aj = and i8 %i.ai, 7, !dbg !171525
  %i.ak = shl nuw i8 1, %i.aj, !dbg !171525
  %i.al = and i8 %i.ah, %i.ak, !dbg !171525
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0, !dbg !171525
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i8 0, i8 %.val.i.i.i.i, !dbg !171526
  %i.am = add i8 %spec.select.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i, !dbg !171527
  %i.an = or disjoint i64 %.sroa.2.0.i.i.i.i, 1, !dbg !171528 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.an, !dbg !171518
  %.val.i.i.i.i.1 = load i8, ptr %i.ao, align 1, !dbg !171519, !alias.scope !171477, !noalias !171475
  %i.ap = add i64 %i.an, %i.x, !dbg !171520       ; 2 uses
  %i.aq = lshr i64 %i.ap, 3, !dbg !171520         ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.aa, !dbg !171521
  call void @llvm.assume(i1 %i.ar), !dbg !171522
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aq, !dbg !171523
  %i.at = load i8, ptr %i.as, align 1, !dbg !171524, !noalias !171478, !noundef !3448
  %i.au = trunc i64 %i.ap to i8, !dbg !171525
  %i.av = and i8 %i.au, 7, !dbg !171525
  %i.aw = shl nuw i8 1, %i.av, !dbg !171525
  %i.ax = and i8 %i.at, %i.aw, !dbg !171525
  %.not.i.i.i.i.i.i.i.1 = icmp eq i8 %i.ax, 0, !dbg !171525
  %spec.select.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.1, i8 0, i8 %.val.i.i.i.i.1, !dbg !171526
  %i.ay = add i8 %spec.select.i.i.i.i.i.i.i.1, %i.am, !dbg !171527 ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 2, !dbg !171528 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !171529 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !171529
  br i1 %niter.ncmp.1, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !171529

_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !171529
  br i1 %lcmp.mod.not, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, !dbg !171529

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader: ; preds = %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, %bb.l
  %.sroa.2.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.az, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i8 [ 0, %bb.l ], [ %i.ay, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %.pre4 to i1, !dbg !171529
  call void @llvm.assume(i1 %lcmp.mod24), !dbg !171529
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.2.0.i.i.i.i.epil.init, !dbg !171518
  %.val.i.i.i.i.epil = load i8, ptr %i.ba, align 1, !dbg !171519, !alias.scope !171477, !noalias !171475
  %i.bb = add i64 %.sroa.2.0.i.i.i.i.epil.init, %i.x, !dbg !171520 ; 2 uses
  %i.bc = lshr i64 %i.bb, 3, !dbg !171520         ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.aa, !dbg !171521
  call void @llvm.assume(i1 %i.bd), !dbg !171522
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bc, !dbg !171523
  %i.bf = load i8, ptr %i.be, align 1, !dbg !171524, !noalias !171478, !noundef !3448
  %i.bg = trunc i64 %i.bb to i8, !dbg !171525
  %i.bh = and i8 %i.bg, 7, !dbg !171525
  %i.bi = shl nuw i8 1, %i.bh, !dbg !171525
  %i.bj = and i8 %i.bf, %i.bi, !dbg !171525
  %.not.i.i.i.i.i.i.i.epil = icmp eq i8 %i.bj, 0, !dbg !171525
  %spec.select.i.i.i.i.i.i.i.epil = select i1 %.not.i.i.i.i.i.i.i.epil, i8 0, i8 %.val.i.i.i.i.epil, !dbg !171526
  %i.bk = add i8 %spec.select.i.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.epil.init, !dbg !171527
  br label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !171530

_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, %bb.k
  %.sroa.0.0.i.i.i.i = phi i8 [ 0, %bb.k ], [ %i.ay, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ], [ %i.bk, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRaaNCINvNtBb_3map8map_foldTjB21_EaaNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalaraE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader ], !dbg !171517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !171530
  br label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraECs1LHh8CLbVkQ_11polars_core.exit, !dbg !171531

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i: ; preds = %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge, %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.e
  %i.bl = phi i64 [ %.pre, %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge ], [ %.pre4, %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %i.i, %bb.e ], !dbg !171498 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !171532
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !171532, !noundef !3448 ; 3 uses
  %i.bo = icmp samesign eq i64 %i.bl, 0, !dbg !171533
  br i1 %i.bo, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !171534

iter.check:                                       ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i
  %min.iters.check = icmp ult i64 %i.bl, 4, !dbg !171535
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check, !dbg !171535

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %i.bl, 32, !dbg !171535
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !171535

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.bl, 28
  %n.vec = and i64 %i.bl, -32                     ; 4 uses
  br label %vector.body, !dbg !171535

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !171536 ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %vec.phi10 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index, !dbg !171537 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !171538
  %wide.load = load <16 x i8>, ptr %i.bq, align 1, !dbg !171538, !alias.scope !171480
  %wide.load11 = load <16 x i8>, ptr %i.br, align 1, !dbg !171538, !alias.scope !171480
  %i.bs = add <16 x i8> %wide.load, %vec.phi, !dbg !171539 ; 2 uses
  %i.bt = add <16 x i8> %wide.load11, %vec.phi10, !dbg !171539 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !171536 ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec, !dbg !171535
  br i1 %i.bu, label %middle.block, label %vector.body, !dbg !171535, !llvm.loop !171461

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.bt, %i.bs, !dbg !171535
  %i.bv = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx), !dbg !171535 ; 3 uses
  %cmp.n = icmp eq i64 %i.bl, %n.vec, !dbg !171535
  br i1 %cmp.n, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !171535

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !4032

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.bv, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.bl, -4                    ; 3 uses
  %i.bw = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !171536 ; 2 uses
  %vec.phi14 = phi <4 x i8> [ %i.bw, %vec.epilog.ph ], [ %i.by, %vec.epilog.vector.body ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index13, !dbg !171537
  %wide.load15 = load <4 x i8>, ptr %i.bx, align 1, !dbg !171538, !alias.scope !171480
  %i.by = add <4 x i8> %wide.load15, %vec.phi14, !dbg !171539 ; 2 uses
  %index.next16 = add nuw i64 %index13, 4, !dbg !171536 ; 2 uses
  %i.bz = icmp eq i64 %index.next16, %n.vec12, !dbg !171535
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !171535, !llvm.loop !171462

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ca = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.by), !dbg !171535 ; 2 uses
  %cmp.n17 = icmp eq i64 %i.bl, %n.vec12, !dbg !171535
  br i1 %cmp.n17, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraECs1LHh8CLbVkQ_11polars_core.exit, label %.preheader.i.i.preheader, !dbg !171535

.preheader.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i8 [ 0, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.preheader.i.i, !dbg !171535

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.cd, %.preheader.i.i ], [ %.sroa.04.0.i.i.i.ph, %.preheader.i.i.preheader ], !dbg !171536 ; 2 uses
  %.sroa.02.0.i.i.i = phi i8 [ %i.cc, %.preheader.i.i ], [ %.sroa.02.0.i.i.i.ph, %.preheader.i.i.preheader ], !dbg !171540
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.04.0.i.i.i, !dbg !171537
  %.val.i.i.i = load i8, ptr %i.cb, align 1, !dbg !171538, !alias.scope !171480, !noundef !3448
  %i.cc = add i8 %.val.i.i.i, %.sroa.02.0.i.i.i, !dbg !171539 ; 2 uses
  %i.cd = add nuw nsw i64 %.sroa.04.0.i.i.i, 1, !dbg !171541 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.bl, !dbg !171535
  br i1 %i.ce, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraECs1LHh8CLbVkQ_11polars_core.exit, label %.preheader.i.i, !dbg !171535, !llvm.loop !171465

_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.preheader.i.i, %middle.block, %vec.epilog.middle.block, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.0.0 = phi i8 [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit ], [ %.sroa.0.0.i.i.i.i, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumaNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arraE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i ], [ %i.ca, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.cc, %.preheader.i.i ], !dbg !171542
  ret i8 %.sroa.0.0, !dbg !171543
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate3sumdEB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 !dbg !171544 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !171561
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !171562

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !171563 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !171563, !noundef !3448
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !171563
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !171564

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !171565
  %i.e = load i64, ptr %i.d, align 8, !dbg !171565, !noundef !3448
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !171566

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.b), !dbg !171567
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !171568

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.b ], !dbg !171569
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !171570
  %i.h = load i64, ptr %i.g, align 8, !dbg !171570, !noundef !3448
  %i.i = icmp eq i64 %.sroa.0.1.i, %i.h, !dbg !171571
  br i1 %i.i, label %bb.f, label %bb.e, !dbg !171571

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit
  %i.j = tail call noundef double @_RINvNtCslFlrwjHoTci_14polars_compute9float_sum14sum_arr_as_f64dECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull align 8 %0), !dbg !171572
  br label %bb.f, !dbg !171573

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, %bb.e
  %.sroa.0.0 = phi double [ %i.j, %bb.e ], [ 0.000000e+00, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !171574
  ret double %.sroa.0.0, !dbg !171575
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate3sumfEB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 !dbg !171576 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !171593
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !171594

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !171595 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !171595, !noundef !3448
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !171595
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !171596

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !171597
  %i.e = load i64, ptr %i.d, align 8, !dbg !171597, !noundef !3448
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !171598

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.b), !dbg !171599
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !171600

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.b ], !dbg !171601
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !171602
  %i.h = load i64, ptr %i.g, align 8, !dbg !171602, !noundef !3448
  %i.i = icmp eq i64 %.sroa.0.1.i, %i.h, !dbg !171603
  br i1 %i.i, label %bb.f, label %bb.e, !dbg !171603

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit
  %i.j = tail call noundef float @_RINvNtCslFlrwjHoTci_14polars_compute9float_sum14sum_arr_as_f32fECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull align 8 %0), !dbg !171604
  br label %bb.f, !dbg !171605

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, %bb.e
  %.sroa.0.0 = phi float [ %i.j, %bb.e ], [ 0.000000e+00, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !171606
  ret float %.sroa.0.0, !dbg !171607
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate3sumhEB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !171608 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !171753
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !171754

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !171755 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !171755, !noundef !3448
  %.not.i.i = icmp eq ptr %i.d, null, !dbg !171755
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !171756

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !171757
  %i.f = load i64, ptr %i.e, align 8, !dbg !171757, !noundef !3448
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !171758

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.c), !dbg !171759
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !171760

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ 0, %bb.b ], !dbg !171761
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !171762 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !171762, !noundef !3448 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.1.i, %i.i, !dbg !171763
  br i1 %i.j, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhECs1LHh8CLbVkQ_11polars_core.exit, label %bb.e, !dbg !171763

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !171764 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !171764, !noundef !3448
  %.not.i = icmp eq ptr %i.l, null, !dbg !171764
  br i1 %.not.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %bb.f, !dbg !171765

bb.f:                                             ; preds = %bb.e
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !171766
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !171767

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.k, align 8, !dbg !171768, !noundef !3448
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null, !dbg !171768
  br i1 %.not.i.i.i.i.i, label %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge, label %bb.i, !dbg !171769

._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.h, align 8, !dbg !171770
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !171769

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.h, align 8, !dbg !171771, !noundef !3448 ; 2 uses
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !171772

bb.i:                                             ; preds = %bb.g
  %i.p = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.k), !dbg !171773
  %.pre4.pre = load i64, ptr %i.h, align 8, !dbg !171770
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !171774

_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre4 = phi i64 [ %i.o, %bb.h ], [ %.pre4.pre, %bb.i ], !dbg !171770 ; 7 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ], !dbg !171775
  %.not5.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i, 0, !dbg !171776
  br i1 %.not5.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !171777

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !171778
  %i.r = load ptr, ptr %i.q, align 8, !dbg !171778, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !171779
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.k), !dbg !171779
  call void @llvm.experimental.noalias.scope.decl(metadata !171741), !dbg !171780
  call void @llvm.experimental.noalias.scope.decl(metadata !171742), !dbg !171780
  call void @llvm.experimental.noalias.scope.decl(metadata !171743), !dbg !171781
  call void @llvm.experimental.noalias.scope.decl(metadata !171744), !dbg !171781
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !171782
  %i.t = load i64, ptr %i.s, align 8, !dbg !171782, !alias.scope !171745, !noundef !3448
  %i.u = icmp eq i64 %.pre4, %i.t, !dbg !171783
  br i1 %i.u, label %bb.k, label %bb.j, !dbg !171783, !prof !3552

bb.j:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #52, !dbg !171784, !noalias !171746
  unreachable, !dbg !171784

bb.k:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !171747), !dbg !171785
  %i.v = icmp samesign eq i64 %.pre4, 0, !dbg !171786
  br i1 %i.v, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.l, !dbg !171787

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !171748 ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !171748, !nonnull !3448 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !171748 ; 3 uses
  %xtraiter = and i64 %.pre4, 1, !dbg !171788
  %i.ab = icmp eq i64 %.pre4, 1, !dbg !171788
  br i1 %i.ab, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, label %.new, !dbg !171788

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %.pre4, -2, !dbg !171788
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !171788

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, %.new
  %.sroa.2.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.az, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ] ; 4 uses
  %.sroa.02.0.i.i.i.i = phi i8 [ 0, %.new ], [ %i.ay, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], !dbg !171789
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.2.0.i.i.i.i, !dbg !171790
  %.val.i.i.i.i = load i8, ptr %i.ac, align 1, !dbg !171791, !alias.scope !171749, !noalias !171747
  %i.ad = add i64 %.sroa.2.0.i.i.i.i, %i.x, !dbg !171792 ; 2 uses
  %i.ae = lshr i64 %i.ad, 3, !dbg !171792         ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.aa, !dbg !171793
  call void @llvm.assume(i1 %i.af), !dbg !171794
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ae, !dbg !171795
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !171796, !noalias !171750, !noundef !3448
  %i.ai = trunc i64 %i.ad to i8, !dbg !171797
  %i.aj = and i8 %i.ai, 7, !dbg !171797
  %i.ak = shl nuw i8 1, %i.aj, !dbg !171797
  %i.al = and i8 %i.ah, %i.ak, !dbg !171797
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0, !dbg !171797
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i8 0, i8 %.val.i.i.i.i, !dbg !171798
  %i.am = add i8 %spec.select.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i, !dbg !171799
  %i.an = or disjoint i64 %.sroa.2.0.i.i.i.i, 1, !dbg !171800 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.an, !dbg !171790
  %.val.i.i.i.i.1 = load i8, ptr %i.ao, align 1, !dbg !171791, !alias.scope !171749, !noalias !171747
  %i.ap = add i64 %i.an, %i.x, !dbg !171792       ; 2 uses
  %i.aq = lshr i64 %i.ap, 3, !dbg !171792         ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.aa, !dbg !171793
  call void @llvm.assume(i1 %i.ar), !dbg !171794
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aq, !dbg !171795
  %i.at = load i8, ptr %i.as, align 1, !dbg !171796, !noalias !171750, !noundef !3448
  %i.au = trunc i64 %i.ap to i8, !dbg !171797
  %i.av = and i8 %i.au, 7, !dbg !171797
  %i.aw = shl nuw i8 1, %i.av, !dbg !171797
  %i.ax = and i8 %i.at, %i.aw, !dbg !171797
  %.not.i.i.i.i.i.i.i.1 = icmp eq i8 %i.ax, 0, !dbg !171797
  %spec.select.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.1, i8 0, i8 %.val.i.i.i.i.1, !dbg !171798
  %i.ay = add i8 %spec.select.i.i.i.i.i.i.i.1, %i.am, !dbg !171799 ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 2, !dbg !171800 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !171801 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !171801
  br i1 %niter.ncmp.1, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !171801

_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !171801
  br i1 %lcmp.mod.not, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, !dbg !171801

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader: ; preds = %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, %bb.l
  %.sroa.2.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.az, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i8 [ 0, %bb.l ], [ %i.ay, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %.pre4 to i1, !dbg !171801
  call void @llvm.assume(i1 %lcmp.mod24), !dbg !171801
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.2.0.i.i.i.i.epil.init, !dbg !171790
  %.val.i.i.i.i.epil = load i8, ptr %i.ba, align 1, !dbg !171791, !alias.scope !171749, !noalias !171747
  %i.bb = add i64 %.sroa.2.0.i.i.i.i.epil.init, %i.x, !dbg !171792 ; 2 uses
  %i.bc = lshr i64 %i.bb, 3, !dbg !171792         ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.aa, !dbg !171793
  call void @llvm.assume(i1 %i.bd), !dbg !171794
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bc, !dbg !171795
  %i.bf = load i8, ptr %i.be, align 1, !dbg !171796, !noalias !171750, !noundef !3448
  %i.bg = trunc i64 %i.bb to i8, !dbg !171797
  %i.bh = and i8 %i.bg, 7, !dbg !171797
  %i.bi = shl nuw i8 1, %i.bh, !dbg !171797
  %i.bj = and i8 %i.bf, %i.bi, !dbg !171797
  %.not.i.i.i.i.i.i.i.epil = icmp eq i8 %i.bj, 0, !dbg !171797
  %spec.select.i.i.i.i.i.i.i.epil = select i1 %.not.i.i.i.i.i.i.i.epil, i8 0, i8 %.val.i.i.i.i.epil, !dbg !171798
  %i.bk = add i8 %spec.select.i.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.epil.init, !dbg !171799
  br label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !171802

_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, %bb.k
  %.sroa.0.0.i.i.i.i = phi i8 [ 0, %bb.k ], [ %i.ay, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ], [ %i.bk, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhhNCINvNtBb_3map8map_foldTjB21_EhhNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarhE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader ], !dbg !171789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !171802
  br label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhECs1LHh8CLbVkQ_11polars_core.exit, !dbg !171803

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i: ; preds = %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge, %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.e
  %i.bl = phi i64 [ %.pre, %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge ], [ %.pre4, %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %i.i, %bb.e ], !dbg !171770 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !171804
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !171804, !noundef !3448 ; 3 uses
  %i.bo = icmp samesign eq i64 %i.bl, 0, !dbg !171805
  br i1 %i.bo, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !171806

iter.check:                                       ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i
  %min.iters.check = icmp ult i64 %i.bl, 4, !dbg !171807
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check, !dbg !171807

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %i.bl, 32, !dbg !171807
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !171807

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.bl, 28
  %n.vec = and i64 %i.bl, -32                     ; 4 uses
  br label %vector.body, !dbg !171807

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !171808 ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %vec.phi10 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index, !dbg !171809 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !171810
  %wide.load = load <16 x i8>, ptr %i.bq, align 1, !dbg !171810, !alias.scope !171752
  %wide.load11 = load <16 x i8>, ptr %i.br, align 1, !dbg !171810, !alias.scope !171752
  %i.bs = add <16 x i8> %wide.load, %vec.phi, !dbg !171811 ; 2 uses
  %i.bt = add <16 x i8> %wide.load11, %vec.phi10, !dbg !171811 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !171808 ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec, !dbg !171807
  br i1 %i.bu, label %middle.block, label %vector.body, !dbg !171807, !llvm.loop !171733

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.bt, %i.bs, !dbg !171807
  %i.bv = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx), !dbg !171807 ; 3 uses
  %cmp.n = icmp eq i64 %i.bl, %n.vec, !dbg !171807
  br i1 %cmp.n, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !171807

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !4032

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.bv, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.bl, -4                    ; 3 uses
  %i.bw = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !171808 ; 2 uses
  %vec.phi14 = phi <4 x i8> [ %i.bw, %vec.epilog.ph ], [ %i.by, %vec.epilog.vector.body ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index13, !dbg !171809
  %wide.load15 = load <4 x i8>, ptr %i.bx, align 1, !dbg !171810, !alias.scope !171752
  %i.by = add <4 x i8> %wide.load15, %vec.phi14, !dbg !171811 ; 2 uses
  %index.next16 = add nuw i64 %index13, 4, !dbg !171808 ; 2 uses
  %i.bz = icmp eq i64 %index.next16, %n.vec12, !dbg !171807
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !171807, !llvm.loop !171734

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ca = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.by), !dbg !171807 ; 2 uses
  %cmp.n17 = icmp eq i64 %i.bl, %n.vec12, !dbg !171807
  br i1 %cmp.n17, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhECs1LHh8CLbVkQ_11polars_core.exit, label %.preheader.i.i.preheader, !dbg !171807

.preheader.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i8 [ 0, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.preheader.i.i, !dbg !171807

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.cd, %.preheader.i.i ], [ %.sroa.04.0.i.i.i.ph, %.preheader.i.i.preheader ], !dbg !171808 ; 2 uses
  %.sroa.02.0.i.i.i = phi i8 [ %i.cc, %.preheader.i.i ], [ %.sroa.02.0.i.i.i.ph, %.preheader.i.i.preheader ], !dbg !171812
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.04.0.i.i.i, !dbg !171809
  %.val.i.i.i = load i8, ptr %i.cb, align 1, !dbg !171810, !alias.scope !171752, !noundef !3448
  %i.cc = add i8 %.val.i.i.i, %.sroa.02.0.i.i.i, !dbg !171811 ; 2 uses
  %i.cd = add nuw nsw i64 %.sroa.04.0.i.i.i, 1, !dbg !171813 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.bl, !dbg !171807
  br i1 %i.ce, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhECs1LHh8CLbVkQ_11polars_core.exit, label %.preheader.i.i, !dbg !171807, !llvm.loop !171737

_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.preheader.i.i, %middle.block, %vec.epilog.middle.block, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.0.0 = phi i8 [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit ], [ %.sroa.0.0.i.i.i.i, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumhNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrhE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i ], [ %i.ca, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.cc, %.preheader.i.i ], !dbg !171814
  ret i8 %.sroa.0.0, !dbg !171815
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate3sumlEB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !171816 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !171957
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !171958

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !171959 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !171959, !noundef !3448
  %.not.i.i = icmp eq ptr %i.d, null, !dbg !171959
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !171960

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !171961
  %i.f = load i64, ptr %i.e, align 8, !dbg !171961, !noundef !3448
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !171962

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.c), !dbg !171963
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !171964

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ 0, %bb.b ], !dbg !171965
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !171966 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !171966, !noundef !3448 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.1.i, %i.i, !dbg !171967
  br i1 %i.j, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlECs1LHh8CLbVkQ_11polars_core.exit, label %bb.e, !dbg !171967

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !171968 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !171968, !noundef !3448
  %.not.i = icmp eq ptr %i.l, null, !dbg !171968
  br i1 %.not.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %bb.f, !dbg !171969

bb.f:                                             ; preds = %bb.e
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !171970
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !171971

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.k, align 8, !dbg !171972, !noundef !3448
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null, !dbg !171972
  br i1 %.not.i.i.i.i.i, label %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge, label %bb.i, !dbg !171973

._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.h, align 8, !dbg !171974
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !171973

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.h, align 8, !dbg !171975, !noundef !3448 ; 2 uses
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !171976

bb.i:                                             ; preds = %bb.g
  %i.p = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.k), !dbg !171977
  %.pre4.pre = load i64, ptr %i.h, align 8, !dbg !171974
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !171978

_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre4 = phi i64 [ %i.o, %bb.h ], [ %.pre4.pre, %bb.i ], !dbg !171974 ; 7 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ], !dbg !171979
  %.not5.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i, 0, !dbg !171980
  br i1 %.not5.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !171981

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !171982
  %i.r = load ptr, ptr %i.q, align 8, !dbg !171982, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !171983
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.k), !dbg !171983
  call void @llvm.experimental.noalias.scope.decl(metadata !171946), !dbg !171984
  call void @llvm.experimental.noalias.scope.decl(metadata !171947), !dbg !171984
  call void @llvm.experimental.noalias.scope.decl(metadata !171948), !dbg !171985
  call void @llvm.experimental.noalias.scope.decl(metadata !171949), !dbg !171985
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !171986
  %i.t = load i64, ptr %i.s, align 8, !dbg !171986, !alias.scope !171950, !noundef !3448
  %i.u = icmp eq i64 %.pre4, %i.t, !dbg !171987
  br i1 %i.u, label %bb.k, label %bb.j, !dbg !171987, !prof !3552

bb.j:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #52, !dbg !171988, !noalias !171951
  unreachable, !dbg !171988

bb.k:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrlE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !171952), !dbg !171989
  %i.v = icmp eq i64 %.pre4, 0, !dbg !171990
  br i1 %i.v, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumlNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.l, !dbg !171991

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !171953 ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !171953, !nonnull !3448 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !171953 ; 3 uses
  %xtraiter = and i64 %.pre4, 1, !dbg !171992
  %i.ab = icmp eq i64 %.pre4, 1, !dbg !171992
  br i1 %i.ab, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, label %.new, !dbg !171992

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %.pre4, -2, !dbg !171992
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !171992

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, %.new
  %.sroa.2.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.az, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ] ; 4 uses
  %.sroa.02.0.i.i.i.i = phi i32 [ 0, %.new ], [ %i.ay, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], !dbg !171993
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.2.0.i.i.i.i, !dbg !171994
  %.val.i.i.i.i = load i32, ptr %i.ac, align 4, !dbg !171995, !alias.scope !171954, !noalias !171952
  %i.ad = add i64 %.sroa.2.0.i.i.i.i, %i.x, !dbg !171996 ; 2 uses
  %i.ae = lshr i64 %i.ad, 3, !dbg !171996         ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.aa, !dbg !171997
  call void @llvm.assume(i1 %i.af), !dbg !171998
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ae, !dbg !171999
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !172000, !noalias !171955, !noundef !3448
  %i.ai = trunc i64 %i.ad to i8, !dbg !172001
  %i.aj = and i8 %i.ai, 7, !dbg !172001
  %i.ak = shl nuw i8 1, %i.aj, !dbg !172001
  %i.al = and i8 %i.ah, %i.ak, !dbg !172001
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0, !dbg !172001
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 0, i32 %.val.i.i.i.i, !dbg !172002
  %i.am = add i32 %spec.select.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i, !dbg !172003
  %i.an = or disjoint i64 %.sroa.2.0.i.i.i.i, 1, !dbg !172004 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.an, !dbg !171994
  %.val.i.i.i.i.1 = load i32, ptr %i.ao, align 4, !dbg !171995, !alias.scope !171954, !noalias !171952
  %i.ap = add i64 %i.an, %i.x, !dbg !171996       ; 2 uses
  %i.aq = lshr i64 %i.ap, 3, !dbg !171996         ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.aa, !dbg !171997
  call void @llvm.assume(i1 %i.ar), !dbg !171998
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aq, !dbg !171999
  %i.at = load i8, ptr %i.as, align 1, !dbg !172000, !noalias !171955, !noundef !3448
  %i.au = trunc i64 %i.ap to i8, !dbg !172001
  %i.av = and i8 %i.au, 7, !dbg !172001
  %i.aw = shl nuw i8 1, %i.av, !dbg !172001
  %i.ax = and i8 %i.at, %i.aw, !dbg !172001
  %.not.i.i.i.i.i.i.i.1 = icmp eq i8 %i.ax, 0, !dbg !172001
  %spec.select.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.1, i32 0, i32 %.val.i.i.i.i.1, !dbg !172002
  %i.ay = add i32 %spec.select.i.i.i.i.i.i.i.1, %i.am, !dbg !172003 ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 2, !dbg !172004 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !172005 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !172005
  br i1 %niter.ncmp.1, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumlNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !172005

_RNvXNtCslFlrwjHoTci_14polars_compute3sumlNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !172005
  br i1 %lcmp.mod.not, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumlNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, !dbg !172005

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRllNCINvNtBb_3map8map_foldTjB21_EllNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarlE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader: ; preds = %_RNvXNtCslFlrwjHoTci_14polars_compute3sumlNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, %bb.l
  %.sroa.2.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.az, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumlNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i32 [ 0, %bb.l ], [ %i.ay, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumlNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod16 = trunc i64 %.pre4 to i1, !dbg !172005
  call void @llvm.assume(i1 %lcmp.mod16), !dbg !172005
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.2.0.i.i.i.i.epil.init, !dbg !171994
  %.val.i.i.i.i.epil = load i32, ptr %i.ba, align 4, !dbg !171995, !alias.scope !171954, !noalias !171952
  %i.bb = add i64 %.sroa.2.0.i.i.i.i.epil.init, %i.x, !dbg !171996 ; 2 uses
  %i.bc = lshr i64 %i.bb, 3, !dbg !171996         ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.aa, !dbg !171997
  call void @llvm.assume(i1 %i.bd), !dbg !171998
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bc, !dbg !171999
  %i.bf = load i8, ptr %i.be, align 1, !dbg !172000, !noalias !171955, !noundef !3448
  %i.bg = trunc i64 %i.bb to i8, !dbg !172001
  %i.bh = and i8 %i.bg, 7, !dbg !172001
  %i.bi = shl nuw i8 1, %i.bh, !dbg !172001
  %i.bj = and i8 %i.bf, %i.bi, !dbg !172001
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate3sumsEB8_:bb.a
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !172780

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.c), !dbg !172781
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !172782

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ 0, %bb.b ], !dbg !172783
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !172784 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !172784, !noundef !3448 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.1.i, %i.i, !dbg !172785
  br i1 %i.j, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsECs1LHh8CLbVkQ_11polars_core.exit, label %bb.e, !dbg !172785

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !172786 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !172786, !noundef !3448
  %.not.i = icmp eq ptr %i.l, null, !dbg !172786
  br i1 %.not.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %bb.f, !dbg !172787

bb.f:                                             ; preds = %bb.e
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !172788
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !172789

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.k, align 8, !dbg !172790, !noundef !3448
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null, !dbg !172790
  br i1 %.not.i.i.i.i.i, label %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge, label %bb.i, !dbg !172791

._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.h, align 8, !dbg !172792
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !172791

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.h, align 8, !dbg !172793, !noundef !3448 ; 2 uses
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !172794

bb.i:                                             ; preds = %bb.g
  %i.p = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.k), !dbg !172795
  %.pre4.pre = load i64, ptr %i.h, align 8, !dbg !172792
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !172796

_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre4 = phi i64 [ %i.o, %bb.h ], [ %.pre4.pre, %bb.i ], !dbg !172792 ; 7 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ], !dbg !172797
  %.not5.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i, 0, !dbg !172798
  br i1 %.not5.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !172799

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !172800
  %i.r = load ptr, ptr %i.q, align 8, !dbg !172800, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !172801
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.k), !dbg !172801
  call void @llvm.experimental.noalias.scope.decl(metadata !172763), !dbg !172802
  call void @llvm.experimental.noalias.scope.decl(metadata !172764), !dbg !172802
  call void @llvm.experimental.noalias.scope.decl(metadata !172765), !dbg !172803
  call void @llvm.experimental.noalias.scope.decl(metadata !172766), !dbg !172803
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !172804
  %i.t = load i64, ptr %i.s, align 8, !dbg !172804, !alias.scope !172767, !noundef !3448
  %i.u = icmp eq i64 %.pre4, %i.t, !dbg !172805
  br i1 %i.u, label %bb.k, label %bb.j, !dbg !172805, !prof !3552

bb.j:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #52, !dbg !172806, !noalias !172768
  unreachable, !dbg !172806

bb.k:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !172769), !dbg !172807
  %i.v = icmp eq i64 %.pre4, 0, !dbg !172808
  br i1 %i.v, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.l, !dbg !172809

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !172770 ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !172770, !nonnull !3448 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !172770 ; 3 uses
  %xtraiter = and i64 %.pre4, 1, !dbg !172810
  %i.ab = icmp eq i64 %.pre4, 1, !dbg !172810
  br i1 %i.ab, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, label %.new, !dbg !172810

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %.pre4, -2, !dbg !172810
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !172810

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, %.new
  %.sroa.2.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.az, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ] ; 4 uses
  %.sroa.02.0.i.i.i.i = phi i16 [ 0, %.new ], [ %i.ay, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], !dbg !172811
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.sroa.2.0.i.i.i.i, !dbg !172812
  %.val.i.i.i.i = load i16, ptr %i.ac, align 2, !dbg !172813, !alias.scope !172771, !noalias !172769
  %i.ad = add i64 %.sroa.2.0.i.i.i.i, %i.x, !dbg !172814 ; 2 uses
  %i.ae = lshr i64 %i.ad, 3, !dbg !172814         ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.aa, !dbg !172815
  call void @llvm.assume(i1 %i.af), !dbg !172816
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ae, !dbg !172817
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !172818, !noalias !172772, !noundef !3448
  %i.ai = trunc i64 %i.ad to i8, !dbg !172819
  %i.aj = and i8 %i.ai, 7, !dbg !172819
  %i.ak = shl nuw i8 1, %i.aj, !dbg !172819
  %i.al = and i8 %i.ah, %i.ak, !dbg !172819
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0, !dbg !172819
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i16 0, i16 %.val.i.i.i.i, !dbg !172820
  %i.am = add i16 %spec.select.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i, !dbg !172821
  %i.an = or disjoint i64 %.sroa.2.0.i.i.i.i, 1, !dbg !172822 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.an, !dbg !172812
  %.val.i.i.i.i.1 = load i16, ptr %i.ao, align 2, !dbg !172813, !alias.scope !172771, !noalias !172769
  %i.ap = add i64 %i.an, %i.x, !dbg !172814       ; 2 uses
  %i.aq = lshr i64 %i.ap, 3, !dbg !172814         ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.aa, !dbg !172815
  call void @llvm.assume(i1 %i.ar), !dbg !172816
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aq, !dbg !172817
  %i.at = load i8, ptr %i.as, align 1, !dbg !172818, !noalias !172772, !noundef !3448
  %i.au = trunc i64 %i.ap to i8, !dbg !172819
  %i.av = and i8 %i.au, 7, !dbg !172819
  %i.aw = shl nuw i8 1, %i.av, !dbg !172819
  %i.ax = and i8 %i.at, %i.aw, !dbg !172819
  %.not.i.i.i.i.i.i.i.1 = icmp eq i8 %i.ax, 0, !dbg !172819
  %spec.select.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.1, i16 0, i16 %.val.i.i.i.i.1, !dbg !172820
  %i.ay = add i16 %spec.select.i.i.i.i.i.i.i.1, %i.am, !dbg !172821 ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 2, !dbg !172822 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !172823 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !172823
  br i1 %niter.ncmp.1, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !172823

_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !172823
  br i1 %lcmp.mod.not, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, !dbg !172823

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader: ; preds = %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, %bb.l
  %.sroa.2.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.az, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i16 [ 0, %bb.l ], [ %i.ay, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %.pre4 to i1, !dbg !172823
  call void @llvm.assume(i1 %lcmp.mod24), !dbg !172823
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.sroa.2.0.i.i.i.i.epil.init, !dbg !172812
  %.val.i.i.i.i.epil = load i16, ptr %i.ba, align 2, !dbg !172813, !alias.scope !172771, !noalias !172769
  %i.bb = add i64 %.sroa.2.0.i.i.i.i.epil.init, %i.x, !dbg !172814 ; 2 uses
  %i.bc = lshr i64 %i.bb, 3, !dbg !172814         ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.aa, !dbg !172815
  call void @llvm.assume(i1 %i.bd), !dbg !172816
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bc, !dbg !172817
  %i.bf = load i8, ptr %i.be, align 1, !dbg !172818, !noalias !172772, !noundef !3448
  %i.bg = trunc i64 %i.bb to i8, !dbg !172819
  %i.bh = and i8 %i.bg, 7, !dbg !172819
  %i.bi = shl nuw i8 1, %i.bh, !dbg !172819
  %i.bj = and i8 %i.bf, %i.bi, !dbg !172819
  %.not.i.i.i.i.i.i.i.epil = icmp eq i8 %i.bj, 0, !dbg !172819
  %spec.select.i.i.i.i.i.i.i.epil = select i1 %.not.i.i.i.i.i.i.i.epil, i16 0, i16 %.val.i.i.i.i.epil, !dbg !172820
  %i.bk = add i16 %spec.select.i.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.epil.init, !dbg !172821
  br label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !172824

_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, %bb.k
  %.sroa.0.0.i.i.i.i = phi i16 [ 0, %bb.k ], [ %i.ay, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ], [ %i.bk, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRssNCINvNtBb_3map8map_foldTjB21_EssNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarsE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader ], !dbg !172811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !172824
  br label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsECs1LHh8CLbVkQ_11polars_core.exit, !dbg !172825

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i: ; preds = %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge, %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.e
  %i.bl = phi i64 [ %.pre, %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge ], [ %.pre4, %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %i.i, %bb.e ], !dbg !172792 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !172826
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !172826, !noundef !3448 ; 3 uses
  %i.bo = icmp eq i64 %i.bl, 0, !dbg !172827
  br i1 %i.bo, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !172828

iter.check:                                       ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i
  %min.iters.check = icmp ult i64 %i.bl, 4, !dbg !172829
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check, !dbg !172829

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %i.bl, 16, !dbg !172829
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !172829

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.bl, 12
  %n.vec = and i64 %i.bl, -16                     ; 4 uses
  br label %vector.body, !dbg !172829

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !172830 ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %vec.phi10 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index, !dbg !172831 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !172832
  %wide.load = load <8 x i16>, ptr %i.bq, align 2, !dbg !172832, !alias.scope !172774
  %wide.load11 = load <8 x i16>, ptr %i.br, align 2, !dbg !172832, !alias.scope !172774
  %i.bs = add <8 x i16> %wide.load, %vec.phi, !dbg !172833 ; 2 uses
  %i.bt = add <8 x i16> %wide.load11, %vec.phi10, !dbg !172833 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !172830 ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec, !dbg !172829
  br i1 %i.bu, label %middle.block, label %vector.body, !dbg !172829, !llvm.loop !172755

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.bt, %i.bs, !dbg !172829
  %i.bv = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx), !dbg !172829 ; 3 uses
  %cmp.n = icmp eq i64 %i.bl, %n.vec, !dbg !172829
  br i1 %cmp.n, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !172829

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !3686

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.bv, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.bl, -4                    ; 3 uses
  %i.bw = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !172830 ; 2 uses
  %vec.phi14 = phi <4 x i16> [ %i.bw, %vec.epilog.ph ], [ %i.by, %vec.epilog.vector.body ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index13, !dbg !172831
  %wide.load15 = load <4 x i16>, ptr %i.bx, align 2, !dbg !172832, !alias.scope !172774
  %i.by = add <4 x i16> %wide.load15, %vec.phi14, !dbg !172833 ; 2 uses
  %index.next16 = add nuw i64 %index13, 4, !dbg !172830 ; 2 uses
  %i.bz = icmp eq i64 %index.next16, %n.vec12, !dbg !172829
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !172829, !llvm.loop !172756

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ca = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.by), !dbg !172829 ; 2 uses
  %cmp.n17 = icmp eq i64 %i.bl, %n.vec12, !dbg !172829
  br i1 %cmp.n17, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsECs1LHh8CLbVkQ_11polars_core.exit, label %.preheader.i.i.preheader, !dbg !172829

.preheader.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ 0, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.preheader.i.i, !dbg !172829

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.cd, %.preheader.i.i ], [ %.sroa.04.0.i.i.i.ph, %.preheader.i.i.preheader ], !dbg !172830 ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %i.cc, %.preheader.i.i ], [ %.sroa.02.0.i.i.i.ph, %.preheader.i.i.preheader ], !dbg !172834
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %.sroa.04.0.i.i.i, !dbg !172831
  %.val.i.i.i = load i16, ptr %i.cb, align 2, !dbg !172832, !alias.scope !172774, !noundef !3448
  %i.cc = add i16 %.val.i.i.i, %.sroa.02.0.i.i.i, !dbg !172833 ; 2 uses
  %i.cd = add nuw nsw i64 %.sroa.04.0.i.i.i, 1, !dbg !172835 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.bl, !dbg !172829
  br i1 %i.ce, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsECs1LHh8CLbVkQ_11polars_core.exit, label %.preheader.i.i, !dbg !172829, !llvm.loop !172759

_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.preheader.i.i, %middle.block, %vec.epilog.middle.block, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.0.0 = phi i16 [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit ], [ %.sroa.0.0.i.i.i.i, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumsNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrsE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i ], [ %i.ca, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.cc, %.preheader.i.i ], !dbg !172836
  ret i16 %.sroa.0.0, !dbg !172837
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate3sumtEB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !172838 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !172983
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !172984

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !172985 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !172985, !noundef !3448
  %.not.i.i = icmp eq ptr %i.d, null, !dbg !172985
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !172986

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !172987
  %i.f = load i64, ptr %i.e, align 8, !dbg !172987, !noundef !3448
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !172988

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.c), !dbg !172989
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !172990

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ 0, %bb.b ], !dbg !172991
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !172992 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !172992, !noundef !3448 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.1.i, %i.i, !dbg !172993
  br i1 %i.j, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtECs1LHh8CLbVkQ_11polars_core.exit, label %bb.e, !dbg !172993

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !172994 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !172994, !noundef !3448
  %.not.i = icmp eq ptr %i.l, null, !dbg !172994
  br i1 %.not.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %bb.f, !dbg !172995

bb.f:                                             ; preds = %bb.e
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !172996
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !172997

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.k, align 8, !dbg !172998, !noundef !3448
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null, !dbg !172998
  br i1 %.not.i.i.i.i.i, label %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge, label %bb.i, !dbg !172999

._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.h, align 8, !dbg !173000
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !172999

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.h, align 8, !dbg !173001, !noundef !3448 ; 2 uses
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !173002

bb.i:                                             ; preds = %bb.g
  %i.p = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.k), !dbg !173003
  %.pre4.pre = load i64, ptr %i.h, align 8, !dbg !173000
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !173004

_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre4 = phi i64 [ %i.o, %bb.h ], [ %.pre4.pre, %bb.i ], !dbg !173000 ; 7 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ], !dbg !173005
  %.not5.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i, 0, !dbg !173006
  br i1 %.not5.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !173007

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !173008
  %i.r = load ptr, ptr %i.q, align 8, !dbg !173008, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !173009
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.k), !dbg !173009
  call void @llvm.experimental.noalias.scope.decl(metadata !172971), !dbg !173010
  call void @llvm.experimental.noalias.scope.decl(metadata !172972), !dbg !173010
  call void @llvm.experimental.noalias.scope.decl(metadata !172973), !dbg !173011
  call void @llvm.experimental.noalias.scope.decl(metadata !172974), !dbg !173011
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !173012
  %i.t = load i64, ptr %i.s, align 8, !dbg !173012, !alias.scope !172975, !noundef !3448
  %i.u = icmp eq i64 %.pre4, %i.t, !dbg !173013
  br i1 %i.u, label %bb.k, label %bb.j, !dbg !173013, !prof !3552

bb.j:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #52, !dbg !173014, !noalias !172976
  unreachable, !dbg !173014

bb.k:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !172977), !dbg !173015
  %i.v = icmp eq i64 %.pre4, 0, !dbg !173016
  br i1 %i.v, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.l, !dbg !173017

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !172978 ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !172978, !nonnull !3448 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !172978 ; 3 uses
  %xtraiter = and i64 %.pre4, 1, !dbg !173018
  %i.ab = icmp eq i64 %.pre4, 1, !dbg !173018
  br i1 %i.ab, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, label %.new, !dbg !173018

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %.pre4, -2, !dbg !173018
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !173018

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, %.new
  %.sroa.2.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.az, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ] ; 4 uses
  %.sroa.02.0.i.i.i.i = phi i16 [ 0, %.new ], [ %i.ay, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], !dbg !173019
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.sroa.2.0.i.i.i.i, !dbg !173020
  %.val.i.i.i.i = load i16, ptr %i.ac, align 2, !dbg !173021, !alias.scope !172979, !noalias !172977
  %i.ad = add i64 %.sroa.2.0.i.i.i.i, %i.x, !dbg !173022 ; 2 uses
  %i.ae = lshr i64 %i.ad, 3, !dbg !173022         ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.aa, !dbg !173023
  call void @llvm.assume(i1 %i.af), !dbg !173024
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ae, !dbg !173025
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !173026, !noalias !172980, !noundef !3448
  %i.ai = trunc i64 %i.ad to i8, !dbg !173027
  %i.aj = and i8 %i.ai, 7, !dbg !173027
  %i.ak = shl nuw i8 1, %i.aj, !dbg !173027
  %i.al = and i8 %i.ah, %i.ak, !dbg !173027
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0, !dbg !173027
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i16 0, i16 %.val.i.i.i.i, !dbg !173028
  %i.am = add i16 %spec.select.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i, !dbg !173029
  %i.an = or disjoint i64 %.sroa.2.0.i.i.i.i, 1, !dbg !173030 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.an, !dbg !173020
  %.val.i.i.i.i.1 = load i16, ptr %i.ao, align 2, !dbg !173021, !alias.scope !172979, !noalias !172977
  %i.ap = add i64 %i.an, %i.x, !dbg !173022       ; 2 uses
  %i.aq = lshr i64 %i.ap, 3, !dbg !173022         ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.aa, !dbg !173023
  call void @llvm.assume(i1 %i.ar), !dbg !173024
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aq, !dbg !173025
  %i.at = load i8, ptr %i.as, align 1, !dbg !173026, !noalias !172980, !noundef !3448
  %i.au = trunc i64 %i.ap to i8, !dbg !173027
  %i.av = and i8 %i.au, 7, !dbg !173027
  %i.aw = shl nuw i8 1, %i.av, !dbg !173027
  %i.ax = and i8 %i.at, %i.aw, !dbg !173027
  %.not.i.i.i.i.i.i.i.1 = icmp eq i8 %i.ax, 0, !dbg !173027
  %spec.select.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.1, i16 0, i16 %.val.i.i.i.i.1, !dbg !173028
  %i.ay = add i16 %spec.select.i.i.i.i.i.i.i.1, %i.am, !dbg !173029 ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 2, !dbg !173030 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !173031 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !173031
  br i1 %niter.ncmp.1, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !173031

_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !173031
  br i1 %lcmp.mod.not, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, !dbg !173031

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader: ; preds = %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, %bb.l
  %.sroa.2.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.az, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i16 [ 0, %bb.l ], [ %i.ay, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %.pre4 to i1, !dbg !173031
  call void @llvm.assume(i1 %lcmp.mod24), !dbg !173031
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.sroa.2.0.i.i.i.i.epil.init, !dbg !173020
  %.val.i.i.i.i.epil = load i16, ptr %i.ba, align 2, !dbg !173021, !alias.scope !172979, !noalias !172977
  %i.bb = add i64 %.sroa.2.0.i.i.i.i.epil.init, %i.x, !dbg !173022 ; 2 uses
  %i.bc = lshr i64 %i.bb, 3, !dbg !173022         ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.aa, !dbg !173023
  call void @llvm.assume(i1 %i.bd), !dbg !173024
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bc, !dbg !173025
  %i.bf = load i8, ptr %i.be, align 1, !dbg !173026, !noalias !172980, !noundef !3448
  %i.bg = trunc i64 %i.bb to i8, !dbg !173027
  %i.bh = and i8 %i.bg, 7, !dbg !173027
  %i.bi = shl nuw i8 1, %i.bh, !dbg !173027
  %i.bj = and i8 %i.bf, %i.bi, !dbg !173027
  %.not.i.i.i.i.i.i.i.epil = icmp eq i8 %i.bj, 0, !dbg !173027
  %spec.select.i.i.i.i.i.i.i.epil = select i1 %.not.i.i.i.i.i.i.i.epil, i16 0, i16 %.val.i.i.i.i.epil, !dbg !173028
  %i.bk = add i16 %spec.select.i.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.epil.init, !dbg !173029
  br label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !173032

_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, %bb.k
  %.sroa.0.0.i.i.i.i = phi i16 [ 0, %bb.k ], [ %i.ay, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ], [ %i.bk, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRttNCINvNtBb_3map8map_foldTjB21_EttNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalartE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader ], !dbg !173019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !173032
  br label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtECs1LHh8CLbVkQ_11polars_core.exit, !dbg !173033

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i: ; preds = %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge, %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.e
  %i.bl = phi i64 [ %.pre, %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge ], [ %.pre4, %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %i.i, %bb.e ], !dbg !173000 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !173034
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !173034, !noundef !3448 ; 3 uses
  %i.bo = icmp eq i64 %i.bl, 0, !dbg !173035
  br i1 %i.bo, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !173036

iter.check:                                       ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i
  %min.iters.check = icmp ult i64 %i.bl, 4, !dbg !173037
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check, !dbg !173037

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %i.bl, 16, !dbg !173037
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !173037

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.bl, 12
  %n.vec = and i64 %i.bl, -16                     ; 4 uses
  br label %vector.body, !dbg !173037

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !173038 ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %vec.phi10 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index, !dbg !173039 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !173040
  %wide.load = load <8 x i16>, ptr %i.bq, align 2, !dbg !173040, !alias.scope !172982
  %wide.load11 = load <8 x i16>, ptr %i.br, align 2, !dbg !173040, !alias.scope !172982
  %i.bs = add <8 x i16> %wide.load, %vec.phi, !dbg !173041 ; 2 uses
  %i.bt = add <8 x i16> %wide.load11, %vec.phi10, !dbg !173041 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !173038 ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec, !dbg !173037
  br i1 %i.bu, label %middle.block, label %vector.body, !dbg !173037, !llvm.loop !172963

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.bt, %i.bs, !dbg !173037
  %i.bv = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx), !dbg !173037 ; 3 uses
  %cmp.n = icmp eq i64 %i.bl, %n.vec, !dbg !173037
  br i1 %cmp.n, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !173037

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !3686

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.bv, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.bl, -4                    ; 3 uses
  %i.bw = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !173038 ; 2 uses
  %vec.phi14 = phi <4 x i16> [ %i.bw, %vec.epilog.ph ], [ %i.by, %vec.epilog.vector.body ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index13, !dbg !173039
  %wide.load15 = load <4 x i16>, ptr %i.bx, align 2, !dbg !173040, !alias.scope !172982
  %i.by = add <4 x i16> %wide.load15, %vec.phi14, !dbg !173041 ; 2 uses
  %index.next16 = add nuw i64 %index13, 4, !dbg !173038 ; 2 uses
  %i.bz = icmp eq i64 %index.next16, %n.vec12, !dbg !173037
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !173037, !llvm.loop !172964

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ca = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.by), !dbg !173037 ; 2 uses
  %cmp.n17 = icmp eq i64 %i.bl, %n.vec12, !dbg !173037
  br i1 %cmp.n17, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtECs1LHh8CLbVkQ_11polars_core.exit, label %.preheader.i.i.preheader, !dbg !173037

.preheader.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ 0, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.preheader.i.i, !dbg !173037

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.cd, %.preheader.i.i ], [ %.sroa.04.0.i.i.i.ph, %.preheader.i.i.preheader ], !dbg !173038 ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %i.cc, %.preheader.i.i ], [ %.sroa.02.0.i.i.i.ph, %.preheader.i.i.preheader ], !dbg !173042
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %.sroa.04.0.i.i.i, !dbg !173039
  %.val.i.i.i = load i16, ptr %i.cb, align 2, !dbg !173040, !alias.scope !172982, !noundef !3448
  %i.cc = add i16 %.val.i.i.i, %.sroa.02.0.i.i.i, !dbg !173041 ; 2 uses
  %i.cd = add nuw nsw i64 %.sroa.04.0.i.i.i, 1, !dbg !173043 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.bl, !dbg !173037
  br i1 %i.ce, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtECs1LHh8CLbVkQ_11polars_core.exit, label %.preheader.i.i, !dbg !173037, !llvm.loop !172967

_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.preheader.i.i, %middle.block, %vec.epilog.middle.block, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.0.0 = phi i16 [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit ], [ %.sroa.0.0.i.i.i.i, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumtNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrtE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i ], [ %i.ca, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.cc, %.preheader.i.i ], !dbg !173044
  ret i16 %.sroa.0.0, !dbg !173045
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate3sumxEB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !173046 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !173187
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !173188

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !173189 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !173189, !noundef !3448
  %.not.i.i = icmp eq ptr %i.d, null, !dbg !173189
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !173190

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !173191
  %i.f = load i64, ptr %i.e, align 8, !dbg !173191, !noundef !3448
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !173192

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.c), !dbg !173193
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit, !dbg !173194

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ 0, %bb.b ], !dbg !173195
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !173196 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !173196, !noundef !3448 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.1.i, %i.i, !dbg !173197
  br i1 %i.j, label %_RINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxECs1LHh8CLbVkQ_11polars_core.exit, label %bb.e, !dbg !173197

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !173198 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !173198, !noundef !3448
  %.not.i = icmp eq ptr %i.l, null, !dbg !173198
  br i1 %.not.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %bb.f, !dbg !173199

bb.f:                                             ; preds = %bb.e
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #46, !dbg !173200
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !173201

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.k, align 8, !dbg !173202, !noundef !3448
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null, !dbg !173202
  br i1 %.not.i.i.i.i.i, label %._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge, label %bb.i, !dbg !173203

._RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.h, align 8, !dbg !173204
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !173203

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.h, align 8, !dbg !173205, !noundef !3448 ; 2 uses
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !173206

bb.i:                                             ; preds = %bb.g
  %i.p = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.k), !dbg !173207
  %.pre4.pre = load i64, ptr %i.h, align 8, !dbg !173204
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !173208

_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre4 = phi i64 [ %i.o, %bb.h ], [ %.pre4.pre, %bb.i ], !dbg !173204 ; 7 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ], !dbg !173209
  %.not5.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i, 0, !dbg !173210
  br i1 %.not5.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !173211

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !173212
  %i.r = load ptr, ptr %i.q, align 8, !dbg !173212, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !173213
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.k), !dbg !173213
  call void @llvm.experimental.noalias.scope.decl(metadata !173176), !dbg !173214
  call void @llvm.experimental.noalias.scope.decl(metadata !173177), !dbg !173214
  call void @llvm.experimental.noalias.scope.decl(metadata !173178), !dbg !173215
  call void @llvm.experimental.noalias.scope.decl(metadata !173179), !dbg !173215
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !173216
  %i.t = load i64, ptr %i.s, align 8, !dbg !173216, !alias.scope !173180, !noundef !3448
  %i.u = icmp eq i64 %.pre4, %i.t, !dbg !173217
  br i1 %i.u, label %bb.k, label %bb.j, !dbg !173217, !prof !3552

bb.j:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #52, !dbg !173218, !noalias !173181
  unreachable, !dbg !173218

bb.k:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6filterNCINvNtCslFlrwjHoTci_14polars_compute3sum16wrapping_sum_arrxE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !173182), !dbg !173219
  %i.v = icmp eq i64 %.pre4, 0, !dbg !173220
  br i1 %i.v, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumxNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.l, !dbg !173221

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !173183 ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !173183, !nonnull !3448 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !173183 ; 3 uses
  %xtraiter = and i64 %.pre4, 1, !dbg !173222
  %i.ab = icmp eq i64 %.pre4, 1, !dbg !173222
  br i1 %i.ab, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, label %.new, !dbg !173222

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %.pre4, -2, !dbg !173222
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !173222

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, %.new
  %.sroa.2.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.az, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ] ; 4 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.ay, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], !dbg !173223
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.sroa.2.0.i.i.i.i, !dbg !173224
  %.val.i.i.i.i = load i64, ptr %i.ac, align 8, !dbg !173225, !alias.scope !173184, !noalias !173182
  %i.ad = add i64 %.sroa.2.0.i.i.i.i, %i.x, !dbg !173226 ; 2 uses
  %i.ae = lshr i64 %i.ad, 3, !dbg !173226         ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.aa, !dbg !173227
  call void @llvm.assume(i1 %i.af), !dbg !173228
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ae, !dbg !173229
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !173230, !noalias !173185, !noundef !3448
  %i.ai = trunc i64 %i.ad to i8, !dbg !173231
  %i.aj = and i8 %i.ai, 7, !dbg !173231
  %i.ak = shl nuw i8 1, %i.aj, !dbg !173231
  %i.al = and i8 %i.ah, %i.ak, !dbg !173231
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0, !dbg !173231
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i, !dbg !173232
  %i.am = add i64 %spec.select.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i, !dbg !173233
  %i.an = or disjoint i64 %.sroa.2.0.i.i.i.i, 1, !dbg !173234 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.an, !dbg !173224
  %.val.i.i.i.i.1 = load i64, ptr %i.ao, align 8, !dbg !173225, !alias.scope !173184, !noalias !173182
  %i.ap = add i64 %i.an, %i.x, !dbg !173226       ; 2 uses
  %i.aq = lshr i64 %i.ap, 3, !dbg !173226         ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.aa, !dbg !173227
  call void @llvm.assume(i1 %i.ar), !dbg !173228
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aq, !dbg !173229
  %i.at = load i8, ptr %i.as, align 1, !dbg !173230, !noalias !173185, !noundef !3448
  %i.au = trunc i64 %i.ap to i8, !dbg !173231
  %i.av = and i8 %i.au, 7, !dbg !173231
  %i.aw = shl nuw i8 1, %i.av, !dbg !173231
  %i.ax = and i8 %i.at, %i.aw, !dbg !173231
  %.not.i.i.i.i.i.i.i.1 = icmp eq i8 %i.ax, 0, !dbg !173231
  %spec.select.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.1, i64 0, i64 %.val.i.i.i.i.1, !dbg !173232
  %i.ay = add i64 %spec.select.i.i.i.i.i.i.i.1, %i.am, !dbg !173233 ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 2, !dbg !173234 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !173235 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !173235
  br i1 %niter.ncmp.1, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumxNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !173235

_RNvXNtCslFlrwjHoTci_14polars_compute3sumxNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !173235
  br i1 %lcmp.mod.not, label %_RNvXNtCslFlrwjHoTci_14polars_compute3sumxNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader, !dbg !173235

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRxxNCINvNtBb_3map8map_foldTjB21_ExxNCINvNtCslFlrwjHoTci_14polars_compute3sum29wrapping_sum_with_mask_scalarxE0NCB2C_s_0E0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.epil.preheader: ; preds = %_RNvXNtCslFlrwjHoTci_14polars_compute3sumxNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa, %bb.l
  %.sroa.2.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.az, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumxNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.ay, %_RNvXNtCslFlrwjHoTci_14polars_compute3sumxNtB2_11WrappingSum26wrapping_sum_with_validityCs1LHh8CLbVkQ_11polars_core.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod16 = trunc i64 %.pre4 to i1, !dbg !173235
  call void @llvm.assume(i1 %lcmp.mod16), !dbg !173235
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.sroa.2.0.i.i.i.i.epil.init, !dbg !173224
  %.val.i.i.i.i.epil = load i64, ptr %i.ba, align 8, !dbg !173225, !alias.scope !173184, !noalias !173182
  %i.bb = add i64 %.sroa.2.0.i.i.i.i.epil.init, %i.x, !dbg !173226 ; 2 uses
  %i.bc = lshr i64 %i.bb, 3, !dbg !173226         ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.aa, !dbg !173227
  call void @llvm.assume(i1 %i.bd), !dbg !173228
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bc, !dbg !173229
  %i.bf = load i8, ptr %i.be, align 1, !dbg !173230, !noalias !173185, !noundef !3448
  %i.bg = trunc i64 %i.bb to i8, !dbg !173231
  %i.bh = and i8 %i.bg, 7, !dbg !173231
  %i.bi = shl nuw i8 1, %i.bh, !dbg !173231
  %i.bj = and i8 %i.bf, %i.bi, !dbg !173231
end_hunk_1
