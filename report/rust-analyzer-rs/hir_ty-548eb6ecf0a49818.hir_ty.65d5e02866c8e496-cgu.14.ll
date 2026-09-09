Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.14?download=true
inline.NumInlined: 5509
inline.NumDeleted: 2264
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5infer11BindingModeEINtB5_14SlicePartialEqBC_E17equal_same_lengthB12_:bb.a
  br i1 %or.cond.i.i.i, label %.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = xor i8 %.val7, %.val5
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  %i.n = icmp eq i8 %.val, %.val6
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.b, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5infer11BindingModeENtNtB7_3cmp9PartialEq2neBI_.exit.thread

.split:                                           ; preds = %bb.d
  %.old = icmp eq i8 %.val, %.val6
  br i1 %.old, label %bb.b, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5infer11BindingModeENtNtB7_3cmp9PartialEq2neBI_.exit.thread

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5infer11BindingModeENtNtB7_3cmp9PartialEq2neBI_.exit: ; preds = %.lr.ph
  %.mux.i.i = select i1 %.not.i.i, i1 %i.g, i1 false
  br i1 %.mux.i.i, label %bb.b, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5infer11BindingModeENtNtB7_3cmp9PartialEq2neBI_.exit.thread

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5infer11BindingModeENtNtB7_3cmp9PartialEq2neBI_.exit.thread: ; preds = %bb.b, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5infer11BindingModeENtNtB7_3cmp9PartialEq2neBI_.exit, %bb.e, %bb.c, %.split, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split ], [ false, %bb.c ], [ false, %bb.e ], [ false, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5infer11BindingModeENtNtB7_3cmp9PartialEq2neBI_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEINtB5_14SlicePartialEqBC_E17equal_same_lengthB12_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.split14, %.split, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.09 ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.09 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !noundef !9 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val5 = load ptr, ptr %i.e, align 8            ; 2 uses
  %.val6 = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val7 = load ptr, ptr %i.f, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp eq ptr %.val, %.val6
  br i1 %i.g, label %bb.d, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %.val5, null
  br i1 %.not.i.i.i, label %.split, label %.split14

.split14:                                         ; preds = %bb.d
  %.not1.i.i.i = icmp ne ptr %.val7, null
  %i.h = icmp eq ptr %.val5, %.val7
  %spec.select.i.i.i = select i1 %.not1.i.i.i, i1 %i.h, i1 false
  br i1 %spec.select.i.i.i, label %bb.b, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit.thread

.split:                                           ; preds = %bb.d
  %i.i = icmp eq ptr %.val7, null
  br i1 %i.i, label %bb.b, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit.thread

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit: ; preds = %.lr.ph
  %i.j = icmp eq ptr %.val6, null
  br i1 %i.j, label %bb.b, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit.thread

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit.thread: ; preds = %bb.b, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit, %bb.c, %.split, %.split14, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split14 ], [ false, %.split ], [ false, %bb.c ], [ false, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeENtNtB7_3cmp9PartialEq2neBI_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty8StoredTyEINtB5_14SlicePartialEqBC_E17equal_same_lengthB14_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.06 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.06
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.06
  %.val = load ptr, ptr %i.b, align 8, !noundef !9
  %.val5 = load ptr, ptr %i.c, align 8
  %.sroa.0.0.shrunk.i.i.not = icmp eq ptr %.val5, %.val ; 2 uses
  %i.d = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.d, %2
  %or.cond.not = select i1 %.sroa.0.0.shrunk.i.i.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.sroa.0.0.shrunk.i.i.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonEINtB5_14SlicePartialEqBC_E17equal_same_lengthB14_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread6
  %.sroa.01.08 = phi i64 [ %i.y, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread6 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.08 ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.08 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9867)
  %i.d = load i64, ptr %i.b, align 8, !range !9868, !alias.scope !9869, !noalias !9870, !noundef !9 ; 4 uses
  %.not.i.i = icmp eq i64 %i.d, -1
  %i.e = load i64, ptr %i.c, align 8, !range !9868, !alias.scope !9870, !noalias !9869, !noundef !9 ; 4 uses
  %i.f = icmp eq i64 %i.e, -1
  %brmerge.i.i = or i1 %.not.i.i, %i.f
  br i1 %brmerge.i.i, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9872)
  %i.g = icmp slt i64 %i.d, 0
  %i.h = add i64 %i.d, -9223372036854775807
  %i.i = select i1 %i.g, i64 %i.h, i64 0          ; 2 uses
  %i.j = icmp slt i64 %i.e, 0
  %i.k = add i64 %i.e, -9223372036854775807
  %i.l = select i1 %i.j, i64 %i.k, i64 0
  %i.m = icmp eq i64 %i.i, %i.l
  br i1 %i.m, label %bb.c, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread

bb.c:                                             ; preds = %bb.b
  %or.cond.i.i.i = icmp eq i64 %i.i, 0
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread6

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !9873, !noalias !9874, !noundef !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !9874, !noalias !9873, !noundef !9
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %.split, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread

.split:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !9874, !noalias !9873, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !9873, !noalias !9874, !nonnull !9, !noundef !9
  %i.w = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.t, i64 noundef %i.o), !noalias !9875
  br i1 %i.w, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread6, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit: ; preds = %.lr.ph
  %i.x = and i64 %i.e, %i.d
  %.mux.i.i = icmp eq i64 %i.x, -1
  br i1 %.mux.i.i, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread6, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread: ; preds = %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread6, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit, %bb.d, %bb.b, %.split, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split ], [ false, %bb.b ], [ false, %bb.d ], [ false, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit ], [ true, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread6 ]
  ret i1 %.lcssa

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread6: ; preds = %.split, %bb.c, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit
  %i.y = add nuw i64 %.sroa.01.08, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %2
  br i1 %exitcond.not, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck16MutabilityReasonENtNtB7_3cmp9PartialEq2neBK_.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.09 ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.09 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9885)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i = load i8, ptr %i.e, align 1, !range !19, !alias.scope !9886, !noalias !9887, !noundef !9 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.val1.i.i = load i8, ptr %i.g, align 1, !alias.scope !9886, !noalias !9887 ; 9 uses
  %.val2.i.i = load i8, ptr %i.f, align 1, !range !19, !alias.scope !9887, !noalias !9886, !noundef !9 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.val3.i.i = load i8, ptr %i.h, align 1, !alias.scope !9887, !noalias !9886 ; 9 uses
  %i.i = icmp ne i8 %.val.i.i, 4
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i8 %.val.i.i, -2
  %.inv.i.i.i = icmp samesign ult i8 %.val.i.i, 2
  %narrow.i.i.i = select i1 %.inv.i.i.i, i8 2, i8 %i.j ; 2 uses
  %i.k = icmp ne i8 %.val2.i.i, 4
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i8 %.val2.i.i, -2
  %.inv4.i.i.i = icmp samesign ult i8 %.val2.i.i, 2
  %narrow3.i.i.i = select i1 %.inv4.i.i.i, i8 2, i8 %i.l
  %i.m = icmp eq i8 %narrow.i.i.i, %narrow3.i.i.i
  br i1 %i.m, label %bb.c, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  switch i8 %narrow.i.i.i, label %bb.d [
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 3, label %bb.m
    i8 0, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i8 %.val1.i.i, 2
  %i.n = icmp eq i8 %.val3.i.i, 2                 ; 2 uses
  br i1 %.not.i.i.i, label %4, label %3

3:                                                ; preds = %bb.e
  br i1 %i.n, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %bb.f

4:                                                ; preds = %bb.e
  %5 = zext i1 %i.n to i8
  br label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit

bb.f:                                             ; preds = %3
  %i.o = xor i8 %.val3.i.i, %.val1.i.i
  %6 = xor i8 %i.o, 1
  br label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit

bb.g:                                             ; preds = %bb.c
  %i.p = icmp eq i8 %.val.i.i, %.val2.i.i
  br i1 %i.p, label %bb.h, label %_RNvXs1y_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_10AutoBorrowNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.q = trunc nuw i8 %.val.i.i to i1
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = icmp eq i8 %.val1.i.i, %.val3.i.i
  br label %_RNvXs1y_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_10AutoBorrowNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.s = icmp eq i8 %.val1.i.i, 2                 ; 2 uses
  %i.t = icmp eq i8 %.val3.i.i, 2                 ; 2 uses
  %i.u = xor i1 %i.s, %i.t
  br i1 %i.u, label %_RNvXs1y_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_10AutoBorrowNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %or.cond.i.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i.i, label %_RNvXs1y_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_10AutoBorrowNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = xor i8 %.val3.i.i, %.val1.i.i
  %i.w = trunc i8 %i.v to i1
  %i.x = xor i1 %i.w, true
  br label %_RNvXs1y_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_10AutoBorrowNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i

_RNvXs1y_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_10AutoBorrowNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.g
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.r, %bb.i ], [ false, %bb.j ], [ %i.x, %bb.l ], [ false, %bb.g ], [ true, %bb.k ]
  %7 = zext i1 %.sroa.0.0.i.i.i.i to i8
  br label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit

bb.m:                                             ; preds = %bb.c
  %i.y = icmp ne i8 %.val1.i.i, 4
  tail call void @llvm.assume(i1 %i.y)
  %8 = add nsw i8 %.val1.i.i, -2
  %.inv6.i.i.i = icmp samesign ult i8 %.val1.i.i, 2
  %narrow5.i.i.i = select i1 %.inv6.i.i.i, i8 2, i8 %8 ; 2 uses
  %9 = icmp ne i8 %.val3.i.i, 4
  tail call void @llvm.assume(i1 %9)
  %10 = add nsw i8 %.val3.i.i, -2
  %.inv8.i.i.i = icmp samesign ult i8 %.val3.i.i, 2
  %narrow7.i.i.i = select i1 %.inv8.i.i.i, i8 2, i8 %10
  %11 = icmp eq i8 %narrow5.i.i.i, %narrow7.i.i.i
  br i1 %11, label %12, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

12:                                               ; preds = %bb.m
  %13 = icmp eq i8 %narrow5.i.i.i, 2
  br i1 %13, label %bb.n, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit

bb.n:                                             ; preds = %12
  %14 = xor i8 %.val3.i.i, %.val1.i.i
  %15 = xor i8 %14, 1
  br label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit

_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit: ; preds = %bb.c, %4, %bb.f, %_RNvXs1y_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_10AutoBorrowNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, %12, %bb.n
  %.sroa.0.0.i.i.i = phi i8 [ %6, %bb.f ], [ 1, %bb.c ], [ %5, %4 ], [ 1, %12 ], [ %7, %_RNvXs1y_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_10AutoBorrowNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i ], [ %15, %bb.n ]
  %16 = trunc i8 %.sroa.0.0.i.i.i to i1
  %i.z = load ptr, ptr %i.c, align 8, !alias.scope !9886, !noalias !9887, !nonnull !9
  %i.aa = load ptr, ptr %i.d, align 8, !alias.scope !9887, !noalias !9886, !nonnull !9
  %i.ab = icmp eq ptr %i.z, %i.aa
  %.sroa.0.0.i.i.not = select i1 %16, i1 %i.ab, i1 false
  br i1 %.sroa.0.0.i.i.not, label %bb.b, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread: ; preds = %bb.b, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, %.lr.ph, %bb.m, %3, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %3 ], [ false, %bb.m ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit
  %i.b = add nuw i64 %.sroa.01.013, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.013 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.01.013 ; 10 uses
  %i.d = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %.sroa.01.013 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9916)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !9917, !noalias !9918, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !9918, !noalias !9917, !nonnull !9, !noundef !9
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i32, ptr %i.j, align 8, !range !28, !alias.scope !9917, !noalias !9918, !noundef !9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = load i32, ptr %i.l, align 8, !range !28, !alias.scope !9918, !noalias !9917, !noundef !9
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.d:                                             ; preds = %bb.c
  switch i32 %i.k, label %bb.g [
    i32 2, label %.split.i.i.i
    i32 3, label %bb.e
  ]

