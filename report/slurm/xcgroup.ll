Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/xcgroup?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cgroup_conf_t = type { float, float, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, ptr, i8, i8, float, float, i64, i64, i8, i64 }
%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct.xcgroup_t = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@slurm_cgroup_conf = external local_unnamed_addr global %struct.cgroup_conf_t, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"cgroup namespace '%s' not mounted. aborting\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"unable to create cgroup ns directory '%s' : do not start with '/'\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"unable to create cgroup ns required directory '%s'\00", align 1
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"%s: %s: CGROUP: unable to create cgroup ns directory '%s' : %m\00", align 1
@plugin_type = external constant [0 x i8], align 1
@__func__.xcgroup_ns_mount = private unnamed_addr constant [17 x i8] c"xcgroup_ns_mount\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"unable to build cgroup options string\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"tasks\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"/proc/%u/cgroup\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"%s: %s: CGROUP: unable to build cgroup meta filepath for pid=%u : %m\00", align 1
@__func__.xcgroup_ns_find_by_pid = private unnamed_addr constant [23 x i8] c"xcgroup_ns_find_by_pid\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%s: %s: CGROUP: skipping cgroup subsys %s(%s)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.14 = private unnamed_addr constant [74 x i8] c"%s: %s: CGROUP: unable to build cgroup '%s' absolute path in ns '%s' : %m\00", align 1
@__func__.xcgroup_load = private unnamed_addr constant [13 x i8] c"xcgroup_load\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"%s: %s: CGROUP: unable to get cgroup '%s' entry '%s' properties: %m\00", align 1
@.str.16 = private unnamed_addr constant [74 x i8] c"%s: %s: CGROUP: unable to build filepath for '%s' and parameter '%s' : %m\00", align 1
@__func__.xcgroup_get_uint32_param = private unnamed_addr constant [25 x i8] c"xcgroup_get_uint32_param\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s: %s: CGROUP: unable to get parameter '%s' for '%s'\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"%s: %s: CGROUP: empty parameter '%s' for '%s'\00", align 1
@__func__.xcgroup_get_uint64_param = private unnamed_addr constant [25 x i8] c"xcgroup_get_uint64_param\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"cpuset.cpus\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"cpuset.mems\00", align 1
@.str.21 = private unnamed_addr constant [68 x i8] c"%s: %s: CGROUP: unable to get ancestor path for cpuset cg '%s' : %m\00", align 1
@__func__.xcgroup_cpuset_init = private unnamed_addr constant [20 x i8] c"xcgroup_cpuset_init\00", align 1
@.str.22 = private unnamed_addr constant [64 x i8] c"%s: %s: CGROUP: unable to load ancestor for cpuset cg '%s' : %m\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"%s: %s: CGROUP: assuming no cpuset cg support for '%s'\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"%s: %s: CGROUP: unable to write %s configuration (%s) for cpuset cg '%s'\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"unable to build slurm cgroup for ns %s: %m\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"%s: %s: slurm cgroup %s successfully created for ns %s\00", align 1
@__func__.xcgroup_create_slurm_cg = private unnamed_addr constant [24 x i8] c"xcgroup_create_slurm_cg\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"%s/uid_%u\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"%s: unable to build uid %u cgroup relative path : %m\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"%s/job_%u\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"%s: unable to build job %u cg relative path : %m\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"%s/step_%s\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"%s: unable to build %ps cg relative path : %m\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"%s: unable to create user %u cgroup\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"%s: unable to instantiate user %u cgroup\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"%s: unable to create job %u cgroup\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"%s: unable to instantiate job %u cgroup\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"%s: unable to create %ps cgroup\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"%s: unable to instantiate %ps cgroup\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xcgroup_ns_create(ptr noundef initializes((8, 32)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.xcgroup_t, align 8          ; 7 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 8), align 8
  %i.d = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str, ptr noundef %i.c, ptr noundef %2) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = tail call ptr @xstrdup(ptr noundef %1) #6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8
  %i.h = tail call ptr @xstrdup(ptr noundef %2) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.j = call i32 @common_cgroup_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #6
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %xcgroup_ns_is_available.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 @common_cgroup_get_param(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xcgroup_ns_is_available.exit, label %xcgroup_ns_is_available.exit.thread11

xcgroup_ns_is_available.exit.thread11:            ; preds = %bb.b
  call void @common_cgroup_destroy(ptr noundef nonnull %3) #6
  br label %xcgroup_ns_is_available.exit.thread

xcgroup_ns_is_available.exit:                     ; preds = %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.a) #6
  call void @common_cgroup_destroy(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

xcgroup_ns_is_available.exit.thread:              ; preds = %bb.a, %xcgroup_ns_is_available.exit.thread11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.m = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1, ptr noundef %2) #6 ; 0 uses
  call void @common_cgroup_ns_destroy(ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %xcgroup_ns_is_available.exit, %xcgroup_ns_is_available.exit.thread
  %.0 = phi i32 [ -1, %xcgroup_ns_is_available.exit.thread ], [ 0, %xcgroup_ns_is_available.exit ]
  ret i32 %.0
}

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #1

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @xcgroup_ns_is_available(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %1 = alloca %struct.xcgroup_t, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.c = call i32 @common_cgroup_create(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #6
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @common_cgroup_get_param(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @common_cgroup_destroy(ptr noundef nonnull %1) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.02 = phi i32 [ %.0, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.02
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #1

declare void @common_cgroup_ns_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xcgroup_ns_mount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = tail call i32 @umask(i32 noundef 18) #6  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 @mkdir(ptr noundef %i.e, i32 noundef 493) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.critedge40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #7     ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not30 = icmp eq i32 %i.h, 17
  br i1 %.not30, label %.critedge40, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.j = load i8, ptr %i.i, align 1
  %.not31 = icmp eq i8 %i.j, 47
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.i) #6 ; 0 uses
  %i.l = tail call i32 @umask(i32 noundef %i.c) #6 ; 0 uses
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @xstrdup(ptr noundef nonnull %i.i) #6 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = tail call ptr @xstrchr(ptr noundef nonnull %i.n, i32 noundef 47) #6 ; 2 uses
  %.not3242 = icmp eq ptr %i.o, null
  br i1 %.not3242, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %i.p = phi ptr [ %i.w, %bb.h ], [ %i.o, %bb.e ] ; 3 uses
  store i8 0, ptr %i.p, align 1
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.r = tail call i32 @mkdir(ptr noundef %i.q, i32 noundef 493) #6
  %.not37 = icmp eq i32 %i.r, 0
  br i1 %.not37, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.s = load i32, ptr %i.g, align 4
  %.not38 = icmp eq i32 %i.s, 17
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef %i.q) #6 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.b) #6
  %i.u = call i32 @umask(i32 noundef %i.c) #6     ; 0 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f, %.lr.ph
  store i8 47, ptr %i.p, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.w = tail call ptr @xstrchr(ptr noundef nonnull %i.v, i32 noundef 47) #6 ; 2 uses
  %.not32 = icmp eq ptr %i.w, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.h, %bb.e
  call void @slurm_xfree(ptr noundef nonnull %i.b) #6
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = call i32 @mkdir(ptr noundef %i.x, i32 noundef 493) #6
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.critedge40, label %.critedge

.critedge:                                        ; preds = %._crit_edge
  %.pr = load i32, ptr %i.g, align 4
  %.not34 = icmp eq i32 %.pr, 17
  br i1 %.not34, label %.critedge40, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ab = and i64 %i.aa, 36028797018963968
  %.not36 = icmp eq i64 %i.ab, 0
  br i1 %.not36, label %bb.l, label %bb.j

end_hunk_0
begin_hunk_1_@xcgroup_get_uint32_param:bb.a
  br i1 %i.r, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.t = and i64 %i.s, 36028797018963968
  %.not13 = icmp eq i64 %i.t, 0
  br i1 %.not13, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = call i32 @get_log_level() #6
  %i.v = icmp sgt i32 %i.u, 3
  br i1 %i.v, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.xcgroup_get_uint32_param, ptr noundef %1, ptr noundef %i.e) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = load i32, ptr %i.w, align 4
  store i32 %i.x, ptr %2, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.l, %bb.j, %bb.f, %bb.h, %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.b) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.n
  %.1 = phi i32 [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ %i.l, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1
}

