Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ndarray-rs/original/ndarray-18d58f11e60f2111.ndarray.7486451c7a887e6a-cgu.0?download=true
inline.NumInlined: 162
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs4_NtNtCsa0fWqW2HhWg_7ndarray9dimension15dimension_traitINtNtB7_3dim3DimNtNtB7_12dynindeximpl9IxDynImplEINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mut:bb.a

_RNvXsc_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImplINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutB9_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !111, !nonnull !5
  %.sroa.0.0.i = select i1 %i.b, ptr %i.j, ptr %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %1
  ret ptr %i.k
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 0, 288230376151711744) i64 @_RNvXs7_NtCsa0fWqW2HhWg_7ndarray5sliceSNtB5_13SliceInfoElemINtB5_8SliceArgINtNtNtB7_9dimension3dim3DimNtNtB1e_12dynindeximpl9IxDynImplEE7in_ndim(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.b = icmp samesign ult i64 %1, 4
  br i1 %i.b, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %1, 288230376151711740
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.v, %.preheader.i ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.u, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i64, ptr %i.c, align 8, !range !14, !alias.scope !116, !noundef !5
  %i.d = icmp ne i64 %.val.i.i, 3
  %i.e = zext i1 %i.d to i64
  %i.f = add i64 %.sroa.02.0.i.i, %i.e
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val.i.i.1 = load i64, ptr %i.h, align 8, !range !14, !alias.scope !116, !noundef !5
  %i.i = icmp ne i64 %.val.i.i.1, 3
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.f, %i.j
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.val.i.i.2 = load i64, ptr %i.m, align 8, !range !14, !alias.scope !116, !noundef !5
  %i.n = icmp ne i64 %.val.i.i.2, 3
  %i.o = zext i1 %i.n to i64
  %i.p = add i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %.val.i.i.3 = load i64, ptr %i.r, align 8, !range !14, !alias.scope !116, !noundef !5
  %i.s = icmp ne i64 %.val.i.i.3, 3
  %i.t = zext i1 %i.s to i64
  %i.u = add i64 %i.p, %i.t                       ; 3 uses
  %i.v = add nuw nsw i64 %.sroa.04.0.i.i, 4       ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, label %.preheader.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.v, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.u, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.aa, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.z, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.i.epil
  %.val.i.i.epil = load i64, ptr %i.w, align 8, !range !14, !alias.scope !116, !noundef !5
  %i.x = icmp ne i64 %.val.i.i.epil, 3
  %i.y = zext i1 %i.x to i64
  %i.z = add i64 %.sroa.02.0.i.i.epil, %i.y       ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i.epil, !llvm.loop !115

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.u, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE7in_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ], [ %i.z, %.preheader.i.epil ] ; 2 uses
  %i.ab = icmp ule i64 %.sroa.0.0.i.i, %1
  tail call void @llvm.assume(i1 %i.ab)
  ret i64 %.sroa.0.0.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 0, 288230376151711744) i64 @_RNvXs7_NtCsa0fWqW2HhWg_7ndarray5sliceSNtB5_13SliceInfoElemINtB5_8SliceArgINtNtNtB7_9dimension3dim3DimNtNtB1e_12dynindeximpl9IxDynImplEE8out_ndim(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.b = icmp samesign ult i64 %1, 4
  br i1 %i.b, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %1, 288230376151711740
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.v, %.preheader.i ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.u, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i64, ptr %i.c, align 8, !range !14, !alias.scope !120, !noundef !5
  %i.d = icmp ne i64 %.val.i.i, 2
  %i.e = zext i1 %i.d to i64
  %i.f = add i64 %.sroa.02.0.i.i, %i.e
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val.i.i.1 = load i64, ptr %i.h, align 8, !range !14, !alias.scope !120, !noundef !5
  %i.i = icmp ne i64 %.val.i.i.1, 2
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.f, %i.j
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.val.i.i.2 = load i64, ptr %i.m, align 8, !range !14, !alias.scope !120, !noundef !5
  %i.n = icmp ne i64 %.val.i.i.2, 2
  %i.o = zext i1 %i.n to i64
  %i.p = add i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %.val.i.i.3 = load i64, ptr %i.r, align 8, !range !14, !alias.scope !120, !noundef !5
  %i.s = icmp ne i64 %.val.i.i.3, 2
  %i.t = zext i1 %i.s to i64
  %i.u = add i64 %i.p, %i.t                       ; 3 uses
  %i.v = add nuw nsw i64 %.sroa.04.0.i.i, 4       ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, label %.preheader.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.v, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.u, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.aa, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.z, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.i.epil
  %.val.i.i.epil = load i64, ptr %i.w, align 8, !range !14, !alias.scope !120, !noundef !5
  %i.x = icmp ne i64 %.val.i.i.epil, 2
  %i.y = zext i1 %i.x to i64
  %i.z = add i64 %.sroa.02.0.i.i.epil, %i.y       ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i.epil, !llvm.loop !119

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.u, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsa0fWqW2HhWg_7ndarray5slice13SliceInfoElemENCNvXs7_B1u_SB1s_INtB1u_8SliceArgINtNtNtB1w_9dimension3dim3DimNtNtB2Q_12dynindeximpl9IxDynImplEE8out_ndim0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ], [ %i.z, %.preheader.i.epil ] ; 2 uses
  %i.ab = icmp ule i64 %.sroa.0.0.i.i, %1
  tail call void @llvm.assume(i1 %i.ab)
  ret i64 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvXs7_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj0_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvXs7_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB1L_3dim3DimAjj0_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero0EB1N_.exit:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsa0fWqW2HhWg_7ndarray9dimension15dimension_traitINtNtB7_3dim3DimAjj6_ENtB5_9Dimension11insert_axis(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !131
  %i.a = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 56, i64 noundef 8) #26, !noalias !131 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 56) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 7
  br i1 %i.c, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #25
          to label %bb.f unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsa0fWqW2HhWg_7ndarray.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i: ; preds = %bb.c
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i4.thread, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i4

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i4.thread: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %2
  store i64 1, ptr %3, align 8, !noalias !132
  br label %bb.e

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i4: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 8 %1, i64 %.idx, i1 false), !noalias !133
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %2
  store i64 1, ptr %i.e, align 8, !noalias !134
  %i.f = add nuw nsw i64 %2, 1
  %.not.i5 = icmp eq i64 %2, 6
  br i1 %.not.i5, label %_RNvMs2_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE13from_vec_autoB9_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i4.thread, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i4
  %i.g = phi i64 [ 1, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i4.thread ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i4 ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = shl nuw nsw i64 %2, 3
  %i.j = sub nuw nsw i64 48, %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull readonly align 8 %i.d, i64 %i.j, i1 false), !noalias !135
  br label %_RNvMs2_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE13from_vec_autoB9_.exit

