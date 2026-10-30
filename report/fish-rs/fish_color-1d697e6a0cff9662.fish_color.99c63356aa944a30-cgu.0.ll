Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_color-1d697e6a0cff9662.fish_color.99c63356aa944a30-cgu.0?download=true
inline.NumInlined: 99
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdcxgzuWc7wi_10fish_color:bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #21
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.m, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define i24 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color10to_color24(i32 %0) unnamed_addr #1 {
bb.a:
  %i.a = and i32 %0, 255
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %0, 8
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i24
  ret i24 %.sroa.4.0.extract.trunc

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 75 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color12is_grayscale(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !104, !noundef !5
  switch i8 %i.a, label %default.unreachable2 [
    i8 0, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val = load i8, ptr %i.b, align 1, !noundef !5 ; 3 uses
  %i.c = icmp ult i8 %.val, 17
  %switch.maskindex = zext nneg i8 %.val to i32
  %switch.shifted = lshr i32 98689, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  %i.d = icmp ugt i8 %.val, -25
  %spec.select = or i1 %or.cond, %i.d
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !noundef !5  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !noundef !5
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread

_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread: ; preds = %bb.b, %bb.c, %bb.a, %bb.a, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ %spec.select, %bb.b ], [ %i.l, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !noundef !5
  %i.l = icmp eq i8 %i.f, %i.k
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread
}

; Function Attrs: nonlazybind uwtable
define noundef i8 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color13to_name_index(i32 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %.sroa.42.0.extract.shift = lshr i32 %0, 8      ; 2 uses
  %trunc = trunc i32 %0 to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.c
  ], !prof !107

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 111 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.42.0.extract.trunc = trunc i32 %.sroa.42.0.extract.shift to i8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.b = trunc nuw i32 %.sroa.42.0.extract.shift to i24
  %i.c = tail call fastcc noundef i64 @_RNvCsdcxgzuWc7wi_10fish_color13convert_color(i24 %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @4, i64 noundef 16) ; 2 uses
  %i.d = icmp ugt i64 %i.c, 255
  br i1 %i.d, label %bb.f, label %_RNvCsdcxgzuWc7wi_10fish_color20term16_color_for_rgb.exit, !prof !9

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108
  store i8 2, ptr %i.a, align 1, !noalias !108
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

_RNvCsdcxgzuWc7wi_10fish_color20term16_color_for_rgb.exit: ; preds = %bb.e
  %i.e = trunc nuw i64 %i.c to i8
  br label %bb.g

bb.g:                                             ; preds = %_RNvCsdcxgzuWc7wi_10fish_color20term16_color_for_rgb.exit, %bb.d
  %.sroa.03.0 = phi i8 [ %.sroa.42.0.extract.trunc, %bb.d ], [ %i.e, %_RNvCsdcxgzuWc7wi_10fish_color20term16_color_for_rgb.exit ]
  ret i8 %.sroa.03.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 16, 0) i8 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color16to_term256_index(i32 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = and i32 %0, 255
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.f, !prof !8

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %0, 8
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i24
  %i.d = tail call fastcc noundef i64 @_RNvCsdcxgzuWc7wi_10fish_color13convert_color(i24 %.sroa.4.0.extract.trunc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @6, i64 noundef 240) ; 3 uses
  %i.e = icmp ugt i64 %i.d, -17
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.d, 239
  br i1 %i.f, label %bb.d, label %_RNvCsdcxgzuWc7wi_10fish_color21term256_color_for_rgb.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  store i8 2, ptr %i.a, align 1, !noalias !111
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19
  unreachable

_RNvCsdcxgzuWc7wi_10fish_color21term256_color_for_rgb.exit: ; preds = %bb.c
  %i.g = trunc nuw i64 %i.d to i8
  %i.h = add nuw i8 %i.g, 16
  ret i8 %i.h

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color17named_color_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !126
  %i.b = tail call noundef align 8 dereferenceable_or_null(352) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 352, i64 noundef 8) #21, !noalias !126 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 352) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 22, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.f = phi ptr [ %i.b, %bb.c ], [ %i.v, %.noexc ]
  %i.g = phi i64 [ 0, %bb.c ], [ %i.y, %.noexc ]  ; 8 uses
  %.sroa.0.0.idx.i = phi i64 [ 0, %bb.c ], [ %.sroa.0.2.idx.i, %.noexc ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.0.1.idx.i = phi i64 [ %.sroa.0.0.idx.i, %bb.d ], [ %.sroa.0.1.add.i, %bb.f ] ; 3 uses
  %i.h = icmp eq i64 %.sroa.0.1.idx.i, 528
  br i1 %i.h, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCsdcxgzuWc7wi_10fish_color10NamedColorENCNvMs_B1C_NtB1C_5Color17named_color_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.1.ptr.i = getelementptr inbounds nuw i8, ptr @44, i64 %.sroa.0.1.idx.i ; 3 uses
  %.sroa.0.1.add.i = add nuw nsw i64 %.sroa.0.1.idx.i, 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ptr.i, i64 20
  %i.j = load i8, ptr %i.i, align 4, !range !128, !alias.scope !129, !noalias !130, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %.split.loop.exit6.i.i.i

.split.loop.exit6.i.i.i:                          ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ptr.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !129, !noalias !130
  %i.n = load ptr, ptr %.sroa.0.1.ptr.i, align 8, !alias.scope !129, !noalias !130, !nonnull !5, !align !10
  %i.o = insertvalue { ptr, i64 } poison, ptr %i.n, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 %i.m, 1
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCsdcxgzuWc7wi_10fish_color10NamedColorENCNvMs_B1C_NtB1C_5Color17named_color_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCsdcxgzuWc7wi_10fish_color10NamedColorENCNvMs_B1C_NtB1C_5Color17named_color_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.i: ; preds = %bb.e, %.split.loop.exit6.i.i.i
  %.sroa.0.2.idx.i = phi i64 [ %.sroa.0.1.add.i, %.split.loop.exit6.i.i.i ], [ 528, %bb.e ]
  %.merged.i.i.i = phi { ptr, i64 } [ %i.p, %.split.loop.exit6.i.i.i ], [ { ptr null, i64 undef }, %bb.e ] ; 2 uses
  %i.q = extractvalue { ptr, i64 } %.merged.i.i.i, 0 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %.merged.i.i.i, 1
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB1T_5slice4iter4IterNtCsdcxgzuWc7wi_10fish_color10NamedColorENCNvMs_B3f_NtB3f_5Color17named_color_names0EEB3f_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCsdcxgzuWc7wi_10fish_color10NamedColorENCNvMs_B1C_NtB1C_5Color17named_color_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.i
  %i.s = icmp samesign ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.s)
  %i.t = load i64, ptr %i.a, align 8, !range !4, !alias.scope !127, !noundef !5
  %i.u = icmp eq i64 %i.g, %i.t
  br i1 %i.u, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCsdcxgzuWc7wi_10fish_color.exit.i, label %.noexc

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCsdcxgzuWc7wi_10fish_color.exit.i: ; preds = %bb.g
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdcxgzuWc7wi_10fish_color(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.g, i64 noundef range(i64 1, 0) 1)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCsdcxgzuWc7wi_10fish_color.exit.i..noexc_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCsdcxgzuWc7wi_10fish_color.exit.i..noexc_crit_edge: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCsdcxgzuWc7wi_10fish_color.exit.i
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !127
  br label %.noexc