declare i32 @common_file_read_uints(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @xcgroup_get_uint64_param(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str, ptr noundef %i.e, ptr noundef %1) #6
  %i.g = icmp sgt i32 %i.f, 4095
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.i = and i64 %i.h, 36028797018963968
  %.not15 = icmp eq i64 %i.i, 0
  br i1 %.not15, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @get_log_level() #6
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.xcgroup_get_uint64_param, ptr noundef %i.e, ptr noundef %1) #6
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.l = call i32 @common_file_read_uints(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 64) #6 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.n = and i64 %i.m, 36028797018963968
  %.not14 = icmp eq i64 %i.n, 0
  br i1 %.not14, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @get_log_level() #6
  %i.p = icmp sgt i32 %i.o, 3
  br i1 %i.p, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.xcgroup_get_uint64_param, ptr noundef %1, ptr noundef %i.e) #6
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.c, align 4
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.t = and i64 %i.s, 36028797018963968
  %.not13 = icmp eq i64 %i.t, 0
  br i1 %.not13, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = call i32 @get_log_level() #6
  %i.v = icmp sgt i32 %i.u, 3
  br i1 %i.v, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.xcgroup_get_uint64_param, ptr noundef %1, ptr noundef %i.e) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = load i64, ptr %i.w, align 8
  store i64 %i.x, ptr %2, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.l, %bb.j, %bb.f, %bb.h, %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.b) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.n
  %.1 = phi i32 [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ %i.l, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xcgroup_cpuset_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.xcgroup_t, align 8          ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @xstrdup(ptr noundef %i.e) #6 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8
  %i.g = tail call ptr @xstrrchr(ptr noundef %i.f, i32 noundef 47) #6 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.i = and i64 %i.h, 36028797018963968
  %.not22 = icmp eq i64 %i.i, 0
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @get_log_level() #6
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.xcgroup_cpuset_init, ptr noundef %i.m) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.c) #6
  br label %bb.y

