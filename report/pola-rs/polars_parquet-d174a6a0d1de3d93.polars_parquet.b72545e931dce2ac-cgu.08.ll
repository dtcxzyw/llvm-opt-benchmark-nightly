Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.08?download=true
inline.NumInlined: 3445
inline.NumDeleted: 1834
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairECsfISxE4fmY1Y_14polars_parquet:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implNtNtNtCsk4ZPsEfLtLH_6brotli3enc7command7CommandECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 !dbg !5485 {
bb.a:
  %.not = icmp eq i64 %1, %3, !dbg !5486
  br i1 %.not, label %bb.c, label %bb.b, !dbg !5486, !prof !462

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #35, !dbg !5487
  unreachable, !dbg !5487

bb.c:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 4, !dbg !5488
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.a, i1 false), !dbg !5488
  ret void, !dbg !5491
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implfECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 !dbg !5492 {
bb.a:
  %.not = icmp eq i64 %1, %3, !dbg !5493
  br i1 %.not, label %bb.c, label %bb.b, !dbg !5493, !prof !462

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #35, !dbg !5494
  unreachable, !dbg !5494

bb.c:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 2, !dbg !5495
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.a, i1 false), !dbg !5495
  ret void, !dbg !5498
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 !dbg !1936 {
bb.a:
  %.not = icmp eq i64 %1, %3, !dbg !5499
  br i1 %.not, label %bb.c, label %bb.b, !dbg !5499, !prof !462

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #35, !dbg !5500
  unreachable, !dbg !5500

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false), !dbg !5501
  ret void, !dbg !5503
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 !dbg !5504 {
bb.a:
  %.not = icmp eq i64 %1, %3, !dbg !5505
  br i1 %.not, label %bb.c, label %bb.b, !dbg !5505, !prof !462

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #35, !dbg !5506
  unreachable, !dbg !5506

bb.c:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 2, !dbg !5507
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.a, i1 false), !dbg !5507
  ret void, !dbg !5510
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implmECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 !dbg !5511 {
bb.a:
  %.not = icmp eq i64 %1, %3, !dbg !5512
  br i1 %.not, label %bb.c, label %bb.b, !dbg !5512, !prof !462

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #35, !dbg !5513
  unreachable, !dbg !5513

bb.c:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 2, !dbg !5514
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.a, i1 false), !dbg !5514
  ret void, !dbg !5517
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair9InputPairBM_ECsfISxE4fmY1Y_14polars_parquet(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 !dbg !5518 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #35, !dbg !5521
  unreachable, !dbg !5521
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode20SortHuffmanTreeItemsNtNtB4_17brotli_bit_stream21SimpleSortHuffmanTreeECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5522 {
bb.a:
  %i.a = icmp ult i64 %2, 13, !dbg !5527
  br i1 %i.a, label %.preheader.split, label %bb.b, !dbg !5527

.preheader.split:                                 ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 1, !dbg !5528
  br i1 %i.b, label %.lr.ph72.preheader, label %.loopexit, !dbg !5531

.lr.ph72.preheader:                               ; preds = %.preheader.split
  %umax91 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !5540 ; 2 uses
  br label %.lr.ph72, !dbg !5540

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 57, !dbg !5542
  %i.d = select i1 %i.c, i64 2, i64 0, !dbg !5543
  br label %bb.c, !dbg !5544

.loopexit:                                        ; preds = %._crit_edge69, %bb.o, %.preheader.split
  ret void, !dbg !5546

bb.c:                                             ; preds = %bb.b, %._crit_edge69
  %indvars.iv = phi i64 [ %i.d, %bb.b ], [ %indvars.iv.next, %._crit_edge69 ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_RNvNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode20SortHuffmanTreeItems4gaps, i64 %indvars.iv, !dbg !5547
  %i.f = load i64, ptr %i.e, align 8, !dbg !5547, !noundef !16 ; 6 uses
  %i.g = icmp ult i64 %i.f, %2, !dbg !5548
  br i1 %i.g, label %.lr.ph68.preheader, label %._crit_edge69, !dbg !5557

.lr.ph68.preheader:                               ; preds = %bb.c
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1), !dbg !5558 ; 2 uses
  br label %.lr.ph68, !dbg !5558

._crit_edge69:                                    ; preds = %bb.h, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !5561 ; 2 uses
  %exitcond90.not.a = icmp eq i64 %indvars.iv.next, 6, !dbg !5544
  br i1 %exitcond90.not.a, label %.loopexit, label %bb.c, !dbg !5544

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %bb.h
  %.sroa.031.066 = phi i64 [ %i.h, %bb.h ], [ %i.f, %.lr.ph68.preheader ] ; 6 uses
  %i.h = add i64 %.sroa.031.066, 1, !dbg !5562    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.031.066, %umax, !dbg !5558
  br i1 %exitcond.not, label %bb.e, label %bb.d, !dbg !5558

bb.d:                                             ; preds = %.lr.ph68
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.031.066, !dbg !5558
  %i.j = load i64, ptr %i.i, align 4, !dbg !5558  ; 2 uses
  %.sroa.044.0.extract.trunc = trunc i64 %i.j to i32, !dbg !5558
  %.not62 = icmp ult i64 %.sroa.031.066, %i.f, !dbg !5571
  br i1 %.not62, label %._crit_edge, label %.lr.ph, !dbg !5571

bb.e:                                             ; preds = %.lr.ph68
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #36, !dbg !5558
  unreachable

.lr.ph:                                           ; preds = %bb.d, %bb.j
  %.sroa.019.063 = phi i64 [ %i.k, %bb.j ], [ %.sroa.031.066, %bb.d ] ; 3 uses
  %i.k = sub nuw nsw i64 %.sroa.019.063, %i.f, !dbg !5573 ; 6 uses
  %i.l = icmp ult i64 %i.k, %1, !dbg !5576
  br i1 %i.l, label %bb.f, label %bb.g, !dbg !5576

._crit_edge:                                      ; preds = %bb.j, %bb.f, %bb.d
  %.sroa.019.0.lcssa = phi i64 [ %.sroa.031.066, %bb.d ], [ %.sroa.019.063, %bb.f ], [ %i.k, %bb.j ], !dbg !5577 ; 3 uses
  %i.m = icmp ult i64 %.sroa.019.0.lcssa, %1, !dbg !5578
  br i1 %i.m, label %bb.h, label %bb.i, !dbg !5578

bb.f:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k, !dbg !5579 ; 2 uses
  %.val41 = load i32, ptr %i.n, align 4, !dbg !5580, !noundef !16
  %i.o = icmp ugt i32 %.val41, %.sroa.044.0.extract.trunc, !dbg !5581
  br i1 %i.o, label %bb.j, label %._crit_edge, !dbg !5587

bb.g:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #36, !dbg !5576
  unreachable

bb.h:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.019.0.lcssa, !dbg !5578
  store i64 %i.j, ptr %i.p, align 4, !dbg !5578
  %exitcond88.not = icmp eq i64 %i.h, %2, !dbg !5548
  br i1 %exitcond88.not, label %._crit_edge69, label %.lr.ph68, !dbg !5557

bb.i:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.019.0.lcssa, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #36, !dbg !5578
  unreachable

bb.j:                                             ; preds = %bb.f
  %.sroa.027.0.copyload = load i64, ptr %i.n, align 4, !dbg !5588
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.019.063, !dbg !5589
  store i64 %.sroa.027.0.copyload, ptr %i.q, align 4, !dbg !5589
  %.not = icmp ult i64 %i.k, %i.f, !dbg !5571
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !5571

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %bb.o
  %.sroa.029.071 = phi i64 [ %i.r, %bb.o ], [ 1, %.lr.ph72.preheader ] ; 4 uses
  %i.r = add nuw nsw i64 %.sroa.029.071, 1, !dbg !5590 ; 2 uses
  %exitcond92.not = icmp eq i64 %.sroa.029.071, %umax91, !dbg !5540
  br i1 %exitcond92.not, label %bb.k, label %.split, !dbg !5540

.split:                                           ; preds = %.lr.ph72
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.029.071, !dbg !5540
  %i.t = load i64, ptr %i.s, align 4, !dbg !5540  ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.t to i32, !dbg !5540
  br label %bb.l, !dbg !5594

bb.k:                                             ; preds = %.lr.ph72
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax91, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #36, !dbg !5540
  unreachable

bb.l:                                             ; preds = %bb.n, %.split
  %.sroa.08.0 = phi i64 [ %.sroa.029.071, %.split ], [ %.sroa.01.0, %bb.n ], !dbg !5598 ; 3 uses
  %.sroa.01.0 = add nsw i64 %.sroa.08.0, -1, !dbg !5599 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0, !dbg !5601 ; 2 uses
  %.val43 = load i32, ptr %i.u, align 4, !dbg !5602, !noundef !16
  %i.v = icmp ugt i32 %.val43, %.sroa.0.0.extract.trunc, !dbg !5603
  br i1 %i.v, label %bb.n, label %bb.m, !dbg !5605

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.08.1 = phi i64 [ 0, %bb.n ], [ %.sroa.08.0, %bb.l ], !dbg !5598 ; 3 uses
  %i.w = icmp ult i64 %.sroa.08.1, %1, !dbg !5606
  br i1 %i.w, label %bb.o, label %bb.p, !dbg !5606

bb.n:                                             ; preds = %bb.l
  %.sroa.06.0.copyload = load i64, ptr %i.u, align 4, !dbg !5607
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.08.0, !dbg !5608
  store i64 %.sroa.06.0.copyload, ptr %i.x, align 4, !dbg !5608
  %i.y = icmp eq i64 %.sroa.01.0, 0, !dbg !5609
  br i1 %i.y, label %bb.m, label %bb.l, !dbg !5609

bb.o:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.08.1, !dbg !5606
  store i64 %i.t, ptr %i.z, align 4, !dbg !5606
  %exitcond93.not = icmp eq i64 %i.r, %2, !dbg !5528
  br i1 %exitcond93.not, label %.loopexit, label %.lr.ph72, !dbg !5531

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.08.1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #36, !dbg !5606
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree14initialize_h10NtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocINtB2_10H10BucketsB1t_EECsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull %1, i1 noundef zeroext %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5610 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 76, !dbg !5614
  %i.b = load i32, ptr %i.a, align 4, !dbg !5614, !noundef !16 ; 2 uses
  %i.c = and i32 %i.b, 63, !dbg !5615
  %i.d = zext nneg i32 %i.c to i64, !dbg !5615
  %i.e = shl nuw i64 1, %i.d, !dbg !5615          ; 2 uses
  %i.f = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.e), !dbg !5616
  %spec.store.select = select i1 %2, i64 %i.f, i64 %i.e, !dbg !5616
  %i.g = and i32 %i.b, 31, !dbg !5618
  %notmask = shl nsw i32 -1, %i.g, !dbg !5618     ; 2 uses
  %.neg = add nsw i32 %notmask, 1, !dbg !5618     ; 3 uses
  %i.h = tail call { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %1, i64 noundef 131072), !dbg !5619 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0, !dbg !5619 ; 7 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1, !dbg !5619 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %.idx.i = shl i64 %i.j, 2, !dbg !5625           ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i, !dbg !5625
  %i.l = icmp eq i64 %i.j, 0, !dbg !5636          ; 2 uses
  br i1 %i.l, label %_RNvXs0_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_treeINtB5_10H10BucketsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEINtB5_9AllocablemB1y_E3newCsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph.i.preheader, !dbg !5646

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.m = add i64 %.idx.i, -4, !dbg !5646          ; 2 uses
  %i.n = lshr exact i64 %i.m, 2, !dbg !5646
  %i.o = add nuw nsw i64 %i.n, 1, !dbg !5646      ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 28, !dbg !5646
  br i1 %min.iters.check, label %.lr.ph.i.preheader9, label %vector.ph, !dbg !5646

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.o, 9223372036854775800      ; 3 uses
  %i.p = shl i64 %n.vec, 2
  %i.q = getelementptr i8, ptr %i.i, i64 %i.p
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.neg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !5646

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16, !dbg !5647
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !dbg !5647
  store <4 x i32> %broadcast.splat, ptr %i.s, align 4, !dbg !5647
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !5646
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !5646, !llvm.loop !5649

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec, !dbg !5646
  br i1 %cmp.n, label %_RNvXs0_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_treeINtB5_10H10BucketsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEINtB5_9AllocablemB1y_E3newCsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph.i.preheader9, !dbg !5646

.lr.ph.i.preheader9:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.08.i.ph = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i, !dbg !5646

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader9, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader9 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4, !dbg !5650 ; 2 uses
  store i32 %.neg, ptr %.sroa.0.08.i, align 4, !dbg !5647
  %i.v = icmp eq ptr %i.u, %i.k, !dbg !5636
  br i1 %i.v, label %_RNvXs0_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_treeINtB5_10H10BucketsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEINtB5_9AllocablemB1y_E3newCsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph.i, !dbg !5646, !llvm.loop !5653

_RNvXs0_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_treeINtB5_10H10BucketsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEINtB5_9AllocablemB1y_E3newCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.w = shl i64 %spec.store.select, 1, !dbg !5654
  %i.x = invoke { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %1, i64 noundef %i.w)
          to label %bb.d unwind label %bb.b, !dbg !5656 ; 2 uses

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_treeINtB5_10H10BucketsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEINtB5_9AllocablemB1y_E3newCsfISxE4fmY1Y_14polars_parquet.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10H10BucketsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.c, !dbg !5657

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, 0) %.idx.i, i64 noundef 4) #40, !dbg !5668
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10H10BucketsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !5673

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_treeINtB5_10H10BucketsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEINtB5_9AllocablemB1y_E3newCsfISxE4fmY1Y_14polars_parquet.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !5674
  %i.aa = xor i32 %notmask, -1, !dbg !5618
  %i.ab = zext nneg i32 %i.aa to i64, !dbg !5675
  %i.ac = extractvalue { ptr, i64 } %i.x, 0, !dbg !5676
  %i.ad = extractvalue { ptr, i64 } %i.x, 1, !dbg !5676
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5677
  store i64 %i.ab, ptr %i.ae, align 8, !dbg !5677
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !5677
  store i64 %5, ptr %i.af, align 8, !dbg !5677
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5677
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !5677
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !5677
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !5677
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !5677
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !5677
  store ptr %i.i, ptr %0, align 8, !dbg !5677
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5677
  store i64 %i.j, ptr %i.ah, align 8, !dbg !5677
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !5677
  store i32 %.neg, ptr %i.ai, align 8, !dbg !5677
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5677
  store ptr %i.ac, ptr %i.aj, align 8, !dbg !5677
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5677
  store i64 %i.ad, ptr %i.ak, align 8, !dbg !5677
  ret void, !dbg !5678

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10H10BucketsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.y, !dbg !5679
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH10NtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocINtB2_10H10BucketsB1B_ENtB2_16H10DefaultParamsECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %8, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %9, i64 noundef range(i64 0, 1152921504606846976) %10) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5680 {
bb.a:
  %i.a = and i64 %4, %3, !dbg !5681               ; 6 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %6, i64 128), !dbg !5683
  %i.b = icmp ugt i64 %6, 127, !dbg !5688         ; 5 uses
  %i.c = icmp ugt i64 %i.a, %2, !dbg !5690
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !5690, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i64 %2, %i.a, !dbg !5697
  %.not.i = icmp samesign ult i64 %i.d, 4, !dbg !5698
  br i1 %.not.i, label %bb.c, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !5698, !prof !80

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #35, !dbg !5709, !noalias !5710
  unreachable, !dbg !5709

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.a, !dbg !5714
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 1, !dbg !5719, !alias.scope !5727, !noalias !5731
  %i.f = zext i32 %.sroa.0.0.copyload to i64, !dbg !5719
  %i.g = mul nuw nsw i64 %i.f, 506832829, !dbg !5733
  %i.h = lshr i64 %i.g, 15, !dbg !5737
  %i.i = and i64 %i.h, 131071, !dbg !5737         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5739
  %.val82 = load ptr, ptr %i.j, align 8, !dbg !5741, !nonnull !16, !noundef !16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5741
  %.val83 = load i64, ptr %i.k, align 8, !dbg !5741, !noundef !16 ; 20 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5742
  %.val85 = load i64, ptr %i.l, align 8, !dbg !5742, !noundef !16 ; 2 uses
  %i.m = icmp ugt i64 %.val85, %i.i, !dbg !5747
  br i1 %i.m, label %bb.e, label %bb.f, !dbg !5747

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #35, !dbg !5748
  unreachable, !dbg !5748

