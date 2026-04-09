inline.NumInlined: 2
begin_hunk_0_@reduce_side:bb.a
  %i.j = fneg float %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %.025, float %i.i) ; 2 uses
  %i.l = fcmp ogt float %i.k, 1.250000e+02
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %3 = load i32, ptr %0, align 4, !tbaa !4
  %i.m = sitofp i32 %3 to float
  %i.n = tail call float @llvm.fmuladd.f32(float %i.i, float %.025, float %i.m)
  %i.o = fptosi float %i.n to i32
end_hunk_0
begin_hunk_1_@reduce_side:bb.a
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.g, -125
  %4 = load i32, ptr %0, align 4, !tbaa !4
  %i.r = add nsw i32 %i.q, %4
  store i32 %i.r, ptr %0, align 4, !tbaa !4
  br label %.sink.split

end_hunk_1
begin_hunk_2_@scale_bitcount_lsf:bb.a

bb.j:                                             ; preds = %bb.h
  %i.gq = mul i32 %i.fx, 3
  %i.gr = add i32 %i.gq, 500
  %i.gs = add i32 %i.gr, %i.ga
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.j, %bb.i
end_hunk_2
begin_hunk_3_@bin_search_StepSize2:bb.a
._crit_edge:                                      ; preds = %bb.k, %bb.f, %bb.j, %bb.g, %bb.a
  %.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.f, %bb.g ], [ %i.f, %bb.j ], [ %i.f, %bb.f ], [ %i.v, %bb.k ]
  %.2 = phi i32 [ %2, %bb.a ], [ %.02538, %bb.g ], [ %i.t, %bb.j ], [ %i.n, %bb.f ], [ %.126, %bb.k ]
  %6 = add i32 %2, -4
  %7 = sub i32 %6, %.2
  %i.y = icmp ult i32 %7, -7
  %. = select i1 %i.y, i32 4, i32 2
  store i32 %., ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !4
end_hunk_3
