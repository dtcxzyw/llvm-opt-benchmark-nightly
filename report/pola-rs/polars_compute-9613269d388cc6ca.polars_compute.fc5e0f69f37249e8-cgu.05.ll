Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.05?download=true
inline.NumInlined: 1810
inline.NumDeleted: 381
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 206
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelyyNCNvXs1_NtNtB4_10arithmetic8unsignedyNtB1e_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0EB4_:bb.a
  %i.j = icmp eq i64 %i.i, 0, !dbg !68438
  br i1 %i.j, label %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit, label %bb.d, !dbg !68438

bb.d:                                             ; preds = %bb.c
  %i.k = udiv i64 %i.a, %i.i, !dbg !68441
  br label %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit, !dbg !68442

_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ], !dbg !68443
  %i.l = or disjoint i64 %.sroa.01.05, 1, !dbg !68447 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68444
  store i64 %.sroa.0.0.i, ptr %i.m, align 8, !dbg !68445
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l, !dbg !68439
  %i.o = load i64, ptr %i.n, align 8, !dbg !68440, !noundef !403 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !68438
  br i1 %i.p, label %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit.1, label %bb.e, !dbg !68438

bb.e:                                             ; preds = %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit
  %i.q = udiv i64 %i.a, %i.o, !dbg !68441
  br label %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit.1, !dbg !68442

_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit.1: ; preds = %bb.e, %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit
  %.sroa.0.0.i.1 = phi i64 [ %i.q, %bb.e ], [ 0, %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit ], !dbg !68443
  %i.r = add nuw i64 %.sroa.01.05, 2, !dbg !68447 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l, !dbg !68444
  store i64 %.sroa.0.0.i.1, ptr %i.s, align 8, !dbg !68445
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !68427 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !68427
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !dbg !68427
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl13prim_true_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68448 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68489
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68475

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68490

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68491
  %i.b = load i16, ptr %i.a, align 2, !dbg !68492, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68493
  %i.d = load i16, ptr %i.c, align 2, !dbg !68494, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68495
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !68496 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68497
  store i16 %i.e, ptr %i.g, align 2, !dbg !68498
  %exitcond.not = icmp eq i64 %i.f, %3, !dbg !68489
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68475
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl17prim_wrapping_add0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68499 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68540
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68526

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68541

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68542
  %i.b = load i16, ptr %i.a, align 2, !dbg !68543, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68544
  %i.d = load i16, ptr %i.c, align 2, !dbg !68545, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch16add_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68546
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !68547 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68548
  store i16 %i.e, ptr %i.g, align 2, !dbg !68549
  %exitcond.not = icmp eq i64 %i.f, %3, !dbg !68540
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68526
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68550 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68609
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68593

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68610

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68611
  %i.b = load i16, ptr %i.a, align 2, !dbg !68612, !noundef !403 ; 2 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68613
  %i.d = load i16, ptr %i.c, align 2, !dbg !68614, !noundef !403 ; 2 uses
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68615
  %i.f = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5floor(i16 noundef %i.e) #25, !dbg !68616
  %i.g = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21multiply_f16_fallback(i16 noundef %i.d, i16 noundef %i.f) #25, !dbg !68617
  %i.h = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21subtract_f16_fallback(i16 noundef %i.b, i16 noundef %i.g) #25, !dbg !68618
  %i.i = add nuw i64 %.sroa.01.05, 1, !dbg !68619 ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68620
  store i16 %i.h, ptr %i.j, align 2, !dbg !68621
  %exitcond.not = icmp eq i64 %i.i, %3, !dbg !68609
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68593
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68622 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68663
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68649

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68664

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68665
  %i.b = load i16, ptr %i.a, align 2, !dbg !68666, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68667
  %i.d = load i16, ptr %i.c, align 2, !dbg !68668, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21multiply_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68669
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !68670 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68671
  store i16 %i.e, ptr %i.g, align 2, !dbg !68672
  %exitcond.not = icmp eq i64 %i.f, %3, !dbg !68663
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68649
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68673 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68714
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68700

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68715

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68716
  %i.b = load i16, ptr %i.a, align 2, !dbg !68717, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68718
  %i.d = load i16, ptr %i.c, align 2, !dbg !68719, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21subtract_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68720
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !68721 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68722
  store i16 %i.e, ptr %i.g, align 2, !dbg !68723
  %exitcond.not = icmp eq i64 %i.f, %3, !dbg !68714
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68700
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68724 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68769
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68755

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68770

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68771
  %i.b = load i16, ptr %i.a, align 2, !dbg !68772, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68773
  %i.d = load i16, ptr %i.c, align 2, !dbg !68774, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68775
  %i.f = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5floor(i16 noundef %i.e) #25, !dbg !68776
  %i.g = add nuw i64 %.sroa.01.05, 1, !dbg !68777 ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68778
  store i16 %i.f, ptr %i.h, align 2, !dbg !68779
  %exitcond.not = icmp eq i64 %i.g, %3, !dbg !68769
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68755
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68780 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68825
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68811

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68826

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68827
  %i.b = load i16, ptr %i.a, align 2, !dbg !68828, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68829
  %i.d = load i16, ptr %i.c, align 2, !dbg !68830, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68831
  %i.f = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5trunc(i16 noundef %i.e) #25, !dbg !68832
  %i.g = add nuw i64 %.sroa.01.05, 1, !dbg !68833 ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68834
  store i16 %i.f, ptr %i.h, align 2, !dbg !68835
  %exitcond.not = icmp eq i64 %i.g, %3, !dbg !68825
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68811
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_add0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !68836 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !68877
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !68877     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !68877
  %.not = icmp eq i64 %3, 0, !dbg !68877
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !68863

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !68863
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !68863

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !68863
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !68863
  %i.e = sub i64 %i.c, %i.b, !dbg !68863
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !68863
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !68863
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !68878

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 32, !dbg !68863
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !68863

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !68863

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !68878 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !68879 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !68880
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !68880
  %wide.load9 = load <16 x i8>, ptr %i.h, align 1, !dbg !68880
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !68881 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !68882
  %wide.load10 = load <16 x i8>, ptr %i.i, align 1, !dbg !68882
  %wide.load11 = load <16 x i8>, ptr %i.j, align 1, !dbg !68882
  %i.k = add <16 x i8> %wide.load10, %wide.load, !dbg !68883
  %i.l = add <16 x i8> %wide.load11, %wide.load9, !dbg !68883
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !68884 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !68885
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !68885
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !68885
  %index.next = add nuw i64 %index, 32, !dbg !68878 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !68863
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !68863, !llvm.loop !68856

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !68863
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !68863

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !68878 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index13, !dbg !68879
  %wide.load14 = load <4 x i8>, ptr %i.p, align 1, !dbg !68880
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index13, !dbg !68881
  %wide.load15 = load <4 x i8>, ptr %i.q, align 1, !dbg !68882
  %i.r = add <4 x i8> %wide.load15, %wide.load14, !dbg !68883
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index13, !dbg !68884
  store <4 x i8> %i.r, ptr %i.s, align 1, !dbg !68885
  %index.next16 = add nuw i64 %index13, 4, !dbg !68878 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !68863
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !68863, !llvm.loop !68857

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !68863
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !68863

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !68863          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !68863
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !68863

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !68879
  %i.v = load i8, ptr %i.u, align 1, !dbg !68880, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !68881
  %i.x = load i8, ptr %i.w, align 1, !dbg !68882, !noundef !403
  %i.y = add i8 %i.x, %i.v, !dbg !68883
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !68878 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !68884
  store i8 %i.y, ptr %i.aa, align 1, !dbg !68885
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !68863 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !68863
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !68863, !llvm.loop !68858

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !68863
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !68863
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !68863

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !68886

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !68879
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !68880, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !68881
  %i.ag = load i8, ptr %i.af, align 1, !dbg !68882, !noundef !403
  %i.ah = add i8 %i.ag, %i.ae, !dbg !68883
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !68878 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !68884
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !68885
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !68879
  %i.al = load i8, ptr %i.ak, align 1, !dbg !68880, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !68881
  %i.an = load i8, ptr %i.am, align 1, !dbg !68882, !noundef !403
  %i.ao = add i8 %i.an, %i.al, !dbg !68883
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !68878 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !68884
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !68885
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !68879
  %i.as = load i8, ptr %i.ar, align 1, !dbg !68880, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !68881
  %i.au = load i8, ptr %i.at, align 1, !dbg !68882, !noundef !403
  %i.av = add i8 %i.au, %i.as, !dbg !68883
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !68878 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !68884
  store i8 %i.av, ptr %i.ax, align 1, !dbg !68885
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !68879
  %i.az = load i8, ptr %i.ay, align 1, !dbg !68880, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !68881
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !68882, !noundef !403
  %i.bc = add i8 %i.bb, %i.az, !dbg !68883
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !68878 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !68884
  store i8 %i.bc, ptr %i.be, align 1, !dbg !68885
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !68877
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !68863, !llvm.loop !68859
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !68887 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !68928
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !68928     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !68928
  %.not = icmp eq i64 %3, 0, !dbg !68928
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !68914

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !68929
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !68929

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !68929
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !68929
  %i.e = sub i64 %i.c, %i.b, !dbg !68929
  %diff.check9 = icmp ugt i64 %i.e, -16, !dbg !68929
  %conflict.rdx = or i1 %diff.check, %diff.check9, !dbg !68929
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !68930

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %3, 16, !dbg !68929
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph, !dbg !68929

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 8
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !68929

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !68930 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !68931
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !68932 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !68933
  %wide.load11 = load <16 x i8>, ptr %i.h, align 1, !dbg !68934 ; 4 uses
  %i.i = add <16 x i8> %wide.load11, splat (i8 -1), !dbg !68929
  %i.j = icmp ult <16 x i8> %i.i, splat (i8 -2), !dbg !68929 ; 2 uses
  %i.k = tail call <16 x i8> @llvm.masked.srem.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load11, <16 x i1> %i.j), !dbg !68935 ; 2 uses
  %i.l = icmp ne <16 x i8> %i.k, zeroinitializer, !dbg !68936
  %i.m = select <16 x i1> %i.j, <16 x i1> %i.l, <16 x i1> zeroinitializer, !dbg !68936
  %i.n = xor <16 x i8> %wide.load11, %wide.load, !dbg !68937
  %i.o = icmp slt <16 x i8> %i.n, zeroinitializer, !dbg !68937
  %i.p = select <16 x i1> %i.o, <16 x i8> %wide.load11, <16 x i8> zeroinitializer, !dbg !68937
  %i.q = add <16 x i8> %i.k, %i.p, !dbg !68937
  %predphi = select <16 x i1> %i.m, <16 x i8> %i.q, <16 x i8> zeroinitializer, !dbg !68938
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !68939
  store <16 x i8> %predphi, ptr %i.r, align 1, !dbg !68940
  %index.next = add nuw i64 %index, 16, !dbg !68930 ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !68914
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !68914, !llvm.loop !68908

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !68914
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !68914

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ], !dbg !68930 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index13, !dbg !68931
  %wide.load14 = load <8 x i8>, ptr %i.t, align 1, !dbg !68932 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %index13, !dbg !68933
  %wide.load15 = load <8 x i8>, ptr %i.u, align 1, !dbg !68934 ; 4 uses
  %i.v = add <8 x i8> %wide.load15, splat (i8 -1), !dbg !68929
  %i.w = icmp ult <8 x i8> %i.v, splat (i8 -2), !dbg !68929 ; 2 uses
  %i.x = tail call <8 x i8> @llvm.masked.srem.v8i8(<8 x i8> %wide.load14, <8 x i8> %wide.load15, <8 x i1> %i.w), !dbg !68935 ; 2 uses
  %i.y = icmp ne <8 x i8> %i.x, zeroinitializer, !dbg !68936
  %i.z = select <8 x i1> %i.w, <8 x i1> %i.y, <8 x i1> zeroinitializer, !dbg !68936
  %i.aa = xor <8 x i8> %wide.load15, %wide.load14, !dbg !68937
  %i.ab = icmp slt <8 x i8> %i.aa, zeroinitializer, !dbg !68937
  %i.ac = select <8 x i1> %i.ab, <8 x i8> %wide.load15, <8 x i8> zeroinitializer, !dbg !68937
  %i.ad = add <8 x i8> %i.x, %i.ac, !dbg !68937
  %predphi16 = select <8 x i1> %i.z, <8 x i8> %i.ad, <8 x i8> zeroinitializer, !dbg !68938
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %index13, !dbg !68939
  store <8 x i8> %predphi16, ptr %i.ae, align 1, !dbg !68940
  %index.next17 = add nuw i64 %index13, 8, !dbg !68930 ; 2 uses
  %i.af = icmp eq i64 %index.next17, %n.vec12, !dbg !68914
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !68914, !llvm.loop !68909

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %3, %n.vec12, !dbg !68914
  br i1 %cmp.n18, label %._crit_edge, label %.lr.ph.preheader, !dbg !68914

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  br label %.lr.ph, !dbg !68929

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !68941

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.ao, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !68931
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !68932, !noundef !403 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !68933
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !68934, !noundef !403 ; 4 uses
  %.off.i = add i8 %i.aj, -1, !dbg !68929
  %switch.i = icmp ult i8 %.off.i, -2, !dbg !68929
  br i1 %switch.i, label %bb.b, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, !dbg !68929, !prof !568

bb.b:                                             ; preds = %.lr.ph
  %i.ak = srem i8 %i.ah, %i.aj, !dbg !68935       ; 2 uses
  %.not.i.i = icmp eq i8 %i.ak, 0, !dbg !68936
  br i1 %.not.i.i, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, label %bb.c, !dbg !68936

