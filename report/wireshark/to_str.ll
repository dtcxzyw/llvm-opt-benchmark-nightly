inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.nstime_t = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Not representable\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".%09d\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"epan/to_str.c\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"assertion \22not reached\22 failed\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"0 seconds\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"0.000000000 seconds\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"[Buffer too small]\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"SCTP\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"DCCP\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"IPX\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"DDP\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"IDP\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"I2C\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"IBQP\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"BLUETOOTH\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"IWARP_MPA\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"[Unknown]\00", align 1
@__func__.get_fmt_broken_down_time = private unnamed_addr constant [25 x i8] c"get_fmt_broken_down_time\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"%s%04d-%03dT%02d:%02d:%02d%s%s%s\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"%s%d-%02d-%02dT%02d:%02d:%02d%s%s%s\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"%s%04d/%03d:%02d:%02d:%02d%s%s%s%s\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"%s%s %2d, %d %02d:%02d:%02d%s%s%s%s\00", align 1
@mon_names = internal constant [12 x [4 x i8]] [[4 x i8] c"Jan\00", [4 x i8] c"Feb\00", [4 x i8] c"Mar\00", [4 x i8] c"Apr\00", [4 x i8] c"May\00", [4 x i8] c"Jun\00", [4 x i8] c"Jul\00", [4 x i8] c"Aug\00", [4 x i8] c"Sep\00", [4 x i8] c"Oct\00", [4 x i8] c"Nov\00", [4 x i8] c"Dec\00"], align 16
@.str.32 = private unnamed_addr constant [10 x i8] c"%lu day%s\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"%s%lu hour%s\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"%s%lu minute%s\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"%s%lu.%09u seconds\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"%s%lu.%03u seconds\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"%s%lu second%s\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"%s%u nanosecond%s\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"%s%u.%03u microseconds\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"%s%u.%06u milliseconds\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"%s%u millisecond%s\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@switch.table.port_type_to_str = private unnamed_addr constant [13 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @abs_time_to_str_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = icmp eq i32 %2, 0
  %spec.store.select = select i1 %i.c, i32 18, i32 %2 ; 5 uses
  switch i32 %spec.store.select, label %bb.g [
    i32 22, label %bb.b
    i32 21, label %bb.c
    i32 19, label %.thread
    i32 20, label %.thread
    i32 18, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(31) ptr @wmem_alloc(ptr noundef %0, i64 noundef 31) #11 ; 2 uses
  tail call void @display_epoch_time(ptr noundef %i.d, i64 noundef 31, ptr noundef %1, i32 noundef 9)
  br label %snprint_abs_time_iso8601.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8
  switch i32 %i.h, label %.thread [
    i32 0, label %bb.e
    i32 2147483647, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.i = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str)
  br label %snprint_abs_time_iso8601.exit

.thread:                                          ; preds = %bb.a, %bb.a, %bb.c, %bb.d
  %i.j = tail call ptr @gmtime(ptr noundef %1) #10
  br label %get_fmt_broken_down_time.exit

bb.f:                                             ; preds = %bb.a
  %i.k = tail call ptr @localtime(ptr noundef %1) #10
  br label %get_fmt_broken_down_time.exit

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.6, i64 noundef 109, ptr noundef nonnull @__func__.get_fmt_broken_down_time, ptr noundef nonnull @.str.7) #12
  unreachable

get_fmt_broken_down_time.exit:                    ; preds = %.thread, %bb.f
  %.0.i = phi ptr [ %i.j, %.thread ], [ %i.k, %bb.f ] ; 31 uses
  %i.l = icmp eq ptr %.0.i, null
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %get_fmt_broken_down_time.exit
  %i.m = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str.1)
  br label %snprint_abs_time_iso8601.exit

