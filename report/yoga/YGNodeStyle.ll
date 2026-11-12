Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/YGNodeStyle?download=true
inline.NumInlined: 1221
inline.NumDeleted: 476
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@YGNodeStyleSetJustifyContent:bb.a
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i32 %i.c to i8
  %i.e = lshr i8 %i.d, 4
  %.not.i = icmp eq i8 %i.e, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style14justifyContentEvEETnDaXadL_ZNS3_17setJustifyContentENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i32 %1, 4
  %i.g = and i32 %i.f, 240
  %i.h = and i32 %i.c, -241
  %i.i = or disjoint i32 %i.h, %i.g
  store i32 %i.i, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style14justifyContentEvEETnDaXadL_ZNS3_17setJustifyContentENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style14justifyContentEvEETnDaXadL_ZNS3_17setJustifyContentENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetJustifyContent(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetJustifyItems(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 8
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12justifyItemsEvEETnDaXadL_ZNS3_15setJustifyItemsENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 8
  %i.h = and i32 %i.g, 3840
  %i.i = and i32 %i.c, -3841
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12justifyItemsEvEETnDaXadL_ZNS3_15setJustifyItemsENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12justifyItemsEvEETnDaXadL_ZNS3_15setJustifyItemsENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetJustifyItems(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetJustifySelf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 12
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style11justifySelfEvEETnDaXadL_ZNS3_14setJustifySelfENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 12
  %i.h = and i32 %i.g, 61440
  %i.i = and i32 %i.c, -61441
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style11justifySelfEvEETnDaXadL_ZNS3_14setJustifySelfENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style11justifySelfEvEETnDaXadL_ZNS3_14setJustifySelfENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetJustifySelf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 12
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetAlignContent(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 16
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12alignContentEvEETnDaXadL_ZNS3_15setAlignContentENS2_5AlignEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 16
  %i.h = and i32 %i.g, 983040
  %i.i = and i32 %i.c, -983041
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12alignContentEvEETnDaXadL_ZNS3_15setAlignContentENS2_5AlignEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12alignContentEvEETnDaXadL_ZNS3_15setAlignContentENS2_5AlignEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetAlignContent(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 16
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetAlignItems(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 20
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style10alignItemsEvEETnDaXadL_ZNS3_13setAlignItemsENS2_5AlignEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 20
  %i.h = and i32 %i.g, 15728640
  %i.i = and i32 %i.c, -15728641
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style10alignItemsEvEETnDaXadL_ZNS3_13setAlignItemsENS2_5AlignEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style10alignItemsEvEETnDaXadL_ZNS3_13setAlignItemsENS2_5AlignEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetAlignItems(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 20
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetAlignSelf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 24
  %i.e = trunc nuw i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style9alignSelfEvEETnDaXadL_ZNS3_12setAlignSelfENS2_5AlignEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 24
  %i.h = and i32 %i.g, 251658240
  %i.i = and i32 %i.c, -251658241
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style9alignSelfEvEETnDaXadL_ZNS3_12setAlignSelfENS2_5AlignEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style9alignSelfEvEETnDaXadL_ZNS3_12setAlignSelfENS2_5AlignEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetAlignSelf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1 = load i32, ptr %i.a, align 8
  %2 = lshr i32 %1, 24
  %3 = and i32 %2, 15
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetPositionType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 28
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = and i8 %i.e, 3
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12positionTypeEvEETnDaXadL_ZNS3_15setPositionTypeENS2_12PositionTypeEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 28
  %i.h = and i32 %i.g, 805306368
  %i.i = and i32 %i.c, -805306369
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12positionTypeEvEETnDaXadL_ZNS3_15setPositionTypeENS2_12PositionTypeEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12positionTypeEvEETnDaXadL_ZNS3_15setPositionTypeENS2_12PositionTypeEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 4) i32 @YGNodeStyleGetPositionType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 28
  %i.d = and i32 %i.c, 3
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetFlexWrap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 30
  %i.e = trunc nuw nsw i32 %i.d to i8
  %.not.i = icmp eq i8 %i.a, %i.e
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style8flexWrapEvEETnDaXadL_ZNS3_11setFlexWrapENS2_4WrapEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i32 %1, 30
  %i.g = and i32 %i.c, 1073741823
  %i.h = or disjoint i32 %i.g, %i.f
  store i32 %i.h, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style8flexWrapEvEETnDaXadL_ZNS3_11setFlexWrapENS2_4WrapEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style8flexWrapEvEETnDaXadL_ZNS3_11setFlexWrapENS2_4WrapEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 4) i32 @YGNodeStyleGetFlexWrap(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 30
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetOverflow(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4               ; 2 uses
  %i.d = and i8 %i.c, 3
  %.not.i = icmp eq i8 %i.d, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style8overflowEvEETnDaXadL_ZNS3_11setOverflowENS2_8OverflowEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i8 %i.a, 3
  %i.f = and i8 %i.c, -4
  %i.g = or disjoint i8 %i.f, %i.e
  store i8 %i.g, ptr %i.b, align 4
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style8overflowEvEETnDaXadL_ZNS3_11setOverflowENS2_8OverflowEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style8overflowEvEETnDaXadL_ZNS3_11setOverflowENS2_8OverflowEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 4) i32 @YGNodeStyleGetOverflow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 3
  %i.d = zext nneg i8 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetDisplay(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4               ; 2 uses
  %i.d = lshr i8 %i.c, 2
  %i.e = and i8 %i.d, 3
  %.not.i = icmp eq i8 %i.e, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style7displayEvEETnDaXadL_ZNS3_10setDisplayENS2_7DisplayEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i8 %i.a, 2
  %i.g = and i8 %i.f, 12
  %i.h = and i8 %i.c, -13
  %i.i = or disjoint i8 %i.h, %i.g
  store i8 %i.i, ptr %i.b, align 4
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style7displayEvEETnDaXadL_ZNS3_10setDisplayENS2_7DisplayEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style7displayEvEETnDaXadL_ZNS3_10setDisplayENS2_7DisplayEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 4) i32 @YGNodeStyleGetDisplay(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i8, ptr %i.a, align 4
  %i.c = lshr i8 %i.b, 2
  %i.d = and i8 %i.c, 3
  %i.e = zext nneg i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetFlex(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 1, !tbaa !15 ; 5 uses
  %i.b = and i16 %.sroa.0.0.copyload.i.i, 7
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZNK8facebook4yoga5Style4flexEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %.sroa.0.0.copyload.i.i, 8
  %.not.i.i.i = icmp eq i16 %i.d, 0
  %i.e = lshr i16 %.sroa.0.0.copyload.i.i, 4      ; 2 uses
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i16 %i.e to i64                ; 2 uses
  %i.g = icmp ult i16 %.sroa.0.0.copyload.i.i, 64
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = add nsw i64 %i.f, -4                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.l, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.l, i64 noundef %i.s) #11
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i:           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i, %bb.d
  %.0.in.i.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.t, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i ]
  %.0.i7.i.i.i = load float, ptr %.0.in.i.i.i.i, align 4, !tbaa !23
  br label %_ZNK8facebook4yoga5Style4flexEv.exit.i

bb.g:                                             ; preds = %bb.b
  %i.u = and i16 %i.e, 2047
  %i.v = zext nneg i16 %i.u to i32                ; 2 uses
  %i.w = sub nsw i32 0, %i.v
  %.not.i6.i.i.i = icmp slt i16 %.sroa.0.0.copyload.i.i, 0
  %i.x = select i1 %.not.i6.i.i.i, i32 %i.w, i32 %i.v
  %i.y = sitofp i32 %i.x to float
  br label %_ZNK8facebook4yoga5Style4flexEv.exit.i

_ZNK8facebook4yoga5Style4flexEv.exit.i:           ; preds = %bb.g, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i.i, %bb.a
  %.sroa.05.0.i.i.i = phi float [ +qnan, %bb.a ], [ %.0.i7.i.i.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i.i ], [ %i.y, %bb.g ] ; 2 uses
end_hunk_0