.noexc:                                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCsdcxgzuWc7wi_10fish_color.exit.i..noexc_crit_edge, %bb.g
  %i.v = phi ptr [ %.pre, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCsdcxgzuWc7wi_10fish_color.exit.i..noexc_crit_edge ], [ %i.f, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.w, align 8, !noalias !127, !captures !131
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.r, ptr %i.x, align 8, !noalias !127
  %i.y = add nuw nsw i64 %i.g, 1                  ; 2 uses
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !127
  br label %bb.d

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCsdcxgzuWc7wi_10fish_color.exit.i, %bb.i
  %lpad.loopexit.split-lp9 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.z = icmp eq i64 %.val, 0
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECsdcxgzuWc7wi_10fish_color.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.aa = shl nuw i64 %.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECsdcxgzuWc7wi_10fish_color.exit

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB1T_5slice4iter4IterNtCsdcxgzuWc7wi_10fish_color10NamedColorENCNvMs_B3f_NtB3f_5Color17named_color_names0EEB3f_.exit: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCsdcxgzuWc7wi_10fish_color10NamedColorENCNvMs_B1C_NtB1C_5Color17named_color_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.ab = load i64, ptr %i.a, align 8, !range !4, !alias.scope !132, !noundef !5
  %i.ac = icmp eq i64 %i.g, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB1T_5slice4iter4IterNtCsdcxgzuWc7wi_10fish_color10NamedColorENCNvMs_B3f_NtB3f_5Color17named_color_names0EEB3f_.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8grow_oneCsdcxgzuWc7wi_10fish_color(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB1T_5slice4iter4IterNtCsdcxgzuWc7wi_10fish_color10NamedColorENCNvMs_B3f_NtB3f_5Color17named_color_names0EEB3f_.exit, %bb.i
  %1 = load ptr, ptr %i.d, align 8, !alias.scope !132, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.g ; 2 uses
  store ptr @48, ptr %i.ad, align 8, !noalias !132, !captures !131
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 6, ptr %i.ae, align 8, !noalias !132
  %i.af = add nuw nsw i64 %i.g, 1
  store i64 %i.af, ptr %i.e, align 8, !alias.scope !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECsdcxgzuWc7wi_10fish_color.exit: ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp9
}

; Function Attrs: nonlazybind uwtable
define range(i32 1, -253) i32 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color9from_wstr(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [4 x i8], align 4                 ; 3 uses
  %i.e = alloca [4 x i8], align 4                 ; 3 uses
  %i.f = alloca [4 x i8], align 4                 ; 3 uses
  %i.g = alloca [4 x i8], align 4                 ; 3 uses
  %i.h = alloca [4 x i8], align 4                 ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 7 uses
  %i.k = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j, ptr noundef nonnull @48, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @48, i64 24))
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstrs_0EBK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 @33, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @33, i64 20), ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j)
  %i.m = icmp eq i8 %i.l, 1
  %i.n = select i1 %i.m, i64 0, i64 11, !unpredictable !5 ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 5                  ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.o ; 2 uses
  %.val13.1.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !177, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val14.1.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !177, !noundef !5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val13.1.i.i.i.i, i64 %.val14.1.i.i.i.i
  %i.s = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %.val13.1.i.i.i.i, ptr noundef nonnull readonly %i.r, ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j)
  %i.t = icmp eq i8 %i.s, 1
  %i.u = select i1 %i.t, i64 %i.n, i64 %i.o, !unpredictable !5 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 3                  ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.v ; 2 uses
  %.val13.2.i.i.i.i = load ptr, ptr %i.w, align 8, !noalias !177, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val14.2.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !177, !noundef !5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val13.2.i.i.i.i, i64 %.val14.2.i.i.i.i
  %i.z = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %.val13.2.i.i.i.i, ptr noundef nonnull readonly %i.y, ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j)
  %i.aa = icmp eq i8 %i.z, 1
  %i.ab = select i1 %i.aa, i64 %i.u, i64 %i.v, !unpredictable !5 ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.ac ; 2 uses
  %.val13.3.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !177, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val14.3.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !177, !noundef !5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val13.3.i.i.i.i, i64 %.val14.3.i.i.i.i
  %i.ag = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %.val13.3.i.i.i.i, ptr noundef nonnull readonly %i.af, ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j)
  %i.ah = icmp eq i8 %i.ag, 1
  %i.ai = select i1 %i.ah, i64 %i.ab, i64 %i.ac, !unpredictable !5 ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.aj ; 2 uses
  %.val13.4.i.i.i.i = load ptr, ptr %i.ak, align 8, !noalias !177, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val14.4.i.i.i.i = load i64, ptr %i.al, align 8, !noalias !177, !noundef !5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val13.4.i.i.i.i, i64 %.val14.4.i.i.i.i
  %i.an = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %.val13.4.i.i.i.i, ptr noundef nonnull readonly %i.am, ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j)
  %i.ao = icmp eq i8 %i.an, 1
  %i.ap = select i1 %i.ao, i64 %i.ai, i64 %i.aj, !unpredictable !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.ap ; 2 uses
  %.val17.i.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !177, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val18.i.i.i.i = load i64, ptr %i.ar, align 8, !noalias !177, !noundef !5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val17.i.i.i.i, i64 %.val18.i.i.i.i
  %i.at = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %.val17.i.i.i.i, ptr noundef nonnull readonly %i.as, ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.at, 0
  %i.au = icmp eq i8 %i.at, -1
  %i.av = zext i1 %i.au to i64
  %i.aw = add nuw nsw i64 %i.ap, %i.av            ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit.thread15

