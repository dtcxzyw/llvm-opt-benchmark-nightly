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
  %i.t = phi i32 [ %i.ag, %bb.k ], [ 0, %bb.g ]   ; 2 uses
  %.06081 = phi ptr [ %.060, %bb.k ], [ %.06078, %bb.g ] ; 3 uses
  %.06180 = phi i32 [ %.2, %bb.k ], [ 0, %bb.g ]  ; 2 uses
  %i.u = phi i32 [ %i.aa, %bb.k ], [ 0, %bb.g ]   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.06081, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21
  %i.y = icmp eq i32 %i.x, 10                     ; 2 uses
  %spec.select = select i1 %i.y, i32 10, i32 0
  %i.z = zext i1 %i.y to i32
  %spec.select87 = add nsw i32 %.06180, %i.z
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %i.aa = phi i32 [ %i.u, %.lr.ph ], [ %spec.select, %bb.h ] ; 2 uses
  %.162 = phi i32 [ %.06180, %.lr.ph ], [ %spec.select87, %bb.h ] ; 2 uses
  %i.ab = icmp eq i32 %i.t, 0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.06081, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21
  %i.ae = icmp eq i32 %i.ad, 2                    ; 2 uses
  %spec.select88 = select i1 %i.ae, i32 2, i32 0
  %i.af = zext i1 %i.ae to i32
  %spec.select89 = add nsw i32 %.162, %i.af
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = phi i32 [ %i.t, %bb.i ], [ %spec.select88, %bb.j ] ; 2 uses
  %.2 = phi i32 [ %.162, %bb.i ], [ %spec.select89, %bb.j ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.06081, i64 40
  %.060 = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %.not65 = icmp eq ptr %.060, null
  br i1 %.not65, label %.loopexit, label %.lr.ph, !llvm.loop !78

.loopexit:                                        ; preds = %bb.k, %bb.g, %is_specified_ip_address.exit.thread
  %.sroa.7.1 = phi i32 [ 2, %is_specified_ip_address.exit.thread ], [ 0, %bb.g ], [ %i.ag, %bb.k ] ; 2 uses
  %.sroa.0.0 = phi i32 [ 10, %is_specified_ip_address.exit.thread ], [ 0, %bb.g ], [ %i.aa, %bb.k ] ; 2 uses
  %.3 = phi i32 [ 2, %is_specified_ip_address.exit.thread ], [ 0, %bb.g ], [ %.2, %bb.k ] ; 2 uses
  %.059 = phi ptr [ null, %is_specified_ip_address.exit.thread ], [ %i.s, %bb.g ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, i8 0, i64 144, i1 false)
  store i64 %0, ptr %13, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 4, ptr %i.aj, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %1, ptr %i.ak, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 %2, ptr %i.al, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr null, ptr %i.am, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %3, ptr %i.an, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i64 %4, ptr %i.ao, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 56
  store ptr %.059, ptr %i.ap, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 72
  store i64 %6, ptr %i.aq, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i64 %7, ptr %i.ar, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i64 %8, ptr %i.as, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 96
  store ptr %i.k, ptr %i.at, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr %i.l, ptr %i.au, align 8, !tbaa !41
  %i.av = load i32, ptr %i.c, align 4, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 124
end_hunk_0
begin_hunk_1_@init_fast_fallback_inetsock_internal:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.du, i8 0, i64 32, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.ds, ptr %i.dv, align 4, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 1, ptr %i.dw, align 8, !tbaa !68
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 6, ptr %i.dx, align 4, !tbaa !69
  store i32 %i.dt, ptr %i.dp, align 16, !tbaa !89
  %i.dy = load ptr, ptr %i.dl, align 8, !tbaa !66
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 16 dereferenceable(48) %i.dp, i64 48, i1 false), !tbaa.struct !91
  %i.ea = load ptr, ptr %i.dl, align 8, !tbaa !66 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  store ptr null, ptr %i.eb, align 8, !tbaa !70
  %i.ec = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !10
  store i32 %i.ee, ptr %i.ea, align 8, !tbaa !92
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 2, ptr %i.ef, align 8, !tbaa !71
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  store i32 0, ptr %i.eg, align 8, !tbaa !93
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  store i64 0, ptr %i.eh, align 8, !tbaa !94
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  store i32 0, ptr %i.ei, align 8, !tbaa !95
  br i1 %.not1318, label %switch.early.test, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

switch.early.test:                                ; preds = %bb.w
  switch i64 %.fr1317, label %rbimpl_RB_TYPE_P_fastpath.exit [
    i64 4, label %rbimpl_RB_TYPE_P_fastpath.exit.thread
    i64 0, label %rbimpl_RB_TYPE_P_fastpath.exit.thread
  ]

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %switch.early.test
  %i.ej = load i64, ptr %i.df, align 8, !tbaa !73
  %i.ek = and i64 %i.ej, 31
  %i.el = icmp eq i64 %i.ek, 8
  br i1 %i.el, label %bb.x, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.x:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.em = load i32, ptr %i.ed, align 4, !tbaa !10
  %i.en = icmp eq i32 %i.em, 10
  %i.eo = select i1 %i.en, ptr @.str.17, ptr @.str.18 ; 2 uses
  %.pr.i = load i64, ptr @init_fast_fallback_inetsock_internal.rbimpl_id, align 8, !tbaa !19 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.i
  %i.ep = call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 5) #16 ; 3 uses
  store i64 %i.ep, ptr @init_fast_fallback_inetsock_internal.rbimpl_id, align 8, !tbaa !19
  %.not.i632 = icmp eq i64 %i.ep, 0
  br i1 %.not.i632, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.x
  %.lcssa.i = phi i64 [ %.pr.i, %bb.x ], [ %i.ep, %.lr.ph.i ]
  %i.eq = call i64 @rb_id2sym(i64 noundef %.lcssa.i) #16
  %i.er = call i64 @rb_hash_aref(i64 noundef %.fr1317, i64 noundef %i.eq) #16 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4
  br i1 %i.es, label %bb.z, label %bb.y

bb.y:                                             ; preds = %rbimpl_intern_const.exit
  %i.et = call i64 @rb_intern(ptr noundef nonnull %i.eo) #16
  %i.eu = call i64 @rb_id2sym(i64 noundef %i.et) #16
  %i.ev = call i64 @rb_hash_aref(i64 noundef %i.er, i64 noundef %i.eu) #16 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 4
  %i.ex = select i1 %i.ew, i64 0, i64 %i.ev
  %i.ey = load ptr, ptr %i.dl, align 8, !tbaa !66
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  store i64 %i.ex, ptr %i.ez, align 8, !tbaa !94
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %rbimpl_intern_const.exit
  %.pr.i633 = load i64, ptr @init_fast_fallback_inetsock_internal.rbimpl_id.21, align 8, !tbaa !19 ; 2 uses
  %.not4.i634 = icmp eq i64 %.pr.i633, 0
  br i1 %.not4.i634, label %.lr.ph.i636, label %rbimpl_intern_const.exit638

.lr.ph.i636:                                      ; preds = %bb.z, %.lr.ph.i636
  %i.fa = call i64 @rb_intern2(ptr noundef nonnull @.str.22, i64 noundef 5) #16 ; 3 uses
  store i64 %i.fa, ptr @init_fast_fallback_inetsock_internal.rbimpl_id.21, align 8, !tbaa !19
  %.not.i637 = icmp eq i64 %i.fa, 0
  br i1 %.not.i637, label %.lr.ph.i636, label %rbimpl_intern_const.exit638, !llvm.loop !0

rbimpl_intern_const.exit638:                      ; preds = %.lr.ph.i636, %bb.z
  %.lcssa.i635 = phi i64 [ %.pr.i633, %bb.z ], [ %i.fa, %.lr.ph.i636 ]
  %i.fb = call i64 @rb_id2sym(i64 noundef %.lcssa.i635) #16
  %i.fc = call i64 @rb_hash_aref(i64 noundef %.fr1317, i64 noundef %i.fb) #16 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4
  br i1 %i.fd, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %rbimpl_intern_const.exit638
  %i.fe = call i64 @rb_intern(ptr noundef nonnull %i.eo) #16
  %i.ff = call i64 @rb_id2sym(i64 noundef %i.fe) #16
  %i.fg = call i64 @rb_hash_aref(i64 noundef %i.fc, i64 noundef %i.ff) #16 ; 4 uses
  %i.fh = icmp eq i64 %i.fg, 4
  br i1 %i.fh, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = trunc i64 %i.fg to i1
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fj = call i64 @rb_fix2int(i64 noundef %i.fg) #16
  br label %rb_num2int_inline.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fk = call i64 @rb_num2int(i64 noundef %i.fg) #16
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.ac, %bb.ad
  %.0.i639 = phi i64 [ %i.fj, %bb.ac ], [ %i.fk, %bb.ad ]
  %i.fl = trunc i64 %.0.i639 to i32
  %i.fm = load ptr, ptr %i.dl, align 8, !tbaa !66
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  store i32 %i.fl, ptr %i.fn, align 8, !tbaa !95
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %switch.early.test, %switch.early.test, %bb.w, %rbimpl_intern_const.exit638, %rb_num2int_inline.exit, %bb.aa, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.fp = load ptr, ptr %i.dl, align 8, !tbaa !66
  %i.fq = call i32 @raddrinfo_pthread_create(ptr noundef nonnull %i.fo, ptr noundef nonnull @fork_safe_do_fast_fallback_getaddrinfo, ptr noundef %i.fp) #16
  %.not560 = icmp eq i32 %i.fq, 0
  br i1 %.not560, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.24, i32 noundef -3) #17
  unreachable