bb.c:                                             ; preds = %bb.b
  %i.al = xor i8 %i.aj, %i.ah, !dbg !68937
  %i.am = icmp slt i8 %i.al, 0, !dbg !68937
  %i.an = select i1 %i.am, i8 %i.aj, i8 0, !dbg !68937
  %spec.select.i = add i8 %i.ak, %i.an, !dbg !68937
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, !dbg !68937

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.3.0.i.i = phi i8 [ %spec.select.i, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph ], !dbg !68938
  %i.ao = add nuw i64 %.sroa.01.05, 1, !dbg !68930 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !68939
  store i8 %.sroa.3.0.i.i, ptr %i.ap, align 1, !dbg !68940
  %exitcond.not = icmp eq i64 %i.ao, %3, !dbg !68928
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68914, !llvm.loop !68910
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !68942 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !68983
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !68983     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !68983
  %.not = icmp eq i64 %3, 0, !dbg !68983
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !68969

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !68969
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !68969

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !68969
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !68969
  %i.e = sub i64 %i.c, %i.b, !dbg !68969
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !68969
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !68969
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !68984

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 32, !dbg !68969
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !68969

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 24
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !68969

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !68984 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !68985 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !68986
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !68986
  %wide.load9 = load <16 x i8>, ptr %i.h, align 1, !dbg !68986
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !68987 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !68988
  %wide.load10 = load <16 x i8>, ptr %i.i, align 1, !dbg !68988
  %wide.load11 = load <16 x i8>, ptr %i.j, align 1, !dbg !68988
  %i.k = mul <16 x i8> %wide.load10, %wide.load, !dbg !68989
  %i.l = mul <16 x i8> %wide.load11, %wide.load9, !dbg !68989
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !68990 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !68991
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !68991
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !68991
  %index.next = add nuw i64 %index, 32, !dbg !68984 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !68969
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !68969, !llvm.loop !68962

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !68969
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !68969

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !563

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !68984 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index13, !dbg !68985
  %wide.load14 = load <8 x i8>, ptr %i.p, align 1, !dbg !68986
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index13, !dbg !68987
  %wide.load15 = load <8 x i8>, ptr %i.q, align 1, !dbg !68988
  %i.r = mul <8 x i8> %wide.load15, %wide.load14, !dbg !68989
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index13, !dbg !68990
  store <8 x i8> %i.r, ptr %i.s, align 1, !dbg !68991
  %index.next16 = add nuw i64 %index13, 8, !dbg !68984 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !68969
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !68969, !llvm.loop !68963

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !68969
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !68969

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !68969          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !68969
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !68969

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !68985
  %i.v = load i8, ptr %i.u, align 1, !dbg !68986, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !68987
  %i.x = load i8, ptr %i.w, align 1, !dbg !68988, !noundef !403
  %i.y = mul i8 %i.x, %i.v, !dbg !68989
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !68984 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !68990
  store i8 %i.y, ptr %i.aa, align 1, !dbg !68991
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !68969 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !68969
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !68969, !llvm.loop !68964

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !68969
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !68969
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !68969

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !68992

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !68985
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !68986, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !68987
  %i.ag = load i8, ptr %i.af, align 1, !dbg !68988, !noundef !403
  %i.ah = mul i8 %i.ag, %i.ae, !dbg !68989
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !68984 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !68990
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !68991
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !68985
  %i.al = load i8, ptr %i.ak, align 1, !dbg !68986, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !68987
  %i.an = load i8, ptr %i.am, align 1, !dbg !68988, !noundef !403
  %i.ao = mul i8 %i.an, %i.al, !dbg !68989
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !68984 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !68990
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !68991
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !68985
  %i.as = load i8, ptr %i.ar, align 1, !dbg !68986, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !68987
  %i.au = load i8, ptr %i.at, align 1, !dbg !68988, !noundef !403
  %i.av = mul i8 %i.au, %i.as, !dbg !68989
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !68984 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !68990
  store i8 %i.av, ptr %i.ax, align 1, !dbg !68991
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !68985
  %i.az = load i8, ptr %i.ay, align 1, !dbg !68986, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !68987
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !68988, !noundef !403
  %i.bc = mul i8 %i.bb, %i.az, !dbg !68989
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !68984 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !68990
  store i8 %i.bc, ptr %i.be, align 1, !dbg !68991
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !68983
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !68969, !llvm.loop !68965
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !68993 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !69034
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !69034     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !69034
  %.not = icmp eq i64 %3, 0, !dbg !69034
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !69020

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !69020
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !69020

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !69020
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !69020
  %i.e = sub i64 %i.c, %i.b, !dbg !69020
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !69020
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !69020
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !69035

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 32, !dbg !69020
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !69020

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !69020

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69035 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69036 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !69037
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !69037
  %wide.load9 = load <16 x i8>, ptr %i.h, align 1, !dbg !69037
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69038 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !69039
  %wide.load10 = load <16 x i8>, ptr %i.i, align 1, !dbg !69039
  %wide.load11 = load <16 x i8>, ptr %i.j, align 1, !dbg !69039
  %i.k = sub <16 x i8> %wide.load, %wide.load10, !dbg !69040
  %i.l = sub <16 x i8> %wide.load9, %wide.load11, !dbg !69040
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !69041 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !69042
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !69042
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !69042
  %index.next = add nuw i64 %index, 32, !dbg !69035 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !69020
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !69020, !llvm.loop !69013

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69020
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !69020

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !69035 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index13, !dbg !69036
  %wide.load14 = load <4 x i8>, ptr %i.p, align 1, !dbg !69037
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index13, !dbg !69038
  %wide.load15 = load <4 x i8>, ptr %i.q, align 1, !dbg !69039
  %i.r = sub <4 x i8> %wide.load14, %wide.load15, !dbg !69040
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index13, !dbg !69041
  store <4 x i8> %i.r, ptr %i.s, align 1, !dbg !69042
  %index.next16 = add nuw i64 %index13, 4, !dbg !69035 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !69020
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !69020, !llvm.loop !69014

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !69020
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !69020

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !69020          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !69020
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69020

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !69036
  %i.v = load i8, ptr %i.u, align 1, !dbg !69037, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !69038
  %i.x = load i8, ptr %i.w, align 1, !dbg !69039, !noundef !403
  %i.y = sub i8 %i.v, %i.x, !dbg !69040
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !69035 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !69041
  store i8 %i.y, ptr %i.aa, align 1, !dbg !69042
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !69020 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !69020
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69020, !llvm.loop !69015

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !69020
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !69020
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !69020

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !69043

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69036
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !69037, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69038
  %i.ag = load i8, ptr %i.af, align 1, !dbg !69039, !noundef !403
  %i.ah = sub i8 %i.ae, %i.ag, !dbg !69040
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !69035 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !69041
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !69042
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !69036
  %i.al = load i8, ptr %i.ak, align 1, !dbg !69037, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !69038
  %i.an = load i8, ptr %i.am, align 1, !dbg !69039, !noundef !403
  %i.ao = sub i8 %i.al, %i.an, !dbg !69040
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !69035 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !69041
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !69042
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !69036
  %i.as = load i8, ptr %i.ar, align 1, !dbg !69037, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !69038
  %i.au = load i8, ptr %i.at, align 1, !dbg !69039, !noundef !403
  %i.av = sub i8 %i.as, %i.au, !dbg !69040
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !69035 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !69041
  store i8 %i.av, ptr %i.ax, align 1, !dbg !69042
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !69036
  %i.az = load i8, ptr %i.ay, align 1, !dbg !69037, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !69038
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !69039, !noundef !403
  %i.bc = sub i8 %i.az, %i.bb, !dbg !69040
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !69035 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !69041
  store i8 %i.bc, ptr %i.be, align 1, !dbg !69042
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !69034
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !69020, !llvm.loop !69016
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69044 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !69089
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !69089     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !69089
  %.not = icmp eq i64 %3, 0, !dbg !69089
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !69075

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !69090
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !69090

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !69090
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !69090
  %i.e = sub i64 %i.c, %i.b, !dbg !69090
  %diff.check9 = icmp ugt i64 %i.e, -16, !dbg !69090
  %conflict.rdx = or i1 %diff.check, %diff.check9, !dbg !69090
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !69091

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %3, 16, !dbg !69090
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph, !dbg !69090

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 8
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !69090

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69091 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69092
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !69093 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69094
  %wide.load11 = load <16 x i8>, ptr %i.h, align 1, !dbg !69095 ; 5 uses
  %i.i = icmp ne <16 x i8> %wide.load11, zeroinitializer, !dbg !69090 ; 2 uses
  %i.j = icmp eq <16 x i8> %wide.load, splat (i8 -128), !dbg !69096
  %i.k = icmp eq <16 x i8> %wide.load11, splat (i8 -1), !dbg !69097 ; 3 uses
  %i.l = and <16 x i1> %i.j, %i.k, !dbg !69096
  %i.m = xor <16 x i1> %i.l, splat (i1 true), !dbg !69098 ; 2 uses
  %i.n = select <16 x i1> %i.i, <16 x i1> %i.m, <16 x i1> zeroinitializer, !dbg !69098 ; 2 uses
  %i.o = tail call <16 x i8> @llvm.masked.sdiv.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load11, <16 x i1> %i.n), !dbg !69099 ; 2 uses
  %i.p = xor <16 x i1> %i.k, splat (i1 true), !dbg !69100
  %i.q = and <16 x i1> %i.n, %i.p, !dbg !69100    ; 2 uses
  %i.r = tail call <16 x i8> @llvm.masked.srem.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load11, <16 x i1> %i.q), !dbg !69101
  %i.s = icmp ne <16 x i8> %i.r, zeroinitializer, !dbg !69102
  %i.t = xor <16 x i8> %wide.load11, %wide.load
  %i.u = icmp slt <16 x i8> %i.t, zeroinitializer
  %i.v = and <16 x i1> %i.u, %i.s, !dbg !69102
  %i.w = sext <16 x i1> %i.v to <16 x i8>, !dbg !69102
  %i.x = add <16 x i8> %i.o, %i.w, !dbg !69102
  %i.y = select <16 x i1> %i.k, <16 x i1> %i.m, <16 x i1> zeroinitializer, !dbg !69100
  %predphi = select <16 x i1> %i.i, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer, !dbg !69103
  %predphi12 = select <16 x i1> %i.y, <16 x i8> %i.o, <16 x i8> %predphi, !dbg !69103
  %predphi13 = select <16 x i1> %i.q, <16 x i8> %i.x, <16 x i8> %predphi12, !dbg !69103
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !69104
  store <16 x i8> %predphi13, ptr %i.z, align 1, !dbg !69105
  %index.next = add nuw i64 %index, 16, !dbg !69091 ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec, !dbg !69075
  br i1 %i.aa, label %middle.block, label %vector.body, !dbg !69075, !llvm.loop !69069

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69075
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !69075

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %3, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !69091 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index15, !dbg !69092
  %wide.load16 = load <8 x i8>, ptr %i.ab, align 1, !dbg !69093 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %index15, !dbg !69094
  %wide.load17 = load <8 x i8>, ptr %i.ac, align 1, !dbg !69095 ; 5 uses
  %i.ad = icmp ne <8 x i8> %wide.load17, zeroinitializer, !dbg !69090 ; 2 uses
  %i.ae = icmp eq <8 x i8> %wide.load16, splat (i8 -128), !dbg !69096
  %i.af = icmp eq <8 x i8> %wide.load17, splat (i8 -1), !dbg !69097 ; 3 uses
  %i.ag = and <8 x i1> %i.ae, %i.af, !dbg !69096
  %i.ah = xor <8 x i1> %i.ag, splat (i1 true), !dbg !69098 ; 2 uses
  %i.ai = select <8 x i1> %i.ad, <8 x i1> %i.ah, <8 x i1> zeroinitializer, !dbg !69098 ; 2 uses
  %i.aj = tail call <8 x i8> @llvm.masked.sdiv.v8i8(<8 x i8> %wide.load16, <8 x i8> %wide.load17, <8 x i1> %i.ai), !dbg !69099 ; 2 uses
  %i.ak = xor <8 x i1> %i.af, splat (i1 true), !dbg !69100
  %i.al = and <8 x i1> %i.ai, %i.ak, !dbg !69100  ; 2 uses
  %i.am = tail call <8 x i8> @llvm.masked.srem.v8i8(<8 x i8> %wide.load16, <8 x i8> %wide.load17, <8 x i1> %i.al), !dbg !69101
  %i.an = icmp ne <8 x i8> %i.am, zeroinitializer, !dbg !69102
  %i.ao = xor <8 x i8> %wide.load17, %wide.load16
  %i.ap = icmp slt <8 x i8> %i.ao, zeroinitializer
  %i.aq = and <8 x i1> %i.ap, %i.an, !dbg !69102
  %i.ar = sext <8 x i1> %i.aq to <8 x i8>, !dbg !69102
  %i.as = add <8 x i8> %i.aj, %i.ar, !dbg !69102
  %i.at = select <8 x i1> %i.af, <8 x i1> %i.ah, <8 x i1> zeroinitializer, !dbg !69100
  %predphi18 = select <8 x i1> %i.ad, <8 x i8> splat (i8 -128), <8 x i8> zeroinitializer, !dbg !69103
  %predphi19 = select <8 x i1> %i.at, <8 x i8> %i.aj, <8 x i8> %predphi18, !dbg !69103
  %predphi20 = select <8 x i1> %i.al, <8 x i8> %i.as, <8 x i8> %predphi19, !dbg !69103
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %index15, !dbg !69104
  store <8 x i8> %predphi20, ptr %i.au, align 1, !dbg !69105
  %index.next21 = add nuw i64 %index15, 8, !dbg !69091 ; 2 uses
  %i.av = icmp eq i64 %index.next21, %n.vec14, !dbg !69075
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !69075, !llvm.loop !69070

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %3, %n.vec14, !dbg !69075
  br i1 %cmp.n22, label %._crit_edge, label %.lr.ph.preheader, !dbg !69075

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ]
  br label %.lr.ph, !dbg !69090

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !69106

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.bj, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69092
  %i.ax = load i8, ptr %i.aw, align 1, !dbg !69093, !noundef !403 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69094
  %i.az = load i8, ptr %i.ay, align 1, !dbg !69095, !noundef !403 ; 5 uses
  %i.ba = icmp eq i8 %i.az, 0, !dbg !69090
  br i1 %i.ba, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, label %bb.b, !dbg !69090

