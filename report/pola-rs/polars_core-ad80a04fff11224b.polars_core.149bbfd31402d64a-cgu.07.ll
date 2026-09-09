Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.07?download=true
inline.NumInlined: 8529
inline.NumDeleted: 2232
loop-unroll.NumCompletelyUnrolled: 78
loop-unroll.NumRuntimeUnrolled: 397
loop-unroll.NumUnrolled: 475
begin_hunk_0_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullxEENCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCINvNtNtB16_4sort17arg_sort_multiple22arg_sort_multiple_implB11_Es_0E0EB1a_:bb.a
  %i.aq = add i64 %.sroa.02.1.lcssa, -1, !dbg !81386 ; 4 uses
  %i.ar = icmp ult i64 %i.aq, %1, !dbg !81387
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !81387

bb.k:                                             ; preds = %bb.j
  br i1 %i.j, label %bb.m, label %bb.n, !dbg !81388

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81387
  unreachable, !dbg !81387

bb.m:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aq, !dbg !81389 ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa, !dbg !81390 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !81391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !dbg !81392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !81393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !dbg !81394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !81395
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa, 1, !dbg !81396
  br i1 %i.au, label %bb.p, label %bb.o, !dbg !81396

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81388
  unreachable, !dbg !81388

bb.o:                                             ; preds = %bb.m, %bb.p
  %exitcond38.not = icmp eq i64 %i.i, 5, !dbg !81397
  br i1 %exitcond38.not, label %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullxEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge.thread, label %bb.b, !dbg !81346

bb.p:                                             ; preds = %bb.m
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullxEENCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvNtNtB19_4sort17arg_sort_multiple22arg_sort_multiple_implB14_Es_0E0EB1d_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa, i64 noundef %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !81398
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullxEENCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCINvNtNtB1a_4sort17arg_sort_multiple22arg_sort_multiple_implB15_Es_0E0EB1e_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !81399
  br label %bb.o, !dbg !81399
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEENCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCINvNtNtB16_4sort17arg_sort_multiple22arg_sort_multiple_implB11_Es_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 576460752303423488) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81400 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !5062, !align !5141 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = icmp samesign ult i64 %1, 50
  br label %bb.b, !dbg !81475

bb.b:                                             ; preds = %bb.a, %bb.o
  %.sroa.02.033 = phi i64 [ 1, %bb.a ], [ %.sroa.02.1.lcssa, %bb.o ] ; 3 uses
  %.sroa.013.032 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.o ]
  %i.i = add nuw nsw i64 %.sroa.013.032, 1, !dbg !81476 ; 2 uses
  %i.j = icmp ult i64 %.sroa.02.033, %1, !dbg !81477 ; 2 uses
  br i1 %i.j, label %.lr.ph, label %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge, !dbg !81477

.lr.ph:                                           ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !81464, !nonnull !5062, !align !5141, !noundef !5062 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.c, !dbg !81477

_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge.thread: ; preds = %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge, %bb.o, %bb.i
  %.sroa.0.0 = phi i1 [ true, %bb.i ], [ %i.ao, %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge ], [ false, %bb.o ], !dbg !81478
  ret i1 %.sroa.0.0, !dbg !81479

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.02.128 = phi i64 [ %.sroa.02.033, %.lr.ph ], [ %i.ap, %bb.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.128, !dbg !81480 ; 2 uses
  %i.o = add nsw i64 %.sroa.02.128, -1, !dbg !81481 ; 2 uses
  %i.p = icmp ult i64 %i.o, %1, !dbg !81482
  call void @llvm.assume(i1 %i.p), !dbg !81483
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.o, !dbg !81484 ; 2 uses
  %.val17 = load i32, ptr %i.n, align 8, !dbg !81485
  %i.r = getelementptr i8, ptr %i.n, i64 8, !dbg !81485
  %.val18 = load i64, ptr %i.r, align 8, !dbg !81485, !noundef !5062
  %.val19 = load i32, ptr %i.q, align 8, !dbg !81485
  %i.s = getelementptr i8, ptr %i.q, i64 8, !dbg !81485
  %.val20 = load i64, ptr %i.s, align 8, !dbg !81485, !noundef !5062
  call void @llvm.experimental.noalias.scope.decl(metadata !81464), !dbg !81486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !81487, !noalias !81464
  store i64 %.val18, ptr %i.b, align 8, !dbg !81487, !noalias !81464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !81488, !noalias !81464
  store i64 %.val20, ptr %i.a, align 8, !dbg !81488, !noalias !81464
  %i.t = load ptr, ptr %i.l, align 8, !dbg !81489, !noalias !81464, !nonnull !5062, !noundef !5062 ; 2 uses
  %i.u = load i64, ptr %i.m, align 8, !dbg !81490, !noalias !81464, !noundef !5062 ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, 0, !dbg !81491
  br i1 %.not.i.i, label %bb.e, label %bb.d, !dbg !81491

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.e, align 8, !dbg !81492, !alias.scope !81464, !nonnull !5062, !align !5141, !noundef !5062 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !81493
  %i.x = load ptr, ptr %i.w, align 8, !dbg !81493, !noalias !81464, !nonnull !5062, !noundef !5062
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !81494
  %i.z = load i64, ptr %i.y, align 8, !dbg !81494, !noalias !81464, !noundef !5062 ; 2 uses
  %.not5.i.i = icmp eq i64 %i.z, 0, !dbg !81495
  br i1 %.not5.i.i, label %bb.g, label %bb.f, !dbg !81495

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #23, !dbg !81491, !noalias !81464
  unreachable, !dbg !81491

bb.f:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.t, align 1, !dbg !81496, !range !5150, !noalias !81464, !noundef !5062
  %i.ab = trunc nuw i8 %i.aa to i1, !dbg !81496
  %i.ac = call noundef range(i8 -1, 2) i8 @_RNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_innerINtB4_7NonNullyENtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !dbg !81497, !noalias !81464 ; 2 uses
  %switch.offset.i.i.i = sub nsw i8 0, %i.ac, !dbg !81498
  %.sroa.0.0.i.i.i = select i1 %i.ab, i8 %switch.offset.i.i.i, i8 %i.ac, !dbg !81498 ; 2 uses
  %i.ad = icmp eq i8 %.sroa.0.0.i.i.i, 0, !dbg !81499
  br i1 %i.ad, label %bb.h, label %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit, !dbg !81499

bb.g:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #23, !dbg !81495, !noalias !81464
  unreachable, !dbg !81495

bb.h:                                             ; preds = %bb.f
  %i.ae = zext i32 %.val17 to i64, !dbg !81500
  %i.af = zext i32 %.val19 to i64, !dbg !81501
  %i.ag = load ptr, ptr %i.f, align 8, !dbg !81502, !alias.scope !81464, !nonnull !5062, !noundef !5062
  %i.ah = load i64, ptr %i.g, align 8, !dbg !81503, !alias.scope !81464, !noundef !5062
  %i.ai = add i64 %i.u, -1, !dbg !81504
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 1, !dbg !81505
  %i.ak = add i64 %i.z, -1, !dbg !81506
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 1, !dbg !81507
  %i.am = call noundef i8 @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort22ordering_other_columns(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ag, i64 noundef %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ai, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.ak, i64 noundef %i.ae, i64 noundef %i.af), !dbg !81508, !noalias !81464
  br label %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit, !dbg !81508

_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit: ; preds = %bb.f, %bb.h
  %.sroa.0.0.i.i = phi i8 [ %i.am, %bb.h ], [ %.sroa.0.0.i.i.i, %bb.f ], !dbg !81509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !81510, !noalias !81464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !81510, !noalias !81464
  %i.an = icmp eq i8 %.sroa.0.0.i.i, -1, !dbg !81511
  br i1 %i.an, label %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge, label %bb.i, !dbg !81485

_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge: ; preds = %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit, %bb.b
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.033, %bb.b ], [ %.sroa.02.128, %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit ], !dbg !81512 ; 8 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa, %1, !dbg !81513 ; 2 uses
  %or.cond = select i1 %i.ao, i1 true, i1 %i.h, !dbg !81513
  br i1 %or.cond, label %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge.thread, label %bb.j, !dbg !81513

bb.i:                                             ; preds = %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit
  %i.ap = add i64 %.sroa.02.128, 1, !dbg !81514   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %1, !dbg !81477
  br i1 %exitcond.not, label %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge.thread, label %bb.c, !dbg !81477

bb.j:                                             ; preds = %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge
  %i.aq = add i64 %.sroa.02.1.lcssa, -1, !dbg !81515 ; 4 uses
  %i.ar = icmp ult i64 %i.aq, %1, !dbg !81516
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !81516

bb.k:                                             ; preds = %bb.j
  br i1 %i.j, label %bb.m, label %bb.n, !dbg !81517

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81516
  unreachable, !dbg !81516

bb.m:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aq, !dbg !81518 ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa, !dbg !81519 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !81520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !dbg !81521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !81522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !dbg !81523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !81524
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa, 1, !dbg !81525
  br i1 %i.au, label %bb.p, label %bb.o, !dbg !81525

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81517
  unreachable, !dbg !81517

bb.o:                                             ; preds = %bb.m, %bb.p
  %exitcond38.not = icmp eq i64 %i.i, 5, !dbg !81526
  br i1 %exitcond38.not, label %_RNCINvYSTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvNtNtBd_4sort17arg_sort_multiple22arg_sort_multiple_implB8_Es_0E0Bh_.exit._crit_edge.thread, label %bb.b, !dbg !81475

bb.p:                                             ; preds = %bb.m
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEENCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvNtNtB19_4sort17arg_sort_multiple22arg_sort_multiple_implB14_Es_0E0EB1d_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa, i64 noundef %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !81527
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullyEENCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCINvNtNtB1a_4sort17arg_sort_multiple22arg_sort_multiple_implB15_Es_0E0EB1e_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !81528
  br label %bb.o, !dbg !81528
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 21, -9223372036854775808) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81529 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph35
  %.sroa.02.123.us3494 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph95.preheader ] ; 2 uses
  %.val19.us93 = phi i8 [ %.val.us, %.lr.ph35 ], [ %.val.us32, %.lr.ph95.preheader ]
  %i.b = add nuw nsw i64 %.sroa.02.123.us3494, 1, !dbg !81554 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b, !dbg !81555
  %.val.us = load i8, ptr %i.c, align 1, !dbg !81556, !alias.scope !5790, !noalias !5791, !noundef !5062 ; 2 uses
  %i.d = icmp slt i8 %.val19.us93, %.val.us, !dbg !81557
  br i1 %i.d, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !81556

.lr.ph35:                                         ; preds = %.lr.ph95
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3494, %i.h, !dbg !81558
  br i1 %exitcond44.not, label %.split31, label %.lr.ph95, !dbg !81558

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph95
  %i.e = icmp eq i64 %i.b, %1, !dbg !81559
  br label %.split31, !dbg !81556

.lr.ph.us:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !81555
  %.val.us32 = load i8, ptr %i.f, align 1, !dbg !81556, !alias.scope !5790, !noalias !5791, !noundef !5062 ; 2 uses
  %.val19.us33 = load i8, ptr %0, align 1, !dbg !81556, !alias.scope !5791, !noalias !5790, !noundef !5062
  %i.g = icmp slt i8 %.val19.us33, %.val.us32, !dbg !81557
  br i1 %i.g, label %.split31, label %.lr.ph95.preheader, !dbg !81556

.lr.ph95.preheader:                               ; preds = %.lr.ph.us
  %i.h = add nsw i64 %1, -2
  br label %.lr.ph95, !dbg !81556

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i8, ptr %0, align 1, !dbg !81556, !alias.scope !5791, !noalias !5790
  br label %.lr.ph, !dbg !81556

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.e, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !81560
  ret i1 %.us-phi, !dbg !81560

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i8 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !81556
  %.sroa.02.123 = phi i64 [ %i.n, %bb.b ], [ 1, %.lr.ph.preheader ] ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123, !dbg !81555
  %i.j = add nsw i64 %.sroa.02.123, -1, !dbg !81561
  %i.k = icmp samesign ult i64 %i.j, %1, !dbg !81562
  tail call void @llvm.assume(i1 %i.k), !dbg !81563
  %.val = load i8, ptr %i.i, align 1, !dbg !81556, !alias.scope !5790, !noalias !5791, !noundef !5062 ; 2 uses
  %i.l = icmp slt i8 %.val19, %.val, !dbg !81557
  br i1 %i.l, label %._crit_edge, label %bb.b, !dbg !81556

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = icmp eq i64 %.sroa.02.123, %1, !dbg !81559
  br i1 %i.m, label %.split31, label %bb.c, !dbg !81559

bb.b:                                             ; preds = %.lr.ph
  %i.n = add nuw nsw i64 %.sroa.02.123, 1, !dbg !81554 ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %1, !dbg !81558
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !81558