bb.af:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  call void @llvm.stackrestore.p0(ptr %i.do)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fr = load i32, ptr %i.q, align 8, !tbaa !44  ; 2 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = icmp slt i64 %indvars.iv.next, %i.fs
  br i1 %i.ft, label %bb.w, label %._crit_edge, !llvm.loop !79

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 -1, i64 16, i1 false)
  br label %bb.aj

bb.ah:                                            ; preds = %._crit_edge
  %i.fu = call { i64, i64 } @rb_time_interval(i64 noundef %i.j) #16 ; 2 uses
  %i.fv = extractvalue { i64, i64 } %i.fu, 0
  %i.fw = extractvalue { i64, i64 } %i.fu, 1
  %i.fx = sdiv i64 %.fca.1.load.i, 1000
  %i.fy = add nsw i64 %i.fv, %.fca.0.load.i       ; 2 uses
  %i.fz = add nsw i64 %i.fw, %i.fx                ; 4 uses
  %i.ga = icmp sgt i64 %i.fz, 999999
  br i1 %i.ga, label %bb.ai, label %add_ts_to_tv.exit644

bb.ai:                                            ; preds = %bb.ah
  %i.gb = udiv i64 %i.fz, 1000000
  %i.gc = add nsw i64 %i.gb, %i.fy
  %i.gd = urem i64 %i.fz, 1000000
  br label %add_ts_to_tv.exit644

add_ts_to_tv.exit644:                             ; preds = %bb.ah, %bb.ai
  %.sroa.01.0.i640 = phi i64 [ %i.gc, %bb.ai ], [ %i.fy, %bb.ah ]
  %.sroa.6.0.i641 = phi i64 [ %i.gd, %bb.ai ], [ %i.fz, %bb.ah ]
  store i64 %.sroa.01.0.i640, ptr %6, align 8, !tbaa !19
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.6.0.i641, ptr %.sroa.496.0..sroa_idx, align 8, !tbaa !19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.h, %bb.i, %bb.g, %bb.ag, %add_ts_to_tv.exit644
  %.sroa.75.0 = phi i32 [ 0, %add_ts_to_tv.exit644 ], [ 0, %bb.ag ], [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %bb.h ]
  %.sroa.57.1 = phi i32 [ 0, %add_ts_to_tv.exit644 ], [ 0, %bb.ag ], [ 0, %bb.g ], [ 1, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %.sroa.38.1 = phi ptr [ null, %add_ts_to_tv.exit644 ], [ null, %bb.ag ], [ null, %bb.g ], [ %i.bk, %bb.i ], [ null, %bb.h ]
  %.sroa.0.1 = phi ptr [ null, %add_ts_to_tv.exit644 ], [ null, %bb.ag ], [ null, %bb.g ], [ null, %bb.i ], [ %i.bj, %bb.h ]
  %.0518 = phi ptr [ %6, %add_ts_to_tv.exit644 ], [ %6, %bb.ag ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.h ]
  %.0488 = phi i32 [ %i.bo, %add_ts_to_tv.exit644 ], [ %i.bo, %bb.ag ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.h ] ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.gf = icmp eq i64 %i.l, 4                     ; 2 uses
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not46.i = icmp eq ptr %.0534, null            ; 3 uses
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.f, i64 168 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 4 uses
  %i.gj = add nsw i32 %.0488, 1
  %.fca.1.gep.i691 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %any_addrinfos.exit

any_addrinfos.exit:                               ; preds = %any_addrinfos.exit.backedge, %bb.aj
  %.sroa.75.1 = phi i32 [ %.sroa.75.0, %bb.aj ], [ %.sroa.75.5, %any_addrinfos.exit.backedge ] ; 5 uses
  %.sroa.69.0 = phi i32 [ 0, %bb.aj ], [ %.sroa.69.7, %any_addrinfos.exit.backedge ] ; 4 uses
  %.sroa.57.2 = phi i32 [ %.sroa.57.1, %bb.aj ], [ %.sroa.57.7, %any_addrinfos.exit.backedge ] ; 5 uses
  %.sroa.38.2 = phi ptr [ %.sroa.38.1, %bb.aj ], [ %.sroa.38.11, %any_addrinfos.exit.backedge ] ; 3 uses
  %.sroa.33.0 = phi i32 [ 0, %bb.aj ], [ %.sroa.33.8, %any_addrinfos.exit.backedge ] ; 4 uses
  %.sroa.21.2 = phi i32 [ %.sroa.57.1, %bb.aj ], [ %.sroa.21.8, %any_addrinfos.exit.backedge ] ; 5 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.aj ], [ %.sroa.0.12, %any_addrinfos.exit.backedge ] ; 3 uses
  %.sroa.16.0 = phi i64 [ %.fca.1.load.i, %bb.aj ], [ %.fca.1.load.i692, %any_addrinfos.exit.backedge ] ; 4 uses
  %.sroa.0146.0 = phi i64 [ %.fca.0.load.i, %bb.aj ], [ %.fca.0.load.i689, %any_addrinfos.exit.backedge ] ; 3 uses
  %.0524 = phi ptr [ null, %bb.aj ], [ %.9533, %any_addrinfos.exit.backedge ] ; 2 uses
  %.1519 = phi ptr [ %.0518, %bb.aj ], [ %.5523, %any_addrinfos.exit.backedge ] ; 12 uses
  %.0511 = phi ptr [ null, %bb.aj ], [ %.6517, %any_addrinfos.exit.backedge ] ; 2 uses
  %.0502 = phi ptr [ null, %bb.aj ], [ %.7509, %any_addrinfos.exit.backedge ] ; 7 uses
  %.0497 = phi i32 [ 10, %bb.aj ], [ %.45018581031, %any_addrinfos.exit.backedge ] ; 11 uses
  %.0492 = phi i32 [ 0, %bb.aj ], [ %.44968591025, %any_addrinfos.exit.backedge ] ; 2 uses
  %.0462 = phi ptr [ null, %bb.aj ], [ %.17, %any_addrinfos.exit.backedge ] ; 2 uses
  %.sroa.18.0 = phi i32 [ 0, %bb.aj ], [ %.sroa.18.22, %any_addrinfos.exit.backedge ] ; 2 uses
  %.sroa.0233.0 = phi i32 [ 0, %bb.aj ], [ %.sroa.0233.22, %any_addrinfos.exit.backedge ] ; 2 uses
  %.0455 = phi i32 [ 0, %bb.aj ], [ %.44598631001, %any_addrinfos.exit.backedge ] ; 2 uses
  %.0442 = phi i64 [ %i.h, %bb.aj ], [ %.4864995, %any_addrinfos.exit.backedge ] ; 2 uses
  %.not.i645 = icmp eq ptr %.sroa.0.2, null
  %i.gn = icmp eq ptr %.sroa.38.2, null
  %narrow.not = select i1 %.not.i645, i1 %i.gn, i1 false
  %i.go = icmp ne ptr %.0502, null                ; 4 uses
  %or.cond = select i1 %narrow.not, i1 true, i1 %i.go
  %i.gp = icmp ne ptr %.0511, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.gp
  br i1 %or.cond3, label %.thread841, label %.preheader1113

.preheader1113:                                   ; preds = %any_addrinfos.exit
  %i.gq = icmp ne i32 %.sroa.75.1, 0              ; 5 uses
  br label %any_addrinfos.exit649.thread

any_addrinfos.exit649.thread:                     ; preds = %any_addrinfos.exit649.thread.backedge, %.preheader1113
  %.sroa.38.3 = phi ptr [ %.sroa.38.2, %.preheader1113 ], [ %.sroa.38.12, %any_addrinfos.exit649.thread.backedge ] ; 5 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %.preheader1113 ], [ %.sroa.0.3.be, %any_addrinfos.exit649.thread.backedge ] ; 5 uses
  %.1525 = phi ptr [ %.0524, %.preheader1113 ], [ %.1525.be, %any_addrinfos.exit649.thread.backedge ] ; 17 uses
  %.1493 = phi i32 [ %.0492, %.preheader1113 ], [ %.1493.be, %any_addrinfos.exit649.thread.backedge ] ; 12 uses
  %.1463 = phi ptr [ %.0462, %.preheader1113 ], [ %.1463.be, %any_addrinfos.exit649.thread.backedge ] ; 6 uses
  %.sroa.18.1 = phi i32 [ %.sroa.18.0, %.preheader1113 ], [ %.sroa.18.1.be, %any_addrinfos.exit649.thread.backedge ] ; 9 uses
  %.sroa.0233.1 = phi i32 [ %.sroa.0233.0, %.preheader1113 ], [ %.sroa.0233.1.be, %any_addrinfos.exit649.thread.backedge ] ; 9 uses
  %.1456 = phi i32 [ %.0455, %.preheader1113 ], [ %.1456.be, %any_addrinfos.exit649.thread.backedge ] ; 10 uses
  %.1 = phi i64 [ %.0442, %.preheader1113 ], [ %.1.be, %any_addrinfos.exit649.thread.backedge ] ; 12 uses
  %.not27.i = icmp eq i32 %.1493, 10
  br i1 %.not27.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %any_addrinfos.exit649.thread
  %.not18.i = icmp eq ptr %.sroa.0.3, null
  br i1 %.not18.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %.thread.a, %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !74
  br label %pick_addrinfo.exit

