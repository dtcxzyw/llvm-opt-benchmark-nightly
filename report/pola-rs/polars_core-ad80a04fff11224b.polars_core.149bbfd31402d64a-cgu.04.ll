inline.NumInlined: 26264
inline.NumDeleted: 14847
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecnEINtB4_18SpecFromIterNestednINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterxENCNvMNtNtCs1LHh8CLbVkQ_11polars_core6series4fromNtB2U_6Series33__try_from_arrow_unchecked_with_mds2_0EE9from_iterB2W_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !250460
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #35, !dbg !250461
  unreachable, !dbg !250461

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecnE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterxENCNvMNtNtCs1LHh8CLbVkQ_11polars_core6series4fromNtB2m_6Series33__try_from_arrow_unchecked_with_mds2_0EEB2o_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !250462, !nonnull !13, !noundef !13 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !250463
  tail call void @llvm.assume(i1 %i.o), !dbg !250465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !250467
  store i64 %i.k, ptr %i.c, align 8, !dbg !250468
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !250468
  store ptr %i.n, ptr %i.p, align 8, !dbg !250468
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !250468 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !250468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !250469, !noalias !250479
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !250469
  store ptr %i.n, ptr %i.r, align 8, !dbg !250469, !noalias !250479
  store ptr %i.q, ptr %i.a, align 8, !dbg !250469, !noalias !250479
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !250469
  store i64 0, ptr %i.s, align 8, !dbg !250469, !noalias !250479
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterxENCNvMNtNtCs1LHh8CLbVkQ_11polars_core6series4fromNtB1w_6Series33__try_from_arrow_unchecked_with_mds2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB33_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4g_3VecnE14extend_trustedBN_E0E0EB1y_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !250484

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecnE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterxENCNvMNtNtCs1LHh8CLbVkQ_11polars_core6series4fromNtB2m_6Series33__try_from_arrow_unchecked_with_mds2_0EEB2o_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.e, !dbg !250487

bb.d:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecnE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterxENCNvMNtNtCs1LHh8CLbVkQ_11polars_core6series4fromNtB2m_6Series33__try_from_arrow_unchecked_with_mds2_0EEB2o_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !250490, !noalias !250479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !250491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !250492
  ret void, !dbg !250493

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !250494
  unreachable, !dbg !250494

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !250494
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexEE9from_iterCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !250495 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp slt i64 %1, %2, !dbg !250496        ; 2 uses
  %i.c = sub i64 %2, %1                           ; 4 uses
  %spec.select.i = select i1 %i.b, i64 %i.c, i64 0, !dbg !250502 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !250503
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %spec.select.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !250503
  %i.d = load i64, ptr %i.a, align 8, !dbg !250503, !range !1051, !noundef !13
  %i.e = trunc nuw i64 %i.d to i1, !dbg !250512
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !250513
  %i.g = load i64, ptr %i.f, align 8, !dbg !250513, !range !5506, !noundef !13 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !250513 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !250512, !prof !656

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !250514
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #35, !dbg !250515
  unreachable, !dbg !250515

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !250516, !nonnull !13, !noundef !13 ; 3 uses
  %i.k = icmp ule i64 %spec.select.i, %i.g, !dbg !250517
  tail call void @llvm.assume(i1 %i.k), !dbg !250519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !250521
  br i1 %i.b, label %.lr.ph.i.i.i.i.preheader, label %.loopexit, !dbg !250522

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs1LHh8CLbVkQ_11polars_core.exit.i.i
  %min.iters.check = icmp ult i64 %i.c, 4, !dbg !250522
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader8, label %vector.ph, !dbg !250522

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.c, -4                       ; 5 uses
  %i.l = add i64 %1, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body, !dbg !250522

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !250542 ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index, !dbg !250554 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !250561
  store <2 x i64> %vec.ind, ptr %i.m, align 8, !dbg !250561, !noalias !250564
  store <2 x i64> %step.add, ptr %i.n, align 8, !dbg !250561, !noalias !250564
  %index.next = add nuw i64 %index, 4, !dbg !250542 ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !250522
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !250522, !llvm.loop !250573

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec, !dbg !250522
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.preheader8, !dbg !250522

.lr.ph.i.i.i.i.preheader8:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.011.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i.i.i.i, !dbg !250522

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader8, %.lr.ph.i.i.i.i
  %i.p = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader8 ], !dbg !250542 ; 2 uses
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.0.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 2 uses
  %i.q = add nsw i64 %.sroa.0.011.i.i.i.i, 1, !dbg !250542 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.p, !dbg !250554
  store i64 %.sroa.0.011.i.i.i.i, ptr %i.r, align 8, !dbg !250561, !noalias !250564
  %i.s = add nuw i64 %i.p, 1, !dbg !250574        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.q, %2, !dbg !250577
  br i1 %exitcond.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !dbg !250522, !llvm.loop !250579

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %middle.block, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs1LHh8CLbVkQ_11polars_core.exit.i.i
  %.val5.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %n.vec, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i ], !dbg !250580
  store i64 %i.g, ptr %0, align 8, !dbg !250581
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !250581
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !250581
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !250581
  store i64 %.val5.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !250581
  ret void, !dbg !250582
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB37_12ChunkedArrayNtNtB39_9datatypes17FixedSizeListTypeE7to_list00EE9from_iterB39_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !250583 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !250584
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !250585
  %i.e = load i8, ptr %i.d, align 8, !dbg !250585, !range !15833, !alias.scope !250596, !noalias !250601, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1, !dbg !250585    ; 2 uses
  br i1 %i.f, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit.thread, label %bb.b, !dbg !250585

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !250604
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !250605
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250606), !dbg !250609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250610), !dbg !250609
  %i.i = load i64, ptr %i.g, align 8, !dbg !250612, !alias.scope !250615, !noalias !250616, !noundef !13 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !dbg !250617, !alias.scope !250618, !noalias !250619, !noundef !13 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.i, %i.j, !dbg !250612
  br i1 %.not.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit.thread, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit, !dbg !250620

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit: ; preds = %bb.b
  %i.k = sub nuw i64 %i.j, %i.i, !dbg !250621     ; 2 uses
  %.not = icmp eq i64 %i.k, -1, !dbg !250624
  %i.l = add nuw i64 %i.k, 1
  br i1 %.not, label %bb.h, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit.thread, !dbg !250634, !prof !250635

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit.thread: ; preds = %bb.b, %bb.a, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit
  %.sink.i.i9 = phi i64 [ %i.l, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !250636
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sink.i.i9, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !250636
  %i.m = load i64, ptr %i.b, align 8, !dbg !250636, !range !1051, !noundef !13
  %i.n = trunc nuw i64 %i.m to i1, !dbg !250645
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !250646
  %i.p = load i64, ptr %i.o, align 8, !dbg !250646, !range !5506, !noundef !13 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !250646 ; 2 uses
  br i1 %i.n, label %bb.c, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit, !dbg !250645, !prof !656

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit.thread
  %i.r = load i64, ptr %i.q, align 8, !dbg !250647
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #35, !dbg !250648
  unreachable, !dbg !250648

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit.thread
  %i.s = load ptr, ptr %i.q, align 8, !dbg !250649, !nonnull !13, !noundef !13 ; 4 uses
  %i.t = icmp ule i64 %.sink.i.i9, %i.p, !dbg !250650
  tail call void @llvm.assume(i1 %i.t), !dbg !250652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !250654
  store i64 %i.p, ptr %i.c, align 8, !dbg !250655
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !250655 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !dbg !250655
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !250655 ; 3 uses
  store i64 0, ptr %i.v, align 8, !dbg !250655
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250656), !dbg !250659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250661), !dbg !250659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250663), !dbg !250666
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250669), !dbg !250666
  br i1 %i.f, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i, label %bb.d, !dbg !250671

