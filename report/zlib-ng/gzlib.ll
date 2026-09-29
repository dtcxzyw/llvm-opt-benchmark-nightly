Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/gzlib?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<fd:%d>\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @gz_state_free(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @free(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @gz_buffer_alloc(ptr nofree noundef captures(none) initializes((40, 44), (48, 56), (64, 72)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  switch i32 %i.d, label %select.unfold [
    i32 31153, label %bb.b
    i32 7247, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = shl nsw i32 %i.b, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17
  %.not = icmp eq i32 %i.g, 0
  %spec.select = select i1 %.not, i32 %i.b, i32 0
  br label %select.unfold

bb.c:                                             ; preds = %bb.a
  %i.h = shl nsw i32 %i.b, 1
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %bb.a, %bb.c
  %.024 = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  %.0 = phi i32 [ %i.b, %bb.a ], [ %spec.select, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = add nsw i32 %.0, %.024
  %i.j = tail call ptr @zng_alloc_aligned(i32 noundef %i.i, i32 noundef 64) #15 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !33
  %.not27 = icmp eq i32 %.0, 0
  br i1 %.not27, label %bb.d, label %.thread

bb.d:                                             ; preds = %select.unfold
  %i.m = icmp eq ptr %i.j, null
  br i1 %i.m, label %bb.e, label %bb.i

.thread:                                          ; preds = %select.unfold
  %i.n = sext i32 %.024 to i64
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !34
  %i.q = icmp eq ptr %i.j, null
  br i1 %i.q, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.thread, %bb.d
  tail call void @zng_free_aligned(ptr noundef %i.j) #15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.r, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %zng_gz_error.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21
  %.not24.i = icmp eq i32 %i.v, -4
  br i1 %.not24.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.t) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.s, align 8, !tbaa !20
  br label %zng_gz_error.exit

zng_gz_error.exit:                                ; preds = %bb.e, %bb.h
  store i32 0, ptr %0, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 -4, ptr %i.w, align 4, !tbaa !21
  br label %bb.j

bb.i:                                             ; preds = %.thread, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.b, ptr %i.x, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %zng_gz_error.exit
  %.025 = phi i32 [ -1, %zng_gz_error.exit ], [ 0, %bb.i ]
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare hidden ptr @zng_alloc_aligned(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @gz_buffer_free(ptr nofree noundef captures(none) initializes((40, 44), (48, 64)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @zng_free_aligned(ptr noundef %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zng_gz_error(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %.not24 = icmp eq i32 %i.d, -4
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  switch i32 %1, label %bb.f [
    i32 -5, label %bb.g
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %0, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 %1, ptr %i.e, align 4, !tbaa !21
  %i.f = icmp eq ptr %2, null
  %i.g = icmp eq i32 %1, -4
  %or.cond3 = or i1 %i.g, %i.f
  br i1 %or.cond3, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #16
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %i.l = add i64 %i.j, 3
  %i.m = add i64 %i.l, %i.k
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #17 ; 3 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !20
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -4, ptr %i.e, align 4, !tbaa !21
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #16
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %i.r = add i64 %i.p, 3
  %i.s = add i64 %i.r, %i.q
  %i.t = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.n, i64 noundef %i.s, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #15 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare hidden void @zng_free_aligned(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zng_gzopen(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @gz_open(ptr noundef %0, i32 noundef -1, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @gz_open(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %gz_state_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(240) ptr @malloc(i64 noundef 240) #17 ; 31 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %gz_state_init.exit.thread, label %gz_state_init.exit

gz_state_init.exit:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr null, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i32 131072, ptr %i.g, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  store i32 0, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 5 uses
  store i32 0, ptr %i.l, align 4, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr null, ptr %i.m, align 8, !tbaa !20
  %i.n = load i8, ptr %2, align 1, !tbaa !39      ; 2 uses
  %.not74 = icmp eq i8 %i.n, 0
  br i1 %.not74, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %gz_state_init.exit, %bb.p
  %i.o = phi i32 [ %i.t, %bb.p ], [ 0, %gz_state_init.exit ] ; 11 uses
  %i.p = phi i32 [ %i.u, %bb.p ], [ 0, %gz_state_init.exit ] ; 9 uses
  %i.q = phi i8 [ %i.w, %bb.p ], [ %i.n, %gz_state_init.exit ] ; 2 uses
  %.077 = phi i32 [ %.1, %bb.p ], [ 0, %gz_state_init.exit ] ; 11 uses
  %.05476 = phi i32 [ %.155, %bb.p ], [ 0, %gz_state_init.exit ] ; 11 uses
  %.05675 = phi ptr [ %i.v, %bb.p ], [ %2, %gz_state_init.exit ]
  %i.r = add i8 %i.q, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.r, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.s = zext nneg i8 %i.r to i32
  store i32 %i.s, ptr %i.k, align 8, !tbaa !37
  br label %bb.p

bb.d:                                             ; preds = %.lr.ph
  switch i8 %i.q, label %bb.p [
    i8 114, label %bb.e
    i8 119, label %bb.f
    i8 97, label %bb.g
    i8 43, label %bb.h
    i8 84, label %bb.o
    i8 101, label %bb.i
    i8 120, label %bb.j
    i8 102, label %bb.k
    i8 104, label %bb.l
    i8 82, label %bb.m
    i8 70, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d
  store i32 7247, ptr %i.j, align 8, !tbaa !16
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  store i32 31153, ptr %i.j, align 8, !tbaa !16
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  store i32 1, ptr %i.j, align 8, !tbaa !16
  br label %bb.p

bb.h:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.b) #15
  br label %gz_state_init.exit.thread

bb.i:                                             ; preds = %bb.d
  br label %bb.p

bb.j:                                             ; preds = %bb.d
  br label %bb.p

bb.k:                                             ; preds = %bb.d
  store i32 1, ptr %i.l, align 4, !tbaa !38
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  store i32 2, ptr %i.l, align 4, !tbaa !38
  br label %bb.p

bb.m:                                             ; preds = %bb.d
  store i32 3, ptr %i.l, align 4, !tbaa !38
  br label %bb.p

bb.n:                                             ; preds = %bb.d
  store i32 4, ptr %i.l, align 4, !tbaa !38
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  store i32 1, ptr %i.i, align 8, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.d, %bb.c
  %i.t = phi i32 [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ 1, %bb.o ], [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %i.o, %bb.k ], [ %i.o, %bb.l ], [ %i.o, %bb.m ], [ %i.o, %bb.n ] ; 2 uses
  %i.u = phi i32 [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ 7247, %bb.e ], [ 31153, %bb.f ], [ 1, %bb.g ], [ %i.p, %bb.o ], [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %i.p, %bb.m ], [ %i.p, %bb.n ] ; 5 uses
  %.155 = phi i32 [ %.05476, %bb.c ], [ %.05476, %bb.d ], [ %.05476, %bb.e ], [ %.05476, %bb.f ], [ %.05476, %bb.g ], [ %.05476, %bb.o ], [ 1, %bb.i ], [ %.05476, %bb.j ], [ %.05476, %bb.k ], [ %.05476, %bb.l ], [ %.05476, %bb.m ], [ %.05476, %bb.n ] ; 2 uses
  %.1 = phi i32 [ %.077, %bb.c ], [ %.077, %bb.d ], [ %.077, %bb.e ], [ %.077, %bb.f ], [ %.077, %bb.g ], [ %.077, %bb.o ], [ %.077, %bb.i ], [ 1, %bb.j ], [ %.077, %bb.k ], [ %.077, %bb.l ], [ %.077, %bb.m ], [ %.077, %bb.n ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05675, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !39    ; 2 uses
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.p
  %i.x = icmp eq i32 %.155, 0
  %i.y = select i1 %i.x, i32 0, i32 524288
  %i.z = icmp eq i32 %.1, 0
  %i.aa = select i1 %i.z, i32 65, i32 193
  switch i32 %i.u, label %bb.t [
    i32 0, label %._crit_edge.thread
    i32 7247, label %bb.q
  ]

._crit_edge.thread:                               ; preds = %gz_state_init.exit, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %gz_state_init.exit.thread

bb.q:                                             ; preds = %._crit_edge
  %i.ab = icmp eq i32 %i.t, 0
  br i1 %i.ab, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %gz_state_init.exit.thread

bb.s:                                             ; preds = %bb.q
  store i32 1, ptr %i.i, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #17 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !23
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %gz_state_init.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.ah = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ae, i64 noundef %i.ad, ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #15 ; 0 uses
  %i.ai = icmp eq i32 %i.u, 7247                  ; 2 uses
  %i.aj = icmp sgt i32 %1, -1
  br i1 %i.aj, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.v
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %1, ptr %i.ak, align 4, !tbaa !24
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.al = icmp eq i32 %i.u, 31153
  %i.am = select i1 %i.al, i32 512, i32 1024
  %i.an = or disjoint i32 %i.aa, %i.am
  %i.ao = select i1 %i.ai, i32 0, i32 %i.an
  %i.ap = or disjoint i32 %i.y, %i.ao
  %i.aq = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %i.ap, i32 noundef 438) #15 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !24
  %i.as = icmp eq i32 %i.aq, -1
  br i1 %i.as, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.ae) #15
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %gz_state_init.exit.thread

bb.y:                                             ; preds = %.thread, %bb.w
  %i.at = phi i32 [ %1, %.thread ], [ %i.aq, %bb.w ] ; 2 uses
  %i.au = icmp eq i32 %i.u, 1
  br i1 %i.au, label %.thread69, label %bb.z

.thread69:                                        ; preds = %bb.y
  %i.av = tail call i64 @lseek64(i32 noundef %i.at, i64 noundef 0, i32 noundef 2) #15 ; 0 uses
  store i32 31153, ptr %i.j, align 8, !tbaa !16
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  br i1 %i.ai, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aw = tail call i64 @lseek64(i32 noundef %i.at, i64 noundef 0, i32 noundef 1) #15 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ay = icmp eq i64 %i.aw, -1
  %spec.store.select = select i1 %i.ay, i64 0, i64 %i.aw
  store i64 %spec.store.select, ptr %i.ax, align 8
  store i32 0, ptr %i.b, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 0, ptr %i.az, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 0, ptr %i.ba, align 4, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 0, ptr %i.bb, align 4, !tbaa !27
  br label %gz_reset.exit

bb.ab:                                            ; preds = %bb.z, %.thread69
  store i32 0, ptr %i.b, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 0, ptr %i.bc, align 8, !tbaa !28
  br label %gz_reset.exit

gz_reset.exit:                                    ; preds = %bb.aa, %bb.ab
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 0, ptr %i.bd, align 8, !tbaa !29
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 0, ptr %i.be, align 4, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bf, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 0, ptr %i.bg, align 8, !tbaa !31
  br label %gz_state_init.exit.thread

gz_state_init.exit.thread:                        ; preds = %bb.b, %bb.a, %gz_reset.exit, %bb.x, %bb.u, %bb.r, %._crit_edge.thread, %bb.h
  %.057 = phi ptr [ %i.b, %gz_reset.exit ], [ null, %bb.a ], [ null, %bb.h ], [ null, %._crit_edge.thread ], [ null, %bb.r ], [ null, %bb.u ], [ null, %bb.x ], [ null, %bb.b ]
  ret ptr %.057
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zng_gzdopen(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp eq i32 %0, -1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %0) #15 ; 0 uses
  %i.d = call fastcc ptr @gz_open(ptr noundef nonnull %i.a, i32 noundef %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzclose(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = icmp eq i32 %i.c, 7247
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @zng_gzclose_r(ptr noundef nonnull %0) #15
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @zng_gzclose_w(ptr noundef nonnull %0) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  ret i32 %.0
}

declare i32 @zng_gzclose_r(ptr noundef) local_unnamed_addr #3

declare i32 @zng_gzclose_w(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @zng_gzbuffer(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  switch i32 %i.c, label %bb.e [
    i32 7247, label %bb.c
    i32 31153, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %.not14 = icmp ne i32 %i.e, 0
  %i.f = icmp slt i32 %1, 0
  %or.cond = or i1 %i.f, %.not14
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %1, i32 8)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.store.select, ptr %i.g, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zng_gzrewind(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %.not = icmp eq i32 %i.c, 7247
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  switch i32 %i.e, label %bb.l [
    i32 0, label %bb.d
    i32 -5, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41
  %i.j = tail call i64 @lseek64(i32 noundef %i.g, i64 noundef %i.i, i32 noundef 0) #15
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %0, align 8, !tbaa !22
  %i.l = load i32, ptr %i.b, align 8, !tbaa !16
  %i.m = icmp eq i32 %i.l, 7247
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.o, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.p, align 4, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %gz_reset.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.d, align 4, !tbaa !21
  %.not24.i.i = icmp eq i32 %i.u, -4
  br i1 %.not24.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.t) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.s, align 8, !tbaa !20
  br label %gz_reset.exit

gz_reset.exit:                                    ; preds = %bb.h, %bb.k
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.w, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %gz_reset.exit
  %.0 = phi i32 [ 0, %gz_reset.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @zng_gzseek(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  switch i32 %i.c, label %.thread69 [
    i32 7247, label %bb.c
    i32 31153, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  switch i32 %i.e, label %.thread69 [
    i32 0, label %bb.d
    i32 -5, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %or.cond = icmp ugt i32 %2, 1
  br i1 %or.cond, label %.thread69, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