.split.i.i.i:                                     ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !9917, !noalias !9918, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !9918, !noalias !9917, !noundef !9
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.g, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !9917, !noalias !9918, !noundef !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !9918, !noalias !9917, !noundef !9
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !9917, !noalias !9918, !noundef !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !alias.scope !9918, !noalias !9917, !noundef !9
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.g:                                             ; preds = %bb.f, %.split.i.i.i, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !9917, !noalias !9918, !noundef !9 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !9918, !noalias !9917, !noundef !9
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !9918, !noalias !9917, !nonnull !9, !noundef !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !9917, !noalias !9918, !nonnull !9, !noundef !9
  %i.am = icmp eq i64 %i.ae, 0
  br i1 %i.am, label %_RNvXss_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB5_5PlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neBc_.exit.thread6.i.i.i.i
  %.sroa.01.08.i.i.i.i = phi i64 [ %i.bh, %_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neBc_.exit.thread6.i.i.i.i ], [ 0, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.01.08.i.i.i.i ; 4 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.sroa.01.08.i.i.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9922)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !9923, !noalias !9924, !nonnull !9, !noundef !9
  %i.aq = load ptr, ptr %i.ao, align 8, !alias.scope !9925, !noalias !9926, !nonnull !9, !noundef !9
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i32, ptr %i.as, align 8, !range !34, !alias.scope !9923, !noalias !9924, !noundef !9 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.av = load i32, ptr %i.au, align 8, !range !34, !alias.scope !9925, !noalias !9926, !noundef !9
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp eq i32 %i.at, 1
  br i1 %i.ax, label %bb.k, label %_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neBc_.exit.thread6.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !9923, !noalias !9924, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !9925, !noalias !9926, !noundef !9
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neBc_.exit.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neBc_.exit.i.i.i.i: ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !alias.scope !9923, !noalias !9924, !noundef !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !alias.scope !9925, !noalias !9926, !noundef !9
  %.not.i.i.i.i = icmp eq i32 %i.be, %i.bg
  br i1 %.not.i.i.i.i, label %_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neBc_.exit.thread6.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neBc_.exit.thread6.i.i.i.i: ; preds = %_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neBc_.exit.i.i.i.i, %bb.j
  %i.bh = add nuw i64 %.sroa.01.08.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bh, %i.ae
  br i1 %exitcond.not.i.i.i.i, label %_RNvXss_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB5_5PlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXss_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB5_5PlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neBc_.exit.thread6.i.i.i.i, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bk = tail call { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackj2_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtB1G_5range9RangeFullE5indexBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1715), !noalias !9927 ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 1      ; 3 uses
  %i.bm = tail call { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackj2_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtB1G_5range9RangeFullE5indexBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1716) ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 1
  %i.bo = icmp eq i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.l, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.l:                                             ; preds = %_RNvXss_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB5_5PlaceNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i
  %i.bp = extractvalue { ptr, i64 } %i.bm, 0
  %i.bq = extractvalue { ptr, i64 } %i.bk, 0
  %i.br = icmp eq i64 %i.bl, 0
  br i1 %i.br, label %_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackj2_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_.exit.i.i, label %.lr.ph.i.i3.i.i

.lr.ph.i.i3.i.i:                                  ; preds = %bb.l, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i.i
  %.sroa.01.08.i.i4.i.i = phi i64 [ %i.cn, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.sroa.01.08.i.i4.i.i ; 4 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.sroa.01.08.i.i4.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9931)
  %i.bu = load i32, ptr %i.bs, align 8, !range !33, !alias.scope !9932, !noalias !9933, !noundef !9
  switch i32 %i.bu, label %default.unreachable [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

default.unreachable:                              ; preds = %bb.p, %.lr.ph.i.i3.i.i
  unreachable

bb.m:                                             ; preds = %.lr.ph.i.i3.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph.i.i3.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i3.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.by = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedE8data_rawCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bx), !noalias !9933
  %i.bz = load ptr, ptr %i.bx, align 8, !alias.scope !9932, !noalias !9933, !nonnull !9, !noundef !9
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !9933, !noundef !9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ 1, %bb.m ], [ 2, %bb.n ], [ %i.ca, %bb.o ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i = phi ptr [ %i.bv, %bb.m ], [ %i.bw, %bb.n ], [ %i.by, %bb.o ]
  %i.cb = load i32, ptr %i.bt, align 8, !range !33, !alias.scope !9933, !noalias !9932, !noundef !9
  switch i32 %i.cb, label %default.unreachable [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
end_hunk_0