bb.d:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !250677
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !250678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250679), !dbg !250682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250683), !dbg !250682
  %i.y = load i64, ptr %i.w, align 8, !dbg !250685, !alias.scope !250687, !noalias !250692, !noundef !13 ; 2 uses
  %i.z = load i64, ptr %i.x, align 8, !dbg !250695, !alias.scope !250696, !noalias !250697, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.y, %i.z, !dbg !250685
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit.i.i, !dbg !250698

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit.i.i: ; preds = %bb.d
  %i.aa = sub nuw i64 %i.z, %i.y, !dbg !250699    ; 3 uses
  %.not.i.i3 = icmp eq i64 %i.aa, -1, !dbg !250701
  %i.ab = add nuw i64 %i.aa, 1
  br i1 %.not.i.i3, label %bb.g, label %bb.e, !dbg !250705, !prof !250635

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit.i.i
  %.not11.i.i = icmp ult i64 %i.aa, %i.p, !dbg !250708
  br i1 %.not11.i.i, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i, label %bb.f, !dbg !250713, !prof !250714

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.ab, i64 noundef 8, i64 noundef 8)
          to label %._RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i_crit_edge unwind label %bb.i, !dbg !250715

._RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.u, align 8, !dbg !250716, !alias.scope !250725, !noalias !250726
  %.pre10 = load i64, ptr %i.v, align 8, !dbg !250727, !alias.scope !250725, !noalias !250726
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i, !dbg !250715

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
          to label %.noexc4 unwind label %bb.i, !dbg !250731

.noexc4:                                          ; preds = %bb.g
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i: ; preds = %._RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i_crit_edge, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit, %bb.d, %bb.e
  %i.ac = phi i64 [ %.pre10, %._RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i_crit_edge ], [ 0, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit ], [ 0, %bb.d ], [ 0, %bb.e ], !dbg !250727
  %i.ad = phi ptr [ %.pre, %._RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i_crit_edge ], [ %i.s, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit ], [ %i.s, %bb.d ], [ %i.s, %bb.e ], !dbg !250716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !250732, !noalias !250734
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !250732
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !250732, !noalias !250734
  store ptr %i.v, ptr %i.a, align 8, !dbg !250732, !noalias !250734
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !250732
  store i64 %i.ac, ptr %i.af, align 8, !dbg !250732, !noalias !250734
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1J_12ChunkedArrayNtNtB1L_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3z_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4M_3VecxE14extend_trustedBN_E0E0EB1L_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i, !dbg !250735

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #35, !dbg !250738
  unreachable

bb.i:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i, %bb.g, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.k, !dbg !250739

bb.j:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !250742, !noalias !250734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !250743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !250744
  ret void, !dbg !250745

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !250746
  unreachable, !dbg !250746

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.i
  resume { ptr, i32 } %i.ag, !dbg !250746
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB39_12ChunkedArrayNtNtB3b_9datatypes17FixedSizeListTypeENtB37_12ChunkExplode7offsetss_0EE9from_iterB3b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !250747 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !250748
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !250749
  %i.e = load i8, ptr %i.d, align 8, !dbg !250749, !range !15833, !alias.scope !250754, !noalias !250759, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1, !dbg !250749    ; 2 uses
  br i1 %i.f, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread, label %bb.b, !dbg !250749

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !250762
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !250763
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250764), !dbg !250767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250768), !dbg !250767
  %i.i = load i64, ptr %i.g, align 8, !dbg !250770, !alias.scope !250772, !noalias !250773, !noundef !13 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !dbg !250774, !alias.scope !250775, !noalias !250776, !noundef !13 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.i, %i.j, !dbg !250770
  br i1 %.not.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit, !dbg !250777

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit: ; preds = %bb.b
  %i.k = sub nuw i64 %i.j, %i.i, !dbg !250778     ; 2 uses
  %.not = icmp eq i64 %i.k, -1, !dbg !250780
  %i.l = add nuw i64 %i.k, 1
  br i1 %.not, label %bb.h, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread, !dbg !250784, !prof !250635

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread: ; preds = %bb.b, %bb.a, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit
  %.sink.i.i9 = phi i64 [ %i.l, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !250785
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sink.i.i9, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !250785
  %i.m = load i64, ptr %i.b, align 8, !dbg !250785, !range !1051, !noundef !13
  %i.n = trunc nuw i64 %i.m to i1, !dbg !250794
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !250795
  %i.p = load i64, ptr %i.o, align 8, !dbg !250795, !range !5506, !noundef !13 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !250795 ; 2 uses
  br i1 %i.n, label %bb.c, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit, !dbg !250794, !prof !656

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread
  %i.r = load i64, ptr %i.q, align 8, !dbg !250796
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #35, !dbg !250797
  unreachable, !dbg !250797

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.thread
  %i.s = load ptr, ptr %i.q, align 8, !dbg !250798, !nonnull !13, !noundef !13 ; 4 uses
  %i.t = icmp ule i64 %.sink.i.i9, %i.p, !dbg !250799
  tail call void @llvm.assume(i1 %i.t), !dbg !250801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !250803
  store i64 %i.p, ptr %i.c, align 8, !dbg !250804
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !250804 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !dbg !250804
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !250804 ; 3 uses
  store i64 0, ptr %i.v, align 8, !dbg !250804
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250805), !dbg !250808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250810), !dbg !250808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250812), !dbg !250815
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250818), !dbg !250815
  br i1 %i.f, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i, label %bb.d, !dbg !250820

bb.d:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !250826
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !250827
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250828), !dbg !250831
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250832), !dbg !250831
  %i.y = load i64, ptr %i.w, align 8, !dbg !250834, !alias.scope !250836, !noalias !250841, !noundef !13 ; 2 uses
  %i.z = load i64, ptr %i.x, align 8, !dbg !250844, !alias.scope !250845, !noalias !250846, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.y, %i.z, !dbg !250834
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i.i, !dbg !250847

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i.i: ; preds = %bb.d
  %i.aa = sub nuw i64 %i.z, %i.y, !dbg !250848    ; 3 uses
  %.not.i.i3 = icmp eq i64 %i.aa, -1, !dbg !250850
  %i.ab = add nuw i64 %i.aa, 1
  br i1 %.not.i.i3, label %bb.g, label %bb.e, !dbg !250854, !prof !250635

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i.i
  %.not11.i.i = icmp ult i64 %i.aa, %i.p, !dbg !250857
  br i1 %.not11.i.i, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i, label %bb.f, !dbg !250862, !prof !250714

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.ab, i64 noundef 8, i64 noundef 8)
          to label %._RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i_crit_edge unwind label %bb.i, !dbg !250863

._RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.u, align 8, !dbg !250864, !alias.scope !250873, !noalias !250874
  %.pre10 = load i64, ptr %i.v, align 8, !dbg !250875, !alias.scope !250873, !noalias !250874
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i, !dbg !250863

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
          to label %.noexc4 unwind label %bb.i, !dbg !250879

.noexc4:                                          ; preds = %bb.g
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i: ; preds = %._RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i_crit_edge, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit, %bb.d, %bb.e
  %i.ac = phi i64 [ %.pre10, %._RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i_crit_edge ], [ 0, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit ], [ 0, %bb.d ], [ 0, %bb.e ], !dbg !250875
  %i.ad = phi ptr [ %.pre, %._RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i_crit_edge ], [ %i.s, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1LHh8CLbVkQ_11polars_core.exit ], [ %i.s, %bb.d ], [ %i.s, %bb.e ], !dbg !250864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !250880, !noalias !250882
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !250880
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !250880, !noalias !250882
  store ptr %i.v, ptr %i.a, align 8, !dbg !250880, !noalias !250882
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !250880
  store i64 %i.ac, ptr %i.af, align 8, !dbg !250880, !noalias !250882
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1L_12ChunkedArrayNtNtB1N_9datatypes17FixedSizeListTypeENtB1J_12ChunkExplode7offsetss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4l_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5y_3VecxE14extend_trustedBN_E0E0EB1N_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i, !dbg !250883

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #35, !dbg !250886
  unreachable

bb.i:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i, %bb.g, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.k, !dbg !250887