bb.am:                                            ; preds = %any_addrinfos.exit649.thread
  %.not.i647 = icmp eq ptr %.sroa.38.3, null
  br i1 %.not.i647, label %.thread.a, label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.38.3, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !74
  br label %pick_addrinfo.exit

bb.ao:                                            ; preds = %bb.ak
  %.not.1.i = icmp eq ptr %.sroa.38.3, null
  br i1 %.not.1.i, label %.thread841, label %bb.an

.thread.a:                                        ; preds = %bb.am
  %.not18.1.i = icmp eq ptr %.sroa.0.3, null
  br i1 %.not18.1.i, label %.thread841, label %bb.al

pick_addrinfo.exit:                               ; preds = %bb.an, %bb.al
  %.sroa.38.12 = phi ptr [ %i.gu, %bb.an ], [ %.sroa.38.3, %bb.al ] ; 7 uses
  %.sroa.0.13 = phi ptr [ %.sroa.0.3, %bb.an ], [ %i.gs, %bb.al ] ; 9 uses
  %.2.i = phi ptr [ %.sroa.38.3, %bb.an ], [ %.sroa.0.3, %bb.al ] ; 9 uses
  %i.gv = load ptr, ptr %i.ge, align 8, !tbaa !36 ; 2 uses
  %.not562 = icmp eq ptr %i.gv, null
  br i1 %.not562, label %pick_addrinfo.exit..loopexit_crit_edge, label %.preheader

pick_addrinfo.exit..loopexit_crit_edge:           ; preds = %pick_addrinfo.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %.pre1502 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21
  br label %.loopexit

.preheader:                                       ; preds = %pick_addrinfo.exit
  %.04481296 = load ptr, ptr %i.gv, align 8, !tbaa !20 ; 2 uses
  %.not5631297 = icmp eq ptr %.04481296, null
  br i1 %.not5631297, label %.critedge, label %.lr.ph1299

