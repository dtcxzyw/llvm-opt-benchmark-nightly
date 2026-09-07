Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.00?download=true
inline.NumInlined: 143
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvMsd_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1E_TINtNtNtCs3oUPovFnLWP_4core3ops5range5BoundB1E_EB3M_EEB1N_:bb.a
  %i.et = add i64 %.sroa.078.0293, -1             ; 2 uses
  switch i64 %.sroa.074.0290, label %default.unreachable [
    i64 0, label %bb.ak
    i64 1, label %bb.am
    i64 2, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit
    i64 3, label %bb.ao
  ]

bb.ak:                                            ; preds = %.lr.ph.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0291) ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 186
  %i.ew = load i16, ptr %i.ev, align 2, !noalias !285, !noundef !4 ; 2 uses
  %i.ex = zext i16 %i.ew to i64                   ; 3 uses
  %.idx790 = shl nuw nsw i64 %i.ex, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx790
  %i.ez = icmp eq i16 %i.ew, 0
  br i1 %i.ez, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i

bb.al:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i765, i64 8 ; 2 uses
  %i.fb = add nuw nsw i64 %.sroa.8.0.i.i764, 1
  %i.fc = icmp eq ptr %i.fa, %i.ey
  br i1 %i.fc, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i: ; preds = %bb.ak, %bb.al
  %.sroa.0.01.i.i765 = phi ptr [ %i.fa, %bb.al ], [ %i.eu, %bb.ak ] ; 2 uses
  %.sroa.8.0.i.i764 = phi i64 [ %i.fb, %bb.al ], [ 0, %bb.ak ] ; 3 uses
  %i.fd = tail call noundef i8 @_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.3.0291, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.01.i.i765), !noalias !286
  switch i8 %i.fd, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit
    i8 0, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit
    i8 1, label %bb.al
  ]

bb.am:                                            ; preds = %.lr.ph.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0291) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 186
  %i.fg = load i16, ptr %i.ff, align 2, !noalias !287, !noundef !4 ; 2 uses
  %i.fh = zext i16 %i.fg to i64                   ; 3 uses
  %.idx789 = shl nuw nsw i64 %i.fh, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.idx789
  %i.fj = icmp eq i16 %i.fg, 0
  br i1 %i.fj, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i

bb.an:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i17.i757, i64 8 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fi
  br i1 %i.fl, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i: ; preds = %bb.am, %bb.an
  %.sroa.0.01.i17.i757 = phi ptr [ %i.fk, %bb.an ], [ %i.fe, %bb.am ] ; 2 uses
  %.sroa.8.0.i16.i756 = phi i64 [ %i.fm, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.fm = add nuw nsw i64 %.sroa.8.0.i16.i756, 1  ; 2 uses
  %i.fn = tail call noundef i8 @_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.3.0291, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.01.i17.i757), !noalias !286
  switch i8 %i.fn, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit798
    i8 0, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit
    i8 1, label %bb.an
  ]

bb.ao:                                            ; preds = %.lr.ph.preheader
  %i.fo = getelementptr inbounds nuw i8, ptr %i.es, i64 186
  %i.fp = load i16, ptr %i.fo, align 2, !noalias !286, !noundef !4
  %i.fq = zext i16 %i.fp to i64
  br label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit

_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i
  br label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit

_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit798: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i
  br label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit

_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit: ; preds = %bb.an, %bb.al, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit798, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit, %bb.am, %bb.ak, %.lr.ph.preheader, %bb.ao
  %.sroa.16.0 = phi ptr [ undef, %.lr.ph.preheader ], [ %.sroa.3.0291, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit ], [ %.sroa.3.0291, %bb.am ], [ undef, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i ], [ undef, %bb.ao ], [ %.sroa.3.0291, %bb.ak ], [ undef, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i ], [ %.sroa.3.0291, %bb.al ], [ %.sroa.3.0291, %bb.an ], [ %.sroa.3.0291, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit798 ]
  %.sroa.996.0 = phi i64 [ %.sroa.074.0290, %.lr.ph.preheader ], [ 0, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit ], [ 1, %bb.am ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i ], [ 3, %bb.ao ], [ 0, %bb.ak ], [ 3, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i ], [ 0, %bb.al ], [ 1, %bb.an ], [ 1, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit798 ]
  %.sroa.095.0 = phi i64 [ 0, %.lr.ph.preheader ], [ %.sroa.8.0.i.i764, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit ], [ %i.fh, %bb.am ], [ %i.fm, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i ], [ %i.fq, %bb.ao ], [ %i.ex, %bb.ak ], [ %.sroa.8.0.i.i764, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i ], [ %i.ex, %bb.al ], [ %i.fh, %bb.an ], [ %.sroa.8.0.i16.i756, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit.loopexit798 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.075.0292, i64 192
  %i.fs = icmp ult i64 %.sroa.081.0294, 12
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.081.0294
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !4, !noundef !4 ; 7 uses
  switch i64 %.sroa.083.0295, label %default.unreachable [
    i64 0, label %bb.ap
    i64 1, label %bb.ar
    i64 2, label %bb.at
    i64 3, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit
  ]

bb.ap:                                            ; preds = %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.384.0296) ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 186
  %i.fx = load i16, ptr %i.fw, align 2, !noalias !288, !noundef !4 ; 2 uses
  %i.fy = zext i16 %i.fx to i64                   ; 3 uses
  %.idx792 = shl nuw nsw i64 %i.fy, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx792
  %i.ga = icmp eq i16 %i.fx, 0
  br i1 %i.ga, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i91