bb.j:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !250890, !noalias !250882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !250891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !250892
  ret void, !dbg !250893

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !250894
  unreachable, !dbg !250894

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.i
  resume { ptr, i32 } %i.ag, !dbg !250894
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2Z_12ChunkedArrayNtNtB31_9datatypes17FixedSizeListTypeENtB2X_12ChunkExplode19explode_and_offsets0EE9from_iterB31_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !250895 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !250896
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !250897
  %.val = load i64, ptr %i.d, align 8, !dbg !250897, !alias.scope !248969, !noalias !248972, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !250897
  %.val3 = load i64, ptr %i.e, align 8, !dbg !250897, !alias.scope !248972, !noalias !248969, !noundef !13
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3, i64 %.val), !dbg !250898 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !250902
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !250902
  %i.f = load i64, ptr %i.b, align 8, !dbg !250902, !range !1051, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1, !dbg !250911
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !250912
  %i.i = load i64, ptr %i.h, align 8, !dbg !250912, !range !5506, !noundef !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !250912 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2r_12ChunkedArrayNtNtB2t_9datatypes17FixedSizeListTypeENtB2p_12ChunkExplode19explode_and_offsets0EEB2t_.exit.i, !dbg !250911, !prof !656

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !250913
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #35, !dbg !250914
  unreachable, !dbg !250914

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2r_12ChunkedArrayNtNtB2t_9datatypes17FixedSizeListTypeENtB2p_12ChunkExplode19explode_and_offsets0EEB2t_.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !250915, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i, %i.i, !dbg !250916
  tail call void @llvm.assume(i1 %i.m), !dbg !250918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !250920
  store i64 %i.i, ptr %i.c, align 8, !dbg !250921
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !250921
  store ptr %i.l, ptr %i.n, align 8, !dbg !250921
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !250921 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !250921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !250922, !noalias !250932
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !250922
  store ptr %i.l, ptr %i.p, align 8, !dbg !250922, !noalias !250932
  store ptr %i.o, ptr %i.a, align 8, !dbg !250922, !noalias !250932
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !250922
  store i64 0, ptr %i.q, align 8, !dbg !250922, !noalias !250932
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1B_12ChunkedArrayNtNtB1D_9datatypes17FixedSizeListTypeENtB1z_12ChunkExplode19explode_and_offsets0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5z_3VecxE14extend_trustedBN_E0E0EB1D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !250939

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2r_12ChunkedArrayNtNtB2t_9datatypes17FixedSizeListTypeENtB2p_12ChunkExplode19explode_and_offsets0EEB2t_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.e, !dbg !250942

bb.d:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2r_12ChunkedArrayNtNtB2t_9datatypes17FixedSizeListTypeENtB2p_12ChunkExplode19explode_and_offsets0EEB2t_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !250945, !noalias !250932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !250946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !250947
  ret void, !dbg !250948

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !250949
  unreachable, !dbg !250949

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.r, !dbg !250949
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2Z_12ChunkedArrayNtNtB31_9datatypes17FixedSizeListTypeENtB2X_12ChunkExplode7offsets0EE9from_iterB31_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !250950 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !250951
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !250952
  %.val = load i64, ptr %i.d, align 8, !dbg !250952, !alias.scope !248969, !noalias !248972, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !250952
  %.val3 = load i64, ptr %i.e, align 8, !dbg !250952, !alias.scope !248972, !noalias !248969, !noundef !13
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3, i64 %.val), !dbg !250953 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !250957
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !250957
  %i.f = load i64, ptr %i.b, align 8, !dbg !250957, !range !1051, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1, !dbg !250966
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !250967
  %i.i = load i64, ptr %i.h, align 8, !dbg !250967, !range !5506, !noundef !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !250967 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2r_12ChunkedArrayNtNtB2t_9datatypes17FixedSizeListTypeENtB2p_12ChunkExplode7offsets0EEB2t_.exit.i, !dbg !250966, !prof !656

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !250968
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #35, !dbg !250969
  unreachable, !dbg !250969

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2r_12ChunkedArrayNtNtB2t_9datatypes17FixedSizeListTypeENtB2p_12ChunkExplode7offsets0EEB2t_.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !250970, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i, %i.i, !dbg !250971
  tail call void @llvm.assume(i1 %i.m), !dbg !250973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !250975
  store i64 %i.i, ptr %i.c, align 8, !dbg !250976
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !250976
  store ptr %i.l, ptr %i.n, align 8, !dbg !250976
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !250976 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !250976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !250977, !noalias !250987
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !250977
  store ptr %i.l, ptr %i.p, align 8, !dbg !250977, !noalias !250987
  store ptr %i.o, ptr %i.a, align 8, !dbg !250977, !noalias !250987
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !250977
  store i64 0, ptr %i.q, align 8, !dbg !250977, !noalias !250987
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1B_12ChunkedArrayNtNtB1D_9datatypes17FixedSizeListTypeENtB1z_12ChunkExplode7offsets0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB49_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5m_3VecxE14extend_trustedBN_E0E0EB1D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !250994

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2r_12ChunkedArrayNtNtB2t_9datatypes17FixedSizeListTypeENtB2p_12ChunkExplode7offsets0EEB2t_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.e, !dbg !250997

bb.d:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2r_12ChunkedArrayNtNtB2t_9datatypes17FixedSizeListTypeENtB2p_12ChunkExplode7offsets0EEB2t_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !251000, !noalias !250987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !251001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !251002
  ret void, !dbg !251003

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !251004
  unreachable, !dbg !251004

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.r, !dbg !251004
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecyEINtB4_18SpecFromIterNestedyINtNtNtCscgRAwXFJnXP_4core3ops5range5RangeyEE9from_iterCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !251005 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1), !dbg !251006 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !251009
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %spec.select.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !251009
  %i.b = load i64, ptr %i.a, align 8, !dbg !251009, !range !1051, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1, !dbg !251018
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !251019
  %i.e = load i64, ptr %i.d, align 8, !dbg !251019, !range !5506, !noundef !13 ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!250514 = !DILocation(line: 442, column: 17, scope: !15577, inlinedAt: !250504)