_RNvMs2_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE13from_vec_autoB9_.exit: ; preds = %bb.e, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i4
  store i32 1, ptr %0, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.617.0..sroa_idx, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsa0fWqW2HhWg_7ndarray.exit: ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCsa0fWqW2HhWg_7ndarray5errorNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !5
  %switch.tableidx = add nsw i8 %i.a, -1          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs8_NtCsa0fWqW2HhWg_7ndarray5errorNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs8_NtCsa0fWqW2HhWg_7ndarray5errorNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.52, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsa0fWqW2HhWg_7ndarray9dimension7ndindexRSjNtNtB7_10conversion13IntoDimension14into_dimension(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = icmp samesign ult i64 %2, 5
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %2, 3                    ; 3 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !144
  %i.d = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.c, i64 noundef 8) #26, !noalias !144 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #25, !noalias !145
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1) %1, i64 %i.c, i1 false), !noalias !146
  br label %_RNvMs1_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE9copy_fromB9_.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.f = shl nuw nsw i64 %2, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 8 %1, i64 %i.f, i1 false)
  %i.g = trunc nuw nsw i64 %2 to i32
  %.0..0..0..sroa.5.8.copyload = load ptr, ptr %i.a, align 8
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..8..8..sroa.7.8.copyload = load i64, ptr %.8..8..8..sroa_idx, align 8
  br label %_RNvMs1_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE9copy_fromB9_.exit

