inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mz_stream_vtbl_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mz_stream_mem_vtbl = internal global %struct.mz_stream_vtbl_s { ptr @mz_stream_mem_open, ptr @mz_stream_mem_is_open, ptr @mz_stream_mem_read, ptr @mz_stream_mem_write, ptr @mz_stream_mem_tell, ptr @mz_stream_mem_seek, ptr @mz_stream_mem_close, ptr @mz_stream_mem_error, ptr @mz_stream_mem_create, ptr @mz_stream_mem_delete, ptr null, ptr null }, align 8

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -5, 1) i32 @mz_stream_mem_open(ptr nofree noundef captures(none) initializes((16, 20), (36, 44)) %0, ptr nofree readnone captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.c, align 8, !tbaa !15
  %i.d = and i32 %2, 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #12 ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %mz_stream_mem_set_size.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %.not15.i = icmp eq ptr %i.j, null
  br i1 %.not15.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = sext i32 %i.l to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.j, i64 %i.m, i1 false)
  tail call void @free(ptr noundef nonnull %i.j) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.h, ptr %i.i, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.n, align 8, !tbaa !18
  br label %mz_stream_mem_set_size.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  store i32 %i.p, ptr %i.b, align 4, !tbaa !14
  br label %mz_stream_mem_set_size.exit

mz_stream_mem_set_size.exit:                      ; preds = %bb.e, %bb.b, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ -5, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -111, 1) i32 @mz_stream_mem_is_open(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, i32 -111, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @mz_stream_mem_read(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 4 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.e) ; 2 uses
  %i.f = add nsw i32 %spec.select, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  %i.j = sub nsw i32 %i.h, %i.d
  %.1 = select i1 %i.i, i32 %i.j, i32 %spec.select ; 4 uses
  %i.k = icmp slt i32 %.1, 1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = sext i32 %i.d to i64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = zext nneg i32 %.1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.o, i64 %i.p, i1 false)
  %i.q = load i32, ptr %i.c, align 8, !tbaa !15
  %i.r = add nsw i32 %i.q, %.1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %.1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define i32 @mz_stream_mem_write(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %mz_stream_mem_set_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = sub nsw i32 %i.b, %i.d                   ; 2 uses
  %i.f = icmp sgt i32 %2, %i.e
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !7
  %i.i = and i32 %i.h, 8
  %.not38 = icmp eq i32 %i.i, 0
  br i1 %.not38, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %. = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.k)
  %.0 = add nsw i32 %., %i.b                      ; 2 uses
  %i.l = zext i32 %.0 to i64
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #12 ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %mz_stream_mem_set_size.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %.not15.i = icmp eq ptr %i.o, null
  br i1 %.not15.i, label %mz_stream_mem_set_size.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.a, align 8, !tbaa !18
  %i.q = sext i32 %i.p to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.o, i64 %i.q, i1 false)
  tail call void @free(ptr noundef nonnull %i.o) #13
  br label %mz_stream_mem_set_size.exit.thread

mz_stream_mem_set_size.exit.thread:               ; preds = %bb.e, %bb.f
  store ptr %i.m, ptr %i.n, align 8, !tbaa !17
  store i32 %.0, ptr %i.a, align 8, !tbaa !18
  %.pre = load i32, ptr %i.c, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %mz_stream_mem_set_size.exit.thread, %bb.c, %bb.b
  %i.r = phi i32 [ %.pre, %mz_stream_mem_set_size.exit.thread ], [ %i.d, %bb.b ], [ %i.d, %bb.c ]
  %.032 = phi i32 [ %2, %mz_stream_mem_set_size.exit.thread ], [ %2, %bb.b ], [ %i.e, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = sext i32 %.032 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %1, i64 %i.w, i1 false)
  %i.x = load i32, ptr %i.c, align 8, !tbaa !15
  %i.y = add nsw i32 %i.x, %.032                  ; 3 uses
  store i32 %i.y, ptr %i.c, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = icmp sgt i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %mz_stream_mem_set_size.exit

bb.h:                                             ; preds = %bb.g
  store i32 %i.y, ptr %i.z, align 4, !tbaa !14
  br label %mz_stream_mem_set_size.exit