.lr.ph1299:                                       ; preds = %.preheader
  %i.gw = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !21 ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph1299, %bb.aq
  %.04481298 = phi ptr [ %.04481296, %.lr.ph1299 ], [ %.0448, %bb.aq ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.04481298, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !21
  %i.ha = icmp eq i32 %i.gz, %i.gx
  br i1 %i.ha, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hb = getelementptr inbounds nuw i8, ptr %.04481298, i64 40
  %.0448 = load ptr, ptr %i.hb, align 8, !tbaa !20 ; 2 uses
  %.not563 = icmp eq ptr %.0448, null
  br i1 %.not563, label %.critedge, label %bb.ap, !llvm.loop !80

.critedge:                                        ; preds = %bb.aq, %.preheader
  %.not.i648 = icmp eq ptr %.sroa.0.13, null
  br i1 %.not.i648, label %any_addrinfos.exit649, label %any_addrinfos.exit649.thread.backedge

any_addrinfos.exit649:                            ; preds = %.critedge
  %.not1087 = icmp eq ptr %.sroa.38.12, null
  br i1 %.not1087, label %bb.ar, label %any_addrinfos.exit649.thread.backedge

bb.ar:                                            ; preds = %any_addrinfos.exit649
  %i.hc = load i32, ptr %i.z, align 4, !tbaa !60
  %i.hd = icmp slt i32 %i.hc, 1
  %or.cond622.not = and i1 %i.hd, %i.gq
  br i1 %or.cond622.not, label %bb.as, label %.thread841

bb.as:                                            ; preds = %bb.ar
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !34
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !35
  call void @rsock_syserr_fail_host_port(i32 noundef 97, ptr noundef %.1463, i64 noundef %i.hf, i64 noundef %i.hh) #17
  unreachable

.loopexit:                                        ; preds = %bb.ap, %pick_addrinfo.exit..loopexit_crit_edge
  %i.hi = phi i32 [ %.pre1502, %pick_addrinfo.exit..loopexit_crit_edge ], [ %i.gx, %bb.ap ]
  %.1449 = phi ptr [ null, %pick_addrinfo.exit..loopexit_crit_edge ], [ %.04481298, %bb.ap ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !68
  %i.hm = getelementptr inbounds nuw i8, ptr %.2.i, i64 12
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !69
  %i.ho = call i32 @rsock_socket(i32 noundef %i.hi, i32 noundef %i.hl, i32 noundef %i.hn) #16 ; 12 uses
  store i32 %i.ho, ptr %i.a, align 4, !tbaa !10
  %i.hp = icmp slt i32 %i.ho, 0
  br i1 %i.hp, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %.loopexit
  %i.hq = call ptr @rb_errno_ptr() #16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !10 ; 4 uses
  %.not.i650 = icmp eq ptr %.sroa.0.13, null
  br i1 %.not.i650, label %any_addrinfos.exit651, label %any_addrinfos.exit649.thread.backedge

any_addrinfos.exit651:                            ; preds = %bb.at
  %.not1095 = icmp eq ptr %.sroa.38.12, null
  br i1 %.not1095, label %bb.au, label %any_addrinfos.exit649.thread.backedge

bb.au:                                            ; preds = %any_addrinfos.exit651
  %i.hs = load i32, ptr %i.z, align 4, !tbaa !60
  %i.ht = icmp slt i32 %i.hs, 1
  %or.cond623.not = and i1 %i.ht, %i.gq
  br i1 %or.cond623.not, label %bb.av, label %.thread841

bb.av:                                            ; preds = %bb.au
  %i.hu = icmp slt i32 %.1456, 0                  ; 2 uses
  %.0482.in.v = select i1 %i.hu, i64 48, i64 24
  %.0482.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0482.in.v
  %.0476.in.v = select i1 %i.hu, i64 40, i64 16
  %.0476.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0476.in.v
  %.0476 = load i64, ptr %.0476.in, align 8, !tbaa !19
  %.0482 = load i64, ptr %.0482.in, align 8, !tbaa !19
  call void @rsock_syserr_fail_host_port(i32 noundef %i.hr, ptr noundef nonnull @.str.25, i64 noundef %.0476, i64 noundef %.0482) #17
  unreachable

bb.aw:                                            ; preds = %.loopexit
  %.not567 = icmp eq ptr %.1449, null
  br i1 %.not567, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 1, ptr %i.a, align 4, !tbaa !10
  %i.hv = call i32 @setsockopt(i32 noundef %i.ho, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 4) #16
  %i.hw = icmp slt i32 %i.hv, 0
  br i1 %i.hw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hx = call ptr @rb_errno_ptr() #16
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !10
  call void @rb_syserr_fail(i32 noundef %i.hy, ptr noundef nonnull @.str.26) #17
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.hz = getelementptr inbounds nuw i8, ptr %.1449, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !16
  %i.ib = getelementptr inbounds nuw i8, ptr %.1449, i64 16
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !17
  %i.id = call i32 @bind(i32 noundef %i.ho, ptr %i.ia, i32 noundef %i.ic) #16 ; 6 uses
  store i32 %i.id, ptr %i.a, align 4, !tbaa !10
  %i.ie = icmp slt i32 %i.id, 0
  br i1 %i.ie, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.if = call ptr @rb_errno_ptr() #16
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !10 ; 4 uses
  %i.ih = call i32 @close(i32 noundef %i.ho) #16  ; 0 uses
  %.not.i652 = icmp eq ptr %.sroa.0.13, null
  br i1 %.not.i652, label %any_addrinfos.exit653, label %any_addrinfos.exit649.thread.backedge

any_addrinfos.exit653:                            ; preds = %bb.ba
  %.not1088 = icmp eq ptr %.sroa.38.12, null
  br i1 %.not1088, label %bb.bb, label %any_addrinfos.exit649.thread.backedge

bb.bb:                                            ; preds = %any_addrinfos.exit653
  %i.ii = load i32, ptr %i.z, align 4, !tbaa !60
  %i.ij = icmp slt i32 %i.ii, 1
  %or.cond624.not = and i1 %i.ij, %i.gq
  br i1 %or.cond624.not, label %bb.bc, label %.thread841

bb.bc:                                            ; preds = %bb.bb
  %i.ik = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !34
  %i.im = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.in = load i64, ptr %i.im, align 8, !tbaa !35
  call void @rsock_syserr_fail_host_port(i32 noundef %i.ig, ptr noundef nonnull @.str.27, i64 noundef %i.il, i64 noundef %i.in) #17
  unreachable

bb.bd:                                            ; preds = %bb.az, %bb.aw
  %.2457 = phi i32 [ %i.id, %bb.az ], [ %.1456, %bb.aw ] ; 8 uses
  %.not.i654 = icmp eq ptr %.sroa.0.13, null      ; 3 uses
  %.not1089 = icmp eq ptr %.sroa.38.12, null      ; 3 uses
  %or.cond1105 = select i1 %.not.i654, i1 %.not1089, i1 false
  br i1 %or.cond1105, label %bb.be, label %any_addrinfos.exit655.thread

bb.be:                                            ; preds = %bb.bd
  %i.io = load i32, ptr %i.z, align 4, !tbaa !60
  %i.ip = icmp slt i32 %i.io, 1
  %or.cond6 = and i1 %i.gq, %i.ip
  br i1 %or.cond6, label %bb.bj, label %any_addrinfos.exit655.thread

any_addrinfos.exit655.thread:                     ; preds = %bb.bd, %bb.be
  %i.iq = call i32 (i32, i32, ...) @fcntl(i32 noundef range(i32 0, -2147483648) %i.ho, i32 noundef 3) #16 ; 3 uses
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %any_addrinfos.exit655.thread
  %i.is = call ptr @rb_errno_ptr() #16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !10
  call void @rb_syserr_fail(i32 noundef %i.it, ptr noundef nonnull @.str.15) #17
  unreachable

bb.bg:                                            ; preds = %any_addrinfos.exit655.thread
  %i.iu = and i32 %i.iq, 2048
  %.not.i656 = icmp eq i32 %i.iu, 0
  br i1 %.not.i656, label %bb.bh, label %socket_nonblock_set.exit

bb.bh:                                            ; preds = %bb.bg
  %i.iv = or disjoint i32 %i.iq, 2048
  %i.iw = call i32 (i32, i32, ...) @fcntl(i32 noundef range(i32 0, -2147483648) %i.ho, i32 noundef 4, i32 noundef %i.iv) #16
  %i.ix = icmp slt i32 %i.iw, 0
  br i1 %i.ix, label %bb.bi, label %socket_nonblock_set.exit

bb.bi:                                            ; preds = %bb.bh
  %i.iy = call ptr @rb_errno_ptr() #16
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !10
  call void @rb_syserr_fail(i32 noundef %i.iz, ptr noundef nonnull @.str.15) #17
  unreachable

socket_nonblock_set.exit:                         ; preds = %bb.bg, %bb.bh
  %i.ja = getelementptr inbounds nuw i8, ptr %.2.i, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !16
  %i.jc = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !17
  %i.je = call i32 @connect(i32 noundef %i.ho, ptr %i.jb, i32 noundef %i.jd) #16 ; 2 uses
  store i32 %i.je, ptr %i.a, align 4, !tbaa !10
end_hunk_1
begin_hunk_2_@init_fast_fallback_inetsock_internal:bb.a
  %i.ju = icmp eq i64 %i.jn, 4
  br i1 %i.ju, label %.thread818, label %.split

.thread818:                                       ; preds = %bb.bj, %bb.bm
  br i1 %i.gf, label %bb.bn, label %.thread820

.thread820:                                       ; preds = %.thread818
  %i.jv = call { i64, i64 } @rb_time_interval(i64 noundef %i.l) #16 ; 2 uses
  %i.jw = extractvalue { i64, i64 } %i.jv, 0      ; 2 uses
  %i.jx = extractvalue { i64, i64 } %i.jv, 1      ; 2 uses
  store i64 %i.jw, ptr %7, align 8, !tbaa !19
  store i64 %i.jx, ptr %.sroa.477.0..sroa_idx, align 8, !tbaa !19
  br label %bb.bo

bb.bn:                                            ; preds = %.thread818
  %.not569 = icmp eq ptr %.1525, null
  br i1 %.not569, label %.split, label %._crit_edge1504

._crit_edge1504:                                  ; preds = %bb.bn
  %.pre1505 = load i64, ptr %.1525, align 8
  %.phi.trans.insert1506 = getelementptr inbounds nuw i8, ptr %.1525, i64 8
  %.pre1507 = load i64, ptr %.phi.trans.insert1506, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge1504, %.thread820
  %i.jy = phi i64 [ %i.jx, %.thread820 ], [ %.pre1507, %._crit_edge1504 ] ; 2 uses
  %i.jz = phi i64 [ %i.jw, %.thread820 ], [ %.pre1505, %._crit_edge1504 ] ; 2 uses
  %.2526823 = phi ptr [ %7, %.thread820 ], [ %.1525, %._crit_edge1504 ] ; 2 uses
  %i.ka = icmp ne i64 %i.jz, -1
  %i.kb = icmp ne i64 %i.jy, -1
  %.not1092 = select i1 %i.ka, i1 %i.kb, i1 false
  br i1 %.not1092, label %tv_to_seconds.exit, label %.split

tv_to_seconds.exit:                               ; preds = %bb.bo
  %i.kc = sitofp i64 %i.jz to double
  %i.kd = sitofp i64 %i.jy to double
  %i.ke = fdiv double %i.kd, 1.000000e+06
  %i.kf = fadd double %i.ke, %i.kc
  %i.kg = call i64 @rb_float_new(double noundef %i.kf) #16
  br label %.split

.split:                                           ; preds = %bb.bn, %bb.bo, %tv_to_seconds.exit, %bb.bm
  %.3527 = phi ptr [ %.1525, %bb.bm ], [ %.2526823, %bb.bo ], [ %.2526823, %tv_to_seconds.exit ], [ null, %bb.bn ]
  %.1461 = phi i64 [ %i.jn, %bb.bm ], [ 4, %bb.bo ], [ %i.kg, %tv_to_seconds.exit ], [ 4, %bb.bn ]
  %i.kh = load i64, ptr %i.f, align 8, !tbaa !29
  %i.ki = call i64 @rsock_init_sock(i64 noundef %i.kh, i32 noundef %i.ho) #16 ; 3 uses
  store i64 %i.ki, ptr %i.g, align 8, !tbaa !30
  %i.kj = getelementptr inbounds nuw i8, ptr %.2.i, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !16
  %i.kl = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !17
  %i.kn = call i32 @rsock_connect(i64 noundef %i.ki, ptr noundef %i.kk, i32 noundef %i.km, i32 noundef 0, i64 noundef %.1461) #16 ; 2 uses
  store i32 %i.kn, ptr %i.a, align 4, !tbaa !10
  br label %bb.bp

bb.bp:                                            ; preds = %.split, %socket_nonblock_set.exit
  %i.ko = phi i32 [ %i.kn, %.split ], [ %i.je, %socket_nonblock_set.exit ]
  %.4528 = phi ptr [ %.3527, %.split ], [ %.1525, %socket_nonblock_set.exit ] ; 5 uses
  %.2494 = phi i32 [ %.1493, %.split ], [ %i.jf, %socket_nonblock_set.exit ] ; 7 uses
  %.2 = phi i64 [ %i.ki, %.split ], [ %.1, %socket_nonblock_set.exit ] ; 9 uses
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %.loopexit1114, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kq = call ptr @rb_errno_ptr() #16
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !10
  %i.ks = icmp eq i32 %i.kr, 115
  br i1 %i.ks, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %bb.bq
  %i.kt = load i32, ptr %i.z, align 4, !tbaa !60  ; 2 uses
  %i.ku = icmp eq i32 %.0497, %i.kt
  %.pre1509 = load ptr, ptr %i.y, align 8, !tbaa !96 ; 2 uses
  br i1 %i.ku, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.kv = add nsw i32 %.0497, 10                  ; 2 uses
  %i.kw = sext i32 %i.kv to i64
  %i.kx = shl nsw i64 %i.kw, 2
  %i.ky = call ptr @realloc(ptr noundef %.pre1509, i64 noundef %i.kx) #21 ; 4 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.bt, label %reallocate_connection_attempt_fds.exit

bb.bt:                                            ; preds = %bb.bs
  %i.la = call ptr @rb_errno_ptr() #16
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !10
  call void @rb_syserr_fail(i32 noundef %i.lb, ptr noundef nonnull @.str.35) #17
  unreachable

reallocate_connection_attempt_fds.exit:           ; preds = %bb.bs
  store ptr %i.ky, ptr %i.y, align 8, !tbaa !96
  %i.lc = sext i32 %.0497 to i64
  %i.ld = shl nsw i64 %i.lc, 2
  %scevgep.i = getelementptr i8, ptr %i.ky, i64 %i.ld
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %scevgep.i, i8 -1, i64 40, i1 false), !tbaa !10
  %.pre1510 = load i32, ptr %i.z, align 4, !tbaa !60
  br label %bb.bu

bb.bu:                                            ; preds = %reallocate_connection_attempt_fds.exit, %bb.br
  %i.le = phi i32 [ %.pre1510, %reallocate_connection_attempt_fds.exit ], [ %i.kt, %bb.br ]
  %i.lf = phi ptr [ %i.ky, %reallocate_connection_attempt_fds.exit ], [ %.pre1509, %bb.br ]
  %.2499 = phi i32 [ %i.kv, %reallocate_connection_attempt_fds.exit ], [ %.0497, %bb.br ] ; 4 uses
  %i.lg = sext i32 %i.le to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lg
  store i32 %i.ho, ptr %i.lh, align 4, !tbaa !10
  %i.li = load i32, ptr %i.z, align 4, !tbaa !60
  %i.lj = add nsw i32 %i.li, 1
  store i32 %i.lj, ptr %i.z, align 4, !tbaa !60
  %i.lk = add nsw i64 %.sroa.16.0, 250000000      ; 2 uses
  %i.ll = sdiv i64 %i.lk, 1000000000
  %i.lm = add nsw i64 %i.ll, %.sroa.0146.0
  %i.ln = srem i64 %i.lk, 1000000000
  store i64 %i.lm, ptr %5, align 8, !tbaa !98
  %.lhs.trunc.i = trunc nsw i64 %i.ln to i32
  %i.lo = sdiv i32 %.lhs.trunc.i, 1000
  %.sext.i = sext i32 %i.lo to i64
  store i64 %.sext.i, ptr %i.gg, align 8, !tbaa !99
  br i1 %.not.i654, label %any_addrinfos.exit672, label %any_addrinfos.exit.thread.i

any_addrinfos.exit672:                            ; preds = %bb.bu
  br i1 %.not1089, label %bb.bv, label %any_addrinfos.exit.thread.i

bb.bv:                                            ; preds = %any_addrinfos.exit672
  br i1 %i.gf, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 -1, i64 16, i1 false)
  br label %.thread841