bb.f:                                             ; preds = %bb.a
  store i8 0, ptr %i.g, align 1
  %i.n = load ptr, ptr %0, align 8
  %i.o = call i32 @xcgroup_load(ptr noundef %i.n, ptr noundef nonnull %1, ptr noundef %i.f)
  %.not23 = icmp eq i32 %i.o, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.q = and i64 %i.p, 36028797018963968
  %.not29 = icmp eq i64 %i.q, 0
  br i1 %.not29, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @get_log_level() #6
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.xcgroup_cpuset_init, ptr noundef %i.u) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.c) #6
  br label %bb.y

bb.k:                                             ; preds = %bb.f
  call void @slurm_xfree(ptr noundef nonnull %i.c) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.x
  %.sroa.idx = phi ptr [ @.str.19, %bb.k ], [ @.str.20, %bb.x ] ; 3 uses
  %.not44 = phi i1 [ true, %bb.k ], [ false, %bb.x ]
  %i.v = call i32 @common_cgroup_get_param(ptr noundef nonnull %1, ptr noundef nonnull %.sroa.idx, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %.not24 = icmp eq i32 %i.v, 0
  br i1 %.not24, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.x = and i64 %i.w, 36028797018963968
  %.not28 = icmp eq i64 %i.x, 0
  br i1 %.not28, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = call i32 @get_log_level() #6
  %i.z = icmp sgt i32 %i.y, 3
  br i1 %i.z, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.xcgroup_cpuset_init, ptr noundef %i.ab) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  call void @common_cgroup_destroy(ptr noundef nonnull %1) #6
  br label %bb.y

bb.q:                                             ; preds = %bb.l
  %i.ac = load i64, ptr %i.b, align 8             ; 2 uses
  %.not25 = icmp eq i64 %i.ac, 0
  br i1 %.not25, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  store i8 0, ptr %i.af, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = call i32 @common_cgroup_set_param(ptr noundef nonnull %0, ptr noundef nonnull %.sroa.idx, ptr noundef %i.ag) #6
  %.not26 = icmp eq i32 %i.ah, 0
  br i1 %.not26, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aj = and i64 %i.ai, 36028797018963968
  %.not27 = icmp eq i64 %i.aj, 0
  br i1 %.not27, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = call i32 @get_log_level() #6
  %i.al = icmp sgt i32 %i.ak, 3
  br i1 %i.al, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.xcgroup_cpuset_init, ptr noundef nonnull %.sroa.idx, ptr noundef %i.am, ptr noundef %i.ao) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  call void @common_cgroup_destroy(ptr noundef nonnull %1) #6
  call void @slurm_xfree(ptr noundef nonnull %i.a) #6
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  call void @slurm_xfree(ptr noundef nonnull %i.a) #6
  br i1 %.not44, label %bb.l, label %.critedge, !llvm.loop !12