bb.b:                                             ; preds = %.lr.ph
  %i.bb = icmp eq i8 %i.ax, -128, !dbg !69096
  %i.bc = icmp eq i8 %i.az, -1, !dbg !69097       ; 2 uses
  %i.bd = and i1 %i.bb, %i.bc, !dbg !69096
  br i1 %i.bd, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, label %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i, !dbg !69098, !prof !414

_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i: ; preds = %bb.b
  %i.be = sdiv i8 %i.ax, %i.az, !dbg !69099       ; 2 uses
  %i.bf = srem i8 %i.ax, %i.az, !dbg !69101
  br i1 %i.bc, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, label %bb.c, !dbg !69100, !prof !572

bb.c:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i
  %.not.i.i = icmp ne i8 %i.bf, 0, !dbg !69102
  %i.bg = xor i8 %i.az, %i.ax
  %i.bh = icmp slt i8 %i.bg, 0
  %or.cond.i = and i1 %i.bh, %.not.i.i, !dbg !69102
  %i.bi = sext i1 %or.cond.i to i8, !dbg !69102
  %spec.select.i = add i8 %i.be, %i.bi, !dbg !69102
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, !dbg !69102

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit: ; preds = %.lr.ph, %bb.b, %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i, %bb.c
  %.sroa.0.0.i.i = phi i8 [ 0, %.lr.ph ], [ %spec.select.i, %bb.c ], [ %i.be, %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i ], [ -128, %bb.b ], !dbg !69103
  %i.bj = add nuw i64 %.sroa.01.05, 1, !dbg !69091 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !69104
  store i8 %.sroa.0.0.i.i, ptr %i.bk, align 1, !dbg !69105
  %exitcond.not = icmp eq i64 %i.bj, %3, !dbg !69089
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !69075, !llvm.loop !69071
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69107 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !69149
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !69149     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !69149
  %.not = icmp eq i64 %3, 0, !dbg !69149
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !69135

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !69150
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !69150

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !69150
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !69150
  %i.e = sub i64 %i.c, %i.b, !dbg !69150
  %diff.check9 = icmp ugt i64 %i.e, -16, !dbg !69150
  %conflict.rdx = or i1 %diff.check, %diff.check9, !dbg !69150
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !69151

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %3, 16, !dbg !69150
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph, !dbg !69150

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 8
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !69150

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69151 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69152
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !69153 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69154
  %wide.load11 = load <16 x i8>, ptr %i.h, align 1, !dbg !69155 ; 3 uses
  %i.i = icmp ne <16 x i8> %wide.load11, zeroinitializer, !dbg !69150 ; 2 uses
  %i.j = icmp ne <16 x i8> %wide.load, splat (i8 -128), !dbg !69156
  %i.k = icmp ne <16 x i8> %wide.load11, splat (i8 -1), !dbg !69157
  %.not23 = or <16 x i1> %i.j, %i.k, !dbg !69158  ; 2 uses
  %i.l = select <16 x i1> %i.i, <16 x i1> %.not23, <16 x i1> zeroinitializer, !dbg !69158
  %i.m = tail call <16 x i8> @llvm.masked.sdiv.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load11, <16 x i1> %i.l), !dbg !69159
  %predphi = select <16 x i1> %.not23, <16 x i8> %i.m, <16 x i8> splat (i8 -128), !dbg !69160
  %predphi12 = select <16 x i1> %i.i, <16 x i8> %predphi, <16 x i8> zeroinitializer, !dbg !69160
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !69161
  store <16 x i8> %predphi12, ptr %i.n, align 1, !dbg !69162
  %index.next = add nuw i64 %index, 16, !dbg !69151 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !69135
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !69135, !llvm.loop !69129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69135
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !69135

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %3, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ], !dbg !69151 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index14, !dbg !69152
  %wide.load15 = load <8 x i8>, ptr %i.p, align 1, !dbg !69153 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index14, !dbg !69154
  %wide.load16 = load <8 x i8>, ptr %i.q, align 1, !dbg !69155 ; 3 uses
  %i.r = icmp ne <8 x i8> %wide.load16, zeroinitializer, !dbg !69150 ; 2 uses
  %i.s = icmp ne <8 x i8> %wide.load15, splat (i8 -128), !dbg !69156
  %i.t = icmp ne <8 x i8> %wide.load16, splat (i8 -1), !dbg !69157
  %.not26 = or <8 x i1> %i.s, %i.t, !dbg !69158   ; 2 uses
  %i.u = select <8 x i1> %i.r, <8 x i1> %.not26, <8 x i1> zeroinitializer, !dbg !69158
  %i.v = tail call <8 x i8> @llvm.masked.sdiv.v8i8(<8 x i8> %wide.load15, <8 x i8> %wide.load16, <8 x i1> %i.u), !dbg !69159
  %predphi17 = select <8 x i1> %.not26, <8 x i8> %i.v, <8 x i8> splat (i8 -128), !dbg !69160
  %predphi18 = select <8 x i1> %i.r, <8 x i8> %predphi17, <8 x i8> zeroinitializer, !dbg !69160
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %index14, !dbg !69161
  store <8 x i8> %predphi18, ptr %i.w, align 1, !dbg !69162
  %index.next19 = add nuw i64 %index14, 8, !dbg !69151 ; 2 uses
  %i.x = icmp eq i64 %index.next19, %n.vec13, !dbg !69135
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !69135, !llvm.loop !69130

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %3, %n.vec13, !dbg !69135
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader, !dbg !69135

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ]
  br label %.lr.ph, !dbg !69150

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !69163

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.ah, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69152
  %i.z = load i8, ptr %i.y, align 1, !dbg !69153, !noundef !403 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69154
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !69155, !noundef !403 ; 3 uses
  %i.ac = icmp eq i8 %i.ab, 0, !dbg !69150
  br i1 %i.ac, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit, label %bb.b, !dbg !69150

bb.b:                                             ; preds = %.lr.ph
  %i.ad = icmp eq i8 %i.z, -128, !dbg !69156
  %i.ae = icmp eq i8 %i.ab, -1, !dbg !69157
  %i.af = and i1 %i.ad, %i.ae, !dbg !69156
  br i1 %i.af, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit, label %bb.c, !dbg !69158, !prof !414