bb.bx:                                            ; preds = %bb.bv
  %i.lp = call { i64, i64 } @rb_time_interval(i64 noundef %i.l) #16 ; 2 uses
  %i.lq = extractvalue { i64, i64 } %i.lp, 0
  %i.lr = extractvalue { i64, i64 } %i.lp, 1
  %i.ls = sdiv i64 %.sroa.16.0, 1000
  %i.lt = add nsw i64 %i.lq, %.sroa.0146.0        ; 2 uses
  %i.lu = add nsw i64 %i.lr, %i.ls                ; 4 uses
  %i.lv = icmp sgt i64 %i.lu, 999999
  br i1 %i.lv, label %bb.by, label %add_ts_to_tv.exit677

bb.by:                                            ; preds = %bb.bx
  %i.lw = udiv i64 %i.lu, 1000000
  %i.lx = add nsw i64 %i.lw, %i.lt
  %i.ly = urem i64 %i.lu, 1000000
  br label %add_ts_to_tv.exit677

add_ts_to_tv.exit677:                             ; preds = %bb.bx, %bb.by
  %.sroa.01.0.i673 = phi i64 [ %i.lx, %bb.by ], [ %i.lt, %bb.bx ]
  %.sroa.6.0.i674 = phi i64 [ %i.ly, %bb.by ], [ %i.lu, %bb.bx ]
  store i64 %.sroa.01.0.i673, ptr %7, align 8, !tbaa !19
  store i64 %.sroa.6.0.i674, ptr %.sroa.477.0..sroa_idx, align 8, !tbaa !19
  br label %.thread841

bb.bz:                                            ; preds = %bb.bq
  %i.lz = call ptr @rb_errno_ptr() #16
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !10 ; 4 uses
  %i.mb = icmp eq i64 %.2, 4
  br i1 %i.mb, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.mc = call i32 @close(i32 noundef %i.ho) #16  ; 0 uses
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.md = call i64 @rb_io_close(i64 noundef %.2) #16 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  br i1 %.not.i654, label %any_addrinfos.exit679, label %any_addrinfos.exit649.thread.backedge

any_addrinfos.exit649.thread.backedge:            ; preds = %bb.cc, %bb.ba, %bb.at, %.critedge, %any_addrinfos.exit679, %any_addrinfos.exit653, %any_addrinfos.exit651, %any_addrinfos.exit649
  %.sroa.0.3.be = phi ptr [ %.sroa.0.13, %bb.cc ], [ %.sroa.0.13, %bb.ba ], [ %.sroa.0.13, %bb.at ], [ %.sroa.0.13, %.critedge ], [ null, %any_addrinfos.exit679 ], [ null, %any_addrinfos.exit653 ], [ null, %any_addrinfos.exit651 ], [ null, %any_addrinfos.exit649 ]
  %.1525.be = phi ptr [ %.4528, %bb.cc ], [ %.1525, %bb.ba ], [ %.1525, %bb.at ], [ %.1525, %.critedge ], [ %.4528, %any_addrinfos.exit679 ], [ %.1525, %any_addrinfos.exit653 ], [ %.1525, %any_addrinfos.exit651 ], [ %.1525, %any_addrinfos.exit649 ]
  %.1493.be = phi i32 [ %.2494, %bb.cc ], [ %.1493, %bb.ba ], [ %.1493, %bb.at ], [ %.1493, %.critedge ], [ %.2494, %any_addrinfos.exit679 ], [ %.1493, %any_addrinfos.exit653 ], [ %.1493, %any_addrinfos.exit651 ], [ %.1493, %any_addrinfos.exit649 ]
  %.1463.be = phi ptr [ @.str.28, %bb.cc ], [ @.str.27, %bb.ba ], [ @.str.25, %bb.at ], [ %.1463, %.critedge ], [ @.str.28, %any_addrinfos.exit679 ], [ @.str.27, %any_addrinfos.exit653 ], [ @.str.25, %any_addrinfos.exit651 ], [ %.1463, %any_addrinfos.exit649 ]
  %.sroa.18.1.be = phi i32 [ %i.ma, %bb.cc ], [ %i.ig, %bb.ba ], [ %i.hr, %bb.at ], [ %.sroa.18.1, %.critedge ], [ %i.ma, %any_addrinfos.exit679 ], [ %i.ig, %any_addrinfos.exit653 ], [ %i.hr, %any_addrinfos.exit651 ], [ %.sroa.18.1, %any_addrinfos.exit649 ]
  %.sroa.0233.1.be = phi i32 [ 1, %bb.cc ], [ 1, %bb.ba ], [ 1, %bb.at ], [ %.sroa.0233.1, %.critedge ], [ 1, %any_addrinfos.exit679 ], [ 1, %any_addrinfos.exit653 ], [ 1, %any_addrinfos.exit651 ], [ %.sroa.0233.1, %any_addrinfos.exit649 ]
  %.1456.be = phi i32 [ %.2457, %bb.cc ], [ %i.id, %bb.ba ], [ %.1456, %bb.at ], [ %.1456, %.critedge ], [ %.2457, %any_addrinfos.exit679 ], [ %i.id, %any_addrinfos.exit653 ], [ %.1456, %any_addrinfos.exit651 ], [ %.1456, %any_addrinfos.exit649 ]
  %.1.be = phi i64 [ %.2, %bb.cc ], [ %.1, %bb.ba ], [ %.1, %bb.at ], [ %.1, %.critedge ], [ %.2, %any_addrinfos.exit679 ], [ %.1, %any_addrinfos.exit653 ], [ %.1, %any_addrinfos.exit651 ], [ %.1, %any_addrinfos.exit649 ]
  br label %any_addrinfos.exit649.thread, !llvm.loop !81

any_addrinfos.exit679:                            ; preds = %bb.cc
  br i1 %.not1089, label %bb.cd, label %any_addrinfos.exit649.thread.backedge

bb.cd:                                            ; preds = %any_addrinfos.exit679
  %i.me = load i32, ptr %i.z, align 4, !tbaa !60
  %i.mf = icmp slt i32 %i.me, 1
  %or.cond625.not = and i1 %i.mf, %i.gq
  br i1 %or.cond625.not, label %bb.ce, label %.thread841

bb.ce:                                            ; preds = %bb.cd
  %i.mg = icmp slt i32 %.2457, 0                  ; 2 uses
  %.2484.in.v = select i1 %i.mg, i64 48, i64 24
  %.2484.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2484.in.v
  %.2478.in.v = select i1 %i.mg, i64 40, i64 16
  %.2478.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2478.in.v
  %.2478 = load i64, ptr %.2478.in, align 8, !tbaa !19
  %.2484 = load i64, ptr %.2484.in, align 8, !tbaa !19
  call void @rsock_syserr_fail_host_port(i32 noundef %i.ma, ptr noundef nonnull @.str.28, i64 noundef %.2478, i64 noundef %.2484) #17
  unreachable

