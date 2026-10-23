Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ipsocket?download=true
inline.NumInlined: 107
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon.15 }
%union.anon.15 = type { [4 x i32] }
%struct.fast_fallback_inetsock_arg = type { i64, i64, %struct.anon, %struct.anon, i32, i64, i64, i64, ptr, ptr, ptr, i32, i32, [2 x ptr], ptr, %struct.rb_fdset_t, %struct.rb_fdset_t, i32, i32, ptr, i64 }
%struct.anon = type { i64, i64, ptr }
%struct.rb_fdset_t = type { i32, ptr }
%struct.inetsock_arg = type { i64, i64, %struct.anon.0, %struct.anon.0, i32, i64, i64, i64 }
%struct.anon.0 = type { i64, i64, ptr }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%union.union_sockaddr = type { %struct.sockaddr_storage, [1920 x i8] }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }

@.str = private unnamed_addr constant [32 x i8] c"user specified timeout for %li\0B\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"user specified timeout for %li\0B port %li\0B\00", align 1
@rb_eIOTimeoutError = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%li\0B\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [73 x i8] c"Cannot specify open_timeout along with connect_timeout or resolv_timeout\00", align 1
@id_numeric = internal unnamed_addr global i64 0, align 8
@id_hostname = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"invalid reverse_lookup flag: :%s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"IPSocket\00", align 1
@rb_cBasicSocket = external local_unnamed_addr global i64, align 8
@rb_cIPSocket = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"peeraddr\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"getaddress\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"getpeereid\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"pipe(2)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"fcntl(2)\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"calloc(3)\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@init_fast_fallback_inetsock_internal.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@init_fast_fallback_inetsock_internal.rbimpl_id.21 = internal unnamed_addr global i64 0, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"getaddrinfo(3)\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"socket(2)\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"setsockopt(2)\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"bind(2)\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"connect(2)\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"select(2)\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"malloc(3)\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"clock_gettime(2)\00", align 1
@rb_mProcess = external local_unnamed_addr global i64, align 8
@current_clocktime.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.32 = private unnamed_addr constant [16 x i8] c"CLOCK_MONOTONIC\00", align 1
@current_clocktime.rbimpl_id.33 = internal unnamed_addr global i64 0, align 8
@.str.34 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"realloc(3)\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"listen(2)\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"getsockname(2)\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"getpeername(2)\00", align 1

; Function Attrs: noreturn nounwind uwtable
define void @rsock_raise_user_specified_timeout(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = tail call i64 @rsock_addrinfo_new(ptr noundef nonnull %i.b, i32 noundef %i.d, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 4, i64 noundef 4) #16
  %i.f = tail call i64 @rsock_addrinfo_inspect_sockaddr(i64 noundef %i.e) #16
  %i.g = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str, i64 noundef %i.f) #16
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.1, i64 noundef %1, i64 noundef %2) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %i.i = load i64, ptr @rb_eIOTimeoutError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.2, i64 noundef %.0) #17
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @rsock_addrinfo_new(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rsock_addrinfo_inspect_sockaddr(i64 noundef) local_unnamed_addr #2

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @rsock_init_inetsock(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10) local_unnamed_addr #4 {
bb.a:
  %11 = alloca %struct.in_addr, align 4           ; 4 uses
  %12 = alloca %struct.in6_addr, align 4          ; 4 uses
  %i.a = alloca [1025 x i8], align 16             ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %13 = alloca %struct.fast_fallback_inetsock_arg, align 8 ; 23 uses
  %14 = alloca %struct.inetsock_arg, align 8      ; 15 uses
  %i.d = icmp eq i64 %8, 4                        ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %6, 4
  %i.f = icmp eq i64 %7, 4
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr @rb_eArgError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.3) #17
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp eq i32 %5, 0
  %i.i = and i64 %9, -5
  %i.j = icmp ne i64 %i.i, 0
  %or.cond76 = and i1 %i.h, %i.j
  br i1 %or.cond76, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 0, ptr %i.c, align 4, !tbaa !10
  %i.k = call ptr @raddrinfo_host_str(i64 noundef %1, ptr noundef nonnull %i.a, i64 noundef 1025, ptr noundef nonnull %i.c) #16 ; 4 uses
  %i.l = call ptr @raddrinfo_port_str(i64 noundef %2, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %i.c) #16
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %is_specified_ip_address.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.m = call i32 @inet_pton(i32 noundef 10, ptr noundef nonnull %i.k, ptr noundef nonnull %12) #16
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %is_specified_ip_address.exit.thread71, label %is_specified_ip_address.exit

