Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/www?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"%%%02x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s %s HTTP/1.1\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Host: %s\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Connection: Close\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Content-Type: application/x-www-form-urlencoded\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Content-Length: %s\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"stats - Connected to %s:%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"stats - Sending %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"stats - received: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"STATOK\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"stats - Data received okay\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @connect_host(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.addrinfo, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.fd_set, align 8             ; 5 uses
  %6 = alloca %struct.fd_set, align 8             ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.d, align 8, !tbaa !24
  %i.e = call i32 @getaddrinfo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.preheader75, label %bb.o

.preheader75:                                     ; preds = %bb.a
  %.05479 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 3 uses
  %.not6080 = icmp eq ptr %.05479, null
  br i1 %.not6080, label %.thread.thread, label %.lr.ph

.thread.thread:                                   ; preds = %.preheader75
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !20
  call void @freeaddrinfo(ptr noundef %i.f) #10
  br label %bb.o

.lr.ph:                                           ; preds = %.preheader75
  %.not61 = icmp eq i32 %3, 0                     ; 2 uses
  %i.g = zext i32 %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %.not61, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %8 = phi i32 [ %9, %bb.d ], [ undef, %.lr.ph ]
  %.05482.us = phi ptr [ %.054.us, %bb.d ], [ %.05479, %.lr.ph ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05482.us, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %.05482.us, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %.05482.us, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = call i32 @socket(i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.n) #10 ; 5 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %.05482.us, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.05482.us, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28
  %i.u = call i32 @connect(i32 noundef %i.o, ptr %i.r, i32 noundef %i.t) #10 ; 2 uses
  %.not62.us = icmp eq i32 %i.u, 0
  br i1 %.not62.us, label %.thread69.split.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call i32 @close(i32 noundef %i.o) #10    ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us
  %9 = phi i32 [ %8, %.lr.ph.split.us ], [ %i.u, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05482.us, i64 40
  %.054.us = load ptr, ptr %i.w, align 8, !tbaa !20 ; 2 uses
  %.not60.us = icmp eq ptr %.054.us, null
  br i1 %.not60.us, label %..thread_crit_edge.split.us, label %.lr.ph.split.us

.thread69.split.us:                               ; preds = %bb.b
  store i32 0, ptr %i.b, align 4
  br label %.thread69

..thread_crit_edge.split.us:                      ; preds = %bb.d
  store i32 %9, ptr %i.b, align 4
  br label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.05482 = phi ptr [ %.054, %bb.k ], [ %.05479, %.lr.ph ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05482, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %.05482, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %.05482, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.ad = call i32 @socket(i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.ac) #10 ; 12 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.af = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ad, i32 noundef 3, i32 noundef 0) #10 ; 3 uses
  %i.ag = or i32 %i.af, 2048
  %i.ah = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ad, i32 noundef 4, i32 noundef %i.ag) #10
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.05482, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %.05482, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !28
  %i.an = call i32 @connect(i32 noundef %i.ad, ptr %i.ak, i32 noundef %i.am) #10 ; 2 uses
  store i32 %i.an, ptr %i.b, align 4, !tbaa !29
  %.not62 = icmp eq i32 %i.an, 0
  br i1 %.not62, label %.thread69, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call ptr @__errno_location() #11   ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29
  %.not63 = icmp eq i32 %i.ap, 115
  br i1 %.not63, label %.preheader.preheader, label %.sink.split

.preheader.preheader:                             ; preds = %bb.g
  store i32 0, ptr %i.ao, align 4, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, i8 0, i64 128, i1 false), !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false), !tbaa !10
  %i.aq = and i32 %i.ad, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw i64 1, %i.ar                    ; 4 uses
  %i.at = lshr i32 %i.ad, 6
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.au ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10
  %i.ax = or i64 %i.aw, %i.as
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.au ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !10
  %i.ba = or i64 %i.az, %i.as
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !10
  store i64 %i.g, ptr %7, align 8, !tbaa !12
  store i64 0, ptr %i.h, align 8, !tbaa !13
  %i.bb = add nuw nsw i32 %i.ad, 1
  %i.bc = call i32 @select(i32 noundef %i.bb, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %7) #10
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %.preheader.preheader
  %i.be = load i64, ptr %i.av, align 8, !tbaa !10
  %i.bf = and i64 %i.be, %i.as
  %.not64 = icmp eq i64 %i.bf, 0
  br i1 %.not64, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !10
  %i.bh = and i64 %i.bg, %i.as
  %.not65 = icmp eq i64 %i.bh, 0
  br i1 %.not65, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 4, ptr %i.c, align 4, !tbaa !29
  %i.bi = call i32 @getsockopt(i32 noundef %i.ad, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.sink.split, label %.thread69

.sink.split:                                      ; preds = %bb.i, %bb.j, %.preheader.preheader, %bb.g, %bb.e
  %i.bk = call i32 @close(i32 noundef %i.ad) #10  ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %.lr.ph.split
  %i.bl = getelementptr inbounds nuw i8, ptr %.05482, i64 40
  %.054 = load ptr, ptr %i.bl, align 8, !tbaa !20 ; 2 uses
  %.not60 = icmp eq ptr %.054, null
  br i1 %.not60, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %bb.k, %..thread_crit_edge.split.us
  %.055.lcssa = phi i32 [ %i.o, %..thread_crit_edge.split.us ], [ %i.ad, %bb.k ] ; 2 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !20
  call void @freeaddrinfo(ptr noundef %i.bm) #10
  %i.bn = icmp sgt i32 %.055.lcssa, -1
  br i1 %i.bn, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.thread
  %i.bo = call i32 @close(i32 noundef %.055.lcssa) #10 ; 0 uses
  br label %bb.o

.thread69:                                        ; preds = %bb.f, %bb.j, %.thread69.split.us
  %.us-phi = phi i32 [ 0, %.thread69.split.us ], [ %i.af, %bb.j ], [ %i.af, %bb.f ]
  %.us-phi83 = phi i32 [ %i.o, %.thread69.split.us ], [ %i.ad, %bb.j ], [ %i.ad, %bb.f ] ; 4 uses
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !20
  call void @freeaddrinfo(ptr noundef %i.bp) #10
  br i1 %.not61, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread69
  %i.bq = call i32 (i32, i32, ...) @fcntl(i32 noundef %.us-phi83, i32 noundef 4, i32 noundef %.us-phi) #10
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = call i32 @close(i32 noundef %.us-phi83) #10 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.thread.thread, %.thread69, %bb.m, %.thread, %bb.l, %bb.a, %bb.n
  %.052 = phi i32 [ -1, %bb.a ], [ -1, %bb.n ], [ -1, %.thread ], [ -1, %bb.l ], [ %.us-phi83, %bb.m ], [ %.us-phi83, %.thread69 ], [ -1, %.thread.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.052
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare i32 @connect(i32 noundef, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @encoded_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14      ; 2 uses
  %.not8 = icmp eq i8 %i.a, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #11
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.d = phi i8 [ %i.a, %.lr.ph ], [ %i.l, %bb.b ]
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ]
  %.059 = phi ptr [ %0, %.lr.ph ], [ %i.k, %bb.b ]
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18
  %i.h = and i16 %i.g, 8
  %.not7 = icmp eq i16 %i.h, 0
  %i.i = select i1 %.not7, i64 3, i64 1
  %i.j = add i64 %i.i, %.010                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.059, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14    ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %bb.b ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @encode_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14      ; 2 uses
  %.not8.i = icmp eq i8 %i.a, 0
  br i1 %.not8.i, label %encoded_size.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #11       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.d = phi i8 [ %i.a, %.lr.ph.i ], [ %i.l, %bb.b ]
  %.010.i = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %bb.b ]
  %.059.i = phi ptr [ %0, %.lr.ph.i ], [ %i.k, %bb.b ]
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18
  %i.h = and i16 %i.g, 8
  %.not7.i = icmp eq i16 %i.h, 0
  %i.i = select i1 %.not7.i, i64 3, i64 1
  %i.j = add i64 %i.i, %.010.i                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.059.i, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14    ; 2 uses
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %encoded_size.exit, label %bb.b

encoded_size.exit:                                ; preds = %bb.b
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %encoded_size.exit.thread, label %bb.c

bb.c:                                             ; preds = %encoded_size.exit
  %i.n = add i64 %i.j, 1
  %i.o = tail call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.n) #10 ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %encoded_size.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.p = load i8, ptr %0, align 1, !tbaa !14      ; 2 uses
  %.not2427 = icmp eq i8 %i.p, 0
  br i1 %.not2427, label %encoded_size.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.q = phi i8 [ %i.ad, %bb.f ], [ %i.p, %.preheader ] ; 3 uses
  %.029 = phi i64 [ %.1, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %.01928 = phi i64 [ %i.ab, %bb.f ], [ 0, %.preheader ]
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.s = sext i8 %i.q to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !18
  %i.v = and i16 %i.u, 8
  %.not25 = icmp eq i16 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %.029 ; 2 uses
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = add i64 %.029, 1
  store i8 %i.q, ptr %i.w, align 1, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.y = sext i8 %i.q to i32
  %i.z = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.y) #10 ; 0 uses
  %i.aa = add i64 %.029, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi i64 [ %i.x, %bb.d ], [ %i.aa, %bb.e ]
  %i.ab = add i64 %.01928, 1                      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14  ; 2 uses
  %.not24 = icmp eq i8 %i.ad, 0
  br i1 %.not24, label %encoded_size.exit.thread, label %.lr.ph

encoded_size.exit.thread:                         ; preds = %bb.f, %.preheader, %bb.a, %bb.c, %encoded_size.exit
  %.020 = phi ptr [ null, %encoded_size.exit ], [ null, %bb.c ], [ null, %bb.a ], [ %i.o, %.preheader ], [ %i.o, %bb.f ]
  ret ptr %.020
}

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @submit_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %6 = alloca %struct.fd_set, align 8             ; 7 uses
  %7 = alloca %struct.timeval, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.1) #12
  %.not103 = icmp eq i32 %i.b, 0
  br i1 %.not103, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.2) #12
  %.not103.1 = icmp eq i32 %i.c, 0
  br i1 %.not103.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.3) #12
  %.not103.2 = icmp eq i32 %i.d, 0
  br i1 %.not103.2, label %bb.d, label %.thread120

end_hunk_0
