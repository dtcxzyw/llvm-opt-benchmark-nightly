inline.NumInlined: 24
inline.NumDeleted: 11
begin_hunk_0_@FmoStartPicture:bb.a
  br i1 %.not.i.us.3, label %.critedge.loopexit.split.loop.exit12.i.us.3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us.3, 1 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.3, label %FmoGetFirstMBOfSliceGroup.exit.us.3, label %bb.g, !llvm.loop !67

.critedge.loopexit.split.loop.exit12.i.us.3:      ; preds = %bb.g
  %i.q = trunc nuw nsw i64 %indvars.iv.i.us.3 to i32
  br label %FmoGetFirstMBOfSliceGroup.exit.us.3

FmoGetFirstMBOfSliceGroup.exit.us.3:              ; preds = %bb.h, %.critedge.loopexit.split.loop.exit12.i.us.3
  %.0..i.us.3 = phi i32 [ %i.q, %.critedge.loopexit.split.loop.exit12.i.us.3 ], [ -1, %bb.h ]
  store i32 %.0..i.us.3, ptr getelementptr inbounds nuw (i8, ptr @FirstMBInSlice, i64 12), align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %FmoGetFirstMBOfSliceGroup.exit.us.3
  %indvars.iv.i.us.4 = phi i64 [ 0, %FmoGetFirstMBOfSliceGroup.exit.us.3 ], [ %indvars.iv.next.i.us.4, %bb.j ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.us.4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !37
  %.not.i.us.4 = icmp eq i8 %i.s, 4
  br i1 %.not.i.us.4, label %.critedge.loopexit.split.loop.exit12.i.us.4, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i.us.4 = add nuw nsw i64 %indvars.iv.i.us.4, 1 ; 2 uses
  %exitcond.not.i.us.4 = icmp eq i64 %indvars.iv.next.i.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.4, label %FmoGetFirstMBOfSliceGroup.exit.us.4, label %bb.i, !llvm.loop !67

.critedge.loopexit.split.loop.exit12.i.us.4:      ; preds = %bb.i
  %i.t = trunc nuw nsw i64 %indvars.iv.i.us.4 to i32
  br label %FmoGetFirstMBOfSliceGroup.exit.us.4

FmoGetFirstMBOfSliceGroup.exit.us.4:              ; preds = %bb.j, %.critedge.loopexit.split.loop.exit12.i.us.4
  %.0..i.us.4 = phi i32 [ %i.t, %.critedge.loopexit.split.loop.exit12.i.us.4 ], [ -1, %bb.j ]
  store i32 %.0..i.us.4, ptr getelementptr inbounds nuw (i8, ptr @FirstMBInSlice, i64 16), align 16, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %FmoGetFirstMBOfSliceGroup.exit.us.4
  %indvars.iv.i.us.5 = phi i64 [ 0, %FmoGetFirstMBOfSliceGroup.exit.us.4 ], [ %indvars.iv.next.i.us.5, %bb.l ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.us.5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !37
  %.not.i.us.5 = icmp eq i8 %i.v, 5
  br i1 %.not.i.us.5, label %.critedge.loopexit.split.loop.exit12.i.us.5, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i.us.5 = add nuw nsw i64 %indvars.iv.i.us.5, 1 ; 2 uses
  %exitcond.not.i.us.5 = icmp eq i64 %indvars.iv.next.i.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.5, label %FmoGetFirstMBOfSliceGroup.exit.us.5, label %bb.k, !llvm.loop !67

.critedge.loopexit.split.loop.exit12.i.us.5:      ; preds = %bb.k
  %i.w = trunc nuw nsw i64 %indvars.iv.i.us.5 to i32
  br label %FmoGetFirstMBOfSliceGroup.exit.us.5

FmoGetFirstMBOfSliceGroup.exit.us.5:              ; preds = %bb.l, %.critedge.loopexit.split.loop.exit12.i.us.5
  %.0..i.us.5 = phi i32 [ %i.w, %.critedge.loopexit.split.loop.exit12.i.us.5 ], [ -1, %bb.l ]
  store i32 %.0..i.us.5, ptr getelementptr inbounds nuw (i8, ptr @FirstMBInSlice, i64 20), align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %FmoGetFirstMBOfSliceGroup.exit.us.5
  %indvars.iv.i.us.6 = phi i64 [ 0, %FmoGetFirstMBOfSliceGroup.exit.us.5 ], [ %indvars.iv.next.i.us.6, %bb.n ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.us.6
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37
  %.not.i.us.6 = icmp eq i8 %i.y, 6
  br i1 %.not.i.us.6, label %.critedge.loopexit.split.loop.exit12.i.us.6, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i.us.6 = add nuw nsw i64 %indvars.iv.i.us.6, 1 ; 2 uses
  %exitcond.not.i.us.6 = icmp eq i64 %indvars.iv.next.i.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.6, label %FmoGetFirstMBOfSliceGroup.exit.us.6, label %bb.m, !llvm.loop !67

.critedge.loopexit.split.loop.exit12.i.us.6:      ; preds = %bb.m
  %i.z = trunc nuw nsw i64 %indvars.iv.i.us.6 to i32
  br label %FmoGetFirstMBOfSliceGroup.exit.us.6

FmoGetFirstMBOfSliceGroup.exit.us.6:              ; preds = %bb.n, %.critedge.loopexit.split.loop.exit12.i.us.6
  %.0..i.us.6 = phi i32 [ %i.z, %.critedge.loopexit.split.loop.exit12.i.us.6 ], [ -1, %bb.n ]
  store i32 %.0..i.us.6, ptr getelementptr inbounds nuw (i8, ptr @FirstMBInSlice, i64 24), align 8, !tbaa !4
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %FmoGetFirstMBOfSliceGroup.exit.us.6
  %indvars.iv.i.us.7 = phi i64 [ 0, %FmoGetFirstMBOfSliceGroup.exit.us.6 ], [ %indvars.iv.next.i.us.7, %bb.p ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.us.7
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37
  %.not.i.us.7 = icmp eq i8 %i.ab, 7
  br i1 %.not.i.us.7, label %.critedge.loopexit.split.loop.exit12.i.us.7, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.us.7 = add nuw nsw i64 %indvars.iv.i.us.7, 1 ; 2 uses
  %exitcond.not.i.us.7 = icmp eq i64 %indvars.iv.next.i.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.7, label %FmoGetFirstMBOfSliceGroup.exit.us.7, label %bb.o, !llvm.loop !67

.critedge.loopexit.split.loop.exit12.i.us.7:      ; preds = %bb.o
  %i.ac = trunc nuw nsw i64 %indvars.iv.i.us.7 to i32
  br label %FmoGetFirstMBOfSliceGroup.exit.us.7

FmoGetFirstMBOfSliceGroup.exit.us.7:              ; preds = %bb.p, %.critedge.loopexit.split.loop.exit12.i.us.7
  %.0..i.us.7 = phi i32 [ %i.ac, %.critedge.loopexit.split.loop.exit12.i.us.7 ], [ -1, %bb.p ]
  store i32 %.0..i.us.7, ptr getelementptr inbounds nuw (i8, ptr @FirstMBInSlice, i64 28), align 4, !tbaa !4
  br label %.split7.us

.split7.us:                                       ; preds = %FmoGetFirstMBOfSliceGroup.exit.preheader, %FmoGetFirstMBOfSliceGroup.exit.us.7
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2147483648, 2147483647) i32 @FmoGetFirstMBOfSliceGroup(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15348
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr @MBAmap, align 8, !tbaa !33
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !37
  %i.h = zext i8 %i.g to i32
  %.not = icmp eq i32 %0, %i.h
  br i1 %.not, label %.critedge.loopexit.split.loop.exit12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !67

.critedge.loopexit.split.loop.exit12:             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit.split.loop.exit12, %bb.a
  %.0. = phi i32 [ -1, %bb.a ], [ %i.i, %.critedge.loopexit.split.loop.exit12 ], [ -1, %bb.c ]
  ret i32 %.0.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @FmoEndPicture() local_unnamed_addr #5 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 256) i32 @FmoMB2SliceGroup(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @MBAmap, align 8, !tbaa !33
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !37
  %i.e = zext i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2147483647, 2147483647) i32 @FmoGetNextMBNr(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @MBAmap, align 8, !tbaa !33 ; 2 uses
  %i.b = sext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !37
  %i.e = load ptr, ptr @img, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15348
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %indvars.iv.next14 = add nsw i64 %i.b, 1        ; 2 uses
  %i.i = icmp slt i64 %indvars.iv.next14, %i.h
  br i1 %i.i, label %.lr.ph, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next15, 1 ; 2 uses
  %i.j = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.j, label %.lr.ph, label %.critedge, !llvm.loop !68

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv.next15 = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv.next14, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next15
  %i.l = load i8, ptr %i.k, align 1, !tbaa !37
  %.not = icmp eq i8 %i.d, %i.l
  br i1 %.not, label %.critedge.split.loop.exit11, label %bb.b, !llvm.loop !68

.critedge.split.loop.exit11:                      ; preds = %.lr.ph
  %i.m = trunc nsw i64 %indvars.iv.next15 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %.critedge.split.loop.exit11
  %. = phi i32 [ %i.m, %.critedge.split.loop.exit11 ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2147483647) i32 @FmoGetPreviousMBNr(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @MBAmap, align 8, !tbaa !33 ; 2 uses
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !37
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext nneg i32 %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %2 = icmp slt i32 %indvars.le, 1
  br i1 %2, label %.critedge, label %bb.c, !llvm.loop !69

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv13 = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv13, -1 ; 3 uses
  %i.f = and i64 %indvars.iv.next, 4294967295
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !37
  %.not = icmp eq i8 %i.d, %i.h
  %indvars.le = trunc i64 %indvars.iv.next to i32 ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !69

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %..09 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %indvars.le, %bb.c ]
  ret i32 %..09
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15348
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr @MBAmap, align 8, !tbaa !33 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.m, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %wide.load = load <4 x i8>, ptr %i.f, align 1, !tbaa !37
  %wide.load11 = load <4 x i8>, ptr %i.g, align 1, !tbaa !37
  %i.h = zext <4 x i8> %wide.load to <4 x i32>
  %i.i = zext <4 x i8> %wide.load11 to <4 x i32>
  %i.j = icmp eq <4 x i32> %broadcast.splat, %i.h
  %i.k = icmp eq <4 x i32> %broadcast.splat, %i.i
  %i.l = select <4 x i1> %i.j, <4 x i32> %vec.ind, <4 x i32> %vec.phi ; 2 uses
  %i.m = select <4 x i1> %i.k, <4 x i32> %step.add, <4 x i32> %vec.phi10 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.l, <4 x i32> %i.m)
  %i.o = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %.not = icmp eq i32 %i.o, -2147483648
  %i.p = select i1 %.not, i32 -1, i32 %i.o        ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.08.ph = phi i32 [ -1, %.lr.ph ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.08 = phi i32 [ %spec.select, %scalar.ph ], [ %.08.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37
  %i.s = zext i8 %i.r to i32
  %i.t = icmp eq i32 %0, %i.s
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.t, i32 %i.u, i32 %.08 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %i.p, %middle.block ], [ %spec.select, %scalar.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @FmoSetLastMacroblockInSlice(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @MBAmap, align 8, !tbaa !33 ; 2 uses
  %i.b = sext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !37    ; 2 uses
  %i.e = load ptr, ptr @img, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15348
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %indvars.iv.next.i8 = add nsw i64 %i.b, 1       ; 2 uses
  %i.i = icmp slt i64 %indvars.iv.next.i8, %i.h
  br i1 %i.i, label %.lr.ph, label %FmoGetNextMBNr.exit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i9, 1 ; 2 uses
  %i.j = icmp slt i64 %indvars.iv.next.i, %i.h
  br i1 %i.j, label %.lr.ph, label %FmoGetNextMBNr.exit, !llvm.loop !68

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv.next.i9 = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %indvars.iv.next.i8, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next.i9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.d, %i.l
  br i1 %.not.i, label %.critedge.split.loop.exit11.i, label %bb.b, !llvm.loop !68

.critedge.split.loop.exit11.i:                    ; preds = %.lr.ph
  %i.m = trunc nsw i64 %indvars.iv.next.i9 to i32
  br label %FmoGetNextMBNr.exit

FmoGetNextMBNr.exit:                              ; preds = %bb.b, %bb.a, %.critedge.split.loop.exit11.i
  %..i = phi i32 [ %i.m, %.critedge.split.loop.exit11.i ], [ -1, %bb.a ], [ -1, %bb.b ]
  %i.n = zext i8 %i.d to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @FirstMBInSlice, i64 %i.n
  store i32 %..i, ptr %i.o, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @FmoGetFirstMacroblockInSlice(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr @FirstMBInSlice, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @FmoSliceGroupCompletelyCoded(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr @FirstMBInSlice, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %.lobit = lshr i32 %i.c, 31
  ret i32 %.lobit
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
end_hunk_0