bb.c:                                             ; preds = %bb.b
  %i.ag = sdiv i8 %i.z, %i.ab, !dbg !69159
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit, !dbg !69164

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ag, %bb.c ], [ -128, %bb.b ], !dbg !69160
  %i.ah = add nuw i64 %.sroa.01.05, 1, !dbg !69151 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !69161
  store i8 %.sroa.0.0.i, ptr %i.ai, align 1, !dbg !69162
  %exitcond.not = icmp eq i64 %i.ah, %3, !dbg !69149
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !69135, !llvm.loop !69131
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaadNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl13prim_true_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69165 {
bb.a:
  switch i64 %3, label %vector.memcheck [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.preheader
  ], !dbg !69209

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %3, 3, !dbg !69209
  %i.b = getelementptr i8, ptr %2, i64 %i.a, !dbg !69209 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 %3, !dbg !69209
  %i.d = getelementptr i8, ptr %1, i64 %3, !dbg !69209
  %bound0 = icmp ult ptr %2, %i.c, !dbg !69209
  %bound1 = icmp ult ptr %0, %i.b, !dbg !69209
  %found.conflict = and i1 %bound0, %bound1, !dbg !69209
  %bound011 = icmp ult ptr %2, %i.d, !dbg !69209
  %bound112 = icmp ult ptr %1, %i.b, !dbg !69209
  %found.conflict13 = and i1 %bound011, %bound112, !dbg !69209
  %conflict.rdx = or i1 %found.conflict, %found.conflict13, !dbg !69209
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.ph, !dbg !69210

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -2                         ; 3 uses
  br label %vector.body, !dbg !69210

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69210 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69211
  %wide.load = load <2 x i8>, ptr %i.e, align 1, !dbg !69212, !alias.scope !69195
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69213
  %wide.load14 = load <2 x i8>, ptr %i.f, align 1, !dbg !69214, !alias.scope !69199
  %i.g = sitofp <2 x i8> %wide.load to <2 x double>, !dbg !69215
  %i.h = sitofp <2 x i8> %wide.load14 to <2 x double>, !dbg !69216
  %i.i = fdiv <2 x double> %i.g, %i.h, !dbg !69215
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index, !dbg !69217
  store <2 x double> %i.i, ptr %i.j, align 8, !dbg !69218, !alias.scope !69205, !noalias !69206
  %index.next = add nuw i64 %index, 2, !dbg !69210 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !69209
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !69209, !llvm.loop !69186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69209
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader, !dbg !69209

.lr.ph.preheader:                                 ; preds = %bb.a, %vector.memcheck, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !69209
  %xtraiter = and i64 %3, 1, !dbg !69209
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !69209
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69209

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.ph, !dbg !69211
  %i.m = load i8, ptr %i.l, align 1, !dbg !69212, !noundef !403
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.ph, !dbg !69213
  %i.o = load i8, ptr %i.n, align 1, !dbg !69214, !noundef !403
  %i.p = sitofp i8 %i.m to double, !dbg !69215
  %i.q = sitofp i8 %i.o to double, !dbg !69216
  %i.r = fdiv double %i.p, %i.q, !dbg !69215
  %i.s = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !69210
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05.ph, !dbg !69217
  store double %i.r, ptr %i.t, align 8, !dbg !69218
  br label %.lr.ph.prol.loopexit, !dbg !69209

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.u = icmp eq i64 %3, %.neg, !dbg !69209
  br i1 %i.u, label %._crit_edge, label %.lr.ph, !dbg !69209

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void, !dbg !69219

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.al, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69211
  %i.w = load i8, ptr %i.v, align 1, !dbg !69212, !noundef !403
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69213
  %i.y = load i8, ptr %i.x, align 1, !dbg !69214, !noundef !403
  %i.z = sitofp i8 %i.w to double, !dbg !69215
  %i.aa = sitofp i8 %i.y to double, !dbg !69216
  %i.ab = fdiv double %i.z, %i.aa, !dbg !69215
  %i.ac = add nuw i64 %.sroa.01.05, 1, !dbg !69210 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05, !dbg !69217
  store double %i.ab, ptr %i.ad, align 8, !dbg !69218
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac, !dbg !69211
  %i.af = load i8, ptr %i.ae, align 1, !dbg !69212, !noundef !403
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac, !dbg !69213
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !69214, !noundef !403
  %i.ai = sitofp i8 %i.af to double, !dbg !69215
  %i.aj = sitofp i8 %i.ah to double, !dbg !69216
  %i.ak = fdiv double %i.ai, %i.aj, !dbg !69215
  %i.al = add nuw i64 %.sroa.01.05, 2, !dbg !69210 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac, !dbg !69217
  store double %i.ak, ptr %i.am, align 8, !dbg !69218
end_hunk_0
begin_hunk_1_@_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelfffNCNvXs_NtNtB4_10arithmetic5floatfNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_:bb.a
  %exitcond.not.1 = icmp eq i64 %i.ai, %3, !dbg !69858
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !69844, !llvm.loop !69840
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelfffNCNvXs_NtNtB4_10arithmetic5floatfNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69869 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !69910
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !69910
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !69910     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !69910
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !69896

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !69896
  br i1 %min.iters.check, label %.lr.ph.preheader9, label %vector.memcheck, !dbg !69896

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c, !dbg !69896
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !69896
  %i.e = sub i64 %i.a, %i.c, !dbg !69896
  %diff.check7 = icmp ugt i64 %i.e, -16, !dbg !69896
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !69896
  br i1 %conflict.rdx, label %.lr.ph.preheader9, label %vector.ph, !dbg !69911

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 3 uses
  br label %vector.body, !dbg !69911

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69911 ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !69912
  %wide.load = load <4 x float>, ptr %i.f, align 4, !dbg !69913
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index, !dbg !69914
  %wide.load8 = load <4 x float>, ptr %i.g, align 4, !dbg !69915
  %i.h = fdiv <4 x float> %wide.load, %wide.load8, !dbg !69916
  %i.i = tail call <4 x float> @llvm.trunc.v4f32(<4 x float> %i.h), !dbg !69917
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index, !dbg !69918
  store <4 x float> %i.i, ptr %i.j, align 4, !dbg !69919
  %index.next = add nuw i64 %index, 4, !dbg !69911 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !69896
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !69896, !llvm.loop !69891

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69896
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9, !dbg !69896

.lr.ph.preheader9:                                ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !69896
  %xtraiter = and i64 %3, 1, !dbg !69896
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !69896
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69896

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader9
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.05.ph, !dbg !69912
  %i.m = load float, ptr %i.l, align 4, !dbg !69913, !noundef !403
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.05.ph, !dbg !69914
  %i.o = load float, ptr %i.n, align 4, !dbg !69915, !noundef !403
  %i.p = fdiv float %i.m, %i.o, !dbg !69916
  %i.q = tail call noundef float @llvm.trunc.f32(float %i.p), !dbg !69917
  %i.r = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !69911
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.01.05.ph, !dbg !69918
  store float %i.q, ptr %i.s, align 4, !dbg !69919
  br label %.lr.ph.prol.loopexit, !dbg !69896

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader9
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader9 ], [ %i.r, %.lr.ph.prol ]
  %i.t = icmp eq i64 %3, %.neg, !dbg !69896
  br i1 %i.t, label %._crit_edge, label %.lr.ph, !dbg !69896

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void, !dbg !69920

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.ai, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.05, !dbg !69912
  %i.v = load float, ptr %i.u, align 4, !dbg !69913, !noundef !403
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.05, !dbg !69914
  %i.x = load float, ptr %i.w, align 4, !dbg !69915, !noundef !403
  %i.y = fdiv float %i.v, %i.x, !dbg !69916
  %i.z = tail call noundef float @llvm.trunc.f32(float %i.y), !dbg !69917
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !69911 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.01.05, !dbg !69918
  store float %i.z, ptr %i.ab, align 4, !dbg !69919
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa, !dbg !69912
  %i.ad = load float, ptr %i.ac, align 4, !dbg !69913, !noundef !403
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aa, !dbg !69914
  %i.af = load float, ptr %i.ae, align 4, !dbg !69915, !noundef !403
  %i.ag = fdiv float %i.ad, %i.af, !dbg !69916
  %i.ah = tail call noundef float @llvm.trunc.f32(float %i.ag), !dbg !69917
  %i.ai = add nuw i64 %.sroa.01.05, 2, !dbg !69911 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa, !dbg !69918
  store float %i.ah, ptr %i.aj, align 4, !dbg !69919
  %exitcond.not.1 = icmp eq i64 %i.ai, %3, !dbg !69910
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !69896, !llvm.loop !69892
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhdNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl13prim_true_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69921 {
bb.a:
  switch i64 %3, label %vector.memcheck [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.preheader
  ], !dbg !69965

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %3, 3, !dbg !69965
  %i.b = getelementptr i8, ptr %2, i64 %i.a, !dbg !69965 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 %3, !dbg !69965
  %i.d = getelementptr i8, ptr %1, i64 %3, !dbg !69965
  %bound0 = icmp ult ptr %2, %i.c, !dbg !69965
  %bound1 = icmp ult ptr %0, %i.b, !dbg !69965
  %found.conflict = and i1 %bound0, %bound1, !dbg !69965
  %bound011 = icmp ult ptr %2, %i.d, !dbg !69965
  %bound112 = icmp ult ptr %1, %i.b, !dbg !69965
  %found.conflict13 = and i1 %bound011, %bound112, !dbg !69965
  %conflict.rdx = or i1 %found.conflict, %found.conflict13, !dbg !69965
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.ph, !dbg !69966

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -2                         ; 3 uses
  br label %vector.body, !dbg !69966

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69966 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69967
  %wide.load = load <2 x i8>, ptr %i.e, align 1, !dbg !69968, !alias.scope !69951
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69969
  %wide.load14 = load <2 x i8>, ptr %i.f, align 1, !dbg !69970, !alias.scope !69955
  %i.g = uitofp <2 x i8> %wide.load to <2 x double>, !dbg !69971
  %i.h = uitofp <2 x i8> %wide.load14 to <2 x double>, !dbg !69972
  %i.i = fdiv <2 x double> %i.g, %i.h, !dbg !69971
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index, !dbg !69973
  store <2 x double> %i.i, ptr %i.j, align 8, !dbg !69974, !alias.scope !69961, !noalias !69962
  %index.next = add nuw i64 %index, 2, !dbg !69966 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !69965
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !69965, !llvm.loop !69942

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69965
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader, !dbg !69965

.lr.ph.preheader:                                 ; preds = %bb.a, %vector.memcheck, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !69965
  %xtraiter = and i64 %3, 1, !dbg !69965
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !69965
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69965

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.ph, !dbg !69967
  %i.m = load i8, ptr %i.l, align 1, !dbg !69968, !noundef !403
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.ph, !dbg !69969
  %i.o = load i8, ptr %i.n, align 1, !dbg !69970, !noundef !403
  %i.p = uitofp i8 %i.m to double, !dbg !69971
  %i.q = uitofp i8 %i.o to double, !dbg !69972
  %i.r = fdiv double %i.p, %i.q, !dbg !69971
  %i.s = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !69966
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05.ph, !dbg !69973
  store double %i.r, ptr %i.t, align 8, !dbg !69974
  br label %.lr.ph.prol.loopexit, !dbg !69965

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.u = icmp eq i64 %3, %.neg, !dbg !69965
  br i1 %i.u, label %._crit_edge, label %.lr.ph, !dbg !69965

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void, !dbg !69975

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.al, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69967
  %i.w = load i8, ptr %i.v, align 1, !dbg !69968, !noundef !403
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69969
  %i.y = load i8, ptr %i.x, align 1, !dbg !69970, !noundef !403
  %i.z = uitofp i8 %i.w to double, !dbg !69971
  %i.aa = uitofp i8 %i.y to double, !dbg !69972
  %i.ab = fdiv double %i.z, %i.aa, !dbg !69971
  %i.ac = add nuw i64 %.sroa.01.05, 1, !dbg !69966 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05, !dbg !69973
  store double %i.ab, ptr %i.ad, align 8, !dbg !69974
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac, !dbg !69967
  %i.af = load i8, ptr %i.ae, align 1, !dbg !69968, !noundef !403
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac, !dbg !69969
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !69970, !noundef !403
  %i.ai = uitofp i8 %i.af to double, !dbg !69971
  %i.aj = uitofp i8 %i.ah to double, !dbg !69972
  %i.ak = fdiv double %i.ai, %i.aj, !dbg !69971
  %i.al = add nuw i64 %.sroa.01.05, 2, !dbg !69966 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac, !dbg !69973
  store double %i.ak, ptr %i.am, align 8, !dbg !69974
  %exitcond.not.1 = icmp eq i64 %i.al, %3, !dbg !69976
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !69965, !llvm.loop !69944
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_add0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69977 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !70018
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !70018     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !70018
  %.not = icmp eq i64 %3, 0, !dbg !70018
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !70004

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !70004
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !70004

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !70004
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !70004
  %i.e = sub i64 %i.c, %i.b, !dbg !70004
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !70004
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !70004
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !70019

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 32, !dbg !70004
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !70004

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !70004

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !70019 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !70020 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !70021
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !70021
  %wide.load9 = load <16 x i8>, ptr %i.h, align 1, !dbg !70021
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !70022 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !70023
  %wide.load10 = load <16 x i8>, ptr %i.i, align 1, !dbg !70023
  %wide.load11 = load <16 x i8>, ptr %i.j, align 1, !dbg !70023
  %i.k = add <16 x i8> %wide.load10, %wide.load, !dbg !70024
  %i.l = add <16 x i8> %wide.load11, %wide.load9, !dbg !70024
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !70025 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !70026
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !70026
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !70026
  %index.next = add nuw i64 %index, 32, !dbg !70019 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !70004
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !70004, !llvm.loop !69997

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !70004
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !70004

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !70019 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index13, !dbg !70020
  %wide.load14 = load <4 x i8>, ptr %i.p, align 1, !dbg !70021
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index13, !dbg !70022
  %wide.load15 = load <4 x i8>, ptr %i.q, align 1, !dbg !70023
  %i.r = add <4 x i8> %wide.load15, %wide.load14, !dbg !70024
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index13, !dbg !70025
  store <4 x i8> %i.r, ptr %i.s, align 1, !dbg !70026
  %index.next16 = add nuw i64 %index13, 4, !dbg !70019 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !70004
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !70004, !llvm.loop !69998

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !70004
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !70004

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !70004          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70004
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70004

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !70020
  %i.v = load i8, ptr %i.u, align 1, !dbg !70021, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !70022
  %i.x = load i8, ptr %i.w, align 1, !dbg !70023, !noundef !403
  %i.y = add i8 %i.x, %i.v, !dbg !70024
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !70019 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !70025
  store i8 %i.y, ptr %i.aa, align 1, !dbg !70026
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !70004 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !70004
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70004, !llvm.loop !69999

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !70004
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !70004
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !70004

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !70027

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70020
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !70021, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70022
  %i.ag = load i8, ptr %i.af, align 1, !dbg !70023, !noundef !403
  %i.ah = add i8 %i.ag, %i.ae, !dbg !70024
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !70019 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !70025
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !70026
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !70020
  %i.al = load i8, ptr %i.ak, align 1, !dbg !70021, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !70022
  %i.an = load i8, ptr %i.am, align 1, !dbg !70023, !noundef !403
  %i.ao = add i8 %i.an, %i.al, !dbg !70024
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !70019 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !70025
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !70026
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !70020
  %i.as = load i8, ptr %i.ar, align 1, !dbg !70021, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !70022
  %i.au = load i8, ptr %i.at, align 1, !dbg !70023, !noundef !403
  %i.av = add i8 %i.au, %i.as, !dbg !70024
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !70019 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !70025
  store i8 %i.av, ptr %i.ax, align 1, !dbg !70026
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !70020
  %i.az = load i8, ptr %i.ay, align 1, !dbg !70021, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !70022
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !70023, !noundef !403
  %i.bc = add i8 %i.bb, %i.az, !dbg !70024
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !70019 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !70025
  store i8 %i.bc, ptr %i.be, align 1, !dbg !70026
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !70018
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !70004, !llvm.loop !70000
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70028 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !70063
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !70049

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !70064
  %i.a = icmp eq i64 %3, 1, !dbg !70064
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !70064

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2, !dbg !70064
  br label %.lr.ph, !dbg !70064

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70064
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !70064

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i64 %3 to i1, !dbg !70064
  tail call void @llvm.assume(i1 %lcmp.mod8), !dbg !70064
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.epil.init, !dbg !70065
  %i.c = load i8, ptr %i.b, align 1, !dbg !70066, !noundef !403 ; 2 uses
  %i.d = icmp eq i8 %i.c, 0, !dbg !70064
  br i1 %i.d, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.epil, label %bb.b, !dbg !70064

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.epil.init, !dbg !70067
  %i.f = load i8, ptr %i.e, align 1, !dbg !70068, !noundef !403
  %i.g = urem i8 %i.f, %i.c, !dbg !70069
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.epil, !dbg !70070

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.epil: ; preds = %bb.b, %.lr.ph.epil.preheader
  %.sroa.0.0.i.epil = phi i8 [ %i.g, %bb.b ], [ 0, %.lr.ph.epil.preheader ], !dbg !70071
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.epil.init, !dbg !70072
  store i8 %.sroa.0.0.i.epil, ptr %i.h, align 1, !dbg !70073
  br label %._crit_edge, !dbg !70074

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void, !dbg !70074

.lr.ph:                                           ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1, %.lr.ph.preheader.new
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70065
  %i.j = load i8, ptr %i.i, align 1, !dbg !70066, !noundef !403 ; 2 uses
  %i.k = icmp eq i8 %i.j, 0, !dbg !70064
  br i1 %i.k, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, label %bb.c, !dbg !70064

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70067
  %i.m = load i8, ptr %i.l, align 1, !dbg !70068, !noundef !403
  %i.n = urem i8 %i.m, %i.j, !dbg !70069
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, !dbg !70070

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.n, %bb.c ], [ 0, %.lr.ph ], !dbg !70071
  %i.o = or disjoint i64 %.sroa.01.05, 1, !dbg !70075 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !70072
  store i8 %.sroa.0.0.i, ptr %i.p, align 1, !dbg !70073
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o, !dbg !70065
  %i.r = load i8, ptr %i.q, align 1, !dbg !70066, !noundef !403 ; 2 uses
  %i.s = icmp eq i8 %i.r, 0, !dbg !70064
  br i1 %i.s, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1, label %bb.d, !dbg !70064