.thread841:                                       ; preds = %bb.ao, %.thread.a, %bb.au, %add_ts_to_tv.exit677, %bb.bb, %bb.bw, %bb.cd, %bb.ar, %any_addrinfos.exit
  %.4864 = phi i64 [ %.2, %bb.cd ], [ %.0442, %any_addrinfos.exit ], [ %.1, %bb.ar ], [ %.1, %bb.au ], [ %.2, %add_ts_to_tv.exit677 ], [ %.1, %bb.bb ], [ %.2, %bb.bw ], [ %.1, %.thread.a ], [ %.1, %bb.ao ] ; 9 uses
  %.4459863 = phi i32 [ %.2457, %bb.cd ], [ %.0455, %any_addrinfos.exit ], [ %.1456, %bb.ar ], [ %.1456, %bb.au ], [ %.2457, %add_ts_to_tv.exit677 ], [ %i.id, %bb.bb ], [ %.2457, %bb.bw ], [ %.1456, %.thread.a ], [ %.1456, %bb.ao ] ; 9 uses
  %.sroa.0233.3862 = phi i32 [ 1, %bb.cd ], [ %.sroa.0233.0, %any_addrinfos.exit ], [ %.sroa.0233.1, %bb.ar ], [ 1, %bb.au ], [ %.sroa.0233.1, %add_ts_to_tv.exit677 ], [ 1, %bb.bb ], [ %.sroa.0233.1, %bb.bw ], [ %.sroa.0233.1, %.thread.a ], [ %.sroa.0233.1, %bb.ao ] ; 9 uses
  %.sroa.18.3861 = phi i32 [ %i.ma, %bb.cd ], [ %.sroa.18.0, %any_addrinfos.exit ], [ %.sroa.18.1, %bb.ar ], [ %i.hr, %bb.au ], [ %.sroa.18.1, %add_ts_to_tv.exit677 ], [ %i.ig, %bb.bb ], [ %.sroa.18.1, %bb.bw ], [ %.sroa.18.1, %.thread.a ], [ %.sroa.18.1, %bb.ao ] ; 9 uses
  %.3465860 = phi ptr [ @.str.28, %bb.cd ], [ %.0462, %any_addrinfos.exit ], [ %.1463, %bb.ar ], [ @.str.25, %bb.au ], [ @.str.28, %add_ts_to_tv.exit677 ], [ @.str.27, %bb.bb ], [ @.str.28, %bb.bw ], [ %.1463, %.thread.a ], [ %.1463, %bb.ao ] ; 9 uses
  %.4496859 = phi i32 [ %.2494, %bb.cd ], [ %.0492, %any_addrinfos.exit ], [ %.1493, %bb.ar ], [ %.1493, %bb.au ], [ %.2494, %add_ts_to_tv.exit677 ], [ %.1493, %bb.bb ], [ %.2494, %bb.bw ], [ %.1493, %bb.ao ], [ 10, %.thread.a ] ; 9 uses
  %.4501858 = phi i32 [ %.0497, %bb.cd ], [ %.0497, %any_addrinfos.exit ], [ %.0497, %bb.ar ], [ %.0497, %bb.au ], [ %.2499, %add_ts_to_tv.exit677 ], [ %.0497, %bb.bb ], [ %.2499, %bb.bw ], [ %.0497, %.thread.a ], [ %.0497, %bb.ao ] ; 9 uses
  %.3514857 = phi ptr [ null, %bb.cd ], [ %.0511, %any_addrinfos.exit ], [ null, %bb.ar ], [ null, %bb.au ], [ %5, %add_ts_to_tv.exit677 ], [ null, %bb.bb ], [ %5, %bb.bw ], [ null, %.thread.a ], [ null, %bb.ao ] ; 9 uses
  %.7531856 = phi ptr [ %.4528, %bb.cd ], [ %.0524, %any_addrinfos.exit ], [ %.1525, %bb.ar ], [ %.1525, %bb.au ], [ %7, %add_ts_to_tv.exit677 ], [ %.1525, %bb.bb ], [ %7, %bb.bw ], [ %.1525, %.thread.a ], [ %.1525, %bb.ao ] ; 14 uses
  %.sroa.0.4855 = phi ptr [ null, %bb.cd ], [ %.sroa.0.2, %any_addrinfos.exit ], [ null, %bb.ar ], [ null, %bb.au ], [ null, %add_ts_to_tv.exit677 ], [ null, %bb.bb ], [ null, %bb.bw ], [ null, %.thread.a ], [ null, %bb.ao ] ; 2 uses
  %.sroa.38.4854 = phi ptr [ null, %bb.cd ], [ %.sroa.38.2, %any_addrinfos.exit ], [ null, %bb.ar ], [ null, %bb.au ], [ null, %add_ts_to_tv.exit677 ], [ null, %bb.bb ], [ null, %bb.bw ], [ null, %.thread.a ], [ null, %bb.ao ] ; 2 uses
  %.not.i.i680 = icmp eq ptr %.sroa.0.4855, null  ; 2 uses
  %.not2.i = icmp eq ptr %.sroa.38.4854, null
  %or.cond.i = select i1 %.not.i.i680, i1 %.not2.i, i1 false
  br i1 %or.cond.i, label %bb.ci, label %any_addrinfos.exit.thread.i

any_addrinfos.exit.thread.i:                      ; preds = %any_addrinfos.exit672, %bb.bu, %.thread841
  %.not.i.i6801064 = phi i1 [ %.not.i.i680, %.thread841 ], [ false, %bb.bu ], [ true, %any_addrinfos.exit672 ] ; 5 uses
  %.sroa.38.48541061 = phi ptr [ %.sroa.38.4854, %.thread841 ], [ %.sroa.38.12, %bb.bu ], [ %.sroa.38.12, %any_addrinfos.exit672 ] ; 5 uses
  %.sroa.0.48551055 = phi ptr [ %.sroa.0.4855, %.thread841 ], [ %.sroa.0.13, %bb.bu ], [ null, %any_addrinfos.exit672 ] ; 5 uses
  %.75318561049 = phi ptr [ %.7531856, %.thread841 ], [ %.4528, %bb.bu ], [ %.4528, %any_addrinfos.exit672 ] ; 5 uses
  %.35148571037 = phi ptr [ %.3514857, %.thread841 ], [ %5, %bb.bu ], [ %5, %any_addrinfos.exit672 ] ; 7 uses
  %.45018581036 = phi i32 [ %.4501858, %.thread841 ], [ %.2499, %bb.bu ], [ %.2499, %any_addrinfos.exit672 ] ; 5 uses
  %.44968591030 = phi i32 [ %.4496859, %.thread841 ], [ %.2494, %bb.bu ], [ %.2494, %any_addrinfos.exit672 ] ; 5 uses
  %.34658601024 = phi ptr [ %.3465860, %.thread841 ], [ @.str.28, %bb.bu ], [ @.str.28, %any_addrinfos.exit672 ] ; 5 uses
  %.sroa.18.38611018 = phi i32 [ %.sroa.18.3861, %.thread841 ], [ %.sroa.18.1, %bb.bu ], [ %.sroa.18.1, %any_addrinfos.exit672 ] ; 5 uses
  %.sroa.0233.38621012 = phi i32 [ %.sroa.0233.3862, %.thread841 ], [ %.sroa.0233.1, %bb.bu ], [ %.sroa.0233.1, %any_addrinfos.exit672 ] ; 5 uses
  %.44598631006 = phi i32 [ %.4459863, %.thread841 ], [ %.2457, %bb.bu ], [ %.2457, %any_addrinfos.exit672 ] ; 5 uses
  %.48641000 = phi i64 [ %.4864, %.thread841 ], [ %.2, %bb.bu ], [ %.2, %any_addrinfos.exit672 ] ; 5 uses
  %i.mh = select i1 %i.go, ptr %.0502, ptr %.35148571037 ; 4 uses
  br i1 %.not46.i, label %select_expires_at.exit, label %bb.cf

bb.cf:                                            ; preds = %any_addrinfos.exit.thread.i
  %i.mi = load i64, ptr %.0534, align 8, !tbaa !98 ; 2 uses
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !98 ; 2 uses
  %i.mk = icmp eq i64 %i.mi, %i.mj
  br i1 %i.mk, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ml = load i64, ptr %.0534.sroa.phi, align 8, !tbaa !99
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.go, ptr %.0502, ptr %.35148571037
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %i.mm = load i64, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !99
  %i.mn = icmp slt i64 %i.ml, %i.mm
  br i1 %i.mn, label %select_expires_at.exit.thread, label %select_expires_at.exit.thread1070

bb.ch:                                            ; preds = %bb.cf
  %i.mo = icmp slt i64 %i.mi, %i.mj
  br i1 %i.mo, label %select_expires_at.exit.thread, label %select_expires_at.exit.thread1070

bb.ci:                                            ; preds = %.thread841
  br i1 %.not46.i, label %bb.cj, label %select_expires_at.exit.thread

bb.cj:                                            ; preds = %bb.ci
  %.not40.i = icmp eq ptr %.1519, null            ; 2 uses
  br i1 %.not40.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mp = load i64, ptr %.1519, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %.1519, i64 8
  %i.mr = load i64, ptr %i.mq, align 8
  %i.ms = icmp ne i64 %i.mp, -1
  %i.mt = icmp ne i64 %i.mr, -1
  %.not4.i682 = select i1 %i.ms, i1 %i.mt, i1 false
  br i1 %.not4.i682, label %bb.cl, label %select_expires_at.exit.thread880

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.not42.i = icmp eq ptr %.7531856, null
  br i1 %.not42.i, label %select_expires_at.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mu = load i64, ptr %.7531856, align 8        ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.7531856, i64 8
  %i.mw = load i64, ptr %i.mv, align 8            ; 2 uses
  %i.mx = icmp eq i64 %i.mu, -1
  %i.my = icmp eq i64 %i.mw, -1
  %.not6.not16.i = select i1 %i.mx, i1 true, i1 %i.my ; 2 uses
  %brmerge.i = or i1 %.not40.i, %.not6.not16.i
  %.mux.i = select i1 %.not6.not16.i, ptr null, ptr %.7531856
  br i1 %brmerge.i, label %select_expires_at.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mz = load i64, ptr %.1519, align 8, !tbaa !98 ; 2 uses
  %i.na = icmp eq i64 %i.mu, %i.mz
  br i1 %i.na, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.nb = getelementptr inbounds nuw i8, ptr %.1519, i64 8
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !99
  %i.nd = icmp sgt i64 %i.mw, %i.nc
  br i1 %i.nd, label %select_expires_at.exit.thread, label %select_expires_at.exit.thread1070

