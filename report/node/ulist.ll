inline.NumInlined: 13
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef ptr @ulist_createEmptyList_78(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @uprv_malloc_78(i64 noundef 32) #13 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.c, i8 0, i64 28, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.c, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ulist_addItemEndList_78(ptr noundef captures(address_is_null) %0, ptr noundef %1, i8 noundef signext %2, ptr noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp eq ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  %i.d = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %2, 0
  br i1 %.not28, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uprv_free_78(ptr noundef %1) #14
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(32) ptr @uprv_malloc_78(i64 noundef 32) #13 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @uprv_free_78(ptr noundef nonnull %1) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 7, ptr %3, align 4
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  store ptr %1, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.m, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.e, ptr %i.q, align 8
  store ptr %i.e, ptr %i.n, align 8
  %.pre = load i32, ptr %i.h, align 8
  %i.r = add nsw i32 %.pre, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = phi i32 [ %i.r, %bb.j ], [ 1, %bb.i ]
  store i32 %i.s, ptr %i.h, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.k, %bb.g
  ret void
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ulist_addItemBeginList_78(ptr noundef captures(address_is_null) %0, ptr noundef %1, i8 noundef signext %2, ptr noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp eq ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  %i.d = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %2, 0
  br i1 %.not28, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uprv_free_78(ptr noundef %1) #14
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(32) ptr @uprv_malloc_78(i64 noundef 32) #13 ; 10 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @uprv_free_78(ptr noundef nonnull %1) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 7, ptr %3, align 4
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  store ptr %1, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.m, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.e, ptr %i.r, align 8
  store ptr %i.e, ptr %i.o, align 8
  %.pre = load i32, ptr %i.h, align 8
  %i.s = add nsw i32 %.pre, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = phi i32 [ %i.s, %bb.j ], [ 1, %bb.i ]
  store i32 %i.t, ptr %i.h, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.k, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local signext range(i8 0, 2) i8 @ulist_containsString_78(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = sext i32 %2 to i64
  %.010.in15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.01016 = load ptr, ptr %.010.in15, align 8     ; 2 uses
  %.not14.not17 = icmp eq ptr %.01016, null
  br i1 %.not14.not17, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.01018 = phi ptr [ %.010, %bb.c ], [ %.01016, %.preheader ] ; 2 uses
  %i.b = load ptr, ptr %.01018, align 8           ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #15
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp eq i32 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %bcmp = tail call i32 @bcmp(ptr %1, ptr nonnull %i.b, i64 %i.a)
  %i.f = icmp eq i32 %bcmp, 0
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.010.in = getelementptr inbounds nuw i8, ptr %.01018, i64 8
  %.010 = load ptr, ptr %.010.in, align 8         ; 2 uses
  %.not14.not = icmp eq ptr %.010, null
  br i1 %.not14.not, label %.thread, label %.lr.ph, !llvm.loop !5

.thread:                                          ; preds = %bb.b, %bb.c, %.preheader, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ 0, %.preheader ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i8 %.1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @ulist_removeString_78(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.pn = phi ptr [ %.09, %bb.b ], [ %0, %bb.a ]
  %.09.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.09 = load ptr, ptr %.09.in, align 8           ; 9 uses
  %.not12.not = icmp eq ptr %.09, null
  br i1 %.not12.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.a = load ptr, ptr %.09, align 8
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.a) #15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.preheader, !llvm.loop !7

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.09, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %.09, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %..i = select i1 %i.f, ptr %0, ptr %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = icmp eq ptr %i.h, null
  %.sink22.i = select i1 %i.j, ptr %0, ptr %i.h
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sink22.i, i64 16
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = icmp eq ptr %.09, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.t = load i8, ptr %i.s, align 8
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %.09, align 8
  tail call void @uprv_free_78(ptr noundef %i.u) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @uprv_free_78(ptr noundef nonnull %.09) #14
  br label %.thread

.thread:                                          ; preds = %.preheader, %bb.a, %bb.g
  %.1 = phi i8 [ 1, %bb.g ], [ 0, %bb.a ], [ 0, %.preheader ]
  ret i8 %.1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @ulist_getNext_78(ptr noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %0, align 8
  %i.f = load ptr, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ulist_getListSize_78(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ulist_resetList_78(ptr noundef captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ulist_deleteList_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not1012 = icmp eq ptr %i.b, null
  br i1 %.not1012, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.013 = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.b ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.f = load i8, ptr %i.e, align 8
  %.not11 = icmp eq i8 %i.f, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr %.013, align 8
  tail call void @uprv_free_78(ptr noundef %i.g) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  tail call void @uprv_free_78(ptr noundef nonnull %.013) #14
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.d, %bb.b
  tail call void @uprv_free_78(ptr noundef nonnull %0) #14
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ulist_close_keyword_values_iterator_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %ulist_deleteList_78.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1012.i = icmp eq ptr %i.d, null
  br i1 %.not1012.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.013.i = phi ptr [ %i.f, %bb.e ], [ %i.d, %bb.c ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i, i64 24
  %i.h = load i8, ptr %i.g, align 8
  %.not11.i = icmp eq i8 %i.h, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = load ptr, ptr %.013.i, align 8
  tail call void @uprv_free_78(ptr noundef %i.i) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  tail call void @uprv_free_78(ptr noundef nonnull %.013.i) #14
  %.not10.i = icmp eq ptr %i.f, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %bb.e, %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.b) #14
  br label %ulist_deleteList_78.exit

ulist_deleteList_78.exit:                         ; preds = %bb.b, %._crit_edge.i
  tail call void @uprv_free_78(ptr noundef nonnull %0) #14
  br label %bb.f

bb.f:                                             ; preds = %ulist_deleteList_78.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @ulist_count_keyword_values_78(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %ulist_getListSize_78.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %ulist_getListSize_78.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8
  br label %ulist_getListSize_78.exit

ulist_getListSize_78.exit:                        ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.f, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @ulist_next_keyword_value_78(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %ulist_getNext_78.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %ulist_getNext_78.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ulist_getNext_78.exit.thread, label %ulist_getNext_78.exit

ulist_getNext_78.exit:                            ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne ptr %1, null
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.d, label %ulist_getNext_78.exit.thread

bb.d:                                             ; preds = %ulist_getNext_78.exit
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #15
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %1, align 4
  br label %ulist_getNext_78.exit.thread

ulist_getNext_78.exit.thread:                     ; preds = %bb.b, %bb.c, %ulist_getNext_78.exit, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.d ], [ %i.j, %ulist_getNext_78.exit ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ulist_reset_keyword_values_iterator_78(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %ulist_resetList_78.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %ulist_resetList_78.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %i.d, align 8
  br label %ulist_resetList_78.exit

ulist_resetList_78.exit:                          ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ulist_getListFromEnum_78(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
end_hunk_0