!250515 = !DILocation(line: 442, column: 25, scope: !15587, inlinedAt: !250504)
!250516 = !DILocation(line: 435, column: 16, scope: !15577, inlinedAt: !250504)
!250517 = !DILocation(line: 767, column: 9, scope: !15590, inlinedAt: !250518)
!250518 = distinct !DILocation(line: 438, column: 50, scope: !15592, inlinedAt: !250504)
!250519 = !DILocation(line: 210, column: 9, scope: !15594, inlinedAt: !250520)
!250520 = distinct !DILocation(line: 438, column: 21, scope: !15592, inlinedAt: !250504)
!250521 = !DILocation(line: 443, column: 9, scope: !15577, inlinedAt: !250504)
!250522 = !DILocation(line: 781, column: 12, scope: !250523, inlinedAt: !250524)
!250523 = distinct !DISubprogram(name: "spec_next<i64>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangexENtB5_17RangeIteratorImpl9spec_nextCs1LHh8CLbVkQ_11polars_core", scope: !2519, file: !2473, line: 780, type: !12, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250524 = distinct !DILocation(line: 866, column: 14, scope: !250525, inlinedAt: !250526)
!250525 = distinct !DISubprogram(name: "next<i64>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangexENtNtNtB7_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core", scope: !2474, file: !2473, line: 865, type: !12, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250526 = distinct !DILocation(line: 2686, column: 34, scope: !250527, inlinedAt: !250530)
!250527 = distinct !DILexicalBlock(scope: !250528, file: !678, line: 2686, column: 41)
!250528 = distinct !DILexicalBlock(scope: !250529, file: !678, line: 2685, column: 9)
!250529 = distinct !DISubprogram(name: "fold<core::ops::range::Range<i64>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i64, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i64, alloc::alloc::Global, core::ops::range::Range<i64>>>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB24_3VecxE14extend_trustedB3_E0E0ECs1LHh8CLbVkQ_11polars_core", scope: !679, file: !678, line: 2680, type: !12, scopeLine: 2680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250530 = distinct !DILocation(line: 887, column: 14, scope: !250531, inlinedAt: !250532)
!250531 = distinct !DISubprogram(name: "for_each<core::ops::range::Range<i64>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i64, alloc::alloc::Global, core::ops::range::Range<i64>>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1I_3VecxE14extend_trustedB3_E0ECs1LHh8CLbVkQ_11polars_core", scope: !679, file: !678, line: 877, type: !12, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250532 = distinct !DILocation(line: 4028, column: 26, scope: !250533, inlinedAt: !250538)
!250533 = distinct !DILexicalBlock(scope: !250534, file: !8, line: 4027, column: 17)
!250534 = distinct !DILexicalBlock(scope: !250535, file: !8, line: 4026, column: 17)
!250535 = distinct !DILexicalBlock(scope: !250536, file: !8, line: 4017, column: 40)
!250536 = distinct !DILexicalBlock(scope: !250537, file: !8, line: 4016, column: 9)
!250537 = distinct !DISubprogram(name: "extend_trusted<i64, alloc::alloc::Global, core::ops::range::Range<i64>>", linkageName: "_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexEECs1LHh8CLbVkQ_11polars_core", scope: !9, file: !8, line: 4015, type: !12, scopeLine: 4015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250538 = distinct !DILocation(line: 27, column: 14, scope: !250539, inlinedAt: !250540)
!250539 = distinct !DISubprogram(name: "spec_extend<i64, core::ops::range::Range<i64>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexEE11spec_extendCs1LHh8CLbVkQ_11polars_core", scope: !96060, file: !69681, line: 26, type: !12, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250540 = distinct !DILocation(line: 60, column: 16, scope: !250541)
!250541 = distinct !DILexicalBlock(scope: !250495, file: !95693, line: 51, column: 9)
!250542 = !DILocation(line: 2499, column: 26, scope: !250543, inlinedAt: !250544)
!250543 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_RNvMs1_NtCscgRAwXFJnXP_4core3numx15overflowing_add", scope: !94620, file: !94619, line: 2498, type: !12, scopeLine: 2498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250544 = distinct !DILocation(line: 2583, column: 42, scope: !250545, inlinedAt: !250547)
!250545 = distinct !DILexicalBlock(scope: !250546, file: !94619, line: 2582, column: 13)
!250546 = distinct !DISubprogram(name: "overflowing_add_unsigned", linkageName: "_RNvMs1_NtCscgRAwXFJnXP_4core3numx24overflowing_add_unsigned", scope: !94620, file: !94619, line: 2581, type: !12, scopeLine: 2581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250547 = distinct !DILocation(line: 614, column: 31, scope: !250548, inlinedAt: !250549)
!250548 = distinct !DISubprogram(name: "checked_add_unsigned", linkageName: "_RNvMs1_NtCscgRAwXFJnXP_4core3numx20checked_add_unsigned", scope: !94620, file: !94619, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250549 = distinct !DILocation(line: 198, column: 28, scope: !250550, inlinedAt: !250552)
!250550 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsE_NtNtCscgRAwXFJnXP_4core4iter5rangexNtB5_4Step17forward_unchecked", scope: !250551, file: !2473, line: 196, type: !12, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250551 = !DINamespace(name: "{impl#42}", scope: !2475)
!250552 = distinct !DILocation(line: 784, column: 35, scope: !250553, inlinedAt: !250524)
!250553 = distinct !DILexicalBlock(scope: !250523, file: !2473, line: 782, column: 13)
!250554 = !DILocation(line: 961, column: 18, scope: !250555, inlinedAt: !250556)
!250555 = distinct !DISubprogram(name: "add<i64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOx3addCs1LHh8CLbVkQ_11polars_core", scope: !52, file: !51, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250556 = distinct !DILocation(line: 4029, column: 36, scope: !250557, inlinedAt: !250558)
!250557 = distinct !DISubprogram(name: "{closure#0}<i64, alloc::alloc::Global, core::ops::range::Range<i64>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecxE14extend_trustedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexEE0Cs1LHh8CLbVkQ_11polars_core", scope: !1295, file: !8, line: 4028, type: !12, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250558 = distinct !DILocation(line: 884, column: 29, scope: !250559, inlinedAt: !250560)
!250559 = distinct !DISubprogram(name: "{closure#0}<i64, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i64, alloc::alloc::Global, core::ops::range::Range<i64>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecxE14extend_trustedINtNtNtBe_3ops5range5RangexEE0E0Cs1LHh8CLbVkQ_11polars_core", scope: !1299, file: !678, line: 884, type: !12, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250560 = distinct !DILocation(line: 2687, column: 21, scope: !250527, inlinedAt: !250530)
!250561 = !DILocation(line: 1921, column: 41, scope: !250562, inlinedAt: !250563)
!250562 = distinct !DISubprogram(name: "write<i64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writexECs1LHh8CLbVkQ_11polars_core", scope: !44, file: !1113, line: 1898, type: !12, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250563 = distinct !DILocation(line: 4029, column: 21, scope: !250557, inlinedAt: !250558)
!250564 = !{!250565, !250567, !250569, !250571}
!250565 = distinct !{!250565, !250566, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecxE14extend_trustedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexEE0Cs1LHh8CLbVkQ_11polars_core: argument 0"}
!250566 = distinct !{!250566, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecxE14extend_trustedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexEE0Cs1LHh8CLbVkQ_11polars_core"}
!250567 = distinct !{!250567, !250568, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecxE14extend_trustedINtNtNtBe_3ops5range5RangexEE0E0Cs1LHh8CLbVkQ_11polars_core: argument 0"}
!250568 = distinct !{!250568, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecxE14extend_trustedINtNtNtBe_3ops5range5RangexEE0E0Cs1LHh8CLbVkQ_11polars_core"}
!250569 = distinct !{!250569, !250570, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB24_3VecxE14extend_trustedB3_E0E0ECs1LHh8CLbVkQ_11polars_core: argument 0"}
!250570 = distinct !{!250570, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB24_3VecxE14extend_trustedB3_E0E0ECs1LHh8CLbVkQ_11polars_core"}
!250571 = distinct !{!250571, !250572, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1I_3VecxE14extend_trustedB3_E0ECs1LHh8CLbVkQ_11polars_core: argument 0"}
!250572 = distinct !{!250572, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangexENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1I_3VecxE14extend_trustedB3_E0ECs1LHh8CLbVkQ_11polars_core"}
!250573 = distinct !{!250573, !2551, !2552}
!250574 = !DILocation(line: 19, column: 9, scope: !250575, inlinedAt: !250576)
!250575 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !661, file: !660, line: 18, type: !12, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250576 = distinct !DILocation(line: 4033, column: 31, scope: !250557, inlinedAt: !250558)
!250577 = !DILocation(line: 1917, column: 50, scope: !250497, inlinedAt: !250578)
!250578 = distinct !DILocation(line: 781, column: 12, scope: !250523, inlinedAt: !250524)
!250579 = distinct !{!250579, !2552, !2551}
!250580 = !DILocation(line: 2690, column: 5, scope: !250529, inlinedAt: !250530)
!250581 = !DILocation(line: 61, column: 9, scope: !250541)
!250582 = !DILocation(line: 62, column: 6, scope: !250495)
!250583 = distinct !DISubprogram(name: "from_iter<i64, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::{impl#4}::to_list::{closure#0}::{closure_env#0}>>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB37_12ChunkedArrayNtNtB39_9datatypes17FixedSizeListTypeE7to_list00EE9from_iterB39_", scope: !96016, file: !95693, line: 50, type: !12, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250584 = !DILocation(line: 51, column: 13, scope: !250583)
!250585 = !DILocation(line: 563, column: 9, scope: !250586, inlinedAt: !250590)
!250586 = distinct !DISubprogram(name: "is_empty<usize>", linkageName: "_RNvMs8_NtNtCscgRAwXFJnXP_4core3ops5rangeINtB5_14RangeInclusivejE8is_emptyCs1LHh8CLbVkQ_11polars_core", scope: !250588, file: !250587, line: 559, type: !12, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250587 = !DIFile(filename: "library/core/src/ops/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "aa9e58e587ecf6fc84aabc8815f8ac79")
!250588 = !DINamespace(name: "RangeInclusive", scope: !250589)
!250589 = !DINamespace(name: "range", scope: !1122)
!250590 = distinct !DILocation(line: 1274, column: 17, scope: !250591, inlinedAt: !250593)
!250591 = distinct !DISubprogram(name: "size_hint<usize>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core", scope: !250592, file: !2473, line: 1273, type: !12, scopeLine: 1273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250592 = !DINamespace(name: "{impl#15}", scope: !2475)
!250593 = distinct !DILocation(line: 112, column: 19, scope: !250594, inlinedAt: !250595)
!250594 = distinct !DISubprogram(name: "size_hint<i64, core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::{impl#4}::to_list::{closure#0}::{closure_env#0}>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_", scope: !623, file: !622, line: 111, type: !12, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250595 = distinct !DILocation(line: 51, column: 41, scope: !250583)
!250596 = !{!250597, !250599}
!250597 = distinct !{!250597, !250598, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core: argument 1"}
!250598 = distinct !{!250598, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core"}
!250599 = distinct !{!250599, !250600, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_: argument 1"}
!250600 = distinct !{!250600, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_"}
!250601 = !{!250602, !250603}
!250602 = distinct !{!250602, !250598, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core: argument 0"}
!250603 = distinct !{!250603, !250600, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_: argument 0"}
!250604 = !DILocation(line: 112, column: 9, scope: !250594, inlinedAt: !250595)
!250605 = !DILocation(line: 563, column: 43, scope: !250586, inlinedAt: !250590)
!250606 = !{!250607}
!250607 = distinct !{!250607, !250608, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!250608 = distinct !{!250608, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le"}
!250609 = !DILocation(line: 563, column: 28, scope: !250586, inlinedAt: !250590)
!250610 = !{!250611}
!250611 = distinct !{!250611, !250608, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!250612 = !DILocation(line: 1919, column: 50, scope: !250613, inlinedAt: !250614)
!250613 = distinct !DISubprogram(name: "le", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le", scope: !21662, file: !1673, line: 1919, type: !12, scopeLine: 1919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250614 = distinct !DILocation(line: 563, column: 28, scope: !250586, inlinedAt: !250590)
!250615 = !{!250607, !250597, !250599}
!250616 = !{!250611, !250602, !250603}
!250617 = !DILocation(line: 1919, column: 59, scope: !250613, inlinedAt: !250614)
!250618 = !{!250611, !250597, !250599}
!250619 = !{!250607, !250602, !250603}
!250620 = !DILocation(line: 1274, column: 12, scope: !250591, inlinedAt: !250593)
!250621 = !DILocation(line: 275, column: 37, scope: !250622, inlinedAt: !250623)
!250622 = distinct !DISubprogram(name: "steps_between", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step13steps_between", scope: !21684, file: !2473, line: 272, type: !619, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250623 = distinct !DILocation(line: 1278, column: 20, scope: !250591, inlinedAt: !250593)
!250624 = !DILocation(line: 823, column: 37, scope: !250625, inlinedAt: !250626)
!250625 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_add", scope: !651, file: !650, line: 815, type: !12, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250626 = distinct !DILocation(line: 1279, column: 66, scope: !250627, inlinedAt: !250629)
!250627 = distinct !DISubprogram(name: "{closure#0}<usize>", linkageName: "_RNCNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBb_3ops5range14RangeInclusivejENtNtNtB9_6traits8iterator8Iterator9size_hint0Cs1LHh8CLbVkQ_11polars_core", scope: !250628, file: !2473, line: 1279, type: !12, scopeLine: 1279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250628 = !DINamespace(name: "size_hint", scope: !250592)
!250629 = distinct !DILocation(line: 1546, column: 24, scope: !250630, inlinedAt: !250632)
!250630 = distinct !DILexicalBlock(scope: !250631, file: !1175, line: 1546, column: 13)
!250631 = distinct !DISubprogram(name: "and_then<usize, usize, core::iter::range::{impl#15}::size_hint::{closure_env#0}<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE8and_thenjNCNvXsd_NtNtB5_4iter5rangeINtNtNtB5_3ops5range14RangeInclusivejENtNtNtB14_6traits8iterator8Iterator9size_hint0ECs1LHh8CLbVkQ_11polars_core", scope: !1176, file: !1175, line: 1541, type: !12, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250632 = distinct !DILocation(line: 1279, column: 43, scope: !250633, inlinedAt: !250593)
!250633 = distinct !DILexicalBlock(scope: !250591, file: !2473, line: 1278, column: 9)
!250634 = !DILocation(line: 51, column: 26, scope: !250583)
!250635 = !{!"branch_weights", !"expected", i32 4292820, i32 2143190828}
!250636 = !DILocation(line: 434, column: 15, scope: !15577, inlinedAt: !250637)
!250637 = distinct !DILocation(line: 177, column: 20, scope: !250638, inlinedAt: !250639)
!250638 = distinct !DISubprogram(name: "with_capacity_in<i64, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE16with_capacity_inCs1LHh8CLbVkQ_11polars_core", scope: !35, file: !28, line: 175, type: !12, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250639 = !DILocation(line: 977, column: 20, scope: !250640, inlinedAt: !250641)
!250640 = distinct !DISubprogram(name: "with_capacity_in<i64, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE16with_capacity_inCs1LHh8CLbVkQ_11polars_core", scope: !9, file: !8, line: 976, type: !12, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250641 = !DILocation(line: 524, column: 9, scope: !250642, inlinedAt: !250643)
!250642 = distinct !DISubprogram(name: "with_capacity<i64>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecxE13with_capacityCs1LHh8CLbVkQ_11polars_core", scope: !9, file: !8, line: 523, type: !12, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250643 = !DILocation(line: 52, column: 33, scope: !250644)
!250644 = distinct !DILexicalBlock(scope: !250583, file: !95693, line: 52, column: 13)
!250645 = !DILocation(line: 434, column: 9, scope: !15577, inlinedAt: !250637)
!250646 = !DILocation(line: 0, scope: !15577, inlinedAt: !250637)
!250647 = !DILocation(line: 442, column: 17, scope: !15577, inlinedAt: !250637)
!250648 = !DILocation(line: 442, column: 25, scope: !15587, inlinedAt: !250637)
!250649 = !DILocation(line: 435, column: 16, scope: !15577, inlinedAt: !250637)
!250650 = !DILocation(line: 767, column: 9, scope: !15590, inlinedAt: !250651)
!250651 = distinct !DILocation(line: 438, column: 50, scope: !15592, inlinedAt: !250637)
!250652 = !DILocation(line: 210, column: 9, scope: !15594, inlinedAt: !250653)
!250653 = distinct !DILocation(line: 438, column: 21, scope: !15592, inlinedAt: !250637)
!250654 = !DILocation(line: 443, column: 9, scope: !15577, inlinedAt: !250637)
!250655 = !DILocation(line: 977, column: 9, scope: !250640, inlinedAt: !250641)
!250656 = !{!250657}
!250657 = distinct !{!250657, !250658, !"_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE7to_list00EE11spec_extendB2R_: argument 0"}
!250658 = distinct !{!250658, !"_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE7to_list00EE11spec_extendB2R_"}
!250659 = !DILocation(line: 60, column: 16, scope: !250660)
!250660 = distinct !DILexicalBlock(scope: !250583, file: !95693, line: 51, column: 9)
!250661 = !{!250662}
!250662 = distinct !{!250662, !250658, !"_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE7to_list00EE11spec_extendB2R_: argument 1"}
!250663 = !{!250664}
!250664 = distinct !{!250664, !250665, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_: argument 0"}
!250665 = distinct !{!250665, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_"}
!250666 = !DILocation(line: 27, column: 14, scope: !250667, inlinedAt: !250668)
!250667 = distinct !DISubprogram(name: "spec_extend<i64, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::{impl#4}::to_list::{closure#0}::{closure_env#0}>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE7to_list00EE11spec_extendB2R_", scope: !96060, file: !69681, line: 26, type: !12, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250668 = distinct !DILocation(line: 60, column: 16, scope: !250660)
!250669 = !{!250670}
!250670 = distinct !{!250670, !250665, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_: argument 1"}
!250671 = !DILocation(line: 563, column: 9, scope: !250586, inlinedAt: !250672)
!250672 = distinct !DILocation(line: 1274, column: 17, scope: !250591, inlinedAt: !250673)
!250673 = distinct !DILocation(line: 112, column: 19, scope: !250594, inlinedAt: !250674)
!250674 = distinct !DILocation(line: 4016, column: 36, scope: !250675, inlinedAt: !250676)
!250675 = distinct !DISubprogram(name: "extend_trusted<i64, alloc::alloc::Global, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::{impl#4}::to_list::{closure#0}::{closure_env#0}>>", linkageName: "_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2z_12ChunkedArrayNtNtB2B_9datatypes17FixedSizeListTypeE7to_list00EEB2B_", scope: !9, file: !8, line: 4015, type: !12, scopeLine: 4015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250676 = distinct !DILocation(line: 27, column: 14, scope: !250667, inlinedAt: !250668)
!250677 = !DILocation(line: 112, column: 9, scope: !250594, inlinedAt: !250674)
!250678 = !DILocation(line: 563, column: 43, scope: !250586, inlinedAt: !250672)
!250679 = !{!250680}
!250680 = distinct !{!250680, !250681, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!250681 = distinct !{!250681, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le"}
!250682 = !DILocation(line: 563, column: 28, scope: !250586, inlinedAt: !250672)
!250683 = !{!250684}
!250684 = distinct !{!250684, !250681, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!250685 = !DILocation(line: 1919, column: 50, scope: !250613, inlinedAt: !250686)
!250686 = distinct !DILocation(line: 563, column: 28, scope: !250586, inlinedAt: !250672)
!250687 = !{!250680, !250688, !250690, !250670, !250662}
!250688 = distinct !{!250688, !250689, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core: argument 1"}
!250689 = distinct !{!250689, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core"}
!250690 = distinct !{!250690, !250691, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_: argument 1"}
!250691 = distinct !{!250691, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_"}
!250692 = !{!250684, !250693, !250694, !250664, !250657}
!250693 = distinct !{!250693, !250689, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core: argument 0"}
!250694 = distinct !{!250694, !250691, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1I_12ChunkedArrayNtNtB1K_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtB9_6traits8iterator8Iterator9size_hintB1K_: argument 0"}
!250695 = !DILocation(line: 1919, column: 59, scope: !250613, inlinedAt: !250686)
!250696 = !{!250684, !250688, !250690, !250670, !250662}
!250697 = !{!250680, !250693, !250694, !250664, !250657}
!250698 = !DILocation(line: 1274, column: 12, scope: !250591, inlinedAt: !250673)
!250699 = !DILocation(line: 275, column: 37, scope: !250622, inlinedAt: !250700)
!250700 = distinct !DILocation(line: 1278, column: 20, scope: !250591, inlinedAt: !250673)
!250701 = !DILocation(line: 823, column: 37, scope: !250625, inlinedAt: !250702)
!250702 = distinct !DILocation(line: 1279, column: 66, scope: !250627, inlinedAt: !250703)
!250703 = distinct !DILocation(line: 1546, column: 24, scope: !250630, inlinedAt: !250704)
!250704 = distinct !DILocation(line: 1279, column: 43, scope: !250633, inlinedAt: !250673)
!250705 = !DILocation(line: 4017, column: 16, scope: !250706, inlinedAt: !250676)
!250706 = distinct !DILexicalBlock(scope: !250707, file: !8, line: 4017, column: 40)
!250707 = distinct !DILexicalBlock(scope: !250675, file: !8, line: 4016, column: 9)
!250708 = !DILocation(line: 767, column: 9, scope: !2827, inlinedAt: !250709)
!250709 = distinct !DILocation(line: 673, column: 17, scope: !2829, inlinedAt: !250710)
!250710 = distinct !DILocation(line: 341, column: 29, scope: !2831, inlinedAt: !250711)
!250711 = distinct !DILocation(line: 1472, column: 18, scope: !2817, inlinedAt: !250712)
!250712 = distinct !DILocation(line: 4024, column: 18, scope: !250706, inlinedAt: !250676)
!250713 = !DILocation(line: 673, column: 12, scope: !2829, inlinedAt: !250710)
!250714 = !{!"branch_weights", !"expected", i32 2143184379, i32 4299269}
!250715 = !DILocation(line: 675, column: 17, scope: !2829, inlinedAt: !250710)
!250716 = !DILocation(line: 614, column: 9, scope: !250717, inlinedAt: !250718)
!250717 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, i64>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullxECs1LHh8CLbVkQ_11polars_core", scope: !29, file: !28, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250718 = distinct !DILocation(line: 609, column: 14, scope: !250719, inlinedAt: !250720)
!250719 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, i64>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrxECs1LHh8CLbVkQ_11polars_core", scope: !29, file: !28, line: 608, type: !12, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250720 = distinct !DILocation(line: 296, column: 20, scope: !250721, inlinedAt: !250722)
!250721 = distinct !DISubprogram(name: "ptr<i64, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE3ptrCs1LHh8CLbVkQ_11polars_core", scope: !35, file: !28, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250722 = distinct !DILocation(line: 2026, column: 18, scope: !250723, inlinedAt: !250724)
!250723 = distinct !DISubprogram(name: "as_mut_ptr<i64, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE10as_mut_ptrCs1LHh8CLbVkQ_11polars_core", scope: !9, file: !8, line: 2023, type: !12, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250724 = distinct !DILocation(line: 4026, column: 32, scope: !250706, inlinedAt: !250676)
!250725 = !{!250664, !250657}
!250726 = !{!250670, !250662}
!250727 = !DILocation(line: 14, column: 35, scope: !250728, inlinedAt: !250729)
!250728 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop3new", scope: !661, file: !660, line: 13, type: !12, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250729 = distinct !DILocation(line: 4027, column: 37, scope: !250730, inlinedAt: !250676)
!250730 = distinct !DILexicalBlock(scope: !250706, file: !8, line: 4026, column: 17)
!250731 = !DILocation(line: 4042, column: 13, scope: !250707, inlinedAt: !250676)
!250732 = !DILocation(line: 4028, column: 35, scope: !250733, inlinedAt: !250676)
!250733 = distinct !DILexicalBlock(scope: !250730, file: !8, line: 4027, column: 17)
!250734 = !{!250664, !250670, !250657, !250662}
!250735 = !DILocation(line: 887, column: 14, scope: !250736, inlinedAt: !250737)
!250736 = distinct !DISubprogram(name: "for_each<core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::{impl#4}::to_list::{closure#0}::{closure_env#0}>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i64, alloc::alloc::Global, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::{impl#4}::to_list::{closure#0}::{closure_env#0}>>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusivejENCNCNvMs2_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB1D_12ChunkedArrayNtNtB1F_9datatypes17FixedSizeListTypeE7to_list00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4j_3VecxE14extend_trustedB3_E0EB1F_", scope: !679, file: !678, line: 877, type: !12, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250737 = distinct !DILocation(line: 4028, column: 26, scope: !250733, inlinedAt: !250676)
!250738 = !DILocation(line: 57, column: 18, scope: !250583)
!250739 = !DILocation(line: 810, column: 1, scope: !6996, inlinedAt: !250740)
!250740 = distinct !DILocation(line: 810, column: 1, scope: !6998, inlinedAt: !250741)
!250741 = distinct !DILocation(line: 62, column: 5, scope: !250583)
!250742 = !DILocation(line: 4034, column: 18, scope: !250733, inlinedAt: !250676)
!250743 = !DILocation(line: 61, column: 9, scope: !250660)
!250744 = !DILocation(line: 62, column: 5, scope: !250583)
!250745 = !DILocation(line: 62, column: 6, scope: !250583)
!250746 = !DILocation(line: 50, column: 5, scope: !250583)
!250747 = distinct !DISubprogram(name: "from_iter<i64, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::ops::explode_and_offsets::{impl#2}::offsets::{closure_env#1}>>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB39_12ChunkedArrayNtNtB3b_9datatypes17FixedSizeListTypeENtB37_12ChunkExplode7offsetss_0EE9from_iterB3b_", scope: !96016, file: !95693, line: 50, type: !12, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250748 = !DILocation(line: 51, column: 13, scope: !250747)
!250749 = !DILocation(line: 563, column: 9, scope: !250586, inlinedAt: !250750)
!250750 = distinct !DILocation(line: 1274, column: 17, scope: !250591, inlinedAt: !250751)
!250751 = distinct !DILocation(line: 112, column: 19, scope: !250752, inlinedAt: !250753)
!250752 = distinct !DISubprogram(name: "size_hint<i64, core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::ops::explode_and_offsets::{impl#2}::offsets::{closure_env#1}>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_", scope: !623, file: !622, line: 111, type: !12, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250753 = distinct !DILocation(line: 51, column: 41, scope: !250747)
!250754 = !{!250755, !250757}
!250755 = distinct !{!250755, !250756, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core: argument 1"}
!250756 = distinct !{!250756, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core"}
!250757 = distinct !{!250757, !250758, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_: argument 1"}
!250758 = distinct !{!250758, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_"}
!250759 = !{!250760, !250761}
!250760 = distinct !{!250760, !250756, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core: argument 0"}
!250761 = distinct !{!250761, !250758, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_: argument 0"}
!250762 = !DILocation(line: 112, column: 9, scope: !250752, inlinedAt: !250753)
!250763 = !DILocation(line: 563, column: 43, scope: !250586, inlinedAt: !250750)
!250764 = !{!250765}
!250765 = distinct !{!250765, !250766, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!250766 = distinct !{!250766, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le"}
!250767 = !DILocation(line: 563, column: 28, scope: !250586, inlinedAt: !250750)
!250768 = !{!250769}
!250769 = distinct !{!250769, !250766, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!250770 = !DILocation(line: 1919, column: 50, scope: !250613, inlinedAt: !250771)
!250771 = distinct !DILocation(line: 563, column: 28, scope: !250586, inlinedAt: !250750)
!250772 = !{!250765, !250755, !250757}
!250773 = !{!250769, !250760, !250761}
!250774 = !DILocation(line: 1919, column: 59, scope: !250613, inlinedAt: !250771)
!250775 = !{!250769, !250755, !250757}
!250776 = !{!250765, !250760, !250761}
!250777 = !DILocation(line: 1274, column: 12, scope: !250591, inlinedAt: !250751)
!250778 = !DILocation(line: 275, column: 37, scope: !250622, inlinedAt: !250779)
!250779 = distinct !DILocation(line: 1278, column: 20, scope: !250591, inlinedAt: !250751)
!250780 = !DILocation(line: 823, column: 37, scope: !250625, inlinedAt: !250781)
!250781 = distinct !DILocation(line: 1279, column: 66, scope: !250627, inlinedAt: !250782)
!250782 = distinct !DILocation(line: 1546, column: 24, scope: !250630, inlinedAt: !250783)
!250783 = distinct !DILocation(line: 1279, column: 43, scope: !250633, inlinedAt: !250751)
!250784 = !DILocation(line: 51, column: 26, scope: !250747)
!250785 = !DILocation(line: 434, column: 15, scope: !15577, inlinedAt: !250786)
!250786 = distinct !DILocation(line: 177, column: 20, scope: !250787, inlinedAt: !250788)
!250787 = distinct !DISubprogram(name: "with_capacity_in<i64, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE16with_capacity_inCs1LHh8CLbVkQ_11polars_core", scope: !35, file: !28, line: 175, type: !12, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250788 = !DILocation(line: 977, column: 20, scope: !250789, inlinedAt: !250790)
!250789 = distinct !DISubprogram(name: "with_capacity_in<i64, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE16with_capacity_inCs1LHh8CLbVkQ_11polars_core", scope: !9, file: !8, line: 976, type: !12, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250790 = !DILocation(line: 524, column: 9, scope: !250791, inlinedAt: !250792)
!250791 = distinct !DISubprogram(name: "with_capacity<i64>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecxE13with_capacityCs1LHh8CLbVkQ_11polars_core", scope: !9, file: !8, line: 523, type: !12, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250792 = !DILocation(line: 52, column: 33, scope: !250793)
!250793 = distinct !DILexicalBlock(scope: !250747, file: !95693, line: 52, column: 13)
!250794 = !DILocation(line: 434, column: 9, scope: !15577, inlinedAt: !250786)
!250795 = !DILocation(line: 0, scope: !15577, inlinedAt: !250786)
!250796 = !DILocation(line: 442, column: 17, scope: !15577, inlinedAt: !250786)
!250797 = !DILocation(line: 442, column: 25, scope: !15587, inlinedAt: !250786)
!250798 = !DILocation(line: 435, column: 16, scope: !15577, inlinedAt: !250786)
!250799 = !DILocation(line: 767, column: 9, scope: !15590, inlinedAt: !250800)
!250800 = distinct !DILocation(line: 438, column: 50, scope: !15592, inlinedAt: !250786)
!250801 = !DILocation(line: 210, column: 9, scope: !15594, inlinedAt: !250802)
!250802 = distinct !DILocation(line: 438, column: 21, scope: !15592, inlinedAt: !250786)
!250803 = !DILocation(line: 443, column: 9, scope: !15577, inlinedAt: !250786)
!250804 = !DILocation(line: 977, column: 9, scope: !250789, inlinedAt: !250790)
!250805 = !{!250806}
!250806 = distinct !{!250806, !250807, !"_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2R_12ChunkedArrayNtNtB2T_9datatypes17FixedSizeListTypeENtB2P_12ChunkExplode7offsetss_0EE11spec_extendB2T_: argument 0"}
!250807 = distinct !{!250807, !"_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2R_12ChunkedArrayNtNtB2T_9datatypes17FixedSizeListTypeENtB2P_12ChunkExplode7offsetss_0EE11spec_extendB2T_"}
!250808 = !DILocation(line: 60, column: 16, scope: !250809)
!250809 = distinct !DILexicalBlock(scope: !250747, file: !95693, line: 51, column: 9)
!250810 = !{!250811}
!250811 = distinct !{!250811, !250807, !"_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2R_12ChunkedArrayNtNtB2T_9datatypes17FixedSizeListTypeENtB2P_12ChunkExplode7offsetss_0EE11spec_extendB2T_: argument 1"}
!250812 = !{!250813}
!250813 = distinct !{!250813, !250814, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_: argument 0"}
!250814 = distinct !{!250814, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_"}
!250815 = !DILocation(line: 27, column: 14, scope: !250816, inlinedAt: !250817)
!250816 = distinct !DISubprogram(name: "spec_extend<i64, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::ops::explode_and_offsets::{impl#2}::offsets::{closure_env#1}>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2R_12ChunkedArrayNtNtB2T_9datatypes17FixedSizeListTypeENtB2P_12ChunkExplode7offsetss_0EE11spec_extendB2T_", scope: !96060, file: !69681, line: 26, type: !12, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250817 = distinct !DILocation(line: 60, column: 16, scope: !250809)
!250818 = !{!250819}
!250819 = distinct !{!250819, !250814, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_: argument 1"}
!250820 = !DILocation(line: 563, column: 9, scope: !250586, inlinedAt: !250821)
!250821 = distinct !DILocation(line: 1274, column: 17, scope: !250591, inlinedAt: !250822)
!250822 = distinct !DILocation(line: 112, column: 19, scope: !250752, inlinedAt: !250823)
!250823 = distinct !DILocation(line: 4016, column: 36, scope: !250824, inlinedAt: !250825)
!250824 = distinct !DISubprogram(name: "extend_trusted<i64, alloc::alloc::Global, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::ops::explode_and_offsets::{impl#2}::offsets::{closure_env#1}>>", linkageName: "_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2B_12ChunkedArrayNtNtB2D_9datatypes17FixedSizeListTypeENtB2z_12ChunkExplode7offsetss_0EEB2D_", scope: !9, file: !8, line: 4015, type: !12, scopeLine: 4015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250825 = distinct !DILocation(line: 27, column: 14, scope: !250816, inlinedAt: !250817)
!250826 = !DILocation(line: 112, column: 9, scope: !250752, inlinedAt: !250823)
!250827 = !DILocation(line: 563, column: 43, scope: !250586, inlinedAt: !250821)
!250828 = !{!250829}
!250829 = distinct !{!250829, !250830, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!250830 = distinct !{!250830, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le"}
!250831 = !DILocation(line: 563, column: 28, scope: !250586, inlinedAt: !250821)
!250832 = !{!250833}
!250833 = distinct !{!250833, !250830, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!250834 = !DILocation(line: 1919, column: 50, scope: !250613, inlinedAt: !250835)
!250835 = distinct !DILocation(line: 563, column: 28, scope: !250586, inlinedAt: !250821)
!250836 = !{!250829, !250837, !250839, !250819, !250811}
!250837 = distinct !{!250837, !250838, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core: argument 1"}
!250838 = distinct !{!250838, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core"}
!250839 = distinct !{!250839, !250840, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_: argument 1"}
!250840 = distinct !{!250840, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_"}
!250841 = !{!250833, !250842, !250843, !250813, !250806}
!250842 = distinct !{!250842, !250838, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core: argument 0"}
!250843 = distinct !{!250843, !250840, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1K_12ChunkedArrayNtNtB1M_9datatypes17FixedSizeListTypeENtB1I_12ChunkExplode7offsetss_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_: argument 0"}
!250844 = !DILocation(line: 1919, column: 59, scope: !250613, inlinedAt: !250835)
!250845 = !{!250833, !250837, !250839, !250819, !250811}
!250846 = !{!250829, !250842, !250843, !250813, !250806}
!250847 = !DILocation(line: 1274, column: 12, scope: !250591, inlinedAt: !250822)
!250848 = !DILocation(line: 275, column: 37, scope: !250622, inlinedAt: !250849)
!250849 = distinct !DILocation(line: 1278, column: 20, scope: !250591, inlinedAt: !250822)
!250850 = !DILocation(line: 823, column: 37, scope: !250625, inlinedAt: !250851)
!250851 = distinct !DILocation(line: 1279, column: 66, scope: !250627, inlinedAt: !250852)
!250852 = distinct !DILocation(line: 1546, column: 24, scope: !250630, inlinedAt: !250853)
!250853 = distinct !DILocation(line: 1279, column: 43, scope: !250633, inlinedAt: !250822)
!250854 = !DILocation(line: 4017, column: 16, scope: !250855, inlinedAt: !250825)
!250855 = distinct !DILexicalBlock(scope: !250856, file: !8, line: 4017, column: 40)
!250856 = distinct !DILexicalBlock(scope: !250824, file: !8, line: 4016, column: 9)
!250857 = !DILocation(line: 767, column: 9, scope: !2827, inlinedAt: !250858)
!250858 = distinct !DILocation(line: 673, column: 17, scope: !2829, inlinedAt: !250859)
!250859 = distinct !DILocation(line: 341, column: 29, scope: !2831, inlinedAt: !250860)
!250860 = distinct !DILocation(line: 1472, column: 18, scope: !2817, inlinedAt: !250861)
!250861 = distinct !DILocation(line: 4024, column: 18, scope: !250855, inlinedAt: !250825)
!250862 = !DILocation(line: 673, column: 12, scope: !2829, inlinedAt: !250859)
!250863 = !DILocation(line: 675, column: 17, scope: !2829, inlinedAt: !250859)
!250864 = !DILocation(line: 614, column: 9, scope: !250865, inlinedAt: !250866)
!250865 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, i64>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullxECs1LHh8CLbVkQ_11polars_core", scope: !29, file: !28, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250866 = distinct !DILocation(line: 609, column: 14, scope: !250867, inlinedAt: !250868)
!250867 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, i64>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrxECs1LHh8CLbVkQ_11polars_core", scope: !29, file: !28, line: 608, type: !12, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250868 = distinct !DILocation(line: 296, column: 20, scope: !250869, inlinedAt: !250870)
!250869 = distinct !DISubprogram(name: "ptr<i64, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE3ptrCs1LHh8CLbVkQ_11polars_core", scope: !35, file: !28, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250870 = distinct !DILocation(line: 2026, column: 18, scope: !250871, inlinedAt: !250872)
!250871 = distinct !DISubprogram(name: "as_mut_ptr<i64, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE10as_mut_ptrCs1LHh8CLbVkQ_11polars_core", scope: !9, file: !8, line: 2023, type: !12, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250872 = distinct !DILocation(line: 4026, column: 32, scope: !250855, inlinedAt: !250825)
!250873 = !{!250813, !250806}
!250874 = !{!250819, !250811}
!250875 = !DILocation(line: 14, column: 35, scope: !250876, inlinedAt: !250877)
!250876 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop3new", scope: !661, file: !660, line: 13, type: !12, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250877 = distinct !DILocation(line: 4027, column: 37, scope: !250878, inlinedAt: !250825)
!250878 = distinct !DILexicalBlock(scope: !250855, file: !8, line: 4026, column: 17)
!250879 = !DILocation(line: 4042, column: 13, scope: !250856, inlinedAt: !250825)
!250880 = !DILocation(line: 4028, column: 35, scope: !250881, inlinedAt: !250825)
!250881 = distinct !DILexicalBlock(scope: !250878, file: !8, line: 4027, column: 17)
!250882 = !{!250813, !250819, !250806, !250811}
!250883 = !DILocation(line: 887, column: 14, scope: !250884, inlinedAt: !250885)
!250884 = distinct !DISubprogram(name: "for_each<core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::ops::explode_and_offsets::{impl#2}::offsets::{closure_env#1}>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i64, alloc::alloc::Global, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, polars_core::chunked_array::ops::explode_and_offsets::{impl#2}::offsets::{closure_env#1}>>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1F_12ChunkedArrayNtNtB1H_9datatypes17FixedSizeListTypeENtB1D_12ChunkExplode7offsetss_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecxE14extend_trustedB3_E0EB1H_", scope: !679, file: !678, line: 877, type: !12, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250885 = distinct !DILocation(line: 4028, column: 26, scope: !250881, inlinedAt: !250825)
!250886 = !DILocation(line: 57, column: 18, scope: !250747)
!250887 = !DILocation(line: 810, column: 1, scope: !6996, inlinedAt: !250888)
!250888 = distinct !DILocation(line: 810, column: 1, scope: !6998, inlinedAt: !250889)
!250889 = distinct !DILocation(line: 62, column: 5, scope: !250747)
!250890 = !DILocation(line: 4034, column: 18, scope: !250881, inlinedAt: !250825)
!250891 = !DILocation(line: 61, column: 9, scope: !250809)
!250892 = !DILocation(line: 62, column: 5, scope: !250747)
!250893 = !DILocation(line: 62, column: 6, scope: !250747)
!250894 = !DILocation(line: 50, column: 5, scope: !250747)
!250895 = distinct !DISubprogram(name: "from_iter<i64, core::iter::adapters::map::Map<core::ops::range::Range<usize>, polars_core::chunked_array::ops::explode_and_offsets::{impl#2}::explode_and_offsets::{closure_env#0}>>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB2Z_12ChunkedArrayNtNtB31_9datatypes17FixedSizeListTypeENtB2X_12ChunkExplode19explode_and_offsets0EE9from_iterB31_", scope: !96016, file: !95693, line: 50, type: !12, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250896 = !DILocation(line: 51, column: 13, scope: !250895)
!250897 = !DILocation(line: 51, column: 41, scope: !250895)
!250898 = !DILocation(line: 871, column: 12, scope: !21631, inlinedAt: !250899)
!250899 = distinct !DILocation(line: 112, column: 19, scope: !250900, inlinedAt: !250901)
!250900 = distinct !DISubprogram(name: "size_hint<i64, core::ops::range::Range<usize>, polars_core::chunked_array::ops::explode_and_offsets::{impl#2}::explode_and_offsets::{closure_env#0}>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops19explode_and_offsetsINtB1A_12ChunkedArrayNtNtB1C_9datatypes17FixedSizeListTypeENtB1y_12ChunkExplode19explode_and_offsets0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1C_", scope: !623, file: !622, line: 111, type: !619, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250901 = distinct !DILocation(line: 51, column: 41, scope: !250895)
!250902 = !DILocation(line: 434, column: 15, scope: !15577, inlinedAt: !250903)
!250903 = distinct !DILocation(line: 177, column: 20, scope: !250904, inlinedAt: !250905)
!250904 = distinct !DISubprogram(name: "with_capacity_in<i64, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE16with_capacity_inCs1LHh8CLbVkQ_11polars_core", scope: !35, file: !28, line: 175, type: !12, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250905 = !DILocation(line: 977, column: 20, scope: !250906, inlinedAt: !250907)
!250906 = distinct !DISubprogram(name: "with_capacity_in<i64, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE16with_capacity_inCs1LHh8CLbVkQ_11polars_core", scope: !9, file: !8, line: 976, type: !12, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250907 = !DILocation(line: 524, column: 9, scope: !250908, inlinedAt: !250909)
!250908 = distinct !DISubprogram(name: "with_capacity<i64>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecxE13with_capacityCs1LHh8CLbVkQ_11polars_core", scope: !9, file: !8, line: 523, type: !12, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!250909 = !DILocation(line: 52, column: 33, scope: !250910)
!250910 = distinct !DILexicalBlock(scope: !250895, file: !95693, line: 52, column: 13)
!250911 = !DILocation(line: 434, column: 9, scope: !15577, inlinedAt: !250903)
!250912 = !DILocation(line: 0, scope: !15577, inlinedAt: !250903)
!250913 = !DILocation(line: 442, column: 17, scope: !15577, inlinedAt: !250903)
!250914 = !DILocation(line: 442, column: 25, scope: !15587, inlinedAt: !250903)
end_hunk_1