bb.cp:                                            ; preds = %bb.cn
  %i.ne = icmp sgt i64 %i.mu, %i.mz
  br i1 %i.ne, label %select_expires_at.exit.thread, label %select_expires_at.exit.thread1070

select_expires_at.exit.thread1070:                ; preds = %bb.ch, %bb.cg, %bb.cp, %bb.co
  %.not.i.i6801063.ph = phi i1 [ true, %bb.co ], [ true, %bb.cp ], [ %.not.i.i6801064, %bb.cg ], [ %.not.i.i6801064, %bb.ch ]
  %.sroa.38.48541060.ph = phi ptr [ null, %bb.co ], [ null, %bb.cp ], [ %.sroa.38.48541061, %bb.cg ], [ %.sroa.38.48541061, %bb.ch ]
  %.sroa.0.48551054.ph = phi ptr [ null, %bb.co ], [ null, %bb.cp ], [ %.sroa.0.48551055, %bb.cg ], [ %.sroa.0.48551055, %bb.ch ]
  %.75318561048.ph = phi ptr [ %.7531856, %bb.co ], [ %.7531856, %bb.cp ], [ %.75318561049, %bb.cg ], [ %.75318561049, %bb.ch ]
  %.35148571042.ph = phi ptr [ %.3514857, %bb.co ], [ %.3514857, %bb.cp ], [ %.35148571037, %bb.cg ], [ %.35148571037, %bb.ch ]
  %.45018581035.ph = phi i32 [ %.4501858, %bb.co ], [ %.4501858, %bb.cp ], [ %.45018581036, %bb.cg ], [ %.45018581036, %bb.ch ]
  %.44968591029.ph = phi i32 [ %.4496859, %bb.co ], [ %.4496859, %bb.cp ], [ %.44968591030, %bb.cg ], [ %.44968591030, %bb.ch ]
  %.34658601023.ph = phi ptr [ %.3465860, %bb.co ], [ %.3465860, %bb.cp ], [ %.34658601024, %bb.cg ], [ %.34658601024, %bb.ch ]
  %.sroa.18.38611017.ph = phi i32 [ %.sroa.18.3861, %bb.co ], [ %.sroa.18.3861, %bb.cp ], [ %.sroa.18.38611018, %bb.cg ], [ %.sroa.18.38611018, %bb.ch ]
  %.sroa.0233.38621011.ph = phi i32 [ %.sroa.0233.3862, %bb.co ], [ %.sroa.0233.3862, %bb.cp ], [ %.sroa.0233.38621012, %bb.cg ], [ %.sroa.0233.38621012, %bb.ch ]
  %.44598631005.ph = phi i32 [ %.4459863, %bb.co ], [ %.4459863, %bb.cp ], [ %.44598631006, %bb.cg ], [ %.44598631006, %bb.ch ]
  %.4864999.ph = phi i64 [ %.4864, %bb.co ], [ %.4864, %bb.cp ], [ %.48641000, %bb.cg ], [ %.48641000, %bb.ch ]
  %.2.i681.ph = phi ptr [ %.1519, %bb.co ], [ %.1519, %bb.cp ], [ %i.mh, %bb.cg ], [ %i.mh, %bb.ch ]
  br label %select_expires_at.exit.thread

select_expires_at.exit:                           ; preds = %bb.cl, %any_addrinfos.exit.thread.i, %bb.cm
  %.not.i.i6801063 = phi i1 [ %.not.i.i6801064, %any_addrinfos.exit.thread.i ], [ true, %bb.cm ], [ true, %bb.cl ] ; 2 uses
  %.sroa.38.48541060 = phi ptr [ %.sroa.38.48541061, %any_addrinfos.exit.thread.i ], [ null, %bb.cm ], [ null, %bb.cl ] ; 2 uses
  %.sroa.0.48551054 = phi ptr [ %.sroa.0.48551055, %any_addrinfos.exit.thread.i ], [ null, %bb.cm ], [ null, %bb.cl ] ; 2 uses
  %.75318561048 = phi ptr [ %.75318561049, %any_addrinfos.exit.thread.i ], [ %.7531856, %bb.cm ], [ null, %bb.cl ] ; 2 uses
  %.35148571042 = phi ptr [ %.35148571037, %any_addrinfos.exit.thread.i ], [ %.3514857, %bb.cm ], [ %.3514857, %bb.cl ] ; 2 uses
  %.45018581035 = phi i32 [ %.45018581036, %any_addrinfos.exit.thread.i ], [ %.4501858, %bb.cm ], [ %.4501858, %bb.cl ] ; 2 uses
  %.44968591029 = phi i32 [ %.44968591030, %any_addrinfos.exit.thread.i ], [ %.4496859, %bb.cm ], [ %.4496859, %bb.cl ] ; 2 uses
  %.34658601023 = phi ptr [ %.34658601024, %any_addrinfos.exit.thread.i ], [ %.3465860, %bb.cm ], [ %.3465860, %bb.cl ] ; 2 uses
  %.sroa.18.38611017 = phi i32 [ %.sroa.18.38611018, %any_addrinfos.exit.thread.i ], [ %.sroa.18.3861, %bb.cm ], [ %.sroa.18.3861, %bb.cl ] ; 2 uses
  %.sroa.0233.38621011 = phi i32 [ %.sroa.0233.38621012, %any_addrinfos.exit.thread.i ], [ %.sroa.0233.3862, %bb.cm ], [ %.sroa.0233.3862, %bb.cl ] ; 2 uses
  %.44598631005 = phi i32 [ %.44598631006, %any_addrinfos.exit.thread.i ], [ %.4459863, %bb.cm ], [ %.4459863, %bb.cl ] ; 2 uses
  %.4864999 = phi i64 [ %.48641000, %any_addrinfos.exit.thread.i ], [ %.4864, %bb.cm ], [ %.4864, %bb.cl ] ; 2 uses
  %.2.i681 = phi ptr [ %i.mh, %any_addrinfos.exit.thread.i ], [ %.mux.i, %bb.cm ], [ %.1519, %bb.cl ] ; 2 uses
  %.not581 = icmp eq ptr %.2.i681, null
  br i1 %.not581, label %select_expires_at.exit.thread880, label %select_expires_at.exit.thread

