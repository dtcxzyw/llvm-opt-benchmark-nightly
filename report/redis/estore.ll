inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dictType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }

@.str = private unnamed_addr constant [23 x i8] c"num_buckets_bits <= 16\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"estore.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"eidx == 0\00", align 1
@entryHashDictTypeWithHFE = external global %struct.dictType, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"ebRemove(bucket, es->bucket_type, item)==1\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"ebRemove(bucket, es->bucket_type, item) != 0\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"ebAdd(bucket, es->bucket_type, item, when) == 0\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"src->num_buckets > eidx\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"src->num_buckets == dst->num_buckets\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"ebIsEmpty(dst->ebArray[eidx])\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @estoreGetBuckets(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @estoreCreate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %1, 17
  br i1 %i.a, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 44) #6
  tail call void @abort() #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(48) ptr @zmalloc(i64 noundef 48) #8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %1, ptr %i.d, align 8, !tbaa !22
  %i.e = shl nuw nsw i32 1, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !23
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @fwTreeCreate(i32 noundef %1) #6
  %.pre = load i32, ptr %i.f, align 4, !tbaa !23
  %2 = sext i32 %.pre to i64
  %3 = shl nsw i64 %2, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %4 = phi i64 [ %3, %bb.d ], [ 8, %bb.c ]
  %i.h = phi ptr [ %i.g, %bb.d ], [ null, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.h, ptr %i.i, align 8, !tbaa !24
  %i.j = tail call noalias ptr @zcalloc(i64 noundef %4) #8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !13
  %5 = load i32, ptr %i.f, align 4, !tbaa !23     ; 2 uses
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %7 = zext nneg i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %8, i1 false), !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.e
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %9, align 8, !tbaa !26
  ret ptr %i.b
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #4

declare ptr @fwTreeCreate(i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @estoreEmpty(ptr noundef captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !21
  tail call void @ebDestroy(ptr noundef %i.j, ptr noundef %i.k, ptr noundef null) #6
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr null, ptr %i.m, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !23
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !27

bb.c:                                             ; preds = %._crit_edge
  tail call void @fwTreeClear(ptr noundef nonnull %i.h) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.q, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @ebDestroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @fwTreeClear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @estoreIsEmpty(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp eq i64 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local i32 @estoreGetFirstNonEmptyBucket(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = tail call i32 @fwTreeFindFirstNonEmpty(ptr noundef %i.h) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @estoreSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  ret i64 %i.b
}

declare i32 @fwTreeFindFirstNonEmpty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @estoreGetNextNonEmptyBucket(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.e, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 95) #6
  tail call void @abort() #7
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call i32 @fwTreeFindNextNonEmpty(ptr noundef %i.f, i32 noundef %1) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi i32 [ %i.g, %bb.d ], [ -1, %bb.b ]
  ret i32 %.0
}

declare i32 @fwTreeFindNextNonEmpty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @estoreRelease(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  tail call void @fwTreeDestroy(ptr noundef %i.h) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  tail call void @zfree(ptr noundef %i.j) #6
  tail call void @zfree(ptr noundef nonnull %0) #6
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.k = phi i32 [ %i.c, %.lr.ph ], [ %i.p, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !21
  tail call void @ebDestroy(ptr noundef nonnull %i.m, ptr noundef %i.o, ptr noundef null) #6
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %i.k, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !29

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @fwTreeDestroy(ptr noundef) local_unnamed_addr #2
end_hunk_0
