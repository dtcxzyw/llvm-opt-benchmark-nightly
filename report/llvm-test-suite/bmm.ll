inline.NumInlined: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c = dso_local local_unnamed_addr global [1024 x [1024 x float]] zeroinitializer, align 16
@a = dso_local local_unnamed_addr global [1024 x [1024 x float]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [1024 x [1024 x float]] zeroinitializer, align 16
@BLOCK = dso_local local_unnamed_addr global i32 0, align 4
@NUM = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"final sum = %f\0A\00", align 1
@str = private unnamed_addr constant [54 x i8] c"size must be in [0, 1024]; block must be <= than size\00", align 1
@str.1 = private unnamed_addr constant [26 x i8] c"Usage: bmm <size> <block>\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 32768) i32 @my_rand_r(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = mul i32 %i.a, 1664525
  %i.c = add i32 %i.b, 1013904223                 ; 2 uses
  store i32 %i.c, ptr %0, align 4, !tbaa !4
  %i.d = lshr i32 %i.c, 16
  %i.e = and i32 %i.d, 32767
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init() local_unnamed_addr #1 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv20 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next21, %bb.c ] ; 5 uses
  %.01417 = phi i32 [ 1, %bb.a ], [ %i.o, %bb.c ]
  %i.a = getelementptr inbounds nuw [4096 x i8], ptr @a, i64 %indvars.iv20
  %i.b = getelementptr inbounds nuw [4096 x i8], ptr @b, i64 %indvars.iv20
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.115 = phi i32 [ %.01417, %.preheader ], [ %i.o, %bb.b ]
  %i.c = mul i32 %.115, 1664525
  %i.d = add i32 %i.c, 1013904223                 ; 2 uses
  %i.e = lshr i32 %i.d, 16
  %i.f = and i32 %i.e, 32767
  %i.g = sub nsw i64 %indvars.iv, %indvars.iv20
  %i.h = trunc nsw i64 %i.g to i32
  %i.i = and i32 %i.h, 31
  %i.j = lshr i32 %i.f, %i.i
  %i.k = and i32 %i.j, 15
  %i.l = uitofp nneg i32 %i.k to float
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.l, ptr %i.m, align 4, !tbaa !8
  %i.n = mul i32 %i.d, 1664525
  %i.o = add i32 %i.n, 1013904223                 ; 3 uses
  %i.p = lshr i32 %i.o, 16
  %i.q = add nuw nsw i64 %indvars.iv, %indvars.iv20
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 31
  %i.t = shl i32 %i.p, %i.s
  %i.u = and i32 %i.t, 15
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.v, ptr %i.w, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 1024
  br i1 %exitcond23.not, label %bb.d, label %.preheader, !llvm.loop !12

bb.d:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mm_inner(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @BLOCK, align 4, !tbaa !4  ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader20.us.us.preheader, label %._crit_edge

.preheader20.us.us.preheader:                     ; preds = %bb.a
  %i.c = add nsw i32 %i.a, %0
  %i.d = add nsw i32 %i.a, %2
  %i.e = add nsw i32 %i.a, %1
  %i.f = sext i32 %2 to i64
  %i.g = sext i32 %i.d to i64
  %i.h = sext i32 %1 to i64
  %i.i = sext i32 %i.e to i64
  %i.j = sext i32 %0 to i64
  %i.k = sext i32 %i.c to i64
  br label %.preheader20.us.us

.preheader20.us.us:                               ; preds = %.preheader20.us.us.preheader, %._crit_edge23.split.us.us.us
  %indvars.iv35 = phi i64 [ %i.j, %.preheader20.us.us.preheader ], [ %indvars.iv.next36, %._crit_edge23.split.us.us.us ] ; 3 uses
  %i.l = getelementptr inbounds [4096 x i8], ptr @a, i64 %indvars.iv35
  %i.m = getelementptr inbounds [4096 x i8], ptr @c, i64 %indvars.iv35
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader20.us.us, %._crit_edge.us.us.us
  %indvars.iv32 = phi i64 [ %i.h, %.preheader20.us.us ], [ %indvars.iv.next33.a, %._crit_edge.us.us.us ] ; 3 uses
  %invariant.gep.us.us.us = getelementptr [4 x i8], ptr @b, i64 %indvars.iv32
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv32 ; 2 uses
  %.promoted.us.us.us = load float, ptr %i.n, align 4, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us.us.us, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.preheader.us.us.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.o = phi float [ %.promoted.us.us.us, %.preheader.us.us.us ], [ %i.s, %bb.b ]
  %i.p = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !8
  %gep.us.us.us = getelementptr [4096 x i8], ptr %invariant.gep.us.us.us, i64 %indvars.iv
  %i.r = load float, ptr %gep.us.us.us, align 4, !tbaa !8
  %i.s = tail call float @llvm.fmuladd.f32(float %i.q, float %i.r, float %i.o) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.t = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.t, label %bb.b, label %._crit_edge.us.us.us, !llvm.loop !13

._crit_edge.us.us.us:                             ; preds = %bb.b
  store float %i.s, ptr %i.n, align 4, !tbaa !8
  %indvars.iv.next33.a = add nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.u = icmp slt i64 %indvars.iv.next33.a, %i.i
  br i1 %i.u, label %.preheader.us.us.us, label %._crit_edge23.split.us.us.us, !llvm.loop !14

._crit_edge23.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.v = icmp slt i64 %indvars.iv.next36, %i.k
  br i1 %i.v, label %.preheader20.us.us, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %._crit_edge23.split.us.us.us, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @matmult() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @NUM, align 4, !tbaa !4    ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader11.lr.ph, label %._crit_edge

.preheader11.lr.ph:                               ; preds = %bb.a
  %i.c = load i32, ptr @BLOCK, align 4            ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader11.us.us.preheader, label %._crit_edge

.preheader11.us.us.preheader:                     ; preds = %.preheader11.lr.ph
  %i.e = zext nneg i32 %i.c to i64                ; 3 uses
  br label %.preheader11.us.us

.preheader11.us.us:                               ; preds = %.preheader11.us.us.preheader, %._crit_edge14.split.us.split.us.us.us
  %indvars.iv28 = phi i64 [ 0, %.preheader11.us.us.preheader ], [ %indvars.iv.next29, %._crit_edge14.split.us.split.us.us.us ] ; 2 uses
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, %i.e ; 3 uses
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %.preheader11.us.us, %._crit_edge.split.us.us.us.us.us
  %indvars.iv25 = phi i64 [ 0, %.preheader11.us.us ], [ %indvars.iv.next26, %._crit_edge.split.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, %i.e ; 3 uses
  br label %.preheader20.us.us.preheader.i.us.us.us.us.us

.preheader20.us.us.preheader.i.us.us.us.us.us:    ; preds = %.preheader.us.us.us.us, %mm_inner.exit.loopexit.us.us.us.us.us
  %indvars.iv = phi i64 [ 0, %.preheader.us.us.us.us ], [ %indvars.iv.next, %mm_inner.exit.loopexit.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.e ; 3 uses
  br label %.preheader20.us.us.i.us.us.us.us.us

.preheader20.us.us.i.us.us.us.us.us:              ; preds = %._crit_edge23.split.us.us.us.i.us.us.us.us.us, %.preheader20.us.us.preheader.i.us.us.us.us.us
  %indvars.iv35.i.us.us.us.us.us = phi i64 [ %indvars.iv28, %.preheader20.us.us.preheader.i.us.us.us.us.us ], [ %indvars.iv.next36.i.us.us.us.us.us, %._crit_edge23.split.us.us.us.i.us.us.us.us.us ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4096 x i8], ptr @a, i64 %indvars.iv35.i.us.us.us.us.us
  %i.g = getelementptr inbounds nuw [4096 x i8], ptr @c, i64 %indvars.iv35.i.us.us.us.us.us
  br label %.preheader.us.us.us.i.us.us.us.us.us

.preheader.us.us.us.i.us.us.us.us.us:             ; preds = %._crit_edge.us.us.us.i.us.us.us.us.us, %.preheader20.us.us.i.us.us.us.us.us
  %indvars.iv32.i.us.us.us.us.us = phi i64 [ %indvars.iv25, %.preheader20.us.us.i.us.us.us.us.us ], [ %indvars.iv.next33.i.us.us.us.us.us, %._crit_edge.us.us.us.i.us.us.us.us.us ] ; 3 uses
  %invariant.gep.us.us.us.i.us.us.us.us.us = getelementptr [4 x i8], ptr @b, i64 %indvars.iv32.i.us.us.us.us.us
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv32.i.us.us.us.us.us ; 2 uses
  %.promoted.us.us.us.i.us.us.us.us.us = load float, ptr %i.h, align 4, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us.us.i.us.us.us.us.us
  %indvars.iv.i.us.us.us.us.us = phi i64 [ %indvars.iv, %.preheader.us.us.us.i.us.us.us.us.us ], [ %indvars.iv.next.i.us.us.us.us.us, %bb.b ] ; 3 uses
  %i.i = phi float [ %.promoted.us.us.us.i.us.us.us.us.us, %.preheader.us.us.us.i.us.us.us.us.us ], [ %i.m, %bb.b ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.us.us.us.us.us
  %i.k = load float, ptr %i.j, align 4, !tbaa !8
  %gep.us.us.us.i.us.us.us.us.us = getelementptr [4096 x i8], ptr %invariant.gep.us.us.us.i.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us
  %i.l = load float, ptr %gep.us.us.us.i.us.us.us.us.us, align 4, !tbaa !8
  %i.m = tail call float @llvm.fmuladd.f32(float %i.k, float %i.l, float %i.i) ; 2 uses
  %indvars.iv.next.i.us.us.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us, 1 ; 2 uses
  %i.n = icmp samesign ult i64 %indvars.iv.next.i.us.us.us.us.us, %indvars.iv.next
  br i1 %i.n, label %bb.b, label %._crit_edge.us.us.us.i.us.us.us.us.us, !llvm.loop !13

._crit_edge.us.us.us.i.us.us.us.us.us:            ; preds = %bb.b
  store float %i.m, ptr %i.h, align 4, !tbaa !8
  %indvars.iv.next33.i.us.us.us.us.us = add nuw nsw i64 %indvars.iv32.i.us.us.us.us.us, 1 ; 2 uses
  %i.o = icmp samesign ult i64 %indvars.iv.next33.i.us.us.us.us.us, %indvars.iv.next26
  br i1 %i.o, label %.preheader.us.us.us.i.us.us.us.us.us, label %._crit_edge23.split.us.us.us.i.us.us.us.us.us, !llvm.loop !14

._crit_edge23.split.us.us.us.i.us.us.us.us.us:    ; preds = %._crit_edge.us.us.us.i.us.us.us.us.us
  %indvars.iv.next36.i.us.us.us.us.us = add nuw nsw i64 %indvars.iv35.i.us.us.us.us.us, 1 ; 2 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next36.i.us.us.us.us.us, %indvars.iv.next29
  br i1 %i.p, label %.preheader20.us.us.i.us.us.us.us.us, label %mm_inner.exit.loopexit.us.us.us.us.us, !llvm.loop !15

mm_inner.exit.loopexit.us.us.us.us.us:            ; preds = %._crit_edge23.split.us.us.us.i.us.us.us.us.us
  %i.q = trunc nuw i64 %indvars.iv.next to i32
  %i.r = icmp sgt i32 %i.a, %i.q
  br i1 %i.r, label %.preheader20.us.us.preheader.i.us.us.us.us.us, label %._crit_edge.split.us.us.us.us.us, !llvm.loop !16

._crit_edge.split.us.us.us.us.us:                 ; preds = %mm_inner.exit.loopexit.us.us.us.us.us
  %i.s = trunc nuw i64 %indvars.iv.next26 to i32
  %i.t = icmp sgt i32 %i.a, %i.s
  br i1 %i.t, label %.preheader.us.us.us.us, label %._crit_edge14.split.us.split.us.us.us, !llvm.loop !17

._crit_edge14.split.us.split.us.us.us:            ; preds = %._crit_edge.split.us.us.us.us.us
  %i.u = trunc nuw i64 %indvars.iv.next29 to i32
  %i.v = icmp sgt i32 %i.a, %i.u
  br i1 %i.v, label %.preheader11.us.us, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %._crit_edge14.split.us.split.us.us.us, %.preheader11.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @mm_sum(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @BLOCK, align 4, !tbaa !4  ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader.us.preheader, label %._crit_edge17

.preheader.us.preheader:                          ; preds = %bb.a
  %i.c = add nsw i32 %i.a, %0
  %i.d = add nsw i32 %i.a, %1
  %i.e = sext i32 %1 to i64
  %i.f = sext i32 %i.d to i64
  %i.g = sext i32 %0 to i64
  %i.h = sext i32 %i.c to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv21 = phi i64 [ %i.g, %.preheader.us.preheader ], [ %indvars.iv.next22, %._crit_edge.us ] ; 2 uses
  %.016.us = phi float [ 0.000000e+00, %.preheader.us.preheader ], [ %i.l, %._crit_edge.us ]
  %i.i = getelementptr inbounds [4096 x i8], ptr @c, i64 %indvars.iv21
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ %i.e, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.114.us = phi float [ %.016.us, %.preheader.us ], [ %i.l, %bb.b ]
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !8
  %i.l = fadd float %.114.us, %i.k                ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.m = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.m, label %bb.b, label %._crit_edge.us, !llvm.loop !19

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1 ; 2 uses
  %i.n = icmp slt i64 %indvars.iv.next22, %i.h
  br i1 %i.n, label %.preheader.us, label %._crit_edge17, !llvm.loop !20

._crit_edge17:                                    ; preds = %._crit_edge.us, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.l, %._crit_edge.us ]
  ret float %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @sumup() local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @NUM, align 4, !tbaa !4    ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge13

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = load i32, ptr @BLOCK, align 4            ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.us.us.preheader, label %._crit_edge13

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph
  %i.e = zext nneg i32 %i.c to i64                ; 2 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv24 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next25, %._crit_edge.split.us.us.us ] ; 2 uses
  %.012.us.us = phi float [ 0.000000e+00, %.preheader.us.us.preheader ], [ %i.l, %._crit_edge.split.us.us.us ]
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, %i.e ; 3 uses
  br label %.preheader.us.preheader.i.us.us.us

.preheader.us.preheader.i.us.us.us:               ; preds = %mm_sum.exit.loopexit.us.us.us, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %mm_sum.exit.loopexit.us.us.us ], [ 0, %.preheader.us.us ] ; 2 uses
  %.110.us.us.us = phi float [ %i.l, %mm_sum.exit.loopexit.us.us.us ], [ %.012.us.us, %.preheader.us.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.e ; 3 uses
  br label %.preheader.us.i.us.us.us

.preheader.us.i.us.us.us:                         ; preds = %._crit_edge.us.i.us.us.us, %.preheader.us.preheader.i.us.us.us
  %indvars.iv21.i.us.us.us = phi i64 [ %indvars.iv24, %.preheader.us.preheader.i.us.us.us ], [ %indvars.iv.next22.i.us.us.us, %._crit_edge.us.i.us.us.us ] ; 2 uses
  %.016.us.i.us.us.us = phi float [ 0.000000e+00, %.preheader.us.preheader.i.us.us.us ], [ %i.i, %._crit_edge.us.i.us.us.us ]
  %i.f = getelementptr inbounds nuw [4096 x i8], ptr @c, i64 %indvars.iv21.i.us.us.us
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.i.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ %indvars.iv, %.preheader.us.i.us.us.us ], [ %indvars.iv.next.i.us.us.us, %bb.b ] ; 2 uses
  %.114.us.i.us.us.us = phi float [ %.016.us.i.us.us.us, %.preheader.us.i.us.us.us ], [ %i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.us.us.us
  %i.h = load float, ptr %i.g, align 4, !tbaa !8
  %i.i = fadd float %.114.us.i.us.us.us, %i.h     ; 3 uses
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 1 ; 2 uses
  %i.j = icmp samesign ult i64 %indvars.iv.next.i.us.us.us, %indvars.iv.next
  br i1 %i.j, label %bb.b, label %._crit_edge.us.i.us.us.us, !llvm.loop !19

._crit_edge.us.i.us.us.us:                        ; preds = %bb.b
  %indvars.iv.next22.i.us.us.us = add nuw nsw i64 %indvars.iv21.i.us.us.us, 1 ; 2 uses
  %i.k = icmp samesign ult i64 %indvars.iv.next22.i.us.us.us, %indvars.iv.next25
  br i1 %i.k, label %.preheader.us.i.us.us.us, label %mm_sum.exit.loopexit.us.us.us, !llvm.loop !20

mm_sum.exit.loopexit.us.us.us:                    ; preds = %._crit_edge.us.i.us.us.us
  %i.l = fadd float %.110.us.us.us, %i.i          ; 3 uses
  %i.m = trunc nuw i64 %indvars.iv.next to i32
  %i.n = icmp sgt i32 %i.a, %i.m
  br i1 %i.n, label %.preheader.us.preheader.i.us.us.us, label %._crit_edge.split.us.us.us, !llvm.loop !21

._crit_edge.split.us.us.us:                       ; preds = %mm_sum.exit.loopexit.us.us.us
  %i.o = trunc nuw i64 %indvars.iv.next25 to i32
  %i.p = icmp sgt i32 %i.a, %i.o
  br i1 %i.p, label %.preheader.us.us, label %._crit_edge13, !llvm.loop !22

._crit_edge13:                                    ; preds = %._crit_edge.split.us.us.us, %.preheader.lr.ph, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.preheader.lr.ph ], [ %i.l, %._crit_edge.split.us.us.us ]
  ret float %.0.lcssa
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef 1) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #11, !inline_history !26
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  store i32 %i.d, ptr @NUM, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.f, ptr noundef null, i32 noundef 10) #11, !inline_history !26
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  store i32 %i.h, ptr @BLOCK, align 4, !tbaa !4
  %i.i = icmp ugt i32 %i.d, 1024
  %i.j = icmp ugt i32 %i.h, %i.d
  %i.k = or i1 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @init()
  tail call void @matmult()
  %i.l = tail call float @sumup()
  %i.m = fpext float %i.l to double
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.m) ; 0 uses
  tail call void @exit(i32 noundef 0) #12
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

end_hunk_0