bb.d:                                             ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !70067
  %i.u = load i8, ptr %i.t, align 1, !dbg !70068, !noundef !403
  %i.v = urem i8 %i.u, %i.r, !dbg !70069
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1, !dbg !70070

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1: ; preds = %bb.d, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit
  %.sroa.0.0.i.1 = phi i8 [ %i.v, %bb.d ], [ 0, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit ], !dbg !70071
  %i.w = add nuw i64 %.sroa.01.05, 2, !dbg !70075 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.o, !dbg !70072
  store i8 %.sroa.0.0.i.1, ptr %i.x, align 1, !dbg !70073
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !70049 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !70049
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !dbg !70049
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70076 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !70117
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !70117     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !70117
  %.not = icmp eq i64 %3, 0, !dbg !70117
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !70103

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !70103
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !70103

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !70103
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !70103
  %i.e = sub i64 %i.c, %i.b, !dbg !70103
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !70103
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !70103
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !70118

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 32, !dbg !70103
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !70103

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 24
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !70103

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !70118 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !70119 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !70120
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !70120
  %wide.load9 = load <16 x i8>, ptr %i.h, align 1, !dbg !70120
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !70121 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !70122
  %wide.load10 = load <16 x i8>, ptr %i.i, align 1, !dbg !70122
  %wide.load11 = load <16 x i8>, ptr %i.j, align 1, !dbg !70122
  %i.k = mul <16 x i8> %wide.load10, %wide.load, !dbg !70123
  %i.l = mul <16 x i8> %wide.load11, %wide.load9, !dbg !70123
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !70124 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !70125
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !70125
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !70125
  %index.next = add nuw i64 %index, 32, !dbg !70118 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !70103
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !70103, !llvm.loop !70096

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !70103
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !70103

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !563

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !70118 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index13, !dbg !70119
  %wide.load14 = load <8 x i8>, ptr %i.p, align 1, !dbg !70120
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index13, !dbg !70121
  %wide.load15 = load <8 x i8>, ptr %i.q, align 1, !dbg !70122
  %i.r = mul <8 x i8> %wide.load15, %wide.load14, !dbg !70123
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index13, !dbg !70124
  store <8 x i8> %i.r, ptr %i.s, align 1, !dbg !70125
  %index.next16 = add nuw i64 %index13, 8, !dbg !70118 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !70103
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !70103, !llvm.loop !70097

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !70103
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !70103

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !70103          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70103
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70103

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !70119
  %i.v = load i8, ptr %i.u, align 1, !dbg !70120, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !70121
  %i.x = load i8, ptr %i.w, align 1, !dbg !70122, !noundef !403
  %i.y = mul i8 %i.x, %i.v, !dbg !70123
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !70118 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !70124
  store i8 %i.y, ptr %i.aa, align 1, !dbg !70125
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !70103 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !70103
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70103, !llvm.loop !70098

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !70103
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !70103
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !70103

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !70126

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70119
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !70120, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70121
  %i.ag = load i8, ptr %i.af, align 1, !dbg !70122, !noundef !403
  %i.ah = mul i8 %i.ag, %i.ae, !dbg !70123
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !70118 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !70124
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !70125
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !70119
  %i.al = load i8, ptr %i.ak, align 1, !dbg !70120, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !70121
  %i.an = load i8, ptr %i.am, align 1, !dbg !70122, !noundef !403
  %i.ao = mul i8 %i.an, %i.al, !dbg !70123
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !70118 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !70124
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !70125
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !70119
  %i.as = load i8, ptr %i.ar, align 1, !dbg !70120, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !70121
  %i.au = load i8, ptr %i.at, align 1, !dbg !70122, !noundef !403
  %i.av = mul i8 %i.au, %i.as, !dbg !70123
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !70118 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !70124
  store i8 %i.av, ptr %i.ax, align 1, !dbg !70125
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !70119
  %i.az = load i8, ptr %i.ay, align 1, !dbg !70120, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !70121
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !70122, !noundef !403
  %i.bc = mul i8 %i.bb, %i.az, !dbg !70123
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !70118 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !70124
  store i8 %i.bc, ptr %i.be, align 1, !dbg !70125
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !70117
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !70103, !llvm.loop !70099
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70127 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !70168
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !70168     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !70168
  %.not = icmp eq i64 %3, 0, !dbg !70168
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !70154

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !70154
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !70154

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !70154
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !70154
  %i.e = sub i64 %i.c, %i.b, !dbg !70154
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !70154
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !70154
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !70169

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 32, !dbg !70154
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !70154

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !70154

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !70169 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !70170 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !70171
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !70171
  %wide.load9 = load <16 x i8>, ptr %i.h, align 1, !dbg !70171
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !70172 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !70173
  %wide.load10 = load <16 x i8>, ptr %i.i, align 1, !dbg !70173
  %wide.load11 = load <16 x i8>, ptr %i.j, align 1, !dbg !70173
  %i.k = sub <16 x i8> %wide.load, %wide.load10, !dbg !70174
  %i.l = sub <16 x i8> %wide.load9, %wide.load11, !dbg !70174
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !70175 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !70176
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !70176
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !70176
  %index.next = add nuw i64 %index, 32, !dbg !70169 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !70154
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !70154, !llvm.loop !70147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !70154
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !70154

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !70169 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index13, !dbg !70170
  %wide.load14 = load <4 x i8>, ptr %i.p, align 1, !dbg !70171
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index13, !dbg !70172
  %wide.load15 = load <4 x i8>, ptr %i.q, align 1, !dbg !70173
  %i.r = sub <4 x i8> %wide.load14, %wide.load15, !dbg !70174
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index13, !dbg !70175
  store <4 x i8> %i.r, ptr %i.s, align 1, !dbg !70176
  %index.next16 = add nuw i64 %index13, 4, !dbg !70169 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !70154
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !70154, !llvm.loop !70148

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !70154
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !70154

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !70154          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70154
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70154

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !70170
  %i.v = load i8, ptr %i.u, align 1, !dbg !70171, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !70172
  %i.x = load i8, ptr %i.w, align 1, !dbg !70173, !noundef !403
  %i.y = sub i8 %i.v, %i.x, !dbg !70174
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !70169 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !70175
  store i8 %i.y, ptr %i.aa, align 1, !dbg !70176
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !70154 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !70154
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70154, !llvm.loop !70149

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !70154
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !70154
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !70154

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !70177

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70170
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !70171, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70172
  %i.ag = load i8, ptr %i.af, align 1, !dbg !70173, !noundef !403
  %i.ah = sub i8 %i.ae, %i.ag, !dbg !70174
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !70169 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !70175
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !70176
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !70170
  %i.al = load i8, ptr %i.ak, align 1, !dbg !70171, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !70172
  %i.an = load i8, ptr %i.am, align 1, !dbg !70173, !noundef !403
  %i.ao = sub i8 %i.al, %i.an, !dbg !70174
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !70169 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !70175
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !70176
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !70170
  %i.as = load i8, ptr %i.ar, align 1, !dbg !70171, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !70172
  %i.au = load i8, ptr %i.at, align 1, !dbg !70173, !noundef !403
  %i.av = sub i8 %i.as, %i.au, !dbg !70174
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !70169 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !70175
  store i8 %i.av, ptr %i.ax, align 1, !dbg !70176
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !70170
  %i.az = load i8, ptr %i.ay, align 1, !dbg !70171, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !70172
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !70173, !noundef !403
  %i.bc = sub i8 %i.az, %i.bb, !dbg !70174
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !70169 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !70175
  store i8 %i.bc, ptr %i.be, align 1, !dbg !70176
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !70168
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !70154, !llvm.loop !70150
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70178 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !70213
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !70199

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !70214
  %i.a = icmp eq i64 %3, 1, !dbg !70214
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !70214

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2, !dbg !70214
  br label %.lr.ph, !dbg !70214

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70214
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !70214

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i64 %3 to i1, !dbg !70214
  tail call void @llvm.assume(i1 %lcmp.mod8), !dbg !70214
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.epil.init, !dbg !70215
  %i.c = load i8, ptr %i.b, align 1, !dbg !70216, !noundef !403 ; 2 uses
  %i.d = icmp eq i8 %i.c, 0, !dbg !70214
  br i1 %i.d, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.epil, label %bb.b, !dbg !70214

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.epil.init, !dbg !70217
  %i.f = load i8, ptr %i.e, align 1, !dbg !70218, !noundef !403
  %i.g = udiv i8 %i.f, %i.c, !dbg !70219
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.epil, !dbg !70220

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.epil: ; preds = %bb.b, %.lr.ph.epil.preheader
  %.sroa.0.0.i.epil = phi i8 [ %i.g, %bb.b ], [ 0, %.lr.ph.epil.preheader ], !dbg !70221
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.epil.init, !dbg !70222
  store i8 %.sroa.0.0.i.epil, ptr %i.h, align 1, !dbg !70223
  br label %._crit_edge, !dbg !70224

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void, !dbg !70224

.lr.ph:                                           ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.1, %.lr.ph.preheader.new
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.1 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70215
  %i.j = load i8, ptr %i.i, align 1, !dbg !70216, !noundef !403 ; 2 uses
  %i.k = icmp eq i8 %i.j, 0, !dbg !70214
  br i1 %i.k, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, label %bb.c, !dbg !70214

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70217
  %i.m = load i8, ptr %i.l, align 1, !dbg !70218, !noundef !403
  %i.n = udiv i8 %i.m, %i.j, !dbg !70219
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, !dbg !70220

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.n, %bb.c ], [ 0, %.lr.ph ], !dbg !70221
  %i.o = or disjoint i64 %.sroa.01.05, 1, !dbg !70225 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !70222
  store i8 %.sroa.0.0.i, ptr %i.p, align 1, !dbg !70223
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o, !dbg !70215
  %i.r = load i8, ptr %i.q, align 1, !dbg !70216, !noundef !403 ; 2 uses
  %i.s = icmp eq i8 %i.r, 0, !dbg !70214
  br i1 %i.s, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.1, label %bb.d, !dbg !70214

bb.d:                                             ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !70217
end_hunk_1
begin_hunk_2_@_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneloooNCNvXs2_NtNtB4_10arithmetic8unsignedoNtB1g_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_:bb.a
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.m, !dbg !71445
  store i128 %i.s, ptr %i.u, align 16, !dbg !71446
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !71425 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !71425
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !dbg !71425
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneloooNCNvXs2_NtNtB4_10arithmetic8unsignedoNtB1g_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71449 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !71486
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !71472

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !71472
  %i.a = icmp eq i64 %3, 1, !dbg !71472
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !71472

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2, !dbg !71472
  br label %.lr.ph, !dbg !71472

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71472
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !71472

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod6 = trunc i64 %3 to i1, !dbg !71472
  tail call void @llvm.assume(i1 %lcmp.mod6), !dbg !71472
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.05.epil.init, !dbg !71487
  %i.c = load i128, ptr %i.b, align 16, !dbg !71488, !noundef !403
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.05.epil.init, !dbg !71489
  %i.e = load i128, ptr %i.d, align 16, !dbg !71490, !noundef !403
  %i.f = sub i128 %i.c, %i.e, !dbg !71491
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.05.epil.init, !dbg !71492
  store i128 %i.f, ptr %i.g, align 16, !dbg !71493
  br label %._crit_edge, !dbg !71494

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void, !dbg !71494

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71487
  %i.i = load i128, ptr %i.h, align 16, !dbg !71488, !noundef !403
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71489
  %i.k = load i128, ptr %i.j, align 16, !dbg !71490, !noundef !403
  %i.l = sub i128 %i.i, %i.k, !dbg !71491
  %i.m = or disjoint i64 %.sroa.01.05, 1, !dbg !71495 ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71492
  store i128 %i.l, ptr %i.n, align 16, !dbg !71493
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m, !dbg !71487
  %i.p = load i128, ptr %i.o, align 16, !dbg !71488, !noundef !403
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.m, !dbg !71489
  %i.r = load i128, ptr %i.q, align 16, !dbg !71490, !noundef !403
  %i.s = sub i128 %i.p, %i.r, !dbg !71491
  %i.t = add nuw i64 %.sroa.01.05, 2, !dbg !71495 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.m, !dbg !71492
  store i128 %i.s, ptr %i.u, align 16, !dbg !71493
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !71472 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !71472
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !dbg !71472
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneloooNCNvXs2_NtNtB4_10arithmetic8unsignedoNtB1g_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71496 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !71531
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !71517

._crit_edge:                                      ; preds = %_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit, %bb.a
  ret void, !dbg !71532

