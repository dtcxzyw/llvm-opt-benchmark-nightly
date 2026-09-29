Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/gzlib?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"<fd:%d>\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define noalias noundef ptr @gzopen(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @gz_open(ptr noundef %0, i32 noundef -1, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @gz_open(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(248) ptr @malloc(i64 noundef 248) #13 ; 31 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.al, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 8192, ptr %i.f, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  store i32 0, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  store i32 -1, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 5 uses
  store i32 0, ptr %i.k, align 4, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  store i32 0, ptr %i.l, align 8, !tbaa !35
  %i.m = load i8, ptr %2, align 1, !tbaa !36      ; 2 uses
  %.not100 = icmp eq i8 %i.m, 0
  br i1 %.not100, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.s
  %i.n = phi i32 [ %i.u, %bb.s ], [ 0, %bb.c ]    ; 12 uses
  %i.o = phi i32 [ %i.v, %bb.s ], [ 0, %bb.c ]    ; 11 uses
  %i.p = phi i8 [ %i.x, %bb.s ], [ %i.m, %bb.c ]  ; 2 uses
  %.0103 = phi i32 [ %.1, %bb.s ], [ 0, %bb.c ]   ; 13 uses
  %.077102 = phi i32 [ %.178, %bb.s ], [ 0, %bb.c ] ; 14 uses
  %.079101 = phi ptr [ %i.w, %bb.s ], [ %2, %bb.c ]
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %or.cond95 = icmp ult i8 %i.q, 10
  br i1 %or.cond95, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.r = zext nneg i8 %i.q to i32
  store i32 %i.r, ptr %i.j, align 8, !tbaa !33
  br label %bb.s

bb.e:                                             ; preds = %.lr.ph
  switch i8 %i.p, label %bb.s [
    i8 114, label %bb.f
    i8 119, label %bb.g
    i8 97, label %bb.h
    i8 43, label %bb.i
    i8 84, label %bb.r
    i8 101, label %bb.j
    i8 120, label %bb.k
    i8 102, label %bb.l
    i8 104, label %bb.m
    i8 82, label %bb.n
    i8 70, label %bb.o
    i8 71, label %bb.p
    i8 78, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  store i32 7247, ptr %i.i, align 8, !tbaa !19
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  store i32 31153, ptr %i.i, align 8, !tbaa !19
  br label %bb.s

bb.h:                                             ; preds = %bb.e
  store i32 1, ptr %i.i, align 8, !tbaa !19
  br label %bb.s

bb.i:                                             ; preds = %bb.e
  tail call void @free(ptr noundef %i.c) #14
  br label %bb.al

bb.j:                                             ; preds = %bb.e
  %i.s = or i32 %.077102, 524288
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  br label %bb.s

bb.l:                                             ; preds = %bb.e
  store i32 1, ptr %i.k, align 4, !tbaa !34
  br label %bb.s

bb.m:                                             ; preds = %bb.e
  store i32 2, ptr %i.k, align 4, !tbaa !34
  br label %bb.s

bb.n:                                             ; preds = %bb.e
  store i32 3, ptr %i.k, align 4, !tbaa !34
  br label %bb.s

bb.o:                                             ; preds = %bb.e
  store i32 4, ptr %i.k, align 4, !tbaa !34
  br label %bb.s

bb.p:                                             ; preds = %bb.e
  store i32 -1, ptr %i.l, align 8, !tbaa !35
  br label %bb.s

bb.q:                                             ; preds = %bb.e
  %i.t = or i32 %.077102, 2048
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  store i32 1, ptr %i.l, align 8, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.e, %bb.d
  %i.u = phi i32 [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ 1, %bb.r ], [ %i.n, %bb.j ], [ %i.n, %bb.k ], [ %i.n, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.n ], [ %i.n, %bb.o ], [ -1, %bb.p ], [ %i.n, %bb.q ] ; 3 uses
  %i.v = phi i32 [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ 7247, %bb.f ], [ 31153, %bb.g ], [ 1, %bb.h ], [ %i.o, %bb.r ], [ %i.o, %bb.j ], [ %i.o, %bb.k ], [ %i.o, %bb.l ], [ %i.o, %bb.m ], [ %i.o, %bb.n ], [ %i.o, %bb.o ], [ %i.o, %bb.p ], [ %i.o, %bb.q ] ; 5 uses
  %.178 = phi i32 [ %.077102, %bb.d ], [ %.077102, %bb.e ], [ %.077102, %bb.f ], [ %.077102, %bb.g ], [ %.077102, %bb.h ], [ %.077102, %bb.r ], [ %i.s, %bb.j ], [ %.077102, %bb.k ], [ %.077102, %bb.l ], [ %.077102, %bb.m ], [ %.077102, %bb.n ], [ %.077102, %bb.o ], [ %.077102, %bb.p ], [ %i.t, %bb.q ] ; 4 uses
  %.1 = phi i32 [ %.0103, %bb.d ], [ %.0103, %bb.e ], [ %.0103, %bb.f ], [ %.0103, %bb.g ], [ %.0103, %bb.h ], [ %.0103, %bb.r ], [ %.0103, %bb.j ], [ 1, %bb.k ], [ %.0103, %bb.l ], [ %.0103, %bb.m ], [ %.0103, %bb.n ], [ %.0103, %bb.o ], [ %.0103, %bb.p ], [ %.0103, %bb.q ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.079101, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !36    ; 2 uses
  %.not = icmp eq i8 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.s
  %i.y = icmp eq i32 %.1, 0
  %i.z = select i1 %i.y, i32 65, i32 193
  switch i32 %i.v, label %bb.w [
    i32 0, label %._crit_edge.thread
    i32 7247, label %bb.t
  ]

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.c) #14
  br label %bb.al

bb.t:                                             ; preds = %._crit_edge
  switch i32 %i.u, label %bb.y [
    i32 1, label %bb.u
    i32 0, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.c) #14
  br label %bb.al

bb.v:                                             ; preds = %bb.t
  store i32 1, ptr %i.l, align 8, !tbaa !35
  br label %bb.y

bb.w:                                             ; preds = %._crit_edge
  %i.aa = icmp eq i32 %i.u, -1
  br i1 %i.aa, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.c) #14
  br label %bb.al

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.v
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %i.ac = add i64 %i.ab, 1                        ; 2 uses
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #13 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !20
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.c) #14
  br label %bb.al