is_specified_ip_address.exit.thread71:            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %.thread

is_specified_ip_address.exit:                     ; preds = %bb.f
  %i.o = call i32 @inet_pton(i32 noundef 2, ptr noundef nonnull %i.k, ptr noundef nonnull %11) #16
  %.not = icmp eq i32 %i.o, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br i1 %.not, label %.thread, label %is_specified_ip_address.exit.thread

is_specified_ip_address.exit.thread:              ; preds = %bb.e, %is_specified_ip_address.exit
  %i.p = icmp eq i64 %3, 4
  %i.q = icmp eq i64 %4, 4
  %or.cond77 = and i1 %i.p, %i.q
  br i1 %or.cond77, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %is_specified_ip_address.exit.thread
  %i.r = select i1 %i.d, i64 %6, i64 %8
  %i.s = call ptr @rsock_addrinfo(i64 noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 1, i32 noundef 0, i64 noundef %i.r) #16 ; 3 uses
  %.06078 = load ptr, ptr %i.s, align 8, !tbaa !20 ; 2 uses
  %.not6579 = icmp eq ptr %.06078, null
  br i1 %.not6579, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.k
  %i.t = phi i32 [ %18, %bb.k ], [ 0, %bb.g ]     ; 2 uses
  %.06081 = phi ptr [ %.060, %bb.k ], [ %.06078, %bb.g ] ; 3 uses
  %.06180 = phi i32 [ %.2, %bb.k ], [ 0, %bb.g ]  ; 2 uses
  %i.u = phi i32 [ %16, %bb.k ], [ 0, %bb.g ]     ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.06081, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21
  %i.y = icmp eq i32 %i.x, 10                     ; 2 uses
  %spec.select = select i1 %i.y, i32 10, i32 0
  %15 = zext i1 %i.y to i32
  %spec.select87 = add nsw i32 %.06180, %15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %16 = phi i32 [ %i.u, %.lr.ph ], [ %spec.select, %bb.h ] ; 2 uses
  %.162 = phi i32 [ %.06180, %.lr.ph ], [ %spec.select87, %bb.h ] ; 2 uses
  %i.z = icmp eq i32 %i.t, 0
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.06081, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21
  %i.ac = icmp eq i32 %i.ab, 2                    ; 2 uses
  %spec.select88 = select i1 %i.ac, i32 2, i32 0
  %17 = zext i1 %i.ac to i32
  %spec.select89 = add nsw i32 %.162, %17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %18 = phi i32 [ %i.t, %bb.i ], [ %spec.select88, %bb.j ] ; 2 uses
  %.2 = phi i32 [ %.162, %bb.i ], [ %spec.select89, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.06081, i64 40
  %.060 = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 2 uses
  %.not65 = icmp eq ptr %.060, null
  br i1 %.not65, label %.loopexit, label %.lr.ph, !llvm.loop !78

.loopexit:                                        ; preds = %bb.k, %bb.g, %is_specified_ip_address.exit.thread
  %.sroa.7.1 = phi i32 [ 2, %is_specified_ip_address.exit.thread ], [ 0, %bb.g ], [ %18, %bb.k ] ; 2 uses
  %.sroa.0.0 = phi i32 [ 10, %is_specified_ip_address.exit.thread ], [ 0, %bb.g ], [ %16, %bb.k ] ; 2 uses
  %.3 = phi i32 [ 2, %is_specified_ip_address.exit.thread ], [ 0, %bb.g ], [ %.2, %bb.k ] ; 2 uses
  %.059 = phi ptr [ null, %is_specified_ip_address.exit.thread ], [ %i.s, %bb.g ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i8 0, i64 144, i1 false)
  store i64 %0, ptr %13, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 4, ptr %i.af, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %1, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 %2, ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr null, ptr %i.ai, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %3, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i64 %4, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 56
  store ptr %.059, ptr %i.al, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 72
  store i64 %6, ptr %i.am, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i64 %7, ptr %i.an, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i64 %8, ptr %i.ao, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 96
  store ptr %i.k, ptr %i.ap, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr %i.l, ptr %i.aq, align 8, !tbaa !41
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 124
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !42
  %i.at = zext i32 %.3 to i64
  %i.au = call ptr @llvm.stacksave.p0()
  %i.av = alloca i32, i64 %i.at, align 16         ; 3 uses
  %.not66 = icmp eq i32 %.sroa.0.0, 0
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  store i32 %.sroa.0.0, ptr %i.av, align 16, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.l
  %.1 = phi i64 [ 1, %bb.l ], [ 0, %.loopexit ]
  %.not66.1 = icmp eq i32 %.sroa.7.1, 0
  br i1 %.not66.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.1
  store i32 %.sroa.7.1, ptr %i.aw, align 4, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 112
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 120
  store i32 %.3, ptr %i.ay, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 200
  store i64 %10, ptr %i.az, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 152
  call void @rb_fd_init(ptr noundef nonnull %i.ba) #16
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 168
  call void @rb_fd_init(ptr noundef nonnull %i.bb) #16
  %i.bc = ptrtoint ptr %13 to i64                 ; 2 uses
  %i.bd = call i64 @rb_ensure(ptr noundef nonnull @init_fast_fallback_inetsock_internal, i64 noundef %i.bc, ptr noundef nonnull @fast_fallback_inetsock_cleanup, i64 noundef %i.bc) #16
  call void @llvm.stackrestore.p0(ptr %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.q

.thread:                                          ; preds = %is_specified_ip_address.exit, %is_specified_ip_address.exit.thread71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store i64 %0, ptr %14, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 4, ptr %i.be, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %1, ptr %i.bf, align 8, !tbaa !49
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %2, ptr %i.bg, align 8, !tbaa !50
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr null, ptr %i.bh, align 8, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %3, ptr %i.bi, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 %4, ptr %i.bj, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr null, ptr %i.bk, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 %5, ptr %i.bl, align 8, !tbaa !55
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i64 %6, ptr %i.bm, align 8, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 %7, ptr %i.bn, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i64 %8, ptr %i.bo, align 8, !tbaa !58
  %i.bp = ptrtoint ptr %14 to i64                 ; 2 uses
  %i.bq = call i64 @rb_ensure(ptr noundef nonnull @init_inetsock_internal, i64 noundef %i.bp, ptr noundef nonnull @inetsock_cleanup, i64 noundef %i.bp) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.158 = phi i64 [ %i.bq, %bb.p ], [ %i.bd, %bb.o ]
  ret i64 %.158
}

declare ptr @raddrinfo_host_str(i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @raddrinfo_port_str(i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @rsock_addrinfo(i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

declare void @rb_fd_init(ptr noundef) local_unnamed_addr #2

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @init_fast_fallback_inetsock_internal(i64 noundef %0) #4 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [2 x i32], align 4                ; 5 uses
  %3 = alloca %struct.timeval, align 8            ; 6 uses
  %4 = alloca %struct.timeval, align 8            ; 9 uses
  %5 = alloca %struct.timeval, align 8            ; 8 uses
  %6 = alloca %struct.timeval, align 8            ; 7 uses
  %7 = alloca %struct.timeval, align 8            ; 9 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = inttoptr i64 %0 to ptr                   ; 48 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45
  %.fr1317 = freeze i64 %i.p                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 7 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !44
  %i.s = zext i32 %i.r to i64
  %i.t = tail call ptr @llvm.stacksave.p0()
  %i.u = alloca i64, i64 %i.s, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 -1, i64 16, i1 false)
  %i.v = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #18 ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  %.0534.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.b, label %allocate_connection_attempt_fds.exit

bb.b:                                             ; preds = %bb.a
  %i.w = tail call ptr @rb_errno_ptr() #16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !10
  tail call void @rb_syserr_fail(i32 noundef %i.x, ptr noundef nonnull @.str.30) #17
  unreachable

allocate_connection_attempt_fds.exit:             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.v, i8 -1, i64 40, i1 false), !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 7 uses
  store ptr %i.v, ptr %i.y, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 188 ; 24 uses
  store i32 0, ptr %i.z, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.aa = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #16
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %current_clocktime_ts.exit

bb.c:                                             ; preds = %allocate_connection_attempt_fds.exit
  %i.ac = call ptr @rb_errno_ptr() #16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  call void @rb_syserr_fail(i32 noundef %i.ad, ptr noundef nonnull @.str.31) #17
end_hunk_0