.lr.ph:                                           ; preds = %bb.a, %_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit
  %.sroa.01.05 = phi i64 [ %i.g, %_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71533
  %i.b = load i128, ptr %i.a, align 16, !dbg !71534, !noundef !403 ; 2 uses
  %i.c = icmp eq i128 %i.b, 0, !dbg !71535
  br i1 %i.c, label %_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit, label %bb.b, !dbg !71535

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71536
  %i.e = load i128, ptr %i.d, align 16, !dbg !71537, !noundef !403
  %i.f = udiv i128 %i.e, %i.b, !dbg !71538
  br label %_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit, !dbg !71539

_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit: ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i = phi i128 [ %i.f, %bb.b ], [ 0, %.lr.ph ], !dbg !71540
  %i.g = add nuw i64 %.sroa.01.05, 1, !dbg !71541 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71542
  store i128 %.sroa.0.0.i, ptr %i.h, align 16, !dbg !71543
  %exitcond.not = icmp eq i64 %i.g, %3, !dbg !71531
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !71517
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelssdNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl13prim_true_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71544 {
bb.a:
  switch i64 %3, label %vector.memcheck [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.preheader
  ], !dbg !71588

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %3, 3, !dbg !71588
  %i.b = getelementptr i8, ptr %2, i64 %i.a, !dbg !71588 ; 2 uses
  %i.c = shl i64 %3, 1, !dbg !71588               ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c, !dbg !71588
  %i.e = getelementptr i8, ptr %1, i64 %i.c, !dbg !71588
  %bound0 = icmp ult ptr %2, %i.d, !dbg !71588
  %bound1 = icmp ult ptr %0, %i.b, !dbg !71588
  %found.conflict = and i1 %bound0, %bound1, !dbg !71588
  %bound011 = icmp ult ptr %2, %i.e, !dbg !71588
  %bound112 = icmp ult ptr %1, %i.b, !dbg !71588
  %found.conflict13 = and i1 %bound011, %bound112, !dbg !71588
  %conflict.rdx = or i1 %found.conflict, %found.conflict13, !dbg !71588
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.ph, !dbg !71589

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -2                         ; 3 uses
  br label %vector.body, !dbg !71589

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71589 ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71590
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !dbg !71591, !alias.scope !71574
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71592
  %wide.load14 = load <2 x i16>, ptr %i.g, align 2, !dbg !71593, !alias.scope !71578
  %i.h = sitofp <2 x i16> %wide.load to <2 x double>, !dbg !71594
  %i.i = sitofp <2 x i16> %wide.load14 to <2 x double>, !dbg !71595
  %i.j = fdiv <2 x double> %i.h, %i.i, !dbg !71594
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index, !dbg !71596
  store <2 x double> %i.j, ptr %i.k, align 8, !dbg !71597, !alias.scope !71584, !noalias !71585
  %index.next = add nuw i64 %index, 2, !dbg !71589 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !71588
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !71588, !llvm.loop !71565

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71588
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader, !dbg !71588

.lr.ph.preheader:                                 ; preds = %bb.a, %vector.memcheck, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !71588
  %xtraiter = and i64 %3, 1, !dbg !71588
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71588
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71588

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.ph, !dbg !71590
  %i.n = load i16, ptr %i.m, align 2, !dbg !71591, !noundef !403
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.ph, !dbg !71592
  %i.p = load i16, ptr %i.o, align 2, !dbg !71593, !noundef !403
  %i.q = sitofp i16 %i.n to double, !dbg !71594
  %i.r = sitofp i16 %i.p to double, !dbg !71595
  %i.s = fdiv double %i.q, %i.r, !dbg !71594
  %i.t = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !71589
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05.ph, !dbg !71596
  store double %i.s, ptr %i.u, align 8, !dbg !71597
  br label %.lr.ph.prol.loopexit, !dbg !71588

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.v = icmp eq i64 %3, %.neg, !dbg !71588
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !71588

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void, !dbg !71598

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.am, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71590
  %i.x = load i16, ptr %i.w, align 2, !dbg !71591, !noundef !403
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71592
  %i.z = load i16, ptr %i.y, align 2, !dbg !71593, !noundef !403
  %i.aa = sitofp i16 %i.x to double, !dbg !71594
  %i.ab = sitofp i16 %i.z to double, !dbg !71595
  %i.ac = fdiv double %i.aa, %i.ab, !dbg !71594
  %i.ad = add nuw i64 %.sroa.01.05, 1, !dbg !71589 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71596
  store double %i.ac, ptr %i.ae, align 8, !dbg !71597
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad, !dbg !71590
  %i.ag = load i16, ptr %i.af, align 2, !dbg !71591, !noundef !403
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad, !dbg !71592
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !71593, !noundef !403
  %i.aj = sitofp i16 %i.ag to double, !dbg !71594
  %i.ak = sitofp i16 %i.ai to double, !dbg !71595
  %i.al = fdiv double %i.aj, %i.ak, !dbg !71594
  %i.am = add nuw i64 %.sroa.01.05, 2, !dbg !71589 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad, !dbg !71596
  store double %i.al, ptr %i.an, align 8, !dbg !71597
  %exitcond.not.1 = icmp eq i64 %i.am, %3, !dbg !71599
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !71588, !llvm.loop !71567
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_add0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71600 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !71641
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !71641     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !71641
  %.not = icmp eq i64 %3, 0, !dbg !71641
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !71627

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !71627
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !71627

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !71627
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !71627
  %i.e = sub i64 %i.c, %i.b, !dbg !71627
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !71627
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !71627
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !71642

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 16, !dbg !71627
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !71627

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !71627

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71642 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71643 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !71644
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !71644
  %wide.load9 = load <8 x i16>, ptr %i.h, align 2, !dbg !71644
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71645 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !71646
  %wide.load10 = load <8 x i16>, ptr %i.i, align 2, !dbg !71646
  %wide.load11 = load <8 x i16>, ptr %i.j, align 2, !dbg !71646
  %i.k = add <8 x i16> %wide.load10, %wide.load, !dbg !71647
  %i.l = add <8 x i16> %wide.load11, %wide.load9, !dbg !71647
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !71648 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !71649
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !71649
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !71649
  %index.next = add nuw i64 %index, 16, !dbg !71642 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !71627
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !71627, !llvm.loop !71620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71627
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !71627

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !71642 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index13, !dbg !71643
  %wide.load14 = load <4 x i16>, ptr %i.p, align 2, !dbg !71644
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index13, !dbg !71645
  %wide.load15 = load <4 x i16>, ptr %i.q, align 2, !dbg !71646
  %i.r = add <4 x i16> %wide.load15, %wide.load14, !dbg !71647
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index13, !dbg !71648
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !71649
  %index.next16 = add nuw i64 %index13, 4, !dbg !71642 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !71627
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71627, !llvm.loop !71621

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !71627
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !71627

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !71627          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71627
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71627

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !71643
  %i.v = load i16, ptr %i.u, align 2, !dbg !71644, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !71645
  %i.x = load i16, ptr %i.w, align 2, !dbg !71646, !noundef !403
  %i.y = add i16 %i.x, %i.v, !dbg !71647
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !71642 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !71648
  store i16 %i.y, ptr %i.aa, align 2, !dbg !71649
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !71627 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !71627
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71627, !llvm.loop !71622

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !71627
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !71627
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !71627

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !71650

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71643
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !71644, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71645
  %i.ag = load i16, ptr %i.af, align 2, !dbg !71646, !noundef !403
  %i.ah = add i16 %i.ag, %i.ae, !dbg !71647
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !71642 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71648
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !71649
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !71643
  %i.al = load i16, ptr %i.ak, align 2, !dbg !71644, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !71645
  %i.an = load i16, ptr %i.am, align 2, !dbg !71646, !noundef !403
  %i.ao = add i16 %i.an, %i.al, !dbg !71647
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !71642 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !71648
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !71649
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !71643
  %i.as = load i16, ptr %i.ar, align 2, !dbg !71644, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !71645
  %i.au = load i16, ptr %i.at, align 2, !dbg !71646, !noundef !403
  %i.av = add i16 %i.au, %i.as, !dbg !71647
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !71642 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !71648
  store i16 %i.av, ptr %i.ax, align 2, !dbg !71649
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !71643
  %i.az = load i16, ptr %i.ay, align 2, !dbg !71644, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !71645
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !71646, !noundef !403
  %i.bc = add i16 %i.bb, %i.az, !dbg !71647
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !71642 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !71648
  store i16 %i.bc, ptr %i.be, align 2, !dbg !71649
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !71641
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !71627, !llvm.loop !71623
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71651 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !71691
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !71691
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !71691     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !71691
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !71677

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !71692
  br i1 %min.iters.check, label %.lr.ph.preheader11, label %vector.memcheck, !dbg !71692

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c, !dbg !71692
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !71692
  %i.e = sub i64 %i.a, %i.c, !dbg !71692
  %diff.check9 = icmp ugt i64 %i.e, -16, !dbg !71692
  %conflict.rdx = or i1 %diff.check, %diff.check9, !dbg !71692
  br i1 %conflict.rdx, label %.lr.ph.preheader11, label %vector.ph, !dbg !71693

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  br label %vector.body, !dbg !71693

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71693 ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71694
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !71695 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71696
  %wide.load10 = load <8 x i16>, ptr %i.g, align 2, !dbg !71697 ; 4 uses
  %i.h = add <8 x i16> %wide.load10, splat (i16 -1), !dbg !71692
  %i.i = icmp ult <8 x i16> %i.h, splat (i16 -2), !dbg !71692 ; 2 uses
  %i.j = tail call <8 x i16> @llvm.masked.srem.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load10, <8 x i1> %i.i), !dbg !71698 ; 2 uses
  %i.k = icmp ne <8 x i16> %i.j, zeroinitializer, !dbg !71699
  %i.l = select <8 x i1> %i.i, <8 x i1> %i.k, <8 x i1> zeroinitializer, !dbg !71699
  %i.m = xor <8 x i16> %wide.load10, %wide.load, !dbg !71700
  %i.n = icmp slt <8 x i16> %i.m, zeroinitializer, !dbg !71700
  %i.o = select <8 x i1> %i.n, <8 x i16> %wide.load10, <8 x i16> zeroinitializer, !dbg !71700
  %i.p = add <8 x i16> %i.j, %i.o, !dbg !71700
  %predphi = select <8 x i1> %i.l, <8 x i16> %i.p, <8 x i16> zeroinitializer, !dbg !71701
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !71702
  store <8 x i16> %predphi, ptr %i.q, align 2, !dbg !71703
  %index.next = add nuw i64 %index, 8, !dbg !71693 ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec, !dbg !71677
  br i1 %i.r, label %middle.block, label %vector.body, !dbg !71677, !llvm.loop !71672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71677
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader11, !dbg !71677

.lr.ph.preheader11:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph, !dbg !71692

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, %middle.block, %bb.a
  ret void, !dbg !71704

.lr.ph:                                           ; preds = %.lr.ph.preheader11, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit
  %.sroa.01.05 = phi i64 [ %i.aa, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit ], [ %.sroa.01.05.ph, %.lr.ph.preheader11 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71694
  %i.t = load i16, ptr %i.s, align 2, !dbg !71695, !noundef !403 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71696
  %i.v = load i16, ptr %i.u, align 2, !dbg !71697, !noundef !403 ; 4 uses
  %.off.i = add i16 %i.v, -1, !dbg !71692
  %switch.i = icmp ult i16 %.off.i, -2, !dbg !71692
  br i1 %switch.i, label %bb.b, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, !dbg !71692, !prof !568

bb.b:                                             ; preds = %.lr.ph
  %i.w = srem i16 %i.t, %i.v, !dbg !71698         ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0, !dbg !71699
  br i1 %.not.i.i, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, label %bb.c, !dbg !71699

bb.c:                                             ; preds = %bb.b
  %i.x = xor i16 %i.v, %i.t, !dbg !71700
  %i.y = icmp slt i16 %i.x, 0, !dbg !71700
  %i.z = select i1 %i.y, i16 %i.v, i16 0, !dbg !71700
  %spec.select.i = add i16 %i.w, %i.z, !dbg !71700
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, !dbg !71700

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.3.0.i.i = phi i16 [ %spec.select.i, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph ], !dbg !71701
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !71693 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71702
  store i16 %.sroa.3.0.i.i, ptr %i.ab, align 2, !dbg !71703
  %exitcond.not = icmp eq i64 %i.aa, %3, !dbg !71691
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !71677, !llvm.loop !71673
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71705 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !71746
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !71746     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !71746
  %.not = icmp eq i64 %3, 0, !dbg !71746
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !71732

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !71732
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !71732

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !71732
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !71732
  %i.e = sub i64 %i.c, %i.b, !dbg !71732
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !71732
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !71732
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !71747

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 16, !dbg !71732
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !71732

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !71732

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71747 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71748 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !71749
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !71749
  %wide.load9 = load <8 x i16>, ptr %i.h, align 2, !dbg !71749
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71750 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !71751
  %wide.load10 = load <8 x i16>, ptr %i.i, align 2, !dbg !71751
  %wide.load11 = load <8 x i16>, ptr %i.j, align 2, !dbg !71751
  %i.k = mul <8 x i16> %wide.load10, %wide.load, !dbg !71752
  %i.l = mul <8 x i16> %wide.load11, %wide.load9, !dbg !71752
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !71753 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !71754
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !71754
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !71754
  %index.next = add nuw i64 %index, 16, !dbg !71747 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !71732
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !71732, !llvm.loop !71725

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71732
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !71732

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !71747 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index13, !dbg !71748
  %wide.load14 = load <4 x i16>, ptr %i.p, align 2, !dbg !71749
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index13, !dbg !71750
  %wide.load15 = load <4 x i16>, ptr %i.q, align 2, !dbg !71751
  %i.r = mul <4 x i16> %wide.load15, %wide.load14, !dbg !71752
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index13, !dbg !71753
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !71754
  %index.next16 = add nuw i64 %index13, 4, !dbg !71747 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !71732
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71732, !llvm.loop !71726

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !71732
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !71732

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !71732          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71732
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71732

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !71748
  %i.v = load i16, ptr %i.u, align 2, !dbg !71749, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !71750
  %i.x = load i16, ptr %i.w, align 2, !dbg !71751, !noundef !403
  %i.y = mul i16 %i.x, %i.v, !dbg !71752
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !71747 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !71753
  store i16 %i.y, ptr %i.aa, align 2, !dbg !71754
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !71732 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !71732
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71732, !llvm.loop !71727

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !71732
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !71732
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !71732

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !71755

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71748
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !71749, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71750
  %i.ag = load i16, ptr %i.af, align 2, !dbg !71751, !noundef !403
  %i.ah = mul i16 %i.ag, %i.ae, !dbg !71752
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !71747 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71753
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !71754
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !71748
  %i.al = load i16, ptr %i.ak, align 2, !dbg !71749, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !71750
  %i.an = load i16, ptr %i.am, align 2, !dbg !71751, !noundef !403
  %i.ao = mul i16 %i.an, %i.al, !dbg !71752
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !71747 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !71753
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !71754
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !71748
  %i.as = load i16, ptr %i.ar, align 2, !dbg !71749, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !71750
  %i.au = load i16, ptr %i.at, align 2, !dbg !71751, !noundef !403
  %i.av = mul i16 %i.au, %i.as, !dbg !71752
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !71747 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !71753
  store i16 %i.av, ptr %i.ax, align 2, !dbg !71754
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !71748
  %i.az = load i16, ptr %i.ay, align 2, !dbg !71749, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !71750
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !71751, !noundef !403
  %i.bc = mul i16 %i.bb, %i.az, !dbg !71752
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !71747 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !71753
  store i16 %i.bc, ptr %i.be, align 2, !dbg !71754
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !71746
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !71732, !llvm.loop !71728
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71756 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !71797
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !71797     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !71797
  %.not = icmp eq i64 %3, 0, !dbg !71797
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !71783

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !71783
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !71783

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !71783
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !71783
  %i.e = sub i64 %i.c, %i.b, !dbg !71783
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !71783
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !71783
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !71798

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 16, !dbg !71783
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !71783

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !71783

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71798 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71799 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !71800
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !71800
  %wide.load9 = load <8 x i16>, ptr %i.h, align 2, !dbg !71800
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71801 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !71802
  %wide.load10 = load <8 x i16>, ptr %i.i, align 2, !dbg !71802
  %wide.load11 = load <8 x i16>, ptr %i.j, align 2, !dbg !71802
  %i.k = sub <8 x i16> %wide.load, %wide.load10, !dbg !71803
  %i.l = sub <8 x i16> %wide.load9, %wide.load11, !dbg !71803
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !71804 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !71805
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !71805
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !71805
  %index.next = add nuw i64 %index, 16, !dbg !71798 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !71783
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !71783, !llvm.loop !71776

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71783
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !71783

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !71798 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index13, !dbg !71799
  %wide.load14 = load <4 x i16>, ptr %i.p, align 2, !dbg !71800
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index13, !dbg !71801
  %wide.load15 = load <4 x i16>, ptr %i.q, align 2, !dbg !71802
  %i.r = sub <4 x i16> %wide.load14, %wide.load15, !dbg !71803
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index13, !dbg !71804
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !71805
  %index.next16 = add nuw i64 %index13, 4, !dbg !71798 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !71783
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71783, !llvm.loop !71777

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !71783
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !71783

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !71783          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71783
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71783

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !71799
  %i.v = load i16, ptr %i.u, align 2, !dbg !71800, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !71801
  %i.x = load i16, ptr %i.w, align 2, !dbg !71802, !noundef !403
  %i.y = sub i16 %i.v, %i.x, !dbg !71803
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !71798 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !71804
  store i16 %i.y, ptr %i.aa, align 2, !dbg !71805
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !71783 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !71783
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71783, !llvm.loop !71778

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !71783
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !71783
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !71783

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !71806

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71799
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !71800, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71801
  %i.ag = load i16, ptr %i.af, align 2, !dbg !71802, !noundef !403
  %i.ah = sub i16 %i.ae, %i.ag, !dbg !71803
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !71798 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71804
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !71805
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !71799
  %i.al = load i16, ptr %i.ak, align 2, !dbg !71800, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !71801
  %i.an = load i16, ptr %i.am, align 2, !dbg !71802, !noundef !403
  %i.ao = sub i16 %i.al, %i.an, !dbg !71803
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !71798 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !71804
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !71805
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !71799
  %i.as = load i16, ptr %i.ar, align 2, !dbg !71800, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !71801
  %i.au = load i16, ptr %i.at, align 2, !dbg !71802, !noundef !403
  %i.av = sub i16 %i.as, %i.au, !dbg !71803
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !71798 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !71804
  store i16 %i.av, ptr %i.ax, align 2, !dbg !71805
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !71799
  %i.az = load i16, ptr %i.ay, align 2, !dbg !71800, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !71801
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !71802, !noundef !403
  %i.bc = sub i16 %i.az, %i.bb, !dbg !71803
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !71798 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !71804
  store i16 %i.bc, ptr %i.be, align 2, !dbg !71805
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !71797
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !71783, !llvm.loop !71779
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71807 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !71851
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !71851
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !71851     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !71851
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !71837

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !71852
  br i1 %min.iters.check, label %.lr.ph.preheader13, label %vector.memcheck, !dbg !71852

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c, !dbg !71852
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !71852
  %i.e = sub i64 %i.a, %i.c, !dbg !71852
  %diff.check9 = icmp ugt i64 %i.e, -16, !dbg !71852
  %conflict.rdx = or i1 %diff.check, %diff.check9, !dbg !71852
  br i1 %conflict.rdx, label %.lr.ph.preheader13, label %vector.ph, !dbg !71853

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  br label %vector.body, !dbg !71853

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71853 ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71854
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !71855 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71856
  %wide.load10 = load <8 x i16>, ptr %i.g, align 2, !dbg !71857 ; 5 uses
  %i.h = icmp ne <8 x i16> %wide.load10, zeroinitializer, !dbg !71852 ; 2 uses
  %i.i = icmp eq <8 x i16> %wide.load, splat (i16 -32768), !dbg !71858
  %i.j = icmp eq <8 x i16> %wide.load10, splat (i16 -1), !dbg !71859 ; 3 uses
  %i.k = and <8 x i1> %i.i, %i.j, !dbg !71858
  %i.l = xor <8 x i1> %i.k, splat (i1 true), !dbg !71860 ; 2 uses
  %i.m = select <8 x i1> %i.h, <8 x i1> %i.l, <8 x i1> zeroinitializer, !dbg !71860 ; 2 uses
  %i.n = tail call <8 x i16> @llvm.masked.sdiv.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load10, <8 x i1> %i.m), !dbg !71861 ; 2 uses
  %i.o = xor <8 x i1> %i.j, splat (i1 true), !dbg !71862
  %i.p = and <8 x i1> %i.m, %i.o, !dbg !71862     ; 2 uses
  %i.q = tail call <8 x i16> @llvm.masked.srem.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load10, <8 x i1> %i.p), !dbg !71863
  %i.r = icmp ne <8 x i16> %i.q, zeroinitializer, !dbg !71864
  %i.s = xor <8 x i16> %wide.load10, %wide.load
  %i.t = icmp slt <8 x i16> %i.s, zeroinitializer
  %i.u = and <8 x i1> %i.t, %i.r, !dbg !71864
  %i.v = sext <8 x i1> %i.u to <8 x i16>, !dbg !71864
  %i.w = add <8 x i16> %i.n, %i.v, !dbg !71864
  %i.x = select <8 x i1> %i.j, <8 x i1> %i.l, <8 x i1> zeroinitializer, !dbg !71862
  %predphi = select <8 x i1> %i.h, <8 x i16> splat (i16 -32768), <8 x i16> zeroinitializer, !dbg !71865
  %predphi11 = select <8 x i1> %i.x, <8 x i16> %i.n, <8 x i16> %predphi, !dbg !71865
  %predphi12 = select <8 x i1> %i.p, <8 x i16> %i.w, <8 x i16> %predphi11, !dbg !71865
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !71866
  store <8 x i16> %predphi12, ptr %i.y, align 2, !dbg !71867
  %index.next = add nuw i64 %index, 8, !dbg !71853 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !71837
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !71837, !llvm.loop !71832

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71837
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13, !dbg !71837