.critedge:                                        ; preds = %bb.x
  call void @common_cgroup_destroy(ptr noundef nonnull %1) #6
  br label %bb.y

bb.y:                                             ; preds = %bb.p, %bb.w, %.critedge, %bb.j, %bb.e
  %.1 = phi i32 [ -1, %bb.j ], [ 0, %.critedge ], [ -1, %bb.e ], [ -1, %bb.w ], [ -1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1
}

declare ptr @xstrrchr(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @common_cgroup_set_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xcgroup_create_slurm_cg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 24), align 8
  %i.c = tail call ptr @xstrdup(ptr noundef %i.b) #6 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = tail call i32 @getuid() #6
  %i.e = tail call i32 @getgid() #6
  %i.f = tail call i32 @common_cgroup_create(ptr noundef %0, ptr noundef %1, ptr noundef %i.c, i32 noundef %i.d, i32 noundef %i.e) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @common_cgroup_instantiate(ptr noundef %1) #6
  %.not7 = icmp eq i32 %i.g, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.25, ptr noundef %i.i) #6 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 @get_log_level() #6
  %i.l = icmp sgt i32 %i.k, 6
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.26, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.xcgroup_create_slurm_cg, ptr noundef %i.c, ptr noundef %i.n) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.06 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.06
}

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #3

declare i32 @common_cgroup_instantiate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xcgroup_create_hierarchy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  %i.e = load i8, ptr %6, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %6, i64 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef %i.h, i32 noundef %i.j) #6
  %i.l = icmp sgt i32 %i.k, 4095
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.i, align 8
  %i.n = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.28, ptr noundef %0, i32 noundef %i.m) #6 ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load i8, ptr %4, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %4, i64 noundef 4096, ptr noundef nonnull @.str.29, ptr noundef nonnull %6, i32 noundef %i.r) #6
  %i.t = icmp sgt i32 %i.s, 4095
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.q, align 8
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.30, ptr noundef %0, i32 noundef %i.u) #6 ; 0 uses
  br label %bb.v

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.w = load i8, ptr %5, align 1
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.z = call ptr @log_build_step_id_str(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i32 noundef 64, i16 noundef zeroext 6) #6
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %5, i64 noundef 4096, ptr noundef nonnull @.str.31, ptr noundef nonnull %4, ptr noundef %i.z) #6
  %i.ab = icmp slt i32 %i.aa, 4096
  br i1 %i.ab, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.32, ptr noundef %0, ptr noundef nonnull %i.y) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.v

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.g
  %i.ad = call i32 @common_cgroup_create(ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0) #6
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.33, ptr noundef %0, i32 noundef %i.af) #6 ; 0 uses
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.ah = call i32 @common_cgroup_instantiate(ptr noundef nonnull %i.d) #6
  %.not62 = icmp eq i32 %i.ah, 0
  br i1 %.not62, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @common_cgroup_destroy(ptr noundef nonnull %i.d) #6
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.34, ptr noundef %0, i32 noundef %i.aj) #6 ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.al = call i32 @common_cgroup_create(ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0) #6
  %.not63 = icmp eq i32 %i.al, 0
  br i1 %.not63, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @common_cgroup_destroy(ptr noundef nonnull %i.d) #6
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.35, ptr noundef %0, i32 noundef %i.an) #6 ; 0 uses
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.ap = call i32 @common_cgroup_instantiate(ptr noundef nonnull %i.b) #6
  %.not64 = icmp eq i32 %i.ap, 0
  br i1 %.not64, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @common_cgroup_destroy(ptr noundef nonnull %i.d) #6
  call void @common_cgroup_destroy(ptr noundef nonnull %i.b) #6
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.36, ptr noundef %0, i32 noundef %i.ar) #6 ; 0 uses
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.au = load i32, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = call i32 @common_cgroup_create(ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %5, i32 noundef %i.au, i32 noundef %i.aw) #6
  %.not65 = icmp eq i32 %i.ax, 0
  br i1 %.not65, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @common_cgroup_destroy(ptr noundef nonnull %i.d) #6
  call void @common_cgroup_destroy(ptr noundef nonnull %i.b) #6
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.az = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.37, ptr noundef %0, ptr noundef nonnull %i.ay) #6 ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ba = call i32 @common_cgroup_instantiate(ptr noundef nonnull %i.c) #6
  %.not66 = icmp eq i32 %i.ba, 0
end_hunk_1
