Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/bipbuffer?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @bipbuf_unused(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12
  %i.h = sub i32 %i.e, %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  %i.l = trunc i64 %i.i to i32
  %i.m = sub i32 %i.l, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.m, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @bipbuf_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !14
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @bipbuf_used(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  %i.e = sub i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12
  %i.h = add i32 %i.e, %i.g
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @bipbuf_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = zext i32 %1 to i64
  store i64 %i.b, ptr %0, align 8, !tbaa !14
  store i64 0, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @bipbuf_new(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 24
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #8 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %i.c, align 8, !tbaa !14
  store i64 0, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @bipbuf_free(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  tail call void @free(ptr noundef %0) #9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @bipbuf_is_empty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = icmp eq i32 %i.b, %i.d
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @bipbuf_request(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bipbuf_unused.exit, label %bipbuf_unused.exit.thread

bipbuf_unused.exit:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = sub i32 %i.e, %i.g
  %i.i = icmp slt i32 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.b

bipbuf_unused.exit.thread:                        ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 2 uses
  %i.m = trunc i64 %i.j to i32
  %i.n = sub i32 %i.m, %i.l
  %i.o = icmp slt i32 %i.n, %1
  br i1 %i.o, label %bb.c, label %.thread

bb.b:                                             ; preds = %bipbuf_unused.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = zext i32 %i.g to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  br label %bb.c

.thread:                                          ; preds = %bipbuf_unused.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = zext i32 %i.l to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %bipbuf_unused.exit.thread, %bipbuf_unused.exit, %.thread, %bb.b
  %.0 = phi ptr [ %i.u, %.thread ], [ %i.r, %bb.b ], [ null, %bipbuf_unused.exit ], [ null, %bipbuf_unused.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @bipbuf_push(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bipbuf_unused.exit, label %bipbuf_unused.exit.thread

bipbuf_unused.exit:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = sub i32 %i.e, %i.g
  %i.i = icmp slt i32 %i.h, %1
  br i1 %i.i, label %__check_for_switch_to_b.exit, label %bb.b

bipbuf_unused.exit.thread:                        ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 2 uses
  %i.m = trunc i64 %i.j to i32
  %i.n = sub i32 %i.m, %i.l
  %i.o = icmp slt i32 %i.n, %1
  br i1 %i.o, label %__check_for_switch_to_b.exit, label %.thread

bb.b:                                             ; preds = %bipbuf_unused.exit
  %i.p = add i32 %i.g, %1                         ; 2 uses
  store i32 %i.p, ptr %i.f, align 8, !tbaa !12
  %.pre = load i64, ptr %0, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre11 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !12
  br label %bb.c

.thread:                                          ; preds = %bipbuf_unused.exit.thread
  %i.q = add i32 %i.l, %1                         ; 2 uses
  store i32 %i.q, ptr %i.k, align 4, !tbaa !12
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre13 = load i32, ptr %.phi.trans.insert12, align 8, !tbaa !12
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre15 = load i32, ptr %.phi.trans.insert14, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.r = phi i32 [ %.pre15, %.thread ], [ %i.p, %bb.b ]
  %i.s = phi i32 [ %.pre13, %.thread ], [ %i.e, %bb.b ]
  %i.t = phi i32 [ %i.q, %.thread ], [ %.pre11, %bb.b ]
  %i.u = phi i64 [ %i.j, %.thread ], [ %.pre, %bb.b ]
  %i.v = zext i32 %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sub i32 %i.s, %i.r
  %i.y = zext i32 %i.x to i64
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %__check_for_switch_to_b.exit

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.a, align 4, !tbaa !12
  br label %__check_for_switch_to_b.exit

__check_for_switch_to_b.exit:                     ; preds = %bb.d, %bb.c, %bipbuf_unused.exit.thread, %bipbuf_unused.exit
  %.0 = phi i32 [ 0, %bipbuf_unused.exit.thread ], [ 0, %bipbuf_unused.exit ], [ %1, %bb.c ], [ %1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @bipbuf_offer(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bipbuf_unused.exit, label %bipbuf_unused.exit.thread

bipbuf_unused.exit:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  %i.h = sub i32 %i.e, %i.g
  %i.i = icmp slt i32 %i.h, %2
  br i1 %i.i, label %__check_for_switch_to_b.exit, label %bb.b

bipbuf_unused.exit.thread:                        ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 3 uses
  %i.m = trunc i64 %i.j to i32
  %i.n = sub i32 %i.m, %i.l
  %i.o = icmp slt i32 %i.n, %2
  br i1 %i.o, label %__check_for_switch_to_b.exit, label %.thread

bb.b:                                             ; preds = %bipbuf_unused.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = zext i32 %i.g to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %1, i64 %i.s, i1 false)
  %i.t = add i32 %i.g, %2                         ; 2 uses
  store i32 %i.t, ptr %i.f, align 8, !tbaa !12
  %.pre = load i64, ptr %0, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre19 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !12
  br label %bb.c

.thread:                                          ; preds = %bipbuf_unused.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = zext i32 %i.l to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.x, i1 false)
  %i.y = add i32 %i.l, %2                         ; 2 uses
  store i32 %i.y, ptr %i.k, align 4, !tbaa !12
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre21 = load i32, ptr %.phi.trans.insert20, align 8, !tbaa !12
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre23 = load i32, ptr %.phi.trans.insert22, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.z = phi i32 [ %.pre23, %.thread ], [ %i.t, %bb.b ]
  %i.aa = phi i32 [ %.pre21, %.thread ], [ %i.e, %bb.b ]
  %i.ab = phi i32 [ %i.y, %.thread ], [ %.pre19, %bb.b ]
  %i.ac = phi i64 [ %i.j, %.thread ], [ %.pre, %bb.b ]
  %i.ad = zext i32 %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sub i32 %i.aa, %i.z
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %__check_for_switch_to_b.exit

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.a, align 4, !tbaa !12
  br label %__check_for_switch_to_b.exit

__check_for_switch_to_b.exit:                     ; preds = %bb.d, %bb.c, %bipbuf_unused.exit.thread, %bipbuf_unused.exit
  %.0 = phi i32 [ 0, %bipbuf_unused.exit.thread ], [ 0, %bipbuf_unused.exit ], [ %2, %bb.c ], [ %2, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @bipbuf_peek(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = add i32 %i.c, %1
  %i.e = zext i32 %i.d to i64
  %i.f = icmp ult i64 %i.a, %i.e
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %.not = icmp eq i32 %i.c, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = zext i32 %i.c to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @bipbuf_peek_all(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i32 %i.d, %i.b
  store i32 %i.e, ptr %1, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.a, align 8, !tbaa !12
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @bipbuf_poll(ptr nofree noundef captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 3 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %__check_for_switch_to_b.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.f = add i32 %i.b, %1                         ; 4 uses
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %__check_for_switch_to_b.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = zext i32 %i.b to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !12
  %i.l = icmp eq i32 %i.f, %i.d
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.a, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  store i32 %i.q, ptr %i.c, align 4, !tbaa !12
  store i64 0, ptr %i.p, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 0, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.r = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %i.f, %bb.c ]
  %i.s = phi i32 [ %i.q, %bb.e ], [ 0, %bb.f ], [ %i.d, %bb.c ]
  %i.t = zext i32 %i.s to i64
  %i.u = sub i64 %i.e, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !12
  %i.x = sub i32 %i.r, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = icmp ult i64 %i.u, %i.y
  br i1 %i.z, label %bb.h, label %__check_for_switch_to_b.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.aa, align 4, !tbaa !12
  br label %__check_for_switch_to_b.exit

__check_for_switch_to_b.exit:                     ; preds = %bb.h, %bb.g, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.k, %bb.g ], [ %i.k, %bb.h ]
  ret ptr %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!13, !13, i64 0}
end_hunk_0