.lr.ph.preheader13:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph, !dbg !71852

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit, %middle.block, %bb.a
  ret void, !dbg !71868

.lr.ph:                                           ; preds = %.lr.ph.preheader13, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit
end_hunk_2
begin_hunk_3_@_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_:bb.a
  %i.am = sext i1 %or.cond.i to i16, !dbg !71864
  %spec.select.i = add i16 %i.ai, %i.am, !dbg !71864
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit, !dbg !71864

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit: ; preds = %.lr.ph, %bb.b, %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i.i, %bb.c
  %.sroa.0.0.i.i = phi i16 [ 0, %.lr.ph ], [ %spec.select.i, %bb.c ], [ %i.ai, %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i.i ], [ -32768, %bb.b ], !dbg !71865
  %i.an = add nuw i64 %.sroa.01.05, 1, !dbg !71853 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71866
  store i16 %.sroa.0.0.i.i, ptr %i.ao, align 2, !dbg !71867
  %exitcond.not = icmp eq i64 %i.an, %3, !dbg !71851
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !71837, !llvm.loop !71833
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71869 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !71910
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !71910
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !71910     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !71910
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !71896

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !71911
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %vector.memcheck, !dbg !71911

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c, !dbg !71911
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !71911
  %i.e = sub i64 %i.a, %i.c, !dbg !71911
  %diff.check9 = icmp ugt i64 %i.e, -16, !dbg !71911
  %conflict.rdx = or i1 %diff.check, %diff.check9, !dbg !71911
  br i1 %conflict.rdx, label %.lr.ph.preheader15, label %vector.ph, !dbg !71912

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  br label %vector.body, !dbg !71912

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71912 ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71913
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !71914 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71915
  %wide.load10 = load <8 x i16>, ptr %i.g, align 2, !dbg !71916 ; 3 uses
  %i.h = icmp ne <8 x i16> %wide.load10, zeroinitializer, !dbg !71911 ; 2 uses
  %i.i = icmp ne <8 x i16> %wide.load, splat (i16 -32768), !dbg !71917
  %i.j = icmp ne <8 x i16> %wide.load10, splat (i16 -1), !dbg !71918
  %.not14 = or <8 x i1> %i.i, %i.j, !dbg !71919   ; 2 uses
  %i.k = select <8 x i1> %i.h, <8 x i1> %.not14, <8 x i1> zeroinitializer, !dbg !71919
  %i.l = tail call <8 x i16> @llvm.masked.sdiv.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load10, <8 x i1> %i.k), !dbg !71920
  %predphi = select <8 x i1> %.not14, <8 x i16> %i.l, <8 x i16> splat (i16 -32768), !dbg !71921
  %predphi11 = select <8 x i1> %i.h, <8 x i16> %predphi, <8 x i16> zeroinitializer, !dbg !71921
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !71922
  store <8 x i16> %predphi11, ptr %i.m, align 2, !dbg !71923
  %index.next = add nuw i64 %index, 8, !dbg !71912 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !71896
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !71896, !llvm.loop !71891

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71896
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15, !dbg !71896

.lr.ph.preheader15:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph, !dbg !71911

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit, %middle.block, %bb.a
  ret void, !dbg !71924

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit
  %.sroa.01.05 = phi i64 [ %i.x, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit ], [ %.sroa.01.05.ph, %.lr.ph.preheader15 ] ; 4 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71913
  %i.p = load i16, ptr %i.o, align 2, !dbg !71914, !noundef !403 ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71915
  %i.r = load i16, ptr %i.q, align 2, !dbg !71916, !noundef !403 ; 3 uses
  %i.s = icmp eq i16 %i.r, 0, !dbg !71911
  br i1 %i.s, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit, label %bb.b, !dbg !71911

bb.b:                                             ; preds = %.lr.ph
  %i.t = icmp eq i16 %i.p, -32768, !dbg !71917
  %i.u = icmp eq i16 %i.r, -1, !dbg !71918
  %i.v = and i1 %i.t, %i.u, !dbg !71917
  br i1 %i.v, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit, label %bb.c, !dbg !71919, !prof !414

