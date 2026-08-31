Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/to_str?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
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
  %i.d = tail call noalias dereferenceable_or_null(31) ptr @wmem_alloc(ptr noundef %0, i64 noundef 31) #10 ; 2 uses
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
  %i.j = tail call ptr @gmtime(ptr noundef %1) #9
  br label %get_fmt_broken_down_time.exit

bb.f:                                             ; preds = %bb.a
  %i.k = tail call ptr @localtime(ptr noundef %1) #9
  br label %get_fmt_broken_down_time.exit

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.6, i64 noundef 109, ptr noundef nonnull @__func__.get_fmt_broken_down_time, ptr noundef nonnull @.str.7) #11
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8
  %i.ba = trunc i8 %.0.i39 to i1
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = call i64 @strftime(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef nonnull @.str.29, ptr noundef nonnull %.0.i) #9 ; 0 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
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
  %i.bt = icmp eq i32 %spec.store.select, 18
  br i1 %i.bt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  br i1 %.not37, label %.thread42, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr i8, ptr %.0.i, i64 48
  %.val = load ptr, ptr %i.bu, align 8
  br label %.thread42

.thread42:                                        ; preds = %bb.u, %bb.t
  %.031.ph = phi ptr [ @.str.3, %bb.t ], [ @.str.4, %bb.u ]
  %.0.ph = phi ptr [ @.str.3, %bb.t ], [ %.val, %bb.u ]
  %i.bv = and i32 %3, 2
  %i.bw = icmp ne i32 %i.bv, 0
  br label %bb.x

bb.v:                                             ; preds = %bb.s, %bb.r
  %.031 = phi ptr [ @.str.3, %bb.r ], [ @.str.4, %bb.s ] ; 2 uses
  %.0 = phi ptr [ @.str.3, %bb.r ], [ @.str.5, %bb.s ] ; 2 uses
  %i.bx = and i32 %3, 2
  %i.by = icmp ne i32 %i.bx, 0                    ; 2 uses
  %i.bz = icmp eq i32 %spec.store.select, 20
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ca = select i1 %i.by, ptr @.str.26, ptr @.str.3 ; 2 uses
  %i.cb = getelementptr i8, ptr %.0.i, i64 20
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = add i32 %i.cc, 1900
  %i.ce = getelementptr i8, ptr %.0.i, i64 28
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cf, 1
  %i.ch = getelementptr i8, ptr %.0.i, i64 8
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %.0.i, i64 4
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = load i32, ptr %.0.i, align 8
  %i.cm = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.ca, i32 noundef %i.cd, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.ck, i32 noundef %i.cl, ptr noundef nonnull %i.b, ptr noundef nonnull %.031, ptr noundef nonnull %.0, ptr noundef nonnull %i.ca)
  br label %snprint_abs_time_iso8601.exit

bb.x:                                             ; preds = %bb.v, %.thread42
  %i.cn = phi i1 [ %i.bw, %.thread42 ], [ %i.by, %bb.v ]
  %.046 = phi ptr [ %.0.ph, %.thread42 ], [ %.0, %bb.v ]
  %.03145 = phi ptr [ %.031.ph, %.thread42 ], [ %.031, %bb.v ]
  %i.co = select i1 %i.cn, ptr @.str.26, ptr @.str.3 ; 2 uses
  %i.cp = getelementptr i8, ptr %.0.i, i64 16
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr @mon_names, i64 %i.cr
  %i.ct = getelementptr i8, ptr %.0.i, i64 12
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr i8, ptr %.0.i, i64 20
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = add i32 %i.cw, 1900
  %i.cy = getelementptr i8, ptr %.0.i, i64 8
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %.0.i, i64 4
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = load i32, ptr %.0.i, align 8
  %i.dd = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.co, ptr noundef %i.cs, i32 noundef %i.cu, i32 noundef %i.cx, i32 noundef %i.cz, i32 noundef %i.db, i32 noundef %i.dc, ptr noundef nonnull %i.b, ptr noundef nonnull %.03145, ptr noundef %.046, ptr noundef nonnull %i.co)
  br label %snprint_abs_time_iso8601.exit