bb.i:                                             ; preds = %get_fmt_broken_down_time.exit
  store i8 0, ptr %i.b, align 16
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq i32 %i.o, 2147483647
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.b, i64 noundef 32, i32 noundef 2, i64 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %i.o) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = and i32 %3, 8
  %.not36 = icmp eq i32 %i.q, 0
  br i1 %.not36, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = and i32 %3, 2
  %.not.i = icmp eq i32 %i.r, 0                   ; 3 uses
  %i.s = trunc i32 %3 to i8
  %.not39.i = icmp eq i32 %spec.store.select, 18
  %i.t = and i32 %3, 4
  %.not40.i = icmp eq i32 %i.t, 0
  %or.cond.i = or i1 %.not39.i, %.not40.i
  %.0.i39 = select i1 %or.cond.i, i8 %i.s, i8 1   ; 3 uses
  switch i32 %spec.store.select, label %default.unreachable48 [
    i32 20, label %bb.m
    i32 21, label %bb.n
    i32 19, label %bb.n
    i32 18, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.u = select i1 %.not.i, ptr @.str.3, ptr @.str.26 ; 2 uses
  %i.v = getelementptr i8, ptr %.0.i, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add i32 %i.w, 1900
  %i.y = getelementptr i8, ptr %.0.i, i64 28
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add i32 %i.z, 1
  %i.ab = getelementptr i8, ptr %.0.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %.0.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = load i32, ptr %.0.i, align 8
  %i.ag = trunc i8 %.0.i39 to i1
  %i.ah = select i1 %i.ag, ptr @.str.27, ptr @.str.3
  %i.ai = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.u, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.af, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.u)
  br label %snprint_abs_time_iso8601.exit

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.aj = select i1 %.not.i, ptr @.str.3, ptr @.str.26 ; 2 uses
  %i.ak = getelementptr i8, ptr %.0.i, i64 20
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add i32 %i.al, 1900
  %i.an = getelementptr i8, ptr %.0.i, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = add i32 %i.ao, 1
  %i.aq = getelementptr i8, ptr %.0.i, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = getelementptr i8, ptr %.0.i, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %.0.i, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = load i32, ptr %.0.i, align 8
  %i.ax = trunc i8 %.0.i39 to i1
  %i.ay = select i1 %i.ax, ptr @.str.27, ptr @.str.3
  %i.az = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.aj, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %i.aw, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.aj)
  br label %snprint_abs_time_iso8601.exit

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8
  %i.ba = trunc i8 %.0.i39 to i1
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = call i64 @strftime(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef nonnull @.str.29, ptr noundef nonnull %.0.i) #10 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = select i1 %.not.i, ptr @.str.3, ptr @.str.26 ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.i, i64 20
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add i32 %i.be, 1900
  %i.bg = getelementptr i8, ptr %.0.i, i64 16
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = add i32 %i.bh, 1
  %i.bj = getelementptr i8, ptr %.0.i, i64 12
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr i8, ptr %.0.i, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %.0.i, i64 4
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = load i32, ptr %.0.i, align 8
  %i.bq = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.bc, i32 noundef %i.bf, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.bm, i32 noundef %i.bo, i32 noundef %i.bp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %snprint_abs_time_iso8601.exit

default.unreachable48:                            ; preds = %bb.l
  unreachable

bb.r:                                             ; preds = %bb.k
  %i.br = and i32 %3, 1
  %.not37 = icmp eq i32 %i.br, 0
  %i.bs = and i32 %3, 5
  %or.cond = icmp eq i32 %i.bs, 0
  br i1 %or.cond, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %4 = icmp eq i32 %spec.store.select, 18
  br i1 %4, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  br i1 %.not37, label %.thread42, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr i8, ptr %.0.i, i64 48
  %.val = load ptr, ptr %i.bt, align 8
  br label %.thread42

.thread42:                                        ; preds = %bb.u, %bb.t
  %.031.ph = phi ptr [ @.str.3, %bb.t ], [ @.str.4, %bb.u ]
  %.0.ph = phi ptr [ @.str.3, %bb.t ], [ %.val, %bb.u ]
  %5 = and i32 %3, 2
  %6 = icmp ne i32 %5, 0
  br label %bb.x

