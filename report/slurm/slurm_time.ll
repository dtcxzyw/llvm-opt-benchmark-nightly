Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurm_time?download=true
inline.NumInlined: 19
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec_ctime_str_t = type { [72 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.timeval = type { i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.timespec_diff_ns_t = type { %struct.timespec, i8 }

@slurm_ctime2.time_str = internal global [25 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"%a %b %d %T %Y\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: clock_gettime() failed: %s\00", align 1
@__func__.timespec_now = private unnamed_addr constant [13 x i8] c"timespec_now\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"now+INFINITE\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"INFINITE\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"now+\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-(\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%lud\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"%s%luh:%lum:%lus\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"%s%lums:%lu\CE\BCs:%luns\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c")\00", align 1
@__const.timespec_ctime_str.ret = private unnamed_addr constant %struct.timespec_ctime_str_t { [72 x i8] c"INVALID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 1

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noundef i64 @slurm_mktime(ptr nofree noundef captures(none) initializes((32, 36)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.a, align 8
  %i.b = tail call i64 @mktime(ptr noundef %0) #14
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @slurm_ctime2(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.tm, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = call ptr @localtime_r(ptr noundef %0, ptr noundef nonnull %1) #14 ; 0 uses
  %i.b = call i64 @strftime(ptr noundef nonnull @slurm_ctime2.time_str, i64 noundef 25, ptr noundef nonnull @.str, ptr noundef nonnull %1) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret ptr @slurm_ctime2.time_str
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @slurm_ctime2_r(ptr noundef %0, ptr noundef returned %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = call ptr @localtime_r(ptr noundef %0, ptr noundef nonnull %2) #14 ; 0 uses
  %i.b = call i64 @strftime(ptr noundef %1, i64 noundef 25, ptr noundef nonnull @.str, ptr noundef nonnull %2) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %1
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @slurm_delta_tv(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.timeval, align 16           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #14
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %2 = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %2, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load i64, ptr %1, align 16
  %i.d = sub nsw i64 %5, %i.b
  %i.e = load i64, ptr %4, align 8
  %i.f = load i64, ptr %3, align 8
  %i.g = sub i64 %i.e, %i.f
  %i.h = mul i64 %i.d, 1000000
  %i.i = add i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.j, %bb.d ], [ 0, %bb.c ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 5, 4) i32 @slurm_nanosleep(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.timespec, align 16          ; 7 uses
  %3 = alloca %struct.timespec, align 16          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 %0, ptr %2, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = zext i32 %1 to i64
  store i64 %i.b, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.c = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not4 = icmp eq i32 %i.e, 4
  br i1 %.not4, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x i64>, ptr %3, align 16
  store <2 x i64> %i.f, ptr %2, align 16
  %i.g = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %.0
}

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @print_date() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.tm, align 8                 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [25 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = tail call i64 @time(ptr noundef null) #14
  store i64 %i.c, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  %i.d = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %0) #14 ; 0 uses
  %i.e = call i64 @strftime(ptr noundef nonnull %i.b, i64 noundef 25, ptr noundef nonnull @.str, ptr noundef nonnull %0) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @timespec_now() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 3 uses
  %i.a = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %0) #14 ; 2 uses
  switch i32 %i.a, label %bb.c [
    i32 0, label %bb.d
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #15
  %i.c = load i32, ptr %i.b, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.d = call ptr @slurm_strerror(i32 noundef %.0) #14
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.timespec_now, ptr noundef %i.d) #16
  unreachable

bb.d:                                             ; preds = %bb.a
  %.fca.0.load = load i64, ptr %0, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #10

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @timespec_ctime(i64 %0, i64 %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = icmp eq ptr %3, null
  %i.b = icmp eq i64 %4, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %1, 0
  %i.d = icmp ne i64 %0, 0
  %or.cond4 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %3, align 1
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %0, -1
  br i1 %i.e, label %timespec_is_infinite.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = sdiv i64 %1, 1000000000
  %i.g = add nsw i64 %i.f, %0                     ; 7 uses
  %i.h = srem i64 %1, 1000000000                  ; 6 uses
  %i.i = icmp slt i64 %i.h, 0
  %i.j = icmp sgt i64 %i.g, 0
  %or.cond.i.i.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i, label %bb.f, label %timespec_is_infinite.exit

timespec_is_infinite.exit:                        ; preds = %bb.e
  %i.k = icmp sgt i64 %i.h, 0
  %i.l = icmp slt i64 %i.g, 0
  %or.cond5.i.i.i = select i1 %i.k, i1 %i.l, i1 false
  %i.m = zext i1 %or.cond5.i.i.i to i64
  %spec.select.i = add nsw i64 %i.g, %i.m
  %i.n = icmp eq i64 %spec.select.i, -1
  br i1 %i.n, label %timespec_is_infinite.exit.thread, label %timespec_is_infinite.exit.thread142

timespec_is_infinite.exit.thread:                 ; preds = %bb.d, %timespec_is_infinite.exit
  %i.o = select i1 %2, ptr @.str.4, ptr @.str.5
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.o) #14
  br label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i64 %i.g, -1
  %i.r = add nsw i64 %i.h, 1000000000
  br label %timespec_normalize.exit

timespec_is_infinite.exit.thread142:              ; preds = %timespec_is_infinite.exit
  %i.s = icmp sgt i64 %i.h, 0
  %i.t = icmp slt i64 %i.g, 0
  %or.cond5.i.i = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond5.i.i, label %bb.g, label %timespec_normalize.exit

bb.g:                                             ; preds = %timespec_is_infinite.exit.thread142
  %i.u = add nsw i64 %i.g, 1
  %i.v = sub nuw nsw i64 1000000000, %i.h
  br label %timespec_normalize.exit

timespec_normalize.exit:                          ; preds = %bb.f, %timespec_is_infinite.exit.thread142, %bb.g
  %.sroa.8.0.i.i = phi i64 [ %i.r, %bb.f ], [ %i.v, %bb.g ], [ %i.h, %timespec_is_infinite.exit.thread142 ] ; 6 uses
  %.sroa.0.0.i.i = phi i64 [ %i.q, %bb.f ], [ %i.u, %bb.g ], [ %i.g, %timespec_is_infinite.exit.thread142 ] ; 6 uses
  br i1 %2, label %bb.h, label %bb.u

bb.h:                                             ; preds = %timespec_normalize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.w = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %5) #14 ; 2 uses
  switch i32 %i.w, label %bb.j [
    i32 0, label %timespec_now.exit
    i32 -1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @__errno_location() #15
  %i.y = load i32, ptr %i.x, align 4
end_hunk_0
