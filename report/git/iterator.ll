inline.NumInlined: 23
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_iterator_vtable = type { ptr, ptr, ptr }

@empty_ref_iterator_vtable = internal global %struct.ref_iterator_vtable { ptr @empty_ref_iterator_advance, ptr @empty_ref_iterator_seek, ptr @empty_ref_iterator_release }, align 8
@merge_ref_iterator_vtable = internal global %struct.ref_iterator_vtable { ptr @merge_ref_iterator_advance, ptr @merge_ref_iterator_seek, ptr @merge_ref_iterator_release }, align 8
@prefix_ref_iterator_vtable = internal global %struct.ref_iterator_vtable { ptr @prefix_ref_iterator_advance, ptr @prefix_ref_iterator_seek, ptr @prefix_ref_iterator_release }, align 8
@.str = private unnamed_addr constant [16 x i8] c"refs/iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"attempt to trim too many characters\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ref_iterator_advance(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = tail call i32 %i.b(ptr noundef nonnull %0) #12
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ref_iterator_seek(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #12
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local void @ref_iterator_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call void %i.c(ptr noundef nonnull %0) #12
  tail call void @free(ptr noundef nonnull %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @base_ref_iterator_init(ptr nofree noundef writeonly captures(none) initializes((0, 48)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @empty_ref_iterator_begin() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #12 ; 3 uses
  store ptr @empty_ref_iterator_vtable, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  ret ptr %i.a
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @is_empty_ref_iterator(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = icmp eq ptr %i.a, @empty_ref_iterator_vtable
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 7) i32 @ref_iterator_select(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %or.cond.not20 = and i1 %i.a, %i.b
  %.mux = select i1 %or.cond.not20, i32 2, i32 -1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.f) #13 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %.011 = select i1 %i.h, i32 2, i32 6
  %.0 = icmp sgt i32 %i.g, 0
  br i1 %.0, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.i = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.c ]
  %i.j = tail call i32 @parse_worktree_ref(ptr noundef %i.i, ptr noundef null, ptr noundef null, ptr noundef null) #12
  %i.k = icmp eq i32 %i.j, 3
  %.17 = select i1 %i.k, i32 3, i32 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ %.17, %bb.d ], [ %.mux, %bb.a ], [ %.011, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @parse_worktree_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @merge_ref_iterator_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 104) #12 ; 10 uses
  store ptr @merge_ref_iterator_vtable, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %1, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %2, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %3, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr null, ptr %i.i, align 8, !tbaa !34
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @overlay_ref_iterator_begin(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %.not = icmp eq ptr %i.a, @empty_ref_iterator_vtable
  br i1 %.not, label %ref_iterator_free.exit, label %bb.b

ref_iterator_free.exit:                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.b = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.b(ptr noundef nonnull %0) #12, !inline_history !35
  tail call void @free(ptr noundef nonnull %0) #12
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %.not12 = icmp eq ptr %i.c, @empty_ref_iterator_vtable
  br i1 %.not12, label %ref_iterator_free.exit11, label %bb.c

ref_iterator_free.exit11:                         ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.d = load ptr, ptr %3, align 8, !tbaa !22
  tail call void %i.d(ptr noundef nonnull %1) #12, !inline_history !35
  tail call void @free(ptr noundef nonnull %1) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 104) #12 ; 9 uses
  store ptr @merge_ref_iterator_vtable, ptr %i.e, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %0, ptr %i.g, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %0, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %1, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %1, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr @overlay_iterator_select, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %ref_iterator_free.exit11, %ref_iterator_free.exit
  %.0 = phi ptr [ %1, %ref_iterator_free.exit ], [ %0, %ref_iterator_free.exit11 ], [ %i.e, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 7) i32 @overlay_iterator_select(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %.not = icmp eq ptr %1, null
  %.not10 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = select i1 %.not10, i32 -1, i32 2
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %.not10, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.e) #13 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not12 = icmp eq i32 %i.f, 0
  %. = select i1 %.not12, i32 6, i32 3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 3, %bb.c ], [ %., %bb.e ], [ 2, %bb.d ], [ %i.a, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @prefix_ref_iterator_begin(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !36
  %i.b = icmp ne i8 %i.a, 0
  %i.c = icmp ne i32 %2, 0
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #12 ; 6 uses
  store ptr @prefix_ref_iterator_vtable, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %0, ptr %i.f, align 8, !tbaa !37
  %i.g = tail call ptr @xstrdup(ptr noundef nonnull %1) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.g, ptr %i.h, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %2, ptr %i.i, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @do_for_each_ref_iterator(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0) #12, !inline_history !41
  %.fr = freeze i32 %i.d                          ; 2 uses
  %i.e = icmp eq i32 %.fr, 0
  br i1 %i.e, label %bb.c, label %ref_iterator_free.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 %1(ptr noundef nonnull %i.a, ptr noundef %2) #12 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %ref_iterator_free.exit.thread, !llvm.loop !42

ref_iterator_free.exit:                           ; preds = %bb.b
  %i.g = icmp eq i32 %.fr, -2
  %spec.select = sext i1 %i.g to i32
  br label %ref_iterator_free.exit.thread

ref_iterator_free.exit.thread:                    ; preds = %bb.c, %ref_iterator_free.exit
  %i.h = phi i32 [ %spec.select, %ref_iterator_free.exit ], [ %i.f, %bb.c ]
  %i.i = load ptr, ptr %0, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  tail call void %i.k(ptr noundef nonnull %0) #12, !inline_history !35
  tail call void @free(ptr noundef nonnull %0) #12
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @empty_ref_iterator_advance(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @empty_ref_iterator_seek(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #8 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @empty_ref_iterator_release(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2, 1) i32 @merge_ref_iterator_advance(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = tail call i32 %i.f(ptr noundef nonnull %i.d) #12, !inline_history !41 ; 2 uses
  %.not40 = icmp eq i32 %i.g, 0
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !29
  %i.h = icmp eq i32 %i.g, -2
  br i1 %i.h, label %.thread49, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = tail call i32 %i.l(ptr noundef nonnull %i.j) #12, !inline_history !41 ; 2 uses
  %.not41 = icmp eq i32 %i.m, 0
  br i1 %.not41, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.i, align 8, !tbaa !31
  %i.n = icmp eq i32 %i.m, -2
  br i1 %i.n, label %.thread49, label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = tail call i32 %i.q(ptr noundef nonnull %i.o) #12, !inline_history !41 ; 2 uses
  %.not42 = icmp eq i32 %i.r, 0
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !34
  store ptr null, ptr %i.s, align 8, !tbaa !44
  %i.t = icmp eq i32 %i.r, -2
  br i1 %i.t, label %.thread49, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.i

end_hunk_0