bb.c:                                             ; preds = %bb.b
  %i.ax = icmp samesign ult i64 %i.aw, 22
  br i1 %i.ax, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 22, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #19, !noalias !178
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit: ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !noalias !178, !noundef !5
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = or disjoint i32 %i.bc, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstrs_0EBK_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit.thread15: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.be = icmp eq i64 %1, 0
  br i1 %i.be, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstrs_0EBK_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit.thread15
  %i.bf = load i32, ptr %0, align 4, !alias.scope !182, !noalias !183, !noundef !5 ; 4 uses
  %i.bg = xor i32 %i.bf, 55296
  %i.bh = add i32 %i.bg, -1114112
  %i.bi = icmp ult i32 %i.bh, -1112064
  br i1 %i.bi, label %.split.i.i.i.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !184
  store i32 %i.bf, ptr %i.h, align 4, !noalias !184
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !183
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %bb.e
  %i.bj = icmp ult i32 %i.bf, 1114112
  tail call void @llvm.assume(i1 %i.bj)
  %cond.i.i.i = icmp eq i32 %i.bf, 35             ; 2 uses
  %i.bk = sext i1 %cond.i.i.i to i64
  %.sroa.8.0.i.i.i = add i64 %1, %i.bk            ; 2 uses
  %.sroa.0.0.idx.i.i.i = select i1 %cond.i.i.i, i64 4, i64 0
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i.i.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !182
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.8.0.i.i.i, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.idx.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !noalias !182
  switch i64 %.sroa.8.0.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i [
    i64 3, label %bb.f
    i64 6, label %bb.k
  ]

