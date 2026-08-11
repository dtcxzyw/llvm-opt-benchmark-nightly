inline.NumInlined: 17049
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39309
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !39309
  store ptr %i.q, ptr %i.a, align 8, !noalias !39309
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !39309
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsj_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %spec.select.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !range !79, !noundef !8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !107, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #27
  unreachable

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.i = icmp ule i64 %spec.select.i, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = icmp ult i64 %1, %2
  br i1 %i.j, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.k = sub nuw i64 %2, %1                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.k, -4                       ; 5 uses
  %i.l = add i64 %1, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %vec.ind, ptr %i.m, align 8, !noalias !39316
  store <2 x i64> %step.add, ptr %i.n, align 8, !noalias !39316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !39325

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.preheader8

.lr.ph.i.i.i.i.preheader8:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.011.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader8, %.lr.ph.i.i.i.i
  %i.p = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 2 uses
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.0.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 2 uses
  %i.q = add nuw i64 %.sroa.0.011.i.i.i.i, 1      ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.p
  store i64 %.sroa.0.011.i.i.i.i, ptr %i.r, align 8, !noalias !39316
  %i.s = add nuw i64 %i.p, 1                      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !39326

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %middle.block, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val5.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %n.vec, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i ]
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val5.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EE9from_iterB37_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !5531, !alias.scope !39327, !noalias !39332, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.f, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39338)
  %i.i = load i64, ptr %i.g, align 8, !alias.scope !39340, !noalias !39341, !noundef !8 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !alias.scope !39342, !noalias !39343, !noundef !8 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.i, %i.j
  br i1 %.not.i.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.thread, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit: ; preds = %bb.b
  %i.k = sub nuw i64 %i.j, %i.i                   ; 2 uses
  %.not = icmp eq i64 %i.k, -1
  %i.l = add nuw i64 %i.k, 1
  br i1 %.not, label %bb.h, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.thread, !prof !39344

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.thread: ; preds = %bb.b, %bb.a, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit
  %.sink.i.i9 = phi i64 [ %i.l, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sink.i.i9, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.m = load i64, ptr %i.b, align 8, !range !79, !noundef !8
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !107, !noundef !8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.n, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.thread
  %i.r = load i64, ptr %i.q, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.thread
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.t = icmp ule i64 %.sink.i.i9, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.p, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.v, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39353)
  br i1 %i.f, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39358)
  %i.y = load i64, ptr %i.w, align 8, !alias.scope !39360, !noalias !39365, !noundef !8 ; 2 uses
  %i.z = load i64, ptr %i.x, align 8, !alias.scope !39368, !noalias !39369, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.y, %i.z
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i.i: ; preds = %bb.d
  %i.aa = sub nuw i64 %i.z, %i.y                  ; 2 uses
  %.not.i.i3 = icmp eq i64 %i.aa, -1
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  br i1 %.not.i.i3, label %bb.g, label %bb.e, !prof !39344

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i.i
  %2 = icmp ugt i64 %i.ab, %i.p
  br i1 %2, label %bb.f, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i, !prof !39370

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.ab, i64 noundef 4, i64 noundef 4)
          to label %._RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i_crit_edge unwind label %bb.i

._RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.u, align 8, !alias.scope !39371, !noalias !39372
  %.pre10 = load i64, ptr %i.v, align 8, !alias.scope !39371, !noalias !39372
  br label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %bb.g
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i: ; preds = %._RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i_crit_edge, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, %bb.d, %bb.e
  %i.ac = phi i64 [ %.pre10, %._RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i_crit_edge ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %bb.d ], [ 0, %bb.e ]
  %i.ad = phi ptr [ %.pre, %._RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i_crit_edge ], [ %i.s, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.s, %bb.d ], [ %i.s, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39373
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !39373
  store ptr %i.v, ptr %i.a, align 8, !noalias !39373
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.af, align 8, !noalias !39373
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB48_3VeclE14extend_trustedBN_E0E0EB1J_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27
  unreachable

bb.i:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i, %bb.g, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.j:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  resume { ptr, i32 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EE9from_iterB2X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !alias.scope !38839, !noalias !38842, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load i64, ptr %i.e, align 8, !alias.scope !38842, !noalias !38839, !noundef !8
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3, i64 %.val) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.f = load i64, ptr %i.b, align 8, !range !79, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EEB2p_.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EEB2p_.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39374
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !39374
  store ptr %i.o, ptr %i.a, align 8, !noalias !39374
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !39374
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2W_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB49_3VeclE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EEB2p_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EEB2p_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EE9from_iterB2X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !alias.scope !38839, !noalias !38842, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load i64, ptr %i.e, align 8, !alias.scope !38842, !noalias !38839, !noundef !8
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3, i64 %.val) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.f = load i64, ptr %i.b, align 8, !range !79, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EEB2p_.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EEB2p_.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39381
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !39381
  store ptr %i.o, ptr %i.a, align 8, !noalias !39381
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !39381
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2W_8for_each4callxNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB49_3VecxE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EEB2p_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EEB2p_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB6_3map3MapIB1I_NtNtB2c_6string6StringENCB3r_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB3v_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  %i.f = alloca [112 x i8], align 8               ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!39170 = !{!39171, !39173, !39174, !39176}
!39171 = distinct !{!39171, !39172, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EEB3o_: argument 0"}
!39172 = distinct !{!39172, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EEB3o_"}
!39173 = distinct !{!39173, !39172, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EEB3o_: argument 1"}
!39174 = distinct !{!39174, !39175, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EE11spec_extendB3G_: argument 0"}
!39175 = distinct !{!39175, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EE11spec_extendB3G_"}
!39176 = distinct !{!39176, !39175, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EE11spec_extendB3G_: argument 1"}
!39177 = !{!39178, !39180, !39181, !39183}
!39178 = distinct !{!39178, !39179, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EEB3o_: argument 0"}
!39179 = distinct !{!39179, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EEB3o_"}
!39180 = distinct !{!39180, !39179, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EEB3o_: argument 1"}
!39181 = distinct !{!39181, !39182, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EE11spec_extendB3G_: argument 0"}
!39182 = distinct !{!39182, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EE11spec_extendB3G_"}
!39183 = distinct !{!39183, !39182, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EE11spec_extendB3G_: argument 1"}
!39184 = !{!39185, !39187, !39188, !39190}
!39185 = distinct !{!39185, !39186, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EEB3o_: argument 0"}
!39186 = distinct !{!39186, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EEB3o_"}
!39187 = distinct !{!39187, !39186, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EEB3o_: argument 1"}
!39188 = distinct !{!39188, !39189, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EE11spec_extendB3G_: argument 0"}
!39189 = distinct !{!39189, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EE11spec_extendB3G_"}
!39190 = distinct !{!39190, !39189, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EE11spec_extendB3G_: argument 1"}
!39191 = !{!39192, !39194, !39195, !39197}
!39192 = distinct !{!39192, !39193, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EEB3B_: argument 0"}
!39193 = distinct !{!39193, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EEB3B_"}
!39194 = distinct !{!39194, !39193, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EEB3B_: argument 1"}
!39195 = distinct !{!39195, !39196, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2j_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EE11spec_extendB3T_: argument 0"}
!39196 = distinct !{!39196, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2j_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EE11spec_extendB3T_"}
!39197 = distinct !{!39197, !39196, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2j_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EE11spec_extendB3T_: argument 1"}
!39198 = !{!39199}
!39199 = distinct !{!39199, !39200, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB29_5chain5ChainINtNtNtB2d_5slice4iter4IterBT_EB3j_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39200 = distinct !{!39200, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB29_5chain5ChainINtNtNtB2d_5slice4iter4IterBT_EB3j_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core"}
!39201 = !{!39202}
!39202 = distinct !{!39202, !39203, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB1R_5chain5ChainINtNtNtB1V_5slice4iter4IterBG_EB31_EEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39203 = distinct !{!39203, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB1R_5chain5ChainINtNtNtB1V_5slice4iter4IterBG_EB31_EEECs14kWLkQVSKO_14deltalake_core"}
!39204 = !{!39202, !39205, !39199, !39206}
!39205 = distinct !{!39205, !39203, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB1R_5chain5ChainINtNtNtB1V_5slice4iter4IterBG_EB31_EEECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39206 = distinct !{!39206, !39200, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB29_5chain5ChainINtNtNtB2d_5slice4iter4IterBT_EB3j_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39207 = !{!39202, !39199}
!39208 = !{!39205, !39206}
!39209 = !{!39210, !39212, !39202, !39205, !39199, !39206}
!39210 = distinct !{!39210, !39211, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEB1h_EENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3t_3VecB1H_E14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39211 = distinct !{!39211, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEB1h_EENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3t_3VecB1H_E14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core"}
!39212 = distinct !{!39212, !39211, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEB1h_EENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3t_3VecB1H_E14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39213 = !{!39210, !39202, !39205, !39199, !39206}
!39214 = !{!39215}
!39215 = distinct !{!39215, !39216, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBT_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39216 = distinct !{!39216, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBT_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core"}
!39217 = !{!39218}
!39218 = distinct !{!39218, !39219, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBG_EEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39219 = distinct !{!39219, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBG_EEECs14kWLkQVSKO_14deltalake_core"}
!39220 = !{!39218, !39221, !39215, !39222}
!39221 = distinct !{!39221, !39219, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBG_EEECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39222 = distinct !{!39222, !39216, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBT_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39223 = !{!39218, !39215}
!39224 = !{!39221, !39222}
!39225 = !{!39226, !39228}
!39226 = distinct !{!39226, !39227, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3r_14LogDataHandler10pick_statss_0EEB3x_: argument 0"}
!39227 = distinct !{!39227, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3r_14LogDataHandler10pick_statss_0EEB3x_"}
!39228 = distinct !{!39228, !39229, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterINtNtB8_4sync3ArcBU_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3J_14LogDataHandler10pick_statss_0EE11spec_extendB3P_: argument 0"}
!39229 = distinct !{!39229, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterINtNtB8_4sync3ArcBU_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3J_14LogDataHandler10pick_statss_0EE11spec_extendB3P_"}
!39230 = !{!39231, !39233}
!39231 = distinct !{!39231, !39232, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3t_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EEB3z_: argument 0"}
!39232 = distinct !{!39232, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3t_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EEB3z_"}
!39233 = distinct !{!39233, !39234, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterINtNtB8_4sync3ArcBU_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3L_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EE11spec_extendB3R_: argument 0"}
!39234 = distinct !{!39234, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterINtNtB8_4sync3ArcBU_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3L_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EE11spec_extendB3R_"}
!39235 = !{!39236, !39238, !39239}
!39236 = distinct !{!39236, !39237, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39237 = distinct !{!39237, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core"}
!39238 = distinct !{!39238, !39237, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!39239 = distinct !{!39239, !39240, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2x_3VecRBQ_E14extend_trustedBF_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39240 = distinct !{!39240, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2x_3VecRBQ_E14extend_trustedBF_E0ECs14kWLkQVSKO_14deltalake_core"}
!39241 = distinct !{!39241, !15353, !15354}
!39242 = distinct !{!39242, !15354, !15353}
!39243 = !{!39244, !39246, !39247}
!39244 = distinct !{!39244, !39245, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39245 = distinct !{!39245, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core"}
!39246 = distinct !{!39246, !39245, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!39247 = distinct !{!39247, !39248, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2Y_3VecRBQ_E14extend_trustedBF_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39248 = distinct !{!39248, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2Y_3VecRBQ_E14extend_trustedBF_E0ECs14kWLkQVSKO_14deltalake_core"}
!39249 = distinct !{!39249, !15353, !15354}
!39250 = distinct !{!39250, !15354, !15353}
!39251 = !{!39252}
!39252 = distinct !{!39252, !39253, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecbEINtB4_10SpecExtendbINtNtB6_5drain5DrainbEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39253 = distinct !{!39253, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecbEINtB4_10SpecExtendbINtNtB6_5drain5DrainbEE11spec_extendCs14kWLkQVSKO_14deltalake_core"}
!39254 = !{!39255}
!39255 = distinct !{!39255, !39256, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39256 = distinct !{!39256, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core"}
!39257 = !{!39255, !39258, !39252, !39259}
!39258 = distinct !{!39258, !39256, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39259 = distinct !{!39259, !39253, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecbEINtB4_10SpecExtendbINtNtB6_5drain5DrainbEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39260 = !{!39255, !39252}
!39261 = !{!39258, !39259}
!39262 = !{!39263}
!39263 = distinct !{!39263, !39264, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39264 = distinct !{!39264, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core"}
!39265 = !{!39266}
!39266 = distinct !{!39266, !39267, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39267 = distinct !{!39267, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core"}
!39268 = !{!39269, !39266, !39263}
!39269 = distinct !{!39269, !39270, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0:pre.rot"}
!39270 = distinct !{!39270, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core"}
!39271 = !{!39272, !39273, !39255, !39258, !39252, !39259}
!39272 = distinct !{!39272, !39267, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39273 = distinct !{!39273, !39264, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39274 = !{!39275}
!39275 = distinct !{!39275, !39270, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39276 = !{!39275, !39266, !39272, !39263, !39273}
!39277 = !{!39278, !39280, !39266, !39272, !39263, !39273}
!39278 = distinct !{!39278, !39279, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecbE14extend_trustedINtNtB8_5drain5DrainbEE0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39279 = distinct !{!39279, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecbE14extend_trustedINtNtB8_5drain5DrainbEE0Cs14kWLkQVSKO_14deltalake_core"}
!39280 = distinct !{!39280, !39281, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1p_3VecbE14extend_trustedINtNtB1p_5drain5DrainbEE0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39281 = distinct !{!39281, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1p_3VecbE14extend_trustedINtNtB1p_5drain5DrainbEE0E0Cs14kWLkQVSKO_14deltalake_core"}
!39282 = distinct !{!39282, !15353, !15354}
!39283 = !{!"branch_weights", i32 8, i32 24}
!39284 = distinct !{!39284, !15353, !15354}
!39285 = distinct !{!39285, !18}
!39286 = !{!39287, !39266, !39272, !39263, !39273}
!39287 = distinct !{!39287, !39270, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0:It1"}
!39288 = !{!39289, !39266, !39272, !39263, !39273}
!39289 = distinct !{!39289, !39270, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0:It2"}
!39290 = !{!39291, !39266, !39272, !39263, !39273}
!39291 = distinct !{!39291, !39270, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0:It3"}
!39292 = distinct !{!39292, !15353}
!39293 = !{!39275, !39266, !39263}
!39294 = !{!39266, !39272, !39263, !39273, !39258, !39259}
!39295 = !{!39296, !39298, !39299, !39301}
!39296 = distinct !{!39296, !39297, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_: argument 0"}
!39297 = distinct !{!39297, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_"}
!39298 = distinct !{!39298, !39297, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_: argument 1"}
!39299 = distinct !{!39299, !39300, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecdEINtB4_10SpecExtenddINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EE11spec_extendB2F_: argument 0"}
!39300 = distinct !{!39300, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecdEINtB4_10SpecExtenddINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EE11spec_extendB2F_"}
!39301 = distinct !{!39301, !39300, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecdEINtB4_10SpecExtenddINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EE11spec_extendB2F_: argument 1"}
!39302 = !{!39303, !39305, !39306, !39308}
!39303 = distinct !{!39303, !39304, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecfE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EEB2p_: argument 0"}
!39304 = distinct !{!39304, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecfE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EEB2p_"}
!39305 = distinct !{!39305, !39304, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecfE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EEB2p_: argument 1"}
!39306 = distinct !{!39306, !39307, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EE11spec_extendB2F_: argument 0"}
!39307 = distinct !{!39307, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EE11spec_extendB2F_"}
!39308 = distinct !{!39308, !39307, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EE11spec_extendB2F_: argument 1"}
!39309 = !{!39310, !39312, !39313, !39315}
!39310 = distinct !{!39310, !39311, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39311 = distinct !{!39311, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs14kWLkQVSKO_14deltalake_core"}
!39312 = distinct !{!39312, !39311, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39313 = distinct !{!39313, !39314, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39314 = distinct !{!39314, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCs14kWLkQVSKO_14deltalake_core"}
!39315 = distinct !{!39315, !39314, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39316 = !{!39317, !39319, !39321, !39323}
!39317 = distinct !{!39317, !39318, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEE0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39318 = distinct !{!39318, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEE0Cs14kWLkQVSKO_14deltalake_core"}
!39319 = distinct !{!39319, !39320, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBe_3ops5range5RangejEE0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39320 = distinct !{!39320, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBe_3ops5range5RangejEE0E0Cs14kWLkQVSKO_14deltalake_core"}
!39321 = distinct !{!39321, !39322, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB24_3VecjE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39322 = distinct !{!39322, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB24_3VecjE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core"}
!39323 = distinct !{!39323, !39324, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1I_3VecjE14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39324 = distinct !{!39324, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1I_3VecjE14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core"}
!39325 = distinct !{!39325, !15353, !15354}
!39326 = distinct !{!39326, !15354, !15353}
!39327 = !{!39328, !39330}
!39328 = distinct !{!39328, !39329, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39329 = distinct !{!39329, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core"}
!39330 = distinct !{!39330, !39331, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_: argument 1"}
!39331 = distinct !{!39331, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_"}
!39332 = !{!39333, !39334}
!39333 = distinct !{!39333, !39329, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39334 = distinct !{!39334, !39331, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_: argument 0"}
!39335 = !{!39336}
!39336 = distinct !{!39336, !39337, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!39337 = distinct !{!39337, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le"}
!39338 = !{!39339}
!39339 = distinct !{!39339, !39337, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!39340 = !{!39336, !39328, !39330}
!39341 = !{!39339, !39333, !39334}
!39342 = !{!39339, !39328, !39330}
!39343 = !{!39336, !39333, !39334}
!39344 = !{!"branch_weights", !"expected", i32 4292820, i32 2143190828}
!39345 = !{!39346}
!39346 = distinct !{!39346, !39347, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EE11spec_extendB2P_: argument 0"}
!39347 = distinct !{!39347, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EE11spec_extendB2P_"}
!39348 = !{!39349}
!39349 = distinct !{!39349, !39347, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EE11spec_extendB2P_: argument 1"}
!39350 = !{!39351}
!39351 = distinct !{!39351, !39352, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_: argument 0"}
!39352 = distinct !{!39352, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_"}
!39353 = !{!39354}
!39354 = distinct !{!39354, !39352, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_: argument 1"}
!39355 = !{!39356}
!39356 = distinct !{!39356, !39357, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!39357 = distinct !{!39357, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le"}
!39358 = !{!39359}
!39359 = distinct !{!39359, !39357, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!39360 = !{!39356, !39361, !39363, !39354, !39349}
!39361 = distinct !{!39361, !39362, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39362 = distinct !{!39362, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core"}
!39363 = distinct !{!39363, !39364, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_: argument 1"}
!39364 = distinct !{!39364, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_"}
!39365 = !{!39359, !39366, !39367, !39351, !39346}
!39366 = distinct !{!39366, !39362, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39367 = distinct !{!39367, !39364, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_: argument 0"}
!39368 = !{!39359, !39361, !39363, !39354, !39349}
!39369 = !{!39356, !39366, !39367, !39351, !39346}
!39370 = !{!"branch_weights", !"expected", i32 4299269, i32 2143184379}
!39371 = !{!39351, !39346}
!39372 = !{!39354, !39349}
!39373 = !{!39351, !39354, !39346, !39349}
!39374 = !{!39375, !39377, !39378, !39380}
!39375 = distinct !{!39375, !39376, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EEB2p_: argument 0"}
!39376 = distinct !{!39376, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EEB2p_"}
!39377 = distinct !{!39377, !39376, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EEB2p_: argument 1"}
!39378 = distinct !{!39378, !39379, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EE11spec_extendB2F_: argument 0"}
!39379 = distinct !{!39379, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EE11spec_extendB2F_"}
!39380 = distinct !{!39380, !39379, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EE11spec_extendB2F_: argument 1"}
!39381 = !{!39382, !39384, !39385, !39387}
!39382 = distinct !{!39382, !39383, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EEB2p_: argument 0"}
!39383 = distinct !{!39383, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EEB2p_"}
!39384 = distinct !{!39384, !39383, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EEB2p_: argument 1"}
!39385 = distinct !{!39385, !39386, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EE11spec_extendB2F_: argument 0"}
!39386 = distinct !{!39386, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EE11spec_extendB2F_"}
!39387 = distinct !{!39387, !39386, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EE11spec_extendB2F_: argument 1"}
!39388 = !{!39389}
!39389 = distinct !{!39389, !39390, !"_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6cloned6ClonedINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEB2c_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3A_: argument 0"}
!39390 = distinct !{!39390, !"_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6cloned6ClonedINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEB2c_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3A_"}
!39391 = !{!39392}
!39392 = distinct !{!39392, !39393, !"_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2f_5ChainINtNtB2h_6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB5_5slice4iter4IterBI_ENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB2h_3map3MapIB3G_NtNtBN_6string6StringENCB4b_s_0EENtNtNtB2j_6traits8iterator8Iterator4next0EB4f_: argument 0"}
!39393 = distinct !{!39393, !"_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2f_5ChainINtNtB2h_6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB5_5slice4iter4IterBI_ENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB2h_3map3MapIB3G_NtNtBN_6string6StringENCB4b_s_0EENtNtNtB2j_6traits8iterator8Iterator4next0EB4f_"}
!39394 = !{!39395}
!39395 = distinct !{!39395, !39393, !"_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2f_5ChainINtNtB2h_6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB5_5slice4iter4IterBI_ENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB2h_3map3MapIB3G_NtNtBN_6string6StringENCB4b_s_0EENtNtNtB2j_6traits8iterator8Iterator4next0EB4f_: argument 0:thread"}
!39396 = !{!39397}
!39397 = distinct !{!39397, !39398, !"_RNCNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB6_5ChainINtNtB8_6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB8_3map3MapIB1K_NtNtB2e_6string6StringENCB3t_s_0EENtNtNtBa_6traits8iterator8Iterator4next0B3x_: argument 0"}
!39398 = distinct !{!39398, !"_RNCNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB6_5ChainINtNtB8_6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB8_3map3MapIB1K_NtNtB2e_6string6StringENCB3t_s_0EENtNtNtBa_6traits8iterator8Iterator4next0B3x_"}
!39399 = !{!39397, !39392}
!39400 = !{!39401}
!39401 = distinct !{!39401, !39402, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schemas_0ENtNtNtB9_6traits8iterator8Iterator4nextB25_: argument 0"}
!39402 = distinct !{!39402, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schemas_0ENtNtNtB9_6traits8iterator8Iterator4nextB25_"}
!39403 = !{!39404, !39401, !39397, !39392}
!39404 = distinct !{!39404, !39405, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39405 = distinct !{!39405, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core"}
!39406 = !{!39401, !39397, !39392}
!39407 = !{!39408}
!39408 = distinct !{!39408, !39409, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtBM_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39409 = distinct !{!39409, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtBM_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core"}
!39410 = !{!39408, !39401, !39397, !39392}
!39411 = !{!39412}
!39412 = distinct !{!39412, !39413, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39413 = distinct !{!39413, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39414 = !{!39415}
!39415 = distinct !{!39415, !39413, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39416 = !{!39412, !39415, !39401, !39397, !39392}
!39417 = !{!39412, !39401, !39397, !39392}
!39418 = !{!39415, !39401, !39397, !39392}
!39419 = !{!39420, !39401, !39397, !39392}
!39420 = distinct !{!39420, !39421, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39421 = distinct !{!39421, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core"}
!39422 = !{!39423}
!39423 = distinct !{!39423, !39424, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39424 = distinct !{!39424, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core"}
!39425 = !{!39426, !39428, !39423, !39392}
!39426 = distinct !{!39426, !39427, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39427 = distinct !{!39427, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39428 = distinct !{!39428, !39429, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39429 = distinct !{!39429, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core"}
!39430 = !{!39431}
!39431 = distinct !{!39431, !39432, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39432 = distinct !{!39432, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core"}
!39433 = !{!39434, !39436, !39431, !39392}
!39434 = distinct !{!39434, !39435, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39435 = distinct !{!39435, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39436 = distinct !{!39436, !39437, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39437 = distinct !{!39437, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core"}
!39438 = !{!39439, !39441, !39443}
!39439 = distinct !{!39439, !39440, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39440 = distinct !{!39440, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39441 = distinct !{!39441, !39442, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39442 = distinct !{!39442, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39443 = distinct !{!39443, !39444, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEBP_EINtB5_6ExtendTB1m_B1m_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39444 = distinct !{!39444, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEBP_EINtB5_6ExtendTB1m_B1m_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39445 = !{!39446, !39448, !39443}
!39446 = distinct !{!39446, !39447, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39447 = distinct !{!39447, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39448 = distinct !{!39448, !39449, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39449 = distinct !{!39449, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39450 = !{!39451, !39453, !39455}
!39451 = distinct !{!39451, !39452, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39452 = distinct !{!39452, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39453 = distinct !{!39453, !39454, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39454 = distinct !{!39454, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39455 = distinct !{!39455, !39456, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEIBQ_IB1n_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEEINtB5_6ExtendTB1m_B2y_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39456 = distinct !{!39456, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEIBQ_IB1n_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEEINtB5_6ExtendTB1m_B2y_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39457 = !{!39458, !39460, !39455}
!39458 = distinct !{!39458, !39459, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39459 = distinct !{!39459, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39460 = distinct !{!39460, !39461, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39461 = distinct !{!39461, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39462 = !{!39463, !39465, !39467}
!39463 = distinct !{!39463, !39464, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBW_EINtB5_7ZipImplBW_BW_E9size_hintCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39464 = distinct !{!39464, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBW_EINtB5_7ZipImplBW_BW_E9size_hintCs14kWLkQVSKO_14deltalake_core"}
!39465 = distinct !{!39465, !39466, !"_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB4_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBV_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39466 = distinct !{!39466, !"_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB4_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBV_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core"}
!39467 = distinct !{!39467, !39468, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1c_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB33_18LogicalPlanBuilder13join_detailedB20_B20_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39468 = distinct !{!39468, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1c_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB33_18LogicalPlanBuilder13join_detailedB20_B20_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core"}
!39469 = !{!39470, !39471, !39472}
!39470 = distinct !{!39470, !39464, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBW_EINtB5_7ZipImplBW_BW_E9size_hintCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39471 = distinct !{!39471, !39466, !"_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB4_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBV_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39472 = distinct !{!39472, !39468, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1c_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB33_18LogicalPlanBuilder13join_detailedB20_B20_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39473 = !{!39474, !39476, !39478}
!39474 = distinct !{!39474, !39475, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1k_5error15DataFusionErrorEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39475 = distinct !{!39475, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1k_5error15DataFusionErrorEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39476 = distinct !{!39476, !39477, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1l_5error15DataFusionErrorEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39477 = distinct !{!39477, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1l_5error15DataFusionErrorEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39478 = distinct !{!39478, !39479, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1M_5error15DataFusionErrorEEBP_EINtB5_6ExtendTB1m_B1m_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39479 = distinct !{!39479, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1M_5error15DataFusionErrorEEBP_EINtB5_6ExtendTB1m_B1m_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39480 = !{!39481, !39483, !39478}
!39481 = distinct !{!39481, !39482, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1k_5error15DataFusionErrorEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39482 = distinct !{!39482, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1k_5error15DataFusionErrorEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39483 = distinct !{!39483, !39484, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1l_5error15DataFusionErrorEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39484 = distinct !{!39484, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1l_5error15DataFusionErrorEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39485 = !{!39486, !39488, !39490}
!39486 = distinct !{!39486, !39487, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39487 = distinct !{!39487, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39488 = distinct !{!39488, !39489, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39489 = distinct !{!39489, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39490 = distinct !{!39490, !39491, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39491 = distinct !{!39491, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39492 = !{!39493, !39495, !39490}
!39493 = distinct !{!39493, !39494, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39494 = distinct !{!39494, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39495 = distinct !{!39495, !39496, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39496 = distinct !{!39496, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39497 = !{!39498}
!39498 = distinct !{!39498, !39499, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39499 = distinct !{!39499, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39500 = !{!39501}
!39501 = distinct !{!39501, !39499, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39502 = distinct !{null}
!39503 = !{!39504}
!39504 = distinct !{!39504, !39505, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39505 = distinct !{!39505, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39506 = !{!39507, !39501}
!39507 = distinct !{!39507, !39505, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39508 = !{!39509}
!39509 = distinct !{!39509, !39510, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39510 = distinct !{!39510, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39511 = !{!39512}
!39512 = distinct !{!39512, !39510, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39513 = !{!39514}
!39514 = distinct !{!39514, !39515, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39515 = distinct !{!39515, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39516 = !{!39517, !39512}
!39517 = distinct !{!39517, !39515, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39518 = !{!39519}
!39519 = distinct !{!39519, !39520, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39520 = distinct !{!39520, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39521 = !{!39522}
!39522 = distinct !{!39522, !39520, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39523 = !{!39524}
!39524 = distinct !{!39524, !39525, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39525 = distinct !{!39525, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39526 = !{!39527, !39522}
!39527 = distinct !{!39527, !39525, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39528 = !{!39529}
!39529 = distinct !{!39529, !39530, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39530 = distinct !{!39530, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39531 = !{!39532}
!39532 = distinct !{!39532, !39530, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39533 = !{!39534}
!39534 = distinct !{!39534, !39535, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39535 = distinct !{!39535, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39536 = !{!39537, !39532}
!39537 = distinct !{!39537, !39535, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39538 = !{!39539}
!39539 = distinct !{!39539, !39540, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39540 = distinct !{!39540, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39541 = !{!39542}
!39542 = distinct !{!39542, !39540, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39543 = !{!39544}
!39544 = distinct !{!39544, !39545, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39545 = distinct !{!39545, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39546 = !{!39547, !39542}
!39547 = distinct !{!39547, !39545, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39548 = !{!39549}
!39549 = distinct !{!39549, !39550, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39550 = distinct !{!39550, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39551 = !{!39552}
!39552 = distinct !{!39552, !39550, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39553 = !{!39554}
!39554 = distinct !{!39554, !39555, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39555 = distinct !{!39555, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39556 = !{!39557, !39552}
!39557 = distinct !{!39557, !39555, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39558 = !{!39559}
!39559 = distinct !{!39559, !39560, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39560 = distinct !{!39560, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39561 = !{!39562}
!39562 = distinct !{!39562, !39560, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39563 = !{!39564}
!39564 = distinct !{!39564, !39565, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39565 = distinct !{!39565, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39566 = !{!39567, !39562}
!39567 = distinct !{!39567, !39565, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39568 = !{!39569}
!39569 = distinct !{!39569, !39570, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39570 = distinct !{!39570, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
end_hunk_1