snprint_abs_time_iso8601.exit:                    ; preds = %bb.x, %bb.w, %bb.q, %bb.n, %bb.m, %bb.h, %bb.e, %bb.b
  %.032 = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.e ], [ %i.m, %bb.h ], [ %i.bq, %bb.q ], [ %i.ai, %bb.m ], [ %i.az, %bb.n ], [ %i.cm, %bb.w ], [ %i.dd, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret ptr %.032
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef ptr @abs_time_to_unix_str(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(31) ptr @wmem_alloc(ptr noundef %0, i64 noundef 31) #10 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @nstime_set_unset(ptr noundef nonnull %4)
  store i64 %1, ptr %4, align 8
  %i.a = call ptr @abs_time_to_str_ex(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
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
  %i.b = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str.8)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef 57) ; 2 uses
  tail call fastcc void @signed_time_secs_to_str_buf(i64 noundef %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef %i.c)
  %i.d = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @signed_time_secs_to_str_buf(i64 noundef %0, i32 noundef range(i32 0, -2147483647) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.44)
  %i.b = icmp eq i64 %0, -9223372036854775808
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.32, i64 noundef 213503982334601, ptr noundef nonnull @.str.33)
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i64 noundef 7, ptr noundef nonnull @.str.33)
  %.not65.i = icmp eq i32 %1, 0
  br i1 %.not65.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i64 noundef 15, i32 noundef range(i32 0, -2147483647) %1)
  br label %unsigned_time_secs_to_str_buf.exit

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35, i64 noundef 15, i32 noundef range(i32 0, -2147483647) %1)
  br label %unsigned_time_secs_to_str_buf.exit

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i64 noundef 15, ptr noundef nonnull @.str.33)
  br label %unsigned_time_secs_to_str_buf.exit

bb.h:                                             ; preds = %bb.b
  %i.c = sub nsw i64 0, %0
  tail call fastcc void @unsigned_time_secs_to_str_buf(i64 noundef %i.c, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3)
  br label %unsigned_time_secs_to_str_buf.exit

bb.i:                                             ; preds = %bb.a
  tail call fastcc void @unsigned_time_secs_to_str_buf(i64 noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3)
  br label %unsigned_time_secs_to_str_buf.exit