_RNvMs1_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE9copy_fromB9_.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i, %bb.d
  %.sroa.7.0 = phi i64 [ %.8..8..8..sroa.7.8.copyload, %bb.d ], [ %2, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i ]
  %.sroa.5.0 = phi ptr [ %.0..0..0..sroa.5.8.copyload, %bb.d ], [ %i.d, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i ]
  %.sroa.4.0 = phi i32 [ %i.g, %bb.d ], [ undef, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i ]
  %.sink.i = phi i32 [ 0, %bb.d ], [ 1, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sink.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4.0, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXsB_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj5_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvXsB_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB1L_3dim3DimAjj5_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero0EB1N_.exit:
  %.val.i = load i64, ptr %0, align 8, !noalias !149, !noundef !5
  %i.a = icmp eq i64 %.val.i, 0
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.1 = load i64, ptr %.ptr.1, align 8
  %i.b = icmp eq i64 %.val.i.1, 0
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.2 = load i64, ptr %.ptr.2, align 8
  %i.c = icmp eq i64 %.val.i.2, 0
  %or.cond2 = select i1 %or.cond, i1 %i.c, i1 false
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.3 = load i64, ptr %.ptr.3, align 8
  %i.d = icmp eq i64 %.val.i.3, 0
  %or.cond3 = select i1 %or.cond2, i1 %i.d, i1 false
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.4 = load i64, ptr %.ptr.4, align 8
  %i.e = icmp eq i64 %.val.i.4, 0
  %or.cond4 = select i1 %or.cond3, i1 %i.e, i1 false
  ret i1 %or.cond4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXsH_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj6_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvXsH_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB1L_3dim3DimAjj6_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero0EB1N_.exit:
  %.val.i = load i64, ptr %0, align 8, !noalias !152, !noundef !5
  %i.a = icmp eq i64 %.val.i, 0
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.1 = load i64, ptr %.ptr.1, align 8
  %i.b = icmp eq i64 %.val.i.1, 0
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.2 = load i64, ptr %.ptr.2, align 8
  %i.c = icmp eq i64 %.val.i.2, 0
  %or.cond2 = select i1 %or.cond, i1 %i.c, i1 false
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.3 = load i64, ptr %.ptr.3, align 8
  %i.d = icmp eq i64 %.val.i.3, 0
  %or.cond3 = select i1 %or.cond2, i1 %i.d, i1 false
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.4 = load i64, ptr %.ptr.4, align 8
  %i.e = icmp eq i64 %.val.i.4, 0
  %or.cond4 = select i1 %or.cond3, i1 %i.e, i1 false
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.5 = load i64, ptr %.ptr.5, align 8
  %i.f = icmp eq i64 %.val.i.5, 0
  %or.cond5 = select i1 %or.cond4, i1 %i.f, i1 false
  ret i1 %or.cond5
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs_NtCsa0fWqW2HhWg_7ndarray14low_level_utilNtB4_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #10 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRReNtB6_7Display3fmtCsa0fWqW2HhWg_7ndarray, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @56, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvNtCs5Xr050g3D4S_3std7process5abort() #25
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define { i64, i64 } @_RNvXsa_NtNtCsa0fWqW2HhWg_7ndarray9dimension7ndindexRINtNtB7_3dim3DimNtNtB7_12dynindeximpl9IxDynImplEINtB5_7NdIndexBO_E13index_checked(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.b = load i32, ptr %1, align 8, !range !9, !alias.scope !170, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !170, !nonnull !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !170
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !170
  %i.j = zext i32 %i.i to i64
  %.sroa.3.0.i.i = select i1 %i.c, i64 %i.g, i64 %i.j ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.c, ptr %i.e, ptr %i.d
  %i.k = load i32, ptr %2, align 8, !range !9, !alias.scope !171, !noundef !5
  %i.l = trunc nuw i32 %i.k to i1                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !171, !nonnull !5
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !171
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !171
  %.sroa.0.0.i2.i = select i1 %i.l, ptr %i.n, ptr %i.m
  %i.s = load i32, ptr %i.a, align 8, !range !9, !alias.scope !172, !noundef !5
  %i.t = trunc nuw i32 %i.s to i1                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !172, !nonnull !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0