bb.aq:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i91
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i90781, i64 8 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fz
  br i1 %i.gc, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i91

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i91: ; preds = %bb.ap, %bb.aq
  %.sroa.0.01.i.i90781 = phi ptr [ %i.gb, %bb.aq ], [ %i.fv, %bb.ap ] ; 2 uses
  %.sroa.8.0.i.i89780 = phi i64 [ %i.gd, %bb.aq ], [ 0, %bb.ap ] ; 2 uses
  %i.gd = add nuw nsw i64 %.sroa.8.0.i.i89780, 1  ; 2 uses
  %i.ge = tail call noundef i8 @_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.384.0296, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.01.i.i90781), !noalias !289
  switch i8 %i.ge, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit
    i8 0, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit
    i8 1, label %bb.aq
  ]

bb.ar:                                            ; preds = %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.384.0296) ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fu, i64 186
  %i.gh = load i16, ptr %i.gg, align 2, !noalias !290, !noundef !4 ; 2 uses
  %i.gi = zext i16 %i.gh to i64                   ; 3 uses
  %.idx791 = shl nuw nsw i64 %i.gi, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx791
  %i.gk = icmp eq i16 %i.gh, 0
  br i1 %i.gk, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i88

bb.as:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i88
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i17.i87773, i64 8 ; 2 uses
  %i.gm = add nuw nsw i64 %.sroa.8.0.i16.i86772, 1
  %i.gn = icmp eq ptr %i.gl, %i.gj
  br i1 %i.gn, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i88

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i88: ; preds = %bb.ar, %bb.as
  %.sroa.0.01.i17.i87773 = phi ptr [ %i.gl, %bb.as ], [ %i.gf, %bb.ar ] ; 2 uses
  %.sroa.8.0.i16.i86772 = phi i64 [ %i.gm, %bb.as ], [ 0, %bb.ar ] ; 3 uses
  %i.go = tail call noundef i8 @_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.384.0296, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.01.i17.i87773), !noalias !289
  switch i8 %i.go, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit794
    i8 0, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit
    i8 1, label %bb.as
  ]

bb.at:                                            ; preds = %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fu, i64 186
  %i.gq = load i16, ptr %i.gp, align 2, !noalias !289, !noundef !4
  %i.gr = zext i16 %i.gq to i64
  br label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit

_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i91
  br label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit

_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit794: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i88
  br label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit

_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit: ; preds = %bb.as, %bb.aq, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i88, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i91, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit794, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit, %bb.ar, %bb.ap, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit, %bb.at
  %.sroa.1699.0 = phi ptr [ undef, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit ], [ %.sroa.384.0296, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit ], [ %.sroa.384.0296, %bb.ar ], [ undef, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i88 ], [ undef, %bb.at ], [ %.sroa.384.0296, %bb.ap ], [ undef, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i91 ], [ %.sroa.384.0296, %bb.aq ], [ %.sroa.384.0296, %bb.as ], [ %.sroa.384.0296, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit794 ]
  %.sroa.998.0 = phi i64 [ %.sroa.083.0295, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit ], [ 0, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit ], [ 1, %bb.ar ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i88 ], [ 2, %bb.at ], [ 0, %bb.ap ], [ 3, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i91 ], [ 0, %bb.aq ], [ 1, %bb.as ], [ 1, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit794 ]
  %.sroa.097.0 = phi i64 [ 0, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB1K_.exit ], [ %.sroa.8.0.i.i89780, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit ], [ %i.gi, %bb.ar ], [ %.sroa.8.0.i16.i86772, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i18.i88 ], [ %i.gr, %bb.at ], [ %i.fy, %bb.ap ], [ %i.gd, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEEENtNtNtB8_6traits8iterator8Iterator4nextB1G_.exit.i.i91 ], [ %i.fy, %bb.aq ], [ %i.gi, %bb.as ], [ %.sroa.8.0.i16.i86772, %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB1K_.exit.loopexit794 ] ; 2 uses
  %.not = icmp eq i64 %i.et, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMss_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalEB1B_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = add i64 %i.b, -1
  store i64 %i.f, ptr %i.a, align 8
  store ptr null, ptr %i.e, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 288, i64 noundef 8) #14
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_16BalancingContextINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE15bulk_steal_leftB1r_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 186 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !4
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 186 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !noundef !4
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %i.k = add nuw nsw i64 %1, %i.j                 ; 3 uses
  %i.l = icmp samesign ult i64 %i.k, 12
  br i1 %i.l, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.e, %1                 ; 4 uses
  %i.n = trunc nuw i64 %i.m to i16
  store i16 %i.n, ptr %i.c, align 2
  %i.o = trunc nuw nsw i64 %i.k to i16
  store i16 %i.o, ptr %i.h, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %1
  %i.r = shl nuw nsw i64 %i.j, 3                  ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.p, i64 %i.r, i1 false), !alias.scope !307
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !308
  %i.u = add nuw nsw i64 %i.m, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.e, %i.u               ; 3 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node13move_to_sliceyECs8lmMd0ZksV9_6statrs.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13, !noalias !311
  unreachable

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node13move_to_sliceyECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.u
  %i.aa = shl nuw nsw i64 %i.v, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull readonly align 8 %i.z, i64 %i.aa, i1 false), !alias.scope !311
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ac, i64 %i.aa, i1 false), !alias.scope !312
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.m
  %i.ae = load double, ptr %i.ad, align 8, !noundef !4
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.m
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.val17 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.val17 ; 2 uses
  %i.am = load double, ptr %i.aj, align 8, !noundef !4
  store double %i.ae, ptr %i.aj, align 8
  %i.an = load i64, ptr %i.al, align 8, !noundef !4
  store i64 %i.ag, ptr %i.al, align 8
  %i.ao = getelementptr [8 x i8], ptr %i.g, i64 %1
  store double %i.am, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.v
  store i64 %i.an, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node13move_to_sliceyECs8lmMd0ZksV9_6statrs.exit
  br i1 %i.av, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit, label %bb.j, !prof !7

bb.h:                                             ; preds = %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node13move_to_sliceyECs8lmMd0ZksV9_6statrs.exit
  br i1 %i.av, label %bb.j, label %bb.k, !prof !6

_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aw, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aw = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.0.06.i.epil
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.ay, align 8
  %i.az = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  store i16 %i.az, ptr %i.ba, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit, label %bb.i, !llvm.loop !301

_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit: ; preds = %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 8 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %1
  %i.bd = add nuw nsw i64 %i.r, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bd, i1 false), !alias.scope !313
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.u
  %i.bg = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bf, i64 %i.bg, i1 false), !alias.scope !314
  %2 = add nuw nsw i64 %1, %i.j
  %i.bh = add nuw nsw i64 %2, 1                   ; 2 uses
  %xtraiter = and i64 %i.bh, 3                    ; 3 uses
  %i.bi = icmp samesign ult i64 %i.k, 3
  br i1 %i.bi, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bh, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bj = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.0.06.i
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.bl, align 8
  %i.bm = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 184
  store i16 %i.bm, ptr %i.bn, align 8
  %i.bo = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bj
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.bq, align 8
  %i.br = trunc nuw nsw i64 %i.bj to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 184
  store i16 %i.br, ptr %i.bs, align 8
  %i.bt = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bo
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bo to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 184
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bt
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bt to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 184
  store i16 %i.cb, ptr %i.cc, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_16BalancingContextINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE16bulk_steal_rightB1r_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 186 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !4 ; 6 uses
  %i.e = zext i16 %i.d to i64                     ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 186 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !noundef !4
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %i.k = add nuw nsw i64 %1, %i.e                 ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 12
  br i1 %i.l, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.j
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.j, %1                 ; 3 uses
  %i.n = trunc nuw nsw i64 %i.k to i16
  store i16 %i.n, ptr %i.c, align 2
  %i.o = trunc nuw i64 %i.m to i16
  store i16 %i.o, ptr %i.h, align 2
  %i.p = add nsw i64 %1, -1                       ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.g, i64 %1
  %i.r = load double, ptr %i.q, align 8, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val18 ; 2 uses
  %i.aa = load double, ptr %i.x, align 8, !noundef !4
  store double %i.r, ptr %i.x, align 8
  %i.ab = load i64, ptr %i.z, align 8, !noundef !4
  store i64 %i.u, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.e
  store double %i.aa, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.e
  store i64 %i.ab, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.ah = add nuw nsw i64 %i.e, 1                 ; 5 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = shl nuw nsw i64 %i.p, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull readonly align 8 %i.ag, i64 %i.aj, i1 false), !alias.scope !331
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull readonly align 8 %i.s, i64 %i.aj, i1 false), !alias.scope !332
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %1
  %i.am = shl nuw nsw i64 %i.m, 3                 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.al, i64 %i.am, i1 false), !alias.scope !333
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.an, i64 %i.am, i1 false), !alias.scope !334
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4
  %i.at = icmp eq i64 %i.as, 0                    ; 2 uses
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.at, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit25, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.e
  br i1 %i.at, label %bb.h, label %bb.i, !prof !6