select_expires_at.exit.thread:                    ; preds = %select_expires_at.exit.thread1070, %bb.co, %bb.cp, %bb.ch, %bb.cg, %bb.ci, %select_expires_at.exit
  %.not.i.i6801066 = phi i1 [ %.not.i.i6801063, %select_expires_at.exit ], [ true, %bb.co ], [ true, %bb.cp ], [ %.not.i.i6801064, %bb.ch ], [ %.not.i.i6801064, %bb.cg ], [ true, %bb.ci ], [ %.not.i.i6801063.ph, %select_expires_at.exit.thread1070 ]
  %.sroa.38.48541057 = phi ptr [ %.sroa.38.48541060, %select_expires_at.exit ], [ null, %bb.co ], [ null, %bb.cp ], [ %.sroa.38.48541061, %bb.ch ], [ %.sroa.38.48541061, %bb.cg ], [ null, %bb.ci ], [ %.sroa.38.48541060.ph, %select_expires_at.exit.thread1070 ]
  %.sroa.0.48551051 = phi ptr [ %.sroa.0.48551054, %select_expires_at.exit ], [ null, %bb.co ], [ null, %bb.cp ], [ %.sroa.0.48551055, %bb.ch ], [ %.sroa.0.48551055, %bb.cg ], [ null, %bb.ci ], [ %.sroa.0.48551054.ph, %select_expires_at.exit.thread1070 ]
  %.75318561045 = phi ptr [ %.75318561048, %select_expires_at.exit ], [ %.7531856, %bb.co ], [ %.7531856, %bb.cp ], [ %.75318561049, %bb.ch ], [ %.75318561049, %bb.cg ], [ %.7531856, %bb.ci ], [ %.75318561048.ph, %select_expires_at.exit.thread1070 ]
  %.35148571039 = phi ptr [ %.35148571042, %select_expires_at.exit ], [ %.3514857, %bb.co ], [ %.3514857, %bb.cp ], [ %.35148571037, %bb.ch ], [ %.35148571037, %bb.cg ], [ %.3514857, %bb.ci ], [ %.35148571042.ph, %select_expires_at.exit.thread1070 ]
  %.45018581032 = phi i32 [ %.45018581035, %select_expires_at.exit ], [ %.4501858, %bb.co ], [ %.4501858, %bb.cp ], [ %.45018581036, %bb.ch ], [ %.45018581036, %bb.cg ], [ %.4501858, %bb.ci ], [ %.45018581035.ph, %select_expires_at.exit.thread1070 ]
  %.44968591026 = phi i32 [ %.44968591029, %select_expires_at.exit ], [ %.4496859, %bb.co ], [ %.4496859, %bb.cp ], [ %.44968591030, %bb.ch ], [ %.44968591030, %bb.cg ], [ %.4496859, %bb.ci ], [ %.44968591029.ph, %select_expires_at.exit.thread1070 ]
  %.34658601020 = phi ptr [ %.34658601023, %select_expires_at.exit ], [ %.3465860, %bb.co ], [ %.3465860, %bb.cp ], [ %.34658601024, %bb.ch ], [ %.34658601024, %bb.cg ], [ %.3465860, %bb.ci ], [ %.34658601023.ph, %select_expires_at.exit.thread1070 ]
  %.sroa.18.38611014 = phi i32 [ %.sroa.18.38611017, %select_expires_at.exit ], [ %.sroa.18.3861, %bb.co ], [ %.sroa.18.3861, %bb.cp ], [ %.sroa.18.38611018, %bb.ch ], [ %.sroa.18.38611018, %bb.cg ], [ %.sroa.18.3861, %bb.ci ], [ %.sroa.18.38611017.ph, %select_expires_at.exit.thread1070 ]
  %.sroa.0233.38621008 = phi i32 [ %.sroa.0233.38621011, %select_expires_at.exit ], [ %.sroa.0233.3862, %bb.co ], [ %.sroa.0233.3862, %bb.cp ], [ %.sroa.0233.38621012, %bb.ch ], [ %.sroa.0233.38621012, %bb.cg ], [ %.sroa.0233.3862, %bb.ci ], [ %.sroa.0233.38621011.ph, %select_expires_at.exit.thread1070 ]
  %.44598631002 = phi i32 [ %.44598631005, %select_expires_at.exit ], [ %.4459863, %bb.co ], [ %.4459863, %bb.cp ], [ %.44598631006, %bb.ch ], [ %.44598631006, %bb.cg ], [ %.4459863, %bb.ci ], [ %.44598631005.ph, %select_expires_at.exit.thread1070 ]
  %.4864996 = phi i64 [ %.4864999, %select_expires_at.exit ], [ %.4864, %bb.co ], [ %.4864, %bb.cp ], [ %.48641000, %bb.ch ], [ %.48641000, %bb.cg ], [ %.4864, %bb.ci ], [ %.4864999.ph, %select_expires_at.exit.thread1070 ]
  %.2.i681879 = phi ptr [ %.2.i681, %select_expires_at.exit ], [ %.7531856, %bb.co ], [ %.7531856, %bb.cp ], [ %.0534, %bb.ch ], [ %.0534, %bb.cg ], [ %.0534, %bb.ci ], [ %.2.i681.ph, %select_expires_at.exit.thread1070 ] ; 2 uses
  %.val628 = load i64, ptr %.2.i681879, align 8, !tbaa !98
  %i.nf = getelementptr i8, ptr %.2.i681879, i64 8
  %.val629 = load i64, ptr %i.nf, align 8, !tbaa !99
  %i.ng = mul nsw i64 %.val629, 1000              ; 3 uses
  %i.nh = sub i64 %.val628, %.sroa.0146.0
  %.not.i683 = icmp slt i64 %i.ng, %.sroa.16.0    ; 2 uses
  %i.ni = add nsw i64 %i.ng, 1000000000
  %.pn.i = select i1 %.not.i683, i64 %i.ni, i64 %i.ng
  %i.nj = sext i1 %.not.i683 to i64
  %.sroa.0.0.i = add nsw i64 %i.nh, %i.nj
  %.sroa.6.0.i684 = sub nsw i64 %.pn.i, %.sroa.16.0
  %i.nk = trunc i64 %.sroa.6.0.i684 to i32
  %i.nl = sdiv i32 %i.nk, 1000
  %i.nm = sext i32 %i.nl to i64
  br label %any_addrinfos.exit688.thread.sink.split

select_expires_at.exit.thread880:                 ; preds = %bb.ck, %select_expires_at.exit
  %.not.i.i6801062 = phi i1 [ %.not.i.i6801063, %select_expires_at.exit ], [ true, %bb.ck ] ; 2 uses
  %.sroa.38.48541059 = phi ptr [ %.sroa.38.48541060, %select_expires_at.exit ], [ null, %bb.ck ] ; 4 uses
  %.sroa.0.48551053 = phi ptr [ %.sroa.0.48551054, %select_expires_at.exit ], [ null, %bb.ck ] ; 5 uses
  %.75318561047 = phi ptr [ %.75318561048, %select_expires_at.exit ], [ %.7531856, %bb.ck ] ; 5 uses
  %.35148571041 = phi ptr [ %.35148571042, %select_expires_at.exit ], [ %.3514857, %bb.ck ] ; 5 uses
  %.45018581034 = phi i32 [ %.45018581035, %select_expires_at.exit ], [ %.4501858, %bb.ck ] ; 5 uses
  %.44968591028 = phi i32 [ %.44968591029, %select_expires_at.exit ], [ %.4496859, %bb.ck ] ; 5 uses
  %.34658601022 = phi ptr [ %.34658601023, %select_expires_at.exit ], [ %.3465860, %bb.ck ] ; 5 uses
  %.sroa.18.38611016 = phi i32 [ %.sroa.18.38611017, %select_expires_at.exit ], [ %.sroa.18.3861, %bb.ck ] ; 5 uses
  %.sroa.0233.38621010 = phi i32 [ %.sroa.0233.38621011, %select_expires_at.exit ], [ %.sroa.0233.3862, %bb.ck ] ; 5 uses
  %.44598631004 = phi i32 [ %.44598631005, %select_expires_at.exit ], [ %.4459863, %bb.ck ] ; 5 uses
  %.4864998 = phi i64 [ %.4864999, %select_expires_at.exit ], [ %.4864, %bb.ck ] ; 5 uses
  %i.nn = icmp eq i32 %.sroa.21.2, 0              ; 2 uses
  %i.no = icmp ne i32 %.sroa.57.2, 0              ; 2 uses
  %or.cond10 = select i1 %i.nn, i1 true, i1 %i.no
  %or.cond10.not = xor i1 %or.cond10, true
  %or.cond14.demorgan = and i1 %i.no, %i.nn
  %or.cond1797 = select i1 %or.cond10.not, i1 true, i1 %or.cond14.demorgan
  br i1 %or.cond1797, label %bb.cq, label %any_addrinfos.exit688.thread

bb.cq:                                            ; preds = %select_expires_at.exit.thread880
  br i1 %.not.i.i6801062, label %any_addrinfos.exit688, label %any_addrinfos.exit688.thread

any_addrinfos.exit688:                            ; preds = %bb.cq
  %.not1096 = icmp eq ptr %.sroa.38.48541059, null
  br i1 %.not1096, label %bb.cr, label %any_addrinfos.exit688.thread

bb.cr:                                            ; preds = %any_addrinfos.exit688
  %i.np = load i32, ptr %i.z, align 4, !tbaa !60
  %i.nq = icmp slt i32 %i.np, 1
  br i1 %i.nq, label %any_addrinfos.exit688.thread.sink.split, label %any_addrinfos.exit688.thread

any_addrinfos.exit688.thread.sink.split:          ; preds = %bb.cr, %select_expires_at.exit.thread
  %.sink1798 = phi i64 [ %.sroa.0.0.i, %select_expires_at.exit.thread ], [ 0, %bb.cr ]
  %.sink = phi i64 [ %i.nm, %select_expires_at.exit.thread ], [ 50000, %bb.cr ]
  %.not.i.i6801065.ph = phi i1 [ %.not.i.i6801066, %select_expires_at.exit.thread ], [ true, %bb.cr ]
  %.sroa.38.48541056.ph = phi ptr [ %.sroa.38.48541057, %select_expires_at.exit.thread ], [ null, %bb.cr ]
  %.sroa.0.48551050.ph = phi ptr [ %.sroa.0.48551051, %select_expires_at.exit.thread ], [ %.sroa.0.48551053, %bb.cr ]
  %.75318561044.ph = phi ptr [ %.75318561045, %select_expires_at.exit.thread ], [ %.75318561047, %bb.cr ]
  %.35148571038.ph = phi ptr [ %.35148571039, %select_expires_at.exit.thread ], [ %.35148571041, %bb.cr ]
  %.45018581031.ph = phi i32 [ %.45018581032, %select_expires_at.exit.thread ], [ %.45018581034, %bb.cr ]
  %.44968591025.ph = phi i32 [ %.44968591026, %select_expires_at.exit.thread ], [ %.44968591028, %bb.cr ]
  %.34658601019.ph = phi ptr [ %.34658601020, %select_expires_at.exit.thread ], [ %.34658601022, %bb.cr ]
  %.sroa.18.38611013.ph = phi i32 [ %.sroa.18.38611014, %select_expires_at.exit.thread ], [ %.sroa.18.38611016, %bb.cr ]
  %.sroa.0233.38621007.ph = phi i32 [ %.sroa.0233.38621008, %select_expires_at.exit.thread ], [ %.sroa.0233.38621010, %bb.cr ]
  %.44598631001.ph = phi i32 [ %.44598631002, %select_expires_at.exit.thread ], [ %.44598631004, %bb.cr ]
  %.4864995.ph = phi i64 [ %.4864996, %select_expires_at.exit.thread ], [ %.4864998, %bb.cr ]
  store i64 %.sink1798, ptr %3, align 8, !tbaa !19
  store i64 %.sink, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !19
  br label %any_addrinfos.exit688.thread

end_hunk_2