bb.aa:                                            ; preds = %bb.y
  %i.ag = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ad, i64 noundef %i.ac, ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #14 ; 0 uses
  %i.ah = icmp eq i32 %i.v, 7247                  ; 2 uses
  %i.ai = icmp eq i32 %1, -1
  br i1 %i.ai, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aj = and i32 %.178, 2048
  %.not93 = icmp eq i32 %i.aj, 0
  br i1 %.not93, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ak = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %1, i32 noundef 3) #14
  %i.al = or i32 %i.ak, 2048
  %i.am = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %1, i32 noundef 4, i32 noundef %i.al) #14 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.an = and i32 %.178, 524288
  %.not94 = icmp eq i32 %i.an, 0
  br i1 %.not94, label %.thread117, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ao = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %1, i32 noundef 1) #14
  %i.ap = or i32 %i.ao, 524288
  %i.aq = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %1, i32 noundef 2, i32 noundef %i.ap) #14 ; 0 uses
  br label %.thread117

.thread117:                                       ; preds = %bb.ad, %bb.ae
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %1, ptr %i.ar, align 4, !tbaa !21
  br label %bb.ah

bb.af:                                            ; preds = %bb.aa
  %i.as = icmp eq i32 %i.v, 31153
  %i.at = select i1 %i.as, i32 512, i32 1024
  %i.au = or disjoint i32 %i.z, %i.at
  %i.av = select i1 %i.ah, i32 0, i32 %i.au
  %i.aw = or i32 %.178, %i.av
  %i.ax = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef 438) #14 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !21
  %i.az = icmp eq i32 %i.ax, -1
  br i1 %i.az, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.ad) #14
  tail call void @free(ptr noundef nonnull %i.c) #14
  br label %bb.al

bb.ah:                                            ; preds = %.thread117, %bb.af
  %i.ba = phi i32 [ %1, %.thread117 ], [ %i.ax, %bb.af ] ; 2 uses
  %i.bb = icmp eq i32 %i.v, 1
  br i1 %i.bb, label %.thread, label %bb.ai