bb.v:                                             ; preds = %bb.s, %bb.r
  %.031 = phi ptr [ @.str.3, %bb.r ], [ @.str.4, %bb.s ] ; 2 uses
  %.0 = phi ptr [ @.str.3, %bb.r ], [ @.str.5, %bb.s ] ; 2 uses
  %i.bu = and i32 %3, 2
  %7 = icmp ne i32 %i.bu, 0                       ; 2 uses
  %i.bv = icmp eq i32 %spec.store.select, 20
  br i1 %i.bv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %8 = select i1 %7, ptr @.str.26, ptr @.str.3    ; 2 uses
  %i.bw = getelementptr i8, ptr %.0.i, i64 20
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = add i32 %i.bx, 1900
  %i.bz = getelementptr i8, ptr %.0.i, i64 28
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = add i32 %i.ca, 1
  %i.cc = getelementptr i8, ptr %.0.i, i64 8
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = getelementptr i8, ptr %.0.i, i64 4
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = load i32, ptr %.0.i, align 8
  %i.ch = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %8, i32 noundef %i.by, i32 noundef %i.cb, i32 noundef %i.cd, i32 noundef %i.cf, i32 noundef %i.cg, ptr noundef nonnull %i.b, ptr noundef nonnull %.031, ptr noundef nonnull %.0, ptr noundef nonnull %8)
  br label %snprint_abs_time_iso8601.exit

bb.x:                                             ; preds = %bb.v, %.thread42
  %9 = phi i1 [ %6, %.thread42 ], [ %7, %bb.v ]
  %.046 = phi ptr [ %.0.ph, %.thread42 ], [ %.0, %bb.v ]
  %.03145 = phi ptr [ %.031.ph, %.thread42 ], [ %.031, %bb.v ]
  %10 = select i1 %9, ptr @.str.26, ptr @.str.3   ; 2 uses
  %i.ci = getelementptr i8, ptr %.0.i, i64 16
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [4 x i8], ptr @mon_names, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.0.i, i64 12
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = getelementptr i8, ptr %.0.i, i64 20
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = add i32 %i.cp, 1900
  %i.cr = getelementptr i8, ptr %.0.i, i64 8
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %.0.i, i64 4
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = load i32, ptr %.0.i, align 8
  %i.cw = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %10, ptr noundef %i.cl, i32 noundef %i.cn, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.cu, i32 noundef %i.cv, ptr noundef nonnull %i.b, ptr noundef nonnull %.03145, ptr noundef %.046, ptr noundef nonnull %10)
  br label %snprint_abs_time_iso8601.exit