bb.c:                                             ; preds = %._crit_edge
  %i.o = add nsw i64 %.sroa.02.123, -1, !dbg !81564 ; 4 uses
  %i.p = icmp ult i64 %i.o, %1, !dbg !81565
  br i1 %i.p, label %bb.e, label %bb.d, !dbg !81565

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.o, %bb.c ], [ %i.ab, %bb.h ], [ %i.ao, %bb.m ], [ %i.bb, %bb.r ], [ %i.bo, %bb.w ], !dbg !81564
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81565
  unreachable, !dbg !81565

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !81566 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123, !dbg !81567 ; 2 uses
  %.sroa.013.0.copyload = load i8, ptr %i.q, align 1, !dbg !81568
  %i.s = load i8, ptr %i.r, align 1, !dbg !81569
  store i8 %i.s, ptr %i.q, align 1, !dbg !81569
  store i8 %.sroa.013.0.copyload, ptr %i.r, align 1, !dbg !81570
  %i.t = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !81571
  br i1 %i.t, label %bb.aa, label %.split.1, !dbg !81571

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !81572
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81573
  unreachable, !dbg !81573

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.u = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !81558 ; 2 uses
  br i1 %i.u, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !81558

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i8, ptr %i.q, align 1, !dbg !81556, !alias.scope !5791, !noalias !5790
  br label %.lr.ph.1, !dbg !81556

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i8 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !81556
  %.sroa.02.123.1 = phi i64 [ %i.z, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.1, !dbg !81555
  %i.w = add nsw i64 %.sroa.02.123.1, -1, !dbg !81561
  %i.x = icmp ult i64 %i.w, %1, !dbg !81562
  tail call void @llvm.assume(i1 %i.x), !dbg !81563
  %.val.1 = load i8, ptr %i.v, align 1, !dbg !81556, !alias.scope !5790, !noalias !5791, !noundef !5062 ; 2 uses
  %i.y = icmp slt i8 %.val19.1, %.val.1, !dbg !81557
  br i1 %i.y, label %._crit_edge.1, label %bb.g, !dbg !81556

bb.g:                                             ; preds = %.lr.ph.1
  %i.z = add i64 %.sroa.02.123.1, 1, !dbg !81554  ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.z, %1, !dbg !81558
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !81558

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !81572 ; 10 uses
  %i.aa = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !81559
  br i1 %i.aa, label %.split31, label %bb.h, !dbg !81559

bb.h:                                             ; preds = %._crit_edge.1
  %i.ab = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !81564 ; 4 uses
  %i.ac = icmp ult i64 %i.ab, %1, !dbg !81565
  br i1 %i.ac, label %bb.i, label %bb.d, !dbg !81565

bb.i:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.j, label %bb.f, !dbg !81573

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab, !dbg !81566 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.1, !dbg !81567 ; 2 uses
  %.sroa.013.0.copyload.1 = load i8, ptr %i.ad, align 1, !dbg !81568
  %i.af = load i8, ptr %i.ae, align 1, !dbg !81569
  store i8 %i.af, ptr %i.ad, align 1, !dbg !81569
  store i8 %.sroa.013.0.copyload.1, ptr %i.ae, align 1, !dbg !81570
  %i.ag = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !81571
  br i1 %i.ag, label %bb.k, label %.split.2, !dbg !81571

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ab, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81574
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81575
  br label %.split.2, !dbg !81575

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ah = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !81558 ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !81558

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i8, ptr %i.ad, align 1, !dbg !81556, !alias.scope !5791, !noalias !5790
  br label %.lr.ph.2, !dbg !81556

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i8 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !81556
  %.sroa.02.123.2 = phi i64 [ %i.am, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.2, !dbg !81555
  %i.aj = add nsw i64 %.sroa.02.123.2, -1, !dbg !81561
  %i.ak = icmp ult i64 %i.aj, %1, !dbg !81562
  tail call void @llvm.assume(i1 %i.ak), !dbg !81563
  %.val.2 = load i8, ptr %i.ai, align 1, !dbg !81556, !alias.scope !5790, !noalias !5791, !noundef !5062 ; 2 uses
  %i.al = icmp slt i8 %.val19.2, %.val.2, !dbg !81557
  br i1 %i.al, label %._crit_edge.2, label %bb.l, !dbg !81556

bb.l:                                             ; preds = %.lr.ph.2
  %i.am = add i64 %.sroa.02.123.2, 1, !dbg !81554 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.am, %1, !dbg !81558
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !81558

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !81572 ; 10 uses
  %i.an = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !81559
  br i1 %i.an, label %.split31, label %bb.m, !dbg !81559

bb.m:                                             ; preds = %._crit_edge.2
  %i.ao = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !81564 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !81565
  br i1 %i.ap, label %bb.n, label %bb.d, !dbg !81565

bb.n:                                             ; preds = %bb.m
  br i1 %i.ah, label %bb.o, label %bb.f, !dbg !81573

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao, !dbg !81566 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.2, !dbg !81567 ; 2 uses
  %.sroa.013.0.copyload.2 = load i8, ptr %i.aq, align 1, !dbg !81568
  %i.as = load i8, ptr %i.ar, align 1, !dbg !81569
  store i8 %i.as, ptr %i.aq, align 1, !dbg !81569
  store i8 %.sroa.013.0.copyload.2, ptr %i.ar, align 1, !dbg !81570
  %i.at = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !81571
  br i1 %i.at, label %bb.p, label %.split.3, !dbg !81571

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ao, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81574
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81575
  br label %.split.3, !dbg !81575

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.au = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !81558 ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !81558

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i8, ptr %i.aq, align 1, !dbg !81556, !alias.scope !5791, !noalias !5790
  br label %.lr.ph.3, !dbg !81556

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i8 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !81556
  %.sroa.02.123.3 = phi i64 [ %i.az, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.3, !dbg !81555
  %i.aw = add nsw i64 %.sroa.02.123.3, -1, !dbg !81561
  %i.ax = icmp ult i64 %i.aw, %1, !dbg !81562
  tail call void @llvm.assume(i1 %i.ax), !dbg !81563
  %.val.3 = load i8, ptr %i.av, align 1, !dbg !81556, !alias.scope !5790, !noalias !5791, !noundef !5062 ; 2 uses
  %i.ay = icmp slt i8 %.val19.3, %.val.3, !dbg !81557
  br i1 %i.ay, label %._crit_edge.3, label %bb.q, !dbg !81556

bb.q:                                             ; preds = %.lr.ph.3
  %i.az = add i64 %.sroa.02.123.3, 1, !dbg !81554 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.az, %1, !dbg !81558
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !81558

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !81572 ; 10 uses
  %i.ba = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !81559
  br i1 %i.ba, label %.split31, label %bb.r, !dbg !81559

bb.r:                                             ; preds = %._crit_edge.3
  %i.bb = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !81564 ; 4 uses
  %i.bc = icmp ult i64 %i.bb, %1, !dbg !81565
  br i1 %i.bc, label %bb.s, label %bb.d, !dbg !81565

bb.s:                                             ; preds = %bb.r
  br i1 %i.au, label %bb.t, label %bb.f, !dbg !81573

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb, !dbg !81566 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.3, !dbg !81567 ; 2 uses
  %.sroa.013.0.copyload.3 = load i8, ptr %i.bd, align 1, !dbg !81568
  %i.bf = load i8, ptr %i.be, align 1, !dbg !81569
  store i8 %i.bf, ptr %i.bd, align 1, !dbg !81569
  store i8 %.sroa.013.0.copyload.3, ptr %i.be, align 1, !dbg !81570
  %i.bg = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !81571
  br i1 %i.bg, label %bb.u, label %.split.4, !dbg !81571

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bb, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81574
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81575
  br label %.split.4, !dbg !81575

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bh = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !81558 ; 2 uses
  br i1 %i.bh, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !81558

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i8, ptr %i.bd, align 1, !dbg !81556, !alias.scope !5791, !noalias !5790
  br label %.lr.ph.4, !dbg !81556

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i8 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !81556
  %.sroa.02.123.4 = phi i64 [ %i.bm, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.4, !dbg !81555
  %i.bj = add nsw i64 %.sroa.02.123.4, -1, !dbg !81561
  %i.bk = icmp ult i64 %i.bj, %1, !dbg !81562
  tail call void @llvm.assume(i1 %i.bk), !dbg !81563
  %.val.4 = load i8, ptr %i.bi, align 1, !dbg !81556, !alias.scope !5790, !noalias !5791, !noundef !5062 ; 2 uses
  %i.bl = icmp slt i8 %.val19.4, %.val.4, !dbg !81557
  br i1 %i.bl, label %._crit_edge.4, label %bb.v, !dbg !81556

bb.v:                                             ; preds = %.lr.ph.4
  %i.bm = add i64 %.sroa.02.123.4, 1, !dbg !81554 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bm, %1, !dbg !81558
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !81558

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !81572 ; 7 uses
  %i.bn = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !81559
  br i1 %i.bn, label %.split31, label %bb.w, !dbg !81559

bb.w:                                             ; preds = %._crit_edge.4
  %i.bo = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !81564 ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %1, !dbg !81565
  br i1 %i.bp, label %bb.x, label %bb.d, !dbg !81565

bb.x:                                             ; preds = %bb.w
  br i1 %i.bh, label %bb.y, label %bb.f, !dbg !81573

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo, !dbg !81566 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.4, !dbg !81567 ; 2 uses
  %.sroa.013.0.copyload.4 = load i8, ptr %i.bq, align 1, !dbg !81568
  %i.bs = load i8, ptr %i.br, align 1, !dbg !81569
  store i8 %i.bs, ptr %i.bq, align 1, !dbg !81569
  store i8 %.sroa.013.0.copyload.4, ptr %i.br, align 1, !dbg !81570
  %i.bt = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !81571
  br i1 %i.bt, label %bb.z, label %.split31, !dbg !81571

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bo, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81574
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81575
  br label %.split31, !dbg !81575

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.123, i64 noundef %i.o, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81574
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81575
  br label %.split.1, !dbg !81575
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 21, -9223372036854775808) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81576 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph35
  %.sroa.02.123.us3494 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph95.preheader ] ; 2 uses
  %.val19.us93 = phi i8 [ %.val.us, %.lr.ph35 ], [ %.val.us32, %.lr.ph95.preheader ]
  %i.b = add nuw nsw i64 %.sroa.02.123.us3494, 1, !dbg !81601 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b, !dbg !81602
  %.val.us = load i8, ptr %i.c, align 1, !dbg !81603, !alias.scope !5791, !noalias !5790, !noundef !5062 ; 2 uses
  %i.d = icmp slt i8 %.val.us, %.val19.us93, !dbg !81604
  br i1 %i.d, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !81603

.lr.ph35:                                         ; preds = %.lr.ph95
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3494, %i.h, !dbg !81605
  br i1 %exitcond44.not, label %.split31, label %.lr.ph95, !dbg !81605

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph95
  %i.e = icmp eq i64 %i.b, %1, !dbg !81606
  br label %.split31, !dbg !81603

.lr.ph.us:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !81602
  %.val.us32 = load i8, ptr %i.f, align 1, !dbg !81603, !alias.scope !5791, !noalias !5790, !noundef !5062 ; 2 uses
  %.val19.us33 = load i8, ptr %0, align 1, !dbg !81603, !alias.scope !5790, !noalias !5791, !noundef !5062
  %i.g = icmp slt i8 %.val.us32, %.val19.us33, !dbg !81604
  br i1 %i.g, label %.split31, label %.lr.ph95.preheader, !dbg !81603

.lr.ph95.preheader:                               ; preds = %.lr.ph.us
  %i.h = add nsw i64 %1, -2
  br label %.lr.ph95, !dbg !81603

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i8, ptr %0, align 1, !dbg !81603, !alias.scope !5790, !noalias !5791
  br label %.lr.ph, !dbg !81603

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.e, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !81607
  ret i1 %.us-phi, !dbg !81607

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i8 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !81603
  %.sroa.02.123 = phi i64 [ %i.n, %bb.b ], [ 1, %.lr.ph.preheader ] ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123, !dbg !81602
  %i.j = add nsw i64 %.sroa.02.123, -1, !dbg !81608
  %i.k = icmp samesign ult i64 %i.j, %1, !dbg !81609
  tail call void @llvm.assume(i1 %i.k), !dbg !81610
  %.val = load i8, ptr %i.i, align 1, !dbg !81603, !alias.scope !5791, !noalias !5790, !noundef !5062 ; 2 uses
  %i.l = icmp slt i8 %.val, %.val19, !dbg !81604
  br i1 %i.l, label %._crit_edge, label %bb.b, !dbg !81603

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = icmp eq i64 %.sroa.02.123, %1, !dbg !81606
  br i1 %i.m, label %.split31, label %bb.c, !dbg !81606

bb.b:                                             ; preds = %.lr.ph
  %i.n = add nuw nsw i64 %.sroa.02.123, 1, !dbg !81601 ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %1, !dbg !81605
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !81605

bb.c:                                             ; preds = %._crit_edge
  %i.o = add nsw i64 %.sroa.02.123, -1, !dbg !81611 ; 4 uses
  %i.p = icmp ult i64 %i.o, %1, !dbg !81612
  br i1 %i.p, label %bb.e, label %bb.d, !dbg !81612

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.o, %bb.c ], [ %i.ab, %bb.h ], [ %i.ao, %bb.m ], [ %i.bb, %bb.r ], [ %i.bo, %bb.w ], !dbg !81611
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81612
  unreachable, !dbg !81612

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !81613 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123, !dbg !81614 ; 2 uses
  %.sroa.013.0.copyload = load i8, ptr %i.q, align 1, !dbg !81615
  %i.s = load i8, ptr %i.r, align 1, !dbg !81616
  store i8 %i.s, ptr %i.q, align 1, !dbg !81616
  store i8 %.sroa.013.0.copyload, ptr %i.r, align 1, !dbg !81617
  %i.t = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !81618
  br i1 %i.t, label %bb.aa, label %.split.1, !dbg !81618

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !81619
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81620
  unreachable, !dbg !81620

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.u = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !81605 ; 2 uses
  br i1 %i.u, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !81605

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i8, ptr %i.q, align 1, !dbg !81603, !alias.scope !5790, !noalias !5791
  br label %.lr.ph.1, !dbg !81603

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i8 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !81603
  %.sroa.02.123.1 = phi i64 [ %i.z, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.1, !dbg !81602
  %i.w = add nsw i64 %.sroa.02.123.1, -1, !dbg !81608
  %i.x = icmp ult i64 %i.w, %1, !dbg !81609
  tail call void @llvm.assume(i1 %i.x), !dbg !81610
  %.val.1 = load i8, ptr %i.v, align 1, !dbg !81603, !alias.scope !5791, !noalias !5790, !noundef !5062 ; 2 uses
  %i.y = icmp slt i8 %.val.1, %.val19.1, !dbg !81604
  br i1 %i.y, label %._crit_edge.1, label %bb.g, !dbg !81603

bb.g:                                             ; preds = %.lr.ph.1
  %i.z = add i64 %.sroa.02.123.1, 1, !dbg !81601  ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.z, %1, !dbg !81605
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !81605

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !81619 ; 10 uses
  %i.aa = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !81606
  br i1 %i.aa, label %.split31, label %bb.h, !dbg !81606

bb.h:                                             ; preds = %._crit_edge.1
  %i.ab = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !81611 ; 4 uses
  %i.ac = icmp ult i64 %i.ab, %1, !dbg !81612
  br i1 %i.ac, label %bb.i, label %bb.d, !dbg !81612

bb.i:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.j, label %bb.f, !dbg !81620

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab, !dbg !81613 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.1, !dbg !81614 ; 2 uses
  %.sroa.013.0.copyload.1 = load i8, ptr %i.ad, align 1, !dbg !81615
  %i.af = load i8, ptr %i.ae, align 1, !dbg !81616
  store i8 %i.af, ptr %i.ad, align 1, !dbg !81616
  store i8 %.sroa.013.0.copyload.1, ptr %i.ae, align 1, !dbg !81617
  %i.ag = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !81618
  br i1 %i.ag, label %bb.k, label %.split.2, !dbg !81618

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ab, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81621
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81622
  br label %.split.2, !dbg !81622

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ah = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !81605 ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !81605

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i8, ptr %i.ad, align 1, !dbg !81603, !alias.scope !5790, !noalias !5791
  br label %.lr.ph.2, !dbg !81603

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i8 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !81603
  %.sroa.02.123.2 = phi i64 [ %i.am, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.2, !dbg !81602
  %i.aj = add nsw i64 %.sroa.02.123.2, -1, !dbg !81608
  %i.ak = icmp ult i64 %i.aj, %1, !dbg !81609
  tail call void @llvm.assume(i1 %i.ak), !dbg !81610
  %.val.2 = load i8, ptr %i.ai, align 1, !dbg !81603, !alias.scope !5791, !noalias !5790, !noundef !5062 ; 2 uses
  %i.al = icmp slt i8 %.val.2, %.val19.2, !dbg !81604
  br i1 %i.al, label %._crit_edge.2, label %bb.l, !dbg !81603

bb.l:                                             ; preds = %.lr.ph.2
  %i.am = add i64 %.sroa.02.123.2, 1, !dbg !81601 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.am, %1, !dbg !81605
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !81605

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !81619 ; 10 uses
  %i.an = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !81606
  br i1 %i.an, label %.split31, label %bb.m, !dbg !81606

bb.m:                                             ; preds = %._crit_edge.2
  %i.ao = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !81611 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !81612
  br i1 %i.ap, label %bb.n, label %bb.d, !dbg !81612

bb.n:                                             ; preds = %bb.m
  br i1 %i.ah, label %bb.o, label %bb.f, !dbg !81620

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao, !dbg !81613 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.2, !dbg !81614 ; 2 uses
  %.sroa.013.0.copyload.2 = load i8, ptr %i.aq, align 1, !dbg !81615
  %i.as = load i8, ptr %i.ar, align 1, !dbg !81616
  store i8 %i.as, ptr %i.aq, align 1, !dbg !81616
  store i8 %.sroa.013.0.copyload.2, ptr %i.ar, align 1, !dbg !81617
  %i.at = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !81618
  br i1 %i.at, label %bb.p, label %.split.3, !dbg !81618

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ao, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81621
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81622
  br label %.split.3, !dbg !81622

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.au = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !81605 ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !81605

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i8, ptr %i.aq, align 1, !dbg !81603, !alias.scope !5790, !noalias !5791
  br label %.lr.ph.3, !dbg !81603

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i8 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !81603
  %.sroa.02.123.3 = phi i64 [ %i.az, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.3, !dbg !81602
  %i.aw = add nsw i64 %.sroa.02.123.3, -1, !dbg !81608
  %i.ax = icmp ult i64 %i.aw, %1, !dbg !81609
  tail call void @llvm.assume(i1 %i.ax), !dbg !81610
  %.val.3 = load i8, ptr %i.av, align 1, !dbg !81603, !alias.scope !5791, !noalias !5790, !noundef !5062 ; 2 uses
  %i.ay = icmp slt i8 %.val.3, %.val19.3, !dbg !81604
  br i1 %i.ay, label %._crit_edge.3, label %bb.q, !dbg !81603

bb.q:                                             ; preds = %.lr.ph.3
  %i.az = add i64 %.sroa.02.123.3, 1, !dbg !81601 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.az, %1, !dbg !81605
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !81605

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !81619 ; 10 uses
  %i.ba = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !81606
  br i1 %i.ba, label %.split31, label %bb.r, !dbg !81606

bb.r:                                             ; preds = %._crit_edge.3
  %i.bb = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !81611 ; 4 uses
  %i.bc = icmp ult i64 %i.bb, %1, !dbg !81612
  br i1 %i.bc, label %bb.s, label %bb.d, !dbg !81612

bb.s:                                             ; preds = %bb.r
  br i1 %i.au, label %bb.t, label %bb.f, !dbg !81620

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb, !dbg !81613 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.3, !dbg !81614 ; 2 uses
  %.sroa.013.0.copyload.3 = load i8, ptr %i.bd, align 1, !dbg !81615
  %i.bf = load i8, ptr %i.be, align 1, !dbg !81616
  store i8 %i.bf, ptr %i.bd, align 1, !dbg !81616
  store i8 %.sroa.013.0.copyload.3, ptr %i.be, align 1, !dbg !81617
  %i.bg = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !81618
  br i1 %i.bg, label %bb.u, label %.split.4, !dbg !81618

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bb, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81621
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81622
  br label %.split.4, !dbg !81622

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bh = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !81605 ; 2 uses
  br i1 %i.bh, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !81605

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i8, ptr %i.bd, align 1, !dbg !81603, !alias.scope !5790, !noalias !5791
  br label %.lr.ph.4, !dbg !81603

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i8 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !81603
  %.sroa.02.123.4 = phi i64 [ %i.bm, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.4, !dbg !81602
  %i.bj = add nsw i64 %.sroa.02.123.4, -1, !dbg !81608
  %i.bk = icmp ult i64 %i.bj, %1, !dbg !81609
  tail call void @llvm.assume(i1 %i.bk), !dbg !81610
  %.val.4 = load i8, ptr %i.bi, align 1, !dbg !81603, !alias.scope !5791, !noalias !5790, !noundef !5062 ; 2 uses
  %i.bl = icmp slt i8 %.val.4, %.val19.4, !dbg !81604
  br i1 %i.bl, label %._crit_edge.4, label %bb.v, !dbg !81603

bb.v:                                             ; preds = %.lr.ph.4
  %i.bm = add i64 %.sroa.02.123.4, 1, !dbg !81601 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bm, %1, !dbg !81605
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !81605

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !81619 ; 7 uses
  %i.bn = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !81606
  br i1 %i.bn, label %.split31, label %bb.w, !dbg !81606

bb.w:                                             ; preds = %._crit_edge.4
  %i.bo = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !81611 ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %1, !dbg !81612
  br i1 %i.bp, label %bb.x, label %bb.d, !dbg !81612

bb.x:                                             ; preds = %bb.w
  br i1 %i.bh, label %bb.y, label %bb.f, !dbg !81620

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo, !dbg !81613 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.4, !dbg !81614 ; 2 uses
  %.sroa.013.0.copyload.4 = load i8, ptr %i.bq, align 1, !dbg !81615
  %i.bs = load i8, ptr %i.br, align 1, !dbg !81616
  store i8 %i.bs, ptr %i.bq, align 1, !dbg !81616
  store i8 %.sroa.013.0.copyload.4, ptr %i.br, align 1, !dbg !81617
  %i.bt = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !81618
  br i1 %i.bt, label %bb.z, label %.split31, !dbg !81618

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bo, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81621
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81622
  br label %.split31, !dbg !81622

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.123, i64 noundef %i.o, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81621
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightaNCINvYSaINtB4_16ParallelSliceMutaE20par_sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81622
  br label %.split.1, !dbg !81622
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81623 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph36
  %.sroa.02.123.us3593 = phi i64 [ %i.b, %.lr.ph36 ], [ 1, %.lr.ph94.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3593, 1, !dbg !81654 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b, !dbg !81655
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.us3593, !dbg !81656
  %.val.us = load double, ptr %i.c, align 8, !dbg !81657, !alias.scope !5792, !noalias !5793, !noundef !5062
  %.val19.us = load double, ptr %i.d, align 8, !dbg !81657, !alias.scope !5793, !noalias !5792, !noundef !5062 ; 2 uses
  %i.e = fcmp ord double %.val19.us, 0.000000e+00, !dbg !81658
  %i.f = fcmp ult double %.val19.us, %.val.us, !dbg !81659
  %.not2.i.i.i.i.us = and i1 %i.e, %i.f, !dbg !81660
  br i1 %.not2.i.i.i.i.us, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph36, !dbg !81657

.lr.ph36:                                         ; preds = %.lr.ph94
  %exitcond45.not = icmp eq i64 %.sroa.02.123.us3593, %i.k, !dbg !81661
  br i1 %exitcond45.not, label %.split31, label %.lr.ph94, !dbg !81661

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph94
  %i.g = icmp eq i64 %i.b, %1, !dbg !81662
  br label %.split31, !dbg !81657

.lr.ph.us:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !81655
  %.val.us32 = load double, ptr %i.h, align 8, !dbg !81657, !alias.scope !5792, !noalias !5793, !noundef !5062
  %.val19.us33 = load double, ptr %0, align 8, !dbg !81657, !alias.scope !5793, !noalias !5792, !noundef !5062 ; 2 uses
  %i.i = fcmp ord double %.val19.us33, 0.000000e+00, !dbg !81658
  %i.j = fcmp ult double %.val19.us33, %.val.us32, !dbg !81659
  %.not2.i.i.i.i.us34 = and i1 %i.i, %i.j, !dbg !81660
  br i1 %.not2.i.i.i.i.us34, label %.split31, label %.lr.ph94.preheader, !dbg !81657

.lr.ph94.preheader:                               ; preds = %.lr.ph.us
  %i.k = add nsw i64 %1, -2
  br label %.lr.ph94, !dbg !81657

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load double, ptr %0, align 8, !dbg !81657, !alias.scope !5793, !noalias !5792
  br label %.lr.ph, !dbg !81657

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph36, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph36 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.g, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !81663
  ret i1 %.us-phi, !dbg !81663

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi double [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !81657 ; 2 uses
  %.sroa.02.123 = phi i64 [ %i.r, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123, !dbg !81655
  %i.m = add nsw i64 %.sroa.02.123, -1, !dbg !81664
  %i.n = icmp samesign ult i64 %i.m, %1, !dbg !81665
  tail call void @llvm.assume(i1 %i.n), !dbg !81666
  %.val = load double, ptr %i.l, align 8, !dbg !81657, !alias.scope !5792, !noalias !5793, !noundef !5062 ; 2 uses
  %i.o = fcmp ord double %.val19, 0.000000e+00, !dbg !81658
  %i.p = fcmp ult double %.val19, %.val, !dbg !81659
  %.not2.i.i.i.i = and i1 %i.o, %i.p, !dbg !81660
  br i1 %.not2.i.i.i.i, label %._crit_edge, label %bb.b, !dbg !81657

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = icmp eq i64 %.sroa.02.123, %1, !dbg !81662
  br i1 %i.q, label %.split31, label %bb.c, !dbg !81662

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.sroa.02.123, 1, !dbg !81654 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %1, !dbg !81661
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !81661

bb.c:                                             ; preds = %._crit_edge
  %i.s = add nsw i64 %.sroa.02.123, -1, !dbg !81667 ; 4 uses
  %i.t = icmp ult i64 %i.s, %1, !dbg !81668
  br i1 %i.t, label %bb.e, label %bb.d, !dbg !81668

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa40 = phi i64 [ %i.s, %bb.c ], [ %i.ag, %bb.h ], [ %i.au, %bb.m ], [ %i.bi, %bb.r ], [ %i.bw, %bb.w ], !dbg !81667
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa40, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81668
  unreachable, !dbg !81668

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s, !dbg !81669 ; 3 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8, !dbg !81670
  %i.w = shufflevector <2 x i64> %i.v, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !81671
  store <2 x i64> %i.w, ptr %i.u, align 8, !dbg !81671
  %i.x = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !81672
  br i1 %i.x, label %bb.aa, label %.split.1, !dbg !81672

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa43 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !81673
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa43, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81674
  unreachable, !dbg !81674

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.y = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !81661 ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !81661

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load double, ptr %i.u, align 8, !dbg !81657, !alias.scope !5793, !noalias !5792
  br label %.lr.ph.1, !dbg !81657

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi double [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !81657 ; 2 uses
  %.sroa.02.123.1 = phi i64 [ %i.ae, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !81655
  %i.aa = add nsw i64 %.sroa.02.123.1, -1, !dbg !81664
  %i.ab = icmp ult i64 %i.aa, %1, !dbg !81665
  tail call void @llvm.assume(i1 %i.ab), !dbg !81666
  %.val.1 = load double, ptr %i.z, align 8, !dbg !81657, !alias.scope !5792, !noalias !5793, !noundef !5062 ; 2 uses
  %i.ac = fcmp ord double %.val19.1, 0.000000e+00, !dbg !81658
  %i.ad = fcmp ult double %.val19.1, %.val.1, !dbg !81659
  %.not2.i.i.i.i.1 = and i1 %i.ac, %i.ad, !dbg !81660
  br i1 %.not2.i.i.i.i.1, label %._crit_edge.1, label %bb.g, !dbg !81657

bb.g:                                             ; preds = %.lr.ph.1
  %i.ae = add i64 %.sroa.02.123.1, 1, !dbg !81654 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ae, %1, !dbg !81661
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !81661

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !81673 ; 9 uses
  %i.af = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !81662
  br i1 %i.af, label %.split31, label %bb.h, !dbg !81662

bb.h:                                             ; preds = %._crit_edge.1
  %i.ag = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !81667 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %1, !dbg !81668
  br i1 %i.ah, label %bb.i, label %bb.d, !dbg !81668

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %bb.j, label %bb.f, !dbg !81674

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag, !dbg !81669 ; 3 uses
  %i.aj = load <2 x i64>, ptr %i.ai, align 8, !dbg !81670
  %i.ak = shufflevector <2 x i64> %i.aj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !81671
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !dbg !81671
  %i.al = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !81672
  br i1 %i.al, label %bb.k, label %.split.2, !dbg !81672

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ag, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81675
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81676
  br label %.split.2, !dbg !81676

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.am = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !81661 ; 2 uses
  br i1 %i.am, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !81661

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load double, ptr %i.ai, align 8, !dbg !81657, !alias.scope !5793, !noalias !5792
  br label %.lr.ph.2, !dbg !81657

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi double [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !81657 ; 2 uses
  %.sroa.02.123.2 = phi i64 [ %i.as, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !81655
  %i.ao = add nsw i64 %.sroa.02.123.2, -1, !dbg !81664
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !81665
  tail call void @llvm.assume(i1 %i.ap), !dbg !81666
  %.val.2 = load double, ptr %i.an, align 8, !dbg !81657, !alias.scope !5792, !noalias !5793, !noundef !5062 ; 2 uses
  %i.aq = fcmp ord double %.val19.2, 0.000000e+00, !dbg !81658
  %i.ar = fcmp ult double %.val19.2, %.val.2, !dbg !81659
  %.not2.i.i.i.i.2 = and i1 %i.aq, %i.ar, !dbg !81660
  br i1 %.not2.i.i.i.i.2, label %._crit_edge.2, label %bb.l, !dbg !81657

bb.l:                                             ; preds = %.lr.ph.2
  %i.as = add i64 %.sroa.02.123.2, 1, !dbg !81654 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.as, %1, !dbg !81661
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !81661

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !81673 ; 9 uses
  %i.at = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !81662
  br i1 %i.at, label %.split31, label %bb.m, !dbg !81662

bb.m:                                             ; preds = %._crit_edge.2
  %i.au = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !81667 ; 4 uses
  %i.av = icmp ult i64 %i.au, %1, !dbg !81668
  br i1 %i.av, label %bb.n, label %bb.d, !dbg !81668

bb.n:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.o, label %bb.f, !dbg !81674

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au, !dbg !81669 ; 3 uses
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !dbg !81670
  %i.ay = shufflevector <2 x i64> %i.ax, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !81671
  store <2 x i64> %i.ay, ptr %i.aw, align 8, !dbg !81671
  %i.az = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !81672
  br i1 %i.az, label %bb.p, label %.split.3, !dbg !81672

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.au, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81675
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81676
  br label %.split.3, !dbg !81676

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.ba = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !81661 ; 2 uses
  br i1 %i.ba, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !81661

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load double, ptr %i.aw, align 8, !dbg !81657, !alias.scope !5793, !noalias !5792
  br label %.lr.ph.3, !dbg !81657

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi double [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !81657 ; 2 uses
  %.sroa.02.123.3 = phi i64 [ %i.bg, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !81655
  %i.bc = add nsw i64 %.sroa.02.123.3, -1, !dbg !81664
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !81665
  tail call void @llvm.assume(i1 %i.bd), !dbg !81666
  %.val.3 = load double, ptr %i.bb, align 8, !dbg !81657, !alias.scope !5792, !noalias !5793, !noundef !5062 ; 2 uses
  %i.be = fcmp ord double %.val19.3, 0.000000e+00, !dbg !81658
  %i.bf = fcmp ult double %.val19.3, %.val.3, !dbg !81659
  %.not2.i.i.i.i.3 = and i1 %i.be, %i.bf, !dbg !81660
  br i1 %.not2.i.i.i.i.3, label %._crit_edge.3, label %bb.q, !dbg !81657

bb.q:                                             ; preds = %.lr.ph.3
  %i.bg = add i64 %.sroa.02.123.3, 1, !dbg !81654 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.bg, %1, !dbg !81661
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !81661

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !81673 ; 9 uses
  %i.bh = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !81662
  br i1 %i.bh, label %.split31, label %bb.r, !dbg !81662

bb.r:                                             ; preds = %._crit_edge.3
  %i.bi = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !81667 ; 4 uses
  %i.bj = icmp ult i64 %i.bi, %1, !dbg !81668
  br i1 %i.bj, label %bb.s, label %bb.d, !dbg !81668

bb.s:                                             ; preds = %bb.r
  br i1 %i.ba, label %bb.t, label %bb.f, !dbg !81674

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi, !dbg !81669 ; 3 uses
  %i.bl = load <2 x i64>, ptr %i.bk, align 8, !dbg !81670
  %i.bm = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !81671
  store <2 x i64> %i.bm, ptr %i.bk, align 8, !dbg !81671
  %i.bn = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !81672
  br i1 %i.bn, label %bb.u, label %.split.4, !dbg !81672

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bi, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81675
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81676
  br label %.split.4, !dbg !81676

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bo = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !81661 ; 2 uses
  br i1 %i.bo, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !81661

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load double, ptr %i.bk, align 8, !dbg !81657, !alias.scope !5793, !noalias !5792
  br label %.lr.ph.4, !dbg !81657

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi double [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !81657 ; 2 uses
  %.sroa.02.123.4 = phi i64 [ %i.bu, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !81655
  %i.bq = add nsw i64 %.sroa.02.123.4, -1, !dbg !81664
  %i.br = icmp ult i64 %i.bq, %1, !dbg !81665
  tail call void @llvm.assume(i1 %i.br), !dbg !81666
  %.val.4 = load double, ptr %i.bp, align 8, !dbg !81657, !alias.scope !5792, !noalias !5793, !noundef !5062 ; 2 uses
  %i.bs = fcmp ord double %.val19.4, 0.000000e+00, !dbg !81658
  %i.bt = fcmp ult double %.val19.4, %.val.4, !dbg !81659
  %.not2.i.i.i.i.4 = and i1 %i.bs, %i.bt, !dbg !81660
  br i1 %.not2.i.i.i.i.4, label %._crit_edge.4, label %bb.v, !dbg !81657

bb.v:                                             ; preds = %.lr.ph.4
  %i.bu = add i64 %.sroa.02.123.4, 1, !dbg !81654 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bu, %1, !dbg !81661
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !81661

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !81673 ; 6 uses
  %i.bv = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !81662
  br i1 %i.bv, label %.split31, label %bb.w, !dbg !81662

bb.w:                                             ; preds = %._crit_edge.4
  %i.bw = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !81667 ; 4 uses
  %i.bx = icmp ult i64 %i.bw, %1, !dbg !81668
  br i1 %i.bx, label %bb.x, label %bb.d, !dbg !81668

bb.x:                                             ; preds = %bb.w
  br i1 %i.bo, label %bb.y, label %bb.f, !dbg !81674

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bw, !dbg !81669 ; 2 uses
  %i.bz = load <2 x i64>, ptr %i.by, align 8, !dbg !81670
  %i.ca = shufflevector <2 x i64> %i.bz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !81671
  store <2 x i64> %i.ca, ptr %i.by, align 8, !dbg !81671
  %i.cb = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !81672
  br i1 %i.cb, label %bb.z, label %.split31, !dbg !81672

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bw, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81675
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81676
  br label %.split31, !dbg !81676

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.123, i64 noundef %i.s, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81675
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81676
  br label %.split.1, !dbg !81676
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81677 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph36
  %.sroa.02.123.us3593 = phi i64 [ %i.b, %.lr.ph36 ], [ 1, %.lr.ph94.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3593, 1, !dbg !81707 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b, !dbg !81708
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.us3593, !dbg !81709
  %.val.us = load double, ptr %i.c, align 8, !dbg !81710, !alias.scope !5793, !noalias !5792, !noundef !5062 ; 2 uses
  %.val19.us = load double, ptr %i.d, align 8, !dbg !81710, !alias.scope !5792, !noalias !5793, !noundef !5062
  %i.e = fcmp ord double %.val.us, 0.000000e+00, !dbg !81711
  %i.f = fcmp ult double %.val.us, %.val19.us, !dbg !81712
  %.not2.i.i.i.us = and i1 %i.e, %i.f, !dbg !81713
  br i1 %.not2.i.i.i.us, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph36, !dbg !81710

.lr.ph36:                                         ; preds = %.lr.ph94
  %exitcond45.not = icmp eq i64 %.sroa.02.123.us3593, %i.k, !dbg !81714
  br i1 %exitcond45.not, label %.split31, label %.lr.ph94, !dbg !81714

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph94
  %i.g = icmp eq i64 %i.b, %1, !dbg !81715
  br label %.split31, !dbg !81710

.lr.ph.us:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !81708
  %.val.us32 = load double, ptr %i.h, align 8, !dbg !81710, !alias.scope !5793, !noalias !5792, !noundef !5062 ; 2 uses
  %.val19.us33 = load double, ptr %0, align 8, !dbg !81710, !alias.scope !5792, !noalias !5793, !noundef !5062
  %i.i = fcmp ord double %.val.us32, 0.000000e+00, !dbg !81711
  %i.j = fcmp ult double %.val.us32, %.val19.us33, !dbg !81712
  %.not2.i.i.i.us34 = and i1 %i.i, %i.j, !dbg !81713
  br i1 %.not2.i.i.i.us34, label %.split31, label %.lr.ph94.preheader, !dbg !81710

.lr.ph94.preheader:                               ; preds = %.lr.ph.us
  %i.k = add nsw i64 %1, -2
  br label %.lr.ph94, !dbg !81710

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load double, ptr %0, align 8, !dbg !81710, !alias.scope !5792, !noalias !5793
  br label %.lr.ph, !dbg !81710

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph36, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph36 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.g, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !81716
  ret i1 %.us-phi, !dbg !81716

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi double [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !81710
  %.sroa.02.123 = phi i64 [ %i.r, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123, !dbg !81708
  %i.m = add nsw i64 %.sroa.02.123, -1, !dbg !81717
  %i.n = icmp samesign ult i64 %i.m, %1, !dbg !81718
  tail call void @llvm.assume(i1 %i.n), !dbg !81719
  %.val = load double, ptr %i.l, align 8, !dbg !81710, !alias.scope !5793, !noalias !5792, !noundef !5062 ; 3 uses
  %i.o = fcmp ord double %.val, 0.000000e+00, !dbg !81711
  %i.p = fcmp ult double %.val, %.val19, !dbg !81712
  %.not2.i.i.i = and i1 %i.o, %i.p, !dbg !81713
  br i1 %.not2.i.i.i, label %._crit_edge, label %bb.b, !dbg !81710

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = icmp eq i64 %.sroa.02.123, %1, !dbg !81715
  br i1 %i.q, label %.split31, label %bb.c, !dbg !81715

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.sroa.02.123, 1, !dbg !81707 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %1, !dbg !81714
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !81714

bb.c:                                             ; preds = %._crit_edge
  %i.s = add nsw i64 %.sroa.02.123, -1, !dbg !81720 ; 4 uses
  %i.t = icmp ult i64 %i.s, %1, !dbg !81721
  br i1 %i.t, label %bb.e, label %bb.d, !dbg !81721

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa40 = phi i64 [ %i.s, %bb.c ], [ %i.ag, %bb.h ], [ %i.au, %bb.m ], [ %i.bi, %bb.r ], [ %i.bw, %bb.w ], !dbg !81720
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa40, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81721
  unreachable, !dbg !81721

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s, !dbg !81722 ; 3 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8, !dbg !81723
  %i.w = shufflevector <2 x i64> %i.v, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !81724
  store <2 x i64> %i.w, ptr %i.u, align 8, !dbg !81724
  %i.x = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !81725
  br i1 %i.x, label %bb.aa, label %.split.1, !dbg !81725

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa43 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !81726
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa43, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81727
  unreachable, !dbg !81727

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.y = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !81714 ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !81714

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load double, ptr %i.u, align 8, !dbg !81710, !alias.scope !5792, !noalias !5793
  br label %.lr.ph.1, !dbg !81710

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi double [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !81710
  %.sroa.02.123.1 = phi i64 [ %i.ae, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !81708
  %i.aa = add nsw i64 %.sroa.02.123.1, -1, !dbg !81717
  %i.ab = icmp ult i64 %i.aa, %1, !dbg !81718
  tail call void @llvm.assume(i1 %i.ab), !dbg !81719
  %.val.1 = load double, ptr %i.z, align 8, !dbg !81710, !alias.scope !5793, !noalias !5792, !noundef !5062 ; 3 uses
  %i.ac = fcmp ord double %.val.1, 0.000000e+00, !dbg !81711
  %i.ad = fcmp ult double %.val.1, %.val19.1, !dbg !81712
  %.not2.i.i.i.1 = and i1 %i.ac, %i.ad, !dbg !81713
  br i1 %.not2.i.i.i.1, label %._crit_edge.1, label %bb.g, !dbg !81710

bb.g:                                             ; preds = %.lr.ph.1
  %i.ae = add i64 %.sroa.02.123.1, 1, !dbg !81707 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ae, %1, !dbg !81714
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !81714

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !81726 ; 9 uses
  %i.af = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !81715
  br i1 %i.af, label %.split31, label %bb.h, !dbg !81715

bb.h:                                             ; preds = %._crit_edge.1
  %i.ag = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !81720 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %1, !dbg !81721
  br i1 %i.ah, label %bb.i, label %bb.d, !dbg !81721

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %bb.j, label %bb.f, !dbg !81727

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag, !dbg !81722 ; 3 uses
  %i.aj = load <2 x i64>, ptr %i.ai, align 8, !dbg !81723
  %i.ak = shufflevector <2 x i64> %i.aj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !81724
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !dbg !81724
  %i.al = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !81725
  br i1 %i.al, label %bb.k, label %.split.2, !dbg !81725

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ag, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81728
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81729
  br label %.split.2, !dbg !81729

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.am = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !81714 ; 2 uses
  br i1 %i.am, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !81714

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load double, ptr %i.ai, align 8, !dbg !81710, !alias.scope !5792, !noalias !5793
  br label %.lr.ph.2, !dbg !81710

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi double [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !81710
  %.sroa.02.123.2 = phi i64 [ %i.as, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !81708
  %i.ao = add nsw i64 %.sroa.02.123.2, -1, !dbg !81717
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !81718
  tail call void @llvm.assume(i1 %i.ap), !dbg !81719
  %.val.2 = load double, ptr %i.an, align 8, !dbg !81710, !alias.scope !5793, !noalias !5792, !noundef !5062 ; 3 uses
  %i.aq = fcmp ord double %.val.2, 0.000000e+00, !dbg !81711
  %i.ar = fcmp ult double %.val.2, %.val19.2, !dbg !81712
  %.not2.i.i.i.2 = and i1 %i.aq, %i.ar, !dbg !81713
  br i1 %.not2.i.i.i.2, label %._crit_edge.2, label %bb.l, !dbg !81710

bb.l:                                             ; preds = %.lr.ph.2
  %i.as = add i64 %.sroa.02.123.2, 1, !dbg !81707 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.as, %1, !dbg !81714
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !81714

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !81726 ; 9 uses
  %i.at = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !81715
  br i1 %i.at, label %.split31, label %bb.m, !dbg !81715

bb.m:                                             ; preds = %._crit_edge.2
  %i.au = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !81720 ; 4 uses
  %i.av = icmp ult i64 %i.au, %1, !dbg !81721
  br i1 %i.av, label %bb.n, label %bb.d, !dbg !81721

bb.n:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.o, label %bb.f, !dbg !81727

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au, !dbg !81722 ; 3 uses
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !dbg !81723
  %i.ay = shufflevector <2 x i64> %i.ax, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !81724
  store <2 x i64> %i.ay, ptr %i.aw, align 8, !dbg !81724
  %i.az = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !81725
  br i1 %i.az, label %bb.p, label %.split.3, !dbg !81725

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.au, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81728
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81729
  br label %.split.3, !dbg !81729

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.ba = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !81714 ; 2 uses
  br i1 %i.ba, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !81714

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load double, ptr %i.aw, align 8, !dbg !81710, !alias.scope !5792, !noalias !5793
  br label %.lr.ph.3, !dbg !81710

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi double [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !81710
  %.sroa.02.123.3 = phi i64 [ %i.bg, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !81708
  %i.bc = add nsw i64 %.sroa.02.123.3, -1, !dbg !81717
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !81718
  tail call void @llvm.assume(i1 %i.bd), !dbg !81719
  %.val.3 = load double, ptr %i.bb, align 8, !dbg !81710, !alias.scope !5793, !noalias !5792, !noundef !5062 ; 3 uses
  %i.be = fcmp ord double %.val.3, 0.000000e+00, !dbg !81711
  %i.bf = fcmp ult double %.val.3, %.val19.3, !dbg !81712
  %.not2.i.i.i.3 = and i1 %i.be, %i.bf, !dbg !81713
  br i1 %.not2.i.i.i.3, label %._crit_edge.3, label %bb.q, !dbg !81710

bb.q:                                             ; preds = %.lr.ph.3
  %i.bg = add i64 %.sroa.02.123.3, 1, !dbg !81707 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.bg, %1, !dbg !81714
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !81714

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !81726 ; 9 uses
  %i.bh = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !81715
  br i1 %i.bh, label %.split31, label %bb.r, !dbg !81715

bb.r:                                             ; preds = %._crit_edge.3
  %i.bi = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !81720 ; 4 uses
  %i.bj = icmp ult i64 %i.bi, %1, !dbg !81721
  br i1 %i.bj, label %bb.s, label %bb.d, !dbg !81721

bb.s:                                             ; preds = %bb.r
  br i1 %i.ba, label %bb.t, label %bb.f, !dbg !81727

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi, !dbg !81722 ; 3 uses
  %i.bl = load <2 x i64>, ptr %i.bk, align 8, !dbg !81723
  %i.bm = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !81724
  store <2 x i64> %i.bm, ptr %i.bk, align 8, !dbg !81724
  %i.bn = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !81725
  br i1 %i.bn, label %bb.u, label %.split.4, !dbg !81725

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bi, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81728
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81729
  br label %.split.4, !dbg !81729

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bo = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !81714 ; 2 uses
  br i1 %i.bo, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !81714

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load double, ptr %i.bk, align 8, !dbg !81710, !alias.scope !5792, !noalias !5793
  br label %.lr.ph.4, !dbg !81710

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi double [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !81710
  %.sroa.02.123.4 = phi i64 [ %i.bu, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !81708
  %i.bq = add nsw i64 %.sroa.02.123.4, -1, !dbg !81717
  %i.br = icmp ult i64 %i.bq, %1, !dbg !81718
  tail call void @llvm.assume(i1 %i.br), !dbg !81719
  %.val.4 = load double, ptr %i.bp, align 8, !dbg !81710, !alias.scope !5793, !noalias !5792, !noundef !5062 ; 3 uses
  %i.bs = fcmp ord double %.val.4, 0.000000e+00, !dbg !81711
  %i.bt = fcmp ult double %.val.4, %.val19.4, !dbg !81712
  %.not2.i.i.i.4 = and i1 %i.bs, %i.bt, !dbg !81713
  br i1 %.not2.i.i.i.4, label %._crit_edge.4, label %bb.v, !dbg !81710

bb.v:                                             ; preds = %.lr.ph.4
  %i.bu = add i64 %.sroa.02.123.4, 1, !dbg !81707 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bu, %1, !dbg !81714
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !81714

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !81726 ; 6 uses
  %i.bv = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !81715
  br i1 %i.bv, label %.split31, label %bb.w, !dbg !81715

bb.w:                                             ; preds = %._crit_edge.4
  %i.bw = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !81720 ; 4 uses
  %i.bx = icmp ult i64 %i.bw, %1, !dbg !81721
  br i1 %i.bx, label %bb.x, label %bb.d, !dbg !81721

bb.x:                                             ; preds = %bb.w
  br i1 %i.bo, label %bb.y, label %bb.f, !dbg !81727

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bw, !dbg !81722 ; 2 uses
  %i.bz = load <2 x i64>, ptr %i.by, align 8, !dbg !81723
  %i.ca = shufflevector <2 x i64> %i.bz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !81724
  store <2 x i64> %i.ca, ptr %i.by, align 8, !dbg !81724
  %i.cb = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !81725
  br i1 %i.cb, label %bb.z, label %.split31, !dbg !81725

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bw, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81728
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81729
  br label %.split31, !dbg !81729

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.123, i64 noundef %i.s, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81728
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81729
  br label %.split.1, !dbg !81729
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 21, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81730 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph36
  %.sroa.02.123.us3593 = phi i64 [ %i.b, %.lr.ph36 ], [ 1, %.lr.ph94.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3593, 1, !dbg !81761 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b, !dbg !81762
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.us3593, !dbg !81763
  %.val.us = load float, ptr %i.c, align 4, !dbg !81764, !alias.scope !5794, !noalias !5795, !noundef !5062
  %.val19.us = load float, ptr %i.d, align 4, !dbg !81764, !alias.scope !5795, !noalias !5794, !noundef !5062 ; 2 uses
  %i.e = fcmp ord float %.val19.us, 0.000000e+00, !dbg !81765
  %i.f = fcmp ult float %.val19.us, %.val.us, !dbg !81766
  %.not2.i.i.i.i.us = and i1 %i.e, %i.f, !dbg !81767
  br i1 %.not2.i.i.i.i.us, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph36, !dbg !81764

.lr.ph36:                                         ; preds = %.lr.ph94
  %exitcond45.not = icmp eq i64 %.sroa.02.123.us3593, %i.k, !dbg !81768
  br i1 %exitcond45.not, label %.split31, label %.lr.ph94, !dbg !81768

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph94
  %i.g = icmp eq i64 %i.b, %1, !dbg !81769
  br label %.split31, !dbg !81764

.lr.ph.us:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !81762
  %.val.us32 = load float, ptr %i.h, align 4, !dbg !81764, !alias.scope !5794, !noalias !5795, !noundef !5062
  %.val19.us33 = load float, ptr %0, align 4, !dbg !81764, !alias.scope !5795, !noalias !5794, !noundef !5062 ; 2 uses
  %i.i = fcmp ord float %.val19.us33, 0.000000e+00, !dbg !81765
  %i.j = fcmp ult float %.val19.us33, %.val.us32, !dbg !81766
  %.not2.i.i.i.i.us34 = and i1 %i.i, %i.j, !dbg !81767
  br i1 %.not2.i.i.i.i.us34, label %.split31, label %.lr.ph94.preheader, !dbg !81764

.lr.ph94.preheader:                               ; preds = %.lr.ph.us
  %i.k = add nsw i64 %1, -2
  br label %.lr.ph94, !dbg !81764

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load float, ptr %0, align 4, !dbg !81764, !alias.scope !5795, !noalias !5794
  br label %.lr.ph, !dbg !81764

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph36, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph36 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.g, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !81770
  ret i1 %.us-phi, !dbg !81770

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi float [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !81764 ; 2 uses
  %.sroa.02.123 = phi i64 [ %i.r, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123, !dbg !81762
  %i.m = add nsw i64 %.sroa.02.123, -1, !dbg !81771
  %i.n = icmp samesign ult i64 %i.m, %1, !dbg !81772
  tail call void @llvm.assume(i1 %i.n), !dbg !81773
  %.val = load float, ptr %i.l, align 4, !dbg !81764, !alias.scope !5794, !noalias !5795, !noundef !5062 ; 2 uses
  %i.o = fcmp ord float %.val19, 0.000000e+00, !dbg !81765
  %i.p = fcmp ult float %.val19, %.val, !dbg !81766
  %.not2.i.i.i.i = and i1 %i.o, %i.p, !dbg !81767
  br i1 %.not2.i.i.i.i, label %._crit_edge, label %bb.b, !dbg !81764

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = icmp eq i64 %.sroa.02.123, %1, !dbg !81769
  br i1 %i.q, label %.split31, label %bb.c, !dbg !81769

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.sroa.02.123, 1, !dbg !81761 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %1, !dbg !81768
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !81768

bb.c:                                             ; preds = %._crit_edge
  %i.s = add nsw i64 %.sroa.02.123, -1, !dbg !81774 ; 4 uses
  %i.t = icmp ult i64 %i.s, %1, !dbg !81775
  br i1 %i.t, label %bb.e, label %bb.d, !dbg !81775

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa40 = phi i64 [ %i.s, %bb.c ], [ %i.ag, %bb.h ], [ %i.au, %bb.m ], [ %i.bi, %bb.r ], [ %i.bw, %bb.w ], !dbg !81774
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa40, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81775
  unreachable, !dbg !81775

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s, !dbg !81776 ; 3 uses
  %i.v = load <2 x i32>, ptr %i.u, align 4, !dbg !81777
  %i.w = shufflevector <2 x i32> %i.v, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81778
  store <2 x i32> %i.w, ptr %i.u, align 4, !dbg !81778
  %i.x = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !81779
  br i1 %i.x, label %bb.aa, label %.split.1, !dbg !81779

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa43 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !81780
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa43, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81781
  unreachable, !dbg !81781

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.y = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !81768 ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !81768

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load float, ptr %i.u, align 4, !dbg !81764, !alias.scope !5795, !noalias !5794
  br label %.lr.ph.1, !dbg !81764

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi float [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !81764 ; 2 uses
  %.sroa.02.123.1 = phi i64 [ %i.ae, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !81762
  %i.aa = add nsw i64 %.sroa.02.123.1, -1, !dbg !81771
  %i.ab = icmp ult i64 %i.aa, %1, !dbg !81772
  tail call void @llvm.assume(i1 %i.ab), !dbg !81773
  %.val.1 = load float, ptr %i.z, align 4, !dbg !81764, !alias.scope !5794, !noalias !5795, !noundef !5062 ; 2 uses
  %i.ac = fcmp ord float %.val19.1, 0.000000e+00, !dbg !81765
  %i.ad = fcmp ult float %.val19.1, %.val.1, !dbg !81766
  %.not2.i.i.i.i.1 = and i1 %i.ac, %i.ad, !dbg !81767
  br i1 %.not2.i.i.i.i.1, label %._crit_edge.1, label %bb.g, !dbg !81764

bb.g:                                             ; preds = %.lr.ph.1
  %i.ae = add i64 %.sroa.02.123.1, 1, !dbg !81761 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ae, %1, !dbg !81768
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !81768

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !81780 ; 9 uses
  %i.af = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !81769
  br i1 %i.af, label %.split31, label %bb.h, !dbg !81769

bb.h:                                             ; preds = %._crit_edge.1
  %i.ag = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !81774 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %1, !dbg !81775
  br i1 %i.ah, label %bb.i, label %bb.d, !dbg !81775

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %bb.j, label %bb.f, !dbg !81781

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag, !dbg !81776 ; 3 uses
  %i.aj = load <2 x i32>, ptr %i.ai, align 4, !dbg !81777
  %i.ak = shufflevector <2 x i32> %i.aj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81778
  store <2 x i32> %i.ak, ptr %i.ai, align 4, !dbg !81778
  %i.al = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !81779
  br i1 %i.al, label %bb.k, label %.split.2, !dbg !81779

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ag, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81782
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81783
  br label %.split.2, !dbg !81783

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.am = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !81768 ; 2 uses
  br i1 %i.am, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !81768

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load float, ptr %i.ai, align 4, !dbg !81764, !alias.scope !5795, !noalias !5794
  br label %.lr.ph.2, !dbg !81764

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi float [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !81764 ; 2 uses
  %.sroa.02.123.2 = phi i64 [ %i.as, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !81762
  %i.ao = add nsw i64 %.sroa.02.123.2, -1, !dbg !81771
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !81772
  tail call void @llvm.assume(i1 %i.ap), !dbg !81773
  %.val.2 = load float, ptr %i.an, align 4, !dbg !81764, !alias.scope !5794, !noalias !5795, !noundef !5062 ; 2 uses
  %i.aq = fcmp ord float %.val19.2, 0.000000e+00, !dbg !81765
  %i.ar = fcmp ult float %.val19.2, %.val.2, !dbg !81766
  %.not2.i.i.i.i.2 = and i1 %i.aq, %i.ar, !dbg !81767
  br i1 %.not2.i.i.i.i.2, label %._crit_edge.2, label %bb.l, !dbg !81764

bb.l:                                             ; preds = %.lr.ph.2
  %i.as = add i64 %.sroa.02.123.2, 1, !dbg !81761 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.as, %1, !dbg !81768
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !81768

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !81780 ; 9 uses
  %i.at = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !81769
  br i1 %i.at, label %.split31, label %bb.m, !dbg !81769

bb.m:                                             ; preds = %._crit_edge.2
  %i.au = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !81774 ; 4 uses
  %i.av = icmp ult i64 %i.au, %1, !dbg !81775
  br i1 %i.av, label %bb.n, label %bb.d, !dbg !81775

bb.n:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.o, label %bb.f, !dbg !81781

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au, !dbg !81776 ; 3 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !dbg !81777
  %i.ay = shufflevector <2 x i32> %i.ax, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81778
  store <2 x i32> %i.ay, ptr %i.aw, align 4, !dbg !81778
  %i.az = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !81779
  br i1 %i.az, label %bb.p, label %.split.3, !dbg !81779

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.au, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81782
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81783
  br label %.split.3, !dbg !81783

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.ba = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !81768 ; 2 uses
  br i1 %i.ba, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !81768

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load float, ptr %i.aw, align 4, !dbg !81764, !alias.scope !5795, !noalias !5794
  br label %.lr.ph.3, !dbg !81764

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi float [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !81764 ; 2 uses
  %.sroa.02.123.3 = phi i64 [ %i.bg, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !81762
  %i.bc = add nsw i64 %.sroa.02.123.3, -1, !dbg !81771
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !81772
  tail call void @llvm.assume(i1 %i.bd), !dbg !81773
  %.val.3 = load float, ptr %i.bb, align 4, !dbg !81764, !alias.scope !5794, !noalias !5795, !noundef !5062 ; 2 uses
  %i.be = fcmp ord float %.val19.3, 0.000000e+00, !dbg !81765
  %i.bf = fcmp ult float %.val19.3, %.val.3, !dbg !81766
  %.not2.i.i.i.i.3 = and i1 %i.be, %i.bf, !dbg !81767
  br i1 %.not2.i.i.i.i.3, label %._crit_edge.3, label %bb.q, !dbg !81764

bb.q:                                             ; preds = %.lr.ph.3
  %i.bg = add i64 %.sroa.02.123.3, 1, !dbg !81761 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.bg, %1, !dbg !81768
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !81768

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !81780 ; 9 uses
  %i.bh = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !81769
  br i1 %i.bh, label %.split31, label %bb.r, !dbg !81769

bb.r:                                             ; preds = %._crit_edge.3
  %i.bi = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !81774 ; 4 uses
  %i.bj = icmp ult i64 %i.bi, %1, !dbg !81775
  br i1 %i.bj, label %bb.s, label %bb.d, !dbg !81775

bb.s:                                             ; preds = %bb.r
  br i1 %i.ba, label %bb.t, label %bb.f, !dbg !81781

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi, !dbg !81776 ; 3 uses
  %i.bl = load <2 x i32>, ptr %i.bk, align 4, !dbg !81777
  %i.bm = shufflevector <2 x i32> %i.bl, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81778
  store <2 x i32> %i.bm, ptr %i.bk, align 4, !dbg !81778
  %i.bn = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !81779
  br i1 %i.bn, label %bb.u, label %.split.4, !dbg !81779

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bi, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81782
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81783
  br label %.split.4, !dbg !81783

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bo = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !81768 ; 2 uses
  br i1 %i.bo, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !81768

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load float, ptr %i.bk, align 4, !dbg !81764, !alias.scope !5795, !noalias !5794
  br label %.lr.ph.4, !dbg !81764

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi float [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !81764 ; 2 uses
  %.sroa.02.123.4 = phi i64 [ %i.bu, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !81762
  %i.bq = add nsw i64 %.sroa.02.123.4, -1, !dbg !81771
  %i.br = icmp ult i64 %i.bq, %1, !dbg !81772
  tail call void @llvm.assume(i1 %i.br), !dbg !81773
  %.val.4 = load float, ptr %i.bp, align 4, !dbg !81764, !alias.scope !5794, !noalias !5795, !noundef !5062 ; 2 uses
  %i.bs = fcmp ord float %.val19.4, 0.000000e+00, !dbg !81765
  %i.bt = fcmp ult float %.val19.4, %.val.4, !dbg !81766
  %.not2.i.i.i.i.4 = and i1 %i.bs, %i.bt, !dbg !81767
  br i1 %.not2.i.i.i.i.4, label %._crit_edge.4, label %bb.v, !dbg !81764

bb.v:                                             ; preds = %.lr.ph.4
  %i.bu = add i64 %.sroa.02.123.4, 1, !dbg !81761 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bu, %1, !dbg !81768
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !81768

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !81780 ; 6 uses
  %i.bv = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !81769
  br i1 %i.bv, label %.split31, label %bb.w, !dbg !81769

bb.w:                                             ; preds = %._crit_edge.4
  %i.bw = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !81774 ; 4 uses
  %i.bx = icmp ult i64 %i.bw, %1, !dbg !81775
  br i1 %i.bx, label %bb.x, label %bb.d, !dbg !81775

bb.x:                                             ; preds = %bb.w
  br i1 %i.bo, label %bb.y, label %bb.f, !dbg !81781

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bw, !dbg !81776 ; 2 uses
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !dbg !81777
  %i.ca = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81778
  store <2 x i32> %i.ca, ptr %i.by, align 4, !dbg !81778
  %i.cb = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !81779
  br i1 %i.cb, label %bb.z, label %.split31, !dbg !81779

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bw, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81782
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81783
  br label %.split31, !dbg !81783

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.123, i64 noundef %i.s, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81782
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81783
  br label %.split.1, !dbg !81783
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 21, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81784 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph36
  %.sroa.02.123.us3593 = phi i64 [ %i.b, %.lr.ph36 ], [ 1, %.lr.ph94.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3593, 1, !dbg !81814 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b, !dbg !81815
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.us3593, !dbg !81816
  %.val.us = load float, ptr %i.c, align 4, !dbg !81817, !alias.scope !5795, !noalias !5794, !noundef !5062 ; 2 uses
  %.val19.us = load float, ptr %i.d, align 4, !dbg !81817, !alias.scope !5794, !noalias !5795, !noundef !5062
  %i.e = fcmp ord float %.val.us, 0.000000e+00, !dbg !81818
  %i.f = fcmp ult float %.val.us, %.val19.us, !dbg !81819
  %.not2.i.i.i.us = and i1 %i.e, %i.f, !dbg !81820
  br i1 %.not2.i.i.i.us, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph36, !dbg !81817

.lr.ph36:                                         ; preds = %.lr.ph94
  %exitcond45.not = icmp eq i64 %.sroa.02.123.us3593, %i.k, !dbg !81821
  br i1 %exitcond45.not, label %.split31, label %.lr.ph94, !dbg !81821

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph94
  %i.g = icmp eq i64 %i.b, %1, !dbg !81822
  br label %.split31, !dbg !81817

.lr.ph.us:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !81815
  %.val.us32 = load float, ptr %i.h, align 4, !dbg !81817, !alias.scope !5795, !noalias !5794, !noundef !5062 ; 2 uses
  %.val19.us33 = load float, ptr %0, align 4, !dbg !81817, !alias.scope !5794, !noalias !5795, !noundef !5062
  %i.i = fcmp ord float %.val.us32, 0.000000e+00, !dbg !81818
  %i.j = fcmp ult float %.val.us32, %.val19.us33, !dbg !81819
  %.not2.i.i.i.us34 = and i1 %i.i, %i.j, !dbg !81820
  br i1 %.not2.i.i.i.us34, label %.split31, label %.lr.ph94.preheader, !dbg !81817

.lr.ph94.preheader:                               ; preds = %.lr.ph.us
  %i.k = add nsw i64 %1, -2
  br label %.lr.ph94, !dbg !81817

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load float, ptr %0, align 4, !dbg !81817, !alias.scope !5794, !noalias !5795
  br label %.lr.ph, !dbg !81817

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph36, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph36 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.g, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !81823
  ret i1 %.us-phi, !dbg !81823

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi float [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !81817
  %.sroa.02.123 = phi i64 [ %i.r, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123, !dbg !81815
  %i.m = add nsw i64 %.sroa.02.123, -1, !dbg !81824
  %i.n = icmp samesign ult i64 %i.m, %1, !dbg !81825
  tail call void @llvm.assume(i1 %i.n), !dbg !81826
  %.val = load float, ptr %i.l, align 4, !dbg !81817, !alias.scope !5795, !noalias !5794, !noundef !5062 ; 3 uses
  %i.o = fcmp ord float %.val, 0.000000e+00, !dbg !81818
  %i.p = fcmp ult float %.val, %.val19, !dbg !81819
  %.not2.i.i.i = and i1 %i.o, %i.p, !dbg !81820
  br i1 %.not2.i.i.i, label %._crit_edge, label %bb.b, !dbg !81817

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = icmp eq i64 %.sroa.02.123, %1, !dbg !81822
  br i1 %i.q, label %.split31, label %bb.c, !dbg !81822

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.sroa.02.123, 1, !dbg !81814 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %1, !dbg !81821
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !81821

bb.c:                                             ; preds = %._crit_edge
  %i.s = add nsw i64 %.sroa.02.123, -1, !dbg !81827 ; 4 uses
  %i.t = icmp ult i64 %i.s, %1, !dbg !81828
  br i1 %i.t, label %bb.e, label %bb.d, !dbg !81828

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa40 = phi i64 [ %i.s, %bb.c ], [ %i.ag, %bb.h ], [ %i.au, %bb.m ], [ %i.bi, %bb.r ], [ %i.bw, %bb.w ], !dbg !81827
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa40, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81828
  unreachable, !dbg !81828

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s, !dbg !81829 ; 3 uses
  %i.v = load <2 x i32>, ptr %i.u, align 4, !dbg !81830
  %i.w = shufflevector <2 x i32> %i.v, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81831
  store <2 x i32> %i.w, ptr %i.u, align 4, !dbg !81831
  %i.x = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !81832
  br i1 %i.x, label %bb.aa, label %.split.1, !dbg !81832

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa43 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !81833
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa43, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81834
  unreachable, !dbg !81834

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.y = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !81821 ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !81821

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load float, ptr %i.u, align 4, !dbg !81817, !alias.scope !5794, !noalias !5795
  br label %.lr.ph.1, !dbg !81817

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi float [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !81817
  %.sroa.02.123.1 = phi i64 [ %i.ae, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !81815
  %i.aa = add nsw i64 %.sroa.02.123.1, -1, !dbg !81824
  %i.ab = icmp ult i64 %i.aa, %1, !dbg !81825
  tail call void @llvm.assume(i1 %i.ab), !dbg !81826
  %.val.1 = load float, ptr %i.z, align 4, !dbg !81817, !alias.scope !5795, !noalias !5794, !noundef !5062 ; 3 uses
  %i.ac = fcmp ord float %.val.1, 0.000000e+00, !dbg !81818
  %i.ad = fcmp ult float %.val.1, %.val19.1, !dbg !81819
  %.not2.i.i.i.1 = and i1 %i.ac, %i.ad, !dbg !81820
  br i1 %.not2.i.i.i.1, label %._crit_edge.1, label %bb.g, !dbg !81817

bb.g:                                             ; preds = %.lr.ph.1
  %i.ae = add i64 %.sroa.02.123.1, 1, !dbg !81814 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ae, %1, !dbg !81821
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !81821

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !81833 ; 9 uses
  %i.af = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !81822
  br i1 %i.af, label %.split31, label %bb.h, !dbg !81822

bb.h:                                             ; preds = %._crit_edge.1
  %i.ag = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !81827 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %1, !dbg !81828
  br i1 %i.ah, label %bb.i, label %bb.d, !dbg !81828

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %bb.j, label %bb.f, !dbg !81834

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag, !dbg !81829 ; 3 uses
  %i.aj = load <2 x i32>, ptr %i.ai, align 4, !dbg !81830
  %i.ak = shufflevector <2 x i32> %i.aj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81831
  store <2 x i32> %i.ak, ptr %i.ai, align 4, !dbg !81831
  %i.al = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !81832
  br i1 %i.al, label %bb.k, label %.split.2, !dbg !81832

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ag, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81835
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81836
  br label %.split.2, !dbg !81836

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.am = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !81821 ; 2 uses
  br i1 %i.am, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !81821

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load float, ptr %i.ai, align 4, !dbg !81817, !alias.scope !5794, !noalias !5795
  br label %.lr.ph.2, !dbg !81817

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi float [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !81817
  %.sroa.02.123.2 = phi i64 [ %i.as, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !81815
  %i.ao = add nsw i64 %.sroa.02.123.2, -1, !dbg !81824
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !81825
  tail call void @llvm.assume(i1 %i.ap), !dbg !81826
  %.val.2 = load float, ptr %i.an, align 4, !dbg !81817, !alias.scope !5795, !noalias !5794, !noundef !5062 ; 3 uses
  %i.aq = fcmp ord float %.val.2, 0.000000e+00, !dbg !81818
  %i.ar = fcmp ult float %.val.2, %.val19.2, !dbg !81819
  %.not2.i.i.i.2 = and i1 %i.aq, %i.ar, !dbg !81820
  br i1 %.not2.i.i.i.2, label %._crit_edge.2, label %bb.l, !dbg !81817

bb.l:                                             ; preds = %.lr.ph.2
  %i.as = add i64 %.sroa.02.123.2, 1, !dbg !81814 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.as, %1, !dbg !81821
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !81821

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !81833 ; 9 uses
  %i.at = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !81822
  br i1 %i.at, label %.split31, label %bb.m, !dbg !81822

bb.m:                                             ; preds = %._crit_edge.2
  %i.au = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !81827 ; 4 uses
  %i.av = icmp ult i64 %i.au, %1, !dbg !81828
  br i1 %i.av, label %bb.n, label %bb.d, !dbg !81828

bb.n:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.o, label %bb.f, !dbg !81834

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au, !dbg !81829 ; 3 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !dbg !81830
  %i.ay = shufflevector <2 x i32> %i.ax, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81831
  store <2 x i32> %i.ay, ptr %i.aw, align 4, !dbg !81831
  %i.az = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !81832
  br i1 %i.az, label %bb.p, label %.split.3, !dbg !81832

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.au, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81835
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81836
  br label %.split.3, !dbg !81836

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.ba = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !81821 ; 2 uses
  br i1 %i.ba, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !81821

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load float, ptr %i.aw, align 4, !dbg !81817, !alias.scope !5794, !noalias !5795
  br label %.lr.ph.3, !dbg !81817

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi float [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !81817
  %.sroa.02.123.3 = phi i64 [ %i.bg, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !81815
  %i.bc = add nsw i64 %.sroa.02.123.3, -1, !dbg !81824
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !81825
  tail call void @llvm.assume(i1 %i.bd), !dbg !81826
  %.val.3 = load float, ptr %i.bb, align 4, !dbg !81817, !alias.scope !5795, !noalias !5794, !noundef !5062 ; 3 uses
  %i.be = fcmp ord float %.val.3, 0.000000e+00, !dbg !81818
  %i.bf = fcmp ult float %.val.3, %.val19.3, !dbg !81819
  %.not2.i.i.i.3 = and i1 %i.be, %i.bf, !dbg !81820
  br i1 %.not2.i.i.i.3, label %._crit_edge.3, label %bb.q, !dbg !81817

bb.q:                                             ; preds = %.lr.ph.3
  %i.bg = add i64 %.sroa.02.123.3, 1, !dbg !81814 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.bg, %1, !dbg !81821
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !81821

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !81833 ; 9 uses
  %i.bh = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !81822
  br i1 %i.bh, label %.split31, label %bb.r, !dbg !81822

bb.r:                                             ; preds = %._crit_edge.3
  %i.bi = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !81827 ; 4 uses
  %i.bj = icmp ult i64 %i.bi, %1, !dbg !81828
  br i1 %i.bj, label %bb.s, label %bb.d, !dbg !81828

bb.s:                                             ; preds = %bb.r
  br i1 %i.ba, label %bb.t, label %bb.f, !dbg !81834

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi, !dbg !81829 ; 3 uses
  %i.bl = load <2 x i32>, ptr %i.bk, align 4, !dbg !81830
  %i.bm = shufflevector <2 x i32> %i.bl, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81831
  store <2 x i32> %i.bm, ptr %i.bk, align 4, !dbg !81831
  %i.bn = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !81832
  br i1 %i.bn, label %bb.u, label %.split.4, !dbg !81832

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bi, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81835
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81836
  br label %.split.4, !dbg !81836

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bo = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !81821 ; 2 uses
  br i1 %i.bo, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !81821

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load float, ptr %i.bk, align 4, !dbg !81817, !alias.scope !5794, !noalias !5795
  br label %.lr.ph.4, !dbg !81817

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi float [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !81817
  %.sroa.02.123.4 = phi i64 [ %i.bu, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !81815
  %i.bq = add nsw i64 %.sroa.02.123.4, -1, !dbg !81824
  %i.br = icmp ult i64 %i.bq, %1, !dbg !81825
  tail call void @llvm.assume(i1 %i.br), !dbg !81826
  %.val.4 = load float, ptr %i.bp, align 4, !dbg !81817, !alias.scope !5795, !noalias !5794, !noundef !5062 ; 3 uses
  %i.bs = fcmp ord float %.val.4, 0.000000e+00, !dbg !81818
  %i.bt = fcmp ult float %.val.4, %.val19.4, !dbg !81819
  %.not2.i.i.i.4 = and i1 %i.bs, %i.bt, !dbg !81820
  br i1 %.not2.i.i.i.4, label %._crit_edge.4, label %bb.v, !dbg !81817

bb.v:                                             ; preds = %.lr.ph.4
  %i.bu = add i64 %.sroa.02.123.4, 1, !dbg !81814 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bu, %1, !dbg !81821
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !81821

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !81833 ; 6 uses
  %i.bv = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !81822
  br i1 %i.bv, label %.split31, label %bb.w, !dbg !81822

bb.w:                                             ; preds = %._crit_edge.4
  %i.bw = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !81827 ; 4 uses
  %i.bx = icmp ult i64 %i.bw, %1, !dbg !81828
  br i1 %i.bx, label %bb.x, label %bb.d, !dbg !81828

bb.x:                                             ; preds = %bb.w
  br i1 %i.bo, label %bb.y, label %bb.f, !dbg !81834

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bw, !dbg !81829 ; 2 uses
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !dbg !81830
  %i.ca = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81831
  store <2 x i32> %i.ca, ptr %i.by, align 4, !dbg !81831
  %i.cb = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !81832
  br i1 %i.cb, label %bb.z, label %.split31, !dbg !81832

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bw, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81835
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81836
  br label %.split31, !dbg !81836

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.123, i64 noundef %i.s, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81835
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81836
  br label %.split.1, !dbg !81836
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sorthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 21, -9223372036854775808) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81837 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph35
  %.sroa.02.123.us3494 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph95.preheader ] ; 2 uses
  %.val19.us93 = phi i8 [ %.val.us, %.lr.ph35 ], [ %.val.us32, %.lr.ph95.preheader ]
  %i.b = add nuw nsw i64 %.sroa.02.123.us3494, 1, !dbg !81862 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b, !dbg !81863
  %.val.us = load i8, ptr %i.c, align 1, !dbg !81864, !alias.scope !5796, !noalias !5797, !noundef !5062 ; 2 uses
  %i.d = icmp ult i8 %.val19.us93, %.val.us, !dbg !81865
  br i1 %i.d, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !81864

.lr.ph35:                                         ; preds = %.lr.ph95
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3494, %i.h, !dbg !81866
  br i1 %exitcond44.not, label %.split31, label %.lr.ph95, !dbg !81866

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph95
  %i.e = icmp eq i64 %i.b, %1, !dbg !81867
  br label %.split31, !dbg !81864

.lr.ph.us:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !81863
  %.val.us32 = load i8, ptr %i.f, align 1, !dbg !81864, !alias.scope !5796, !noalias !5797, !noundef !5062 ; 2 uses
  %.val19.us33 = load i8, ptr %0, align 1, !dbg !81864, !alias.scope !5797, !noalias !5796, !noundef !5062
  %i.g = icmp ult i8 %.val19.us33, %.val.us32, !dbg !81865
  br i1 %i.g, label %.split31, label %.lr.ph95.preheader, !dbg !81864

.lr.ph95.preheader:                               ; preds = %.lr.ph.us
  %i.h = add nsw i64 %1, -2
  br label %.lr.ph95, !dbg !81864

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i8, ptr %0, align 1, !dbg !81864, !alias.scope !5797, !noalias !5796
  br label %.lr.ph, !dbg !81864

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.e, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !81868
  ret i1 %.us-phi, !dbg !81868

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i8 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !81864
  %.sroa.02.123 = phi i64 [ %i.n, %bb.b ], [ 1, %.lr.ph.preheader ] ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123, !dbg !81863
  %i.j = add nsw i64 %.sroa.02.123, -1, !dbg !81869
  %i.k = icmp samesign ult i64 %i.j, %1, !dbg !81870
  tail call void @llvm.assume(i1 %i.k), !dbg !81871
  %.val = load i8, ptr %i.i, align 1, !dbg !81864, !alias.scope !5796, !noalias !5797, !noundef !5062 ; 2 uses
  %i.l = icmp ult i8 %.val19, %.val, !dbg !81865
  br i1 %i.l, label %._crit_edge, label %bb.b, !dbg !81864

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = icmp eq i64 %.sroa.02.123, %1, !dbg !81867
  br i1 %i.m, label %.split31, label %bb.c, !dbg !81867

bb.b:                                             ; preds = %.lr.ph
  %i.n = add nuw nsw i64 %.sroa.02.123, 1, !dbg !81862 ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %1, !dbg !81866
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !81866

bb.c:                                             ; preds = %._crit_edge
  %i.o = add nsw i64 %.sroa.02.123, -1, !dbg !81872 ; 4 uses
  %i.p = icmp ult i64 %i.o, %1, !dbg !81873
  br i1 %i.p, label %bb.e, label %bb.d, !dbg !81873

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.o, %bb.c ], [ %i.ab, %bb.h ], [ %i.ao, %bb.m ], [ %i.bb, %bb.r ], [ %i.bo, %bb.w ], !dbg !81872
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81873
  unreachable, !dbg !81873

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !81874 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123, !dbg !81875 ; 2 uses
  %.sroa.013.0.copyload = load i8, ptr %i.q, align 1, !dbg !81876
  %i.s = load i8, ptr %i.r, align 1, !dbg !81877
  store i8 %i.s, ptr %i.q, align 1, !dbg !81877
  store i8 %.sroa.013.0.copyload, ptr %i.r, align 1, !dbg !81878
  %i.t = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !81879
  br i1 %i.t, label %bb.aa, label %.split.1, !dbg !81879

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !81880
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81881
  unreachable, !dbg !81881

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.u = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !81866 ; 2 uses
  br i1 %i.u, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !81866

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i8, ptr %i.q, align 1, !dbg !81864, !alias.scope !5797, !noalias !5796
  br label %.lr.ph.1, !dbg !81864

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i8 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !81864
  %.sroa.02.123.1 = phi i64 [ %i.z, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.1, !dbg !81863
  %i.w = add nsw i64 %.sroa.02.123.1, -1, !dbg !81869
  %i.x = icmp ult i64 %i.w, %1, !dbg !81870
  tail call void @llvm.assume(i1 %i.x), !dbg !81871
  %.val.1 = load i8, ptr %i.v, align 1, !dbg !81864, !alias.scope !5796, !noalias !5797, !noundef !5062 ; 2 uses
  %i.y = icmp ult i8 %.val19.1, %.val.1, !dbg !81865
  br i1 %i.y, label %._crit_edge.1, label %bb.g, !dbg !81864

bb.g:                                             ; preds = %.lr.ph.1
  %i.z = add i64 %.sroa.02.123.1, 1, !dbg !81862  ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.z, %1, !dbg !81866
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !81866

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !81880 ; 10 uses
  %i.aa = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !81867
  br i1 %i.aa, label %.split31, label %bb.h, !dbg !81867

bb.h:                                             ; preds = %._crit_edge.1
  %i.ab = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !81872 ; 4 uses
  %i.ac = icmp ult i64 %i.ab, %1, !dbg !81873
  br i1 %i.ac, label %bb.i, label %bb.d, !dbg !81873

bb.i:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.j, label %bb.f, !dbg !81881

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab, !dbg !81874 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.1, !dbg !81875 ; 2 uses
  %.sroa.013.0.copyload.1 = load i8, ptr %i.ad, align 1, !dbg !81876
  %i.af = load i8, ptr %i.ae, align 1, !dbg !81877
  store i8 %i.af, ptr %i.ad, align 1, !dbg !81877
  store i8 %.sroa.013.0.copyload.1, ptr %i.ae, align 1, !dbg !81878
  %i.ag = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !81879
  br i1 %i.ag, label %bb.k, label %.split.2, !dbg !81879

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ab, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81882
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81883
  br label %.split.2, !dbg !81883

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ah = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !81866 ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !81866

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i8, ptr %i.ad, align 1, !dbg !81864, !alias.scope !5797, !noalias !5796
  br label %.lr.ph.2, !dbg !81864

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i8 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !81864
  %.sroa.02.123.2 = phi i64 [ %i.am, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.2, !dbg !81863
  %i.aj = add nsw i64 %.sroa.02.123.2, -1, !dbg !81869
  %i.ak = icmp ult i64 %i.aj, %1, !dbg !81870
  tail call void @llvm.assume(i1 %i.ak), !dbg !81871
  %.val.2 = load i8, ptr %i.ai, align 1, !dbg !81864, !alias.scope !5796, !noalias !5797, !noundef !5062 ; 2 uses
  %i.al = icmp ult i8 %.val19.2, %.val.2, !dbg !81865
  br i1 %i.al, label %._crit_edge.2, label %bb.l, !dbg !81864

bb.l:                                             ; preds = %.lr.ph.2
  %i.am = add i64 %.sroa.02.123.2, 1, !dbg !81862 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.am, %1, !dbg !81866
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !81866

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !81880 ; 10 uses
  %i.an = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !81867
  br i1 %i.an, label %.split31, label %bb.m, !dbg !81867

bb.m:                                             ; preds = %._crit_edge.2
  %i.ao = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !81872 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !81873
  br i1 %i.ap, label %bb.n, label %bb.d, !dbg !81873

bb.n:                                             ; preds = %bb.m
  br i1 %i.ah, label %bb.o, label %bb.f, !dbg !81881

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao, !dbg !81874 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.2, !dbg !81875 ; 2 uses
  %.sroa.013.0.copyload.2 = load i8, ptr %i.aq, align 1, !dbg !81876
  %i.as = load i8, ptr %i.ar, align 1, !dbg !81877
  store i8 %i.as, ptr %i.aq, align 1, !dbg !81877
  store i8 %.sroa.013.0.copyload.2, ptr %i.ar, align 1, !dbg !81878
  %i.at = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !81879
  br i1 %i.at, label %bb.p, label %.split.3, !dbg !81879

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ao, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81882
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81883
  br label %.split.3, !dbg !81883

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.au = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !81866 ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !81866

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i8, ptr %i.aq, align 1, !dbg !81864, !alias.scope !5797, !noalias !5796
  br label %.lr.ph.3, !dbg !81864

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i8 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !81864
  %.sroa.02.123.3 = phi i64 [ %i.az, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.3, !dbg !81863
  %i.aw = add nsw i64 %.sroa.02.123.3, -1, !dbg !81869
  %i.ax = icmp ult i64 %i.aw, %1, !dbg !81870
  tail call void @llvm.assume(i1 %i.ax), !dbg !81871
  %.val.3 = load i8, ptr %i.av, align 1, !dbg !81864, !alias.scope !5796, !noalias !5797, !noundef !5062 ; 2 uses
  %i.ay = icmp ult i8 %.val19.3, %.val.3, !dbg !81865
  br i1 %i.ay, label %._crit_edge.3, label %bb.q, !dbg !81864

bb.q:                                             ; preds = %.lr.ph.3
  %i.az = add i64 %.sroa.02.123.3, 1, !dbg !81862 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.az, %1, !dbg !81866
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !81866

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !81880 ; 10 uses
  %i.ba = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !81867
  br i1 %i.ba, label %.split31, label %bb.r, !dbg !81867

bb.r:                                             ; preds = %._crit_edge.3
  %i.bb = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !81872 ; 4 uses
  %i.bc = icmp ult i64 %i.bb, %1, !dbg !81873
  br i1 %i.bc, label %bb.s, label %bb.d, !dbg !81873

bb.s:                                             ; preds = %bb.r
  br i1 %i.au, label %bb.t, label %bb.f, !dbg !81881

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb, !dbg !81874 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.3, !dbg !81875 ; 2 uses
  %.sroa.013.0.copyload.3 = load i8, ptr %i.bd, align 1, !dbg !81876
  %i.bf = load i8, ptr %i.be, align 1, !dbg !81877
  store i8 %i.bf, ptr %i.bd, align 1, !dbg !81877
  store i8 %.sroa.013.0.copyload.3, ptr %i.be, align 1, !dbg !81878
  %i.bg = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !81879
  br i1 %i.bg, label %bb.u, label %.split.4, !dbg !81879

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bb, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81882
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81883
  br label %.split.4, !dbg !81883

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bh = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !81866 ; 2 uses
  br i1 %i.bh, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !81866

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i8, ptr %i.bd, align 1, !dbg !81864, !alias.scope !5797, !noalias !5796
  br label %.lr.ph.4, !dbg !81864

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i8 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !81864
  %.sroa.02.123.4 = phi i64 [ %i.bm, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.4, !dbg !81863
  %i.bj = add nsw i64 %.sroa.02.123.4, -1, !dbg !81869
  %i.bk = icmp ult i64 %i.bj, %1, !dbg !81870
  tail call void @llvm.assume(i1 %i.bk), !dbg !81871
  %.val.4 = load i8, ptr %i.bi, align 1, !dbg !81864, !alias.scope !5796, !noalias !5797, !noundef !5062 ; 2 uses
  %i.bl = icmp ult i8 %.val19.4, %.val.4, !dbg !81865
  br i1 %i.bl, label %._crit_edge.4, label %bb.v, !dbg !81864

bb.v:                                             ; preds = %.lr.ph.4
  %i.bm = add i64 %.sroa.02.123.4, 1, !dbg !81862 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bm, %1, !dbg !81866
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !81866

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !81880 ; 7 uses
  %i.bn = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !81867
  br i1 %i.bn, label %.split31, label %bb.w, !dbg !81867

bb.w:                                             ; preds = %._crit_edge.4
  %i.bo = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !81872 ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %1, !dbg !81873
  br i1 %i.bp, label %bb.x, label %bb.d, !dbg !81873

bb.x:                                             ; preds = %bb.w
  br i1 %i.bh, label %bb.y, label %bb.f, !dbg !81881

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo, !dbg !81874 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.4, !dbg !81875 ; 2 uses
  %.sroa.013.0.copyload.4 = load i8, ptr %i.bq, align 1, !dbg !81876
  %i.bs = load i8, ptr %i.br, align 1, !dbg !81877
  store i8 %i.bs, ptr %i.bq, align 1, !dbg !81877
  store i8 %.sroa.013.0.copyload.4, ptr %i.br, align 1, !dbg !81878
  %i.bt = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !81879
  br i1 %i.bt, label %bb.z, label %.split31, !dbg !81879

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bo, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81882
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81883
  br label %.split31, !dbg !81883

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.123, i64 noundef %i.o, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81882
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81883
  br label %.split.1, !dbg !81883
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sorthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 21, -9223372036854775808) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81884 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph35
  %.sroa.02.123.us3494 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph95.preheader ] ; 2 uses
  %.val19.us93 = phi i8 [ %.val.us, %.lr.ph35 ], [ %.val.us32, %.lr.ph95.preheader ]
  %i.b = add nuw nsw i64 %.sroa.02.123.us3494, 1, !dbg !81909 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b, !dbg !81910
  %.val.us = load i8, ptr %i.c, align 1, !dbg !81911, !alias.scope !5797, !noalias !5796, !noundef !5062 ; 2 uses
  %i.d = icmp ult i8 %.val.us, %.val19.us93, !dbg !81912
  br i1 %i.d, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !81911

.lr.ph35:                                         ; preds = %.lr.ph95
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3494, %i.h, !dbg !81913
  br i1 %exitcond44.not, label %.split31, label %.lr.ph95, !dbg !81913

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph95
  %i.e = icmp eq i64 %i.b, %1, !dbg !81914
  br label %.split31, !dbg !81911

.lr.ph.us:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !81910
  %.val.us32 = load i8, ptr %i.f, align 1, !dbg !81911, !alias.scope !5797, !noalias !5796, !noundef !5062 ; 2 uses
  %.val19.us33 = load i8, ptr %0, align 1, !dbg !81911, !alias.scope !5796, !noalias !5797, !noundef !5062
  %i.g = icmp ult i8 %.val.us32, %.val19.us33, !dbg !81912
  br i1 %i.g, label %.split31, label %.lr.ph95.preheader, !dbg !81911

.lr.ph95.preheader:                               ; preds = %.lr.ph.us
  %i.h = add nsw i64 %1, -2
  br label %.lr.ph95, !dbg !81911

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i8, ptr %0, align 1, !dbg !81911, !alias.scope !5796, !noalias !5797
  br label %.lr.ph, !dbg !81911

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.e, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !81915
  ret i1 %.us-phi, !dbg !81915

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i8 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !81911
  %.sroa.02.123 = phi i64 [ %i.n, %bb.b ], [ 1, %.lr.ph.preheader ] ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123, !dbg !81910
  %i.j = add nsw i64 %.sroa.02.123, -1, !dbg !81916
  %i.k = icmp samesign ult i64 %i.j, %1, !dbg !81917
  tail call void @llvm.assume(i1 %i.k), !dbg !81918
  %.val = load i8, ptr %i.i, align 1, !dbg !81911, !alias.scope !5797, !noalias !5796, !noundef !5062 ; 2 uses
  %i.l = icmp ult i8 %.val, %.val19, !dbg !81912
  br i1 %i.l, label %._crit_edge, label %bb.b, !dbg !81911

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = icmp eq i64 %.sroa.02.123, %1, !dbg !81914
  br i1 %i.m, label %.split31, label %bb.c, !dbg !81914

bb.b:                                             ; preds = %.lr.ph
  %i.n = add nuw nsw i64 %.sroa.02.123, 1, !dbg !81909 ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %1, !dbg !81913
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !81913

bb.c:                                             ; preds = %._crit_edge
  %i.o = add nsw i64 %.sroa.02.123, -1, !dbg !81919 ; 4 uses
  %i.p = icmp ult i64 %i.o, %1, !dbg !81920
  br i1 %i.p, label %bb.e, label %bb.d, !dbg !81920

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.o, %bb.c ], [ %i.ab, %bb.h ], [ %i.ao, %bb.m ], [ %i.bb, %bb.r ], [ %i.bo, %bb.w ], !dbg !81919
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81920
  unreachable, !dbg !81920

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !81921 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123, !dbg !81922 ; 2 uses
  %.sroa.013.0.copyload = load i8, ptr %i.q, align 1, !dbg !81923
  %i.s = load i8, ptr %i.r, align 1, !dbg !81924
  store i8 %i.s, ptr %i.q, align 1, !dbg !81924
  store i8 %.sroa.013.0.copyload, ptr %i.r, align 1, !dbg !81925
  %i.t = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !81926
  br i1 %i.t, label %bb.aa, label %.split.1, !dbg !81926

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !81927
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81928
  unreachable, !dbg !81928

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.u = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !81913 ; 2 uses
  br i1 %i.u, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !81913

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i8, ptr %i.q, align 1, !dbg !81911, !alias.scope !5796, !noalias !5797
  br label %.lr.ph.1, !dbg !81911

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i8 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !81911
  %.sroa.02.123.1 = phi i64 [ %i.z, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.1, !dbg !81910
  %i.w = add nsw i64 %.sroa.02.123.1, -1, !dbg !81916
  %i.x = icmp ult i64 %i.w, %1, !dbg !81917
  tail call void @llvm.assume(i1 %i.x), !dbg !81918
  %.val.1 = load i8, ptr %i.v, align 1, !dbg !81911, !alias.scope !5797, !noalias !5796, !noundef !5062 ; 2 uses
  %i.y = icmp ult i8 %.val.1, %.val19.1, !dbg !81912
  br i1 %i.y, label %._crit_edge.1, label %bb.g, !dbg !81911

bb.g:                                             ; preds = %.lr.ph.1
  %i.z = add i64 %.sroa.02.123.1, 1, !dbg !81909  ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.z, %1, !dbg !81913
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !81913

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !81927 ; 10 uses
  %i.aa = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !81914
  br i1 %i.aa, label %.split31, label %bb.h, !dbg !81914

bb.h:                                             ; preds = %._crit_edge.1
  %i.ab = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !81919 ; 4 uses
  %i.ac = icmp ult i64 %i.ab, %1, !dbg !81920
  br i1 %i.ac, label %bb.i, label %bb.d, !dbg !81920

bb.i:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.j, label %bb.f, !dbg !81928

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab, !dbg !81921 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.1, !dbg !81922 ; 2 uses
  %.sroa.013.0.copyload.1 = load i8, ptr %i.ad, align 1, !dbg !81923
  %i.af = load i8, ptr %i.ae, align 1, !dbg !81924
  store i8 %i.af, ptr %i.ad, align 1, !dbg !81924
  store i8 %.sroa.013.0.copyload.1, ptr %i.ae, align 1, !dbg !81925
  %i.ag = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !81926
  br i1 %i.ag, label %bb.k, label %.split.2, !dbg !81926

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ab, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81929
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81930
  br label %.split.2, !dbg !81930

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ah = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !81913 ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !81913

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i8, ptr %i.ad, align 1, !dbg !81911, !alias.scope !5796, !noalias !5797
  br label %.lr.ph.2, !dbg !81911

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i8 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !81911
  %.sroa.02.123.2 = phi i64 [ %i.am, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.2, !dbg !81910
  %i.aj = add nsw i64 %.sroa.02.123.2, -1, !dbg !81916
  %i.ak = icmp ult i64 %i.aj, %1, !dbg !81917
  tail call void @llvm.assume(i1 %i.ak), !dbg !81918
  %.val.2 = load i8, ptr %i.ai, align 1, !dbg !81911, !alias.scope !5797, !noalias !5796, !noundef !5062 ; 2 uses
  %i.al = icmp ult i8 %.val.2, %.val19.2, !dbg !81912
  br i1 %i.al, label %._crit_edge.2, label %bb.l, !dbg !81911

bb.l:                                             ; preds = %.lr.ph.2
  %i.am = add i64 %.sroa.02.123.2, 1, !dbg !81909 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.am, %1, !dbg !81913
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !81913

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !81927 ; 10 uses
  %i.an = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !81914
  br i1 %i.an, label %.split31, label %bb.m, !dbg !81914

bb.m:                                             ; preds = %._crit_edge.2
  %i.ao = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !81919 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !81920
  br i1 %i.ap, label %bb.n, label %bb.d, !dbg !81920

bb.n:                                             ; preds = %bb.m
  br i1 %i.ah, label %bb.o, label %bb.f, !dbg !81928

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao, !dbg !81921 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.2, !dbg !81922 ; 2 uses
  %.sroa.013.0.copyload.2 = load i8, ptr %i.aq, align 1, !dbg !81923
  %i.as = load i8, ptr %i.ar, align 1, !dbg !81924
  store i8 %i.as, ptr %i.aq, align 1, !dbg !81924
  store i8 %.sroa.013.0.copyload.2, ptr %i.ar, align 1, !dbg !81925
  %i.at = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !81926
  br i1 %i.at, label %bb.p, label %.split.3, !dbg !81926

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ao, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81929
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81930
  br label %.split.3, !dbg !81930

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.au = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !81913 ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !81913

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i8, ptr %i.aq, align 1, !dbg !81911, !alias.scope !5796, !noalias !5797
  br label %.lr.ph.3, !dbg !81911

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i8 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !81911
  %.sroa.02.123.3 = phi i64 [ %i.az, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.3, !dbg !81910
  %i.aw = add nsw i64 %.sroa.02.123.3, -1, !dbg !81916
  %i.ax = icmp ult i64 %i.aw, %1, !dbg !81917
  tail call void @llvm.assume(i1 %i.ax), !dbg !81918
  %.val.3 = load i8, ptr %i.av, align 1, !dbg !81911, !alias.scope !5797, !noalias !5796, !noundef !5062 ; 2 uses
  %i.ay = icmp ult i8 %.val.3, %.val19.3, !dbg !81912
  br i1 %i.ay, label %._crit_edge.3, label %bb.q, !dbg !81911

bb.q:                                             ; preds = %.lr.ph.3
  %i.az = add i64 %.sroa.02.123.3, 1, !dbg !81909 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.az, %1, !dbg !81913
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !81913

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !81927 ; 10 uses
  %i.ba = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !81914
  br i1 %i.ba, label %.split31, label %bb.r, !dbg !81914

bb.r:                                             ; preds = %._crit_edge.3
  %i.bb = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !81919 ; 4 uses
  %i.bc = icmp ult i64 %i.bb, %1, !dbg !81920
  br i1 %i.bc, label %bb.s, label %bb.d, !dbg !81920

bb.s:                                             ; preds = %bb.r
  br i1 %i.au, label %bb.t, label %bb.f, !dbg !81928

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb, !dbg !81921 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.3, !dbg !81922 ; 2 uses
  %.sroa.013.0.copyload.3 = load i8, ptr %i.bd, align 1, !dbg !81923
  %i.bf = load i8, ptr %i.be, align 1, !dbg !81924
  store i8 %i.bf, ptr %i.bd, align 1, !dbg !81924
  store i8 %.sroa.013.0.copyload.3, ptr %i.be, align 1, !dbg !81925
  %i.bg = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !81926
  br i1 %i.bg, label %bb.u, label %.split.4, !dbg !81926

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bb, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81929
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81930
  br label %.split.4, !dbg !81930

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bh = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !81913 ; 2 uses
  br i1 %i.bh, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !81913

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i8, ptr %i.bd, align 1, !dbg !81911, !alias.scope !5796, !noalias !5797
  br label %.lr.ph.4, !dbg !81911

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i8 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !81911
  %.sroa.02.123.4 = phi i64 [ %i.bm, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.123.4, !dbg !81910
  %i.bj = add nsw i64 %.sroa.02.123.4, -1, !dbg !81916
  %i.bk = icmp ult i64 %i.bj, %1, !dbg !81917
  tail call void @llvm.assume(i1 %i.bk), !dbg !81918
  %.val.4 = load i8, ptr %i.bi, align 1, !dbg !81911, !alias.scope !5797, !noalias !5796, !noundef !5062 ; 2 uses
  %i.bl = icmp ult i8 %.val.4, %.val19.4, !dbg !81912
  br i1 %i.bl, label %._crit_edge.4, label %bb.v, !dbg !81911

bb.v:                                             ; preds = %.lr.ph.4
  %i.bm = add i64 %.sroa.02.123.4, 1, !dbg !81909 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bm, %1, !dbg !81913
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !81913

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !81927 ; 7 uses
  %i.bn = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !81914
  br i1 %i.bn, label %.split31, label %bb.w, !dbg !81914

bb.w:                                             ; preds = %._crit_edge.4
  %i.bo = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !81919 ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %1, !dbg !81920
  br i1 %i.bp, label %bb.x, label %bb.d, !dbg !81920

bb.x:                                             ; preds = %bb.w
  br i1 %i.bh, label %bb.y, label %bb.f, !dbg !81928

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo, !dbg !81921 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1.lcssa.4, !dbg !81922 ; 2 uses
  %.sroa.013.0.copyload.4 = load i8, ptr %i.bq, align 1, !dbg !81923
  %i.bs = load i8, ptr %i.br, align 1, !dbg !81924
  store i8 %i.bs, ptr %i.bq, align 1, !dbg !81924
  store i8 %.sroa.013.0.copyload.4, ptr %i.br, align 1, !dbg !81925
  %i.bt = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !81926
  br i1 %i.bt, label %bb.z, label %.split31, !dbg !81926

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bo, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81929
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81930
  br label %.split31, !dbg !81930

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.123, i64 noundef %i.o, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81929
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righthNCINvYShINtB4_16ParallelSliceMuthE20par_sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81930
  br label %.split.1, !dbg !81930
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 21, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81931 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !81955 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b, !dbg !81956
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !81957
  %.val.us = load i32, ptr %i.c, align 4, !dbg !81958, !alias.scope !5798, !noalias !5799, !noundef !5062
  %.val19.us = load i32, ptr %i.d, align 4, !dbg !81958, !alias.scope !5799, !noalias !5798, !noundef !5062
  %i.e = icmp slt i32 %.val19.us, %.val.us, !dbg !81959
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !81958

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !81960
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !81960

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !81961
  br label %.split31, !dbg !81958

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !81956
  %.val.us32 = load i32, ptr %i.g, align 4, !dbg !81958, !alias.scope !5798, !noalias !5799, !noundef !5062
  %.val19.us33 = load i32, ptr %0, align 4, !dbg !81958, !alias.scope !5799, !noalias !5798, !noundef !5062
  %i.h = icmp slt i32 %.val19.us33, %.val.us32, !dbg !81959
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !81958

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !81958

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i32, ptr %0, align 4, !dbg !81958, !alias.scope !5799, !noalias !5798
  br label %.lr.ph, !dbg !81958

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !81962
  ret i1 %.us-phi, !dbg !81962

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i32 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !81958
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123, !dbg !81956
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !81963
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !81964
  tail call void @llvm.assume(i1 %i.l), !dbg !81965
  %.val = load i32, ptr %i.j, align 4, !dbg !81958, !alias.scope !5798, !noalias !5799, !noundef !5062 ; 2 uses
  %i.m = icmp slt i32 %.val19, %.val, !dbg !81959
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !81958

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !81961
  br i1 %i.n, label %.split31, label %bb.c, !dbg !81961

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !81955 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !81960
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !81960

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !81966 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !81967
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !81967

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !81966
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81967
  unreachable, !dbg !81967

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p, !dbg !81968 ; 3 uses
  %i.s = load <2 x i32>, ptr %i.r, align 4, !dbg !81969
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81970
  store <2 x i32> %i.t, ptr %i.r, align 4, !dbg !81970
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !81971
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !81971

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !81972
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !81973
  unreachable, !dbg !81973

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !81960 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !81960

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i32, ptr %i.r, align 4, !dbg !81958, !alias.scope !5799, !noalias !5798
  br label %.lr.ph.1, !dbg !81958

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i32 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !81958
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !81956
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !81963
  %i.y = icmp ult i64 %i.x, %1, !dbg !81964
  tail call void @llvm.assume(i1 %i.y), !dbg !81965
  %.val.1 = load i32, ptr %i.w, align 4, !dbg !81958, !alias.scope !5798, !noalias !5799, !noundef !5062 ; 2 uses
  %i.z = icmp slt i32 %.val19.1, %.val.1, !dbg !81959
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !81958

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !81955 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !81960
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !81960

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !81972 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !81961
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !81961

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !81966 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !81967
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !81967

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !81973

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac, !dbg !81968 ; 3 uses
  %i.af = load <2 x i32>, ptr %i.ae, align 4, !dbg !81969
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81970
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !dbg !81970
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !81971
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !81971

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81974
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81975
  br label %.split.2, !dbg !81975

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !81960 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !81960

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i32, ptr %i.ae, align 4, !dbg !81958, !alias.scope !5799, !noalias !5798
  br label %.lr.ph.2, !dbg !81958

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i32 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !81958
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !81956
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !81963
  %i.al = icmp ult i64 %i.ak, %1, !dbg !81964
  tail call void @llvm.assume(i1 %i.al), !dbg !81965
  %.val.2 = load i32, ptr %i.aj, align 4, !dbg !81958, !alias.scope !5798, !noalias !5799, !noundef !5062 ; 2 uses
  %i.am = icmp slt i32 %.val19.2, %.val.2, !dbg !81959
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !81958

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !81955 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !81960
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !81960

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !81972 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !81961
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !81961

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !81966 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !81967
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !81967

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !81973

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap, !dbg !81968 ; 3 uses
  %i.as = load <2 x i32>, ptr %i.ar, align 4, !dbg !81969
  %i.at = shufflevector <2 x i32> %i.as, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81970
  store <2 x i32> %i.at, ptr %i.ar, align 4, !dbg !81970
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !81971
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !81971

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81974
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81975
  br label %.split.3, !dbg !81975

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !81960 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !81960

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i32, ptr %i.ar, align 4, !dbg !81958, !alias.scope !5799, !noalias !5798
  br label %.lr.ph.3, !dbg !81958

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i32 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !81958
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !81956
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !81963
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !81964
  tail call void @llvm.assume(i1 %i.ay), !dbg !81965
  %.val.3 = load i32, ptr %i.aw, align 4, !dbg !81958, !alias.scope !5798, !noalias !5799, !noundef !5062 ; 2 uses
  %i.az = icmp slt i32 %.val19.3, %.val.3, !dbg !81959
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !81958

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !81955 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !81960
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !81960

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !81972 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !81961
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !81961

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !81966 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !81967
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !81967

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !81973

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc, !dbg !81968 ; 3 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !dbg !81969
  %i.bg = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81970
  store <2 x i32> %i.bg, ptr %i.be, align 4, !dbg !81970
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !81971
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !81971

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81974
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81975
  br label %.split.4, !dbg !81975

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !81960 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !81960

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i32, ptr %i.be, align 4, !dbg !81958, !alias.scope !5799, !noalias !5798
  br label %.lr.ph.4, !dbg !81958

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i32 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !81958
  %.sroa.02.123.4 = phi i64 [ %i.bn, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !81956
  %i.bk = add nsw i64 %.sroa.02.123.4, -1, !dbg !81963
  %i.bl = icmp ult i64 %i.bk, %1, !dbg !81964
  tail call void @llvm.assume(i1 %i.bl), !dbg !81965
  %.val.4 = load i32, ptr %i.bj, align 4, !dbg !81958, !alias.scope !5798, !noalias !5799, !noundef !5062 ; 2 uses
  %i.bm = icmp slt i32 %.val19.4, %.val.4, !dbg !81959
  br i1 %i.bm, label %._crit_edge.4, label %bb.v, !dbg !81958

bb.v:                                             ; preds = %.lr.ph.4
  %i.bn = add i64 %.sroa.02.123.4, 1, !dbg !81955 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bn, %1, !dbg !81960
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !81960

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !81972 ; 6 uses
  %i.bo = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !81961
  br i1 %i.bo, label %.split31, label %bb.w, !dbg !81961

bb.w:                                             ; preds = %._crit_edge.4
  %i.bp = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !81966 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %1, !dbg !81967
  br i1 %i.bq, label %bb.x, label %bb.d, !dbg !81967

bb.x:                                             ; preds = %bb.w
  br i1 %i.bi, label %bb.y, label %bb.f, !dbg !81973

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp, !dbg !81968 ; 2 uses
  %i.bs = load <2 x i32>, ptr %i.br, align 4, !dbg !81969
  %i.bt = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !81970
  store <2 x i32> %i.bt, ptr %i.br, align 4, !dbg !81970
  %i.bu = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !81971
  br i1 %i.bu, label %bb.z, label %.split31, !dbg !81971

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bp, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81974
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81975
  br label %.split31, !dbg !81975

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.123, i64 noundef %i.p, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81974
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !81975
  br label %.split.1, !dbg !81975
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 21, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !81976 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82000 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b, !dbg !82001
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82002
  %.val.us = load i32, ptr %i.c, align 4, !dbg !82003, !alias.scope !5799, !noalias !5798, !noundef !5062
  %.val19.us = load i32, ptr %i.d, align 4, !dbg !82003, !alias.scope !5798, !noalias !5799, !noundef !5062
  %i.e = icmp slt i32 %.val.us, %.val19.us, !dbg !82004
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82003

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82005
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82005

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82006
  br label %.split31, !dbg !82003

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !82001
  %.val.us32 = load i32, ptr %i.g, align 4, !dbg !82003, !alias.scope !5799, !noalias !5798, !noundef !5062
  %.val19.us33 = load i32, ptr %0, align 4, !dbg !82003, !alias.scope !5798, !noalias !5799, !noundef !5062
  %i.h = icmp slt i32 %.val.us32, %.val19.us33, !dbg !82004
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82003

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82003

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i32, ptr %0, align 4, !dbg !82003, !alias.scope !5798, !noalias !5799
  br label %.lr.ph, !dbg !82003

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82007
  ret i1 %.us-phi, !dbg !82007

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i32 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82003
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82001
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82008
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82009
  tail call void @llvm.assume(i1 %i.l), !dbg !82010
  %.val = load i32, ptr %i.j, align 4, !dbg !82003, !alias.scope !5799, !noalias !5798, !noundef !5062 ; 2 uses
  %i.m = icmp slt i32 %.val, %.val19, !dbg !82004
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82003

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82006
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82006

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82000 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82005
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82005

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82011 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82012
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82012

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82011
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82012
  unreachable, !dbg !82012

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p, !dbg !82013 ; 3 uses
  %i.s = load <2 x i32>, ptr %i.r, align 4, !dbg !82014
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82015
  store <2 x i32> %i.t, ptr %i.r, align 4, !dbg !82015
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82016
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82016

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82017
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82018
  unreachable, !dbg !82018

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82005 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82005

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i32, ptr %i.r, align 4, !dbg !82003, !alias.scope !5798, !noalias !5799
  br label %.lr.ph.1, !dbg !82003

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i32 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82003
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82001
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82008
  %i.y = icmp ult i64 %i.x, %1, !dbg !82009
  tail call void @llvm.assume(i1 %i.y), !dbg !82010
  %.val.1 = load i32, ptr %i.w, align 4, !dbg !82003, !alias.scope !5799, !noalias !5798, !noundef !5062 ; 2 uses
  %i.z = icmp slt i32 %.val.1, %.val19.1, !dbg !82004
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82003

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82000 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82005
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82005

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82017 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82006
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82006

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82011 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82012
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82012

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82018

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac, !dbg !82013 ; 3 uses
  %i.af = load <2 x i32>, ptr %i.ae, align 4, !dbg !82014
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82015
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !dbg !82015
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82016
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82016

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82019
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82020
  br label %.split.2, !dbg !82020

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82005 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82005

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i32, ptr %i.ae, align 4, !dbg !82003, !alias.scope !5798, !noalias !5799
  br label %.lr.ph.2, !dbg !82003

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i32 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82003
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82001
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82008
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82009
  tail call void @llvm.assume(i1 %i.al), !dbg !82010
  %.val.2 = load i32, ptr %i.aj, align 4, !dbg !82003, !alias.scope !5799, !noalias !5798, !noundef !5062 ; 2 uses
  %i.am = icmp slt i32 %.val.2, %.val19.2, !dbg !82004
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82003

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82000 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82005
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82005

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82017 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82006
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82006

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82011 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82012
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82012

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82018

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap, !dbg !82013 ; 3 uses
  %i.as = load <2 x i32>, ptr %i.ar, align 4, !dbg !82014
  %i.at = shufflevector <2 x i32> %i.as, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82015
  store <2 x i32> %i.at, ptr %i.ar, align 4, !dbg !82015
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82016
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82016

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82019
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82020
  br label %.split.3, !dbg !82020

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82005 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82005

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i32, ptr %i.ar, align 4, !dbg !82003, !alias.scope !5798, !noalias !5799
  br label %.lr.ph.3, !dbg !82003

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i32 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82003
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82001
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82008
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82009
  tail call void @llvm.assume(i1 %i.ay), !dbg !82010
  %.val.3 = load i32, ptr %i.aw, align 4, !dbg !82003, !alias.scope !5799, !noalias !5798, !noundef !5062 ; 2 uses
  %i.az = icmp slt i32 %.val.3, %.val19.3, !dbg !82004
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82003

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82000 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82005
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82005

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82017 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82006
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82006

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82011 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82012
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82012

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82018

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc, !dbg !82013 ; 3 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !dbg !82014
  %i.bg = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82015
  store <2 x i32> %i.bg, ptr %i.be, align 4, !dbg !82015
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82016
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82016

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82019
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightlNCINvYSlINtB4_16ParallelSliceMutlE20par_sort_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82020
  br label %.split.4, !dbg !82020

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82005 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82005

.lr.ph.preheader.4:                               ; preds = %.split.4
end_hunk_0
begin_hunk_1_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNCNCNvXs1_B21_INtB25_12ChunkedArrayNtNtB27_9datatypes16BinaryOffsetTypeEINtB23_9ChunkSortB3V_E8arg_sort0s_0E00E0EB27_:bb.a
  %i.ek = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82108
  br i1 %i.ek, label %bb.u, label %.split.3, !dbg !82108

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNCNCNvXs1_B24_INtB28_12ChunkedArrayNtNtB2a_9datatypes16BinaryOffsetTypeEINtB26_9ChunkSortB3Y_E8arg_sort0s_0E00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82111
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNCNCNvXs1_B25_INtB29_12ChunkedArrayNtNtB2b_9datatypes16BinaryOffsetTypeEINtB27_9ChunkSortB3Z_E8arg_sort0s_0E00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82112
  br label %.split.3, !dbg !82112

.split.3:                                         ; preds = %bb.u, %bb.t
  %i.el = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82095 ; 2 uses
  br i1 %i.el, label %.lr.ph.3, label %._crit_edge.3, !dbg !82095

.lr.ph.3:                                         ; preds = %.split.3
  %.val.i.3 = load ptr, ptr %.val, align 8, !nonnull !5062, !align !5141, !noundef !5062
  %.val.i.i.3 = load ptr, ptr %.val.i.3, align 8, !nonnull !5062, !align !5141, !noundef !5062 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.3, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !noundef !5062 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i.i.3, i64 48
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !5062 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i.3, i64 64
  %i.er = load ptr, ptr %i.eq, align 8, !noundef !5062 ; 2 uses
  br label %bb.v, !dbg !82095

bb.v:                                             ; preds = %bb.w, %.lr.ph.3
  %.sroa.02.124.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.lr.ph.3 ], [ %i.fp, %bb.w ] ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.124.3, !dbg !82071
  %i.et = add nsw i64 %.sroa.02.124.3, -1, !dbg !82098 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %1, !dbg !82099
  tail call void @llvm.assume(i1 %i.eu), !dbg !82100
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.et, !dbg !82101
  %.val19.3 = load i32, ptr %i.es, align 4, !dbg !82070, !noundef !5062
  %.val20.3 = load i32, ptr %i.ev, align 4, !dbg !82070, !noundef !5062
  %i.ew = zext i32 %.val20.3 to i64, !dbg !82072  ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ew, !dbg !82102
  %.val1.i.i.i.i.3 = load i64, ptr %i.ex, align 8, !dbg !82069, !noundef !5062 ; 2 uses
  %i.ey = add nuw nsw i64 %i.ew, 1, !dbg !82073   ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ep, !dbg !82074
  tail call void @llvm.assume(i1 %i.ez), !dbg !82075
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ey, !dbg !82076
  %.val.i.i.i.i.3 = load i64, ptr %i.fa, align 8, !dbg !82077, !noundef !5062
  %i.fb = sub nuw i64 %.val.i.i.i.i.3, %.val1.i.i.i.i.3, !dbg !82078 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 %.val1.i.i.i.i.3, !dbg !82079
  %i.fd = zext i32 %.val19.3 to i64, !dbg !82080  ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.fd, !dbg !82081
  %.val1.i6.i.i.i.3 = load i64, ptr %i.fe, align 8, !dbg !82082, !noundef !5062 ; 2 uses
  %i.ff = add nuw nsw i64 %i.fd, 1, !dbg !82083   ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.ep, !dbg !82084
  tail call void @llvm.assume(i1 %i.fg), !dbg !82085
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ff, !dbg !82086
  %.val.i7.i.i.i.3 = load i64, ptr %i.fh, align 8, !dbg !82087, !noundef !5062
  %i.fi = sub nuw i64 %.val.i7.i.i.i.3, %.val1.i6.i.i.i.3, !dbg !82088 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 %.val1.i6.i.i.i.3, !dbg !82089
  %spec.store.select.i.i.i.3 = tail call i64 @llvm.umin.i64(i64 %i.fb, i64 %i.fi), !dbg !82090
  %i.fk = tail call i32 @memcmp(ptr %i.fc, ptr %i.fj, i64 %spec.store.select.i.i.i.3), !dbg !82091 ; 2 uses
  %i.fl = sext i32 %i.fk to i64, !dbg !82091
  %i.fm = icmp eq i32 %i.fk, 0, !dbg !82092
  %i.fn = sub i64 %i.fb, %i.fi
  %spec.select.i.i.i.3 = select i1 %i.fm, i64 %i.fn, i64 %i.fl, !dbg !82092
  %i.fo = icmp slt i64 %spec.select.i.i.i.3, 0, !dbg !82093
  br i1 %i.fo, label %._crit_edge.3, label %bb.w, !dbg !82070

bb.w:                                             ; preds = %bb.v
  %i.fp = add i64 %.sroa.02.124.3, 1, !dbg !82094 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fp, %1, !dbg !82095
  br i1 %exitcond.not.3, label %.split32, label %bb.v, !dbg !82095

._crit_edge.3:                                    ; preds = %bb.v, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.124.3, %bb.v ], !dbg !82109 ; 9 uses
  %i.fq = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82096
  br i1 %i.fq, label %.split32, label %bb.x, !dbg !82096

bb.x:                                             ; preds = %._crit_edge.3
  %i.fr = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82103 ; 4 uses
  %i.fs = icmp ult i64 %i.fr, %1, !dbg !82104
  br i1 %i.fs, label %bb.y, label %bb.g, !dbg !82104

bb.y:                                             ; preds = %bb.x
  br i1 %i.el, label %bb.z, label %bb.i, !dbg !82110

bb.z:                                             ; preds = %bb.y
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fr, !dbg !82105 ; 2 uses
  %i.fu = load <2 x i32>, ptr %i.ft, align 4, !dbg !82106
  %i.fv = shufflevector <2 x i32> %i.fu, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82107
  store <2 x i32> %i.fv, ptr %i.ft, align 4, !dbg !82107
  %i.fw = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82108
  br i1 %i.fw, label %bb.aa, label %.split.4, !dbg !82108

bb.aa:                                            ; preds = %bb.z
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNCNCNvXs1_B24_INtB28_12ChunkedArrayNtNtB2a_9datatypes16BinaryOffsetTypeEINtB26_9ChunkSortB3Y_E8arg_sort0s_0E00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.fr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82111
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNCNCNvXs1_B25_INtB29_12ChunkedArrayNtNtB2b_9datatypes16BinaryOffsetTypeEINtB27_9ChunkSortB3Z_E8arg_sort0s_0E00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82112
  br label %.split.4, !dbg !82112

.split.4:                                         ; preds = %bb.aa, %bb.z
  %i.fx = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82095 ; 2 uses
  br i1 %i.fx, label %.lr.ph.4, label %._crit_edge.4, !dbg !82095

.lr.ph.4:                                         ; preds = %.split.4
  %.val.i.4 = load ptr, ptr %.val, align 8, !nonnull !5062, !align !5141, !noundef !5062
  %.val.i.i.4 = load ptr, ptr %.val.i.4, align 8, !nonnull !5062, !align !5141, !noundef !5062 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val.i.i.4, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !noundef !5062 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.val.i.i.4, i64 48
  %i.gb = load i64, ptr %i.ga, align 8, !noundef !5062 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i.i.4, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !noundef !5062 ; 2 uses
  br label %bb.ab, !dbg !82095

bb.ab:                                            ; preds = %bb.ac, %.lr.ph.4
  %.sroa.02.124.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.lr.ph.4 ], [ %i.hb, %bb.ac ] ; 4 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.124.4, !dbg !82071
  %i.gf = add nsw i64 %.sroa.02.124.4, -1, !dbg !82098 ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %1, !dbg !82099
  tail call void @llvm.assume(i1 %i.gg), !dbg !82100
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gf, !dbg !82101
  %.val19.4 = load i32, ptr %i.ge, align 4, !dbg !82070, !noundef !5062
  %.val20.4 = load i32, ptr %i.gh, align 4, !dbg !82070, !noundef !5062
  %i.gi = zext i32 %.val20.4 to i64, !dbg !82072  ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gi, !dbg !82102
  %.val1.i.i.i.i.4 = load i64, ptr %i.gj, align 8, !dbg !82069, !noundef !5062 ; 2 uses
  %i.gk = add nuw nsw i64 %i.gi, 1, !dbg !82073   ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gb, !dbg !82074
  tail call void @llvm.assume(i1 %i.gl), !dbg !82075
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gk, !dbg !82076
  %.val.i.i.i.i.4 = load i64, ptr %i.gm, align 8, !dbg !82077, !noundef !5062
  %i.gn = sub nuw i64 %.val.i.i.i.i.4, %.val1.i.i.i.i.4, !dbg !82078 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.val1.i.i.i.i.4, !dbg !82079
  %i.gp = zext i32 %.val19.4 to i64, !dbg !82080  ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gp, !dbg !82081
  %.val1.i6.i.i.i.4 = load i64, ptr %i.gq, align 8, !dbg !82082, !noundef !5062 ; 2 uses
  %i.gr = add nuw nsw i64 %i.gp, 1, !dbg !82083   ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.gb, !dbg !82084
  tail call void @llvm.assume(i1 %i.gs), !dbg !82085
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gr, !dbg !82086
  %.val.i7.i.i.i.4 = load i64, ptr %i.gt, align 8, !dbg !82087, !noundef !5062
  %i.gu = sub nuw i64 %.val.i7.i.i.i.4, %.val1.i6.i.i.i.4, !dbg !82088 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.val1.i6.i.i.i.4, !dbg !82089
  %spec.store.select.i.i.i.4 = tail call i64 @llvm.umin.i64(i64 %i.gn, i64 %i.gu), !dbg !82090
  %i.gw = tail call i32 @memcmp(ptr %i.go, ptr %i.gv, i64 %spec.store.select.i.i.i.4), !dbg !82091 ; 2 uses
  %i.gx = sext i32 %i.gw to i64, !dbg !82091
  %i.gy = icmp eq i32 %i.gw, 0, !dbg !82092
  %i.gz = sub i64 %i.gn, %i.gu
  %spec.select.i.i.i.4 = select i1 %i.gy, i64 %i.gz, i64 %i.gx, !dbg !82092
  %i.ha = icmp slt i64 %spec.select.i.i.i.4, 0, !dbg !82093
  br i1 %i.ha, label %._crit_edge.4, label %bb.ac, !dbg !82070

bb.ac:                                            ; preds = %bb.ab
  %i.hb = add i64 %.sroa.02.124.4, 1, !dbg !82094 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %i.hb, %1, !dbg !82095
  br i1 %exitcond.not.4, label %.split32, label %bb.ab, !dbg !82095

._crit_edge.4:                                    ; preds = %bb.ab, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.124.4, %bb.ab ], !dbg !82109 ; 6 uses
  %i.hc = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82096
  br i1 %i.hc, label %.split32, label %bb.ad, !dbg !82096

bb.ad:                                            ; preds = %._crit_edge.4
  %i.hd = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82103 ; 4 uses
  %i.he = icmp ult i64 %i.hd, %1, !dbg !82104
  br i1 %i.he, label %bb.ae, label %bb.g, !dbg !82104

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.fx, label %bb.af, label %bb.i, !dbg !82110

bb.af:                                            ; preds = %bb.ae
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hd, !dbg !82105 ; 2 uses
  %i.hg = load <2 x i32>, ptr %i.hf, align 4, !dbg !82106
  %i.hh = shufflevector <2 x i32> %i.hg, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82107
  store <2 x i32> %i.hh, ptr %i.hf, align 4, !dbg !82107
  %i.hi = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82108
  br i1 %i.hi, label %bb.ag, label %.split32, !dbg !82108

bb.ag:                                            ; preds = %bb.af
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNCNCNvXs1_B24_INtB28_12ChunkedArrayNtNtB2a_9datatypes16BinaryOffsetTypeEINtB26_9ChunkSortB3Y_E8arg_sort0s_0E00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.hd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82111
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNCNCNvXs1_B25_INtB29_12ChunkedArrayNtNtB2b_9datatypes16BinaryOffsetTypeEINtB27_9ChunkSortB3Z_E8arg_sort0s_0E00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82112
  br label %.split32, !dbg !82112

bb.ah:                                            ; preds = %bb.h
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNCNCNvXs1_B24_INtB28_12ChunkedArrayNtNtB2a_9datatypes16BinaryOffsetTypeEINtB26_9ChunkSortB3Y_E8arg_sort0s_0E00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.124, i64 noundef %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82111
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNCNCNvXs1_B25_INtB29_12ChunkedArrayNtNtB2b_9datatypes16BinaryOffsetTypeEINtB27_9ChunkSortB3Z_E8arg_sort0s_0E00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.124, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82112
  br label %.split.1, !dbg !82112
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 21, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82113 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82137 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b, !dbg !82138
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82139
  %.val.us = load i32, ptr %i.c, align 4, !dbg !82140, !alias.scope !5800, !noalias !5801, !noundef !5062
  %.val19.us = load i32, ptr %i.d, align 4, !dbg !82140, !alias.scope !5801, !noalias !5800, !noundef !5062
  %i.e = icmp ult i32 %.val19.us, %.val.us, !dbg !82141
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82140

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82142
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82142

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82143
  br label %.split31, !dbg !82140

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !82138
  %.val.us32 = load i32, ptr %i.g, align 4, !dbg !82140, !alias.scope !5800, !noalias !5801, !noundef !5062
  %.val19.us33 = load i32, ptr %0, align 4, !dbg !82140, !alias.scope !5801, !noalias !5800, !noundef !5062
  %i.h = icmp ult i32 %.val19.us33, %.val.us32, !dbg !82141
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82140

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82140

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i32, ptr %0, align 4, !dbg !82140, !alias.scope !5801, !noalias !5800
  br label %.lr.ph, !dbg !82140

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82144
  ret i1 %.us-phi, !dbg !82144

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i32 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82140
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82138
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82145
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82146
  tail call void @llvm.assume(i1 %i.l), !dbg !82147
  %.val = load i32, ptr %i.j, align 4, !dbg !82140, !alias.scope !5800, !noalias !5801, !noundef !5062 ; 2 uses
  %i.m = icmp ult i32 %.val19, %.val, !dbg !82141
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82140

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82143
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82143

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82137 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82142
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82142

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82148 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82149
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82149

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82148
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82149
  unreachable, !dbg !82149

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p, !dbg !82150 ; 3 uses
  %i.s = load <2 x i32>, ptr %i.r, align 4, !dbg !82151
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82152
  store <2 x i32> %i.t, ptr %i.r, align 4, !dbg !82152
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82153
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82153

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82154
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82155
  unreachable, !dbg !82155

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82142 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82142

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i32, ptr %i.r, align 4, !dbg !82140, !alias.scope !5801, !noalias !5800
  br label %.lr.ph.1, !dbg !82140

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i32 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82140
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82138
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82145
  %i.y = icmp ult i64 %i.x, %1, !dbg !82146
  tail call void @llvm.assume(i1 %i.y), !dbg !82147
  %.val.1 = load i32, ptr %i.w, align 4, !dbg !82140, !alias.scope !5800, !noalias !5801, !noundef !5062 ; 2 uses
  %i.z = icmp ult i32 %.val19.1, %.val.1, !dbg !82141
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82140

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82137 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82142
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82142

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82154 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82143
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82143

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82148 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82149
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82149

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82155

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac, !dbg !82150 ; 3 uses
  %i.af = load <2 x i32>, ptr %i.ae, align 4, !dbg !82151
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82152
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !dbg !82152
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82153
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82153

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82156
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82157
  br label %.split.2, !dbg !82157

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82142 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82142

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i32, ptr %i.ae, align 4, !dbg !82140, !alias.scope !5801, !noalias !5800
  br label %.lr.ph.2, !dbg !82140

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i32 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82140
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82138
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82145
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82146
  tail call void @llvm.assume(i1 %i.al), !dbg !82147
  %.val.2 = load i32, ptr %i.aj, align 4, !dbg !82140, !alias.scope !5800, !noalias !5801, !noundef !5062 ; 2 uses
  %i.am = icmp ult i32 %.val19.2, %.val.2, !dbg !82141
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82140

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82137 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82142
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82142

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82154 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82143
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82143

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82148 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82149
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82149

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82155

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap, !dbg !82150 ; 3 uses
  %i.as = load <2 x i32>, ptr %i.ar, align 4, !dbg !82151
  %i.at = shufflevector <2 x i32> %i.as, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82152
  store <2 x i32> %i.at, ptr %i.ar, align 4, !dbg !82152
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82153
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82153

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82156
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82157
  br label %.split.3, !dbg !82157

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82142 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82142

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i32, ptr %i.ar, align 4, !dbg !82140, !alias.scope !5801, !noalias !5800
  br label %.lr.ph.3, !dbg !82140

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i32 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82140
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82138
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82145
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82146
  tail call void @llvm.assume(i1 %i.ay), !dbg !82147
  %.val.3 = load i32, ptr %i.aw, align 4, !dbg !82140, !alias.scope !5800, !noalias !5801, !noundef !5062 ; 2 uses
  %i.az = icmp ult i32 %.val19.3, %.val.3, !dbg !82141
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82140

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82137 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82142
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82142

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82154 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82143
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82143

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82148 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82149
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82149

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82155

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc, !dbg !82150 ; 3 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !dbg !82151
  %i.bg = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82152
  store <2 x i32> %i.bg, ptr %i.be, align 4, !dbg !82152
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82153
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82153

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82156
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchmNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82157
  br label %.split.4, !dbg !82157

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82142 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82142

.lr.ph.preheader.4:                               ; preds = %.split.4
end_hunk_1
begin_hunk_2_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB28_12ChunkedArrayNtNtB2a_9datatypes16BinaryOffsetTypeEINtB26_9ChunkSortB3k_E8arg_sort0s_0E0EB2a_:bb.a

bb.s:                                             ; preds = %bb.r
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB2b_12ChunkedArrayNtNtB2d_9datatypes16BinaryOffsetTypeEINtB29_9ChunkSortB3n_E8arg_sort0s_0E0EB2d_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82243
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB2c_12ChunkedArrayNtNtB2e_9datatypes16BinaryOffsetTypeEINtB2a_9ChunkSortB3o_E8arg_sort0s_0E0EB2e_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82244
  br label %.split.3, !dbg !82244

.split.3:                                         ; preds = %bb.s, %bb.r
  %i.dz = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82229 ; 2 uses
  br i1 %i.dz, label %.lr.ph.3, label %._crit_edge.3, !dbg !82229

.lr.ph.3:                                         ; preds = %.split.3
  %.val.i.3 = load ptr, ptr %.val, align 8, !nonnull !5062, !align !5141, !noundef !5062 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i.3, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !noundef !5062 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i.3, i64 48
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !5062 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.3, i64 64
  %i.ef = load ptr, ptr %i.ee, align 8, !noundef !5062 ; 2 uses
  %.val20.3.pre = load i32, ptr %i.dv, align 4, !dbg !82203 ; 2 uses
  %.phi.trans.insert51 = zext i32 %.val20.3.pre to i64
  %.phi.trans.insert52 = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.phi.trans.insert51
  %.val1.i6.i.i.3.pre = load i64, ptr %.phi.trans.insert52, align 8, !dbg !82204
  br label %bb.t, !dbg !82229

bb.t:                                             ; preds = %bb.u, %.lr.ph.3
  %.val1.i6.i.i.3 = phi i64 [ %.val1.i6.i.i.3.pre, %.lr.ph.3 ], [ %.val1.i.i.i.3, %bb.u ], !dbg !82204 ; 2 uses
  %.val20.3 = phi i32 [ %.val20.3.pre, %.lr.ph.3 ], [ %.val19.3, %bb.u ], !dbg !82203
  %.sroa.02.124.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.lr.ph.3 ], [ %i.fb, %bb.u ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.124.3, !dbg !82205
  %i.eh = add nsw i64 %.sroa.02.124.3, -1, !dbg !82232
  %i.ei = icmp ult i64 %i.eh, %1, !dbg !82233
  tail call void @llvm.assume(i1 %i.ei), !dbg !82234
  %.val19.3 = load i32, ptr %i.eg, align 4, !dbg !82203, !noundef !5062 ; 2 uses
  %i.ej = zext i32 %.val19.3 to i64, !dbg !82206  ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ej, !dbg !82207
  %.val1.i.i.i.3 = load i64, ptr %i.ek, align 8, !dbg !82208, !noundef !5062 ; 3 uses
  %i.el = add nuw nsw i64 %i.ej, 1, !dbg !82209   ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ed, !dbg !82210
  tail call void @llvm.assume(i1 %i.em), !dbg !82211
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.el, !dbg !82212
  %.val.i.i.i.3 = load i64, ptr %i.en, align 8, !dbg !82213, !noundef !5062
  %i.eo = sub nuw i64 %.val.i.i.i.3, %.val1.i.i.i.3, !dbg !82214 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.val1.i.i.i.3, !dbg !82215
  %i.eq = zext i32 %.val20.3 to i64, !dbg !82216
  %i.er = add nuw nsw i64 %i.eq, 1, !dbg !82217   ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.ed, !dbg !82218
  tail call void @llvm.assume(i1 %i.es), !dbg !82219
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.er, !dbg !82220
  %.val.i7.i.i.3 = load i64, ptr %i.et, align 8, !dbg !82221, !noundef !5062
  %i.eu = sub nuw i64 %.val.i7.i.i.3, %.val1.i6.i.i.3, !dbg !82222 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.val1.i6.i.i.3, !dbg !82223
  %spec.store.select.i.i.3 = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 %i.eu), !dbg !82224
  %i.ew = tail call i32 @memcmp(ptr %i.ep, ptr %i.ev, i64 %spec.store.select.i.i.3), !dbg !82225 ; 2 uses
  %i.ex = sext i32 %i.ew to i64, !dbg !82225
  %i.ey = icmp eq i32 %i.ew, 0, !dbg !82226
  %i.ez = sub i64 %i.eo, %i.eu
  %spec.select.i.i.3 = select i1 %i.ey, i64 %i.ez, i64 %i.ex, !dbg !82226
  %i.fa = icmp slt i64 %spec.select.i.i.3, 0, !dbg !82227
  br i1 %i.fa, label %._crit_edge.3, label %bb.u, !dbg !82203

bb.u:                                             ; preds = %bb.t
  %i.fb = add i64 %.sroa.02.124.3, 1, !dbg !82228 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.fb, %1, !dbg !82229
  br i1 %exitcond.3.not, label %.split32, label %bb.t, !dbg !82229

._crit_edge.3:                                    ; preds = %bb.t, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.124.3, %bb.t ], !dbg !82241 ; 9 uses
  %i.fc = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82230
  br i1 %i.fc, label %.split32, label %bb.v, !dbg !82230

bb.v:                                             ; preds = %._crit_edge.3
  %i.fd = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82235 ; 4 uses
  %i.fe = icmp ult i64 %i.fd, %1, !dbg !82236
  br i1 %i.fe, label %bb.w, label %bb.e, !dbg !82236

bb.w:                                             ; preds = %bb.v
  br i1 %i.dz, label %bb.x, label %bb.g, !dbg !82242

bb.x:                                             ; preds = %bb.w
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fd, !dbg !82237 ; 3 uses
  %i.fg = load <2 x i32>, ptr %i.ff, align 4, !dbg !82238
  %i.fh = shufflevector <2 x i32> %i.fg, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82239
  store <2 x i32> %i.fh, ptr %i.ff, align 4, !dbg !82239
  %i.fi = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82240
  br i1 %i.fi, label %bb.y, label %.split.4, !dbg !82240

bb.y:                                             ; preds = %bb.x
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB2b_12ChunkedArrayNtNtB2d_9datatypes16BinaryOffsetTypeEINtB29_9ChunkSortB3n_E8arg_sort0s_0E0EB2d_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82243
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB2c_12ChunkedArrayNtNtB2e_9datatypes16BinaryOffsetTypeEINtB2a_9ChunkSortB3o_E8arg_sort0s_0E0EB2e_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82244
  br label %.split.4, !dbg !82244

.split.4:                                         ; preds = %bb.y, %bb.x
  %i.fj = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82229 ; 2 uses
  br i1 %i.fj, label %.lr.ph.4, label %._crit_edge.4, !dbg !82229

.lr.ph.4:                                         ; preds = %.split.4
  %.val.i.4 = load ptr, ptr %.val, align 8, !nonnull !5062, !align !5141, !noundef !5062 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i.4, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !noundef !5062 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.val.i.4, i64 48
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !5062 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i.4, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !noundef !5062 ; 2 uses
  %.val20.4.pre = load i32, ptr %i.ff, align 4, !dbg !82203 ; 2 uses
  %.phi.trans.insert55 = zext i32 %.val20.4.pre to i64
  %.phi.trans.insert56 = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.phi.trans.insert55
  %.val1.i6.i.i.4.pre = load i64, ptr %.phi.trans.insert56, align 8, !dbg !82204
  br label %bb.z, !dbg !82229

bb.z:                                             ; preds = %bb.aa, %.lr.ph.4
  %.val1.i6.i.i.4 = phi i64 [ %.val1.i6.i.i.4.pre, %.lr.ph.4 ], [ %.val1.i.i.i.4, %bb.aa ], !dbg !82204 ; 2 uses
  %.val20.4 = phi i32 [ %.val20.4.pre, %.lr.ph.4 ], [ %.val19.4, %bb.aa ], !dbg !82203
  %.sroa.02.124.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.lr.ph.4 ], [ %i.gl, %bb.aa ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.124.4, !dbg !82205
  %i.fr = add nsw i64 %.sroa.02.124.4, -1, !dbg !82232
  %i.fs = icmp ult i64 %i.fr, %1, !dbg !82233
  tail call void @llvm.assume(i1 %i.fs), !dbg !82234
  %.val19.4 = load i32, ptr %i.fq, align 4, !dbg !82203, !noundef !5062 ; 2 uses
  %i.ft = zext i32 %.val19.4 to i64, !dbg !82206  ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.ft, !dbg !82207
  %.val1.i.i.i.4 = load i64, ptr %i.fu, align 8, !dbg !82208, !noundef !5062 ; 3 uses
  %i.fv = add nuw nsw i64 %i.ft, 1, !dbg !82209   ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.fn, !dbg !82210
  tail call void @llvm.assume(i1 %i.fw), !dbg !82211
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fv, !dbg !82212
  %.val.i.i.i.4 = load i64, ptr %i.fx, align 8, !dbg !82213, !noundef !5062
  %i.fy = sub nuw i64 %.val.i.i.i.4, %.val1.i.i.i.4, !dbg !82214 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.val1.i.i.i.4, !dbg !82215
  %i.ga = zext i32 %.val20.4 to i64, !dbg !82216
  %i.gb = add nuw nsw i64 %i.ga, 1, !dbg !82217   ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fn, !dbg !82218
  tail call void @llvm.assume(i1 %i.gc), !dbg !82219
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gb, !dbg !82220
  %.val.i7.i.i.4 = load i64, ptr %i.gd, align 8, !dbg !82221, !noundef !5062
  %i.ge = sub nuw i64 %.val.i7.i.i.4, %.val1.i6.i.i.4, !dbg !82222 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.val1.i6.i.i.4, !dbg !82223
  %spec.store.select.i.i.4 = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 %i.ge), !dbg !82224
  %i.gg = tail call i32 @memcmp(ptr %i.fz, ptr %i.gf, i64 %spec.store.select.i.i.4), !dbg !82225 ; 2 uses
  %i.gh = sext i32 %i.gg to i64, !dbg !82225
  %i.gi = icmp eq i32 %i.gg, 0, !dbg !82226
  %i.gj = sub i64 %i.fy, %i.ge
  %spec.select.i.i.4 = select i1 %i.gi, i64 %i.gj, i64 %i.gh, !dbg !82226
  %i.gk = icmp slt i64 %spec.select.i.i.4, 0, !dbg !82227
  br i1 %i.gk, label %._crit_edge.4, label %bb.aa, !dbg !82203

bb.aa:                                            ; preds = %bb.z
  %i.gl = add i64 %.sroa.02.124.4, 1, !dbg !82228 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.gl, %1, !dbg !82229
  br i1 %exitcond.4.not, label %.split32, label %bb.z, !dbg !82229

._crit_edge.4:                                    ; preds = %bb.z, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.124.4, %bb.z ], !dbg !82241 ; 6 uses
  %i.gm = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82230
  br i1 %i.gm, label %.split32, label %bb.ab, !dbg !82230

bb.ab:                                            ; preds = %._crit_edge.4
  %i.gn = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82235 ; 4 uses
  %i.go = icmp ult i64 %i.gn, %1, !dbg !82236
  br i1 %i.go, label %bb.ac, label %bb.e, !dbg !82236

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.fj, label %bb.ad, label %bb.g, !dbg !82242

bb.ad:                                            ; preds = %bb.ac
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gn, !dbg !82237 ; 2 uses
  %i.gq = load <2 x i32>, ptr %i.gp, align 4, !dbg !82238
  %i.gr = shufflevector <2 x i32> %i.gq, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82239
  store <2 x i32> %i.gr, ptr %i.gp, align 4, !dbg !82239
  %i.gs = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82240
  br i1 %i.gs, label %bb.ae, label %.split32, !dbg !82240

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB2b_12ChunkedArrayNtNtB2d_9datatypes16BinaryOffsetTypeEINtB29_9ChunkSortB3n_E8arg_sort0s_0E0EB2d_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.gn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82243
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB2c_12ChunkedArrayNtNtB2e_9datatypes16BinaryOffsetTypeEINtB2a_9ChunkSortB3o_E8arg_sort0s_0E0EB2e_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82244
  br label %.split32, !dbg !82244

bb.af:                                            ; preds = %bb.f
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB2b_12ChunkedArrayNtNtB2d_9datatypes16BinaryOffsetTypeEINtB29_9ChunkSortB3n_E8arg_sort0s_0E0EB2d_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.124, i64 noundef %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82243
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNCNCNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB2c_12ChunkedArrayNtNtB2e_9datatypes16BinaryOffsetTypeEINtB2a_9ChunkSortB3o_E8arg_sort0s_0E0EB2e_(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.124, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24, !dbg !82244
  br label %.split.1, !dbg !82244
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 21, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82245 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82269 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b, !dbg !82270
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82271
  %.val.us = load i32, ptr %i.c, align 4, !dbg !82272, !alias.scope !5801, !noalias !5800, !noundef !5062
  %.val19.us = load i32, ptr %i.d, align 4, !dbg !82272, !alias.scope !5800, !noalias !5801, !noundef !5062
  %i.e = icmp ult i32 %.val.us, %.val19.us, !dbg !82273
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82272

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82274
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82274

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82275
  br label %.split31, !dbg !82272

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !82270
  %.val.us32 = load i32, ptr %i.g, align 4, !dbg !82272, !alias.scope !5801, !noalias !5800, !noundef !5062
  %.val19.us33 = load i32, ptr %0, align 4, !dbg !82272, !alias.scope !5800, !noalias !5801, !noundef !5062
  %i.h = icmp ult i32 %.val.us32, %.val19.us33, !dbg !82273
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82272

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82272

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i32, ptr %0, align 4, !dbg !82272, !alias.scope !5800, !noalias !5801
  br label %.lr.ph, !dbg !82272

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82276
  ret i1 %.us-phi, !dbg !82276

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i32 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82272
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82270
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82277
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82278
  tail call void @llvm.assume(i1 %i.l), !dbg !82279
  %.val = load i32, ptr %i.j, align 4, !dbg !82272, !alias.scope !5801, !noalias !5800, !noundef !5062 ; 2 uses
  %i.m = icmp ult i32 %.val, %.val19, !dbg !82273
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82272

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82275
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82275

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82269 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82274
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82274

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82280 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82281
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82281

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82280
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82281
  unreachable, !dbg !82281

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p, !dbg !82282 ; 3 uses
  %i.s = load <2 x i32>, ptr %i.r, align 4, !dbg !82283
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82284
  store <2 x i32> %i.t, ptr %i.r, align 4, !dbg !82284
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82285
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82285

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82286
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82287
  unreachable, !dbg !82287

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82274 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82274

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i32, ptr %i.r, align 4, !dbg !82272, !alias.scope !5800, !noalias !5801
  br label %.lr.ph.1, !dbg !82272

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i32 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82272
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82270
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82277
  %i.y = icmp ult i64 %i.x, %1, !dbg !82278
  tail call void @llvm.assume(i1 %i.y), !dbg !82279
  %.val.1 = load i32, ptr %i.w, align 4, !dbg !82272, !alias.scope !5801, !noalias !5800, !noundef !5062 ; 2 uses
  %i.z = icmp ult i32 %.val.1, %.val19.1, !dbg !82273
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82272

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82269 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82274
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82274

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82286 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82275
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82275

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82280 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82281
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82281

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82287

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac, !dbg !82282 ; 3 uses
  %i.af = load <2 x i32>, ptr %i.ae, align 4, !dbg !82283
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82284
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !dbg !82284
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82285
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82285

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82288
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82289
  br label %.split.2, !dbg !82289

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82274 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82274

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i32, ptr %i.ae, align 4, !dbg !82272, !alias.scope !5800, !noalias !5801
  br label %.lr.ph.2, !dbg !82272

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i32 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82272
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82270
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82277
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82278
  tail call void @llvm.assume(i1 %i.al), !dbg !82279
  %.val.2 = load i32, ptr %i.aj, align 4, !dbg !82272, !alias.scope !5801, !noalias !5800, !noundef !5062 ; 2 uses
  %i.am = icmp ult i32 %.val.2, %.val19.2, !dbg !82273
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82272

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82269 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82274
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82274

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82286 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82275
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82275

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82280 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82281
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82281

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82287

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap, !dbg !82282 ; 3 uses
  %i.as = load <2 x i32>, ptr %i.ar, align 4, !dbg !82283
  %i.at = shufflevector <2 x i32> %i.as, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82284
  store <2 x i32> %i.at, ptr %i.ar, align 4, !dbg !82284
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82285
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82285

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82288
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82289
  br label %.split.3, !dbg !82289

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82274 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82274

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i32, ptr %i.ar, align 4, !dbg !82272, !alias.scope !5800, !noalias !5801
  br label %.lr.ph.3, !dbg !82272

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i32 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82272
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82270
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82277
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82278
  tail call void @llvm.assume(i1 %i.ay), !dbg !82279
  %.val.3 = load i32, ptr %i.aw, align 4, !dbg !82272, !alias.scope !5801, !noalias !5800, !noundef !5062 ; 2 uses
  %i.az = icmp ult i32 %.val.3, %.val19.3, !dbg !82273
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82272

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82269 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82274
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82274

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82286 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82275
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82275

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82280 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82281
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82281

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82287

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc, !dbg !82282 ; 3 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !dbg !82283
  %i.bg = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82284
  store <2 x i32> %i.bg, ptr %i.be, align 4, !dbg !82284
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82285
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82285

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82288
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82289
  br label %.split.4, !dbg !82289

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82274 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82274

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i32, ptr %i.be, align 4, !dbg !82272, !alias.scope !5800, !noalias !5801
  br label %.lr.ph.4, !dbg !82272

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i32 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !82272
  %.sroa.02.123.4 = phi i64 [ %i.bn, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !82270
  %i.bk = add nsw i64 %.sroa.02.123.4, -1, !dbg !82277
  %i.bl = icmp ult i64 %i.bk, %1, !dbg !82278
  tail call void @llvm.assume(i1 %i.bl), !dbg !82279
  %.val.4 = load i32, ptr %i.bj, align 4, !dbg !82272, !alias.scope !5801, !noalias !5800, !noundef !5062 ; 2 uses
  %i.bm = icmp ult i32 %.val.4, %.val19.4, !dbg !82273
  br i1 %i.bm, label %._crit_edge.4, label %bb.v, !dbg !82272

bb.v:                                             ; preds = %.lr.ph.4
  %i.bn = add i64 %.sroa.02.123.4, 1, !dbg !82269 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bn, %1, !dbg !82274
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !82274

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !82286 ; 6 uses
  %i.bo = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82275
  br i1 %i.bo, label %.split31, label %bb.w, !dbg !82275

bb.w:                                             ; preds = %._crit_edge.4
  %i.bp = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82280 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %1, !dbg !82281
  br i1 %i.bq, label %bb.x, label %bb.d, !dbg !82281

bb.x:                                             ; preds = %bb.w
  br i1 %i.bi, label %bb.y, label %bb.f, !dbg !82287

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp, !dbg !82282 ; 2 uses
  %i.bs = load <2 x i32>, ptr %i.br, align 4, !dbg !82283
  %i.bt = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !82284
  store <2 x i32> %i.bt, ptr %i.br, align 4, !dbg !82284
  %i.bu = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82285
  br i1 %i.bu, label %bb.z, label %.split31, !dbg !82285

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bp, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82288
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82289
  br label %.split31, !dbg !82289

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.123, i64 noundef %i.p, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82288
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightmNCINvYSmINtB4_16ParallelSliceMutmE20par_sort_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82289
  br label %.split.1, !dbg !82289
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull align 16 captures(none) %0, i64 noundef range(i64 21, 576460752303423488) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82290 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 20 uses
  %i.b = icmp samesign ult i64 %1, 50
  br i1 %i.b, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.lr.ph33
  %.sroa.02.121.us3290 = phi i64 [ %i.c, %.lr.ph33 ], [ 1, %.lr.ph91.preheader ] ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.02.121.us3290, 1, !dbg !82315 ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c, !dbg !82316
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.us3290, !dbg !82317
  %.val.us = load i128, ptr %i.d, align 16, !dbg !82318, !alias.scope !5802, !noalias !5803, !noundef !5062
  %.val17.us = load i128, ptr %i.e, align 16, !dbg !82318, !alias.scope !5803, !noalias !5802, !noundef !5062
  %i.f = icmp slt i128 %.val17.us, %.val.us, !dbg !82319
  br i1 %i.f, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph33, !dbg !82318

.lr.ph33:                                         ; preds = %.lr.ph91
  %exitcond42.not = icmp eq i64 %.sroa.02.121.us3290, %i.j, !dbg !82320
  br i1 %exitcond42.not, label %.split29, label %.lr.ph91, !dbg !82320

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph91
  %i.g = icmp eq i64 %i.c, %1, !dbg !82321
  br label %.split29, !dbg !82318

.lr.ph.us:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !82316
  %.val.us30 = load i128, ptr %i.h, align 16, !dbg !82318, !alias.scope !5802, !noalias !5803, !noundef !5062
  %.val17.us31 = load i128, ptr %0, align 16, !dbg !82318, !alias.scope !5803, !noalias !5802, !noundef !5062
  %i.i = icmp slt i128 %.val17.us31, %.val.us30, !dbg !82319
  br i1 %i.i, label %.split29, label %.lr.ph91.preheader, !dbg !82318

.lr.ph91.preheader:                               ; preds = %.lr.ph.us
  %i.j = add nsw i64 %1, -2
  br label %.lr.ph91, !dbg !82318

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val17.pre = load i128, ptr %0, align 16, !dbg !82318, !alias.scope !5803, !noalias !5802
  br label %.lr.ph, !dbg !82318

.split29:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph33, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph33 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.g, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82322
  ret i1 %.us-phi, !dbg !82322

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val17 = phi i128 [ %.val, %bb.b ], [ %.val17.pre, %.lr.ph.preheader ], !dbg !82318
  %.sroa.02.121 = phi i64 [ %i.p, %bb.b ], [ 1, %.lr.ph.preheader ] ; 12 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121, !dbg !82316
  %i.l = add nsw i64 %.sroa.02.121, -1, !dbg !82323
  %i.m = icmp samesign ult i64 %i.l, %1, !dbg !82324
  tail call void @llvm.assume(i1 %i.m), !dbg !82325
  %.val = load i128, ptr %i.k, align 16, !dbg !82318, !alias.scope !5802, !noalias !5803, !noundef !5062 ; 2 uses
  %i.n = icmp slt i128 %.val17, %.val, !dbg !82319
  br i1 %i.n, label %._crit_edge, label %bb.b, !dbg !82318

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = icmp eq i64 %.sroa.02.121, %1, !dbg !82321
  br i1 %i.o, label %.split29, label %bb.c, !dbg !82321

bb.b:                                             ; preds = %.lr.ph
  %i.p = add nuw nsw i64 %.sroa.02.121, 1, !dbg !82315 ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1, !dbg !82320
  br i1 %exitcond.not, label %.split29, label %.lr.ph, !dbg !82320

bb.c:                                             ; preds = %._crit_edge
  %i.q = add nsw i64 %.sroa.02.121, -1, !dbg !82326 ; 4 uses
  %i.r = icmp ult i64 %i.q, %1, !dbg !82327
  br i1 %i.r, label %bb.e, label %bb.d, !dbg !82327

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa37 = phi i64 [ %i.q, %bb.c ], [ %i.ac, %bb.h ], [ %i.ao, %bb.m ], [ %i.ba, %bb.r ], [ %i.bm, %bb.w ], !dbg !82326
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa37, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82327
  unreachable, !dbg !82327

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q, !dbg !82328 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121, !dbg !82329 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !dbg !82331
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false), !dbg !82332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82334
  %i.u = icmp samesign ugt i64 %.sroa.02.121, 1, !dbg !82335
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82335

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa40 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82336
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa40, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82337
  unreachable, !dbg !82337

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.121, %1, !dbg !82320 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82320

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val17.1.pre = load i128, ptr %i.s, align 16, !dbg !82318, !alias.scope !5803, !noalias !5802
  br label %.lr.ph.1, !dbg !82318

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val17.1 = phi i128 [ %.val.1, %bb.g ], [ %.val17.1.pre, %.lr.ph.preheader.1 ], !dbg !82318
  %.sroa.02.121.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.121, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.1, !dbg !82316
  %i.x = add nsw i64 %.sroa.02.121.1, -1, !dbg !82323
  %i.y = icmp ult i64 %i.x, %1, !dbg !82324
  tail call void @llvm.assume(i1 %i.y), !dbg !82325
  %.val.1 = load i128, ptr %i.w, align 16, !dbg !82318, !alias.scope !5802, !noalias !5803, !noundef !5062 ; 2 uses
  %i.z = icmp slt i128 %.val17.1, %.val.1, !dbg !82319
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82318

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add nuw i64 %.sroa.02.121.1, 1, !dbg !82315 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82320
  br i1 %exitcond.1.not, label %.split29, label %.lr.ph.1, !dbg !82320

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.121, %.split.1 ], [ %.sroa.02.121.1, %.lr.ph.1 ], !dbg !82336 ; 10 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82321
  br i1 %i.ab, label %.split29, label %bb.h, !dbg !82321

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82326 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82327
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82327

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82337

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac, !dbg !82328 ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.1, !dbg !82329 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i64 16, i1 false), !dbg !82331
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull align 16 dereferenceable(16) %i.af, i64 16, i1 false), !dbg !82332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.af, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82334
  %i.ag = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82335
  br i1 %i.ag, label %bb.k, label %.split.2, !dbg !82335

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82338
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82339
  br label %.split.2, !dbg !82339

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ah = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82320 ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82320

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val17.2.pre = load i128, ptr %i.ae, align 16, !dbg !82318, !alias.scope !5803, !noalias !5802
  br label %.lr.ph.2, !dbg !82318

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val17.2 = phi i128 [ %.val.2, %bb.l ], [ %.val17.2.pre, %.lr.ph.preheader.2 ], !dbg !82318
  %.sroa.02.121.2 = phi i64 [ %i.am, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.2, !dbg !82316
  %i.aj = add nsw i64 %.sroa.02.121.2, -1, !dbg !82323
  %i.ak = icmp ult i64 %i.aj, %1, !dbg !82324
  tail call void @llvm.assume(i1 %i.ak), !dbg !82325
  %.val.2 = load i128, ptr %i.ai, align 16, !dbg !82318, !alias.scope !5802, !noalias !5803, !noundef !5062 ; 2 uses
  %i.al = icmp slt i128 %.val17.2, %.val.2, !dbg !82319
  br i1 %i.al, label %._crit_edge.2, label %bb.l, !dbg !82318

bb.l:                                             ; preds = %.lr.ph.2
  %i.am = add nuw i64 %.sroa.02.121.2, 1, !dbg !82315 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.am, %1, !dbg !82320
  br i1 %exitcond.2.not, label %.split29, label %.lr.ph.2, !dbg !82320

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.121.2, %.lr.ph.2 ], !dbg !82336 ; 10 uses
  %i.an = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82321
  br i1 %i.an, label %.split29, label %bb.m, !dbg !82321

bb.m:                                             ; preds = %._crit_edge.2
  %i.ao = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82326 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !82327
  br i1 %i.ap, label %bb.n, label %bb.d, !dbg !82327

bb.n:                                             ; preds = %bb.m
  br i1 %i.ah, label %bb.o, label %bb.f, !dbg !82337

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ao, !dbg !82328 ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.2, !dbg !82329 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i64 16, i1 false), !dbg !82331
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i64 16, i1 false), !dbg !82332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82334
  %i.as = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82335
  br i1 %i.as, label %bb.p, label %.split.3, !dbg !82335

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ao, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82338
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82339
  br label %.split.3, !dbg !82339

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.at = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82320 ; 2 uses
  br i1 %i.at, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82320

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val17.3.pre = load i128, ptr %i.aq, align 16, !dbg !82318, !alias.scope !5803, !noalias !5802
  br label %.lr.ph.3, !dbg !82318

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val17.3 = phi i128 [ %.val.3, %bb.q ], [ %.val17.3.pre, %.lr.ph.preheader.3 ], !dbg !82318
  %.sroa.02.121.3 = phi i64 [ %i.ay, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.3, !dbg !82316
  %i.av = add nsw i64 %.sroa.02.121.3, -1, !dbg !82323
  %i.aw = icmp ult i64 %i.av, %1, !dbg !82324
  tail call void @llvm.assume(i1 %i.aw), !dbg !82325
  %.val.3 = load i128, ptr %i.au, align 16, !dbg !82318, !alias.scope !5802, !noalias !5803, !noundef !5062 ; 2 uses
  %i.ax = icmp slt i128 %.val17.3, %.val.3, !dbg !82319
  br i1 %i.ax, label %._crit_edge.3, label %bb.q, !dbg !82318

bb.q:                                             ; preds = %.lr.ph.3
  %i.ay = add nuw i64 %.sroa.02.121.3, 1, !dbg !82315 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ay, %1, !dbg !82320
  br i1 %exitcond.3.not, label %.split29, label %.lr.ph.3, !dbg !82320

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.121.3, %.lr.ph.3 ], !dbg !82336 ; 10 uses
  %i.az = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82321
  br i1 %i.az, label %.split29, label %bb.r, !dbg !82321

bb.r:                                             ; preds = %._crit_edge.3
  %i.ba = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82326 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, %1, !dbg !82327
  br i1 %i.bb, label %bb.s, label %bb.d, !dbg !82327

bb.s:                                             ; preds = %bb.r
  br i1 %i.at, label %bb.t, label %bb.f, !dbg !82337

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ba, !dbg !82328 ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.3, !dbg !82329 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.bc, i64 16, i1 false), !dbg !82331
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bc, ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i64 16, i1 false), !dbg !82332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82334
  %i.be = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82335
  br i1 %i.be, label %bb.u, label %.split.4, !dbg !82335

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.ba, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82338
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82339
  br label %.split.4, !dbg !82339

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bf = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82320 ; 2 uses
  br i1 %i.bf, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82320

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val17.4.pre = load i128, ptr %i.bc, align 16, !dbg !82318, !alias.scope !5803, !noalias !5802
  br label %.lr.ph.4, !dbg !82318

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val17.4 = phi i128 [ %.val.4, %bb.v ], [ %.val17.4.pre, %.lr.ph.preheader.4 ], !dbg !82318
  %.sroa.02.121.4 = phi i64 [ %i.bk, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.4, !dbg !82316
  %i.bh = add nsw i64 %.sroa.02.121.4, -1, !dbg !82323
  %i.bi = icmp ult i64 %i.bh, %1, !dbg !82324
  tail call void @llvm.assume(i1 %i.bi), !dbg !82325
  %.val.4 = load i128, ptr %i.bg, align 16, !dbg !82318, !alias.scope !5802, !noalias !5803, !noundef !5062 ; 2 uses
  %i.bj = icmp slt i128 %.val17.4, %.val.4, !dbg !82319
  br i1 %i.bj, label %._crit_edge.4, label %bb.v, !dbg !82318

bb.v:                                             ; preds = %.lr.ph.4
  %i.bk = add nuw i64 %.sroa.02.121.4, 1, !dbg !82315 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bk, %1, !dbg !82320
  br i1 %exitcond.4.not, label %.split29, label %.lr.ph.4, !dbg !82320

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.121.4, %.lr.ph.4 ], !dbg !82336 ; 7 uses
  %i.bl = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82321
  br i1 %i.bl, label %.split29, label %bb.w, !dbg !82321

bb.w:                                             ; preds = %._crit_edge.4
  %i.bm = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82326 ; 4 uses
  %i.bn = icmp ult i64 %i.bm, %1, !dbg !82327
  br i1 %i.bn, label %bb.x, label %bb.d, !dbg !82327

bb.x:                                             ; preds = %bb.w
  br i1 %i.bf, label %bb.y, label %bb.f, !dbg !82337

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bm, !dbg !82328 ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.4, !dbg !82329 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.bo, i64 16, i1 false), !dbg !82331
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bo, ptr noundef nonnull align 16 dereferenceable(16) %i.bp, i64 16, i1 false), !dbg !82332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bp, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82334
  %i.bq = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82335
  br i1 %i.bq, label %bb.z, label %.split29, !dbg !82335

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bm, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82338
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82339
  br label %.split29, !dbg !82339

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.121, i64 noundef %i.q, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82338
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.121, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82339
  br label %.split.1, !dbg !82339
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 16 captures(none) %0, i64 noundef range(i64 21, 576460752303423488) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82340 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 20 uses
  %i.b = icmp samesign ult i64 %1, 50
  br i1 %i.b, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.lr.ph33
  %.sroa.02.121.us3290 = phi i64 [ %i.c, %.lr.ph33 ], [ 1, %.lr.ph91.preheader ] ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.02.121.us3290, 1, !dbg !82365 ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c, !dbg !82366
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.us3290, !dbg !82367
  %.val.us = load i128, ptr %i.d, align 16, !dbg !82368, !alias.scope !5803, !noalias !5802, !noundef !5062
  %.val17.us = load i128, ptr %i.e, align 16, !dbg !82368, !alias.scope !5802, !noalias !5803, !noundef !5062
  %i.f = icmp slt i128 %.val.us, %.val17.us, !dbg !82369
  br i1 %i.f, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph33, !dbg !82368

.lr.ph33:                                         ; preds = %.lr.ph91
  %exitcond42.not = icmp eq i64 %.sroa.02.121.us3290, %i.j, !dbg !82370
  br i1 %exitcond42.not, label %.split29, label %.lr.ph91, !dbg !82370

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph91
  %i.g = icmp eq i64 %i.c, %1, !dbg !82371
  br label %.split29, !dbg !82368

.lr.ph.us:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !82366
  %.val.us30 = load i128, ptr %i.h, align 16, !dbg !82368, !alias.scope !5803, !noalias !5802, !noundef !5062
  %.val17.us31 = load i128, ptr %0, align 16, !dbg !82368, !alias.scope !5802, !noalias !5803, !noundef !5062
  %i.i = icmp slt i128 %.val.us30, %.val17.us31, !dbg !82369
  br i1 %i.i, label %.split29, label %.lr.ph91.preheader, !dbg !82368

.lr.ph91.preheader:                               ; preds = %.lr.ph.us
  %i.j = add nsw i64 %1, -2
  br label %.lr.ph91, !dbg !82368

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val17.pre = load i128, ptr %0, align 16, !dbg !82368, !alias.scope !5802, !noalias !5803
  br label %.lr.ph, !dbg !82368

.split29:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph33, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph33 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.g, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82372
  ret i1 %.us-phi, !dbg !82372

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val17 = phi i128 [ %.val, %bb.b ], [ %.val17.pre, %.lr.ph.preheader ], !dbg !82368
  %.sroa.02.121 = phi i64 [ %i.p, %bb.b ], [ 1, %.lr.ph.preheader ] ; 12 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121, !dbg !82366
  %i.l = add nsw i64 %.sroa.02.121, -1, !dbg !82373
  %i.m = icmp samesign ult i64 %i.l, %1, !dbg !82374
  tail call void @llvm.assume(i1 %i.m), !dbg !82375
  %.val = load i128, ptr %i.k, align 16, !dbg !82368, !alias.scope !5803, !noalias !5802, !noundef !5062 ; 2 uses
  %i.n = icmp slt i128 %.val, %.val17, !dbg !82369
  br i1 %i.n, label %._crit_edge, label %bb.b, !dbg !82368

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = icmp eq i64 %.sroa.02.121, %1, !dbg !82371
  br i1 %i.o, label %.split29, label %bb.c, !dbg !82371

bb.b:                                             ; preds = %.lr.ph
  %i.p = add nuw nsw i64 %.sroa.02.121, 1, !dbg !82365 ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1, !dbg !82370
  br i1 %exitcond.not, label %.split29, label %.lr.ph, !dbg !82370

bb.c:                                             ; preds = %._crit_edge
  %i.q = add nsw i64 %.sroa.02.121, -1, !dbg !82376 ; 4 uses
  %i.r = icmp ult i64 %i.q, %1, !dbg !82377
  br i1 %i.r, label %bb.e, label %bb.d, !dbg !82377

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa37 = phi i64 [ %i.q, %bb.c ], [ %i.ac, %bb.h ], [ %i.ao, %bb.m ], [ %i.ba, %bb.r ], [ %i.bm, %bb.w ], !dbg !82376
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa37, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82377
  unreachable, !dbg !82377

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q, !dbg !82378 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121, !dbg !82379 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !dbg !82381
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false), !dbg !82382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82384
  %i.u = icmp samesign ugt i64 %.sroa.02.121, 1, !dbg !82385
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82385

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa40 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82386
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa40, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82387
  unreachable, !dbg !82387

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.121, %1, !dbg !82370 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82370

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val17.1.pre = load i128, ptr %i.s, align 16, !dbg !82368, !alias.scope !5802, !noalias !5803
  br label %.lr.ph.1, !dbg !82368

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val17.1 = phi i128 [ %.val.1, %bb.g ], [ %.val17.1.pre, %.lr.ph.preheader.1 ], !dbg !82368
  %.sroa.02.121.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.121, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.1, !dbg !82366
  %i.x = add nsw i64 %.sroa.02.121.1, -1, !dbg !82373
  %i.y = icmp ult i64 %i.x, %1, !dbg !82374
  tail call void @llvm.assume(i1 %i.y), !dbg !82375
  %.val.1 = load i128, ptr %i.w, align 16, !dbg !82368, !alias.scope !5803, !noalias !5802, !noundef !5062 ; 2 uses
  %i.z = icmp slt i128 %.val.1, %.val17.1, !dbg !82369
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82368

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add nuw i64 %.sroa.02.121.1, 1, !dbg !82365 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82370
  br i1 %exitcond.1.not, label %.split29, label %.lr.ph.1, !dbg !82370

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.121, %.split.1 ], [ %.sroa.02.121.1, %.lr.ph.1 ], !dbg !82386 ; 10 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82371
  br i1 %i.ab, label %.split29, label %bb.h, !dbg !82371

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82376 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82377
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82377

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82387

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac, !dbg !82378 ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.1, !dbg !82379 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i64 16, i1 false), !dbg !82381
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull align 16 dereferenceable(16) %i.af, i64 16, i1 false), !dbg !82382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.af, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82384
  %i.ag = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82385
  br i1 %i.ag, label %bb.k, label %.split.2, !dbg !82385

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82388
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82389
  br label %.split.2, !dbg !82389

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ah = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82370 ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82370

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val17.2.pre = load i128, ptr %i.ae, align 16, !dbg !82368, !alias.scope !5802, !noalias !5803
  br label %.lr.ph.2, !dbg !82368

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val17.2 = phi i128 [ %.val.2, %bb.l ], [ %.val17.2.pre, %.lr.ph.preheader.2 ], !dbg !82368
  %.sroa.02.121.2 = phi i64 [ %i.am, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.2, !dbg !82366
  %i.aj = add nsw i64 %.sroa.02.121.2, -1, !dbg !82373
  %i.ak = icmp ult i64 %i.aj, %1, !dbg !82374
  tail call void @llvm.assume(i1 %i.ak), !dbg !82375
  %.val.2 = load i128, ptr %i.ai, align 16, !dbg !82368, !alias.scope !5803, !noalias !5802, !noundef !5062 ; 2 uses
  %i.al = icmp slt i128 %.val.2, %.val17.2, !dbg !82369
  br i1 %i.al, label %._crit_edge.2, label %bb.l, !dbg !82368

bb.l:                                             ; preds = %.lr.ph.2
  %i.am = add nuw i64 %.sroa.02.121.2, 1, !dbg !82365 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.am, %1, !dbg !82370
  br i1 %exitcond.2.not, label %.split29, label %.lr.ph.2, !dbg !82370

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.121.2, %.lr.ph.2 ], !dbg !82386 ; 10 uses
  %i.an = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82371
  br i1 %i.an, label %.split29, label %bb.m, !dbg !82371

bb.m:                                             ; preds = %._crit_edge.2
  %i.ao = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82376 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !82377
  br i1 %i.ap, label %bb.n, label %bb.d, !dbg !82377

bb.n:                                             ; preds = %bb.m
  br i1 %i.ah, label %bb.o, label %bb.f, !dbg !82387

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ao, !dbg !82378 ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.2, !dbg !82379 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i64 16, i1 false), !dbg !82381
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i64 16, i1 false), !dbg !82382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82384
  %i.as = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82385
  br i1 %i.as, label %bb.p, label %.split.3, !dbg !82385

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ao, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82388
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82389
  br label %.split.3, !dbg !82389

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.at = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82370 ; 2 uses
  br i1 %i.at, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82370

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val17.3.pre = load i128, ptr %i.aq, align 16, !dbg !82368, !alias.scope !5802, !noalias !5803
  br label %.lr.ph.3, !dbg !82368

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val17.3 = phi i128 [ %.val.3, %bb.q ], [ %.val17.3.pre, %.lr.ph.preheader.3 ], !dbg !82368
  %.sroa.02.121.3 = phi i64 [ %i.ay, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.3, !dbg !82366
  %i.av = add nsw i64 %.sroa.02.121.3, -1, !dbg !82373
  %i.aw = icmp ult i64 %i.av, %1, !dbg !82374
  tail call void @llvm.assume(i1 %i.aw), !dbg !82375
  %.val.3 = load i128, ptr %i.au, align 16, !dbg !82368, !alias.scope !5803, !noalias !5802, !noundef !5062 ; 2 uses
  %i.ax = icmp slt i128 %.val.3, %.val17.3, !dbg !82369
  br i1 %i.ax, label %._crit_edge.3, label %bb.q, !dbg !82368

bb.q:                                             ; preds = %.lr.ph.3
  %i.ay = add nuw i64 %.sroa.02.121.3, 1, !dbg !82365 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ay, %1, !dbg !82370
  br i1 %exitcond.3.not, label %.split29, label %.lr.ph.3, !dbg !82370

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.121.3, %.lr.ph.3 ], !dbg !82386 ; 10 uses
  %i.az = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82371
  br i1 %i.az, label %.split29, label %bb.r, !dbg !82371

bb.r:                                             ; preds = %._crit_edge.3
  %i.ba = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82376 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, %1, !dbg !82377
  br i1 %i.bb, label %bb.s, label %bb.d, !dbg !82377

bb.s:                                             ; preds = %bb.r
  br i1 %i.at, label %bb.t, label %bb.f, !dbg !82387

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ba, !dbg !82378 ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.3, !dbg !82379 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.bc, i64 16, i1 false), !dbg !82381
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bc, ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i64 16, i1 false), !dbg !82382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82384
  %i.be = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82385
  br i1 %i.be, label %bb.u, label %.split.4, !dbg !82385

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.ba, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82388
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82389
  br label %.split.4, !dbg !82389

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bf = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82370 ; 2 uses
  br i1 %i.bf, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82370

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val17.4.pre = load i128, ptr %i.bc, align 16, !dbg !82368, !alias.scope !5802, !noalias !5803
  br label %.lr.ph.4, !dbg !82368

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val17.4 = phi i128 [ %.val.4, %bb.v ], [ %.val17.4.pre, %.lr.ph.preheader.4 ], !dbg !82368
  %.sroa.02.121.4 = phi i64 [ %i.bk, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.4, !dbg !82366
  %i.bh = add nsw i64 %.sroa.02.121.4, -1, !dbg !82373
  %i.bi = icmp ult i64 %i.bh, %1, !dbg !82374
  tail call void @llvm.assume(i1 %i.bi), !dbg !82375
  %.val.4 = load i128, ptr %i.bg, align 16, !dbg !82368, !alias.scope !5803, !noalias !5802, !noundef !5062 ; 2 uses
  %i.bj = icmp slt i128 %.val.4, %.val17.4, !dbg !82369
  br i1 %i.bj, label %._crit_edge.4, label %bb.v, !dbg !82368

bb.v:                                             ; preds = %.lr.ph.4
  %i.bk = add nuw i64 %.sroa.02.121.4, 1, !dbg !82365 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bk, %1, !dbg !82370
  br i1 %exitcond.4.not, label %.split29, label %.lr.ph.4, !dbg !82370

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.121.4, %.lr.ph.4 ], !dbg !82386 ; 7 uses
  %i.bl = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82371
  br i1 %i.bl, label %.split29, label %bb.w, !dbg !82371

bb.w:                                             ; preds = %._crit_edge.4
  %i.bm = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82376 ; 4 uses
  %i.bn = icmp ult i64 %i.bm, %1, !dbg !82377
  br i1 %i.bn, label %bb.x, label %bb.d, !dbg !82377

bb.x:                                             ; preds = %bb.w
  br i1 %i.bf, label %bb.y, label %bb.f, !dbg !82387

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bm, !dbg !82378 ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.4, !dbg !82379 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.bo, i64 16, i1 false), !dbg !82381
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bo, ptr noundef nonnull align 16 dereferenceable(16) %i.bp, i64 16, i1 false), !dbg !82382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bp, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82384
  %i.bq = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82385
  br i1 %i.bq, label %bb.z, label %.split29, !dbg !82385

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bm, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82388
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82389
  br label %.split29, !dbg !82389

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.121, i64 noundef %i.q, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82388
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightnNCINvYSnINtB4_16ParallelSliceMutnE20par_sort_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.121, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82389
  br label %.split.1, !dbg !82389
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull align 16 captures(none) %0, i64 noundef range(i64 21, 576460752303423488) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82390 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 20 uses
  %i.b = icmp samesign ult i64 %1, 50
  br i1 %i.b, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.lr.ph33
  %.sroa.02.121.us3290 = phi i64 [ %i.c, %.lr.ph33 ], [ 1, %.lr.ph91.preheader ] ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.02.121.us3290, 1, !dbg !82415 ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c, !dbg !82416
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.us3290, !dbg !82417
  %.val.us = load i128, ptr %i.d, align 16, !dbg !82418, !alias.scope !5804, !noalias !5805, !noundef !5062
  %.val17.us = load i128, ptr %i.e, align 16, !dbg !82418, !alias.scope !5805, !noalias !5804, !noundef !5062
  %i.f = icmp ult i128 %.val17.us, %.val.us, !dbg !82419
  br i1 %i.f, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph33, !dbg !82418

.lr.ph33:                                         ; preds = %.lr.ph91
  %exitcond42.not = icmp eq i64 %.sroa.02.121.us3290, %i.j, !dbg !82420
  br i1 %exitcond42.not, label %.split29, label %.lr.ph91, !dbg !82420

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph91
  %i.g = icmp eq i64 %i.c, %1, !dbg !82421
  br label %.split29, !dbg !82418

.lr.ph.us:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !82416
  %.val.us30 = load i128, ptr %i.h, align 16, !dbg !82418, !alias.scope !5804, !noalias !5805, !noundef !5062
  %.val17.us31 = load i128, ptr %0, align 16, !dbg !82418, !alias.scope !5805, !noalias !5804, !noundef !5062
  %i.i = icmp ult i128 %.val17.us31, %.val.us30, !dbg !82419
  br i1 %i.i, label %.split29, label %.lr.ph91.preheader, !dbg !82418

.lr.ph91.preheader:                               ; preds = %.lr.ph.us
  %i.j = add nsw i64 %1, -2
  br label %.lr.ph91, !dbg !82418

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val17.pre = load i128, ptr %0, align 16, !dbg !82418, !alias.scope !5805, !noalias !5804
  br label %.lr.ph, !dbg !82418

.split29:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph33, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph33 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.g, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82422
  ret i1 %.us-phi, !dbg !82422

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val17 = phi i128 [ %.val, %bb.b ], [ %.val17.pre, %.lr.ph.preheader ], !dbg !82418
  %.sroa.02.121 = phi i64 [ %i.p, %bb.b ], [ 1, %.lr.ph.preheader ] ; 12 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121, !dbg !82416
  %i.l = add nsw i64 %.sroa.02.121, -1, !dbg !82423
  %i.m = icmp samesign ult i64 %i.l, %1, !dbg !82424
  tail call void @llvm.assume(i1 %i.m), !dbg !82425
  %.val = load i128, ptr %i.k, align 16, !dbg !82418, !alias.scope !5804, !noalias !5805, !noundef !5062 ; 2 uses
  %i.n = icmp ult i128 %.val17, %.val, !dbg !82419
  br i1 %i.n, label %._crit_edge, label %bb.b, !dbg !82418

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = icmp eq i64 %.sroa.02.121, %1, !dbg !82421
  br i1 %i.o, label %.split29, label %bb.c, !dbg !82421

bb.b:                                             ; preds = %.lr.ph
  %i.p = add nuw nsw i64 %.sroa.02.121, 1, !dbg !82415 ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1, !dbg !82420
  br i1 %exitcond.not, label %.split29, label %.lr.ph, !dbg !82420

bb.c:                                             ; preds = %._crit_edge
  %i.q = add nsw i64 %.sroa.02.121, -1, !dbg !82426 ; 4 uses
  %i.r = icmp ult i64 %i.q, %1, !dbg !82427
  br i1 %i.r, label %bb.e, label %bb.d, !dbg !82427

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa37 = phi i64 [ %i.q, %bb.c ], [ %i.ac, %bb.h ], [ %i.ao, %bb.m ], [ %i.ba, %bb.r ], [ %i.bm, %bb.w ], !dbg !82426
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa37, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82427
  unreachable, !dbg !82427

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q, !dbg !82428 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121, !dbg !82429 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !dbg !82431
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false), !dbg !82432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82434
  %i.u = icmp samesign ugt i64 %.sroa.02.121, 1, !dbg !82435
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82435

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa40 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82436
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa40, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82437
  unreachable, !dbg !82437

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.121, %1, !dbg !82420 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82420

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val17.1.pre = load i128, ptr %i.s, align 16, !dbg !82418, !alias.scope !5805, !noalias !5804
  br label %.lr.ph.1, !dbg !82418

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val17.1 = phi i128 [ %.val.1, %bb.g ], [ %.val17.1.pre, %.lr.ph.preheader.1 ], !dbg !82418
  %.sroa.02.121.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.121, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.1, !dbg !82416
  %i.x = add nsw i64 %.sroa.02.121.1, -1, !dbg !82423
  %i.y = icmp ult i64 %i.x, %1, !dbg !82424
  tail call void @llvm.assume(i1 %i.y), !dbg !82425
  %.val.1 = load i128, ptr %i.w, align 16, !dbg !82418, !alias.scope !5804, !noalias !5805, !noundef !5062 ; 2 uses
  %i.z = icmp ult i128 %.val17.1, %.val.1, !dbg !82419
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82418

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add nuw i64 %.sroa.02.121.1, 1, !dbg !82415 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82420
  br i1 %exitcond.1.not, label %.split29, label %.lr.ph.1, !dbg !82420

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.121, %.split.1 ], [ %.sroa.02.121.1, %.lr.ph.1 ], !dbg !82436 ; 10 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82421
  br i1 %i.ab, label %.split29, label %bb.h, !dbg !82421

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82426 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82427
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82427

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82437

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac, !dbg !82428 ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.1, !dbg !82429 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i64 16, i1 false), !dbg !82431
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull align 16 dereferenceable(16) %i.af, i64 16, i1 false), !dbg !82432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.af, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82434
  %i.ag = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82435
  br i1 %i.ag, label %bb.k, label %.split.2, !dbg !82435

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82438
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82439
  br label %.split.2, !dbg !82439

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ah = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82420 ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82420

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val17.2.pre = load i128, ptr %i.ae, align 16, !dbg !82418, !alias.scope !5805, !noalias !5804
  br label %.lr.ph.2, !dbg !82418

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val17.2 = phi i128 [ %.val.2, %bb.l ], [ %.val17.2.pre, %.lr.ph.preheader.2 ], !dbg !82418
  %.sroa.02.121.2 = phi i64 [ %i.am, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.2, !dbg !82416
  %i.aj = add nsw i64 %.sroa.02.121.2, -1, !dbg !82423
  %i.ak = icmp ult i64 %i.aj, %1, !dbg !82424
  tail call void @llvm.assume(i1 %i.ak), !dbg !82425
  %.val.2 = load i128, ptr %i.ai, align 16, !dbg !82418, !alias.scope !5804, !noalias !5805, !noundef !5062 ; 2 uses
  %i.al = icmp ult i128 %.val17.2, %.val.2, !dbg !82419
  br i1 %i.al, label %._crit_edge.2, label %bb.l, !dbg !82418

bb.l:                                             ; preds = %.lr.ph.2
  %i.am = add nuw i64 %.sroa.02.121.2, 1, !dbg !82415 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.am, %1, !dbg !82420
  br i1 %exitcond.2.not, label %.split29, label %.lr.ph.2, !dbg !82420

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.121.2, %.lr.ph.2 ], !dbg !82436 ; 10 uses
  %i.an = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82421
  br i1 %i.an, label %.split29, label %bb.m, !dbg !82421

bb.m:                                             ; preds = %._crit_edge.2
  %i.ao = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82426 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !82427
  br i1 %i.ap, label %bb.n, label %bb.d, !dbg !82427

bb.n:                                             ; preds = %bb.m
  br i1 %i.ah, label %bb.o, label %bb.f, !dbg !82437

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ao, !dbg !82428 ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.2, !dbg !82429 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i64 16, i1 false), !dbg !82431
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i64 16, i1 false), !dbg !82432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82434
  %i.as = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82435
  br i1 %i.as, label %bb.p, label %.split.3, !dbg !82435

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ao, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82438
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82439
  br label %.split.3, !dbg !82439

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.at = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82420 ; 2 uses
  br i1 %i.at, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82420

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val17.3.pre = load i128, ptr %i.aq, align 16, !dbg !82418, !alias.scope !5805, !noalias !5804
  br label %.lr.ph.3, !dbg !82418

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val17.3 = phi i128 [ %.val.3, %bb.q ], [ %.val17.3.pre, %.lr.ph.preheader.3 ], !dbg !82418
  %.sroa.02.121.3 = phi i64 [ %i.ay, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.3, !dbg !82416
  %i.av = add nsw i64 %.sroa.02.121.3, -1, !dbg !82423
  %i.aw = icmp ult i64 %i.av, %1, !dbg !82424
  tail call void @llvm.assume(i1 %i.aw), !dbg !82425
  %.val.3 = load i128, ptr %i.au, align 16, !dbg !82418, !alias.scope !5804, !noalias !5805, !noundef !5062 ; 2 uses
  %i.ax = icmp ult i128 %.val17.3, %.val.3, !dbg !82419
  br i1 %i.ax, label %._crit_edge.3, label %bb.q, !dbg !82418

bb.q:                                             ; preds = %.lr.ph.3
  %i.ay = add nuw i64 %.sroa.02.121.3, 1, !dbg !82415 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ay, %1, !dbg !82420
  br i1 %exitcond.3.not, label %.split29, label %.lr.ph.3, !dbg !82420

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.121.3, %.lr.ph.3 ], !dbg !82436 ; 10 uses
  %i.az = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82421
  br i1 %i.az, label %.split29, label %bb.r, !dbg !82421

bb.r:                                             ; preds = %._crit_edge.3
  %i.ba = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82426 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, %1, !dbg !82427
  br i1 %i.bb, label %bb.s, label %bb.d, !dbg !82427

bb.s:                                             ; preds = %bb.r
  br i1 %i.at, label %bb.t, label %bb.f, !dbg !82437

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ba, !dbg !82428 ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.3, !dbg !82429 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.bc, i64 16, i1 false), !dbg !82431
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bc, ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i64 16, i1 false), !dbg !82432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82434
  %i.be = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82435
  br i1 %i.be, label %bb.u, label %.split.4, !dbg !82435

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.ba, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82438
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82439
  br label %.split.4, !dbg !82439

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bf = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82420 ; 2 uses
  br i1 %i.bf, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82420

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val17.4.pre = load i128, ptr %i.bc, align 16, !dbg !82418, !alias.scope !5805, !noalias !5804
  br label %.lr.ph.4, !dbg !82418

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val17.4 = phi i128 [ %.val.4, %bb.v ], [ %.val17.4.pre, %.lr.ph.preheader.4 ], !dbg !82418
  %.sroa.02.121.4 = phi i64 [ %i.bk, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.4, !dbg !82416
  %i.bh = add nsw i64 %.sroa.02.121.4, -1, !dbg !82423
  %i.bi = icmp ult i64 %i.bh, %1, !dbg !82424
  tail call void @llvm.assume(i1 %i.bi), !dbg !82425
  %.val.4 = load i128, ptr %i.bg, align 16, !dbg !82418, !alias.scope !5804, !noalias !5805, !noundef !5062 ; 2 uses
  %i.bj = icmp ult i128 %.val17.4, %.val.4, !dbg !82419
  br i1 %i.bj, label %._crit_edge.4, label %bb.v, !dbg !82418

bb.v:                                             ; preds = %.lr.ph.4
  %i.bk = add nuw i64 %.sroa.02.121.4, 1, !dbg !82415 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bk, %1, !dbg !82420
  br i1 %exitcond.4.not, label %.split29, label %.lr.ph.4, !dbg !82420

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.121.4, %.lr.ph.4 ], !dbg !82436 ; 7 uses
  %i.bl = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82421
  br i1 %i.bl, label %.split29, label %bb.w, !dbg !82421

bb.w:                                             ; preds = %._crit_edge.4
  %i.bm = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82426 ; 4 uses
  %i.bn = icmp ult i64 %i.bm, %1, !dbg !82427
  br i1 %i.bn, label %bb.x, label %bb.d, !dbg !82427

bb.x:                                             ; preds = %bb.w
  br i1 %i.bf, label %bb.y, label %bb.f, !dbg !82437

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bm, !dbg !82428 ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.4, !dbg !82429 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.bo, i64 16, i1 false), !dbg !82431
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bo, ptr noundef nonnull align 16 dereferenceable(16) %i.bp, i64 16, i1 false), !dbg !82432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bp, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82434
  %i.bq = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82435
  br i1 %i.bq, label %bb.z, label %.split29, !dbg !82435

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bm, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82438
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82439
  br label %.split29, !dbg !82439

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.121, i64 noundef %i.q, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82438
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.121, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82439
  br label %.split.1, !dbg !82439
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 16 captures(none) %0, i64 noundef range(i64 21, 576460752303423488) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82440 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 20 uses
  %i.b = icmp samesign ult i64 %1, 50
  br i1 %i.b, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.lr.ph33
  %.sroa.02.121.us3290 = phi i64 [ %i.c, %.lr.ph33 ], [ 1, %.lr.ph91.preheader ] ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.02.121.us3290, 1, !dbg !82465 ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c, !dbg !82466
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.us3290, !dbg !82467
  %.val.us = load i128, ptr %i.d, align 16, !dbg !82468, !alias.scope !5805, !noalias !5804, !noundef !5062
  %.val17.us = load i128, ptr %i.e, align 16, !dbg !82468, !alias.scope !5804, !noalias !5805, !noundef !5062
  %i.f = icmp ult i128 %.val.us, %.val17.us, !dbg !82469
  br i1 %i.f, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph33, !dbg !82468

.lr.ph33:                                         ; preds = %.lr.ph91
  %exitcond42.not = icmp eq i64 %.sroa.02.121.us3290, %i.j, !dbg !82470
  br i1 %exitcond42.not, label %.split29, label %.lr.ph91, !dbg !82470

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph91
  %i.g = icmp eq i64 %i.c, %1, !dbg !82471
  br label %.split29, !dbg !82468

.lr.ph.us:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !82466
  %.val.us30 = load i128, ptr %i.h, align 16, !dbg !82468, !alias.scope !5805, !noalias !5804, !noundef !5062
  %.val17.us31 = load i128, ptr %0, align 16, !dbg !82468, !alias.scope !5804, !noalias !5805, !noundef !5062
  %i.i = icmp ult i128 %.val.us30, %.val17.us31, !dbg !82469
  br i1 %i.i, label %.split29, label %.lr.ph91.preheader, !dbg !82468

.lr.ph91.preheader:                               ; preds = %.lr.ph.us
  %i.j = add nsw i64 %1, -2
  br label %.lr.ph91, !dbg !82468

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val17.pre = load i128, ptr %0, align 16, !dbg !82468, !alias.scope !5804, !noalias !5805
  br label %.lr.ph, !dbg !82468

.split29:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph33, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph33 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.g, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82472
  ret i1 %.us-phi, !dbg !82472

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val17 = phi i128 [ %.val, %bb.b ], [ %.val17.pre, %.lr.ph.preheader ], !dbg !82468
  %.sroa.02.121 = phi i64 [ %i.p, %bb.b ], [ 1, %.lr.ph.preheader ] ; 12 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121, !dbg !82466
  %i.l = add nsw i64 %.sroa.02.121, -1, !dbg !82473
  %i.m = icmp samesign ult i64 %i.l, %1, !dbg !82474
  tail call void @llvm.assume(i1 %i.m), !dbg !82475
  %.val = load i128, ptr %i.k, align 16, !dbg !82468, !alias.scope !5805, !noalias !5804, !noundef !5062 ; 2 uses
  %i.n = icmp ult i128 %.val, %.val17, !dbg !82469
  br i1 %i.n, label %._crit_edge, label %bb.b, !dbg !82468

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = icmp eq i64 %.sroa.02.121, %1, !dbg !82471
  br i1 %i.o, label %.split29, label %bb.c, !dbg !82471

bb.b:                                             ; preds = %.lr.ph
  %i.p = add nuw nsw i64 %.sroa.02.121, 1, !dbg !82465 ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1, !dbg !82470
  br i1 %exitcond.not, label %.split29, label %.lr.ph, !dbg !82470

bb.c:                                             ; preds = %._crit_edge
  %i.q = add nsw i64 %.sroa.02.121, -1, !dbg !82476 ; 4 uses
  %i.r = icmp ult i64 %i.q, %1, !dbg !82477
  br i1 %i.r, label %bb.e, label %bb.d, !dbg !82477

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa37 = phi i64 [ %i.q, %bb.c ], [ %i.ac, %bb.h ], [ %i.ao, %bb.m ], [ %i.ba, %bb.r ], [ %i.bm, %bb.w ], !dbg !82476
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa37, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82477
  unreachable, !dbg !82477

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q, !dbg !82478 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121, !dbg !82479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !dbg !82481
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false), !dbg !82482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82484
  %i.u = icmp samesign ugt i64 %.sroa.02.121, 1, !dbg !82485
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82485

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa40 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82486
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa40, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82487
  unreachable, !dbg !82487

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.121, %1, !dbg !82470 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82470

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val17.1.pre = load i128, ptr %i.s, align 16, !dbg !82468, !alias.scope !5804, !noalias !5805
  br label %.lr.ph.1, !dbg !82468

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val17.1 = phi i128 [ %.val.1, %bb.g ], [ %.val17.1.pre, %.lr.ph.preheader.1 ], !dbg !82468
  %.sroa.02.121.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.121, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.1, !dbg !82466
  %i.x = add nsw i64 %.sroa.02.121.1, -1, !dbg !82473
  %i.y = icmp ult i64 %i.x, %1, !dbg !82474
  tail call void @llvm.assume(i1 %i.y), !dbg !82475
  %.val.1 = load i128, ptr %i.w, align 16, !dbg !82468, !alias.scope !5805, !noalias !5804, !noundef !5062 ; 2 uses
  %i.z = icmp ult i128 %.val.1, %.val17.1, !dbg !82469
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82468

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add nuw i64 %.sroa.02.121.1, 1, !dbg !82465 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82470
  br i1 %exitcond.1.not, label %.split29, label %.lr.ph.1, !dbg !82470

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.121, %.split.1 ], [ %.sroa.02.121.1, %.lr.ph.1 ], !dbg !82486 ; 10 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82471
  br i1 %i.ab, label %.split29, label %bb.h, !dbg !82471

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82476 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82477
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82477

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82487

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac, !dbg !82478 ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.1, !dbg !82479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i64 16, i1 false), !dbg !82481
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull align 16 dereferenceable(16) %i.af, i64 16, i1 false), !dbg !82482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.af, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82484
  %i.ag = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82485
  br i1 %i.ag, label %bb.k, label %.split.2, !dbg !82485

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82488
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82489
  br label %.split.2, !dbg !82489

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ah = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82470 ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82470

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val17.2.pre = load i128, ptr %i.ae, align 16, !dbg !82468, !alias.scope !5804, !noalias !5805
  br label %.lr.ph.2, !dbg !82468

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val17.2 = phi i128 [ %.val.2, %bb.l ], [ %.val17.2.pre, %.lr.ph.preheader.2 ], !dbg !82468
  %.sroa.02.121.2 = phi i64 [ %i.am, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.2, !dbg !82466
  %i.aj = add nsw i64 %.sroa.02.121.2, -1, !dbg !82473
  %i.ak = icmp ult i64 %i.aj, %1, !dbg !82474
  tail call void @llvm.assume(i1 %i.ak), !dbg !82475
  %.val.2 = load i128, ptr %i.ai, align 16, !dbg !82468, !alias.scope !5805, !noalias !5804, !noundef !5062 ; 2 uses
  %i.al = icmp ult i128 %.val.2, %.val17.2, !dbg !82469
  br i1 %i.al, label %._crit_edge.2, label %bb.l, !dbg !82468

bb.l:                                             ; preds = %.lr.ph.2
  %i.am = add nuw i64 %.sroa.02.121.2, 1, !dbg !82465 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.am, %1, !dbg !82470
  br i1 %exitcond.2.not, label %.split29, label %.lr.ph.2, !dbg !82470

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.121.2, %.lr.ph.2 ], !dbg !82486 ; 10 uses
  %i.an = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82471
  br i1 %i.an, label %.split29, label %bb.m, !dbg !82471

bb.m:                                             ; preds = %._crit_edge.2
  %i.ao = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82476 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, %1, !dbg !82477
  br i1 %i.ap, label %bb.n, label %bb.d, !dbg !82477

bb.n:                                             ; preds = %bb.m
  br i1 %i.ah, label %bb.o, label %bb.f, !dbg !82487

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ao, !dbg !82478 ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.2, !dbg !82479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i64 16, i1 false), !dbg !82481
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i64 16, i1 false), !dbg !82482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82484
  %i.as = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82485
  br i1 %i.as, label %bb.p, label %.split.3, !dbg !82485

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ao, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82488
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82489
  br label %.split.3, !dbg !82489

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.at = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82470 ; 2 uses
  br i1 %i.at, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82470

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val17.3.pre = load i128, ptr %i.aq, align 16, !dbg !82468, !alias.scope !5804, !noalias !5805
  br label %.lr.ph.3, !dbg !82468

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val17.3 = phi i128 [ %.val.3, %bb.q ], [ %.val17.3.pre, %.lr.ph.preheader.3 ], !dbg !82468
  %.sroa.02.121.3 = phi i64 [ %i.ay, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.3, !dbg !82466
  %i.av = add nsw i64 %.sroa.02.121.3, -1, !dbg !82473
  %i.aw = icmp ult i64 %i.av, %1, !dbg !82474
  tail call void @llvm.assume(i1 %i.aw), !dbg !82475
  %.val.3 = load i128, ptr %i.au, align 16, !dbg !82468, !alias.scope !5805, !noalias !5804, !noundef !5062 ; 2 uses
  %i.ax = icmp ult i128 %.val.3, %.val17.3, !dbg !82469
  br i1 %i.ax, label %._crit_edge.3, label %bb.q, !dbg !82468

bb.q:                                             ; preds = %.lr.ph.3
  %i.ay = add nuw i64 %.sroa.02.121.3, 1, !dbg !82465 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ay, %1, !dbg !82470
  br i1 %exitcond.3.not, label %.split29, label %.lr.ph.3, !dbg !82470

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.121.3, %.lr.ph.3 ], !dbg !82486 ; 10 uses
  %i.az = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82471
  br i1 %i.az, label %.split29, label %bb.r, !dbg !82471

bb.r:                                             ; preds = %._crit_edge.3
  %i.ba = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82476 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, %1, !dbg !82477
  br i1 %i.bb, label %bb.s, label %bb.d, !dbg !82477

bb.s:                                             ; preds = %bb.r
  br i1 %i.at, label %bb.t, label %bb.f, !dbg !82487

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ba, !dbg !82478 ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.3, !dbg !82479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.bc, i64 16, i1 false), !dbg !82481
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bc, ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i64 16, i1 false), !dbg !82482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82484
  %i.be = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82485
  br i1 %i.be, label %bb.u, label %.split.4, !dbg !82485

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.ba, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82488
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82489
  br label %.split.4, !dbg !82489

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bf = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82470 ; 2 uses
  br i1 %i.bf, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82470

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val17.4.pre = load i128, ptr %i.bc, align 16, !dbg !82468, !alias.scope !5804, !noalias !5805
  br label %.lr.ph.4, !dbg !82468

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val17.4 = phi i128 [ %.val.4, %bb.v ], [ %.val17.4.pre, %.lr.ph.preheader.4 ], !dbg !82468
  %.sroa.02.121.4 = phi i64 [ %i.bk, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.121.4, !dbg !82466
  %i.bh = add nsw i64 %.sroa.02.121.4, -1, !dbg !82473
  %i.bi = icmp ult i64 %i.bh, %1, !dbg !82474
  tail call void @llvm.assume(i1 %i.bi), !dbg !82475
  %.val.4 = load i128, ptr %i.bg, align 16, !dbg !82468, !alias.scope !5805, !noalias !5804, !noundef !5062 ; 2 uses
  %i.bj = icmp ult i128 %.val.4, %.val17.4, !dbg !82469
  br i1 %i.bj, label %._crit_edge.4, label %bb.v, !dbg !82468

bb.v:                                             ; preds = %.lr.ph.4
  %i.bk = add nuw i64 %.sroa.02.121.4, 1, !dbg !82465 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bk, %1, !dbg !82470
  br i1 %exitcond.4.not, label %.split29, label %.lr.ph.4, !dbg !82470

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.121.4, %.lr.ph.4 ], !dbg !82486 ; 7 uses
  %i.bl = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82471
  br i1 %i.bl, label %.split29, label %bb.w, !dbg !82471

bb.w:                                             ; preds = %._crit_edge.4
  %i.bm = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82476 ; 4 uses
  %i.bn = icmp ult i64 %i.bm, %1, !dbg !82477
  br i1 %i.bn, label %bb.x, label %bb.d, !dbg !82477

bb.x:                                             ; preds = %bb.w
  br i1 %i.bf, label %bb.y, label %bb.f, !dbg !82487

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bm, !dbg !82478 ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.1.lcssa.4, !dbg !82479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.bo, i64 16, i1 false), !dbg !82481
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bo, ptr noundef nonnull align 16 dereferenceable(16) %i.bp, i64 16, i1 false), !dbg !82482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bp, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !82483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82484
  %i.bq = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82485
  br i1 %i.bq, label %bb.z, label %.split29, !dbg !82485

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bm, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82488
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82489
  br label %.split29, !dbg !82489

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.121, i64 noundef %i.q, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82488
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightoNCINvYSoINtB4_16ParallelSliceMutoE20par_sort_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %0, i64 noundef %.sroa.02.121, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82489
  br label %.split.1, !dbg !82489
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull align 2 captures(none) %0, i64 noundef range(i64 21, 4611686018427387904) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82490 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82514 ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.b, !dbg !82515
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82516
  %.val.us = load i16, ptr %i.c, align 2, !dbg !82517, !alias.scope !5806, !noalias !5807, !noundef !5062
  %.val19.us = load i16, ptr %i.d, align 2, !dbg !82517, !alias.scope !5807, !noalias !5806, !noundef !5062
  %i.e = icmp slt i16 %.val19.us, %.val.us, !dbg !82518
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82517

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82519
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82519

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82520
  br label %.split31, !dbg !82517

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !82515
  %.val.us32 = load i16, ptr %i.g, align 2, !dbg !82517, !alias.scope !5806, !noalias !5807, !noundef !5062
  %.val19.us33 = load i16, ptr %0, align 2, !dbg !82517, !alias.scope !5807, !noalias !5806, !noundef !5062
  %i.h = icmp slt i16 %.val19.us33, %.val.us32, !dbg !82518
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82517

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82517

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i16, ptr %0, align 2, !dbg !82517, !alias.scope !5807, !noalias !5806
  br label %.lr.ph, !dbg !82517

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82521
  ret i1 %.us-phi, !dbg !82521

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i16 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82517
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82515
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82522
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82523
  tail call void @llvm.assume(i1 %i.l), !dbg !82524
  %.val = load i16, ptr %i.j, align 2, !dbg !82517, !alias.scope !5806, !noalias !5807, !noundef !5062 ; 2 uses
  %i.m = icmp slt i16 %.val19, %.val, !dbg !82518
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82517

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82520
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82520

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82514 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82519
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82519

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82525 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82526
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82526

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82525
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82526
  unreachable, !dbg !82526

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p, !dbg !82527 ; 3 uses
  %i.s = load <2 x i16>, ptr %i.r, align 2, !dbg !82528
  %i.t = shufflevector <2 x i16> %i.s, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82529
  store <2 x i16> %i.t, ptr %i.r, align 2, !dbg !82529
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82530
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82530

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82531
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82532
  unreachable, !dbg !82532

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82519 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82519

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i16, ptr %i.r, align 2, !dbg !82517, !alias.scope !5807, !noalias !5806
  br label %.lr.ph.1, !dbg !82517

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i16 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82517
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82515
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82522
  %i.y = icmp ult i64 %i.x, %1, !dbg !82523
  tail call void @llvm.assume(i1 %i.y), !dbg !82524
  %.val.1 = load i16, ptr %i.w, align 2, !dbg !82517, !alias.scope !5806, !noalias !5807, !noundef !5062 ; 2 uses
  %i.z = icmp slt i16 %.val19.1, %.val.1, !dbg !82518
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82517

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82514 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82519
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82519

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82531 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82520
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82520

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82525 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82526
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82526

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82532

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac, !dbg !82527 ; 3 uses
  %i.af = load <2 x i16>, ptr %i.ae, align 2, !dbg !82528
  %i.ag = shufflevector <2 x i16> %i.af, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82529
  store <2 x i16> %i.ag, ptr %i.ae, align 2, !dbg !82529
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82530
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82530

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82533
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82534
  br label %.split.2, !dbg !82534

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82519 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82519

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i16, ptr %i.ae, align 2, !dbg !82517, !alias.scope !5807, !noalias !5806
  br label %.lr.ph.2, !dbg !82517

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i16 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82517
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82515
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82522
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82523
  tail call void @llvm.assume(i1 %i.al), !dbg !82524
  %.val.2 = load i16, ptr %i.aj, align 2, !dbg !82517, !alias.scope !5806, !noalias !5807, !noundef !5062 ; 2 uses
  %i.am = icmp slt i16 %.val19.2, %.val.2, !dbg !82518
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82517

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82514 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82519
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82519

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82531 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82520
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82520

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82525 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82526
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82526

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82532

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !82527 ; 3 uses
  %i.as = load <2 x i16>, ptr %i.ar, align 2, !dbg !82528
  %i.at = shufflevector <2 x i16> %i.as, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82529
  store <2 x i16> %i.at, ptr %i.ar, align 2, !dbg !82529
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82530
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82530

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82533
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82534
  br label %.split.3, !dbg !82534

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82519 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82519

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i16, ptr %i.ar, align 2, !dbg !82517, !alias.scope !5807, !noalias !5806
  br label %.lr.ph.3, !dbg !82517

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i16 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82517
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82515
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82522
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82523
  tail call void @llvm.assume(i1 %i.ay), !dbg !82524
  %.val.3 = load i16, ptr %i.aw, align 2, !dbg !82517, !alias.scope !5806, !noalias !5807, !noundef !5062 ; 2 uses
  %i.az = icmp slt i16 %.val19.3, %.val.3, !dbg !82518
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82517

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82514 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82519
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82519

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82531 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82520
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82520

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82525 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82526
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82526

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82532

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bc, !dbg !82527 ; 3 uses
  %i.bf = load <2 x i16>, ptr %i.be, align 2, !dbg !82528
  %i.bg = shufflevector <2 x i16> %i.bf, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82529
  store <2 x i16> %i.bg, ptr %i.be, align 2, !dbg !82529
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82530
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82530

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82533
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82534
  br label %.split.4, !dbg !82534

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82519 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82519

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i16, ptr %i.be, align 2, !dbg !82517, !alias.scope !5807, !noalias !5806
  br label %.lr.ph.4, !dbg !82517

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i16 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !82517
  %.sroa.02.123.4 = phi i64 [ %i.bn, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !82515
  %i.bk = add nsw i64 %.sroa.02.123.4, -1, !dbg !82522
  %i.bl = icmp ult i64 %i.bk, %1, !dbg !82523
  tail call void @llvm.assume(i1 %i.bl), !dbg !82524
  %.val.4 = load i16, ptr %i.bj, align 2, !dbg !82517, !alias.scope !5806, !noalias !5807, !noundef !5062 ; 2 uses
  %i.bm = icmp slt i16 %.val19.4, %.val.4, !dbg !82518
  br i1 %i.bm, label %._crit_edge.4, label %bb.v, !dbg !82517

bb.v:                                             ; preds = %.lr.ph.4
  %i.bn = add i64 %.sroa.02.123.4, 1, !dbg !82514 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bn, %1, !dbg !82519
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !82519

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !82531 ; 6 uses
  %i.bo = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82520
  br i1 %i.bo, label %.split31, label %bb.w, !dbg !82520

bb.w:                                             ; preds = %._crit_edge.4
  %i.bp = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82525 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %1, !dbg !82526
  br i1 %i.bq, label %bb.x, label %bb.d, !dbg !82526

bb.x:                                             ; preds = %bb.w
  br i1 %i.bi, label %bb.y, label %bb.f, !dbg !82532

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bp, !dbg !82527 ; 2 uses
  %i.bs = load <2 x i16>, ptr %i.br, align 2, !dbg !82528
  %i.bt = shufflevector <2 x i16> %i.bs, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82529
  store <2 x i16> %i.bt, ptr %i.br, align 2, !dbg !82529
  %i.bu = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82530
  br i1 %i.bu, label %bb.z, label %.split31, !dbg !82530

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bp, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82533
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82534
  br label %.split31, !dbg !82534

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.123, i64 noundef %i.p, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82533
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82534
  br label %.split.1, !dbg !82534
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 2 captures(none) %0, i64 noundef range(i64 21, 4611686018427387904) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82535 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82559 ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.b, !dbg !82560
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82561
  %.val.us = load i16, ptr %i.c, align 2, !dbg !82562, !alias.scope !5807, !noalias !5806, !noundef !5062
  %.val19.us = load i16, ptr %i.d, align 2, !dbg !82562, !alias.scope !5806, !noalias !5807, !noundef !5062
  %i.e = icmp slt i16 %.val.us, %.val19.us, !dbg !82563
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82562

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82564
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82564

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82565
  br label %.split31, !dbg !82562

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !82560
  %.val.us32 = load i16, ptr %i.g, align 2, !dbg !82562, !alias.scope !5807, !noalias !5806, !noundef !5062
  %.val19.us33 = load i16, ptr %0, align 2, !dbg !82562, !alias.scope !5806, !noalias !5807, !noundef !5062
  %i.h = icmp slt i16 %.val.us32, %.val19.us33, !dbg !82563
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82562

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82562

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i16, ptr %0, align 2, !dbg !82562, !alias.scope !5806, !noalias !5807
  br label %.lr.ph, !dbg !82562

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82566
  ret i1 %.us-phi, !dbg !82566

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i16 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82562
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82560
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82567
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82568
  tail call void @llvm.assume(i1 %i.l), !dbg !82569
  %.val = load i16, ptr %i.j, align 2, !dbg !82562, !alias.scope !5807, !noalias !5806, !noundef !5062 ; 2 uses
  %i.m = icmp slt i16 %.val, %.val19, !dbg !82563
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82562

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82565
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82565

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82559 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82564
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82564

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82570 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82571
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82571

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82570
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82571
  unreachable, !dbg !82571

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p, !dbg !82572 ; 3 uses
  %i.s = load <2 x i16>, ptr %i.r, align 2, !dbg !82573
  %i.t = shufflevector <2 x i16> %i.s, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82574
  store <2 x i16> %i.t, ptr %i.r, align 2, !dbg !82574
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82575
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82575

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82576
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82577
  unreachable, !dbg !82577

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82564 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82564

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i16, ptr %i.r, align 2, !dbg !82562, !alias.scope !5806, !noalias !5807
  br label %.lr.ph.1, !dbg !82562

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i16 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82562
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82560
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82567
  %i.y = icmp ult i64 %i.x, %1, !dbg !82568
  tail call void @llvm.assume(i1 %i.y), !dbg !82569
  %.val.1 = load i16, ptr %i.w, align 2, !dbg !82562, !alias.scope !5807, !noalias !5806, !noundef !5062 ; 2 uses
  %i.z = icmp slt i16 %.val.1, %.val19.1, !dbg !82563
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82562

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82559 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82564
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82564

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82576 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82565
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82565

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82570 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82571
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82571

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82577

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac, !dbg !82572 ; 3 uses
  %i.af = load <2 x i16>, ptr %i.ae, align 2, !dbg !82573
  %i.ag = shufflevector <2 x i16> %i.af, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82574
  store <2 x i16> %i.ag, ptr %i.ae, align 2, !dbg !82574
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82575
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82575

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82578
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82579
  br label %.split.2, !dbg !82579

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82564 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82564

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i16, ptr %i.ae, align 2, !dbg !82562, !alias.scope !5806, !noalias !5807
  br label %.lr.ph.2, !dbg !82562

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i16 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82562
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82560
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82567
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82568
  tail call void @llvm.assume(i1 %i.al), !dbg !82569
  %.val.2 = load i16, ptr %i.aj, align 2, !dbg !82562, !alias.scope !5807, !noalias !5806, !noundef !5062 ; 2 uses
  %i.am = icmp slt i16 %.val.2, %.val19.2, !dbg !82563
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82562

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82559 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82564
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82564

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82576 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82565
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82565

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82570 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82571
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82571

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82577

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !82572 ; 3 uses
  %i.as = load <2 x i16>, ptr %i.ar, align 2, !dbg !82573
  %i.at = shufflevector <2 x i16> %i.as, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82574
  store <2 x i16> %i.at, ptr %i.ar, align 2, !dbg !82574
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82575
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82575

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82578
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82579
  br label %.split.3, !dbg !82579

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82564 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82564

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i16, ptr %i.ar, align 2, !dbg !82562, !alias.scope !5806, !noalias !5807
  br label %.lr.ph.3, !dbg !82562

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i16 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82562
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82560
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82567
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82568
  tail call void @llvm.assume(i1 %i.ay), !dbg !82569
  %.val.3 = load i16, ptr %i.aw, align 2, !dbg !82562, !alias.scope !5807, !noalias !5806, !noundef !5062 ; 2 uses
  %i.az = icmp slt i16 %.val.3, %.val19.3, !dbg !82563
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82562

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82559 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82564
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82564

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82576 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82565
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82565

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82570 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82571
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82571

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82577

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bc, !dbg !82572 ; 3 uses
  %i.bf = load <2 x i16>, ptr %i.be, align 2, !dbg !82573
  %i.bg = shufflevector <2 x i16> %i.bf, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82574
  store <2 x i16> %i.bg, ptr %i.be, align 2, !dbg !82574
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82575
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82575

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82578
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82579
  br label %.split.4, !dbg !82579

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82564 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82564

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i16, ptr %i.be, align 2, !dbg !82562, !alias.scope !5806, !noalias !5807
  br label %.lr.ph.4, !dbg !82562

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i16 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !82562
  %.sroa.02.123.4 = phi i64 [ %i.bn, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !82560
  %i.bk = add nsw i64 %.sroa.02.123.4, -1, !dbg !82567
  %i.bl = icmp ult i64 %i.bk, %1, !dbg !82568
  tail call void @llvm.assume(i1 %i.bl), !dbg !82569
  %.val.4 = load i16, ptr %i.bj, align 2, !dbg !82562, !alias.scope !5807, !noalias !5806, !noundef !5062 ; 2 uses
  %i.bm = icmp slt i16 %.val.4, %.val19.4, !dbg !82563
  br i1 %i.bm, label %._crit_edge.4, label %bb.v, !dbg !82562

bb.v:                                             ; preds = %.lr.ph.4
  %i.bn = add i64 %.sroa.02.123.4, 1, !dbg !82559 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bn, %1, !dbg !82564
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !82564

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !82576 ; 6 uses
  %i.bo = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82565
  br i1 %i.bo, label %.split31, label %bb.w, !dbg !82565

bb.w:                                             ; preds = %._crit_edge.4
  %i.bp = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82570 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %1, !dbg !82571
  br i1 %i.bq, label %bb.x, label %bb.d, !dbg !82571

bb.x:                                             ; preds = %bb.w
  br i1 %i.bi, label %bb.y, label %bb.f, !dbg !82577

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bp, !dbg !82572 ; 2 uses
  %i.bs = load <2 x i16>, ptr %i.br, align 2, !dbg !82573
  %i.bt = shufflevector <2 x i16> %i.bs, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82574
  store <2 x i16> %i.bt, ptr %i.br, align 2, !dbg !82574
  %i.bu = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82575
  br i1 %i.bu, label %bb.z, label %.split31, !dbg !82575

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bp, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82578
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82579
  br label %.split31, !dbg !82579

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.123, i64 noundef %i.p, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82578
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightsNCINvYSsINtB4_16ParallelSliceMutsE20par_sort_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82579
  br label %.split.1, !dbg !82579
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sorttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull align 2 captures(none) %0, i64 noundef range(i64 21, 4611686018427387904) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82580 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82604 ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.b, !dbg !82605
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82606
  %.val.us = load i16, ptr %i.c, align 2, !dbg !82607, !alias.scope !5808, !noalias !5809, !noundef !5062
  %.val19.us = load i16, ptr %i.d, align 2, !dbg !82607, !alias.scope !5809, !noalias !5808, !noundef !5062
  %i.e = icmp ult i16 %.val19.us, %.val.us, !dbg !82608
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82607

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82609
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82609

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82610
  br label %.split31, !dbg !82607

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !82605
  %.val.us32 = load i16, ptr %i.g, align 2, !dbg !82607, !alias.scope !5808, !noalias !5809, !noundef !5062
  %.val19.us33 = load i16, ptr %0, align 2, !dbg !82607, !alias.scope !5809, !noalias !5808, !noundef !5062
  %i.h = icmp ult i16 %.val19.us33, %.val.us32, !dbg !82608
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82607

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82607

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i16, ptr %0, align 2, !dbg !82607, !alias.scope !5809, !noalias !5808
  br label %.lr.ph, !dbg !82607

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82611
  ret i1 %.us-phi, !dbg !82611

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i16 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82607
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82605
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82612
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82613
  tail call void @llvm.assume(i1 %i.l), !dbg !82614
  %.val = load i16, ptr %i.j, align 2, !dbg !82607, !alias.scope !5808, !noalias !5809, !noundef !5062 ; 2 uses
  %i.m = icmp ult i16 %.val19, %.val, !dbg !82608
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82607

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82610
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82610

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82604 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82609
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82609

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82615 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82616
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82616

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82615
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82616
  unreachable, !dbg !82616

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p, !dbg !82617 ; 3 uses
  %i.s = load <2 x i16>, ptr %i.r, align 2, !dbg !82618
  %i.t = shufflevector <2 x i16> %i.s, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82619
  store <2 x i16> %i.t, ptr %i.r, align 2, !dbg !82619
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82620
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82620

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82621
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82622
  unreachable, !dbg !82622

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82609 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82609

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i16, ptr %i.r, align 2, !dbg !82607, !alias.scope !5809, !noalias !5808
  br label %.lr.ph.1, !dbg !82607

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i16 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82607
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82605
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82612
  %i.y = icmp ult i64 %i.x, %1, !dbg !82613
  tail call void @llvm.assume(i1 %i.y), !dbg !82614
  %.val.1 = load i16, ptr %i.w, align 2, !dbg !82607, !alias.scope !5808, !noalias !5809, !noundef !5062 ; 2 uses
  %i.z = icmp ult i16 %.val19.1, %.val.1, !dbg !82608
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82607

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82604 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82609
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82609

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82621 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82610
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82610

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82615 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82616
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82616

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82622

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac, !dbg !82617 ; 3 uses
  %i.af = load <2 x i16>, ptr %i.ae, align 2, !dbg !82618
  %i.ag = shufflevector <2 x i16> %i.af, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82619
  store <2 x i16> %i.ag, ptr %i.ae, align 2, !dbg !82619
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82620
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82620

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82623
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82624
  br label %.split.2, !dbg !82624

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82609 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82609

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i16, ptr %i.ae, align 2, !dbg !82607, !alias.scope !5809, !noalias !5808
  br label %.lr.ph.2, !dbg !82607

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i16 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82607
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82605
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82612
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82613
  tail call void @llvm.assume(i1 %i.al), !dbg !82614
  %.val.2 = load i16, ptr %i.aj, align 2, !dbg !82607, !alias.scope !5808, !noalias !5809, !noundef !5062 ; 2 uses
  %i.am = icmp ult i16 %.val19.2, %.val.2, !dbg !82608
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82607

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82604 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82609
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82609

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82621 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82610
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82610

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82615 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82616
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82616

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82622

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !82617 ; 3 uses
  %i.as = load <2 x i16>, ptr %i.ar, align 2, !dbg !82618
  %i.at = shufflevector <2 x i16> %i.as, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82619
  store <2 x i16> %i.at, ptr %i.ar, align 2, !dbg !82619
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82620
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82620

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82623
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82624
  br label %.split.3, !dbg !82624

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82609 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82609

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i16, ptr %i.ar, align 2, !dbg !82607, !alias.scope !5809, !noalias !5808
  br label %.lr.ph.3, !dbg !82607

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i16 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82607
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82605
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82612
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82613
  tail call void @llvm.assume(i1 %i.ay), !dbg !82614
  %.val.3 = load i16, ptr %i.aw, align 2, !dbg !82607, !alias.scope !5808, !noalias !5809, !noundef !5062 ; 2 uses
  %i.az = icmp ult i16 %.val19.3, %.val.3, !dbg !82608
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82607

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82604 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82609
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82609

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82621 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82610
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82610

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82615 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82616
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82616

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82622

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bc, !dbg !82617 ; 3 uses
  %i.bf = load <2 x i16>, ptr %i.be, align 2, !dbg !82618
  %i.bg = shufflevector <2 x i16> %i.bf, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82619
  store <2 x i16> %i.bg, ptr %i.be, align 2, !dbg !82619
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82620
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82620

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82623
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82624
  br label %.split.4, !dbg !82624

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82609 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82609

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i16, ptr %i.be, align 2, !dbg !82607, !alias.scope !5809, !noalias !5808
  br label %.lr.ph.4, !dbg !82607

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i16 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !82607
  %.sroa.02.123.4 = phi i64 [ %i.bn, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !82605
  %i.bk = add nsw i64 %.sroa.02.123.4, -1, !dbg !82612
  %i.bl = icmp ult i64 %i.bk, %1, !dbg !82613
  tail call void @llvm.assume(i1 %i.bl), !dbg !82614
  %.val.4 = load i16, ptr %i.bj, align 2, !dbg !82607, !alias.scope !5808, !noalias !5809, !noundef !5062 ; 2 uses
  %i.bm = icmp ult i16 %.val19.4, %.val.4, !dbg !82608
  br i1 %i.bm, label %._crit_edge.4, label %bb.v, !dbg !82607

bb.v:                                             ; preds = %.lr.ph.4
  %i.bn = add i64 %.sroa.02.123.4, 1, !dbg !82604 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bn, %1, !dbg !82609
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !82609

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !82621 ; 6 uses
  %i.bo = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82610
  br i1 %i.bo, label %.split31, label %bb.w, !dbg !82610

bb.w:                                             ; preds = %._crit_edge.4
  %i.bp = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82615 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %1, !dbg !82616
  br i1 %i.bq, label %bb.x, label %bb.d, !dbg !82616

bb.x:                                             ; preds = %bb.w
  br i1 %i.bi, label %bb.y, label %bb.f, !dbg !82622

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bp, !dbg !82617 ; 2 uses
  %i.bs = load <2 x i16>, ptr %i.br, align 2, !dbg !82618
  %i.bt = shufflevector <2 x i16> %i.bs, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82619
  store <2 x i16> %i.bt, ptr %i.br, align 2, !dbg !82619
  %i.bu = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82620
  br i1 %i.bu, label %bb.z, label %.split31, !dbg !82620

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bp, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82623
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82624
  br label %.split31, !dbg !82624

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.123, i64 noundef %i.p, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82623
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82624
  br label %.split.1, !dbg !82624
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sorttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 2 captures(none) %0, i64 noundef range(i64 21, 4611686018427387904) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82625 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82649 ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.b, !dbg !82650
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82651
  %.val.us = load i16, ptr %i.c, align 2, !dbg !82652, !alias.scope !5809, !noalias !5808, !noundef !5062
  %.val19.us = load i16, ptr %i.d, align 2, !dbg !82652, !alias.scope !5808, !noalias !5809, !noundef !5062
  %i.e = icmp ult i16 %.val.us, %.val19.us, !dbg !82653
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82652

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82654
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82654

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82655
  br label %.split31, !dbg !82652

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !82650
  %.val.us32 = load i16, ptr %i.g, align 2, !dbg !82652, !alias.scope !5809, !noalias !5808, !noundef !5062
  %.val19.us33 = load i16, ptr %0, align 2, !dbg !82652, !alias.scope !5808, !noalias !5809, !noundef !5062
  %i.h = icmp ult i16 %.val.us32, %.val19.us33, !dbg !82653
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82652

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82652

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i16, ptr %0, align 2, !dbg !82652, !alias.scope !5808, !noalias !5809
  br label %.lr.ph, !dbg !82652

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82656
  ret i1 %.us-phi, !dbg !82656

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i16 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82652
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82650
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82657
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82658
  tail call void @llvm.assume(i1 %i.l), !dbg !82659
  %.val = load i16, ptr %i.j, align 2, !dbg !82652, !alias.scope !5809, !noalias !5808, !noundef !5062 ; 2 uses
  %i.m = icmp ult i16 %.val, %.val19, !dbg !82653
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82652

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82655
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82655

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82649 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82654
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82654

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82660 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82661
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82661

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82660
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82661
  unreachable, !dbg !82661

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p, !dbg !82662 ; 3 uses
  %i.s = load <2 x i16>, ptr %i.r, align 2, !dbg !82663
  %i.t = shufflevector <2 x i16> %i.s, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82664
  store <2 x i16> %i.t, ptr %i.r, align 2, !dbg !82664
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82665
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82665

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82666
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82667
  unreachable, !dbg !82667

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82654 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82654

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i16, ptr %i.r, align 2, !dbg !82652, !alias.scope !5808, !noalias !5809
  br label %.lr.ph.1, !dbg !82652

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i16 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82652
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82650
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82657
  %i.y = icmp ult i64 %i.x, %1, !dbg !82658
  tail call void @llvm.assume(i1 %i.y), !dbg !82659
  %.val.1 = load i16, ptr %i.w, align 2, !dbg !82652, !alias.scope !5809, !noalias !5808, !noundef !5062 ; 2 uses
  %i.z = icmp ult i16 %.val.1, %.val19.1, !dbg !82653
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82652

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82649 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82654
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82654

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82666 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82655
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82655

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82660 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82661
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82661

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82667

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac, !dbg !82662 ; 3 uses
  %i.af = load <2 x i16>, ptr %i.ae, align 2, !dbg !82663
  %i.ag = shufflevector <2 x i16> %i.af, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82664
  store <2 x i16> %i.ag, ptr %i.ae, align 2, !dbg !82664
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82665
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82665

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82668
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82669
  br label %.split.2, !dbg !82669

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82654 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82654

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i16, ptr %i.ae, align 2, !dbg !82652, !alias.scope !5808, !noalias !5809
  br label %.lr.ph.2, !dbg !82652

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i16 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82652
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82650
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82657
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82658
  tail call void @llvm.assume(i1 %i.al), !dbg !82659
  %.val.2 = load i16, ptr %i.aj, align 2, !dbg !82652, !alias.scope !5809, !noalias !5808, !noundef !5062 ; 2 uses
  %i.am = icmp ult i16 %.val.2, %.val19.2, !dbg !82653
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82652

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82649 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82654
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82654

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82666 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82655
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82655

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82660 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82661
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82661

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82667

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !82662 ; 3 uses
  %i.as = load <2 x i16>, ptr %i.ar, align 2, !dbg !82663
  %i.at = shufflevector <2 x i16> %i.as, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82664
  store <2 x i16> %i.at, ptr %i.ar, align 2, !dbg !82664
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82665
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82665

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82668
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82669
  br label %.split.3, !dbg !82669

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82654 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82654

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i16, ptr %i.ar, align 2, !dbg !82652, !alias.scope !5808, !noalias !5809
  br label %.lr.ph.3, !dbg !82652

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i16 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82652
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82650
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82657
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82658
  tail call void @llvm.assume(i1 %i.ay), !dbg !82659
  %.val.3 = load i16, ptr %i.aw, align 2, !dbg !82652, !alias.scope !5809, !noalias !5808, !noundef !5062 ; 2 uses
  %i.az = icmp ult i16 %.val.3, %.val19.3, !dbg !82653
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82652

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82649 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82654
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82654

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82666 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82655
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82655

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82660 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82661
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82661

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82667

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bc, !dbg !82662 ; 3 uses
  %i.bf = load <2 x i16>, ptr %i.be, align 2, !dbg !82663
  %i.bg = shufflevector <2 x i16> %i.bf, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82664
  store <2 x i16> %i.bg, ptr %i.be, align 2, !dbg !82664
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82665
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82665

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82668
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82669
  br label %.split.4, !dbg !82669

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82654 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82654

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i16, ptr %i.be, align 2, !dbg !82652, !alias.scope !5808, !noalias !5809
  br label %.lr.ph.4, !dbg !82652

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i16 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !82652
  %.sroa.02.123.4 = phi i64 [ %i.bn, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !82650
  %i.bk = add nsw i64 %.sroa.02.123.4, -1, !dbg !82657
  %i.bl = icmp ult i64 %i.bk, %1, !dbg !82658
  tail call void @llvm.assume(i1 %i.bl), !dbg !82659
  %.val.4 = load i16, ptr %i.bj, align 2, !dbg !82652, !alias.scope !5809, !noalias !5808, !noundef !5062 ; 2 uses
  %i.bm = icmp ult i16 %.val.4, %.val19.4, !dbg !82653
  br i1 %i.bm, label %._crit_edge.4, label %bb.v, !dbg !82652

bb.v:                                             ; preds = %.lr.ph.4
  %i.bn = add i64 %.sroa.02.123.4, 1, !dbg !82649 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bn, %1, !dbg !82654
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !82654

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !82666 ; 6 uses
  %i.bo = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82655
  br i1 %i.bo, label %.split31, label %bb.w, !dbg !82655

bb.w:                                             ; preds = %._crit_edge.4
  %i.bp = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82660 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %1, !dbg !82661
  br i1 %i.bq, label %bb.x, label %bb.d, !dbg !82661

bb.x:                                             ; preds = %bb.w
  br i1 %i.bi, label %bb.y, label %bb.f, !dbg !82667

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bp, !dbg !82662 ; 2 uses
  %i.bs = load <2 x i16>, ptr %i.br, align 2, !dbg !82663
  %i.bt = shufflevector <2 x i16> %i.bs, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !82664
  store <2 x i16> %i.bt, ptr %i.br, align 2, !dbg !82664
  %i.bu = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82665
  br i1 %i.bu, label %bb.z, label %.split31, !dbg !82665

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bp, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82668
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82669
  br label %.split31, !dbg !82669

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_lefttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.123, i64 noundef %i.p, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82668
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_righttNCINvYStINtB4_16ParallelSliceMuttE20par_sort_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82669
  br label %.split.1, !dbg !82669
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82670 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82694 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b, !dbg !82695
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82696
  %.val.us = load i64, ptr %i.c, align 8, !dbg !82697, !alias.scope !5810, !noalias !5811, !noundef !5062
  %.val19.us = load i64, ptr %i.d, align 8, !dbg !82697, !alias.scope !5811, !noalias !5810, !noundef !5062
  %i.e = icmp slt i64 %.val19.us, %.val.us, !dbg !82698
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82697

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82699
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82699

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82700
  br label %.split31, !dbg !82697

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !82695
  %.val.us32 = load i64, ptr %i.g, align 8, !dbg !82697, !alias.scope !5810, !noalias !5811, !noundef !5062
  %.val19.us33 = load i64, ptr %0, align 8, !dbg !82697, !alias.scope !5811, !noalias !5810, !noundef !5062
  %i.h = icmp slt i64 %.val19.us33, %.val.us32, !dbg !82698
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82697

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82697

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i64, ptr %0, align 8, !dbg !82697, !alias.scope !5811, !noalias !5810
  br label %.lr.ph, !dbg !82697

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82701
  ret i1 %.us-phi, !dbg !82701

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i64 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82697
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82695
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82702
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82703
  tail call void @llvm.assume(i1 %i.l), !dbg !82704
  %.val = load i64, ptr %i.j, align 8, !dbg !82697, !alias.scope !5810, !noalias !5811, !noundef !5062 ; 2 uses
  %i.m = icmp slt i64 %.val19, %.val, !dbg !82698
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82697

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82700
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82700

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82694 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82699
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82699

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82705 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82706
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82706

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82705
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82706
  unreachable, !dbg !82706

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p, !dbg !82707 ; 3 uses
  %i.s = load <2 x i64>, ptr %i.r, align 8, !dbg !82708
  %i.t = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82709
  store <2 x i64> %i.t, ptr %i.r, align 8, !dbg !82709
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82710
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82710

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82711
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82712
  unreachable, !dbg !82712

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82699 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82699

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i64, ptr %i.r, align 8, !dbg !82697, !alias.scope !5811, !noalias !5810
  br label %.lr.ph.1, !dbg !82697

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i64 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82697
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82695
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82702
  %i.y = icmp ult i64 %i.x, %1, !dbg !82703
  tail call void @llvm.assume(i1 %i.y), !dbg !82704
  %.val.1 = load i64, ptr %i.w, align 8, !dbg !82697, !alias.scope !5810, !noalias !5811, !noundef !5062 ; 2 uses
  %i.z = icmp slt i64 %.val19.1, %.val.1, !dbg !82698
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82697

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82694 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82699
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82699

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82711 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82700
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82700

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82705 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82706
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82706

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82712

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac, !dbg !82707 ; 3 uses
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !dbg !82708
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82709
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !dbg !82709
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82710
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82710

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82713
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82714
  br label %.split.2, !dbg !82714

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82699 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82699

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i64, ptr %i.ae, align 8, !dbg !82697, !alias.scope !5811, !noalias !5810
  br label %.lr.ph.2, !dbg !82697

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i64 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82697
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82695
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82702
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82703
  tail call void @llvm.assume(i1 %i.al), !dbg !82704
  %.val.2 = load i64, ptr %i.aj, align 8, !dbg !82697, !alias.scope !5810, !noalias !5811, !noundef !5062 ; 2 uses
  %i.am = icmp slt i64 %.val19.2, %.val.2, !dbg !82698
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82697

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82694 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82699
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82699

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82711 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82700
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82700

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82705 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82706
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82706

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82712

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap, !dbg !82707 ; 3 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !dbg !82708
  %i.at = shufflevector <2 x i64> %i.as, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82709
  store <2 x i64> %i.at, ptr %i.ar, align 8, !dbg !82709
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82710
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82710

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82713
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82714
  br label %.split.3, !dbg !82714

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82699 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82699

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i64, ptr %i.ar, align 8, !dbg !82697, !alias.scope !5811, !noalias !5810
  br label %.lr.ph.3, !dbg !82697

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i64 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82697
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82695
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82702
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82703
  tail call void @llvm.assume(i1 %i.ay), !dbg !82704
  %.val.3 = load i64, ptr %i.aw, align 8, !dbg !82697, !alias.scope !5810, !noalias !5811, !noundef !5062 ; 2 uses
  %i.az = icmp slt i64 %.val19.3, %.val.3, !dbg !82698
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82697

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82694 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82699
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82699

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82711 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82700
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82700

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82705 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82706
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82706

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82712

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc, !dbg !82707 ; 3 uses
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !dbg !82708
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82709
  store <2 x i64> %i.bg, ptr %i.be, align 8, !dbg !82709
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82710
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82710

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82713
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82714
  br label %.split.4, !dbg !82714

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82699 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82699

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i64, ptr %i.be, align 8, !dbg !82697, !alias.scope !5811, !noalias !5810
  br label %.lr.ph.4, !dbg !82697

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i64 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !82697
  %.sroa.02.123.4 = phi i64 [ %i.bn, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !82695
  %i.bk = add nsw i64 %.sroa.02.123.4, -1, !dbg !82702
  %i.bl = icmp ult i64 %i.bk, %1, !dbg !82703
  tail call void @llvm.assume(i1 %i.bl), !dbg !82704
  %.val.4 = load i64, ptr %i.bj, align 8, !dbg !82697, !alias.scope !5810, !noalias !5811, !noundef !5062 ; 2 uses
  %i.bm = icmp slt i64 %.val19.4, %.val.4, !dbg !82698
  br i1 %i.bm, label %._crit_edge.4, label %bb.v, !dbg !82697

bb.v:                                             ; preds = %.lr.ph.4
  %i.bn = add i64 %.sroa.02.123.4, 1, !dbg !82694 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bn, %1, !dbg !82699
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !82699

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !82711 ; 6 uses
  %i.bo = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82700
  br i1 %i.bo, label %.split31, label %bb.w, !dbg !82700

bb.w:                                             ; preds = %._crit_edge.4
  %i.bp = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82705 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %1, !dbg !82706
  br i1 %i.bq, label %bb.x, label %bb.d, !dbg !82706

bb.x:                                             ; preds = %bb.w
  br i1 %i.bi, label %bb.y, label %bb.f, !dbg !82712

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp, !dbg !82707 ; 2 uses
  %i.bs = load <2 x i64>, ptr %i.br, align 8, !dbg !82708
  %i.bt = shufflevector <2 x i64> %i.bs, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82709
  store <2 x i64> %i.bt, ptr %i.br, align 8, !dbg !82709
  %i.bu = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82710
  br i1 %i.bu, label %bb.z, label %.split31, !dbg !82710

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bp, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82713
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82714
  br label %.split31, !dbg !82714

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.123, i64 noundef %i.p, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82713
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82714
  br label %.split.1, !dbg !82714
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82715 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82739 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b, !dbg !82740
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82741
  %.val.us = load i64, ptr %i.c, align 8, !dbg !82742, !alias.scope !5811, !noalias !5810, !noundef !5062
  %.val19.us = load i64, ptr %i.d, align 8, !dbg !82742, !alias.scope !5810, !noalias !5811, !noundef !5062
  %i.e = icmp slt i64 %.val.us, %.val19.us, !dbg !82743
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82742

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82744
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82744

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82745
  br label %.split31, !dbg !82742

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !82740
  %.val.us32 = load i64, ptr %i.g, align 8, !dbg !82742, !alias.scope !5811, !noalias !5810, !noundef !5062
  %.val19.us33 = load i64, ptr %0, align 8, !dbg !82742, !alias.scope !5810, !noalias !5811, !noundef !5062
  %i.h = icmp slt i64 %.val.us32, %.val19.us33, !dbg !82743
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82742

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82742

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i64, ptr %0, align 8, !dbg !82742, !alias.scope !5810, !noalias !5811
  br label %.lr.ph, !dbg !82742

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82746
  ret i1 %.us-phi, !dbg !82746

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i64 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82742
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82740
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82747
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82748
  tail call void @llvm.assume(i1 %i.l), !dbg !82749
  %.val = load i64, ptr %i.j, align 8, !dbg !82742, !alias.scope !5811, !noalias !5810, !noundef !5062 ; 2 uses
  %i.m = icmp slt i64 %.val, %.val19, !dbg !82743
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82742

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82745
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82745

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82739 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82744
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82744

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82750 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82751
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82751

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82750
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82751
  unreachable, !dbg !82751

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p, !dbg !82752 ; 3 uses
  %i.s = load <2 x i64>, ptr %i.r, align 8, !dbg !82753
  %i.t = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82754
  store <2 x i64> %i.t, ptr %i.r, align 8, !dbg !82754
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82755
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82755

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82756
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82757
  unreachable, !dbg !82757

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82744 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82744

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i64, ptr %i.r, align 8, !dbg !82742, !alias.scope !5810, !noalias !5811
  br label %.lr.ph.1, !dbg !82742

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i64 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82742
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82740
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82747
  %i.y = icmp ult i64 %i.x, %1, !dbg !82748
  tail call void @llvm.assume(i1 %i.y), !dbg !82749
  %.val.1 = load i64, ptr %i.w, align 8, !dbg !82742, !alias.scope !5811, !noalias !5810, !noundef !5062 ; 2 uses
  %i.z = icmp slt i64 %.val.1, %.val19.1, !dbg !82743
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82742

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82739 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82744
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82744

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82756 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82745
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82745

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82750 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82751
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82751

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82757

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac, !dbg !82752 ; 3 uses
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !dbg !82753
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82754
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !dbg !82754
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82755
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82755

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82758
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82759
  br label %.split.2, !dbg !82759

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82744 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82744

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i64, ptr %i.ae, align 8, !dbg !82742, !alias.scope !5810, !noalias !5811
  br label %.lr.ph.2, !dbg !82742

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i64 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82742
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82740
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82747
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82748
  tail call void @llvm.assume(i1 %i.al), !dbg !82749
  %.val.2 = load i64, ptr %i.aj, align 8, !dbg !82742, !alias.scope !5811, !noalias !5810, !noundef !5062 ; 2 uses
  %i.am = icmp slt i64 %.val.2, %.val19.2, !dbg !82743
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82742

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82739 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82744
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82744

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82756 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82745
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82745

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82750 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82751
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82751

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82757

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap, !dbg !82752 ; 3 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !dbg !82753
  %i.at = shufflevector <2 x i64> %i.as, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82754
  store <2 x i64> %i.at, ptr %i.ar, align 8, !dbg !82754
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82755
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82755

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82758
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82759
  br label %.split.3, !dbg !82759

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82744 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82744

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i64, ptr %i.ar, align 8, !dbg !82742, !alias.scope !5810, !noalias !5811
  br label %.lr.ph.3, !dbg !82742

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i64 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82742
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82740
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82747
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82748
  tail call void @llvm.assume(i1 %i.ay), !dbg !82749
  %.val.3 = load i64, ptr %i.aw, align 8, !dbg !82742, !alias.scope !5811, !noalias !5810, !noundef !5062 ; 2 uses
  %i.az = icmp slt i64 %.val.3, %.val19.3, !dbg !82743
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82742

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82739 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82744
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82744

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82756 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82745
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82745

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82750 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82751
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82751

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82757

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc, !dbg !82752 ; 3 uses
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !dbg !82753
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82754
  store <2 x i64> %i.bg, ptr %i.be, align 8, !dbg !82754
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82755
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82755

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82758
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82759
  br label %.split.4, !dbg !82759

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82744 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82744

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i64, ptr %i.be, align 8, !dbg !82742, !alias.scope !5810, !noalias !5811
  br label %.lr.ph.4, !dbg !82742

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i64 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !82742
  %.sroa.02.123.4 = phi i64 [ %i.bn, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !82740
  %i.bk = add nsw i64 %.sroa.02.123.4, -1, !dbg !82747
  %i.bl = icmp ult i64 %i.bk, %1, !dbg !82748
  tail call void @llvm.assume(i1 %i.bl), !dbg !82749
  %.val.4 = load i64, ptr %i.bj, align 8, !dbg !82742, !alias.scope !5811, !noalias !5810, !noundef !5062 ; 2 uses
  %i.bm = icmp slt i64 %.val.4, %.val19.4, !dbg !82743
  br i1 %i.bm, label %._crit_edge.4, label %bb.v, !dbg !82742

bb.v:                                             ; preds = %.lr.ph.4
  %i.bn = add i64 %.sroa.02.123.4, 1, !dbg !82739 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bn, %1, !dbg !82744
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !82744

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !82756 ; 6 uses
  %i.bo = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82745
  br i1 %i.bo, label %.split31, label %bb.w, !dbg !82745

bb.w:                                             ; preds = %._crit_edge.4
  %i.bp = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82750 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %1, !dbg !82751
  br i1 %i.bq, label %bb.x, label %bb.d, !dbg !82751

bb.x:                                             ; preds = %bb.w
  br i1 %i.bi, label %bb.y, label %bb.f, !dbg !82757

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp, !dbg !82752 ; 2 uses
  %i.bs = load <2 x i64>, ptr %i.br, align 8, !dbg !82753
  %i.bt = shufflevector <2 x i64> %i.bs, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82754
  store <2 x i64> %i.bt, ptr %i.br, align 8, !dbg !82754
  %i.bu = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82755
  br i1 %i.bu, label %bb.z, label %.split31, !dbg !82755

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bp, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82758
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82759
  br label %.split31, !dbg !82759

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.123, i64 noundef %i.p, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82758
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightxNCINvYSxINtB4_16ParallelSliceMutxE20par_sort_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82759
  br label %.split.1, !dbg !82759
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82760 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82784 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b, !dbg !82785
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82786
  %.val.us = load i64, ptr %i.c, align 8, !dbg !82787, !alias.scope !5812, !noalias !5813, !noundef !5062
  %.val19.us = load i64, ptr %i.d, align 8, !dbg !82787, !alias.scope !5813, !noalias !5812, !noundef !5062
  %i.e = icmp ult i64 %.val19.us, %.val.us, !dbg !82788
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82787

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82789
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82789

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82790
  br label %.split31, !dbg !82787

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !82785
  %.val.us32 = load i64, ptr %i.g, align 8, !dbg !82787, !alias.scope !5812, !noalias !5813, !noundef !5062
  %.val19.us33 = load i64, ptr %0, align 8, !dbg !82787, !alias.scope !5813, !noalias !5812, !noundef !5062
  %i.h = icmp ult i64 %.val19.us33, %.val.us32, !dbg !82788
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82787

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82787

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i64, ptr %0, align 8, !dbg !82787, !alias.scope !5813, !noalias !5812
  br label %.lr.ph, !dbg !82787

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82791
  ret i1 %.us-phi, !dbg !82791

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i64 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82787
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82785
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82792
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82793
  tail call void @llvm.assume(i1 %i.l), !dbg !82794
  %.val = load i64, ptr %i.j, align 8, !dbg !82787, !alias.scope !5812, !noalias !5813, !noundef !5062 ; 2 uses
  %i.m = icmp ult i64 %.val19, %.val, !dbg !82788
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82787

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82790
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82790

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82784 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82789
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82789

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82795 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82796
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82796

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82795
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82796
  unreachable, !dbg !82796

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p, !dbg !82797 ; 3 uses
  %i.s = load <2 x i64>, ptr %i.r, align 8, !dbg !82798
  %i.t = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82799
  store <2 x i64> %i.t, ptr %i.r, align 8, !dbg !82799
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82800
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82800

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82801
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82802
  unreachable, !dbg !82802

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82789 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82789

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i64, ptr %i.r, align 8, !dbg !82787, !alias.scope !5813, !noalias !5812
  br label %.lr.ph.1, !dbg !82787

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i64 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82787
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82785
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82792
  %i.y = icmp ult i64 %i.x, %1, !dbg !82793
  tail call void @llvm.assume(i1 %i.y), !dbg !82794
  %.val.1 = load i64, ptr %i.w, align 8, !dbg !82787, !alias.scope !5812, !noalias !5813, !noundef !5062 ; 2 uses
  %i.z = icmp ult i64 %.val19.1, %.val.1, !dbg !82788
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82787

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82784 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82789
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82789

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82801 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82790
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82790

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82795 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82796
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82796

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82802

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac, !dbg !82797 ; 3 uses
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !dbg !82798
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82799
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !dbg !82799
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82800
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82800

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82803
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82804
  br label %.split.2, !dbg !82804

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82789 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82789

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i64, ptr %i.ae, align 8, !dbg !82787, !alias.scope !5813, !noalias !5812
  br label %.lr.ph.2, !dbg !82787

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i64 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82787
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82785
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82792
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82793
  tail call void @llvm.assume(i1 %i.al), !dbg !82794
  %.val.2 = load i64, ptr %i.aj, align 8, !dbg !82787, !alias.scope !5812, !noalias !5813, !noundef !5062 ; 2 uses
  %i.am = icmp ult i64 %.val19.2, %.val.2, !dbg !82788
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82787

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82784 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82789
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82789

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82801 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82790
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82790

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82795 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82796
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82796

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82802

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap, !dbg !82797 ; 3 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !dbg !82798
  %i.at = shufflevector <2 x i64> %i.as, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82799
  store <2 x i64> %i.at, ptr %i.ar, align 8, !dbg !82799
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82800
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82800

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82803
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82804
  br label %.split.3, !dbg !82804

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82789 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82789

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i64, ptr %i.ar, align 8, !dbg !82787, !alias.scope !5813, !noalias !5812
  br label %.lr.ph.3, !dbg !82787

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i64 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82787
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82785
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82792
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82793
  tail call void @llvm.assume(i1 %i.ay), !dbg !82794
  %.val.3 = load i64, ptr %i.aw, align 8, !dbg !82787, !alias.scope !5812, !noalias !5813, !noundef !5062 ; 2 uses
  %i.az = icmp ult i64 %.val19.3, %.val.3, !dbg !82788
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82787

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82784 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82789
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82789

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82801 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82790
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82790

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82795 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82796
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82796

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82802

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc, !dbg !82797 ; 3 uses
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !dbg !82798
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82799
  store <2 x i64> %i.bg, ptr %i.be, align 8, !dbg !82799
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82800
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82800

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82803
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82804
  br label %.split.4, !dbg !82804

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82789 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82789

.lr.ph.preheader.4:                               ; preds = %.split.4
  %.val19.4.pre = load i64, ptr %i.be, align 8, !dbg !82787, !alias.scope !5813, !noalias !5812
  br label %.lr.ph.4, !dbg !82787

.lr.ph.4:                                         ; preds = %bb.v, %.lr.ph.preheader.4
  %.val19.4 = phi i64 [ %.val.4, %bb.v ], [ %.val19.4.pre, %.lr.ph.preheader.4 ], !dbg !82787
  %.sroa.02.123.4 = phi i64 [ %i.bn, %bb.v ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.4, !dbg !82785
  %i.bk = add nsw i64 %.sroa.02.123.4, -1, !dbg !82792
  %i.bl = icmp ult i64 %i.bk, %1, !dbg !82793
  tail call void @llvm.assume(i1 %i.bl), !dbg !82794
  %.val.4 = load i64, ptr %i.bj, align 8, !dbg !82787, !alias.scope !5812, !noalias !5813, !noundef !5062 ; 2 uses
  %i.bm = icmp ult i64 %.val19.4, %.val.4, !dbg !82788
  br i1 %i.bm, label %._crit_edge.4, label %bb.v, !dbg !82787

bb.v:                                             ; preds = %.lr.ph.4
  %i.bn = add i64 %.sroa.02.123.4, 1, !dbg !82784 ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.bn, %1, !dbg !82789
  br i1 %exitcond.4.not, label %.split31, label %.lr.ph.4, !dbg !82789

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.split.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split.4 ], [ %.sroa.02.123.4, %.lr.ph.4 ], !dbg !82801 ; 6 uses
  %i.bo = icmp eq i64 %.sroa.02.1.lcssa.4, %1, !dbg !82790
  br i1 %i.bo, label %.split31, label %bb.w, !dbg !82790

bb.w:                                             ; preds = %._crit_edge.4
  %i.bp = add i64 %.sroa.02.1.lcssa.4, -1, !dbg !82795 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %1, !dbg !82796
  br i1 %i.bq, label %bb.x, label %bb.d, !dbg !82796

bb.x:                                             ; preds = %bb.w
  br i1 %i.bi, label %bb.y, label %bb.f, !dbg !82802

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp, !dbg !82797 ; 2 uses
  %i.bs = load <2 x i64>, ptr %i.br, align 8, !dbg !82798
  %i.bt = shufflevector <2 x i64> %i.bs, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82799
  store <2 x i64> %i.bt, ptr %i.br, align 8, !dbg !82799
  %i.bu = icmp ugt i64 %.sroa.02.1.lcssa.4, 1, !dbg !82800
  br i1 %i.bu, label %bb.z, label %.split31, !dbg !82800

bb.z:                                             ; preds = %bb.y
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.bp, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82803
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82804
  br label %.split31, !dbg !82804

bb.aa:                                            ; preds = %bb.e
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.123, i64 noundef %i.p, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82803
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB2b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.123, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82804
  br label %.split.1, !dbg !82804
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 !dbg !82805 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 50
  br i1 %i.a, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph35
  %.sroa.02.123.us3492 = phi i64 [ %i.b, %.lr.ph35 ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.02.123.us3492, 1, !dbg !82829 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b, !dbg !82830
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.us3492, !dbg !82831
  %.val.us = load i64, ptr %i.c, align 8, !dbg !82832, !alias.scope !5813, !noalias !5812, !noundef !5062
  %.val19.us = load i64, ptr %i.d, align 8, !dbg !82832, !alias.scope !5812, !noalias !5813, !noundef !5062
  %i.e = icmp ult i64 %.val.us, %.val19.us, !dbg !82833
  br i1 %i.e, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph35, !dbg !82832

.lr.ph35:                                         ; preds = %.lr.ph93
  %exitcond44.not = icmp eq i64 %.sroa.02.123.us3492, %i.i, !dbg !82834
  br i1 %exitcond44.not, label %.split31, label %.lr.ph93, !dbg !82834

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph93
  %i.f = icmp eq i64 %i.b, %1, !dbg !82835
  br label %.split31, !dbg !82832

.lr.ph.us:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !82830
  %.val.us32 = load i64, ptr %i.g, align 8, !dbg !82832, !alias.scope !5813, !noalias !5812, !noundef !5062
  %.val19.us33 = load i64, ptr %0, align 8, !dbg !82832, !alias.scope !5812, !noalias !5813, !noundef !5062
  %i.h = icmp ult i64 %.val.us32, %.val19.us33, !dbg !82833
  br i1 %i.h, label %.split31, label %.lr.ph93.preheader, !dbg !82832

.lr.ph93.preheader:                               ; preds = %.lr.ph.us
  %i.i = add nsw i64 %1, -2
  br label %.lr.ph93, !dbg !82832

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val19.pre = load i64, ptr %0, align 8, !dbg !82832, !alias.scope !5812, !noalias !5813
  br label %.lr.ph, !dbg !82832

.split31:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph35, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph35 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.f, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ], !dbg !82836
  ret i1 %.us-phi, !dbg !82836

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.val19 = phi i64 [ %.val, %bb.b ], [ %.val19.pre, %.lr.ph.preheader ], !dbg !82832
  %.sroa.02.123 = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph.preheader ] ; 11 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123, !dbg !82830
  %i.k = add nsw i64 %.sroa.02.123, -1, !dbg !82837
  %i.l = icmp samesign ult i64 %i.k, %1, !dbg !82838
  tail call void @llvm.assume(i1 %i.l), !dbg !82839
  %.val = load i64, ptr %i.j, align 8, !dbg !82832, !alias.scope !5813, !noalias !5812, !noundef !5062 ; 2 uses
  %i.m = icmp ult i64 %.val, %.val19, !dbg !82833
  br i1 %i.m, label %._crit_edge, label %bb.b, !dbg !82832

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.02.123, %1, !dbg !82835
  br i1 %i.n, label %.split31, label %bb.c, !dbg !82835

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.02.123, 1, !dbg !82829 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1, !dbg !82834
  br i1 %exitcond.not, label %.split31, label %.lr.ph, !dbg !82834

bb.c:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %.sroa.02.123, -1, !dbg !82840 ; 4 uses
  %i.q = icmp ult i64 %i.p, %1, !dbg !82841
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !82841

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa39 = phi i64 [ %i.p, %bb.c ], [ %i.ac, %bb.h ], [ %i.ap, %bb.m ], [ %i.bc, %bb.r ], [ %i.bp, %bb.w ], !dbg !82840
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82841
  unreachable, !dbg !82841

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p, !dbg !82842 ; 3 uses
  %i.s = load <2 x i64>, ptr %i.r, align 8, !dbg !82843
  %i.t = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82844
  store <2 x i64> %i.t, ptr %i.r, align 8, !dbg !82844
  %i.u = icmp samesign ugt i64 %.sroa.02.123, 1, !dbg !82845
  br i1 %i.u, label %bb.aa, label %.split.1, !dbg !82845

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa42 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ], !dbg !82846
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa42, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !82847
  unreachable, !dbg !82847

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.v = icmp samesign ult i64 %.sroa.02.123, %1, !dbg !82834 ; 2 uses
  br i1 %i.v, label %.lr.ph.preheader.1, label %._crit_edge.1, !dbg !82834

.lr.ph.preheader.1:                               ; preds = %.split.1
  %.val19.1.pre = load i64, ptr %i.r, align 8, !dbg !82832, !alias.scope !5812, !noalias !5813
  br label %.lr.ph.1, !dbg !82832

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph.preheader.1
  %.val19.1 = phi i64 [ %.val.1, %bb.g ], [ %.val19.1.pre, %.lr.ph.preheader.1 ], !dbg !82832
  %.sroa.02.123.1 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.02.123, %.lr.ph.preheader.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.1, !dbg !82830
  %i.x = add nsw i64 %.sroa.02.123.1, -1, !dbg !82837
  %i.y = icmp ult i64 %i.x, %1, !dbg !82838
  tail call void @llvm.assume(i1 %i.y), !dbg !82839
  %.val.1 = load i64, ptr %i.w, align 8, !dbg !82832, !alias.scope !5813, !noalias !5812, !noundef !5062 ; 2 uses
  %i.z = icmp ult i64 %.val.1, %.val19.1, !dbg !82833
  br i1 %i.z, label %._crit_edge.1, label %bb.g, !dbg !82832

bb.g:                                             ; preds = %.lr.ph.1
  %i.aa = add i64 %.sroa.02.123.1, 1, !dbg !82829 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %1, !dbg !82834
  br i1 %exitcond.1.not, label %.split31, label %.lr.ph.1, !dbg !82834

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.123, %.split.1 ], [ %.sroa.02.123.1, %.lr.ph.1 ], !dbg !82846 ; 9 uses
  %i.ab = icmp eq i64 %.sroa.02.1.lcssa.1, %1, !dbg !82835
  br i1 %i.ab, label %.split31, label %bb.h, !dbg !82835

bb.h:                                             ; preds = %._crit_edge.1
  %i.ac = add i64 %.sroa.02.1.lcssa.1, -1, !dbg !82840 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !82841
  br i1 %i.ad, label %bb.i, label %bb.d, !dbg !82841

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !82847

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac, !dbg !82842 ; 3 uses
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !dbg !82843
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82844
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !dbg !82844
  %i.ah = icmp ugt i64 %.sroa.02.1.lcssa.1, 1, !dbg !82845
  br i1 %i.ah, label %bb.k, label %.split.2, !dbg !82845

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.ac, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82848
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82849
  br label %.split.2, !dbg !82849

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ai = icmp ult i64 %.sroa.02.1.lcssa.1, %1, !dbg !82834 ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader.2, label %._crit_edge.2, !dbg !82834

.lr.ph.preheader.2:                               ; preds = %.split.2
  %.val19.2.pre = load i64, ptr %i.ae, align 8, !dbg !82832, !alias.scope !5812, !noalias !5813
  br label %.lr.ph.2, !dbg !82832

.lr.ph.2:                                         ; preds = %bb.l, %.lr.ph.preheader.2
  %.val19.2 = phi i64 [ %.val.2, %bb.l ], [ %.val19.2.pre, %.lr.ph.preheader.2 ], !dbg !82832
  %.sroa.02.123.2 = phi i64 [ %i.an, %bb.l ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.2, !dbg !82830
  %i.ak = add nsw i64 %.sroa.02.123.2, -1, !dbg !82837
  %i.al = icmp ult i64 %i.ak, %1, !dbg !82838
  tail call void @llvm.assume(i1 %i.al), !dbg !82839
  %.val.2 = load i64, ptr %i.aj, align 8, !dbg !82832, !alias.scope !5813, !noalias !5812, !noundef !5062 ; 2 uses
  %i.am = icmp ult i64 %.val.2, %.val19.2, !dbg !82833
  br i1 %i.am, label %._crit_edge.2, label %bb.l, !dbg !82832

bb.l:                                             ; preds = %.lr.ph.2
  %i.an = add i64 %.sroa.02.123.2, 1, !dbg !82829 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.an, %1, !dbg !82834
  br i1 %exitcond.2.not, label %.split31, label %.lr.ph.2, !dbg !82834

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.123.2, %.lr.ph.2 ], !dbg !82846 ; 9 uses
  %i.ao = icmp eq i64 %.sroa.02.1.lcssa.2, %1, !dbg !82835
  br i1 %i.ao, label %.split31, label %bb.m, !dbg !82835

bb.m:                                             ; preds = %._crit_edge.2
  %i.ap = add i64 %.sroa.02.1.lcssa.2, -1, !dbg !82840 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %1, !dbg !82841
  br i1 %i.aq, label %bb.n, label %bb.d, !dbg !82841

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %bb.f, !dbg !82847

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap, !dbg !82842 ; 3 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !dbg !82843
  %i.at = shufflevector <2 x i64> %i.as, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82844
  store <2 x i64> %i.at, ptr %i.ar, align 8, !dbg !82844
  %i.au = icmp ugt i64 %.sroa.02.1.lcssa.2, 1, !dbg !82845
  br i1 %i.au, label %bb.p, label %.split.3, !dbg !82845

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ap, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82848
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82849
  br label %.split.3, !dbg !82849

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.av = icmp ult i64 %.sroa.02.1.lcssa.2, %1, !dbg !82834 ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.3, label %._crit_edge.3, !dbg !82834

.lr.ph.preheader.3:                               ; preds = %.split.3
  %.val19.3.pre = load i64, ptr %i.ar, align 8, !dbg !82832, !alias.scope !5812, !noalias !5813
  br label %.lr.ph.3, !dbg !82832

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %.val19.3 = phi i64 [ %.val.3, %bb.q ], [ %.val19.3.pre, %.lr.ph.preheader.3 ], !dbg !82832
  %.sroa.02.123.3 = phi i64 [ %i.ba, %bb.q ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.123.3, !dbg !82830
  %i.ax = add nsw i64 %.sroa.02.123.3, -1, !dbg !82837
  %i.ay = icmp ult i64 %i.ax, %1, !dbg !82838
  tail call void @llvm.assume(i1 %i.ay), !dbg !82839
  %.val.3 = load i64, ptr %i.aw, align 8, !dbg !82832, !alias.scope !5813, !noalias !5812, !noundef !5062 ; 2 uses
  %i.az = icmp ult i64 %.val.3, %.val19.3, !dbg !82833
  br i1 %i.az, label %._crit_edge.3, label %bb.q, !dbg !82832

bb.q:                                             ; preds = %.lr.ph.3
  %i.ba = add i64 %.sroa.02.123.3, 1, !dbg !82829 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.ba, %1, !dbg !82834
  br i1 %exitcond.3.not, label %.split31, label %.lr.ph.3, !dbg !82834

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.123.3, %.lr.ph.3 ], !dbg !82846 ; 9 uses
  %i.bb = icmp eq i64 %.sroa.02.1.lcssa.3, %1, !dbg !82835
  br i1 %i.bb, label %.split31, label %bb.r, !dbg !82835

bb.r:                                             ; preds = %._crit_edge.3
  %i.bc = add i64 %.sroa.02.1.lcssa.3, -1, !dbg !82840 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %1, !dbg !82841
  br i1 %i.bd, label %bb.s, label %bb.d, !dbg !82841

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.f, !dbg !82847

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc, !dbg !82842 ; 3 uses
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !dbg !82843
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !82844
  store <2 x i64> %i.bg, ptr %i.be, align 8, !dbg !82844
  %i.bh = icmp ugt i64 %.sroa.02.1.lcssa.3, 1, !dbg !82845
  br i1 %i.bh, label %bb.u, label %.split.4, !dbg !82845

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bc, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82848
  tail call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort26insertion_sort_shift_rightyNCINvYSyINtB4_16ParallelSliceMutyE20par_sort_unstable_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !82849
  br label %.split.4, !dbg !82849

.split.4:                                         ; preds = %bb.u, %bb.t
  %i.bi = icmp ult i64 %.sroa.02.1.lcssa.3, %1, !dbg !82834 ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.4, label %._crit_edge.4, !dbg !82834

.lr.ph.preheader.4:                               ; preds = %.split.4
end_hunk_2
