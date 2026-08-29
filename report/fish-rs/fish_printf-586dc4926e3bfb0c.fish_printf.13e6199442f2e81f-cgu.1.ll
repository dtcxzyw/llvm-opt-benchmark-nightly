Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_printf-586dc4926e3bfb0c.fish_printf.13e6199442f2e81f-cgu.1?download=true
inline.NumInlined: 102
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCs1HV6ixfL8cZ_11fish_printf:bb.a
  %.sroa.04.0.i = sub nuw i64 %i.e, %i.g          ; 4 uses
  %i.h = sub i64 %i.f, %.sroa.04.0.i              ; 2 uses
  %.not11.i = icmp ult i64 %i.h, %i.b
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.b, %i.h
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.04.0.i, %i.b
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.j, %bb.d ], [ %i.f, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0.0
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.5.0
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.11.0
  store ptr %i.m, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.o, ptr %i.r, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE8iter_mutCs1HV6ixfL8cZ_11fish_printf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !48, !noalias !51, !noundef !4 ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !5, !alias.scope !48, !noalias !51, !noundef !4 ; 4 uses
  %.not.i = icmp ult i64 %i.e, %i.f
  %i.g = select i1 %.not.i, i64 0, i64 %i.f
  %.sroa.04.0.i = sub nuw i64 %i.e, %i.g          ; 4 uses
  %i.h = sub i64 %i.f, %.sroa.04.0.i              ; 2 uses
  %.not11.i = icmp ult i64 %i.h, %i.b
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.b, %i.h
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.04.0.i, %i.b
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.j, %bb.d ], [ %i.f, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0.0
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.5.0
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.11.0
  store ptr %i.m, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.o, ptr %i.r, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE8pop_backCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1                         ; 3 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 3 uses
  %i.f = icmp ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %i.i = add i64 %i.h, %i.d                       ; 2 uses
  %.not = icmp ult i64 %i.i, %i.e
  %i.j = select i1 %.not, i64 0, i64 %i.e
  %.sroa.04.0 = sub nuw i64 %i.i, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.04.0
  %i.n = load i32, ptr %i.m, align 4, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.n, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.o = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.p = insertvalue { i32, i32 } %i.o, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE8truncateCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %.not = icmp ult i64 %1, %i.b
  br i1 %.not, label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit, label %bb.b

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit: ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE9pop_frontCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.01.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.01.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.e
  %i.n = load i32, ptr %i.m, align 4, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.n, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.o = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.p = insertvalue { i32, i32 } %i.o, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define { double, i32 } @_RNvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp5frexp(double noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = and i32 %i.c, 2047                       ; 2 uses
  switch i32 %i.d, label %bb.g [
    i32 0, label %bb.b
    i32 2047, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %0, 0.000000e+00
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fmul double %0, f0x43F0000000000000
  %i.g = tail call { double, i32 } @_RNvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp5frexp(double noundef %i.f) ; 2 uses
  %i.h = extractvalue { double, i32 } %i.g, 1     ; 2 uses
  %1 = icmp slt i32 %i.h, -2147483584
  br i1 %1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = add nsw i32 %i.h, -64
  %i.i = extractvalue { double, i32 } %i.g, 0
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #18
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.g, %bb.d
  %.sroa.5.0 = phi i32 [ %i.l, %bb.g ], [ 0, %bb.b ], [ %2, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.0 = phi double [ %i.o, %bb.g ], [ %0, %bb.b ], [ %i.i, %bb.d ], [ %0, %bb.a ]
  %i.j = insertvalue { double, i32 } poison, double %.sroa.0.0, 0
  %i.k = insertvalue { double, i32 } %i.j, i32 %.sroa.5.0, 1
  ret { double, i32 } %i.k

bb.g:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.d, -1022
  %i.m = and i64 %i.a, -9218868437227405313
  %i.n = or disjoint i64 %i.m, 4602678819172646912
  %i.o = bitcast i64 %i.n to double
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf.exit:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 4 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %.sroa.0.1.ph, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i ] ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.g = sub nuw i64 %i.e, %i.f
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8, !captures !53
  store i64 %i.g, ptr %i.b, align 8
  ret void

.lr.ph:                                           ; preds = %bb.a, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i
  %.sroa.03.014 = phi i64 [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i ], [ 0, %bb.a ]
  %.sroa.0.013 = phi ptr [ %.sroa.0.1.ph, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.h = icmp eq ptr %.sroa.0.013, %i.d
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 1 ; 2 uses
  %i.j = load i8, ptr %.sroa.0.013, align 1, !noalias !54, !noundef !4 ; 3 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i: ; preds = %bb.b
  %i.l = icmp ne ptr %i.i, %i.d
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 2 ; 2 uses
  %i.n = icmp samesign ugt i8 %i.j, -33
  br i1 %i.n, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i
  %i.o = icmp ne ptr %i.m, %i.d
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ugt i8 %i.j, -17
  %spec.select.v = select i1 %i.p, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 %spec.select.v
  br label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i, %bb.b, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i
  %.sroa.0.1.ph = phi ptr [ %i.m, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i ], [ %spec.select, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = add nuw i64 %.sroa.03.014, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString12take_literal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 8 uses
  br label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literal0NCINvMB2a_B27_10wrap_mut_2jcNCINvNtBc_3map8map_foldcjjNCB2S_s_0NCINvXsK_NtB1m_5accumjNtB5p_3Sum3sumINtB4M_3MapIB10_NtNtNtBg_3str4iter5CharsB2Q_EB57_EE0E0E0E0B30_.exit.i.i.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literal0NCINvMB2a_B27_10wrap_mut_2jcNCINvNtBc_3map8map_foldcjjNCB2S_s_0NCINvXsK_NtB1m_5accumjNtB5p_3Sum3sumINtB4M_3MapIB10_NtNtNtBg_3str4iter5CharsB2Q_EB57_EE0E0E0E0B30_.exit.i.i.i: ; preds = %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i, %bb.a
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.an, %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ar, %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i ] ; 11 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_.exit, label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literal0NCINvMB2a_B27_10wrap_mut_2jcNCINvNtBc_3map8map_foldcjjNCB2S_s_0NCINvXsK_NtB1m_5accumjNtB5p_3Sum3sumINtB4M_3MapIB10_NtNtNtBg_3str4iter5CharsB2Q_EB57_EE0E0E0E0B30_.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.e, align 1, !noalias !57, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i: ; preds = %bb.b
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !57, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.d

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.d
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !57, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i, label %bb.d

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.d
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !57, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i ], [ %i.f, %bb.c ]
  %spec.select.i.ph.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i ], [ %i.s, %bb.c ] ; 4 uses
  %.not.i9.i.i.i = icmp eq i32 %spec.select.i.ph.i.i.i, 37
  br i1 %.not.i9.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 128
  br i1 %i.ao, label %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 2048
  br i1 %i.ap, label %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 65536
  %..i.i.i.i.i.i.i = select i1 %i.aq, i64 3, i64 4
  br label %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i

_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ %..i.i.i.i.i.i.i, %bb.g ], [ 1, %bb.e ]
  %i.ar = add i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.01.0.i.i.i ; 2 uses
  %i.as = icmp ult i64 %i.ar, %.sroa.01.0.i.i.i
  br i1 %i.as, label %bb.h, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literal0NCINvMB2a_B27_10wrap_mut_2jcNCINvNtBc_3map8map_foldcjjNCB2S_s_0NCINvXsK_NtB1m_5accumjNtB5p_3Sum3sumINtB4M_3MapIB10_NtNtNtBg_3str4iter5CharsB2Q_EB57_EE0E0E0E0B30_.exit.i.i.i

bb.h:                                             ; preds = %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !69
  unreachable

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literal0NCINvMB2a_B27_10wrap_mut_2jcNCINvNtBc_3map8map_foldcjjNCB2S_s_0NCINvXsK_NtB1m_5accumjNtB5p_3Sum3sumINtB4M_3MapIB10_NtNtNtBg_3str4iter5CharsB2Q_EB57_EE0E0E0E0B30_.exit.i.i.i, %bb.d
  %i.at = icmp eq i64 %.sroa.01.0.i.i.i, 0
  br i1 %i.at, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_.exit
  %.not.i = icmp ult i64 %.sroa.01.0.i.i.i, %i.c
  br i1 %.not.i, label %bb.j, label %.split.i

.split.i:                                         ; preds = %bb.i
  %i.au = icmp eq i64 %.sroa.01.0.i.i.i, %i.c
  br i1 %i.au, label %bb.k, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.i.i
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !70, !noundef !4
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_.exit, %.split.i, %bb.j
  %.not.i19.i.i.i = icmp samesign eq i64 %.sroa.01.0.i.i.i, %i.c
  br i1 %.not.i19.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B32_5count0EB1J_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literals0_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i
  %.sroa.01.020.i.i.i = phi i64 [ %i.cl, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literals0_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !110
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !116, !noalias !123, !noundef !4 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !116, !noalias !123, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.thread.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.i.i, !prof !37

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !123
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !125, !noalias !123, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !125, !noalias !123, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !125, !noalias !123
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !125, !noalias !123
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator9size_hintCs1HV6ixfL8cZ_11fish_printf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !126
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !126
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ECs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCslLGyqsphxMB_10widestring(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noinline }
attributes #18 = { noinline noreturn }
attributes #19 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs1HV6ixfL8cZ_11fish_printf: argument 0"}
!8 = distinct !{!8, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs1HV6ixfL8cZ_11fish_printf"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs1HV6ixfL8cZ_11fish_printf: argument 1"}
!11 = !{!7, !12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!10, !15}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!20}
!20 = distinct !{!20, !8, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs1HV6ixfL8cZ_11fish_printf: argument 0:It1"}
!21 = !{!22}
!22 = distinct !{!22, !8, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs1HV6ixfL8cZ_11fish_printf: argument 1:It1"}
!23 = distinct !{!23, !17}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRccuNvYcNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB3g_6StringINtNtBW_7collect6ExtendcE6extendINtNtB1K_6cloned6ClonedBF_EE0E0E0ECs1HV6ixfL8cZ_11fish_printf: argument 0"}
!26 = distinct !{!26, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRccuNvYcNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB3g_6StringINtNtBW_7collect6ExtendcE6extendINtNtB1K_6cloned6ClonedBF_EE0E0E0ECs1HV6ixfL8cZ_11fish_printf"}
!27 = !{!28, !25}
!28 = distinct !{!28, !29, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!29 = distinct !{!29, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!30 = !{i32 0, i32 1114112}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RNvXsG_NtNtCs3oUPovFnLWP_4core5clone5implscNtB7_5Clone5clone: argument 0"}
!33 = distinct !{!33, !"_RNvXsG_NtNtCs3oUPovFnLWP_4core5clone5implscNtB7_5Clone5clone"}
!34 = !{!35, !28, !25}
!35 = distinct !{!35, !36, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf: argument 0"}
!36 = distinct !{!36, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf"}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{i64 0, i64 8}
!39 = !{i64 4}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE24handle_capacity_increaseCs1HV6ixfL8cZ_11fish_printf: argument 0"}
!42 = distinct !{!42, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE24handle_capacity_increaseCs1HV6ixfL8cZ_11fish_printf"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf: argument 1"}
!45 = distinct !{!45, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf"}
!46 = !{!47}
!47 = distinct !{!47, !45, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf: argument 0"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf: argument 1"}
!50 = distinct !{!50, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf: argument 0"}
!53 = !{!"address", !"read_provenance"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1HV6ixfL8cZ_11fish_printf: argument 0"}
!56 = distinct !{!56, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1HV6ixfL8cZ_11fish_printf"}
!57 = !{!58, !60, !62, !64, !65, !67}
!58 = distinct !{!58, !59, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1HV6ixfL8cZ_11fish_printf: argument 0"}
!59 = distinct !{!59, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1HV6ixfL8cZ_11fish_printf"}
!60 = distinct !{!60, !61, !"_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!61 = distinct !{!61, !"_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!62 = distinct !{!62, !63, !"_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1H_9TakeWhileppEBH_8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB3E_12FormatString12take_literal0NCINvMB2Q_B2N_10wrap_mut_2jcNCINvNtB1J_3map8map_foldcjjNCB3y_s_0NCINvXsK_NtBL_5accumjNtB66_3Sum3sumINtB5s_3MapIB2a_B3_B3w_EB5O_EE0E0E0E0INtNtB2S_12control_flow11ControlFlowB2N_jEEB3G_: argument 0"}
!63 = distinct !{!63, !"_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1H_9TakeWhileppEBH_8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB3E_12FormatString12take_literal0NCINvMB2Q_B2N_10wrap_mut_2jcNCINvNtB1J_3map8map_foldcjjNCB3y_s_0NCINvXsK_NtBL_5accumjNtB66_3Sum3sumINtB5s_3MapIB2a_B3_B3w_EB5O_EE0E0E0E0INtNtB2S_12control_flow11ControlFlowB2N_jEEB3G_"}
!64 = distinct !{!64, !63, !"_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1H_9TakeWhileppEBH_8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB3E_12FormatString12take_literal0NCINvMB2Q_B2N_10wrap_mut_2jcNCINvNtB1J_3map8map_foldcjjNCB3y_s_0NCINvXsK_NtBL_5accumjNtB66_3Sum3sumINtB5s_3MapIB2a_B3_B3w_EB5O_EE0E0E0E0INtNtB2S_12control_flow11ControlFlowB2N_jEEB3G_: argument 1"}
!65 = distinct !{!65, !66, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jcNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB5w_3Sum3sumINtB4T_3MapBV_B5e_EE0E0E0B48_EB1J_: argument 0"}
!66 = distinct !{!66, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jcNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB5w_3Sum3sumINtB4T_3MapBV_B5e_EE0E0E0B48_EB1J_"}
!67 = distinct !{!67, !68, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_: argument 0"}
!68 = distinct !{!68, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_"}
!69 = !{!62, !64, !65, !67}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!72 = distinct !{!72, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!73 = !{!74, !76, !78, !80, !81, !83}
!74 = distinct !{!74, !75, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1HV6ixfL8cZ_11fish_printf: argument 0"}
!75 = distinct !{!75, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1HV6ixfL8cZ_11fish_printf"}
!76 = distinct !{!76, !77, !"_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!77 = distinct !{!77, !"_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!78 = distinct !{!78, !79, !"_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1H_9TakeWhileppEBH_8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB3E_12FormatString12take_literals0_0NCINvMB2Q_B2N_10wrap_mut_2jcNCNvYIB2a_B3_B3w_EBH_5count0E0E0INtNtB2S_12control_flow11ControlFlowB2N_jEEB3G_: argument 0"}
!79 = distinct !{!79, !"_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1H_9TakeWhileppEBH_8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB3E_12FormatString12take_literals0_0NCINvMB2Q_B2N_10wrap_mut_2jcNCNvYIB2a_B3_B3w_EBH_5count0E0E0INtNtB2S_12control_flow11ControlFlowB2N_jEEB3G_"}
!80 = distinct !{!80, !79, !"_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1H_9TakeWhileppEBH_8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB3E_12FormatString12take_literals0_0NCINvMB2Q_B2N_10wrap_mut_2jcNCNvYIB2a_B3_B3w_EBH_5count0E0E0INtNtB2S_12control_flow11ControlFlowB2N_jEEB3G_: argument 1"}
!81 = distinct !{!81, !82, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3Q_17NeverShortCircuitjE10wrap_mut_2jcNCNvYBV_B32_5count0E0B4b_EB1J_: argument 0"}
!82 = distinct !{!82, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3Q_17NeverShortCircuitjE10wrap_mut_2jcNCNvYBV_B32_5count0E0B4b_EB1J_"}
!83 = distinct !{!83, !84, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B32_5count0EB1J_: argument 0"}
!84 = distinct !{!84, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B32_5count0EB1J_"}
!85 = !{!78, !80, !81, !83}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 1"}
!88 = distinct !{!88, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 0"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!93 = distinct !{!93, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by: argument 0"}
!96 = distinct !{!96, !"_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1HV6ixfL8cZ_11fish_printf: argument 0"}
!99 = distinct !{!99, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1HV6ixfL8cZ_11fish_printf"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt: argument 1"}
!102 = distinct !{!102, !"_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt: argument 0"}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs1HV6ixfL8cZ_11fish_printf: argument 0"}
!107 = distinct !{!107, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs1HV6ixfL8cZ_11fish_printf"}
!108 = distinct !{!108, !107, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs1HV6ixfL8cZ_11fish_printf: argument 1"}
!109 = !{!106}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!112 = distinct !{!112, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!113 = !{!114, !111}
!114 = distinct !{!114, !115, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf: argument 0"}
!115 = distinct !{!115, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf"}
!116 = !{!117, !119, !121}
!117 = distinct !{!117, !118, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf: argument 0"}
!118 = distinct !{!118, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf"}
!119 = distinct !{!119, !120, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs1HV6ixfL8cZ_11fish_printf: argument 0"}
!120 = distinct !{!120, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs1HV6ixfL8cZ_11fish_printf"}
!121 = distinct !{!121, !122, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 0"}
!122 = distinct !{!122, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 1"}
!125 = !{!119, !121}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs1HV6ixfL8cZ_11fish_printf: argument 0"}
!128 = distinct !{!128, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs1HV6ixfL8cZ_11fish_printf"}
end_hunk_1