bb.f:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.bo = load i32, ptr %.sroa.0.0.i.i.i, align 4, !alias.scope !182, !noalias !185, !noundef !5 ; 6 uses
  %i.bp = xor i32 %i.bo, 55296
  %i.bq = add i32 %i.bp, -1114112
  %i.br = icmp ult i32 %i.bq, -1112064
  br i1 %i.br, label %.split.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !186
  store i32 %i.bo, ptr %i.g, align 4, !noalias !186
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !185
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i.i: ; preds = %bb.f
  %i.bs = icmp ult i32 %i.bo, 1114112
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp samesign ugt i32 %i.bo, 57
  %i.bu = add nsw i32 %i.bo, -65
  %i.bv = and i32 %i.bu, -33
  %i.bw = add nuw nsw i32 %i.bv, 10
  %i.bx = add nsw i32 %i.bo, -48
  %.sroa.02.0.i.i.i.i.i.i = select i1 %i.bt, i32 %i.bw, i32 %i.bx ; 2 uses
  %i.by = icmp ult i32 %.sroa.02.0.i.i.i.i.i.i, 16
  br i1 %i.by, label %bb.g, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i.i
  %i.bz = mul nuw nsw i32 %.sroa.02.0.i.i.i.i.i.i, 17
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.cb = load i32, ptr %i.bn, align 4, !alias.scope !182, !noalias !187, !noundef !5 ; 6 uses
  %i.cc = xor i32 %i.cb, 55296
  %i.cd = add i32 %i.cc, -1114112
  %i.ce = icmp ult i32 %i.cd, -1112064
  br i1 %i.ce, label %.split.i.i84.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit85.i.i.i

.split.i.i84.i.i.i:                               ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !188
  store i32 %i.cb, ptr %i.f, align 4, !noalias !188
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !187
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit85.i.i.i: ; preds = %bb.g
  %i.cf = icmp ult i32 %i.cb, 1114112
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i32 %i.cb, 57
  %i.ch = add nsw i32 %i.cb, -65
  %i.ci = and i32 %i.ch, -33
  %i.cj = add nuw nsw i32 %i.ci, 10
  %i.ck = add nsw i32 %i.cb, -48
  %.sroa.02.0.i.i.i81.i.i.i = select i1 %i.cg, i32 %i.cj, i32 %i.ck ; 2 uses
  %i.cl = icmp ult i32 %.sroa.02.0.i.i.i81.i.i.i, 16
  br i1 %i.cl, label %bb.h, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit85.i.i.i
  %i.cm = mul nuw nsw i32 %.sroa.02.0.i.i.i81.i.i.i, 17
  %i.cn = load i32, ptr %i.ca, align 4, !alias.scope !182, !noalias !189, !noundef !5 ; 6 uses
  %i.co = xor i32 %i.cn, 55296
  %i.cp = add i32 %i.co, -1114112
  %i.cq = icmp ult i32 %i.cp, -1112064
  br i1 %i.cq, label %.split.i.i89.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit90.i.i.i

.split.i.i89.i.i.i:                               ; preds = %bb.h
end_hunk_0