unsigned_time_secs_to_str_buf.exit:               ; preds = %bb.g, %bb.f, %bb.e, %bb.h, %bb.i
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @signed_time_msecs_to_str(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str.8)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef 61) ; 3 uses
  %i.d = icmp slt i64 %1, 0
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.nonneg = sub i64 0, %1                        ; 3 uses
  %i.e = udiv i64 %.nonneg, 1000
  %.neg19 = sub nsw i64 0, %i.e
  %i.f = icmp samesign ugt i64 %1, -1000
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext 45)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.g = udiv i64 %1, 1000
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.014 = phi i64 [ 0, %bb.e ], [ %.neg19, %bb.d ], [ %i.g, %bb.f ]
  %.0.in.in = phi i64 [ %.nonneg, %bb.e ], [ %.nonneg, %bb.d ], [ %1, %bb.f ]
  %.0.in = urem i64 %.0.in.in, 1000
  %.0 = trunc nuw nsw i64 %.0.in to i32
  tail call fastcc void @signed_time_secs_to_str_buf(i64 noundef %.014, i32 noundef %.0, i1 noundef zeroext false, ptr noundef %i.c)
  %i.h = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.c)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.015 = phi ptr [ %i.b, %bb.b ], [ %i.h, %bb.g ]
  ret ptr %.015
}

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_c(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @rel_time_to_str(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp eq i64 %i.a, 0
  %i.e = icmp eq i32 %i.c, 0
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str.9)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef 65) ; 3 uses
  %i.h = icmp slt i32 %i.c, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = sub i32 0, %i.c
  tail call void @wmem_strbuf_append_c(ptr noundef %i.g, i8 noundef signext 45)
  %i.j = load i64, ptr %1, align 8
  %i.k = sub i64 0, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015 = phi i64 [ %i.k, %bb.d ], [ %i.a, %bb.c ]
  %.0 = phi i32 [ %i.i, %bb.d ], [ %i.c, %bb.c ]
  tail call fastcc void @signed_time_secs_to_str_buf(i64 noundef %.015, i32 noundef %.0, i1 noundef zeroext true, ptr noundef %i.g)
  %i.l = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.016 = phi ptr [ %i.f, %bb.b ], [ %i.l, %bb.e ]
  ret ptr %.016
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @rel_time_to_secs_str(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(31) ptr @wmem_alloc(ptr noundef %0, i64 noundef 31) #10 ; 2 uses
  tail call void @display_signed_time(ptr noundef %i.a, i64 noundef 31, ptr noundef %1, i32 noundef 9)
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @display_signed_time(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @display_epoch_time(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noalias noundef ptr @decode_bits_in_field(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %2, i32 64) ; 3 uses
  %i.b = add i32 %i.a, -1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c
  %i.e = add i32 %1, %2
  %i.f = sub i32 0, %i.e
  %.not71 = icmp slt i32 %4, 0
  %.0.in = select i1 %.not71, i32 %i.f, i32 %1
  %.0 = and i32 %.0.in, 7                         ; 14 uses
  %i.g = tail call noalias dereferenceable_or_null(320) ptr @wmem_alloc0(ptr noundef %0, i64 noundef 320) #10 ; 28 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %.lr.ph.preheader95, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  store i8 46, ptr %i.g, align 1
  %exitcond.peel.not = icmp eq i32 %.0, 1
  br i1 %exitcond.peel.not, label %.lr.ph.preheader95, label %.lr.ph.epil.preheader

.lr.ph.preheader95:                               ; preds = %.lr.ph.epil.preheader, %bb.b, %.preheader72.loopexit.epilog-lcssa, %.lr.ph, %.lr.ph.1, %bb.c, %.lr.ph.preheader, %bb.a
  %.054.lcssa = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph.preheader ], [ %.0, %bb.c ], [ %.0, %.lr.ph.1 ], [ %.0, %.lr.ph ], [ %.0, %.preheader72.loopexit.epilog-lcssa ], [ %.0, %bb.b ], [ %.0, %.lr.ph.epil.preheader ] ; 2 uses
  %.053.lcssa = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph.preheader ], [ 2, %.lr.ph.epil.preheader ], [ 3, %bb.b ], [ 4, %.preheader72.loopexit.epilog-lcssa ], [ 6, %.lr.ph ], [ 7, %.lr.ph.1 ], [ 8, %bb.c ] ; 2 uses
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %.lr.ph80, label %.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.preheader
  %6 = getelementptr i8, ptr %i.g, i64 1
  store i8 46, ptr %6, align 1
  %.not66.epil = icmp eq i32 %.0, 2
  br i1 %.not66.epil, label %.lr.ph.preheader95, label %bb.b

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.h = getelementptr i8, ptr %i.g, i64 2
  store i8 46, ptr %i.h, align 1
  %exitcond.not.1 = icmp eq i32 %.0, 3
  br i1 %exitcond.not.1, label %.lr.ph.preheader95, label %.preheader72.loopexit.epilog-lcssa

.preheader72.loopexit.epilog-lcssa:               ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 3
  store i8 46, ptr %i.i, align 1
  %exitcond.not.2 = icmp eq i32 %.0, 4
  br i1 %exitcond.not.2, label %.lr.ph.preheader95, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader72.loopexit.epilog-lcssa
  %7 = getelementptr i8, ptr %i.g, i64 4
  store i8 32, ptr %7, align 1
  %8 = getelementptr i8, ptr %i.g, i64 5
  store i8 46, ptr %8, align 1
  %.not66 = icmp eq i32 %.0, 5
  br i1 %.not66, label %.lr.ph.preheader95, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.g, i64 6
  store i8 46, ptr %i.j, align 1
  %.not66.1 = icmp eq i32 %.0, 6
  br i1 %.not66.1, label %.lr.ph.preheader95, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.k = getelementptr i8, ptr %i.g, i64 7
  store i8 46, ptr %i.k, align 1
  br label %.lr.ph.preheader95

.preheader.loopexit:                              ; preds = %bb.g
  %i.l = add nuw nsw i32 %i.a, %.0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph.preheader95
  %.155.lcssa = phi i32 [ %.054.lcssa, %.lr.ph.preheader95 ], [ %i.l, %.preheader.loopexit ] ; 10 uses
  %.2.lcssa = phi i32 [ %.053.lcssa, %.lr.ph.preheader95 ], [ %.5, %.preheader.loopexit ] ; 3 uses
  %i.m = and i32 %.155.lcssa, 7
  %.not5883 = icmp eq i32 %i.m, 0
  br i1 %.not5883, label %._crit_edge, label %.lr.ph86

.lr.ph80:                                         ; preds = %.lr.ph.preheader95, %bb.g
  %.05279 = phi i32 [ %i.aa, %bb.g ], [ 0, %.lr.ph.preheader95 ]
  %.278 = phi i32 [ %.5, %bb.g ], [ %.053.lcssa, %.lr.ph.preheader95 ] ; 3 uses
  %.15577 = phi i32 [ %i.v, %bb.g ], [ %.054.lcssa, %.lr.ph.preheader95 ] ; 4 uses
  %.05776 = phi i64 [ %i.z, %bb.g ], [ %i.d, %.lr.ph.preheader95 ] ; 2 uses
  %.not61 = icmp ne i32 %.15577, 0                ; 2 uses
  %i.n = and i32 %.15577, 3
  %.not62 = icmp eq i32 %i.n, 0
  %or.cond67 = and i1 %.not61, %.not62
  br i1 %or.cond67, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph80
  %i.o = sext i32 %.278 to i64
  %i.p = getelementptr i8, ptr %i.g, i64 %i.o
  store i8 32, ptr %i.p, align 1
  %i.q = add i32 %.278, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph80
  %.3 = phi i32 [ %.278, %.lr.ph80 ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = and i32 %.15577, 7
  %.not63 = icmp eq i32 %i.r, 0
  %or.cond69 = and i1 %.not61, %.not63
  br i1 %or.cond69, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = sext i32 %.3 to i64
  %i.t = getelementptr i8, ptr %i.g, i64 %i.s
  store i8 32, ptr %i.t, align 1
  %i.u = add i32 %.3, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4 = phi i32 [ %.3, %bb.e ], [ %i.u, %bb.f ]   ; 2 uses
  %i.v = add nuw nsw i32 %.15577, 1
  %i.w = and i64 %.05776, %3
  %.not64 = icmp eq i64 %i.w, 0
  %i.x = sext i32 %.4 to i64
  %i.y = getelementptr i8, ptr %i.g, i64 %i.x
  %. = select i1 %.not64, i8 48, i8 49
  store i8 %., ptr %i.y, align 1
  %.5 = add i32 %.4, 1                            ; 2 uses
  %i.z = lshr i64 %.05776, 1
  %i.aa = add nuw nsw i32 %.05279, 1              ; 2 uses
  %exitcond90.not = icmp eq i32 %i.aa, %i.a
  br i1 %exitcond90.not, label %.preheader.loopexit, label %.lr.ph80, !llvm.loop !6

.lr.ph86:                                         ; preds = %.preheader
  %i.ab = and i32 %.155.lcssa, 3
  %.not60 = icmp eq i32 %i.ab, 0
  br i1 %.not60, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph86
  %i.ac = sext i32 %.2.lcssa to i64
  %i.ad = getelementptr i8, ptr %i.g, i64 %i.ac
  store i8 32, ptr %i.ad, align 1
  %i.ae = add i32 %.2.lcssa, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph86
  %.7 = phi i32 [ %.2.lcssa, %.lr.ph86 ], [ %i.ae, %bb.h ] ; 3 uses
  %i.af = sext i32 %.7 to i64
  %i.ag = getelementptr i8, ptr %i.g, i64 %i.af
  store i8 46, ptr %i.ag, align 1
  %i.ah = add i32 %.7, 1                          ; 2 uses
  %i.ai = add nsw i32 %.155.lcssa, 1              ; 2 uses
  %i.aj = and i32 %i.ai, 7
  %.not58 = icmp eq i32 %i.aj, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph86.1

.lr.ph86.1:                                       ; preds = %bb.i
  %i.ak = and i32 %i.ai, 3
  %.not60.1 = icmp eq i32 %i.ak, 0
  br i1 %.not60.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph86.1
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr i8, ptr %i.g, i64 %i.al
  store i8 32, ptr %i.am, align 1
  %i.an = add i32 %.7, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph86.1
  %.7.1 = phi i32 [ %i.ah, %.lr.ph86.1 ], [ %i.an, %bb.j ] ; 3 uses
  %i.ao = sext i32 %.7.1 to i64
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.ao
  store i8 46, ptr %i.ap, align 1
  %i.aq = add i32 %.7.1, 1                        ; 2 uses
  %i.ar = add nsw i32 %.155.lcssa, 2              ; 2 uses
  %i.as = and i32 %i.ar, 7
  %.not58.1 = icmp eq i32 %i.as, 0
  br i1 %.not58.1, label %._crit_edge, label %.lr.ph86.2

.lr.ph86.2:                                       ; preds = %bb.k
  %i.at = and i32 %i.ar, 3
  %.not60.2 = icmp eq i32 %i.at, 0
  br i1 %.not60.2, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph86.2
  %i.au = sext i32 %i.aq to i64
  %i.av = getelementptr i8, ptr %i.g, i64 %i.au
  store i8 32, ptr %i.av, align 1
  %i.aw = add i32 %.7.1, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph86.2
  %.7.2 = phi i32 [ %i.aq, %.lr.ph86.2 ], [ %i.aw, %bb.l ] ; 3 uses
  %i.ax = sext i32 %.7.2 to i64
  %i.ay = getelementptr i8, ptr %i.g, i64 %i.ax
  store i8 46, ptr %i.ay, align 1
  %i.az = add i32 %.7.2, 1                        ; 2 uses
  %i.ba = add nsw i32 %.155.lcssa, 3              ; 2 uses
  %i.bb = and i32 %i.ba, 7
  %.not58.2 = icmp eq i32 %i.bb, 0
  br i1 %.not58.2, label %._crit_edge, label %.lr.ph86.3

.lr.ph86.3:                                       ; preds = %bb.m
  %i.bc = and i32 %i.ba, 3
  %.not60.3 = icmp eq i32 %i.bc, 0
  br i1 %.not60.3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph86.3
  %i.bd = sext i32 %i.az to i64
  %i.be = getelementptr i8, ptr %i.g, i64 %i.bd
  store i8 32, ptr %i.be, align 1
  %i.bf = add i32 %.7.2, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph86.3
  %.7.3 = phi i32 [ %i.az, %.lr.ph86.3 ], [ %i.bf, %bb.n ] ; 3 uses
  %i.bg = sext i32 %.7.3 to i64
  %i.bh = getelementptr i8, ptr %i.g, i64 %i.bg
  store i8 46, ptr %i.bh, align 1
  %i.bi = add i32 %.7.3, 1                        ; 2 uses
  %i.bj = and i32 %.155.lcssa, 7
  %.not58.3 = icmp eq i32 %i.bj, 4
  br i1 %.not58.3, label %._crit_edge, label %.lr.ph86.4

.lr.ph86.4:                                       ; preds = %bb.o
  %i.bk = and i32 %.155.lcssa, 3
  %.not60.4 = icmp eq i32 %i.bk, 0
  br i1 %.not60.4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph86.4
  %i.bl = sext i32 %i.bi to i64
  %i.bm = getelementptr i8, ptr %i.g, i64 %i.bl
  store i8 32, ptr %i.bm, align 1
  %i.bn = add i32 %.7.3, 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph86.4
  %.7.4 = phi i32 [ %i.bi, %.lr.ph86.4 ], [ %i.bn, %bb.p ] ; 3 uses
  %i.bo = sext i32 %.7.4 to i64
  %i.bp = getelementptr i8, ptr %i.g, i64 %i.bo
  store i8 46, ptr %i.bp, align 1
  %i.bq = add i32 %.7.4, 1                        ; 2 uses
  %i.br = add nsw i32 %.155.lcssa, 5              ; 2 uses
  %i.bs = and i32 %i.br, 7
  %.not58.4 = icmp eq i32 %i.bs, 0
  br i1 %.not58.4, label %._crit_edge, label %.lr.ph86.5

.lr.ph86.5:                                       ; preds = %bb.q
  %i.bt = and i32 %i.br, 3
  %.not60.5 = icmp eq i32 %i.bt, 0
  br i1 %.not60.5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph86.5
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr i8, ptr %i.g, i64 %i.bu
  store i8 32, ptr %i.bv, align 1
  %i.bw = add i32 %.7.4, 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph86.5
  %.7.5 = phi i32 [ %i.bq, %.lr.ph86.5 ], [ %i.bw, %bb.r ] ; 3 uses
  %i.bx = sext i32 %.7.5 to i64
  %i.by = getelementptr i8, ptr %i.g, i64 %i.bx
  store i8 46, ptr %i.by, align 1
  %i.bz = add i32 %.7.5, 1                        ; 2 uses
  %i.ca = add nsw i32 %.155.lcssa, 6              ; 2 uses
  %i.cb = and i32 %i.ca, 7
  %.not58.5 = icmp eq i32 %i.cb, 0
  br i1 %.not58.5, label %._crit_edge, label %.lr.ph86.6

.lr.ph86.6:                                       ; preds = %bb.s
  %i.cc = and i32 %i.ca, 3
  %.not60.6 = icmp eq i32 %i.cc, 0
  br i1 %.not60.6, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph86.6
  %i.cd = sext i32 %i.bz to i64
  %i.ce = getelementptr i8, ptr %i.g, i64 %i.cd
  store i8 32, ptr %i.ce, align 1
  %i.cf = add i32 %.7.5, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph86.6
  %.7.6 = phi i32 [ %i.bz, %.lr.ph86.6 ], [ %i.cf, %bb.t ] ; 3 uses
  %i.cg = sext i32 %.7.6 to i64
  %i.ch = getelementptr i8, ptr %i.g, i64 %i.cg
  store i8 46, ptr %i.ch, align 1
  %i.ci = add i32 %.7.6, 1                        ; 2 uses
  %i.cj = add nsw i32 %.155.lcssa, 7              ; 2 uses
  %i.ck = and i32 %i.cj, 7
  %.not58.6 = icmp eq i32 %i.ck, 0
  br i1 %.not58.6, label %._crit_edge, label %.lr.ph86.7

.lr.ph86.7:                                       ; preds = %bb.u
  %i.cl = and i32 %i.cj, 3
  %.not60.7 = icmp eq i32 %i.cl, 0
  br i1 %.not60.7, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph86.7
  %i.cm = sext i32 %i.ci to i64
  %i.cn = getelementptr i8, ptr %i.g, i64 %i.cm
  store i8 32, ptr %i.cn, align 1
  %i.co = add i32 %.7.6, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph86.7
  %.7.7 = phi i32 [ %i.ci, %.lr.ph86.7 ], [ %i.co, %bb.v ]
  %i.cp = sext i32 %.7.7 to i64
  %i.cq = getelementptr i8, ptr %i.g, i64 %i.cp
  store i8 46, ptr %i.cq, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %bb.u, %bb.w, %.preheader
  ret ptr %i.g
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @guid_to_str(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(37) ptr @wmem_alloc(ptr noundef %0, i64 noundef 37) #10 ; 2 uses
  %i.b = load i32, ptr %1, align 4
  %i.c = tail call ptr @dword_to_hex(ptr noundef %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1
  store i8 45, ptr %i.c, align 1
  %i.e = getelementptr i8, ptr %1, i64 4
  %i.f = load i16, ptr %i.e, align 4
  %i.g = tail call ptr @word_to_hex(ptr noundef %i.d, i16 noundef zeroext %i.f) ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 1
  store i8 45, ptr %i.g, align 1
  %i.i = getelementptr i8, ptr %1, i64 6
  %i.j = load i16, ptr %i.i, align 2
  %i.k = tail call ptr @word_to_hex(ptr noundef %i.h, i16 noundef zeroext %i.j) ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 1
  store i8 45, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = tail call ptr @bytes_to_hexstr(ptr noundef %i.l, ptr noundef %i.m, i64 noundef 2) ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  store i8 45, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %1, i64 10
  %i.q = tail call ptr @bytes_to_hexstr(ptr noundef %i.o, ptr noundef %i.p, i64 noundef 6)
  store i8 0, ptr %i.q, align 1
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @guid_to_str_buf(ptr noundef %0, ptr noundef returned %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 37
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i64 @g_strlcpy(ptr noundef %1, ptr noundef nonnull @.str.10, i64 noundef %i.b) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = tail call ptr @dword_to_hex(ptr noundef %1, i32 noundef %i.d) ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 1
  store i8 45, ptr %i.e, align 1
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i16, ptr %i.g, align 4
  %i.i = tail call ptr @word_to_hex(ptr noundef %i.f, i16 noundef zeroext %i.h) ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 1
  store i8 45, ptr %i.i, align 1
  %i.k = getelementptr i8, ptr %0, i64 6
  %i.l = load i16, ptr %i.k, align 2
  %i.m = tail call ptr @word_to_hex(ptr noundef %i.j, i16 noundef zeroext %i.l) ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 1
  store i8 45, ptr %i.m, align 1
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = tail call ptr @bytes_to_hexstr(ptr noundef %i.n, ptr noundef %i.o, i64 noundef 2) ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 1
  store i8 45, ptr %i.p, align 1
  %i.r = getelementptr i8, ptr %0, i64 10
  %i.s = tail call ptr @bytes_to_hexstr(ptr noundef %i.q, ptr noundef %i.r, i64 noundef 6)
  store i8 0, ptr %i.s, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @dword_to_hex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @word_to_hex(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @bytes_to_hexstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef nonnull ptr @port_type_to_str(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %0, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.port_type_to_str, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.24, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @gmtime(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @localtime(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { allocsize(1) }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_0
