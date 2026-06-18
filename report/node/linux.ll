inline.NumInlined: 107
inline.NumDeleted: 39
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.uv__io_uring_params = type { i32, i32, i32, i32, i32, i32, [4 x i32], %struct.uv__io_sqring_offsets, %struct.uv__io_cqring_offsets }
%struct.uv__io_sqring_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.uv__io_cqring_offsets = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { ptr }
%struct.watcher_list = type { %struct.anon.13, %struct.uv__queue, i32, ptr, i32 }
%struct.anon.13 = type { ptr, ptr, ptr, i32 }
%struct.uv__queue = type { ptr, ptr }
%struct.timespec = type { i64, i64 }
%struct.uv__invalidate = type { ptr, ptr, i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.cpu = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }

@uv__kernel_version.cached_version = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"/proc/version_signature\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Ubuntu %*s %u.%u.%u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Debian \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Debian %u.%u.%u\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%u.%u.%u\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"timeout >= -1\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"../../deps/uv/src/unix/linux.c\00", align 1
@__PRETTY_FUNCTION__.uv__io_poll = private unnamed_addr constant [35 x i8] c"void uv__io_poll(uv_loop_t *, int)\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"op == EPOLL_CTL_ADD\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"errno == EEXIST\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"errno == EINTR\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"timeout != -1\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"fd >= 0\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"(unsigned) fd < loop->nwatchers\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"timeout > 0\00", align 1
@uv__hrtime.fast_clock_id = internal unnamed_addr global i64 -1, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"/proc/self/stat\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"/proc/stat\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"cpu%u %llu %llu %llu %llu %llu %llu\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"processor\09: %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"/sys/devices/system/cpu/cpu%u/cpufreq/scaling_cur_freq\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"MemAvailable:\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"MemTotal:\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"/proc/self/cgroup\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"/proc/loadavg\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"w != NULL\00", align 1
@__PRETTY_FUNCTION__.uv_fs_event_stop = private unnamed_addr constant [38 x i8] c"int uv_fs_event_stop(uv_fs_event_t *)\00", align 1
@uv__use_io_uring.use_io_uring = internal unnamed_addr global i32 0, align 4
@.str.34 = private unnamed_addr constant [16 x i8] c"UV_USE_IO_URING\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"libuv: io_uring_enter(wakeup)\00", align 1
@__PRETTY_FUNCTION__.uv__epoll_ctl_prep = private unnamed_addr constant [108 x i8] c"void uv__epoll_ctl_prep(int, struct uv__iou *, struct epoll_event (*)[256], int, int, struct epoll_event *)\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"ctl->ringfd != -1\00", align 1
@__PRETTY_FUNCTION__.uv__epoll_ctl_flush = private unnamed_addr constant [77 x i8] c"void uv__epoll_ctl_flush(int, struct uv__iou *, struct epoll_event (*)[256])\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"*ctl->sqhead != *ctl->sqtail\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"libuv: io_uring_enter(getevents)\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"*ctl->sqhead == *ctl->sqtail\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"req->type == UV_FS\00", align 1
@__PRETTY_FUNCTION__.uv__poll_io_uring = private unnamed_addr constant [54 x i8] c"void uv__poll_io_uring(uv_loop_t *, struct uv__iou *)\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"uv__has_active_reqs(loop)\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"%lu kB\00", align 1
@.str.45 = private unnamed_addr constant [54 x i8] c"/sys/fs/cgroup/memory/%.*s/memory.soft_limit_in_bytes\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"/sys/fs/cgroup/memory/%.*s/memory.limit_in_bytes\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"/sys/fs/cgroup/memory/memory.soft_limit_in_bytes\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"/sys/fs/cgroup/memory/memory.limit_in_bytes\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c":memory:\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"/sys/fs/cgroup/%.*s/memory.max\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"/sys/fs/cgroup/%.*s/memory.high\00", align 1
@.str.54 = private unnamed_addr constant [49 x i8] c"/sys/fs/cgroup/memory/%.*s/memory.usage_in_bytes\00", align 1
@.str.55 = private unnamed_addr constant [44 x i8] c"/sys/fs/cgroup/memory/memory.usage_in_bytes\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"/sys/fs/cgroup/%.*s/memory.current\00", align 1
@uv__get_cgroupv2_constrained_cpu.cgroup_mount = internal constant [15 x i8] c"/sys/fs/cgroup\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"%s/%.*s/cgroup.controllers\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"%s/%.*s\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"%s/cpu.max\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"%lld %lld\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"/sys/fs/cgroup/%.*s/cpu.cfs_quota_us\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"/sys/fs/cgroup/%.*s/cpu.cfs_period_us\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c":cpu,\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"tmp_path != NULL\00", align 1
@__PRETTY_FUNCTION__.uv__inotify_fork = private unnamed_addr constant [57 x i8] c"int uv__inotify_fork(uv_loop_t *, struct watcher_list *)\00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"errno == EAGAIN || errno == EWOULDBLOCK\00", align 1
@__PRETTY_FUNCTION__.uv__inotify_read = private unnamed_addr constant [61 x i8] c"void uv__inotify_read(uv_loop_t *, uv__io_t *, unsigned int)\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"size > 0\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @uv__kernel_version() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.utsname, align 1            ; 5 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.e = load atomic i32, ptr @uv__kernel_version.cached_version monotonic, align 4 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @uv__slurp(ptr noundef nonnull @.str, ptr noundef nonnull %i.d, i64 noundef 256) #16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = call i32 @uname(ptr noundef nonnull %0) #16
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 195
  %i.m = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) @.str.2) #17 ; 2 uses
  %.not12 = icmp eq ptr %i.m, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.q = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %.not13 = icmp eq i32 %i.q, 3
  br i1 %.not13, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.a, align 4
  %i.s = icmp eq i32 %i.r, 2
  %i.t = load i32, ptr %i.b, align 4
  %i.u = icmp eq i32 %i.t, 6
  %or.cond = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.c, align 4              ; 3 uses
  %i.w = icmp ugt i32 %i.v, 59
  br i1 %i.w, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp samesign ugt i32 %i.v, 39
  br i1 %i.x, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i
  %.sink = phi i32 [ 4, %bb.i ], [ 3, %bb.j ]
  %.sink17 = phi i32 [ -60, %bb.i ], [ -40, %bb.j ]
  store i32 %.sink, ptr %i.a, align 4
  %i.y = add i32 %i.v, %.sink17
  store i32 %i.y, ptr %i.b, align 4
  store i32 0, ptr %i.c, align 4
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.h, %bb.j, %bb.f, %bb.c
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = shl i32 %i.z, 16
  %i.ab = load i32, ptr %i.b, align 4
  %i.ac = shl i32 %i.ab, 8
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = load i32, ptr %i.c, align 4
  %i.af = add i32 %i.ad, %i.ae                    ; 2 uses
  store atomic i32 %i.af, ptr @uv__kernel_version.cached_version monotonic, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.d, %bb.a, %bb.k
  %.0 = phi i32 [ 0, %bb.d ], [ %i.af, %bb.k ], [ %i.e, %bb.a ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @uv__slurp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @uname(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i64 @uv__fs_copy_file_range(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 (i64, ...) @syscall(i64 noundef 326, i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #16
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @uv__statx(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 (i64, ...) @syscall(i64 noundef 332, i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #16
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i64 @uv__getrandom(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 (i64, ...) @syscall(i64 noundef 318, ptr noundef %0, i64 noundef %1, i32 noundef %2) #16
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @uv__io_uring_setup(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 (i64, ...) @syscall(i64 noundef 425, i32 noundef %0, ptr noundef %1) #16
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @uv__io_uring_enter(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 (i64, ...) @syscall(i64 noundef 426, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, i64 noundef 0) #16
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @uv__io_uring_register(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@uv_interface_addresses:bb.a
  %i.bw = load ptr, ptr %i.bg, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.266105, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bx, ptr noundef nonnull align 4 dereferenceable(6) %i.by, i64 6, i1 false)
  %.pre = load i32, ptr %1, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %i.bz = phi i32 [ %i.bo, %bb.t ], [ %.pre, %bb.u ], [ %i.bo, %bb.s ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.266105, i64 80
  %i.cb = add nuw nsw i32 %.058106, 1             ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %bb.s, label %uv__ifaddr_exclude.exit83.thread, !llvm.loop !35

uv__ifaddr_exclude.exit83.thread:                 ; preds = %bb.v, %bb.r, %bb.q, %.lr.ph112, %uv__ifaddr_exclude.exit83
  %.2 = load ptr, ptr %.2111, align 8             ; 2 uses
  %.not72 = icmp eq ptr %.2, null
  br i1 %.not72, label %._crit_edge113, label %.lr.ph112, !llvm.loop !36

._crit_edge113:                                   ; preds = %uv__ifaddr_exclude.exit83.thread, %bb.h, %.preheader
  %i.cd = phi ptr [ null, %bb.h ], [ null, %.preheader ], [ %.2109.pre, %uv__ifaddr_exclude.exit83.thread ]
  call void @freeifaddrs(ptr noundef %i.cd) #16
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge113, %bb.g, %bb.e, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.e ], [ -12, %bb.g ], [ 0, %._crit_edge113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getifaddrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @freeifaddrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uv_free_interface_addresses(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @uv__free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @uv__set_process_title(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (i32, ...) @prctl(i32 noundef 15, ptr noundef %0) #16 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @uv_get_free_memory() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %0 = alloca %struct.sysinfo, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = call i32 @uv__slurp(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.b, i64 noundef 4096) #16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %uv__read_proc_meminfo.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.27) #17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %uv__read_proc_meminfo.exit.thread, label %uv__read_proc_meminfo.exit

uv__read_proc_meminfo.exit.thread:                ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.c

uv__read_proc_meminfo.exit:                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i64 0, ptr %i.a, align 8
  %i.g = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8
  %i.i = shl i64 %i.h, 10                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %uv__read_proc_meminfo.exit.thread, %uv__read_proc_meminfo.exit
  %i.j = call i32 @sysinfo(ptr noundef nonnull %0) #16
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = mul i64 %i.m, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %uv__read_proc_meminfo.exit, %bb.d
  %.0 = phi i64 [ %i.i, %uv__read_proc_meminfo.exit ], [ %i.q, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @sysinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @uv_get_total_memory() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %0 = alloca %struct.sysinfo, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = call i32 @uv__slurp(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.b, i64 noundef 4096) #16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %uv__read_proc_meminfo.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.28) #17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %uv__read_proc_meminfo.exit.thread, label %uv__read_proc_meminfo.exit

uv__read_proc_meminfo.exit.thread:                ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.c

uv__read_proc_meminfo.exit:                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i64 0, ptr %i.a, align 8
  %i.g = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8
  %i.i = shl i64 %i.h, 10                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %uv__read_proc_meminfo.exit.thread, %uv__read_proc_meminfo.exit
  %i.j = call i32 @sysinfo(ptr noundef nonnull %0) #16
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = mul i64 %i.m, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %uv__read_proc_meminfo.exit, %bb.d
  %.0 = phi i64 [ %i.i, %uv__read_proc_meminfo.exit ], [ %i.q, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @uv_get_constrained_memory() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 @uv__slurp(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, i64 noundef 1024) #16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc i64 @uv__get_cgroup_constrained_memory(ptr noundef %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @uv__get_cgroup_constrained_memory(ptr noundef nonnull align 1 dereferenceable(1024) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [4097 x i8], align 16             ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca [32 x i8], align 16               ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca [32 x i8], align 16               ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca [32 x i8], align 16               ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca [4097 x i8], align 16             ; 6 uses
  %1 = load i32, ptr %0, align 1
  %2 = icmp ne i32 %1, 792345136
  %3 = zext i1 %2 to i32
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  %i.o = tail call ptr @strchr(ptr noundef nonnull readonly align 1 dereferenceable(1024) %0, i32 noundef 58) #17 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.o, null
  br i1 %.not17.i.i, label %uv__cgroup1_find_memory_controller.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.018.i.i = phi ptr [ %i.r, %bb.d ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.018.i.i, ptr noundef nonnull dereferenceable(9) @.str.49, i64 noundef 8) #17
  %.not13.i.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.018.i.i, i32 noundef 10) #17 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.q, null
  br i1 %.not14.i.i, label %uv__cgroup1_find_memory_controller.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.q, i32 noundef 58) #17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %uv__cgroup1_find_memory_controller.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !37

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 9 ; 3 uses
  %i.t = tail call i64 @strcspn(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.23) #17
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 4097, ptr noundef nonnull @.str.45, i32 noundef %i.u, ptr noundef nonnull %i.s) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8
  %i.w = call i32 @uv__slurp(ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, i64 noundef 32) #16
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %uv__read_uint64.exit.i

bb.f:                                             ; preds = %bb.e
  %i.y = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.m) #16
  %.not.i17.i = icmp eq i32 %i.y, 1
  br i1 %.not.i17.i, label %uv__read_uint64.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.l, align 16
  %i.aa = xor i32 %i.z, 175661421
  %i.ab = getelementptr i8, ptr %i.l, i64 4
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or i32 %i.aa, %i.ad
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %uv__read_uint64.exit.i

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.m, align 8
  br label %uv__read_uint64.exit.i

uv__read_uint64.exit.i:                           ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.ai = load i64, ptr %i.m, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 4097, ptr noundef nonnull @.str.46, i32 noundef %i.u, ptr noundef nonnull %i.s) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8
  %i.ak = call i32 @uv__slurp(ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, i64 noundef 32) #16
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %uv__read_uint64.exit20.i

bb.i:                                             ; preds = %uv__read_uint64.exit.i
  %i.am = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.k) #16
  %.not.i18.i = icmp eq i32 %i.am, 1
  br i1 %.not.i18.i, label %uv__read_uint64.exit20.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.j, align 16
  %i.ao = xor i32 %i.an, 175661421
  %i.ap = getelementptr i8, ptr %i.j, i64 4
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = zext i8 %i.aq to i32
  %i.as = or i32 %i.ao, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %uv__read_uint64.exit20.i

bb.k:                                             ; preds = %bb.j
  store i64 -1, ptr %i.k, align 8
  br label %uv__read_uint64.exit20.i

uv__read_uint64.exit20.i:                         ; preds = %bb.k, %bb.j, %bb.i, %uv__read_uint64.exit.i
  %i.aw = load i64, ptr %i.k, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  %.not15.i = icmp eq i64 %i.ai, 0
  %.not16.i = icmp eq i64 %i.aw, 0
  %or.cond.i = select i1 %.not15.i, i1 true, i1 %.not16.i
  br i1 %or.cond.i, label %uv__cgroup1_find_memory_controller.exit.thread.i, label %uv__get_cgroup1_memory_limits.exit

uv__cgroup1_find_memory_controller.exit.thread.i: ; preds = %bb.d, %bb.c, %uv__read_uint64.exit20.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store i64 0, ptr %i.i, align 8
  %i.ax = call i32 @uv__slurp(ptr noundef nonnull @.str.47, ptr noundef nonnull %i.h, i64 noundef 32) #16
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %uv__read_uint64.exit23.i

bb.l:                                             ; preds = %uv__cgroup1_find_memory_controller.exit.thread.i
  %i.az = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.i) #16
  %.not.i21.i = icmp eq i32 %i.az, 1
  br i1 %.not.i21.i, label %uv__read_uint64.exit23.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load i32, ptr %i.h, align 16
  %i.bb = xor i32 %i.ba, 175661421
  %i.bc = getelementptr i8, ptr %i.h, i64 4
  %i.bd = load i8, ptr %i.bc, align 4
  %i.be = zext i8 %i.bd to i32
  %i.bf = or i32 %i.bb, %i.be
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %uv__read_uint64.exit23.i

bb.n:                                             ; preds = %bb.m
  store i64 -1, ptr %i.i, align 8
  br label %uv__read_uint64.exit23.i

uv__read_uint64.exit23.i:                         ; preds = %bb.n, %bb.m, %bb.l, %uv__cgroup1_find_memory_controller.exit.thread.i
  %i.bj = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i64 0, ptr %i.g, align 8
  %i.bk = call i32 @uv__slurp(ptr noundef nonnull @.str.48, ptr noundef nonnull %i.f, i64 noundef 32) #16
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %uv__read_uint64.exit26.i

bb.o:                                             ; preds = %uv__read_uint64.exit23.i
  %i.bm = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.g) #16
  %.not.i24.i = icmp eq i32 %i.bm, 1
  br i1 %.not.i24.i, label %uv__read_uint64.exit26.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load i32, ptr %i.f, align 16
  %i.bo = xor i32 %i.bn, 175661421
  %i.bp = getelementptr i8, ptr %i.f, i64 4
  %i.bq = load i8, ptr %i.bp, align 4
  %i.br = zext i8 %i.bq to i32
  %i.bs = or i32 %i.bo, %i.br
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.q, label %uv__read_uint64.exit26.i

bb.q:                                             ; preds = %bb.p
  store i64 -1, ptr %i.g, align 8
  br label %uv__read_uint64.exit26.i

uv__read_uint64.exit26.i:                         ; preds = %bb.q, %bb.p, %bb.o, %uv__read_uint64.exit23.i
  %i.bw = load i64, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %uv__get_cgroup1_memory_limits.exit

uv__get_cgroup1_memory_limits.exit:               ; preds = %uv__read_uint64.exit26.i, %uv__read_uint64.exit20.i
  %.115 = phi i64 [ %i.bj, %uv__read_uint64.exit26.i ], [ %i.ai, %uv__read_uint64.exit20.i ] ; 2 uses
  %.1 = phi i64 [ %i.bw, %uv__read_uint64.exit26.i ], [ %i.aw, %uv__read_uint64.exit20.i ] ; 2 uses
  %i.bx = call i64 @sysconf(i32 noundef 30) #16
  %i.by = sub i64 0, %i.bx
  %i.bz = and i64 %i.by, 9223372036854775807      ; 2 uses
  %i.ca = icmp eq i64 %.115, %i.bz
  %spec.select = select i1 %i.ca, i64 -1, i64 %.115
  %i.cb = icmp eq i64 %.1, %i.bz
  %.2 = select i1 %i.cb, i64 -1, i64 %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  br label %bb.y

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.cd = tail call i64 @strcspn(ptr noundef nonnull %i.cc, ptr noundef nonnull @.str.23) #17
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 4097, ptr noundef nonnull @.str.52, i32 noundef %i.ce, ptr noundef nonnull %i.cc) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 0, ptr %i.d, align 8
  %i.cg = call i32 @uv__slurp(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i64 noundef 32) #16
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.s, label %uv__read_uint64.exit.i6

bb.s:                                             ; preds = %bb.r
  %i.ci = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.d) #16
  %.not.i.i7 = icmp eq i32 %i.ci, 1
  br i1 %.not.i.i7, label %uv__read_uint64.exit.i6, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = load i32, ptr %i.c, align 16
  %i.ck = xor i32 %i.cj, 175661421
end_hunk_1