_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit25, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil.preheader

_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader ], [ %i.da, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil

_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil: ; preds = %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.au, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil ], [ 0, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil.preheader ]
  %i.au = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.av = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i23.epil
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.ax, align 8
  %i.ay = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 184
  store i16 %i.ay, ptr %i.az, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit25, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil, !llvm.loop !325

_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit25: ; preds = %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 6 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ah
  %i.bd = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ba, i64 %i.bd, i1 false), !alias.scope !335
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %1
  %i.bf = add nuw nsw i64 %i.am, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bf, i1 false), !alias.scope !336
  %i.bg = icmp ult i16 %i.d, 11
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ah
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.b, ptr %i.bi, align 8
  %i.bj = trunc nuw nsw i64 %i.ah to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 184
  store i16 %i.bj, ptr %i.bk, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bm = icmp samesign ult i16 %i.d, 10
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.b, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bl to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 184
  store i16 %i.bp, ptr %i.bq, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.e, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.d, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.b, ptr %i.bu, align 8
  %i.bv = trunc nuw nsw i64 %i.br to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 184
  store i16 %i.bv, ptr %i.bw, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = add nuw nsw i64 %i.e, 4                 ; 2 uses
  %i.by = icmp samesign ult i16 %i.d, 8
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.b, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bx to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 184
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.e, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.d, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.b, ptr %i.cg, align 8
  %i.ch = trunc nuw nsw i64 %i.cd to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 184
  store i16 %i.ch, ptr %i.ci, align 8
  br label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader

_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cj = add nuw nsw i64 %i.j, 1
  %2 = sub nsw i64 %i.cj, %1                      ; 2 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.ck = icmp samesign ult i64 %i.m, 3
  br i1 %i.ck, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.epil.preheader, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader.new

_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader
  %unroll_iter = and i64 %2, -4
  br label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit

_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit: ; preds = %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader.new ], [ %i.da, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit ]
  %i.cl = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i23
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.cn, align 8
  %i.co = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 184
  store i16 %i.co, ptr %i.cp, align 8
  %i.cq = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cl
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.cs, align 8
  %i.ct = trunc nuw nsw i64 %i.cl to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 184
  store i16 %i.ct, ptr %i.cu, align 8
  %i.cv = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cq
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.cx, align 8
  %i.cy = trunc nuw nsw i64 %i.cq to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 184
  store i16 %i.cy, ptr %i.cz, align 8
  %i.da = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.db = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cv
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.dd, align 8
  %i.de = trunc nuw nsw i64 %i.cv to i16
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 184
  store i16 %i.de, ptr %i.df, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1N_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp ult i64 %i.d, 11
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.h, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB1L_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvMsS_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB1L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE12next_back_kvB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %.not20 = icmp eq i64 %i.e, 0
  br i1 %.not20, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.022 = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.4.021 = phi i64 [ %i.k, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.0.022, align 8, !noalias !339, !noundef !4 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.g = zext i16 %i.m to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.7.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.g, %._crit_edge.loopexit ]
  %.sroa.4.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.f, %._crit_edge.loopexit ]
  %i.h = add i64 %.sroa.7.0.lcssa, -1
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.lcssa, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.022, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.021, ptr %i.j, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.k = add i64 %.sroa.4.021, 1                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 184
  %i.m = load i16, ptr %i.l, align 8, !noalias !339 ; 2 uses
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge.loopexit

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE7next_kvB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 186
  %i.g = load i16, ptr %i.f, align 2, !noundef !4
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.022 = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.021 = phi i64 [ %i.n, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.022, align 8, !noalias !342, !noundef !4 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.k = zext i16 %i.p to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.n, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.j, %._crit_edge.loopexit ]
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.022, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.021, ptr %i.m, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.n = add i64 %.sroa.5.021, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 184
  %i.p = load i16, ptr %i.o, align 8, !noalias !342 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 186
  %i.r = load i16, ptr %i.q, align 2, !noundef !4
  %i.s = icmp ult i16 %i.p, %i.r
  br i1 %i.s, label %._crit_edge.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