mz_stream_mem_set_size.exit:                      ; preds = %bb.d, %bb.g, %bb.h, %bb.a
  %.031 = phi i32 [ 0, %bb.a ], [ %.032, %bb.g ], [ %.032, %bb.h ], [ -5, %bb.d ]
  ret i32 %.031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -2147483648, 2147483648) i64 @mz_stream_mem_tell(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = sext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -113, 1) i32 @mz_stream_mem_seek(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  switch i32 %2, label %mz_stream_mem_set_size.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load i32, ptr %3, align 8, !tbaa !15
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %1, %5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %1, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i64 [ %6, %bb.b ], [ %i.d, %bb.c ], [ %1, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = sext i32 %i.f to i64
  %i.h = icmp sgt i64 %.0, %i.g
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !7
  %i.k = and i32 %i.j, 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %mz_stream_mem_set_size.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = trunc i64 %.0 to i32                     ; 2 uses
  %i.n = and i64 %.0, 4294967295
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #12 ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %mz_stream_mem_set_size.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17   ; 3 uses
  %.not15.i = icmp eq ptr %i.q, null
  br i1 %.not15.i, label %mz_stream_mem_set_size.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.e, align 8, !tbaa !18
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  tail call void @free(ptr noundef nonnull %i.q) #13
  br label %mz_stream_mem_set_size.exit.thread

mz_stream_mem_set_size.exit.thread:               ; preds = %bb.g, %bb.h
  store ptr %i.o, ptr %i.p, align 8, !tbaa !17
  store i32 %i.m, ptr %i.e, align 8, !tbaa !18
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.t = icmp slt i64 %.0, 0
  br i1 %i.t, label %mz_stream_mem_set_size.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre = trunc nuw nsw i64 %.0 to i32
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %mz_stream_mem_set_size.exit.thread
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.m, %mz_stream_mem_set_size.exit.thread ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.pre-phi, ptr %i.u, align 8, !tbaa !15
  br label %mz_stream_mem_set_size.exit

mz_stream_mem_set_size.exit:                      ; preds = %bb.f, %bb.i, %bb.e, %bb.a, %bb.j
  %.017 = phi i32 [ -113, %bb.i ], [ -113, %bb.a ], [ -113, %bb.e ], [ 0, %bb.j ], [ -5, %bb.f ]
  ret i32 %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @mz_stream_mem_close(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @mz_stream_mem_error(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mz_stream_mem_set_buffer(ptr nofree noundef writeonly captures(none) initializes((24, 40)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %2, ptr %i.c, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -113, 1) i32 @mz_stream_mem_get_buffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %mz_stream_mem_get_buffer_at.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %mz_stream_mem_get_buffer_at.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %mz_stream_mem_get_buffer_at.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %1, align 8, !tbaa !19
  br label %mz_stream_mem_get_buffer_at.exit

mz_stream_mem_get_buffer_at.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ -113, %bb.c ], [ -113, %bb.b ], [ -113, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -113, 1) i32 @mz_stream_mem_get_buffer_at(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp slt i64 %1, 0
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = sext i32 %i.f to i64
  %i.h = icmp sgt i64 %1, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  store ptr %i.i, ptr %2, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -113, %bb.c ], [ -113, %bb.b ], [ -113, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -113, 1) i32 @mz_stream_mem_get_buffer_at_current(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp eq ptr %1, null
  %i.e = icmp slt i32 %i.b, 0
  %or.cond.i = or i1 %i.d, %i.e
  br i1 %or.cond.i, label %mz_stream_mem_get_buffer_at.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %mz_stream_mem_get_buffer_at.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.b, %i.i
  br i1 %i.j, label %mz_stream_mem_get_buffer_at.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store ptr %i.k, ptr %1, align 8, !tbaa !19
  br label %mz_stream_mem_get_buffer_at.exit

mz_stream_mem_get_buffer_at.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ -113, %bb.c ], [ -113, %bb.b ], [ -113, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @mz_stream_mem_get_buffer_length(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  store i32 %i.b, ptr %1, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mz_stream_mem_set_buffer_limit(ptr nofree noundef writeonly captures(none) initializes((36, 40)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.a, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mz_stream_mem_set_grow_size(ptr nofree noundef writeonly captures(none) initializes((44, 48)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %i.a, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @mz_stream_mem_create() #7 {
bb.a:
end_hunk_0