bb.c:                                             ; preds = %bb.b
  %i.w = sdiv i16 %i.p, %i.r, !dbg !71920
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit, !dbg !71925

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.0.0.i = phi i16 [ 0, %.lr.ph ], [ %i.w, %bb.c ], [ -32768, %bb.b ], !dbg !71921
  %i.x = add nuw i64 %.sroa.01.05, 1, !dbg !71912 ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71922
  store i16 %.sroa.0.0.i, ptr %i.y, align 2, !dbg !71923
  %exitcond.not = icmp eq i64 %i.x, %3, !dbg !71910
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !71896, !llvm.loop !71892
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelttdNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl13prim_true_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71926 {
bb.a:
  switch i64 %3, label %vector.memcheck [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.preheader
  ], !dbg !71970

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %3, 3, !dbg !71970
  %i.b = getelementptr i8, ptr %2, i64 %i.a, !dbg !71970 ; 2 uses
  %i.c = shl i64 %3, 1, !dbg !71970               ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c, !dbg !71970
  %i.e = getelementptr i8, ptr %1, i64 %i.c, !dbg !71970
  %bound0 = icmp ult ptr %2, %i.d, !dbg !71970
  %bound1 = icmp ult ptr %0, %i.b, !dbg !71970
  %found.conflict = and i1 %bound0, %bound1, !dbg !71970
  %bound011 = icmp ult ptr %2, %i.e, !dbg !71970
  %bound112 = icmp ult ptr %1, %i.b, !dbg !71970
  %found.conflict13 = and i1 %bound011, %bound112, !dbg !71970
  %conflict.rdx = or i1 %found.conflict, %found.conflict13, !dbg !71970
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.ph, !dbg !71971

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -2                         ; 3 uses
  br label %vector.body, !dbg !71971

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71971 ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71972
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !dbg !71973, !alias.scope !71956
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71974
  %wide.load14 = load <2 x i16>, ptr %i.g, align 2, !dbg !71975, !alias.scope !71960
  %i.h = uitofp <2 x i16> %wide.load to <2 x double>, !dbg !71976
  %i.i = uitofp <2 x i16> %wide.load14 to <2 x double>, !dbg !71977
  %i.j = fdiv <2 x double> %i.h, %i.i, !dbg !71976
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index, !dbg !71978
  store <2 x double> %i.j, ptr %i.k, align 8, !dbg !71979, !alias.scope !71966, !noalias !71967
  %index.next = add nuw i64 %index, 2, !dbg !71971 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !71970
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !71970, !llvm.loop !71947

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71970
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader, !dbg !71970

.lr.ph.preheader:                                 ; preds = %bb.a, %vector.memcheck, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !71970
  %xtraiter = and i64 %3, 1, !dbg !71970
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71970
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71970

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.ph, !dbg !71972
  %i.n = load i16, ptr %i.m, align 2, !dbg !71973, !noundef !403
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.ph, !dbg !71974
  %i.p = load i16, ptr %i.o, align 2, !dbg !71975, !noundef !403
  %i.q = uitofp i16 %i.n to double, !dbg !71976
  %i.r = uitofp i16 %i.p to double, !dbg !71977
  %i.s = fdiv double %i.q, %i.r, !dbg !71976
  %i.t = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !71971
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05.ph, !dbg !71978
  store double %i.s, ptr %i.u, align 8, !dbg !71979
  br label %.lr.ph.prol.loopexit, !dbg !71970

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.v = icmp eq i64 %3, %.neg, !dbg !71970
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !71970

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void, !dbg !71980

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.am, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71972
  %i.x = load i16, ptr %i.w, align 2, !dbg !71973, !noundef !403
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71974
  %i.z = load i16, ptr %i.y, align 2, !dbg !71975, !noundef !403
  %i.aa = uitofp i16 %i.x to double, !dbg !71976
  %i.ab = uitofp i16 %i.z to double, !dbg !71977
  %i.ac = fdiv double %i.aa, %i.ab, !dbg !71976
  %i.ad = add nuw i64 %.sroa.01.05, 1, !dbg !71971 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71978
  store double %i.ac, ptr %i.ae, align 8, !dbg !71979
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad, !dbg !71972
  %i.ag = load i16, ptr %i.af, align 2, !dbg !71973, !noundef !403
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad, !dbg !71974
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !71975, !noundef !403
  %i.aj = uitofp i16 %i.ag to double, !dbg !71976
  %i.ak = uitofp i16 %i.ai to double, !dbg !71977
  %i.al = fdiv double %i.aj, %i.ak, !dbg !71976
  %i.am = add nuw i64 %.sroa.01.05, 2, !dbg !71971 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad, !dbg !71978
  store double %i.al, ptr %i.an, align 8, !dbg !71979
  %exitcond.not.1 = icmp eq i64 %i.am, %3, !dbg !71981
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !71970, !llvm.loop !71949
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneltttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_add0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71982 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !72023
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !72023     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !72023
  %.not = icmp eq i64 %3, 0, !dbg !72023
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !72009

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !72009
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !72009

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !72009
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !72009
  %i.e = sub i64 %i.c, %i.b, !dbg !72009
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !72009
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !72009
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !72024

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 16, !dbg !72009
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !72009

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !72009

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !72024 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !72025 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !72026
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !72026
  %wide.load9 = load <8 x i16>, ptr %i.h, align 2, !dbg !72026
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !72027 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !72028
  %wide.load10 = load <8 x i16>, ptr %i.i, align 2, !dbg !72028
  %wide.load11 = load <8 x i16>, ptr %i.j, align 2, !dbg !72028
  %i.k = add <8 x i16> %wide.load10, %wide.load, !dbg !72029
  %i.l = add <8 x i16> %wide.load11, %wide.load9, !dbg !72029
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !72030 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !72031
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !72031
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !72031
  %index.next = add nuw i64 %index, 16, !dbg !72024 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !72009
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !72009, !llvm.loop !72002

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !72009
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !72009

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !72024 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index13, !dbg !72025
  %wide.load14 = load <4 x i16>, ptr %i.p, align 2, !dbg !72026
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index13, !dbg !72027
  %wide.load15 = load <4 x i16>, ptr %i.q, align 2, !dbg !72028
  %i.r = add <4 x i16> %wide.load15, %wide.load14, !dbg !72029
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index13, !dbg !72030
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !72031
  %index.next16 = add nuw i64 %index13, 4, !dbg !72024 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !72009
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !72009, !llvm.loop !72003

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !72009
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !72009

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !72009          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72009
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72009

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !72025
  %i.v = load i16, ptr %i.u, align 2, !dbg !72026, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !72027
  %i.x = load i16, ptr %i.w, align 2, !dbg !72028, !noundef !403
  %i.y = add i16 %i.x, %i.v, !dbg !72029
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !72024 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !72030
  store i16 %i.y, ptr %i.aa, align 2, !dbg !72031
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !72009 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !72009
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72009, !llvm.loop !72004

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !72009
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !72009
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !72009

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !72032

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72025
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !72026, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72027
  %i.ag = load i16, ptr %i.af, align 2, !dbg !72028, !noundef !403
  %i.ah = add i16 %i.ag, %i.ae, !dbg !72029
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !72024 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72030
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !72031
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !72025
  %i.al = load i16, ptr %i.ak, align 2, !dbg !72026, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !72027
  %i.an = load i16, ptr %i.am, align 2, !dbg !72028, !noundef !403
  %i.ao = add i16 %i.an, %i.al, !dbg !72029
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !72024 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !72030
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !72031
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !72025
  %i.as = load i16, ptr %i.ar, align 2, !dbg !72026, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !72027
  %i.au = load i16, ptr %i.at, align 2, !dbg !72028, !noundef !403
  %i.av = add i16 %i.au, %i.as, !dbg !72029
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !72024 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !72030
  store i16 %i.av, ptr %i.ax, align 2, !dbg !72031
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !72025
  %i.az = load i16, ptr %i.ay, align 2, !dbg !72026, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !72027
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !72028, !noundef !403
  %i.bc = add i16 %i.bb, %i.az, !dbg !72029
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !72024 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !72030
  store i16 %i.bc, ptr %i.be, align 2, !dbg !72031
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !72023
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !72009, !llvm.loop !72005
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneltttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72033 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !72068
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !72054

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !72069
  %i.a = icmp eq i64 %3, 1, !dbg !72069
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !72069

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2, !dbg !72069
  br label %.lr.ph, !dbg !72069

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72069
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !72069

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i64 %3 to i1, !dbg !72069
  tail call void @llvm.assume(i1 %lcmp.mod8), !dbg !72069
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.epil.init, !dbg !72070
  %i.c = load i16, ptr %i.b, align 2, !dbg !72071, !noundef !403 ; 2 uses
  %i.d = icmp eq i16 %i.c, 0, !dbg !72069
  br i1 %i.d, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.epil, label %bb.b, !dbg !72069

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.epil.init, !dbg !72072
  %i.f = load i16, ptr %i.e, align 2, !dbg !72073, !noundef !403
  %i.g = urem i16 %i.f, %i.c, !dbg !72074
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.epil, !dbg !72075

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.epil: ; preds = %bb.b, %.lr.ph.epil.preheader
  %.sroa.0.0.i.epil = phi i16 [ %i.g, %bb.b ], [ 0, %.lr.ph.epil.preheader ], !dbg !72076
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.epil.init, !dbg !72077
  store i16 %.sroa.0.0.i.epil, ptr %i.h, align 2, !dbg !72078
  br label %._crit_edge, !dbg !72079

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void, !dbg !72079

.lr.ph:                                           ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1, %.lr.ph.preheader.new
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1 ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72070
  %i.j = load i16, ptr %i.i, align 2, !dbg !72071, !noundef !403 ; 2 uses
  %i.k = icmp eq i16 %i.j, 0, !dbg !72069
  br i1 %i.k, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, label %bb.c, !dbg !72069

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72072
  %i.m = load i16, ptr %i.l, align 2, !dbg !72073, !noundef !403
  %i.n = urem i16 %i.m, %i.j, !dbg !72074
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, !dbg !72075

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i = phi i16 [ %i.n, %bb.c ], [ 0, %.lr.ph ], !dbg !72076
  %i.o = or disjoint i64 %.sroa.01.05, 1, !dbg !72080 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72077
  store i16 %.sroa.0.0.i, ptr %i.p, align 2, !dbg !72078
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.o, !dbg !72070
  %i.r = load i16, ptr %i.q, align 2, !dbg !72071, !noundef !403 ; 2 uses
  %i.s = icmp eq i16 %i.r, 0, !dbg !72069
  br i1 %i.s, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1, label %bb.d, !dbg !72069

bb.d:                                             ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o, !dbg !72072
  %i.u = load i16, ptr %i.t, align 2, !dbg !72073, !noundef !403
  %i.v = urem i16 %i.u, %i.r, !dbg !72074
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1, !dbg !72075

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1: ; preds = %bb.d, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit
  %.sroa.0.0.i.1 = phi i16 [ %i.v, %bb.d ], [ 0, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit ], !dbg !72076
  %i.w = add nuw i64 %.sroa.01.05, 2, !dbg !72080 ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.o, !dbg !72077
  store i16 %.sroa.0.0.i.1, ptr %i.x, align 2, !dbg !72078
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !72054 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !72054
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !dbg !72054
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneltttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72081 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !72122
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !72122     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !72122
  %.not = icmp eq i64 %3, 0, !dbg !72122
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !72108

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !72108
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !72108

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !72108
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !72108
  %i.e = sub i64 %i.c, %i.b, !dbg !72108
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !72108
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !72108
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !72123

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 16, !dbg !72108
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !72108

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !72108

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !72123 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !72124 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !72125
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !72125
  %wide.load9 = load <8 x i16>, ptr %i.h, align 2, !dbg !72125
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !72126 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !72127
  %wide.load10 = load <8 x i16>, ptr %i.i, align 2, !dbg !72127
  %wide.load11 = load <8 x i16>, ptr %i.j, align 2, !dbg !72127
  %i.k = mul <8 x i16> %wide.load10, %wide.load, !dbg !72128
  %i.l = mul <8 x i16> %wide.load11, %wide.load9, !dbg !72128
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !72129 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !72130
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !72130
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !72130
  %index.next = add nuw i64 %index, 16, !dbg !72123 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !72108
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !72108, !llvm.loop !72101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !72108
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !72108

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !72123 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index13, !dbg !72124
  %wide.load14 = load <4 x i16>, ptr %i.p, align 2, !dbg !72125
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index13, !dbg !72126
  %wide.load15 = load <4 x i16>, ptr %i.q, align 2, !dbg !72127
  %i.r = mul <4 x i16> %wide.load15, %wide.load14, !dbg !72128
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index13, !dbg !72129
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !72130
  %index.next16 = add nuw i64 %index13, 4, !dbg !72123 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !72108
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !72108, !llvm.loop !72102

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !72108
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !72108

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !72108          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72108
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72108

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !72124
  %i.v = load i16, ptr %i.u, align 2, !dbg !72125, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !72126
  %i.x = load i16, ptr %i.w, align 2, !dbg !72127, !noundef !403
  %i.y = mul i16 %i.x, %i.v, !dbg !72128
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !72123 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !72129
  store i16 %i.y, ptr %i.aa, align 2, !dbg !72130
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !72108 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !72108
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72108, !llvm.loop !72103

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !72108
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !72108
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !72108

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !72131

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72124
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !72125, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72126
  %i.ag = load i16, ptr %i.af, align 2, !dbg !72127, !noundef !403
  %i.ah = mul i16 %i.ag, %i.ae, !dbg !72128
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !72123 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72129
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !72130
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !72124
  %i.al = load i16, ptr %i.ak, align 2, !dbg !72125, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !72126
  %i.an = load i16, ptr %i.am, align 2, !dbg !72127, !noundef !403
  %i.ao = mul i16 %i.an, %i.al, !dbg !72128
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !72123 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !72129
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !72130
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !72124
  %i.as = load i16, ptr %i.ar, align 2, !dbg !72125, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !72126
  %i.au = load i16, ptr %i.at, align 2, !dbg !72127, !noundef !403
  %i.av = mul i16 %i.au, %i.as, !dbg !72128
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !72123 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !72129
  store i16 %i.av, ptr %i.ax, align 2, !dbg !72130
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !72124
  %i.az = load i16, ptr %i.ay, align 2, !dbg !72125, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !72126
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !72127, !noundef !403
  %i.bc = mul i16 %i.bb, %i.az, !dbg !72128
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !72123 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !72129
  store i16 %i.bc, ptr %i.be, align 2, !dbg !72130
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !72122
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !72108, !llvm.loop !72104
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneltttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72132 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !72173
  %i.b = ptrtoaddr ptr %2 to i64, !dbg !72173     ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !72173
  %.not = icmp eq i64 %3, 0, !dbg !72173
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !72159

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !72159
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !72159

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.a, %i.b, !dbg !72159
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !72159
  %i.e = sub i64 %i.c, %i.b, !dbg !72159
  %diff.check7 = icmp ugt i64 %i.e, -32, !dbg !72159
  %conflict.rdx = or i1 %diff.check, %diff.check7, !dbg !72159
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !72174

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %3, 16, !dbg !72159
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !72159

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !72159

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !72174 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !72175 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !72176
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !72176
  %wide.load9 = load <8 x i16>, ptr %i.h, align 2, !dbg !72176
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !72177 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !72178
  %wide.load10 = load <8 x i16>, ptr %i.i, align 2, !dbg !72178
  %wide.load11 = load <8 x i16>, ptr %i.j, align 2, !dbg !72178
  %i.k = sub <8 x i16> %wide.load, %wide.load10, !dbg !72179
  %i.l = sub <8 x i16> %wide.load9, %wide.load11, !dbg !72179
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !72180 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !72181
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !72181
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !72181
  %index.next = add nuw i64 %index, 16, !dbg !72174 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !72159
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !72159, !llvm.loop !72152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !72159
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !72159

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !72174 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index13, !dbg !72175
  %wide.load14 = load <4 x i16>, ptr %i.p, align 2, !dbg !72176
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index13, !dbg !72177
  %wide.load15 = load <4 x i16>, ptr %i.q, align 2, !dbg !72178
  %i.r = sub <4 x i16> %wide.load14, %wide.load15, !dbg !72179
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index13, !dbg !72180
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !72181
  %index.next16 = add nuw i64 %index13, 4, !dbg !72174 ; 2 uses
  %i.t = icmp eq i64 %index.next16, %n.vec12, !dbg !72159
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !72159, !llvm.loop !72153

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec12, !dbg !72159
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !72159

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !72159          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72159
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72159

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !72175
  %i.v = load i16, ptr %i.u, align 2, !dbg !72176, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !72177
  %i.x = load i16, ptr %i.w, align 2, !dbg !72178, !noundef !403
  %i.y = sub i16 %i.v, %i.x, !dbg !72179
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !72174 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !72180
  store i16 %i.y, ptr %i.aa, align 2, !dbg !72181
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !72159 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !72159
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72159, !llvm.loop !72154

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !72159
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !72159
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !72159

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !72182

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72175
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !72176, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72177
  %i.ag = load i16, ptr %i.af, align 2, !dbg !72178, !noundef !403
  %i.ah = sub i16 %i.ae, %i.ag, !dbg !72179
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !72174 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72180
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !72181
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !72175
  %i.al = load i16, ptr %i.ak, align 2, !dbg !72176, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !72177
  %i.an = load i16, ptr %i.am, align 2, !dbg !72178, !noundef !403
  %i.ao = sub i16 %i.al, %i.an, !dbg !72179
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !72174 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !72180
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !72181
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !72175
  %i.as = load i16, ptr %i.ar, align 2, !dbg !72176, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !72177
  %i.au = load i16, ptr %i.at, align 2, !dbg !72178, !noundef !403
  %i.av = sub i16 %i.as, %i.au, !dbg !72179
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !72174 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !72180
  store i16 %i.av, ptr %i.ax, align 2, !dbg !72181
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !72175
  %i.az = load i16, ptr %i.ay, align 2, !dbg !72176, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !72177
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !72178, !noundef !403
  %i.bc = sub i16 %i.az, %i.bb, !dbg !72179
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !72174 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !72180
  store i16 %i.bc, ptr %i.be, align 2, !dbg !72181
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !72173
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !72159, !llvm.loop !72155
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneltttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72183 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !72218
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !72204

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !72219
  %i.a = icmp eq i64 %3, 1, !dbg !72219
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !72219

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2, !dbg !72219
  br label %.lr.ph, !dbg !72219

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72219
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !72219

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i64 %3 to i1, !dbg !72219
  tail call void @llvm.assume(i1 %lcmp.mod8), !dbg !72219
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.epil.init, !dbg !72220
  %i.c = load i16, ptr %i.b, align 2, !dbg !72221, !noundef !403 ; 2 uses
  %i.d = icmp eq i16 %i.c, 0, !dbg !72219
  br i1 %i.d, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.epil, label %bb.b, !dbg !72219

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.epil.init, !dbg !72222
  %i.f = load i16, ptr %i.e, align 2, !dbg !72223, !noundef !403
  %i.g = udiv i16 %i.f, %i.c, !dbg !72224
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.epil, !dbg !72225

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.epil: ; preds = %bb.b, %.lr.ph.epil.preheader
  %.sroa.0.0.i.epil = phi i16 [ %i.g, %bb.b ], [ 0, %.lr.ph.epil.preheader ], !dbg !72226
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.epil.init, !dbg !72227
  store i16 %.sroa.0.0.i.epil, ptr %i.h, align 2, !dbg !72228
  br label %._crit_edge, !dbg !72229

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void, !dbg !72229

.lr.ph:                                           ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.1, %.lr.ph.preheader.new
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.1 ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72220
  %i.j = load i16, ptr %i.i, align 2, !dbg !72221, !noundef !403 ; 2 uses
  %i.k = icmp eq i16 %i.j, 0, !dbg !72219
  br i1 %i.k, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit, label %bb.c, !dbg !72219

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72222
  %i.m = load i16, ptr %i.l, align 2, !dbg !72223, !noundef !403
  %i.n = udiv i16 %i.m, %i.j, !dbg !72224
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit, !dbg !72225

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i = phi i16 [ %i.n, %bb.c ], [ 0, %.lr.ph ], !dbg !72226
  %i.o = or disjoint i64 %.sroa.01.05, 1, !dbg !72230 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72227
  store i16 %.sroa.0.0.i, ptr %i.p, align 2, !dbg !72228
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.o, !dbg !72220
  %i.r = load i16, ptr %i.q, align 2, !dbg !72221, !noundef !403 ; 2 uses
  %i.s = icmp eq i16 %i.r, 0, !dbg !72219
  br i1 %i.s, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.1, label %bb.d, !dbg !72219

bb.d:                                             ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o, !dbg !72222
end_hunk_3