snprint_abs_time_iso8601.exit:                    ; preds = %bb.x, %bb.w, %bb.q, %bb.n, %bb.m, %bb.h, %bb.e, %bb.b
  %.032 = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.e ], [ %i.m, %bb.h ], [ %i.bq, %bb.q ], [ %i.ai, %bb.m ], [ %i.az, %bb.n ], [ %i.ch, %bb.w ], [ %i.cw, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret ptr %.032
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef ptr @abs_time_to_unix_str(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(31) ptr @wmem_alloc(ptr noundef %0, i64 noundef 31) #11 ; 2 uses
  tail call void @display_epoch_time(ptr noundef %i.a, i64 noundef 31, ptr noundef %1, i32 noundef 9)
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn null_pointer_is_valid
declare void @ws_log_fatal_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @abs_time_secs_to_str_ex(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.nstime_t, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @nstime_set_unset(ptr noundef nonnull %4)
  store i64 %1, ptr %4, align 8
  %i.a = call ptr @abs_time_to_str_ex(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare void @nstime_set_unset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @unsigned_time_secs_to_str(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str.8)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef 57) ; 2 uses
  tail call fastcc void @unsigned_time_secs_to_str_buf(i64 noundef %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef %i.c)
  %i.d = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new_sized(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @unsigned_time_secs_to_str_buf(i64 noundef %0, i32 noundef range(i32 0, -2147483647) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = urem i64 %0, 60                          ; 5 uses
  %i.b = udiv i64 %0, 60
  %i.c = urem i64 %i.b, 60                        ; 3 uses
  %i.d = udiv i64 %0, 3600
  %i.e = urem i64 %i.d, 24                        ; 3 uses
  %.not = icmp ult i64 %0, 86400
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = udiv i64 %0, 86400
  %i.g = icmp ugt i64 %0, 172799
  %i.h = select i1 %i.g, ptr @.str.33, ptr @.str.3
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.32, i64 noundef %i.f, ptr noundef nonnull %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]         ; 2 uses
  %.not60 = icmp eq i64 %i.e, 0
  br i1 %.not60, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = trunc nuw i8 %.0 to i1
  %i.j = select i1 %i.i, ptr @.str.35, ptr @.str.3
  %.not61 = icmp eq i64 %i.e, 1
  %i.k = select i1 %.not61, ptr @.str.3, ptr @.str.33
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.j, i64 noundef %i.e, ptr noundef nonnull %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i8 [ 1, %bb.d ], [ %.0, %bb.c ]       ; 2 uses
  %.not62 = icmp eq i64 %i.c, 0
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = trunc nuw i8 %.1 to i1
  %i.m = select i1 %i.l, ptr @.str.35, ptr @.str.3
  %.not63 = icmp eq i64 %i.c, 1
  %i.n = select i1 %.not63, ptr @.str.3, ptr @.str.33
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.m, i64 noundef %i.c, ptr noundef nonnull %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i8 [ 1, %bb.f ], [ %.1, %bb.e ]       ; 4 uses
  %.not64 = icmp eq i64 %i.a, 0
  %.not65 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not64, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = trunc nuw i8 %.2 to i1
  %i.p = select i1 %i.o, ptr @.str.35, ptr @.str.3 ; 3 uses
  br i1 %.not65, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.p, i64 noundef %i.a, i32 noundef %1)
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.p, i64 noundef %i.a, i32 noundef %1)
  br label %bb.u

bb.l:                                             ; preds = %bb.h
  %.not69 = icmp eq i64 %i.a, 1
  %i.q = select i1 %.not69, ptr @.str.3, ptr @.str.33
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.p, i64 noundef %i.a, ptr noundef nonnull %i.q)
  br label %bb.u

bb.m:                                             ; preds = %bb.g
  br i1 %.not65, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %2, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.r = icmp ult i32 %1, 1000
  br i1 %i.r, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.s = trunc nuw i8 %.2 to i1
  %i.t = select i1 %i.s, ptr @.str.35, ptr @.str.3
  %.not67 = icmp eq i32 %1, 1
  %i.u = select i1 %.not67, ptr @.str.3, ptr @.str.33
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.t, i32 noundef %1, ptr noundef nonnull %i.u)
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.v = icmp ult i32 %1, 1000000
  %i.w = trunc nuw i8 %.2 to i1
  %i.x = select i1 %i.w, ptr @.str.35, ptr @.str.3 ; 2 uses
  br i1 %i.v, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.y = udiv i32 %1, 1000
  %i.z = urem i32 %1, 1000
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.x, i32 noundef %i.y, i32 noundef %i.z)
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.aa = udiv i32 %1, 1000000
  %i.ab = urem i32 %1, 1000000
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.x, i32 noundef %i.aa, i32 noundef %i.ab)
  br label %bb.u

bb.t:                                             ; preds = %bb.n
  %i.ac = trunc nuw i8 %.2 to i1
  %i.ad = select i1 %i.ac, ptr @.str.35, ptr @.str.3
  %.not66 = icmp eq i32 %1, 1
  %i.ae = select i1 %.not66, ptr @.str.3, ptr @.str.33
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.ad, i32 noundef %1, ptr noundef nonnull %i.ae)
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %bb.p, %bb.s, %bb.r, %bb.t, %bb.l, %bb.k, %bb.j
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_finalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @signed_time_secs_to_str(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
