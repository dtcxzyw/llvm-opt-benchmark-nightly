inline.NumInlined: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"ft->tree[idx] >= (unsigned long long)(-delta)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fwtree.c\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @fwTreeCreate(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %0, ptr %i.b, align 8, !tbaa !13
  %i.c = shl nuw i32 1, %0                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.c, ptr %i.d, align 4, !tbaa !18
  %i.e = add nuw nsw i32 %i.c, 1
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call noalias ptr @zcalloc(i64 noundef %i.g) #8
  store ptr %i.h, ptr %i.a, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !20
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @fwTreeDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  tail call void @zfree(ptr noundef %i.a) #9
  tail call void @zfree(ptr noundef nonnull %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @zfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @fwTreePrefixSum(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  %i.g = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.f)
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = load ptr, ptr %0, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.022 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.c ]
  %.121 = phi i32 [ %i.h, %.lr.ph ], [ %i.n, %bb.c ] ; 3 uses
  %i.j = zext nneg i32 %.121 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = add i64 %i.l, %.022                      ; 2 uses
  %.not20 = add nsw i32 %.121, -1
  %i.n = and i32 %.not20, %.121                   ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !23

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.016 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.m, %bb.c ]
  ret i64 %.016
}

; Function Attrs: nounwind uwtable
define dso_local void @fwTreeUpdate(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 4 uses
  %.not = icmp slt i32 %1, %i.d
  br i1 %.not, label %.lr.ph.a, label %.loopexit

.lr.ph.a:                                         ; preds = %bb.b
  %i.e = add nuw nsw i32 %1, 1                    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.f, align 8, !tbaa !20
  %.not2224 = icmp samesign ugt i32 %i.e, %i.d
  br i1 %.not2224, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.a
  %3 = icmp slt i64 %2, 0
  %4 = sub nsw i64 0, %2
  %5 = load ptr, ptr %0, align 8, !tbaa !19       ; 2 uses
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.025.us = phi i32 [ %i.o, %bb.c ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.i = zext nneg i32 %.025.us to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.i ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %.not23.us = icmp ult i64 %i.k, %4
  br i1 %.not23.us, label %.split.us, label %bb.c, !prof !25

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.l = add i64 %i.k, %2
  store i64 %i.l, ptr %i.j, align 8, !tbaa !21
  %i.m = sub nsw i32 0, %.025.us
  %i.n = and i32 %.025.us, %i.m
  %i.o = add nuw nsw i32 %i.n, %.025.us           ; 2 uses
  %.not22.us = icmp sgt i32 %i.o, %i.d
  br i1 %.not22.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !26

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.025 = phi i32 [ %i.v, %.lr.ph.split ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.p = zext nneg i32 %.025 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21
  %i.s = add i64 %i.r, %2
  store i64 %i.s, ptr %i.q, align 8, !tbaa !21
  %i.t = sub nsw i32 0, %.025
  %i.u = and i32 %.025, %i.t
  %i.v = add nuw nsw i32 %i.u, %.025              ; 2 uses
  %.not22 = icmp sgt i32 %i.v, %i.d
  br i1 %.not22, label %.loopexit, label %.lr.ph.split, !llvm.loop !26

.split.us:                                        ; preds = %.lr.ph.split.us
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 68) #9
  tail call void @abort() #10
  unreachable

.loopexit:                                        ; preds = %.lr.ph.split, %bb.c, %.lr.ph.a, %bb.a, %bb.b
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @fwTreeFindIndex(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = shl nuw i32 1, %i.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.01524 = phi i32 [ %i.d, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.01623 = phi i64 [ %1, %bb.b ], [ %spec.select21, %bb.c ] ; 2 uses
  %.01722 = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.f = add nsw i32 %.01524, %.01722             ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = icmp ugt i64 %.01623, %i.i               ; 2 uses
  %spec.select = select i1 %i.j, i32 %i.f, i32 %.01722 ; 2 uses
  %i.k = select i1 %i.j, i64 %i.i, i64 0
  %spec.select21 = sub nuw i64 %.01623, %i.k
  %i.l = ashr i32 %.01524, 1                      ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !27

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @fwTreeFindFirstNonEmpty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = shl nuw i32 1, %i.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.01524.i = phi i32 [ %i.c, %bb.a ], [ %i.k, %bb.b ] ; 2 uses
  %.01623.i = phi i64 [ 1, %bb.a ], [ %spec.select21.i, %bb.b ] ; 2 uses
  %.01722.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %bb.b ] ; 2 uses
  %i.e = add nsw i32 %.01722.i, %.01524.i         ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = icmp ugt i64 %.01623.i, %i.h             ; 2 uses
  %spec.select.i = select i1 %i.i, i32 %i.e, i32 %.01722.i ; 2 uses
  %i.j = select i1 %i.i, i64 %i.h, i64 0
  %spec.select21.i = sub nuw i64 %.01623.i, %i.j
  %i.k = ashr i32 %.01524.i, 1                    ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %fwTreeFindIndex.exit, label %bb.b, !llvm.loop !27

fwTreeFindIndex.exit:                             ; preds = %bb.b
  ret i32 %spec.select.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @fwTreeFindNextNonEmpty(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %fwTreeFindIndex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %.not = icmp slt i32 %1, %i.d
  br i1 %.not, label %.lr.ph.i, label %fwTreeFindIndex.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = add nuw nsw i32 %1, 1
  %i.f = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.121.i = phi i32 [ %i.e, %.lr.ph.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.g = zext nneg i32 %.121.i to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = add i64 %i.i, %.022.i                    ; 2 uses
  %.not20.i = add nsw i32 %.121.i, -1
  %i.k = and i32 %.not20.i, %.121.i               ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %fwTreePrefixSum.exit, label %bb.c, !llvm.loop !23

fwTreePrefixSum.exit:                             ; preds = %bb.c
  %i.l = add i64 %i.j, 1                          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  %.not14 = icmp ugt i64 %i.l, %i.n
  br i1 %.not14, label %fwTreeFindIndex.exit, label %bb.d

bb.d:                                             ; preds = %fwTreePrefixSum.exit
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %fwTreeFindIndex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !13
  %i.r = shl nuw i32 1, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.01524.i = phi i32 [ %i.r, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %.01623.i = phi i64 [ %i.l, %bb.e ], [ %spec.select21.i, %bb.f ] ; 2 uses
  %.01722.i = phi i32 [ 0, %bb.e ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.s = add nsw i32 %.01722.i, %.01524.i         ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %i.w = icmp ugt i64 %.01623.i, %i.v             ; 2 uses
  %spec.select.i = select i1 %i.w, i32 %i.s, i32 %.01722.i ; 2 uses
  %i.x = select i1 %i.w, i64 %i.v, i64 0
  %spec.select21.i = sub nuw i64 %.01623.i, %i.x
  %i.y = ashr i32 %.01524.i, 1                    ; 2 uses
  %.not.i15 = icmp eq i32 %i.y, 0
  br i1 %.not.i15, label %fwTreeFindIndex.exit, label %bb.f, !llvm.loop !27

fwTreeFindIndex.exit:                             ; preds = %bb.f, %bb.d, %fwTreePrefixSum.exit, %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %fwTreePrefixSum.exit ], [ 0, %bb.d ], [ %spec.select.i, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @fwTreeClear(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %i.d = add nsw i32 %i.c, 1
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.a, i8 0, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !10, i64 8}
!14 = !{!"_fenwickTree", !15, i64 0, !10, i64 8, !10, i64 12, !17, i64 16}
!15 = !{!"p1 long long", !16, i64 0}
!16 = !{!"any pointer", !11, i64 0}
!17 = !{!"long", !11, i64 0}
!18 = !{!14, !10, i64 12}
!19 = !{!14, !15, i64 0}
!20 = !{!14, !17, i64 16}
!21 = !{!22, !22, i64 0}
!22 = !{!"long long", !11, i64 0}
end_hunk_0