bb.e:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %.val84 = load ptr, ptr %0, align 8, !dbg !5742, !nonnull !16, !noundef !16
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val84, i64 %i.i, !dbg !5747 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !dbg !5747, !noundef !16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5749
  %i.q = load i64, ptr %i.p, align 8, !dbg !5749, !noundef !16 ; 4 uses
  %i.r = and i64 %i.q, %3, !dbg !5751
  %i.s = shl i64 %i.r, 1, !dbg !5752              ; 3 uses
  %i.t = or disjoint i64 %i.s, 1, !dbg !5755      ; 2 uses
  br i1 %i.b, label %bb.g, label %.preheader, !dbg !5759

bb.f:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %.val85, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !5747
  unreachable, !dbg !5747

bb.g:                                             ; preds = %bb.e
  %i.u = trunc i64 %3 to i32, !dbg !5764
  store i32 %i.u, ptr %i.n, align 4, !dbg !5764
  br label %.preheader, !dbg !5765

.preheader:                                       ; preds = %bb.e, %bb.g
  %.sroa.08.0169 = zext i32 %i.o to i64, !dbg !5766 ; 3 uses
  %i.v = sub i64 %3, %.sroa.08.0169, !dbg !5767   ; 2 uses
  %i.w = icmp eq i64 %3, %.sroa.08.0169, !dbg !5770
end_hunk_0