.thread:                                          ; preds = %bb.ah
  %i.bc = tail call i64 @lseek64(i32 noundef %i.ba, i64 noundef 0, i32 noundef 2) #14 ; 0 uses
  store i32 31153, ptr %i.i, align 8, !tbaa !19
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ah, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bd = tail call i64 @lseek64(i32 noundef %i.ba, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bf = icmp eq i64 %i.bd, -1
  %spec.store.select = select i1 %i.bf, i64 0, i64 %i.bd
  store i64 %spec.store.select, ptr %i.be, align 8
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 0, ptr %i.bg, align 8, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 0, ptr %i.bh, align 4, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 0, ptr %i.bi, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 -1, ptr %i.bj, align 4, !tbaa !26
  br label %gz_reset.exit

bb.ak:                                            ; preds = %bb.ai, %.thread
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i32 0, ptr %i.bk, align 8, !tbaa !27
  br label %gz_reset.exit

gz_reset.exit:                                    ; preds = %bb.aj, %bb.ak
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 0, ptr %i.bl, align 4, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 0, ptr %i.bm, align 8, !tbaa !29
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.bn, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 0, ptr %i.bo, align 8, !tbaa !31
  br label %bb.al

bb.al:                                            ; preds = %bb.b, %bb.a, %gz_reset.exit, %bb.ag, %bb.z, %bb.x, %bb.u, %._crit_edge.thread, %bb.i
  %.080 = phi ptr [ null, %bb.x ], [ null, %bb.a ], [ null, %bb.i ], [ null, %._crit_edge.thread ], [ null, %bb.u ], [ null, %bb.z ], [ null, %bb.ag ], [ %i.c, %gz_reset.exit ], [ null, %bb.b ]
  ret ptr %.080
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @gzopen64(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @gz_open(ptr noundef %0, i32 noundef -1, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @gzdopen(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, -1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(19) ptr @malloc(i64 noundef 19) #13 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 19, ptr noundef nonnull @.str, i32 noundef %0) #14 ; 0 uses
  %i.e = tail call fastcc ptr @gz_open(ptr noundef nonnull %i.b, i32 noundef %0, ptr noundef %1)
  tail call void @free(ptr noundef nonnull %i.b) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -1, 1) i32 @gzbuffer(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  switch i32 %i.c, label %bb.e [
    i32 7247, label %bb.c
    i32 31153, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %.not14 = icmp ne i32 %i.e, 0
  %i.f = icmp slt i32 %1, 0
  %or.cond = or i1 %i.f, %.not14
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %1, i32 8)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.store.select, ptr %i.g, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @gzrewind(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq i32 %i.c, 7247
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  switch i32 %i.e, label %bb.l [
    i32 0, label %bb.d
    i32 -5, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38
  %i.j = tail call i64 @lseek64(i32 noundef %i.g, i64 noundef %i.i, i32 noundef 0) #14
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %0, align 8, !tbaa !22
  %i.l = load i32, ptr %i.b, align 8, !tbaa !19
  %i.m = icmp eq i32 %i.l, 7247
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.o, align 4, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 -1, ptr %i.q, align 4, !tbaa !26
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.r, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.s, align 4, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.t, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %gz_reset.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.d, align 8, !tbaa !17
  %.not25.i.i = icmp eq i32 %i.w, -4
  br i1 %.not25.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.v) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.u, align 8, !tbaa !18
  br label %gz_reset.exit

gz_reset.exit:                                    ; preds = %bb.h, %bb.k
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.x, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.y, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %gz_reset.exit
  %.0 = phi i32 [ 0, %gz_reset.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @gzseek64(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  switch i32 %i.c, label %.thread66 [
    i32 7247, label %bb.c
    i32 31153, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  switch i32 %i.e, label %.thread66 [
    i32 0, label %bb.d
    i32 -5, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %or.cond = icmp ugt i32 %2, 1
  br i1 %or.cond, label %.thread66, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30
  %i.i = sub nsw i64 %1, %i.h
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24
  %.not64 = icmp eq i32 %i.k, 0
  br i1 %.not64, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
end_hunk_0
