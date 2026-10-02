Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_filter_rpm?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.archive_read_filter_bidder_vtable = type { ptr, ptr, ptr }
%struct.archive_read_filter_vtable = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"rpm\00", align 1
@rpm_bidder_vtable = internal constant %struct.archive_read_filter_bidder_vtable { ptr @rpm_bidder_bid, ptr @rpm_bidder_init, ptr null }, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Can't allocate data for rpm\00", align 1
@rpm_reader_vtable = internal constant %struct.archive_read_filter_vtable { ptr @rpm_filter_read, ptr @rpm_filter_close, ptr null }, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Unrecognized rpm header\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @archive_read_support_compression_rpm(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @__archive_read_register_bidder(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @rpm_bidder_vtable) #8
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @archive_read_support_filter_rpm(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @__archive_read_register_bidder(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @rpm_bidder_vtable) #8
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__archive_read_register_bidder(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 57) i32 @rpm_bidder_bid(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call ptr @__archive_read_filter_ahead(ptr noundef %1, i64 noundef 8, ptr noundef nonnull %i.a) #8 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 1
  %i.e = icmp ne i32 %i.d, -605115411
  %i.f = zext i1 %i.e to i32
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9
  %.off = add i8 %i.h, -3
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %.not18 = icmp eq i8 %i.j, 0
  br i1 %.not18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %switch21 = icmp ult i8 %i.l, 2
  %spec.select = select i1 %switch21, i32 56, i32 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -30, 1) i32 @rpm_bidder_init(ptr nofree noundef captures(none) initializes((48, 60)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 8, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str, ptr %i.b, align 8, !tbaa !21
  %i.c = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #9 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %i.f, i32 noundef 12, ptr noundef nonnull @.str.2) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @rpm_reader_vtable, ptr %i.h, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -30, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare ptr @__archive_read_filter_ahead(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @archive_set_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @rpm_filter_read(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 21 uses
  store ptr null, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 27
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 35
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 39
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 38
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 37
  br label %bb.b

bb.b:                                             ; preds = %bb.w, %bb.a
  %.085 = phi ptr [ null, %bb.a ], [ %.489, %bb.w ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %.3, %bb.w ]      ; 10 uses
  %i.o = icmp eq ptr %.085, null
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.q = call ptr @__archive_read_filter_ahead(ptr noundef %i.p, i64 noundef 1, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.a, align 8, !tbaa !26
  %i.t = icmp slt i64 %i.s, 0
  %spec.select = select i1 %i.t, i64 -30, i64 0
  br label %.thread

bb.e:                                             ; preds = %bb.c, %bb.b
  %.186 = phi ptr [ %i.q, %bb.c ], [ %.085, %bb.b ] ; 9 uses
  %i.u = load i32, ptr %2, align 8, !tbaa !29
  switch i32 %i.u, label %..loopexit_crit_edge [
    i32 0, label %bb.f
    i32 1, label %bb.i
    i32 2, label %bb.r
    i32 3, label %.preheader
    i32 4, label %bb.v
  ]

..loopexit_crit_edge:                             ; preds = %bb.e
  %.pre = load i64, ptr %i.a, align 8, !tbaa !26
  br label %.loopexit

.preheader:                                       ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !tbaa !26   ; 5 uses
  %i.w = icmp slt i64 %.0, %i.v
  br i1 %i.w, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !26   ; 4 uses
  %i.z = add nsw i64 %i.y, %i.x
  %i.aa = icmp slt i64 %i.z, 96
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %i.y, %.0
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ac = sub nsw i64 96, %i.x                    ; 2 uses
  %i.ad = add i64 %i.ac, %.0
  %i.ae = getelementptr inbounds nuw i8, ptr %.186, i64 %i.ac
  store i32 1, ptr %2, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.f, align 4, !tbaa !31
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.af = load i64, ptr %3, align 8, !tbaa !32    ; 3 uses
  %i.ag = sub i64 16, %i.af
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !26  ; 4 uses
  %i.ai = sub nsw i64 %i.ah, %.0
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ai) ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 1 %.186, i64 %i.aj, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.186, i64 %i.aj ; 3 uses
  %i.am = add i64 %i.aj, %.0                      ; 3 uses
  %i.an = add i64 %i.aj, %i.af                    ; 2 uses
  store i64 %i.an, ptr %3, align 8, !tbaa !32
  %i.ao = icmp eq i64 %i.an, 16
  br i1 %i.ao, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %5, align 8, !tbaa !9
  %.not93 = icmp eq i8 %i.ap, -114
  br i1 %.not93, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %6, align 1, !tbaa !9
  %.not94 = icmp eq i8 %i.aq, -83
  br i1 %.not94, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ar = load i8, ptr %7, align 2, !tbaa !9
  %.not95 = icmp eq i8 %i.ar, -24
  br i1 %.not95, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = load i8, ptr %i.e, align 1, !tbaa !9
  %.not96 = icmp eq i8 %i.as, 1
  br i1 %.not96, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.at = load i32, ptr %i.f, align 4, !tbaa !31
  %.not97 = icmp eq i32 %i.at, 0
  br i1 %.not97, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %i.av, i32 noundef 84, ptr noundef nonnull @.str.3) #8
  br label %.thread

bb.p:                                             ; preds = %bb.n
  store i32 4, ptr %2, align 8, !tbaa !29
  store ptr %5, ptr %1, align 8, !tbaa !25
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  %8 = load i8, ptr %i.h, align 1, !tbaa !9
  %9 = zext i8 %8 to i64
  %10 = load i8, ptr %i.i, align 2, !tbaa !9
  %11 = zext i8 %10 to i64
  %12 = load i8, ptr %i.j, align 1, !tbaa !9
  %13 = zext i8 %12 to i64
  %14 = load i8, ptr %i.g, align 8, !tbaa !9
  %15 = zext i8 %14 to i64
  %16 = load i8, ptr %i.l, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = load i8, ptr %i.m, align 2, !tbaa !9
  %i.aw = zext i8 %18 to i64
  %19 = load i8, ptr %i.n, align 1, !tbaa !9
  %20 = zext i8 %19 to i64
  %21 = load i8, ptr %i.k, align 4, !tbaa !9
  %i.ax = zext i8 %21 to i64
  %22 = shl nuw nsw i64 %i.ax, 24
  %23 = shl nuw nsw i64 %20, 16
  %24 = shl nuw nsw i64 %i.aw, 8
  %25 = or disjoint i64 %24, %17
  %26 = or disjoint i64 %25, %23
  %27 = or disjoint i64 %26, %22
  %28 = shl nuw nsw i64 %15, 28
  %29 = shl nuw nsw i64 %13, 20
  %30 = shl nuw nsw i64 %11, 12
  %i.ay = shl nuw nsw i64 %9, 4
  %31 = or disjoint i64 %30, %i.ay
  %32 = or disjoint i64 %31, %29
  %33 = or disjoint i64 %32, %28
  %i.az = add nuw nsw i64 %33, 16
  %i.ba = add nuw nsw i64 %i.az, %27
  store i64 %i.ba, ptr %4, align 8, !tbaa !33
  store i32 2, ptr %2, align 8, !tbaa !29
  store i32 0, ptr %i.f, align 4, !tbaa !31
  br label %.loopexit

bb.r:                                             ; preds = %bb.e
  %i.bb = load i64, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.bc = load i64, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = load i64, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  %i.bf = sub nsw i64 %i.be, %.0
  %i.bg = call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf) ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.186, i64 %i.bg ; 2 uses
  %i.bi = add i64 %i.bg, %.0                      ; 2 uses
  %i.bj = add i64 %i.bg, %i.bc                    ; 2 uses
  store i64 %i.bj, ptr %3, align 8, !tbaa !32
  %i.bk = icmp eq i64 %i.bj, %i.bb
  br i1 %i.bk, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  store i32 3, ptr %2, align 8, !tbaa !29
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.u
  %.1105 = phi i64 [ %i.bn, %bb.u ], [ %.0, %.preheader ] ; 2 uses
  %.287104 = phi ptr [ %i.bm, %bb.u ], [ %.186, %.preheader ] ; 3 uses
  %i.bl = load i8, ptr %.287104, align 1, !tbaa !9
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  store i32 1, ptr %2, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.287104, i64 1
  %i.bn = add i64 %.1105, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.v
  br i1 %exitcond.not, label %.loopexit.thread, label %.lr.ph, !llvm.loop !23

bb.v:                                             ; preds = %bb.e
  store ptr %.186, ptr %1, align 8, !tbaa !25
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  br label %.loopexit.thread

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader, %bb.t, %bb.r, %bb.s, %bb.i, %bb.q, %bb.g, %bb.h, %bb.p
  %i.bp = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.ah, %bb.p ], [ %i.ah, %bb.q ], [ %i.ah, %bb.i ], [ %i.be, %bb.s ], [ %i.be, %bb.r ], [ %i.v, %bb.t ], [ %i.v, %.preheader ] ; 3 uses
  %.388 = phi ptr [ %.186, %..loopexit_crit_edge ], [ %.186, %bb.g ], [ %i.ae, %bb.h ], [ %i.al, %bb.p ], [ %i.al, %bb.q ], [ %i.al, %bb.i ], [ %i.bh, %bb.s ], [ %i.bh, %bb.r ], [ %.287104, %bb.t ], [ %.186, %.preheader ]
  %.183 = phi i64 [ 0, %..loopexit_crit_edge ], [ 0, %bb.g ], [ 0, %bb.h ], [ 16, %bb.p ], [ 0, %bb.q ], [ 0, %bb.i ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %.preheader ] ; 2 uses
  %.2 = phi i64 [ %.0, %..loopexit_crit_edge ], [ %i.ab, %bb.g ], [ %i.ad, %bb.h ], [ %i.am, %bb.p ], [ %i.am, %bb.q ], [ %i.am, %bb.i ], [ %i.bi, %bb.s ], [ %i.bi, %bb.r ], [ %.1105, %bb.t ], [ %.0, %.preheader ] ; 2 uses
  %i.bq = icmp eq i64 %.2, %i.bp
  br i1 %i.bq, label %.loopexit.thread, label %bb.w

.loopexit.thread:                                 ; preds = %bb.u, %bb.v, %.loopexit
  %.183120 = phi i64 [ %.183, %.loopexit ], [ %i.bo, %bb.v ], [ 0, %bb.u ]
  %i.br = phi i64 [ %i.bp, %.loopexit ], [ %i.bo, %bb.v ], [ %i.v, %bb.u ] ; 2 uses
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !30
  %i.bt = add nsw i64 %i.bs, %i.br
  store i64 %i.bt, ptr %i.c, align 8, !tbaa !30
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.bv = call i64 @__archive_read_filter_consume(ptr noundef %i.bu, i64 noundef %i.br) #8 ; 0 uses
  %.pre110 = load i64, ptr %i.a, align 8
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %.loopexit.thread
  %.183119 = phi i64 [ %.183120, %.loopexit.thread ], [ %.183, %.loopexit ] ; 3 uses
  %i.bw = phi i64 [ %.pre110, %.loopexit.thread ], [ %i.bp, %.loopexit ]
  %.489 = phi ptr [ null, %.loopexit.thread ], [ %.388, %.loopexit ] ; 2 uses
  %.3 = phi i64 [ 0, %.loopexit.thread ], [ %.2, %.loopexit ] ; 4 uses
  %i.bx = icmp eq i64 %.183119, 0
  %i.by = icmp sgt i64 %i.bw, 0
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.b, label %bb.x, !llvm.loop !24

bb.x:                                             ; preds = %bb.w
  %i.ca = icmp sgt i64 %.3, 0
  %i.cb = icmp ne ptr %.489, null
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !30
  %i.cd = add nsw i64 %i.cc, %.3
  store i64 %i.cd, ptr %i.c, align 8, !tbaa !30
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.cf = call i64 @__archive_read_filter_consume(ptr noundef %i.ce, i64 noundef %.3) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.x, %bb.y, %bb.o
  %.090 = phi i64 [ -30, %bb.o ], [ %spec.select, %bb.d ], [ %.183119, %bb.y ], [ %.183119, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.090
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal noundef i32 @rpm_filter_close(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.b) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @__archive_read_filter_consume(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS26archive_read_filter_bidder", !11, i64 0}
!13 = !{!"p1 _ZTS19archive_read_filter", !11, i64 0}
!14 = !{!"p1 _ZTS12archive_read", !11, i64 0}
!15 = !{!"p1 _ZTS26archive_read_filter_vtable", !11, i64 0}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"archive_read_filter", !10, i64 0, !12, i64 8, !13, i64 16, !14, i64 24, !15, i64 32, !11, i64 40, !16, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !16, i64 72, !10, i64 80, !16, i64 88, !10, i64 96, !11, i64 104, !10, i64 112, !16, i64 120, !10, i64 128, !5, i64 136, !5, i64 137, !5, i64 138}
!18 = !{!17, !14, i64 24}
!19 = !{!17, !11, i64 40}
!20 = !{!17, !6, i64 56}
!21 = !{!17, !16, i64 48}
!22 = !{!17, !15, i64 32}
!23 = distinct !{!23, !34}
!24 = distinct !{!24, !34}
!25 = !{!11, !11, i64 0}
!26 = !{!10, !10, i64 0}
!27 = !{!17, !13, i64 16}
!28 = !{!"rpm", !10, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !6, i64 40, !6, i64 44}
!29 = !{!28, !6, i64 40}
!30 = !{!28, !10, i64 0}
!31 = !{!28, !6, i64 44}
!32 = !{!28, !10, i64 8}
!33 = !{!28, !10, i64 16}
!34 = !{!"llvm.loop.mustprogress"}
end_hunk_0
