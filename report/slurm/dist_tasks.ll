Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/dist_tasks?download=true
inline.NumInlined: 13
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }

@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str = private unnamed_addr constant [40 x i8] c"%s: %s: %pI CPU input mask for node: %s\00", align 1
@plugin_type = external constant [0 x i8], align 1
@__func__.batch_bind = private unnamed_addr constant [11 x i8] c"batch_bind\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: %s: %pI CPU final HW mask for node: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%pI allocated no CPUs\00", align 1
@lllp_distribution.only_one_thread_per_core = internal unnamed_addr global i32 -1, align 4
@conf = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not determine allocated CPUs\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Entire node must be allocated for %s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%s: %s: JobId=%u manual binding: %s\00", align 1
@__func__.lllp_distribution = private unnamed_addr constant [18 x i8] c"lllp_distribution\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"%s: %s: binding tasks:%d to nodes:%d sockets:%d:%d cores:%d:%d threads:%d\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"%s: %s: JobId=%u auto binding off: %s\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"%s: %s: JobId=%u %s auto binding: %s, dist %d\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"implicit\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%s: %s: JobId=%u binding: %s, dist %d\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"%s: %s: JobId=%u will use lllp_block\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"%s: %s: JobId=%u will use lllp_block because of SelectTypeParameters\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"%s: %s: JobId=%u will use lllp_cyclic because of SelectTypeParameters\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"JobId=%u failed to distribute tasks (bind_type:%s) - this should never happen\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"No list of CPU masks provided to --cpu-bind=mask_cpu:<list>\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"Failed to convert avail_mask into hex for CPU bind mask\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"Failed to convert cpu bind string into hex for CPU bind mask\00", align 1
@.str.21 = private unnamed_addr constant [68 x i8] c"CPU binding outside of job step allocation, allocated CPUs are: %s.\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"No list of CPU IDs provided to --cpu-bind=map_cpu:<list>\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"Failed to convert avail_mask into hex for CPU bind map\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"%s: %s: _task_layout_display_masks jobid [%u:%d] %s\00", align 1
@__func__._task_layout_display_masks = private unnamed_addr constant [27 x i8] c"_task_layout_display_masks\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"%s: missing node %s in job credential (%s)\00", align 1
@__func__._get_avail_map = private unnamed_addr constant [15 x i8] c"_get_avail_map\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"%s: %s: slurmctld s %u c %u; hw s %u c %u t %u\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"%s: %s: %ps core mask from slurmctld: %s\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"%s: %s: %ps CPU final mask for local node: %s\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"%s: %s: _task_layout_lllp_cyclic \00", align 1
@__func__._task_layout_lllp_cyclic = private unnamed_addr constant [25 x i8] c"_task_layout_lllp_cyclic\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"only %d bits in avail_map, threads_per_core requires %d!\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"only %d bits in avail_map for %d tasks!\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"%s: %s: reset cpus_per_task from %d to %d\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"dist_tasks.c\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"_task_layout_lllp_cyclic failure\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"%s: %s: allocation is full, oversubscribing\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"%s: %s: _task_layout_lllp_block \00", align 1
@__func__._task_layout_lllp_block = private unnamed_addr constant [24 x i8] c"_task_layout_lllp_block\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"_task_layout_lllp_block infinite loop\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"%s: %s: _lllp_map_abstract_masks\00", align 1
@__func__._lllp_map_abstract_masks = private unnamed_addr constant [25 x i8] c"_lllp_map_abstract_masks\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"can't go from %d -> %d since we only have %ld bits\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"%s: %s: wrapping index %u into block_map_size of %u\00", align 1
@__func__._block_map = private unnamed_addr constant [11 x i8] c"_block_map\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"%s: %s: %d %ld %d\00", align 1
@__func__._lllp_generate_cpu_bind = private unnamed_addr constant [24 x i8] c"_lllp_generate_cpu_bind\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"%s: %s: _lllp_generate_cpu_bind jobid [%u]: %s, %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @batch_bind(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 3 uses
  %i.c = alloca i16, align 2                      ; 3 uses
  %i.d = alloca i16, align 2                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call fastcc ptr @_get_avail_map(ptr noundef %i.f, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d) ; 5 uses
  store ptr %i.g, ptr %i.a, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @slurm_bit_set_count(ptr noundef nonnull %i.g) #9
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i16 256, ptr %i.j, align 8
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1520), align 8
  %i.l = and i32 %i.k, 1
  %.not14 = icmp eq i32 %i.l, 0
  %spec.store.select = select i1 %.not14, i16 256, i16 257
  store i16 %spec.store.select, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.m) #9
  %i.n = tail call ptr @slurm_bit_fmt_hexmask(ptr noundef nonnull %i.g) #9
  store ptr %i.n, ptr %i.m, align 8
  %i.o = tail call i32 @slurm_get_log_level() #9
  %i.p = icmp sgt i32 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = load ptr, ptr %i.m, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.batch_bind, ptr noundef nonnull %i.q, ptr noundef %i.r) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call fastcc void @_lllp_map_abstract_masks(i32 noundef 1, ptr noundef nonnull %i.a)
  tail call void @slurm_xfree(ptr noundef nonnull %i.m) #9
  %i.s = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.t = tail call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.s) #9
  store ptr %i.t, ptr %i.m, align 8
  %i.u = tail call i32 @slurm_get_log_level() #9
  %i.v = icmp sgt i32 %i.u, 2
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.x = load ptr, ptr %i.m, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.batch_bind, ptr noundef nonnull %i.w, ptr noundef %i.x) #9
  br label %bb.g

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.z = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.y) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f, %bb.e
  %i.aa = phi ptr [ %i.g, %.critedge ], [ %i.s, %bb.f ], [ %i.s, %bb.e ]
  %.not15 = icmp eq ptr %i.aa, null
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_get_avail_map(ptr noundef %0, ptr nofree noundef nonnull captures(none) initializes((0, 2)) %1, ptr nofree noundef nonnull captures(none) initializes((0, 2)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 2)) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = tail call ptr @slurm_cred_get_args(ptr noundef %0) #9 ; 9 uses
  %i.d = load ptr, ptr @conf, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4200
  %i.f = load i16, ptr %i.e, align 8
  store i16 %i.f, ptr %1, align 2
  %i.g = load ptr, ptr @conf, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4202
  %i.i = load i16, ptr %i.h, align 2
  store i16 %i.i, ptr %2, align 2
  %i.j = load ptr, ptr @conf, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4204
  %i.l = load i16, ptr %i.k, align 4
  store i16 %i.l, ptr %3, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr @conf, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4264
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 @nodelist_find(ptr noundef %i.n, ptr noundef %i.q) #9 ; 7 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp ugt i32 %i.r, %i.u
  br i1 %i.v, label %bb.c, label %4

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = load ptr, ptr @conf, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4264
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.m, align 8
  %i.aa = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__._get_avail_map, ptr noundef %i.y, ptr noundef %i.z) #9 ; 0 uses
  tail call void @slurm_cred_unlock_args(ptr noundef %0) #9
  br label %bb.p

4:                                                ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  br label %9

9:                                                ; preds = %._crit_edge.i, %4
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ -1, %4 ]
  %.026.i = phi i32 [ %.127.lcssa.i, %._crit_edge.i ], [ 0, %4 ]
  %.024.i = phi i32 [ %.125.lcssa.i, %._crit_edge.i ], [ 0, %4 ] ; 4 uses
  %.0.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ -1, %4 ] ; 8 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 6 uses
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv.next.i
  %11 = load i32, ptr %10, align 4                ; 3 uses
  %12 = icmp ne i32 %11, 0
  %13 = icmp slt i32 %.0.i, %i.r                  ; 2 uses
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %9
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds [2 x i8], ptr %15, i64 %indvars.iv.next.i
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %i.ab = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = mul nuw i32 %21, %18                      ; 5 uses
  %23 = xor i32 %.0.i, -1
  %24 = add i32 %i.r, %23
  %25 = freeze i32 %24
  %26 = add i32 %11, -1
  %umin = tail call i32 @llvm.umin.i32(i32 %25, i32 %26)
  %27 = add i32 %umin, 1                          ; 7 uses
  %min.iters.check = icmp ult i32 %27, 2
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check141 = icmp ult i32 %27, 16
  br i1 %min.iters.check141, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %28 = and i32 %27, 14
  %n.vec = and i32 %27, -16                       ; 6 uses
  %i.ac = add i32 %.0.i, %n.vec                   ; 3 uses
  %i.ad = mul i32 %n.vec, %22
  %29 = add i32 %.024.i, %i.ad                    ; 3 uses
  %i.ae = add nsw i32 %.0.i, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %30 = phi i32 [ %i.ae, %vector.ph ], [ %31, %vector.body ] ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %31 = add nsw i32 %30, 16
  %32 = icmp eq i32 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %ind.escape = sub i32 %29, %22
  %33 = add nsw i32 %30, 1
  %34 = icmp slt i32 %33, %i.r
  %cmp.n = icmp eq i32 %27, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %28, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.ac, %vec.epilog.iter.check ], [ %.0.i, %vector.main.loop.iter.check ]
  %n.vec144 = and i32 %27, -2                     ; 5 uses
  %35 = add i32 %.0.i, %n.vec144                  ; 2 uses
  %36 = mul i32 %n.vec144, %22
  %37 = add i32 %.024.i, %36                      ; 3 uses
  %38 = add nsw i32 %bc.resume.val, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index150 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ]
  %39 = phi i32 [ %38, %vec.epilog.ph ], [ %40, %vec.epilog.vector.body ] ; 2 uses
  %index.next152 = add nuw i32 %index150, 2       ; 2 uses
  %40 = add nsw i32 %39, 2
  %i.af = icmp eq i32 %index.next152, %n.vec144
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape154 = sub i32 %37, %22
  %41 = add nsw i32 %39, 1
  %42 = icmp slt i32 %41, %i.r
  %cmp.n155 = icmp eq i32 %27, %n.vec144
  br i1 %cmp.n155, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.131.i.ph = phi i32 [ %.0.i, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %35, %vec.epilog.middle.block ]
  %.02330.i.ph = phi i32 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec144, %vec.epilog.middle.block ]
  %.12529.i.ph = phi i32 [ %.024.i, %iter.check ], [ %29, %vec.epilog.iter.check ], [ %37, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.131.i = phi i32 [ %i.ah, %vec.epilog.scalar.ph ], [ %.131.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.02330.i = phi i32 [ %i.ai, %vec.epilog.scalar.ph ], [ %.02330.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.12529.i = phi i32 [ %i.ag, %vec.epilog.scalar.ph ], [ %.12529.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ag = add nuw nsw i32 %.12529.i, %22          ; 2 uses
  %i.ah = add nsw i32 %.131.i, 1                  ; 3 uses
  %i.ai = add nuw nsw i32 %.02330.i, 1            ; 2 uses
  %43 = icmp ult i32 %i.ai, %11
  %44 = icmp slt i32 %i.ah, %i.r                  ; 2 uses
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %vec.epilog.scalar.ph, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %9
  %.127.lcssa.i = phi i32 [ %.026.i, %9 ], [ %ind.escape154, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.12529.i, %vec.epilog.scalar.ph ] ; 2 uses
  %.125.lcssa.i = phi i32 [ %.024.i, %9 ], [ %37, %vec.epilog.middle.block ], [ %29, %middle.block ], [ %i.ag, %vec.epilog.scalar.ph ]
  %.1.lcssa.i = phi i32 [ %.0.i, %9 ], [ %35, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.ah, %vec.epilog.scalar.ph ]
  %.lcssa.i = phi i1 [ %13, %9 ], [ %42, %vec.epilog.middle.block ], [ %34, %middle.block ], [ %44, %vec.epilog.scalar.ph ]
  br i1 %.lcssa.i, label %9, label %_get_local_node_info.exit, !llvm.loop !13

_get_local_node_info.exit:                        ; preds = %._crit_edge.i
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds [2 x i8], ptr %46, i64 %indvars.iv.next.i
  %48 = load i16, ptr %47, align 2
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr inbounds [2 x i8], ptr %49, i64 %indvars.iv.next.i
  %51 = load i16, ptr %50, align 2
  %i.aj = tail call i32 @slurm_get_log_level() #9
  %i.ak = icmp sgt i32 %i.aj, 6
  %i.al = zext i16 %48 to i32                     ; 2 uses
  %i.am = zext i16 %51 to i32                     ; 2 uses
  br i1 %i.ak, label %bb.d, label %_get_local_node_info.exit._crit_edge

bb.d:                                             ; preds = %_get_local_node_info.exit
  %i.an = load i16, ptr %1, align 2
  %i.ao = zext i16 %i.an to i32
  %i.ap = load i16, ptr %2, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = load i16, ptr %3, align 2
  %i.as = zext i16 %i.ar to i32
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.26, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, i32 noundef %i.al, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.aq, i32 noundef %i.as) #9
  br label %_get_local_node_info.exit._crit_edge

_get_local_node_info.exit._crit_edge:             ; preds = %_get_local_node_info.exit, %bb.d
  %i.at = mul nuw nsw i32 %i.am, %i.al            ; 3 uses
  %i.au = load i16, ptr %1, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = load i16, ptr %2, align 2
  %i.ax = zext i16 %i.aw to i32
  %i.ay = mul nuw nsw i32 %i.ax, %i.av
  %. = tail call i32 @llvm.umin.i32(i32 %i.at, i32 %i.ay)
  %.mask = and i32 %., 65535                      ; 3 uses
  %i.az = zext nneg i32 %.mask to i64             ; 2 uses
  %i.ba = tail call ptr @slurm_bit_alloc(i64 noundef %i.az) #9 ; 5 uses
  store ptr %i.ba, ptr %i.a, align 8
  %i.bb = load ptr, ptr @conf, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4232
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = zext i16 %i.bd to i64
  %i.bf = tail call ptr @slurm_bit_alloc(i64 noundef %i.be) #9 ; 4 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_get_local_node_info.exit._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.bh = phi i32 [ 0, %.lr.ph ], [ %i.bp, %bb.g ] ; 2 uses
  %.07298 = phi i16 [ 0, %.lr.ph ], [ %i.bo, %bb.g ]
  %i.bi = load ptr, ptr %i.bg, align 8
  %i.bj = add nuw nsw i32 %i.bh, %.127.lcssa.i
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = tail call i32 @slurm_bit_test(ptr noundef %i.bi, i64 noundef %i.bk) #9
  %.not85 = icmp eq i32 %i.bl, 0
  br i1 %.not85, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = urem i32 %i.bh, %.mask
  %i.bn = zext nneg i32 %i.bm to i64
  tail call void @slurm_bit_set(ptr noundef %i.ba, i64 noundef %i.bn) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bo = add i16 %.07298, 1                      ; 2 uses
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = icmp samesign ugt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.e, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.g, %_get_local_node_info.exit._crit_edge
  %i.br = tail call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.ba) #9 ; 2 uses
  store ptr %i.br, ptr %i.b, align 8
  %i.bs = tail call i32 @slurm_get_log_level() #9
  %i.bt = icmp sgt i32 %i.bs, 6
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.27, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, ptr noundef nonnull %i.c, ptr noundef %i.br) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  %.not121 = icmp eq i32 %.mask, 0
  br i1 %.not121, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.i, %.loopexit95
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit95 ], [ 0, %bb.i ] ; 3 uses
  %i.bu = call i32 @slurm_bit_test(ptr noundef %i.ba, i64 noundef %indvars.iv) #9
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.loopexit95, label %bb.j

bb.j:                                             ; preds = %.lr.ph104
  %i.bw = load ptr, ptr @conf, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4232
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = trunc nuw i64 %indvars.iv to i16
  %i.ca = urem i16 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 4158
  %i.cc = load i16, ptr %i.cb, align 2
  %.not122 = icmp eq i16 %i.cc, 0
  br i1 %.not122, label %.loopexit95, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.j, %.lr.ph101
  %i.cd = phi ptr [ %i.cm, %.lr.ph101 ], [ %i.bw, %bb.j ]
  %.07199 = phi i16 [ %i.cl, %.lr.ph101 ], [ 0, %bb.j ] ; 2 uses
  %i.ce = load i16, ptr %3, align 2
  %i.cf = mul i16 %i.ce, %i.ca
  %i.cg = add i16 %i.cf, %.07199
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 4232
  %i.ci = load i16, ptr %i.ch, align 8
  %i.cj = urem i16 %i.cg, %i.ci
  %i.ck = zext i16 %i.cj to i64
  call void @slurm_bit_set(ptr noundef %i.bf, i64 noundef %i.ck) #9
  %i.cl = add nuw i16 %.07199, 1                  ; 2 uses
  %i.cm = load ptr, ptr @conf, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4158
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = icmp ult i16 %i.cl, %i.co
  br i1 %i.cp, label %.lr.ph101, label %.loopexit95, !llvm.loop !15

.loopexit95:                                      ; preds = %.lr.ph101, %bb.j, %.lr.ph104
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.az
  br i1 %exitcond.not, label %._crit_edge105, label %.lr.ph104, !llvm.loop !16

._crit_edge105:                                   ; preds = %.loopexit95, %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.cr = load i16, ptr %i.cq, align 8
  %.fr = freeze i16 %i.cr                         ; 3 uses
  %i.cs = icmp ult i16 %.fr, -32767
  %i.ct = and i16 %.fr, 32767                     ; 2 uses
  %cond = icmp eq i16 %.fr, -2
  %or.cond = or i1 %i.cs, %cond
  br i1 %or.cond, label %.loopexit94, label %bb.k

bb.k:                                             ; preds = %._crit_edge105
  %i.cu = load ptr, ptr @conf, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4158
  %i.cw = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.cx = icmp ne i16 %i.cw, 0
  %i.cy = icmp ne i16 %i.ct, 0
  %i.cz = and i1 %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph120.preheader, label %.loopexit94

.lr.ph120.preheader:                              ; preds = %bb.k
  %i.da = zext i16 %i.cw to i32
  %i.db = zext nneg i16 %i.ct to i32
  br label %.lr.ph120

.loopexit93:                                      ; preds = %.loopexit, %.lr.ph120
  %.2.lcssa = phi i32 [ %.1117, %.lr.ph120 ], [ %.3.lcssa, %.loopexit ] ; 2 uses
  %i.dc = icmp sgt i32 %.068118.in, 1
  %i.dd = icmp sgt i32 %.2.lcssa, 0
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %.lr.ph120, label %.loopexit94, !llvm.loop !17

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.loopexit93
  %.068118.in = phi i32 [ %.068118, %.loopexit93 ], [ %i.da, %.lr.ph120.preheader ] ; 2 uses
  %.1117 = phi i32 [ %.2.lcssa, %.loopexit93 ], [ %i.db, %.lr.ph120.preheader ] ; 2 uses
  %.068118 = add nsw i32 %.068118.in, -1          ; 2 uses
  %i.df = load ptr, ptr @conf, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4184
  %i.dh = load i16, ptr %i.dg, align 8            ; 2 uses
  %.not123 = icmp eq i16 %i.dh, 0
  br i1 %.not123, label %.loopexit93, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.lr.ph120
  %i.di = zext i16 %i.dh to i32
  br label %.lr.ph114

.loopexit:                                        ; preds = %.lr.ph109, %.lr.ph114
  %.3.lcssa = phi i32 [ %.2111, %.lr.ph114 ], [ %i.eg, %.lr.ph109 ] ; 3 uses
  %i.dj = icmp samesign ugt i32 %.067112.in, 1
  %i.dk = icmp ne i32 %.3.lcssa, 0
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph114, label %.loopexit93, !llvm.loop !18

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.loopexit
  %.067112.in = phi i32 [ %.067112, %.loopexit ], [ %i.di, %.lr.ph114.preheader ] ; 2 uses
  %.2111 = phi i32 [ %.3.lcssa, %.loopexit ], [ %.1117, %.lr.ph114.preheader ] ; 2 uses
  %.067112 = add nsw i32 %.067112.in, -1          ; 2 uses
  %i.dm = load ptr, ptr @conf, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4156
  %i.do = load i16, ptr %i.dn, align 4            ; 2 uses
  %.not124 = icmp eq i16 %i.do, 0
  br i1 %.not124, label %.loopexit, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %.lr.ph114
  %i.dp = zext i16 %i.do to i32
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %.0.in107 = phi i32 [ %.0, %.lr.ph109 ], [ %i.dp, %.lr.ph109.preheader ] ; 2 uses
  %.3106 = phi i32 [ %i.eg, %.lr.ph109 ], [ %.2111, %.lr.ph109.preheader ]
  %.0 = add nsw i32 %.0.in107, -1                 ; 2 uses
  %i.dq = load ptr, ptr @conf, align 8            ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4184
  %i.ds = load i16, ptr %i.dr, align 8
  %i.dt = zext i16 %i.ds to i32
  %i.du = mul nuw nsw i32 %.0, %i.dt
  %i.dv = add nuw nsw i32 %i.du, %.067112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 4158
  %i.dx = load i16, ptr %i.dw, align 2
  %i.dy = zext i16 %i.dx to i32
  %i.dz = mul nsw i32 %i.dv, %i.dy
  %i.ea = add nuw nsw i32 %i.dz, %.068118
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 4232
  %i.ec = load i16, ptr %i.eb, align 8
  %i.ed = zext i16 %i.ec to i32
  %i.ee = urem i32 %i.ea, %i.ed
  %i.ef = zext nneg i32 %i.ee to i64
  call void @slurm_bit_clear(ptr noundef %i.bf, i64 noundef %i.ef) #9
  %i.eg = add nsw i32 %.3106, -1                  ; 3 uses
  %i.eh = icmp samesign ugt i32 %.0.in107, 1
  %i.ei = icmp ne i32 %i.eg, 0
  %i.ej = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %i.ej, label %.lr.ph109, label %.loopexit, !llvm.loop !19

.loopexit94:                                      ; preds = %.loopexit93, %bb.k, %._crit_edge105
  %i.ek = call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.bf) #9
  store ptr %i.ek, ptr %i.b, align 8
  %i.el = call i32 @slurm_get_log_level() #9
  %i.em = icmp sgt i32 %i.el, 6
  br i1 %i.em, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit94
  %i.en = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.28, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, ptr noundef %i.c, ptr noundef %i.en) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit94
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  %.not84 = icmp eq ptr %i.ba, null
  br i1 %.not84, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.a, align 8
  call void @slurm_cred_unlock_args(ptr noundef %0) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.069 = phi ptr [ null, %bb.c ], [ %i.bf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.069
}

declare i32 @slurm_bit_set_count(ptr noundef) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare ptr @slurm_bit_fmt_hexmask(ptr noundef) local_unnamed_addr #2

declare i32 @slurm_get_log_level() local_unnamed_addr #2

declare void @slurm_log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_lllp_map_abstract_masks(i32 noundef range(i32 0, 65536) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call i32 @slurm_get_log_level() #9
  %i.c = icmp sgt i32 %i.b, 6
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.38, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._lllp_map_abstract_masks) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not10 = icmp eq i32 %0, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  store ptr %i.e, ptr %i.a, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.f = call i64 @slurm_bit_size(ptr noundef nonnull %i.e) #9 ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %sext.i = shl i64 %i.f, 32
  %i.h = ashr exact i64 %sext.i, 32
  %i.i = call ptr @slurm_bit_alloc(i64 noundef %i.h) #9 ; 4 uses
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph.preheader.i, label %_lllp_map_abstract_mask.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = and i64 %i.f, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %i.k = call i32 @slurm_bit_test(ptr noundef nonnull %i.e, i64 noundef %indvars.iv.i) #9
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.m = trunc i64 %indvars.iv.i to i16           ; 4 uses
  %i.n = load ptr, ptr @conf, align 8             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4240
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_block_map.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %i.l, 65535
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4232
  %i.t = load i16, ptr %i.s, align 8
  %.not.i.i = icmp ugt i16 %i.t, %i.m
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @slurm_get_log_level() #9
  %i.v = icmp sgt i32 %i.u, 6
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @conf, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4232
  %i.y = load i16, ptr %i.x, align 8
  %i.z = zext i16 %i.y to i32
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.40, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._block_map, i32 noundef %i.r, i32 noundef %i.z) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = load ptr, ptr @conf, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4232
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = urem i16 %i.m, %i.ac
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.08.i.i = phi i16 [ %i.ad, %bb.i ], [ %i.m, %bb.f ]
  %i.ae = zext i16 %.08.i.i to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  br label %_block_map.exit.i

_block_map.exit.i:                                ; preds = %bb.j, %bb.e
  %.0.i.i = phi i16 [ %i.ag, %bb.j ], [ %i.m, %bb.e ] ; 2 uses
  %i.ah = zext i16 %.0.i.i to i64                 ; 2 uses
  %i.ai = call i64 @slurm_bit_size(ptr noundef %i.i) #9
  %i.aj = icmp sgt i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_block_map.exit.i
  call void @slurm_bit_set(ptr noundef %i.i, i64 noundef %i.ah) #9
  br label %bb.m

bb.l:                                             ; preds = %_block_map.exit.i
  %i.ak = zext i16 %.0.i.i to i32
  %i.al = call i64 @slurm_bit_size(ptr noundef %i.i) #9
  %i.am = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.39, i32 noundef %i.l, i32 noundef %i.ak, i64 noundef %i.al) #9 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_lllp_map_abstract_mask.exit, label %.lr.ph.i, !llvm.loop !23

_lllp_map_abstract_mask.exit:                     ; preds = %bb.m, %bb.d
  %i.an = load ptr, ptr %i.a, align 8
  %.not8 = icmp eq ptr %i.an, null
  br i1 %.not8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_lllp_map_abstract_mask.exit
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_lllp_map_abstract_mask.exit
  store ptr %i.i, ptr %i.d, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.p, %bb.c
  ret void
}

declare i32 @slurm_error(ptr noundef, ...) local_unnamed_addr #2

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4034) i32 @lllp_distribution(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca [100 x i8], align 16              ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = alloca i16, align 2                      ; 4 uses
  %i.i = alloca i16, align 2                      ; 4 uses
  %i.j = alloca i16, align 2                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 12 uses
  %i.l = alloca ptr, align 8                      ; 7 uses
  %i.m = alloca ptr, align 8                      ; 8 uses
  %i.n = alloca ptr, align 8                      ; 8 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 8 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 8 uses
  %i.u = alloca ptr, align 8                      ; 9 uses
  %i.v = alloca ptr, align 8                      ; 7 uses
  %i.w = alloca ptr, align 8                      ; 8 uses
  %i.x = alloca [100 x i8], align 16              ; 15 uses
  %i.y = alloca i32, align 4                      ; 7 uses
  %i.z = alloca i32, align 4                      ; 7 uses
  %i.aa = alloca i32, align 4                     ; 7 uses
  %i.ab = alloca i32, align 4                     ; 7 uses
  %i.ac = alloca i32, align 4                     ; 7 uses
  %i.ad = alloca i32, align 4                     ; 7 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #9
  store ptr null, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = zext i32 %1 to i64                      ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2            ; 6 uses
  %i.al = zext i16 %i.ak to i32                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ai
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load i32, ptr @lllp_distribution.only_one_thread_per_core, align 4
  switch i32 %i.aq, label %bb.c [
    i32 -1, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr @conf, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4152
  %i.at = load i16, ptr %i.as, align 8
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4156
  %i.aw = load i16, ptr %i.av, align 4
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 4184
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = zext i16 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.ba, %i.ax
  %i.bc = icmp eq i32 %i.bb, %i.au
  br i1 %i.bc, label %.thread189, label %.thread

.thread189:                                       ; preds = %bb.b
  store i32 1, ptr @lllp_distribution.only_one_thread_per_core, align 4
  br label %bb.c

.thread:                                          ; preds = %bb.b
  store i32 0, ptr @lllp_distribution.only_one_thread_per_core, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %.thread189
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = or i16 %i.be, 8192
  store i16 %i.bf, ptr %i.bd, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread, %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 24 uses
  %i.bh = load i16, ptr %i.bg, align 8            ; 2 uses
  %i.bi = and i16 %i.bh, 4000
  %.not117 = icmp eq i16 %i.bi, 0
  br i1 %.not117, label %bb.ax, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bk = load i32, ptr %i.bj, align 8
  %.not118 = icmp eq i32 %i.bk, -6
  br i1 %.not118, label %bb.ax, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #9
  %i.bl = call fastcc ptr @_alloc_mask(ptr noundef nonnull %0, ptr noundef %i.y, ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ad) ; 9 uses
  store ptr %i.bl, ptr %i.ae, align 8
  %.not133 = icmp eq ptr %i.bl, null
  br i1 %.not133, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bm = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.3) #9 ; 0 uses
  %.not134 = icmp eq ptr %2, null
  br i1 %.not134, label %bb.au, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.3) #9
  br label %bb.au

bb.i:                                             ; preds = %bb.f
  %i.bn = load i32, ptr %i.y, align 4
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.bq = load i16, ptr %i.bp, align 4
  %i.br = icmp eq i16 %i.bq, -2                   ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  br i1 %i.br, label %bb.k, label %.thread249

bb.k:                                             ; preds = %bb.j
  %i.bs = load i16, ptr %i.bg, align 8
  %i.bt = zext i16 %i.bs to i32                   ; 3 uses
  %i.bu = and i32 %i.bt, 384
  %or.cond141 = icmp eq i32 %i.bu, 0
  br i1 %or.cond141, label %bb.l, label %.thread248

bb.l:                                             ; preds = %bb.k
  %i.bv = and i32 %i.bt, 32
  %.not137 = icmp eq i32 %i.bv, 0
  br i1 %.not137, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @slurm_sprint_cpu_bind_type(ptr noundef nonnull %i.x, i32 noundef %i.bt) #9
  %i.bw = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.x) #9 ; 0 uses
  %.not138 = icmp eq ptr %2, null
  br i1 %.not138, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.x) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.0108 = phi i32 [ 0, %bb.l ], [ 4032, %bb.n ], [ 4032, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.bx) #9
  store ptr %i.bl, ptr %i.bx, align 8
  %i.by = load i16, ptr %i.bg, align 8
  %i.bz = and i16 %i.by, -4001
  %i.ca = or disjoint i16 %i.bz, 256
  store i16 %i.ca, ptr %i.bg, align 8
  br label %bb.au

bb.p:                                             ; preds = %bb.i
  br i1 %i.br, label %.thread248, label %.thread249

.thread248:                                       ; preds = %bb.k, %bb.p
  %i.cb = load i16, ptr %i.bg, align 8
  %i.cc = zext i16 %i.cb to i32                   ; 2 uses
  %i.cd = and i32 %i.cc, 256
  %.not139 = icmp eq i32 %i.cd, 0
  br i1 %.not139, label %bb.aj, label %bb.q

bb.q:                                             ; preds = %.thread248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #9
  store ptr null, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #9
  store ptr null, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #9
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cg = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #9 ; 0 uses
  %.not70.i = icmp eq ptr %2, null
  br i1 %.not70.i, label %_validate_mask.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #9
  br label %_validate_mask.exit

bb.t:                                             ; preds = %bb.q
  %i.ch = tail call ptr @task_str_to_cpuset(ptr noundef nonnull %i.bl) #9 ; 2 uses
  store ptr %i.ch, ptr %i.t, align 8
  %.not71.i = icmp eq ptr %i.ch, null
  br i1 %.not71.i, label %bb.u, label %.preheader87.i

.preheader87.i:                                   ; preds = %bb.t
  %i.ci = load ptr, ptr %i.ce, align 8
  %i.cj = call ptr @xstrtoken(ptr noundef %i.ci, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.s) #9 ; 2 uses
  %.not7395.i = icmp eq ptr %i.cj, null
  br i1 %.not7395.i, label %.critedge100.i, label %.lr.ph97.i

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18) #9 ; 0 uses
  %.not72.i = icmp eq ptr %2, null
  br i1 %.not72.i, label %_validate_mask.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18) #9
  br label %_validate_mask.exit

.lr.ph97.i:                                       ; preds = %.preheader87.i, %bb.ag
  %i.cl = phi ptr [ %i.fa, %bb.ag ], [ %i.cj, %.preheader87.i ]
  %.05596.i = phi i1 [ %.156.lcssa123.i, %bb.ag ], [ true, %.preheader87.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #9
  store ptr null, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #9
  store ptr null, ptr %i.v, align 8
  %i.cm = call ptr @task_str_to_cpuset(ptr noundef nonnull %i.cl) #9 ; 5 uses
  store ptr %i.cm, ptr %i.u, align 8
  %.not75.not.i = icmp eq ptr %i.cm, null
  br i1 %.not75.not.i, label %bb.w, label %.preheader86.i

.preheader86.i:                                   ; preds = %.lr.ph97.i
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %.not101.i = icmp eq i64 %i.cn, 0
  br i1 %.not101.i, label %.preheader.i, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph97.i
  %i.co = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.20) #9 ; 0 uses
  %.not76.i = icmp eq ptr %2, null
  br i1 %.not76.i, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.20) #9
  br label %.thread.i

.thread.i:                                        ; preds = %bb.x, %bb.w
  call void @slurm_xfree(ptr noundef nonnull %i.t) #9
  call void @slurm_xfree(ptr noundef nonnull %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #9
  br label %_validate_mask.exit

._crit_edge.i:                                    ; preds = %.critedge.i
  %i.cp = icmp eq i32 %.161.i, 0
  br i1 %i.cp, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader86.i
  %.156.lcssa124.i = phi i1 [ %.257.i, %._crit_edge.i ], [ %.05596.i, %.preheader86.i ] ; 2 uses
  %i.cq = phi ptr [ %i.du, %._crit_edge.i ], [ %i.cm, %.preheader86.i ]
  %i.cr = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8            ; 2 uses
  %.not102.i = icmp eq i64 %i.cs, 0
  br i1 %.not102.i, label %.loopexit.i, label %.lr.ph94.i

.lr.ph.i:                                         ; preds = %.preheader86.i, %.critedge.i
  %i.ct = phi i64 [ %i.dt, %.critedge.i ], [ %i.cn, %.preheader86.i ] ; 3 uses
  %i.cu = phi ptr [ %i.du, %.critedge.i ], [ %i.cm, %.preheader86.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 0, %.preheader86.i ] ; 4 uses
  %.15691.i = phi i1 [ %.257.i, %.critedge.i ], [ %.05596.i, %.preheader86.i ] ; 3 uses
  %.06089.i = phi i32 [ %.161.i, %.critedge.i ], [ 0, %.preheader86.i ] ; 4 uses
  %i.cv = lshr i64 %indvars.iv.i, 3               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = icmp ult i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %.lr.ph.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = lshr i64 %indvars.iv.i, 6               ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8            ; 2 uses
  %i.dd = and i64 %indvars.iv.i, 63
  %i.de = shl nuw i64 1, %i.dd                    ; 3 uses
  %i.df = and i64 %i.dc, %i.de
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = icmp ult i64 %i.cv, %i.dj
  br i1 %i.dk, label %bb.aa, label %.critedge82.i

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.da
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = and i64 %i.dn, %i.de
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.critedge82.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = add nsw i32 %.06089.i, 1
  br label %.critedge.i

.critedge82.i:                                    ; preds = %bb.aa, %bb.z
  %i.dr = xor i64 %i.de, -1
  %i.ds = and i64 %i.dc, %i.dr
  store i64 %i.ds, ptr %i.db, align 8
  %.pre.i = load ptr, ptr %i.u, align 8           ; 2 uses
  %.pre106.i = load i64, ptr %.pre.i, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge82.i, %bb.ab, %bb.y, %.lr.ph.i
  %i.dt = phi i64 [ %i.ct, %bb.ab ], [ %.pre106.i, %.critedge82.i ], [ %i.ct, %bb.y ], [ %i.ct, %.lr.ph.i ] ; 2 uses
  %i.du = phi ptr [ %i.cu, %bb.ab ], [ %.pre.i, %.critedge82.i ], [ %i.cu, %bb.y ], [ %i.cu, %.lr.ph.i ] ; 3 uses
  %.161.i = phi i32 [ %i.dq, %bb.ab ], [ %.06089.i, %.critedge82.i ], [ %.06089.i, %bb.y ], [ %.06089.i, %.lr.ph.i ] ; 2 uses
  %.257.i = phi i1 [ %.15691.i, %bb.ab ], [ false, %.critedge82.i ], [ %.15691.i, %bb.y ], [ %.15691.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dv = icmp ugt i64 %i.dt, %indvars.iv.next.i
  br i1 %i.dv, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !25

.lr.ph94.i:                                       ; preds = %.preheader.i, %.critedge84.i
  %i.dw = phi i64 [ %i.es, %.critedge84.i ], [ %i.cs, %.preheader.i ] ; 3 uses
  %i.dx = phi ptr [ %i.et, %.critedge84.i ], [ %i.cr, %.preheader.i ] ; 5 uses
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %.critedge84.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.dy = lshr i64 %indvars.iv103.i, 3            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = icmp ult i64 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ac, label %.critedge84.i

bb.ac:                                            ; preds = %.lr.ph94.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ed = lshr i64 %indvars.iv103.i, 6            ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = and i64 %indvars.iv103.i, 63
  %i.eh = shl nuw i64 1, %i.eg                    ; 2 uses
  %i.ei = and i64 %i.ef, %i.eh
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.critedge84.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = icmp ult i64 %i.dy, %i.em
  br i1 %i.en, label %bb.ae, label %.critedge84.i

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ed ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = or i64 %i.eq, %i.eh
  store i64 %i.er, ptr %i.ep, align 8
  %.pre107.i = load ptr, ptr %i.t, align 8        ; 2 uses
  %.pre108.i = load i64, ptr %.pre107.i, align 8
  br label %.critedge84.i

.critedge84.i:                                    ; preds = %bb.ae, %bb.ad, %bb.ac, %.lr.ph94.i
  %i.es = phi i64 [ %i.dw, %.lr.ph94.i ], [ %.pre108.i, %bb.ae ], [ %i.dw, %bb.ad ], [ %i.dw, %bb.ac ] ; 2 uses
  %i.et = phi ptr [ %i.dx, %.lr.ph94.i ], [ %.pre107.i, %bb.ae ], [ %i.dx, %bb.ad ], [ %i.dx, %bb.ac ]
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %i.eu = icmp ugt i64 %i.es, %indvars.iv.next104.i
  br i1 %i.eu, label %.lr.ph94.i, label %.loopexit.loopexit.i, !llvm.loop !26

.loopexit.loopexit.i:                             ; preds = %.critedge84.i
  %.pre109.i = load ptr, ptr %i.u, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.preheader.i, %._crit_edge.i
  %.156.lcssa123.i = phi i1 [ %.156.lcssa124.i, %.loopexit.loopexit.i ], [ %.156.lcssa124.i, %.preheader.i ], [ %.257.i, %._crit_edge.i ] ; 2 uses
  %i.ev = phi ptr [ %.pre109.i, %.loopexit.loopexit.i ], [ %i.cq, %.preheader.i ], [ %i.du, %._crit_edge.i ]
  %i.ew = call ptr @task_cpuset_to_str(ptr noundef %i.ev) #9 ; 2 uses
  store ptr %i.ew, ptr %i.v, align 8
  %i.ex = load ptr, ptr %i.r, align 8
  %.not77.i = icmp eq ptr %i.ex, null
  br i1 %.not77.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.loopexit.i
  call void @slurm_xstrcat(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.19) #9
  %.pre110.i = load ptr, ptr %i.v, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit.i
  %i.ey = phi ptr [ %i.ew, %.loopexit.i ], [ %.pre110.i, %bb.af ]
  call void @slurm_xstrcat(ptr noundef nonnull %i.r, ptr noundef %i.ey) #9
  call void @slurm_xfree(ptr noundef nonnull %i.v) #9
  call void @slurm_xfree(ptr noundef nonnull %i.u) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #9
  %i.ez = load ptr, ptr %i.ce, align 8
  %i.fa = call ptr @xstrtoken(ptr noundef %i.ez, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.s) #9 ; 2 uses
  %.not73.i = icmp eq ptr %i.fa, null
  br i1 %.not73.i, label %._crit_edge98.i, label %.lr.ph97.i, !llvm.loop !27

._crit_edge98.i:                                  ; preds = %bb.ag
  br i1 %.156.lcssa123.i, label %.critedge100.i, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge98.i
  %i.fb = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.bl) #9 ; 0 uses
  %.not74.i = icmp eq ptr %2, null
  br i1 %.not74.i, label %.critedge100.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.bl) #9
  br label %.critedge100.i

.critedge100.i:                                   ; preds = %bb.ai, %bb.ah, %._crit_edge98.i, %.preheader87.i
  %.058.i = phi i32 [ 0, %._crit_edge98.i ], [ 4032, %bb.ai ], [ 4032, %bb.ah ], [ 0, %.preheader87.i ]
  call void @slurm_xfree(ptr noundef nonnull %i.t) #9
  call void @slurm_xfree(ptr noundef nonnull %i.ce) #9
  %i.fc = load ptr, ptr %i.r, align 8
  store ptr %i.fc, ptr %i.ce, align 8
  br label %_validate_mask.exit

_validate_mask.exit:                              ; preds = %bb.r, %bb.s, %bb.u, %bb.v, %.thread.i, %.critedge100.i
  %.2.i = phi i32 [ 4032, %.thread.i ], [ %.058.i, %.critedge100.i ], [ 4032, %bb.r ], [ 4032, %bb.s ], [ 4032, %bb.v ], [ 4032, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #9
  br label %.thread249

bb.aj:                                            ; preds = %.thread248
  %i.fd = and i32 %i.cc, 128
  %.not140 = icmp eq i32 %i.fd, 0
  br i1 %.not140, label %.thread249, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  store ptr null, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #9
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8
  %.not.i149 = icmp eq ptr %i.ff, null
  br i1 %.not.i149, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fg = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.22) #9 ; 0 uses
  %.not33.i = icmp eq ptr %2, null
  br i1 %.not33.i, label %_validate_map.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.22) #9
  br label %_validate_map.exit

bb.an:                                            ; preds = %bb.ak
  %i.fh = tail call ptr @task_str_to_cpuset(ptr noundef nonnull %i.bl) #9 ; 4 uses
  store ptr %i.fh, ptr %i.q, align 8
  %.not34.i = icmp eq ptr %i.fh, null
  br i1 %.not34.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fi = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.23) #9 ; 0 uses
  %.not35.i = icmp eq ptr %2, null
  br i1 %.not35.i, label %_validate_map.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.23) #9
  br label %_validate_map.exit

bb.aq:                                            ; preds = %bb.an
  %i.fj = load ptr, ptr %i.fe, align 8
  %i.fk = tail call ptr @slurm_xstrdup(ptr noundef %i.fj) #9 ; 2 uses
  store ptr %i.fk, ptr %i.o, align 8
  %i.fl = call ptr @strtok_r(ptr noundef %i.fk, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.p) #9 ; 2 uses
  %.not3643.i = icmp eq ptr %i.fl, null
  br i1 %.not3643.i, label %._crit_edge.i153, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aq
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  br label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %.critedge.i152, %.lr.ph.preheader.i
  %.02844.i = phi ptr [ %i.gc, %.critedge.i152 ], [ %i.fl, %.lr.ph.preheader.i ]
  %i.fo = call i64 @__isoc23_strtol(ptr noundef nonnull %.02844.i, ptr noundef null, i32 noundef 10) #9, !inline_history !28 ; 2 uses
  %i.fp = shl i64 %i.fo, 32
  %i.fq = ashr exact i64 %i.fp, 32                ; 2 uses
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = load i64, ptr %i.fm, align 8
  %i.ft = icmp ult i64 %i.fr, %i.fs
  br i1 %i.ft, label %bb.ar, label %.thread.i151

bb.ar:                                            ; preds = %.lr.ph.i150
  %i.fu = lshr i64 %i.fq, 6
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = and i64 %i.fo, 63
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = and i64 %i.fw, %i.fy
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %.thread.i151, label %.critedge.i152

.thread.i151:                                     ; preds = %bb.ar, %.lr.ph.i150
  call void @slurm_xfree(ptr noundef nonnull %i.o) #9
  %i.gb = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.bl) #9 ; 0 uses
  %.not38.i = icmp eq ptr %2, null
  br i1 %.not38.i, label %bb.at, label %bb.as

.critedge.i152:                                   ; preds = %bb.ar
  %i.gc = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.p) #9 ; 2 uses
  %.not36.i = icmp eq ptr %i.gc, null
  br i1 %.not36.i, label %._crit_edge.i153, label %.lr.ph.i150

._crit_edge.i153:                                 ; preds = %.critedge.i152, %bb.aq
  call void @slurm_xfree(ptr noundef nonnull %i.o) #9
  br label %bb.at

bb.as:                                            ; preds = %.thread.i151
  call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.bl) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge.i153, %.thread.i151
  %.026.i = phi i32 [ 0, %._crit_edge.i153 ], [ 4032, %bb.as ], [ 4032, %.thread.i151 ]
  call void @slurm_xfree(ptr noundef nonnull %i.q) #9
  br label %_validate_map.exit

_validate_map.exit:                               ; preds = %bb.al, %bb.am, %bb.ao, %bb.ap, %bb.at
  %.0.i = phi i32 [ %.026.i, %bb.at ], [ 4032, %bb.al ], [ 4032, %bb.am ], [ 4032, %bb.ap ], [ 4032, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #9
  br label %.thread249

.thread249:                                       ; preds = %bb.j, %_validate_mask.exit, %_validate_map.exit, %bb.aj, %bb.p
  %.1 = phi i32 [ %.2.i, %_validate_mask.exit ], [ %.0.i, %_validate_map.exit ], [ 0, %bb.aj ], [ 0, %bb.p ], [ 0, %bb.j ]
  call void @slurm_xfree(ptr noundef nonnull %i.ae) #9
  br label %bb.au

bb.au:                                            ; preds = %bb.g, %bb.h, %bb.o, %.thread249
  %.2 = phi i32 [ %.1, %.thread249 ], [ %.0108, %bb.o ], [ 4032, %bb.h ], [ 4032, %bb.g ]
  %i.gd = load i16, ptr %i.bg, align 8
  %i.ge = zext i16 %i.gd to i32
  call void @slurm_sprint_cpu_bind_type(ptr noundef nonnull %i.x, i32 noundef %i.ge) #9
  %i.gf = call i32 @slurm_get_log_level() #9
  %i.gg = icmp sgt i32 %i.gf, 2
  br i1 %i.gg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gi = load i32, ptr %i.gh, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.lllp_distribution, i32 noundef %i.gi, ptr noundef nonnull %i.x) #9
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #9
  br label %bb.ez

bb.ax:                                            ; preds = %bb.e, %bb.d
  %i.gj = zext i16 %i.bh to i32                   ; 2 uses
  %i.gk = and i32 %i.gj, 30
  %.not119 = icmp eq i32 %i.gk, 0
  br i1 %.not119, label %bb.ay, label %bb.br

bb.ay:                                            ; preds = %bb.ax
  %i.gl = load i16, ptr %i.aj, align 2
  %i.gm = zext i16 %i.gl to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 162
  %i.go = load i16, ptr %i.gn, align 2
  %i.gp = zext i16 %i.go to i32
  %i.gq = mul nuw nsw i32 %i.gp, %i.gm            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #9
  %i.gr = call fastcc ptr @_alloc_mask(ptr noundef nonnull %0, ptr noundef %i.y, ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ad) ; 3 uses
  store ptr %i.gr, ptr %i.af, align 8
  %i.gs = tail call i32 @slurm_get_log_level() #9
  %i.gt = icmp sgt i32 %i.gs, 4
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gu = load i32, ptr %i.y, align 4
  %i.gv = load i32, ptr %i.z, align 4
  %i.gw = load i32, ptr %i.ac, align 4
  %i.gx = load i32, ptr %i.aa, align 4
  %i.gy = load i32, ptr %i.ad, align 4
  %i.gz = load i32, ptr %i.ab, align 4
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 5, ptr noundef nonnull @.str.6, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.lllp_distribution, i32 noundef %i.gq, i32 noundef %i.gu, i32 noundef %i.gv, i32 noundef %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz) #9
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.hb = load i16, ptr %i.ha, align 4
  %.fr = freeze i16 %i.hb                         ; 3 uses
  %.not121 = icmp sgt i16 %.fr, -1
  br i1 %.not121, label %bb.bc, label %switch.early.test

switch.early.test:                                ; preds = %bb.ba
  switch i16 %.fr, label %bb.bb [
    i16 -2, label %bb.bc
    i16 -32768, label %bb.bc
  ]

bb.bb:                                            ; preds = %switch.early.test
  %i.hc = and i16 %.fr, 32767
  %i.hd = icmp ne i16 %i.hc, 0
  br label %bb.bc

bb.bc:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ba, %bb.bb
  %.0 = phi i1 [ %i.hd, %bb.bb ], [ false, %switch.early.test ], [ false, %bb.ba ], [ false, %switch.early.test ] ; 2 uses
  %i.he = load i32, ptr %i.z, align 4             ; 2 uses
  %i.hf = icmp eq i32 %i.gq, %i.he
  %i.hg = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 0
  %or.cond = select i1 %i.hf, i1 %i.hh, i1 false
  br i1 %or.cond, label %bb.bo, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hi = add nsw i32 %i.hg, %i.he
  %i.hj = icmp eq i32 %i.gq, %i.hi
  %or.cond145 = select i1 %.0, i1 %i.hj, i1 false
  br i1 %or.cond145, label %bb.bo, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hk = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.hl = icmp eq i32 %i.gq, %i.hk
  %i.hm = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  %or.cond3 = select i1 %i.hl, i1 %i.hn, i1 false
  br i1 %or.cond3, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ho = add nsw i32 %i.hm, %i.hk
  %i.hp = icmp eq i32 %i.gq, %i.ho
  %or.cond148 = select i1 %.0, i1 %i.hp, i1 false
  br i1 %or.cond148, label %bb.bo, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hq = load i32, ptr %i.ab, align 4
  %i.hr = icmp eq i32 %i.gq, %i.hq
  br i1 %i.hr, label %bb.bo, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hs = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1520), align 8 ; 3 uses
  %i.ht = and i32 %i.hs, 16384
  %.not124 = icmp eq i32 %i.ht, 0
  br i1 %.not124, label %bb.bi, label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.hu = and i32 %i.hs, 65536
  %.not125 = icmp eq i32 %i.hu, 0
  br i1 %.not125, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.hv = and i32 %i.hs, 131072
  %.not126 = icmp eq i32 %i.hv, 0
  br i1 %.not126, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.not127 = icmp eq ptr %i.gr, null
  br i1 %.not127, label %._crit_edge201, label %bb.bl

._crit_edge201:                                   ; preds = %bb.bk
  %.pre202 = load i16, ptr %i.bg, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.hw) #9
  store ptr %i.gr, ptr %i.hw, align 8
  %i.hx = load i16, ptr %i.bg, align 8
  %i.hy = or i16 %i.hx, 256                       ; 2 uses
  store i16 %i.hy, ptr %i.bg, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge201, %bb.bl
  %i.hz = phi i16 [ %.pre202, %._crit_edge201 ], [ %i.hy, %bb.bl ]
  %i.ia = zext i16 %i.hz to i32
  call void @slurm_sprint_cpu_bind_type(ptr noundef nonnull %i.x, i32 noundef %i.ia) #9
  %i.ib = call i32 @slurm_get_log_level() #9
  %i.ic = icmp sgt i32 %i.ib, 2
  br i1 %i.ic, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %bb.bm
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ie = load i32, ptr %i.id, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.lllp_distribution, i32 noundef %i.ie, ptr noundef nonnull %i.x) #9
  br label %.critedge
end_hunk_0
begin_hunk_1_@lllp_distribution:bb.a
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.jo = load ptr, ptr %i.ag, align 8
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %i.ai
  %i.jq = load i16, ptr %i.jp, align 2            ; 3 uses
  %i.jr = zext i16 %i.jq to i32                   ; 8 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 6 uses
  %i.jt = load i16, ptr %i.js, align 2
  %i.ju = zext i16 %i.jt to i32
  %i.jv = mul nuw nsw i32 %i.ju, %i.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  %i.jw = call i32 @slurm_get_log_level() #9
  %i.jx = icmp sgt i32 %i.jw, 2
  br i1 %i.jx, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.29, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = call fastcc ptr @_get_avail_map(ptr noundef %i.jz, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) ; 6 uses
  store ptr %i.ka, ptr %i.k, align 8
  %.not.i154 = icmp eq ptr %i.ka, null
  br i1 %.not.i154, label %_task_layout_lllp_cyclic.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.kc = load i16, ptr %i.kb, align 8            ; 2 uses
  switch i16 %i.kc, label %bb.ci [
    i16 0, label %bb.ch
    i16 -2, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cg
  %i.kd = load i16, ptr %i.bg, align 8
  %i.ke = and i16 %i.kd, 8192
  %.not127.i = icmp eq i16 %i.ke, 0
  %i.kf = call i32 @slurm_bit_set_count(ptr noundef nonnull %i.ka) #9 ; 2 uses
  br i1 %.not127.i, label %.thread.i155, label %.thread147.i

bb.ci:                                            ; preds = %bb.cg
  %i.kg = zext i16 %i.kc to i32
  %i.kh = call i32 @slurm_bit_set_count(ptr noundef nonnull %i.ka) #9
  br label %.thread147.i

.thread147.i:                                     ; preds = %bb.ci, %bb.ch
  %i.ki = phi i32 [ %i.kh, %bb.ci ], [ %i.kf, %bb.ch ] ; 4 uses
  %.093150.i = phi i32 [ %i.kg, %bb.ci ], [ 1, %bb.ch ] ; 3 uses
  %i.kj = load ptr, ptr @conf, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4158
  %i.kl = load i16, ptr %i.kk, align 2            ; 2 uses
  %i.km = load i16, ptr %i.j, align 2
  %.not129.i = icmp ugt i16 %i.kl, %i.km
  br i1 %.not129.i, label %.thread.i155, label %bb.cj

bb.cj:                                            ; preds = %.thread147.i
  %i.kn = load i16, ptr %i.js, align 2
  %i.ko = zext i16 %i.kn to i32
  %.rhs.trunc.i = trunc nuw i32 %.093150.i to i16
  %i.kp = udiv i16 %i.kl, %.rhs.trunc.i
  %.zext.i = zext i16 %i.kp to i32
  %i.kq = mul nuw nsw i32 %.zext.i, %i.ko         ; 2 uses
  %i.kr = icmp slt i32 %i.ki, %i.kq
  br i1 %i.kr, label %bb.ck, label %.thread.i155

bb.ck:                                            ; preds = %bb.cj
  %i.ks = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.30, i32 noundef %i.ki, i32 noundef %i.kq) #9 ; 0 uses
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #9
  br label %_task_layout_lllp_cyclic.exit

.thread.i155:                                     ; preds = %bb.cj, %.thread147.i, %bb.ch
  %.not128146.i = phi i1 [ false, %.thread147.i ], [ false, %bb.cj ], [ true, %bb.ch ]
  %i.kt = phi i32 [ %i.ki, %.thread147.i ], [ %i.ki, %bb.cj ], [ %i.kf, %bb.ch ] ; 4 uses
  %.093145.i = phi i32 [ %.093150.i, %.thread147.i ], [ %.093150.i, %bb.cj ], [ 0, %bb.ch ]
  %i.ku = icmp slt i32 %i.kt, %i.jr
  br i1 %i.ku, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %.thread.i155
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = and i32 %i.kw, 128
  %.not140.i = icmp eq i32 %i.kx, 0
  br i1 %.not140.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ky = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.31, i32 noundef %i.kt, i32 noundef %i.jr) #9 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #9
  br label %_task_layout_lllp_cyclic.exit

bb.co:                                            ; preds = %.thread.i155
  %i.kz = icmp samesign ult i32 %i.kt, %i.jv
  br i1 %i.kz, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.la = udiv i32 %i.kt, %i.jr                   ; 2 uses
  %i.lb = trunc i32 %i.la to i16
  %i.lc = call i32 @slurm_get_log_level() #9
  %i.ld = icmp sgt i32 %i.lc, 2
  br i1 %i.ld, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.le = load i16, ptr %i.js, align 2
  %i.lf = zext i16 %i.le to i32
  %i.lg = and i32 %i.la, 65535
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.32, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_lllp_cyclic, i32 noundef %i.lf, i32 noundef %i.lg) #9
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i16 %i.lb, ptr %i.js, align 2
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co
  %i.lh = load i16, ptr %i.j, align 2             ; 5 uses
  %i.li = zext i16 %i.lh to i32                   ; 3 uses
  %i.lj = load i16, ptr %i.h, align 2             ; 4 uses
  %i.lk = zext i16 %i.lj to i64                   ; 3 uses
  %i.ll = load i16, ptr %i.i, align 2             ; 4 uses
  %i.lm = zext i16 %i.ll to i64                   ; 2 uses
  %i.ln = mul nuw nsw i64 %i.lm, %i.lk            ; 2 uses
  %i.lo = call ptr @slurm_xcalloc(i64 noundef %i.ln, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1020, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9
  store ptr %i.lo, ptr %i.m, align 8
  %i.lp = call ptr @slurm_xcalloc(i64 noundef %i.ln, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1021, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9
  store ptr %i.lp, ptr %i.n, align 8
  %i.lq = call ptr @slurm_xcalloc(i64 noundef %i.lk, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1022, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9
  store ptr %i.lq, ptr %i.l, align 8
  %i.lr = zext i16 %i.jq to i64
  %i.ls = call ptr @slurm_xcalloc(i64 noundef %i.lr, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1024, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9 ; 4 uses
  store ptr %i.ls, ptr %i.w, align 8
  %i.lt = call i64 @slurm_bit_size(ptr noundef nonnull %i.ka) #9
  %.fr.i = freeze i64 %i.lt
  %i.lu = trunc i64 %.fr.i to i32                 ; 3 uses
  %.not191.i = icmp eq i16 %i.jq, 0
  br i1 %.not191.i, label %._crit_edge190.thread.i, label %.lr.ph189.i

._crit_edge190.thread.i:                          ; preds = %bb.cs
  %i.lv = load i16, ptr %i.bg, align 8
  call fastcc void @_expand_masks(i16 noundef zeroext %i.lv, i32 noundef %i.jr, ptr noundef %i.ls, i16 noundef zeroext %i.lj, i16 noundef zeroext %i.ll, i16 noundef zeroext %i.lh, ptr noundef nonnull %i.ka)
  br label %bb.ds

.lr.ph189.i:                                      ; preds = %bb.cs
  %i.lw = mul i16 %i.ll, %i.lh
  %i.lx = icmp sgt i32 %i.lu, 0
  %i.ly = zext i16 %i.lw to i32                   ; 3 uses
  %i.lz = zext i16 %i.lj to i32                   ; 3 uses
  %i.ma = shl nuw nsw i64 %i.lk, 2                ; 2 uses
  %i.mb = mul nuw nsw i64 %i.ma, %i.lm            ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 86 ; 2 uses
  br i1 %i.lx, label %.lr.ph189.split.us.i, label %.split.us.thread.i

.split.us.thread.i:                               ; preds = %.lr.ph189.i
  %i.md = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.34) #9 ; 0 uses
  br label %bb.dq

.lr.ph189.split.us.i:                             ; preds = %.lr.ph189.i, %._crit_edge176.us.i
  %.094187.us.i = phi i16 [ %.3.us.i, %._crit_edge176.us.i ], [ 0, %.lr.ph189.i ]
  %.095186.us.i = phi i16 [ %.6.us.i, %._crit_edge176.us.i ], [ 0, %.lr.ph189.i ]
  %.0100185.us.i = phi i32 [ %.3103.us.i, %._crit_edge176.us.i ], [ 0, %.lr.ph189.i ] ; 3 uses
  %.0104184.us.i = phi i32 [ %.0100185.us.i, %._crit_edge176.us.i ], [ -1, %.lr.ph189.i ]
  %i.me = icmp eq i32 %.0100185.us.i, %.0104184.us.i
  br i1 %i.me, label %.split.us.i, label %.preheader.us.i

bb.ct:                                            ; preds = %.lr.ph.us.i, %bb.cx
  %.297167.us.i = phi i32 [ %i.pk, %.lr.ph.us.i ], [ %i.mg, %bb.cx ]
  %i.mf = add nuw nsw i32 %.297167.us.i, 1
  %i.mg = urem i32 %i.mf, %i.lz                   ; 4 uses
  %i.mh = icmp eq i32 %i.mg, %i.pk
  br i1 %i.mh, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.mi = call i32 @slurm_get_log_level() #9
  %i.mj = icmp sgt i32 %i.mi, 4
  br i1 %i.mj, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 5, ptr noundef nonnull @.str.35, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_lllp_cyclic) #9
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  call void @llvm.memset.p0.i64(ptr align 4 %i.pl, i8 0, i64 %i.mb, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %i.pm, i8 0, i64 %i.mb, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.pg, i8 0, i64 %i.ma, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ct
  %i.mk = zext nneg i32 %i.mg to i64              ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4            ; 2 uses
  %.not131.us.i = icmp slt i32 %i.mm, %i.ly
  br i1 %.not131.us.i, label %._crit_edge.us.loopexit.i, label %bb.ct, !llvm.loop !29

._crit_edge.us.loopexit.i:                        ; preds = %bb.cx
  %i.mn = trunc nuw i32 %i.mg to i16
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.preheader.us.i, %._crit_edge.us.loopexit.i
  %.lcssa165.us.i = phi i64 [ %i.ph, %.preheader.us.i ], [ %i.mk, %._crit_edge.us.loopexit.i ]
  %.297.lcssa.us.i = phi i16 [ %.196174.us.i, %.preheader.us.i ], [ %i.mn, %._crit_edge.us.loopexit.i ] ; 5 uses
  %.lcssa162.us.i = phi i32 [ %i.pj, %.preheader.us.i ], [ %i.mm, %._crit_edge.us.loopexit.i ] ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %.lcssa165.us.i
  %i.mp = zext i16 %.297.lcssa.us.i to i32        ; 2 uses
  %i.mq = mul nuw nsw i32 %i.mp, %i.ly
  %i.mr = add nsw i32 %i.mq, %.lcssa162.us.i
  %i.ms = and i32 %i.mr, 65535
  %i.mt = urem i32 %i.ms, %i.lu                   ; 2 uses
  %i.mu = add nsw i32 %.lcssa162.us.i, 1
  store i32 %i.mu, ptr %i.mo, align 4
  %i.mv = load ptr, ptr %i.k, align 8
  %i.mw = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.mx = call i32 @slurm_bit_test(ptr noundef %i.mv, i64 noundef %i.mw) #9
  %.not132.us.i = icmp eq i32 %i.mx, 0
  br i1 %.not132.us.i, label %select.unfold152.us.i, label %bb.cy

bb.cy:                                            ; preds = %._crit_edge.us.i
  %i.my = udiv i32 %i.mt, %i.li                   ; 3 uses
  %i.mz = load i16, ptr %i.mc, align 2            ; 2 uses
  %.not133.us.i = icmp eq i16 %i.mz, 0
  br i1 %.not133.us.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.na = zext i16 %i.mz to i32
  %i.nb = load ptr, ptr %i.m, align 8
  %i.nc = zext nneg i32 %i.my to i64
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4
  %.not134.us.i = icmp slt i32 %i.ne, %i.na
  br i1 %.not134.us.i, label %bb.da, label %select.unfold152.us.i

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %.not128146.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nf = load ptr, ptr %i.n, align 8
  %i.ng = zext nneg i32 %i.my to i64
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4
  %.not135.us.i = icmp slt i32 %i.ni, %.093145.i
  br i1 %.not135.us.i, label %bb.dc, label %select.unfold152.us.i

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.nj = sext i32 %.1101172.us.i to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.nj ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8            ; 2 uses
  %.not136.us.i = icmp eq ptr %i.nl, null
  br i1 %.not136.us.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.nm = load ptr, ptr @conf, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4232
  %i.no = load i16, ptr %i.nn, align 8
  %i.np = zext i16 %i.no to i64
  %i.nq = call ptr @slurm_bit_alloc(i64 noundef %i.np) #9 ; 2 uses
  store ptr %i.nq, ptr %i.nk, align 8
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.nr = phi ptr [ %i.nq, %bb.dd ], [ %i.nl, %bb.dc ]
  call void @slurm_bit_set(ptr noundef %i.nr, i64 noundef %i.mw) #9
  %i.ns = load i32, ptr %i.iv, align 8
  %i.nt = and i32 %i.ns, 61695
  %.off.us.i = add nsw i32 %i.nt, -49
  %switch.us.i = icmp ult i32 %.off.us.i, 2       ; 2 uses
  br i1 %switch.us.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.nu = add nuw nsw i32 %i.mp, 1
  %i.nv = urem i32 %i.nu, %i.lz
  %i.nw = trunc nuw i32 %i.nv to i16
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.398.us.i = phi i16 [ %.297.lcssa.us.i, %bb.de ], [ %i.nw, %bb.df ] ; 4 uses
  %i.nx = load ptr, ptr %i.n, align 8
  %i.ny = zext nneg i32 %i.my to i64              ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.ny ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = add nsw i32 %i.oa, 1
  store i32 %i.ob, ptr %i.nz, align 4
  %i.oc = add i16 %.1175.us.i, 1                  ; 2 uses
  %i.od = load i16, ptr %i.js, align 2
  %i.oe = icmp ult i16 %i.oc, %i.od
  br i1 %i.oe, label %select.unfold152.us.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.of = load ptr, ptr %i.m, align 8
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.ny ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4
  %i.oi = add nsw i32 %i.oh, 1
  store i32 %i.oi, ptr %i.og, align 4
  %i.oj = load i16, ptr %i.bg, align 8
  %i.ok = and i16 %i.oj, 4
  %.not137.us.i = icmp eq i16 %i.ok, 0
  br i1 %.not137.us.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ol = load i16, ptr %i.mc, align 2
  %i.om = icmp eq i16 %i.ol, 1
  br i1 %i.om, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.on = load i16, ptr %i.js, align 2            ; 2 uses
  %i.oo = zext i16 %i.on to i32                   ; 2 uses
  %i.op = icmp ult i16 %i.on, %i.lh
  br i1 %i.op, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.oq = urem i32 %i.oo, %i.li
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.or = sub nuw nsw i32 %i.li, %i.oo
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.0.us.i = phi i32 [ %i.or, %bb.dl ], [ %i.oq, %bb.dk ]
  %i.os = load ptr, ptr %i.l, align 8
  %i.ot = zext i16 %.398.us.i to i64
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.ot ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 4
  %i.ow = add nsw i32 %i.ov, %.0.us.i
  store i32 %i.ow, ptr %i.ou, align 4
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.di
  br i1 %switch.us.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ox = zext i16 %.398.us.i to i32
  %i.oy = add nuw nsw i32 %i.ox, 1
  %i.oz = urem i32 %i.oy, %i.lz
  %i.pa = trunc nuw i32 %i.oz to i16
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.4.us.i = phi i16 [ %.398.us.i, %bb.dn ], [ %i.pa, %bb.do ] ; 2 uses
  %i.pb = add nsw i32 %.1101172.us.i, 1           ; 3 uses
  %.not138.us.i = icmp slt i32 %i.pb, %i.jr
  br i1 %.not138.us.i, label %select.unfold152.us.i, label %._crit_edge176.us.i

select.unfold152.us.i:                            ; preds = %bb.dp, %bb.dg, %bb.db, %bb.cz, %._crit_edge.us.i
  %.2102.ph.us.i = phi i32 [ %.1101172.us.i, %._crit_edge.us.i ], [ %.1101172.us.i, %bb.dg ], [ %.1101172.us.i, %bb.db ], [ %.1101172.us.i, %bb.cz ], [ %i.pb, %bb.dp ] ; 2 uses
  %.5.ph.us.i = phi i16 [ %.297.lcssa.us.i, %._crit_edge.us.i ], [ %.398.us.i, %bb.dg ], [ %.297.lcssa.us.i, %bb.db ], [ %.297.lcssa.us.i, %bb.cz ], [ %.4.us.i, %bb.dp ] ; 2 uses
  %.2.ph.us.i = phi i16 [ %.1175.us.i, %._crit_edge.us.i ], [ %i.oc, %bb.dg ], [ %.1175.us.i, %bb.db ], [ %.1175.us.i, %bb.cz ], [ 0, %bb.dp ] ; 2 uses
  %i.pc = add i16 %.099173.us.i, 1                ; 2 uses
  %i.pd = zext i16 %i.pc to i32
  %i.pe = icmp slt i32 %i.pd, %i.lu
  br i1 %i.pe, label %.preheader.us.i, label %._crit_edge176.us.i, !llvm.loop !30

._crit_edge176.us.i:                              ; preds = %select.unfold152.us.i, %bb.dp
  %.3103.us.i = phi i32 [ %i.pb, %bb.dp ], [ %.2102.ph.us.i, %select.unfold152.us.i ] ; 2 uses
  %.6.us.i = phi i16 [ %.4.us.i, %bb.dp ], [ %.5.ph.us.i, %select.unfold152.us.i ]
  %.3.us.i = phi i16 [ 0, %bb.dp ], [ %.2.ph.us.i, %select.unfold152.us.i ]
  %i.pf = icmp slt i32 %.3103.us.i, %i.jr
  br i1 %i.pf, label %.lr.ph189.split.us.i, label %._crit_edge190.i, !llvm.loop !31

.preheader.us.i:                                  ; preds = %.lr.ph189.split.us.i, %select.unfold152.us.i
  %.1175.us.i = phi i16 [ %.2.ph.us.i, %select.unfold152.us.i ], [ %.094187.us.i, %.lr.ph189.split.us.i ] ; 4 uses
  %.196174.us.i = phi i16 [ %.5.ph.us.i, %select.unfold152.us.i ], [ %.095186.us.i, %.lr.ph189.split.us.i ] ; 3 uses
  %.099173.us.i = phi i16 [ %i.pc, %select.unfold152.us.i ], [ 0, %.lr.ph189.split.us.i ]
  %.1101172.us.i = phi i32 [ %.2102.ph.us.i, %select.unfold152.us.i ], [ %.0100185.us.i, %.lr.ph189.split.us.i ] ; 6 uses
  %i.pg = load ptr, ptr %i.l, align 8             ; 4 uses
  %i.ph = zext i16 %.196174.us.i to i64           ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4            ; 2 uses
  %.not131166.us.i = icmp slt i32 %i.pj, %i.ly
  br i1 %.not131166.us.i, label %._crit_edge.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.preheader.us.i
  %i.pk = zext i16 %.196174.us.i to i32           ; 2 uses
  %i.pl = load ptr, ptr %i.m, align 8
  %i.pm = load ptr, ptr %i.n, align 8
  br label %bb.ct

.split.us.i:                                      ; preds = %.lr.ph189.split.us.i
  %.pre.i156 = load ptr, ptr %i.k, align 8
  %i.pn = icmp eq ptr %.pre.i156, null
  %i.po = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.34) #9 ; 0 uses
  br i1 %i.pn, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %.split.us.i, %.split.us.thread.i
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #9
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.split.us.i
  store ptr null, ptr %i.k, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.m) #9
  call void @slurm_xfree(ptr noundef nonnull %i.n) #9
  call void @slurm_xfree(ptr noundef nonnull %i.l) #9
  br label %_task_layout_lllp_cyclic.exit

._crit_edge190.i:                                 ; preds = %._crit_edge176.us.i
  %.pre196.i = load ptr, ptr %i.k, align 8        ; 2 uses
  %i.pp = load i16, ptr %i.bg, align 8
  call fastcc void @_expand_masks(i16 noundef zeroext %i.pp, i32 noundef %i.jr, ptr noundef %i.ls, i16 noundef zeroext %i.lj, i16 noundef zeroext %i.ll, i16 noundef zeroext %i.lh, ptr noundef %.pre196.i)
  %.not130.i = icmp eq ptr %.pre196.i, null
  br i1 %.not130.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %._crit_edge190.i, %._crit_edge190.thread.i
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #9
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %._crit_edge190.i
  store ptr null, ptr %i.k, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.m) #9
  call void @slurm_xfree(ptr noundef nonnull %i.n) #9
  call void @slurm_xfree(ptr noundef nonnull %i.l) #9
  br label %_task_layout_lllp_cyclic.exit

_task_layout_lllp_cyclic.exit:                    ; preds = %bb.cf, %bb.ck, %bb.cn, %bb.dr, %bb.dt
  %.0105.i = phi i32 [ 4033, %bb.ck ], [ 4033, %bb.cn ], [ 4033, %bb.dr ], [ 0, %bb.dt ], [ 4033, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %bb.du

bb.du:                                            ; preds = %_task_layout_lllp_cyclic.exit, %bb.ca, %bb.bw
  %.3 = phi i32 [ %.0105.i, %_task_layout_lllp_cyclic.exit ], [ %i.jc, %bb.bw ], [ %i.jj, %bb.ca ] ; 3 uses
  %i.pq = icmp eq i32 %.3, 0
  br i1 %i.pq, label %bb.dv, label %bb.eq

bb.dv:                                            ; preds = %bb.du
  %i.pr = load ptr, ptr %i.w, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store ptr null, ptr %i.g, align 8
  %.not.i157 = icmp eq i16 %i.ak, 0               ; 2 uses
  br i1 %.not.i157, label %_task_layout_display_masks.exit.thread, label %.lr.ph.i158

_task_layout_display_masks.exit.thread:           ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call fastcc void @_lllp_map_abstract_masks(i32 noundef %i.al, ptr noundef %i.pr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  br label %.loopexit.i175

.lr.ph.i158:                                      ; preds = %bb.dv
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %wide.trip.count.i = zext i16 %i.ak to i64      ; 3 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dy, %.lr.ph.i158
  %indvars.iv.i159 = phi i64 [ 0, %.lr.ph.i158 ], [ %indvars.iv.next.i160, %bb.dy ] ; 3 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %indvars.iv.i159
  %i.pu = load ptr, ptr %i.pt, align 8
  %i.pv = call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.pu) #9
  store ptr %i.pv, ptr %i.g, align 8
  %i.pw = call i32 @slurm_get_log_level() #9
  %i.px = icmp sgt i32 %i.pw, 6
  br i1 %i.px, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.py = load i32, ptr %i.ps, align 8
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i159
  %i.qa = load i32, ptr %i.pz, align 4
  %i.qb = load ptr, ptr %i.g, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.24, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_display_masks, i32 noundef %i.py, i32 noundef %i.qa, ptr noundef %i.qb) #9
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  call void @slurm_xfree(ptr noundef nonnull %i.g) #9
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i159, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i160, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_task_layout_display_masks.exit, label %bb.dw, !llvm.loop !32

_task_layout_display_masks.exit:                  ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call fastcc void @_lllp_map_abstract_masks(i32 noundef %i.al, ptr noundef nonnull %i.pr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store ptr null, ptr %i.f, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.eb, %_task_layout_display_masks.exit
  %indvars.iv.i165 = phi i64 [ 0, %_task_layout_display_masks.exit ], [ %indvars.iv.next.i166, %bb.eb ] ; 3 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %indvars.iv.i165
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.qd) #9
  store ptr %i.qe, ptr %i.f, align 8
  %i.qf = call i32 @slurm_get_log_level() #9
  %i.qg = icmp sgt i32 %i.qf, 6
  br i1 %i.qg, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.qh = load i32, ptr %i.ps, align 8
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i165
  %i.qj = load i32, ptr %i.qi, align 4
  %i.qk = load ptr, ptr %i.f, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.24, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_display_masks, i32 noundef %i.qh, i32 noundef %i.qj, ptr noundef %i.qk) #9
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  call void @slurm_xfree(ptr noundef nonnull %i.f) #9
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %exitcond.not.i167 = icmp eq i64 %indvars.iv.next.i166, %wide.trip.count.i
  br i1 %exitcond.not.i167, label %_task_layout_display_masks.exit169, label %bb.dz, !llvm.loop !32

_task_layout_display_masks.exit169:               ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  br label %.lr.ph.i172

bb.ec:                                            ; preds = %.lr.ph.i172
  %indvars.iv.next.i178 = add nuw nsw i64 %indvars.iv.i173, 1 ; 2 uses
  %exitcond.not.i179 = icmp eq i64 %indvars.iv.next.i178, %wide.trip.count.i
  br i1 %exitcond.not.i179, label %.loopexit.i175, label %.lr.ph.i172, !llvm.loop !33

.lr.ph.i172:                                      ; preds = %bb.ec, %_task_layout_display_masks.exit169
  %indvars.iv.i173 = phi i64 [ 0, %_task_layout_display_masks.exit169 ], [ %indvars.iv.next.i178, %bb.ec ] ; 2 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %indvars.iv.i173
  %i.qm = load ptr, ptr %i.ql, align 8            ; 2 uses
  %.not.i174 = icmp eq ptr %i.qm, null
  br i1 %.not.i174, label %bb.ec, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i172
  %i.qn = call i64 @slurm_bit_size(ptr noundef nonnull %i.qm) #9
  %i.qo = trunc i64 %i.qn to i32
  %i.qp = add nsw i32 %i.qo, 3
  %i.qq = sdiv i32 %i.qp, 4
  %narrow.i = add nsw i32 %i.qq, 3
  %i.qr = sext i32 %narrow.i to i64
  br label %.loopexit.i175

.loopexit.i175:                                   ; preds = %bb.ec, %_task_layout_display_masks.exit.thread, %bb.ed
  %.040.i = phi i64 [ %i.qr, %bb.ed ], [ 3, %_task_layout_display_masks.exit.thread ], [ 3, %bb.ec ] ; 2 uses
  %i.qs = trunc nsw i64 %.040.i to i32
  %i.qt = mul i32 %i.qs, %i.al
  %i.qu = add i32 %i.qt, 1                        ; 2 uses
  %i.qv = call i32 @slurm_get_log_level() #9
  %i.qw = icmp sgt i32 %i.qv, 6
  br i1 %i.qw, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.loopexit.i175
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.41, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._lllp_generate_cpu_bind, i32 noundef range(i32 0, 65536) %i.al, i64 noundef %.040.i, i32 noundef %i.qu) #9
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %.loopexit.i175
  %i.qx = sext i32 %i.qu to i64
  %i.qy = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.qx, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1413, ptr noundef nonnull @__func__._lllp_generate_cpu_bind) #9 ; 3 uses
  store ptr %i.qy, ptr %i.c, align 8
  br i1 %.not.i157, label %._crit_edge.i176, label %.lr.ph50.preheader.i

.lr.ph50.preheader.i:                             ; preds = %bb.ef
  %wide.trip.count58.i = zext i16 %i.ak to i64
  br label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %bb.ej, %.lr.ph50.preheader.i
  %i.qz = phi ptr [ %i.qy, %.lr.ph50.preheader.i ], [ %i.rt, %bb.ej ] ; 2 uses
  %i.ra = phi ptr [ %i.qy, %.lr.ph50.preheader.i ], [ %i.ru, %bb.ej ] ; 2 uses
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph50.preheader.i ], [ %indvars.iv.next56.i, %bb.ej ] ; 2 uses
  %.049.i = phi i32 [ 0, %.lr.ph50.preheader.i ], [ %.1.i, %bb.ej ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %indvars.iv55.i
  %i.rc = load ptr, ptr %i.rb, align 8            ; 2 uses
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph50.i
  %i.re = call ptr @slurm_bit_fmt_hexmask(ptr noundef nonnull %i.rc) #9 ; 3 uses
  store ptr %i.re, ptr %i.e, align 8
  %i.rf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.re) #10
  %i.rg = trunc i64 %i.rf to i32
  %i.rh = add i32 %i.rg, 1                        ; 2 uses
  %i.ri = icmp sgt i32 %.049.i, 0
  br i1 %i.ri, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.rj = zext nneg i32 %.049.i to i64
  %i.rk = getelementptr i8, ptr %i.ra, i64 %i.rj
  %i.rl = getelementptr i8, ptr %i.rk, i64 -1
  store i8 44, ptr %i.rl, align 1
  %.pre.i177 = load ptr, ptr %i.c, align 8
  %.pre60.i = load ptr, ptr %i.e, align 8
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.rm = phi ptr [ %.pre60.i, %bb.eh ], [ %i.re, %bb.eg ]
  %i.rn = phi ptr [ %.pre.i177, %bb.eh ], [ %i.qz, %bb.eg ] ; 3 uses
  %i.ro = sext i32 %.049.i to i64
  %i.rp = getelementptr inbounds i8, ptr %i.rn, i64 %i.ro
  %i.rq = sext i32 %i.rh to i64
  %i.rr = call i64 @strlcpy(ptr noundef %i.rp, ptr noundef nonnull dereferenceable(1) %i.rm, i64 noundef %i.rq) #9 ; 0 uses
  %i.rs = add nsw i32 %i.rh, %.049.i
  call void @slurm_xfree(ptr noundef nonnull %i.e) #9
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.lr.ph50.i
  %i.rt = phi ptr [ %i.rn, %bb.ei ], [ %i.qz, %.lr.ph50.i ]
  %i.ru = phi ptr [ %i.rn, %bb.ei ], [ %i.ra, %.lr.ph50.i ]
  %.1.i = phi i32 [ %i.rs, %bb.ei ], [ %.049.i, %.lr.ph50.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge.i176, label %.lr.ph50.i, !llvm.loop !34

._crit_edge.i176:                                 ; preds = %bb.ej, %bb.ef
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.rw = load ptr, ptr %i.rv, align 8
  %.not45.i = icmp eq ptr %i.rw, null
  br i1 %.not45.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge.i176
  call void @slurm_xfree(ptr noundef nonnull %i.rv) #9
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %._crit_edge.i176
  %i.rx = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ry = load i8, ptr %i.rx, align 1
  %.not46.i = icmp eq i8 %i.ry, 0
  br i1 %.not46.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  store ptr null, ptr %i.c, align 8
  %i.rz = load i16, ptr %i.bg, align 8
  %i.sa = or i16 %i.rz, 256
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  %i.sb = load i16, ptr %i.bg, align 8
  %i.sc = and i16 %i.sb, -2
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sink = phi ptr [ null, %bb.en ], [ %i.rx, %bb.em ]
  %storemerge = phi i16 [ %i.sc, %bb.en ], [ %i.sa, %bb.em ]
  store ptr %.sink, ptr %i.rv, align 8
  store i16 %storemerge, ptr %i.bg, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.c) #9
  %i.sd = load i16, ptr %i.bg, align 8
  %i.se = and i16 %i.sd, -31                      ; 2 uses
  store i16 %i.se, ptr %i.bg, align 8
  %i.sf = zext i16 %i.se to i32
  call void @slurm_sprint_cpu_bind_type(ptr noundef nonnull %i.d, i32 noundef %i.sf) #9
  %i.sg = call i32 @slurm_get_log_level() #9
  %i.sh = icmp sgt i32 %i.sg, 2
  br i1 %i.sh, label %bb.ep, label %_lllp_generate_cpu_bind.exit

bb.ep:                                            ; preds = %bb.eo
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.sj = load i32, ptr %i.si, align 8
  %i.sk = load ptr, ptr %i.rv, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.42, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._lllp_generate_cpu_bind, i32 noundef %i.sj, ptr noundef nonnull %i.d, ptr noundef %i.sk) #9
  br label %_lllp_generate_cpu_bind.exit

_lllp_generate_cpu_bind.exit:                     ; preds = %bb.eo, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.ev

bb.eq:                                            ; preds = %bb.du
  %i.sl = call fastcc ptr @_alloc_mask(ptr noundef %0, ptr noundef %i.y, ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ad) ; 2 uses
  %.not129 = icmp eq ptr %i.sl, null
  br i1 %.not129, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.sm) #9
  store ptr %i.sl, ptr %i.sm, align 8
  %i.sn = load i16, ptr %i.bg, align 8
  %i.so = and i16 %i.sn, -4001
  %i.sp = or disjoint i16 %i.so, 256
  store i16 %i.sp, ptr %i.bg, align 8
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.sr = load i32, ptr %i.sq, align 4
  %i.ss = and i32 %i.sr, 128
  %.not130 = icmp eq i32 %i.ss, 0
  br i1 %.not130, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %.not131 = icmp eq ptr %2, null
  br i1 %.not131, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.st = load i16, ptr %i.bg, align 8
  %i.su = zext i16 %i.st to i32
  call void @slurm_sprint_cpu_bind_type(ptr noundef nonnull %i.x, i32 noundef %i.su) #9
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.sw = load i32, ptr %i.sv, align 8
  call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i32 noundef %i.sw, ptr noundef nonnull %i.x) #9
  %i.sx = load ptr, ptr %2, align 8
  %i.sy = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.16, ptr noundef %i.sx) #9 ; 0 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es, %_lllp_generate_cpu_bind.exit
  %.5 = phi i32 [ 0, %_lllp_generate_cpu_bind.exit ], [ %.3, %bb.et ], [ %.3, %bb.eu ], [ 0, %bb.es ] ; 2 uses
  %i.sz = load ptr, ptr %i.w, align 8             ; 3 uses
  %.not132 = icmp eq ptr %i.sz, null
  br i1 %.not132, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.sz, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not5.i = icmp eq i16 %i.ak, 0
  br i1 %.not5.i, label %_lllp_free_masks.exit, label %.lr.ph.preheader.i180

.lr.ph.preheader.i180:                            ; preds = %bb.ew
  %wide.trip.count.i181 = zext i16 %i.ak to i64
  br label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %bb.ey, %.lr.ph.preheader.i180
  %indvars.iv.i183 = phi i64 [ 0, %.lr.ph.preheader.i180 ], [ %indvars.iv.next.i185, %bb.ey ] ; 2 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %indvars.iv.i183
  %i.tb = load ptr, ptr %i.ta, align 8            ; 2 uses
  store ptr %i.tb, ptr %i.b, align 8
  %.not.i184 = icmp eq ptr %i.tb, null
  br i1 %.not.i184, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph.i182
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #9
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.lr.ph.i182
  store ptr null, ptr %i.b, align 8
  %indvars.iv.next.i185 = add nuw nsw i64 %indvars.iv.i183, 1 ; 2 uses
  %exitcond.not.i186 = icmp eq i64 %indvars.iv.next.i185, %wide.trip.count.i181
  br i1 %exitcond.not.i186, label %_lllp_free_masks.exit, label %.lr.ph.i182, !llvm.loop !35

_lllp_free_masks.exit:                            ; preds = %bb.ey, %bb.ew
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ez

.critedge:                                        ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #9
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ev, %_lllp_free_masks.exit, %.critedge, %bb.aw
  %.1110 = phi i32 [ %.2, %bb.aw ], [ 0, %.critedge ], [ %.5, %_lllp_free_masks.exit ], [ %.5, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #9
  ret i32 %.1110
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_alloc_mask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %3, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %5, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call fastcc ptr @_get_avail_map(ptr noundef %i.g, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c) ; 7 uses
  store ptr %i.h, ptr %i.d, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @slurm_bit_size(ptr noundef nonnull %i.h) #9
  %i.j = tail call ptr @slurm_bit_alloc(i64 noundef %i.i) #9 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8
  %i.k = load i16, ptr %i.a, align 2              ; 2 uses
  %i.l = zext i16 %i.k to i32                     ; 4 uses
  %.not135 = icmp eq i16 %i.k, 0                  ; 2 uses
  br i1 %.not135, label %._crit_edge.thread, label %.preheader88.lr.ph

.preheader88.lr.ph:                               ; preds = %bb.b
  %i.m = load i16, ptr %i.b, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %.not136 = icmp eq i16 %i.m, 0
  %i.o = load i16, ptr %i.c, align 2              ; 2 uses
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  br i1 %.not136, label %.preheader88.lr.ph.split, label %.preheader88.lr.ph.split.us

.preheader88.lr.ph.split.us:                      ; preds = %.preheader88.lr.ph
  %.not137 = icmp eq i16 %i.o, 0
  br i1 %.not137, label %.preheader88.us, label %.preheader88.us.us

.preheader88.us.us:                               ; preds = %.preheader88.lr.ph.split.us, %bb.g
  %.056110.us.us = phi i32 [ %.157.us.us, %bb.g ], [ 0, %.preheader88.lr.ph.split.us ]
  %.060109.us.us = phi i32 [ %i.ag, %bb.g ], [ 0, %.preheader88.lr.ph.split.us ]
  %.065108.us.us = phi i32 [ %i.ak, %bb.g ], [ 0, %.preheader88.lr.ph.split.us ]
  br label %.preheader87.us.us.us

.preheader87.us.us.us:                            ; preds = %bb.e, %.preheader88.us.us
  %.051100.us.us.us = phi i32 [ 0, %.preheader88.us.us ], [ %.253.us.us.us157164, %bb.e ]
  %.05899.us.us.us = phi i32 [ 0, %.preheader88.us.us ], [ %.159.us.us.us, %bb.e ]
  %.16198.us.us.us = phi i32 [ %.060109.us.us, %.preheader88.us.us ], [ %i.ag, %bb.e ]
  %.06797.us.us.us = phi i32 [ 0, %.preheader88.us.us ], [ %i.ah, %bb.e ]
  br label %.outer

.outer:                                           ; preds = %._crit_edge208, %.preheader87.us.us.us
  %.not81.us.us.us = phi i1 [ false, %._crit_edge208 ], [ true, %.preheader87.us.us.us ]
  %.15292.us.us.us.ph = phi i32 [ 1, %._crit_edge208 ], [ %.051100.us.us.us, %.preheader87.us.us.us ] ; 2 uses
  %.05491.us.us.us.ph = phi i32 [ %.05491.us.us.us.lcssa, %._crit_edge208 ], [ 0, %.preheader87.us.us.us ]
  %.26290.us.us.us.ph = phi i32 [ %i.aa, %._crit_edge208 ], [ %.16198.us.us.us, %.preheader87.us.us.us ] ; 2 uses
  %.06389.us.us.us.ph = phi i32 [ %i.ab, %._crit_edge208 ], [ 0, %.preheader87.us.us.us ] ; 2 uses
  %i.q = sext i32 %.26290.us.us.us.ph to i64
  %i.r = tail call i64 @slurm_bit_size(ptr noundef nonnull %i.h) #9
  %.not82.us.us.us203 = icmp sgt i64 %i.r, %i.q
  %spec.select.us.us.us204 = select i1 %.not82.us.us.us203, i32 %.26290.us.us.us.ph, i32 0 ; 3 uses
  %i.s = sext i32 %spec.select.us.us.us204 to i64 ; 2 uses
  %i.t = tail call i32 @slurm_bit_test(ptr noundef nonnull %i.h, i64 noundef %i.s) #9
  %.not83.us.us.us205 = icmp eq i32 %i.t, 0
  br i1 %.not83.us.us.us205, label %.thread, label %._crit_edge208

bb.c:                                             ; preds = %.thread
  %i.u = sext i32 %i.ac to i64
  %i.v = tail call i64 @slurm_bit_size(ptr noundef nonnull %i.h) #9
  %.not82.us.us.us = icmp sgt i64 %i.v, %i.u
  %spec.select.us.us.us = select i1 %.not82.us.us.us, i32 %i.ac, i32 0 ; 3 uses
  %i.w = sext i32 %spec.select.us.us.us to i64    ; 2 uses
  %i.x = tail call i32 @slurm_bit_test(ptr noundef nonnull %i.h, i64 noundef %i.w) #9
  %.not83.us.us.us = icmp eq i32 %i.x, 0
  br i1 %.not83.us.us.us, label %.thread, label %._crit_edge208, !llvm.loop !36

._crit_edge208:                                   ; preds = %bb.c, %.outer
  %.05491.us.us.us.lcssa = phi i32 [ %.05491.us.us.us.ph, %.outer ], [ 1, %bb.c ] ; 2 uses
  %.06389.us.us.us.lcssa = phi i32 [ %.06389.us.us.us.ph, %.outer ], [ %i.ad, %bb.c ]
  %spec.select.us.us.us.lcssa = phi i32 [ %spec.select.us.us.us204, %.outer ], [ %spec.select.us.us.us, %bb.c ]
  %.lcssa193 = phi i64 [ %i.s, %.outer ], [ %i.w, %bb.c ]
  tail call void @slurm_bit_set(ptr noundef %i.j, i64 noundef %.lcssa193) #9
  %i.y = load i32, ptr %4, align 4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %4, align 4
  %i.aa = add nsw i32 %spec.select.us.us.us.lcssa, 1 ; 2 uses
  %i.ab = add nuw nsw i32 %.06389.us.us.us.lcssa, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.p
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %.outer, !llvm.loop !36

.thread:                                          ; preds = %.outer, %bb.c
  %spec.select.us.us.us207 = phi i32 [ %spec.select.us.us.us, %bb.c ], [ %spec.select.us.us.us204, %.outer ]
  %.06389.us.us.us206 = phi i32 [ %i.ad, %bb.c ], [ %.06389.us.us.us.ph, %.outer ]
  %i.ac = add nsw i32 %spec.select.us.us.us207, 1 ; 4 uses
  %i.ad = add nuw nsw i32 %.06389.us.us.us206, 1  ; 3 uses
  %exitcond.not155 = icmp eq i32 %i.ad, %i.p
  br i1 %exitcond.not155, label %bb.d, label %bb.c, !llvm.loop !36

._crit_edge.us.us.us:                             ; preds = %._crit_edge208
  %.not80.us.us.us = icmp eq i32 %.05491.us.us.us.lcssa, 0 ; 2 uses
  %spec.select = select i1 %.not80.us.us.us, ptr %3, ptr %6
  %spec.select191 = select i1 %.not80.us.us.us, i32 %.05899.us.us.us, i32 1
  br label %.sink.split

bb.d:                                             ; preds = %.thread
  br i1 %.not81.us.us.us, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.us.us.us, %bb.d
  %.sink = phi ptr [ %6, %bb.d ], [ %spec.select, %._crit_edge.us.us.us ] ; 2 uses
  %.253.us.us.us157164.ph = phi i32 [ %.15292.us.us.us.ph, %bb.d ], [ 1, %._crit_edge.us.us.us ]
  %.ph = phi i32 [ %i.ac, %bb.d ], [ %i.aa, %._crit_edge.us.us.us ]
  %.159.us.us.us.ph = phi i32 [ 1, %bb.d ], [ %spec.select191, %._crit_edge.us.us.us ]
  %i.ae = load i32, ptr %.sink, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %.sink, align 4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.253.us.us.us157164 = phi i32 [ %.15292.us.us.us.ph, %bb.d ], [ %.253.us.us.us157164.ph, %.sink.split ] ; 2 uses
  %i.ag = phi i32 [ %i.ac, %bb.d ], [ %.ph, %.sink.split ] ; 2 uses
  %.159.us.us.us = phi i32 [ 1, %bb.d ], [ %.159.us.us.us.ph, %.sink.split ] ; 2 uses
  %i.ah = add nuw nsw i32 %.06797.us.us.us, 1     ; 2 uses
  %exitcond144.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond144.not, label %._crit_edge101.split.us.us.us, label %.preheader87.us.us.us, !llvm.loop !37

._crit_edge101.split.us.us.us:                    ; preds = %bb.e
  %.not78.us.us = icmp eq i32 %.159.us.us.us, 0
  br i1 %.not78.us.us, label %.sink.split185, label %bb.f

bb.f:                                             ; preds = %._crit_edge101.split.us.us.us
  %.not79.us.us = icmp eq i32 %.253.us.us.us157164, 0
  br i1 %.not79.us.us, label %bb.g, label %.sink.split185

.sink.split185:                                   ; preds = %._crit_edge101.split.us.us.us, %bb.f
  %.sink189 = phi ptr [ %5, %bb.f ], [ %2, %._crit_edge101.split.us.us.us ] ; 2 uses
  %.157.us.us.ph = phi i32 [ 1, %bb.f ], [ %.056110.us.us, %._crit_edge101.split.us.us.us ]
  %i.ai = load i32, ptr %.sink189, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %.sink189, align 4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split185, %bb.f
  %.157.us.us = phi i32 [ 1, %bb.f ], [ %.157.us.us.ph, %.sink.split185 ] ; 2 uses
  %i.ak = add nuw nsw i32 %.065108.us.us, 1       ; 2 uses
  %exitcond145.not = icmp eq i32 %i.ak, %i.l
  br i1 %exitcond145.not, label %._crit_edge, label %.preheader88.us.us, !llvm.loop !38

.preheader88.us:                                  ; preds = %.preheader88.lr.ph.split.us, %.preheader88.us
  %.065108.us = phi i32 [ %i.ao, %.preheader88.us ], [ 0, %.preheader88.lr.ph.split.us ]
  %.promoted.us = load i32, ptr %3, align 4
  %i.al = add i32 %.promoted.us, %i.n
  store i32 %i.al, ptr %3, align 4
  %i.am = load i32, ptr %2, align 4
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %2, align 4
  %i.ao = add nuw nsw i32 %.065108.us, 1          ; 2 uses
  %exitcond146.not = icmp eq i32 %i.ao, %i.l
  br i1 %exitcond146.not, label %._crit_edge.thread, label %.preheader88.us, !llvm.loop !38

.preheader88.lr.ph.split:                         ; preds = %.preheader88.lr.ph
  %.promoted = load i32, ptr %2, align 4
  %i.ap = add i32 %.promoted, %i.l
  store i32 %i.ap, ptr %2, align 4
  br label %._crit_edge.thread

._crit_edge:                                      ; preds = %bb.g
  %i.aq = icmp eq i32 %.157.us.us, 0
  br i1 %i.aq, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %.preheader88.us, %.preheader88.lr.ph.split, %bb.b, %._crit_edge
  %i.ar = load i32, ptr %1, align 4
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge.thread
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #9
  store ptr null, ptr %i.d, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.au = load i16, ptr %i.at, align 4
  %.fr = freeze i16 %i.au                         ; 3 uses
  %.not75 = icmp sgt i16 %.fr, -1
  br i1 %.not75, label %.loopexit86, label %switch.early.test

switch.early.test:                                ; preds = %bb.h
  switch i16 %.fr, label %bb.i [
    i16 -2, label %.loopexit86
    i16 -32768, label %.loopexit86
  ]

bb.i:                                             ; preds = %switch.early.test
  %i.av = and i16 %.fr, 32767                     ; 2 uses
  %i.aw = load i16, ptr %i.c, align 2             ; 2 uses
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  %i.ay = icmp ugt i16 %i.aw, 1
  %i.az = icmp ne i16 %i.av, 0
  %i.ba = and i1 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph, label %.loopexit86

.lr.ph:                                           ; preds = %bb.i
  %i.bb = load i16, ptr %i.b, align 2             ; 2 uses
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %i.bd = icmp ult i16 %i.bb, 2
  %brmerge = or i1 %i.bd, %.not135
  br i1 %brmerge, label %.loopexit86, label %.preheader.lr.ph.us.preheader

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph
  %i.be = zext nneg i16 %i.av to i32
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %..loopexit85_crit_edge.split.us.us
  %.164131.us.in = phi i32 [ %.164131.us, %..loopexit85_crit_edge.split.us.us ], [ %i.ax, %.preheader.lr.ph.us.preheader ] ; 2 uses
  %.0130.us = phi i32 [ %i.bp, %..loopexit85_crit_edge.split.us.us ], [ %i.be, %.preheader.lr.ph.us.preheader ]
  %.164131.us = add nsw i32 %.164131.us.in, -1    ; 2 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %..loopexit_crit_edge.us.us, %.preheader.lr.ph.us
  %.168126.us.us.in = phi i32 [ %i.bc, %.preheader.lr.ph.us ], [ %.168126.us.us, %..loopexit_crit_edge.us.us ] ; 2 uses
  %.1125.us.us = phi i32 [ %.0130.us, %.preheader.lr.ph.us ], [ %i.bp, %..loopexit_crit_edge.us.us ]
  %.168126.us.us = add nsw i32 %.168126.us.us.in, -1 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.us.us
  %.2122.us.us = phi i32 [ %.1125.us.us, %.preheader.us.us ], [ %i.bp, %bb.j ] ; 2 uses
  %.166.in121.us.us = phi i32 [ %i.l, %.preheader.us.us ], [ %.166.us.us, %bb.j ] ; 2 uses
  %.166.us.us = add nsw i32 %.166.in121.us.us, -1 ; 2 uses
  %i.bf = mul nuw nsw i32 %.166.us.us, %i.bc
  %i.bg = add nuw nsw i32 %i.bf, %.168126.us.us
  %i.bh = mul nsw i32 %i.bg, %i.ax
  %i.bi = add nuw nsw i32 %i.bh, %.164131.us
  %i.bj = load ptr, ptr @conf, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4232
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = zext i16 %i.bl to i32
  %i.bn = urem i32 %i.bi, %i.bm
  %i.bo = zext nneg i32 %i.bn to i64
  call void @slurm_bit_clear(ptr noundef %i.j, i64 noundef %i.bo) #9
  %i.bp = add nsw i32 %.2122.us.us, -1            ; 4 uses
  %i.bq = icmp sgt i32 %.166.in121.us.us, 1
  %i.br = icmp ne i32 %i.bp, 0                    ; 2 uses
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.j, label %..loopexit_crit_edge.us.us, !llvm.loop !39

..loopexit_crit_edge.us.us:                       ; preds = %bb.j
  %i.bt = icmp sgt i32 %.168126.us.us.in, 2
  %i.bu = select i1 %i.bt, i1 %i.br, i1 false
  br i1 %i.bu, label %.preheader.us.us, label %..loopexit85_crit_edge.split.us.us, !llvm.loop !40

..loopexit85_crit_edge.split.us.us:               ; preds = %..loopexit_crit_edge.us.us
  %i.bv = icmp sgt i32 %.164131.us.in, 2
  %i.bw = icmp sgt i32 %.2122.us.us, 1
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %.preheader.lr.ph.us, label %.loopexit86, !llvm.loop !41

.loopexit86:                                      ; preds = %..loopexit85_crit_edge.split.us.us, %.lr.ph, %bb.i, %switch.early.test, %switch.early.test, %bb.h
  call fastcc void @_lllp_map_abstract_masks(i32 noundef 1, ptr noundef nonnull %i.e)
  %i.by = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bz = call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.by) #9 ; 2 uses
  %.not77 = icmp eq ptr %i.by, null
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit86
  call void @slurm_bit_free(ptr noundef nonnull %i.e) #9
  br label %bb.l

bb.l:                                             ; preds = %.loopexit86, %bb.k, %bb.a
  %.069 = phi ptr [ null, %bb.a ], [ %i.bz, %bb.k ], [ %i.bz, %.loopexit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.069
}

declare void @slurm_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @slurm_sprint_cpu_bind_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4034) i32 @_task_layout_lllp_block(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2              ; 3 uses
  %i.m = zext i16 %i.l to i32                     ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 6 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.r = tail call i32 @slurm_get_log_level() #9
  %i.s = icmp sgt i32 %i.r, 2
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.36, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_lllp_block) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call fastcc ptr @_get_avail_map(ptr noundef %i.u, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c) ; 5 uses
  store ptr %i.v, ptr %i.d, align 8
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.am, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load i16, ptr %i.w, align 8              ; 2 uses
  switch i16 %i.x, label %bb.f [
    i16 0, label %bb.e
    i16 -2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = and i16 %i.z, 8192
  %.not109 = icmp eq i16 %i.aa, 0
  %i.ab = tail call i32 @slurm_bit_set_count(ptr noundef nonnull %i.v) #9 ; 2 uses
  br i1 %.not109, label %.thread, label %.thread129

bb.f:                                             ; preds = %bb.d
  %i.ac = zext i16 %i.x to i32
  %i.ad = tail call i32 @slurm_bit_set_count(ptr noundef nonnull %i.v) #9
  br label %.thread129

.thread129:                                       ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %i.ad, %bb.f ], [ %i.ab, %bb.e ] ; 4 uses
  %.079132 = phi i32 [ %i.ac, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %i.af = load ptr, ptr @conf, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4158
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = load i16, ptr %i.c, align 2
  %.not111 = icmp ugt i16 %i.ah, %i.ai
  br i1 %.not111, label %.thread, label %bb.g

bb.g:                                             ; preds = %.thread129
  %i.aj = load i16, ptr %i.n, align 2
  %i.ak = zext i16 %i.aj to i32
  %.rhs.trunc = trunc nuw i32 %.079132 to i16
  %i.al = udiv i16 %i.ah, %.rhs.trunc
  %.zext = zext i16 %i.al to i32
  %i.am = mul nuw nsw i32 %.zext, %i.ak           ; 2 uses
  %i.an = icmp slt i32 %i.ae, %i.am
  br i1 %i.an, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.30, i32 noundef %i.ae, i32 noundef %i.am) #9 ; 0 uses
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #9
  br label %bb.am

.thread:                                          ; preds = %bb.e, %bb.g, %.thread129
  %.not110128 = phi i1 [ false, %.thread129 ], [ false, %bb.g ], [ true, %bb.e ]
  %i.ap = phi i32 [ %i.ae, %.thread129 ], [ %i.ae, %bb.g ], [ %i.ab, %bb.e ] ; 4 uses
  %.079127 = phi i32 [ %.079132, %.thread129 ], [ %.079132, %bb.g ], [ 0, %bb.e ]
  %i.aq = icmp slt i32 %i.ap, %i.m
  br i1 %i.aq, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 128
  %.not122 = icmp eq i32 %i.at, 0
  br i1 %.not122, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.31, i32 noundef %i.ap, i32 noundef %i.m) #9 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #9
  br label %bb.am

bb.l:                                             ; preds = %.thread
  %i.av = icmp samesign ult i32 %i.ap, %i.q
  br i1 %i.av, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = udiv i32 %i.ap, %i.m                    ; 2 uses
  %i.ax = tail call i32 @slurm_get_log_level() #9
  %i.ay = icmp sgt i32 %i.ax, 2
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = load i16, ptr %i.n, align 2
  %i.ba = zext i16 %i.az to i32
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.32, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_lllp_block, i32 noundef %i.ba, i32 noundef %i.aw) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = trunc i32 %i.aw to i16
  store i16 %i.bb, ptr %i.n, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bc = tail call i64 @slurm_bit_size(ptr noundef nonnull %i.v) #9
  %.fr = freeze i64 %i.bc
  %i.bd = trunc i64 %.fr to i32                   ; 2 uses
  %i.be = zext i16 %i.l to i64
  %i.bf = tail call ptr @slurm_xcalloc(i64 noundef %i.be, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1234, ptr noundef nonnull @__func__._task_layout_lllp_block) #9 ; 3 uses
  store ptr %i.bf, ptr %2, align 8
  %i.bg = load i16, ptr %i.c, align 2             ; 3 uses
  %i.bh = zext i16 %i.bg to i32                   ; 4 uses
  %i.bi = load i16, ptr %i.a, align 2             ; 2 uses
  %i.bj = zext i16 %i.bi to i64                   ; 3 uses
  %i.bk = load i16, ptr %i.b, align 2             ; 3 uses
  %i.bl = zext i16 %i.bk to i64                   ; 2 uses
  %i.bm = mul nuw nsw i64 %i.bl, %i.bj            ; 2 uses
  %i.bn = tail call ptr @slurm_xcalloc(i64 noundef %i.bm, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1238, ptr noundef nonnull @__func__._task_layout_lllp_block) #9
  store ptr %i.bn, ptr %i.e, align 8
  %i.bo = tail call ptr @slurm_xcalloc(i64 noundef %i.bm, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1239, ptr noundef nonnull @__func__._task_layout_lllp_block) #9
  store ptr %i.bo, ptr %i.f, align 8
  %i.bp = zext i16 %i.bk to i32
  %i.bq = mul nuw nsw i32 %i.bp, %i.bh
  %i.br = tail call ptr @slurm_xcalloc(i64 noundef %i.bj, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1241, ptr noundef nonnull @__func__._task_layout_lllp_block) #9
  store ptr %i.br, ptr %i.g, align 8
  %.not147 = icmp eq i16 %i.l, 0
  br i1 %.not147, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %bb.p
  %i.bs = shl nuw nsw i64 %i.bj, 2                ; 2 uses
  %i.bt = mul nuw nsw i64 %i.bs, %i.bl            ; 2 uses
  %i.bu = icmp sgt i32 %i.bd, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 86 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 240
  br i1 %i.bu, label %.lr.ph145.split.us, label %.split.us.thread

.split.us.thread:                                 ; preds = %.lr.ph145
  %i.by = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.37) #9 ; 0 uses
  br label %bb.aj

.lr.ph145.split.us:                               ; preds = %.lr.ph145, %._crit_edge.us
  %.080143.us = phi i32 [ %.3.us, %._crit_edge.us ], [ 0, %.lr.ph145 ] ; 4 uses
  %.081142.us = phi i32 [ %.080143.us, %._crit_edge.us ], [ -1, %.lr.ph145 ]
  %.085141.us = phi i32 [ %.388.us, %._crit_edge.us ], [ 0, %.lr.ph145 ]
  %i.bz = icmp eq i32 %.080143.us, %.081142.us
  br i1 %i.bz, label %.split.us, label %bb.q

bb.q:                                             ; preds = %.lr.ph145.split.us
  %i.ca = icmp sgt i32 %.080143.us, 0
  br i1 %i.ca, label %bb.r, label %.lr.ph.us.preheader

bb.r:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cb, i8 0, i64 %i.bt, i1 false)
  %i.cc = load ptr, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cc, i8 0, i64 %i.bt, i1 false)
  %i.cd = load ptr, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cd, i8 0, i64 %i.bs, i1 false)
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.r, %bb.q
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.ai
  %.1136.us = phi i32 [ %.2.us, %bb.ai ], [ %.080143.us, %.lr.ph.us.preheader ] ; 7 uses
  %.082135.us = phi i32 [ %i.em, %bb.ai ], [ 0, %.lr.ph.us.preheader ] ; 10 uses
  %.186134.us = phi i32 [ %.287.us, %bb.ai ], [ %.085141.us, %.lr.ph.us.preheader ] ; 5 uses
  %i.ce = load ptr, ptr %i.d, align 8
  %i.cf = sext i32 %.082135.us to i64             ; 2 uses
  %i.cg = tail call i32 @slurm_bit_test(ptr noundef %i.ce, i64 noundef %i.cf) #9
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ai, label %bb.s

bb.s:                                             ; preds = %.lr.ph.us
  %i.ci = sdiv i32 %.082135.us, %i.bh             ; 3 uses
  %i.cj = load i16, ptr %i.bv, align 2            ; 2 uses
  %.not113.us = icmp eq i16 %i.cj, 0
  br i1 %.not113.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = zext i16 %i.cj to i32
  %i.cl = load ptr, ptr %i.e, align 8
  %i.cm = sext i32 %i.ci to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4
  %.not114.us = icmp slt i32 %i.co, %i.ck
  br i1 %.not114.us, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cp = sdiv i32 %.082135.us, %i.bq             ; 2 uses
  %i.cq = load i16, ptr %i.bw, align 2            ; 2 uses
  %.not115.us = icmp eq i16 %i.cq, 0
  br i1 %.not115.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = zext i16 %i.cq to i32
  %i.cs = load ptr, ptr %i.g, align 8
  %i.ct = sext i32 %i.cp to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4
  %.not116.us = icmp slt i32 %i.cv, %i.cr
  br i1 %.not116.us, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.not110128, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr %i.f, align 8
  %i.cx = sext i32 %i.ci to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4
  %.not117.us = icmp slt i32 %i.cz, %.079127
  br i1 %.not117.us, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.da = sext i32 %.1136.us to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %.not118.us = icmp eq ptr %i.dc, null
  br i1 %.not118.us, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dd = load ptr, ptr @conf, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4232
  %i.df = load i16, ptr %i.de, align 8
  %i.dg = zext i16 %i.df to i64
  %i.dh = tail call ptr @slurm_bit_alloc(i64 noundef %i.dg) #9 ; 2 uses
  store ptr %i.dh, ptr %i.db, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.di = phi ptr [ %i.dh, %bb.z ], [ %i.dc, %bb.y ]
  tail call void @slurm_bit_set(ptr noundef %i.di, i64 noundef %i.cf) #9
  %i.dj = load ptr, ptr %i.f, align 8
  %i.dk = sext i32 %i.ci to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4
  %i.do = add nsw i32 %.186134.us, 1              ; 2 uses
  %i.dp = load i16, ptr %i.n, align 2
  %i.dq = zext i16 %i.dp to i32
  %i.dr = icmp slt i32 %i.do, %i.dq
  br i1 %i.dr, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load ptr, ptr %i.e, align 8
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dk ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4
  %i.dw = load ptr, ptr %i.g, align 8
  %i.dx = sext i32 %i.cp to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4
  %i.eb = load i16, ptr %i.bx, align 8
  %i.ec = and i16 %i.eb, 4
  %.not119.us = icmp eq i16 %i.ec, 0
  br i1 %.not119.us, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load i16, ptr %i.bv, align 2
  %i.ee = icmp eq i16 %i.ed, 1
  br i1 %i.ee, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ef = load i16, ptr %i.n, align 2             ; 2 uses
  %i.eg = zext i16 %i.ef to i32                   ; 2 uses
  %i.eh = icmp ult i16 %i.ef, %i.bg
  br i1 %i.eh, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = urem i32 %i.eg, %i.bh
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ej = sub nuw nsw i32 %i.bh, %i.eg
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.us = phi i32 [ %i.ej, %bb.af ], [ %i.ei, %bb.ae ]
  %i.ek = add nsw i32 %.0.us, %.082135.us
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ac
  %.183.us = phi i32 [ %i.ek, %bb.ag ], [ %.082135.us, %bb.ac ]
  %i.el = add nsw i32 %.1136.us, 1                ; 3 uses
  %.not120.us = icmp slt i32 %i.el, %i.m
  br i1 %.not120.us, label %bb.ai, label %._crit_edge.us

bb.ai:                                            ; preds = %bb.ah, %bb.aa, %bb.x, %bb.v, %bb.t, %.lr.ph.us
  %.287.us = phi i32 [ %.186134.us, %.lr.ph.us ], [ %.186134.us, %bb.t ], [ %.186134.us, %bb.v ], [ %.186134.us, %bb.x ], [ %i.do, %bb.aa ], [ 0, %bb.ah ] ; 2 uses
  %.284.us = phi i32 [ %.082135.us, %.lr.ph.us ], [ %.082135.us, %bb.t ], [ %.082135.us, %bb.v ], [ %.082135.us, %bb.x ], [ %.082135.us, %bb.aa ], [ %.183.us, %bb.ah ]
  %.2.us = phi i32 [ %.1136.us, %.lr.ph.us ], [ %.1136.us, %bb.t ], [ %.1136.us, %bb.v ], [ %.1136.us, %bb.x ], [ %.1136.us, %bb.aa ], [ %i.el, %bb.ah ] ; 2 uses
  %i.em = add nsw i32 %.284.us, 1                 ; 2 uses
  %i.en = icmp slt i32 %i.em, %i.bd
  br i1 %i.en, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !42

._crit_edge.us:                                   ; preds = %bb.ai, %bb.ah
  %.388.us = phi i32 [ 0, %bb.ah ], [ %.287.us, %bb.ai ]
  %.3.us = phi i32 [ %i.el, %bb.ah ], [ %.2.us, %bb.ai ] ; 2 uses
  %i.eo = icmp slt i32 %.3.us, %i.m
  br i1 %i.eo, label %.lr.ph145.split.us, label %._crit_edge146, !llvm.loop !43

.split.us:                                        ; preds = %.lr.ph145.split.us
  %.pre = load ptr, ptr %i.d, align 8
  %i.ep = icmp eq ptr %.pre, null
  %i.eq = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.37) #9 ; 0 uses
  br i1 %i.ep, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.split.us.thread, %.split.us
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.split.us
  store ptr null, ptr %i.d, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.e) #9
  call void @slurm_xfree(ptr noundef nonnull %i.f) #9
  call void @slurm_xfree(ptr noundef nonnull %i.g) #9
  br label %bb.am

._crit_edge146:                                   ; preds = %._crit_edge.us, %bb.p
  call void @slurm_xfree(ptr noundef nonnull %i.e) #9
  call void @slurm_xfree(ptr noundef nonnull %i.f) #9
  call void @slurm_xfree(ptr noundef nonnull %i.g) #9
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.es = load i16, ptr %i.er, align 8
  %i.et = load ptr, ptr %i.d, align 8
  call fastcc void @_expand_masks(i16 noundef zeroext %i.es, i32 noundef %i.m, ptr noundef %i.bf, i16 noundef zeroext %i.bi, i16 noundef zeroext %i.bk, i16 noundef zeroext %i.bg, ptr noundef %i.et)
  %i.eu = load ptr, ptr %i.d, align 8
  %.not112 = icmp eq ptr %i.eu, null
  br i1 %.not112, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge146
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #9
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge146, %bb.al, %bb.c, %bb.ak, %bb.k, %bb.h
  %.089 = phi i32 [ 4033, %bb.h ], [ 4033, %bb.k ], [ 4033, %bb.ak ], [ 4033, %bb.c ], [ 0, %bb.al ], [ 0, %._crit_edge146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.089
}

declare ptr @task_str_to_cpuset(ptr noundef) local_unnamed_addr #2

declare ptr @xstrtoken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @task_cpuset_to_str(ptr noundef) local_unnamed_addr #2

declare void @slurm_xstrcat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @slurm_xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @slurm_bit_alloc(i64 noundef) local_unnamed_addr #2

declare i64 @slurm_bit_size(ptr noundef) local_unnamed_addr #2

declare i32 @slurm_bit_test(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @slurm_bit_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @slurm_bit_clear(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @slurm_cred_get_args(ptr noundef) local_unnamed_addr #2

declare i32 @nodelist_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_cred_unlock_args(ptr noundef) local_unnamed_addr #2

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @_expand_masks(i16 noundef zeroext %0, i32 noundef range(i32 0, 65536) %1, ptr nofree noundef readonly captures(none) %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 3 uses
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 4
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i16 %5, 1
  %i.e = icmp ne i32 %1, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.f = zext i16 %5 to i32
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_blot_mask.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_blot_mask.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_blot_mask.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i64 @slurm_bit_size(ptr noundef nonnull %i.h) #9
  %i.j = and i64 %i.i, 65535                      ; 2 uses
  %.not34.i = icmp eq i64 %i.j, 0
  br i1 %.not34.i, label %_blot_mask.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %bb.e, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 0, %bb.e ] ; 3 uses
  %.032.i = phi i32 [ %.2.i, %.loopexit.i ], [ -1, %bb.e ] ; 3 uses
  %i.k = tail call i32 @slurm_bit_test(ptr noundef nonnull %i.h, i64 noundef %indvars.iv.i) #9
  %.not26.i = icmp eq i32 %i.k, 0
  br i1 %.not26.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph33.i
  %i.l = trunc nuw i64 %indvars.iv.i to i16       ; 2 uses
  %i.m = urem i16 %i.l, %5
  %i.n = sub nuw i16 %i.l, %i.m                   ; 2 uses
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %.not27.i = icmp eq i32 %.032.i, %i.o
  br i1 %.not27.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.p = add nuw nsw i32 %i.o, %i.f
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %.02130.i = phi i16 [ %i.s, %bb.h ], [ %i.n, %.lr.ph.preheader.i ] ; 2 uses
  %i.q = zext i16 %.02130.i to i64                ; 2 uses
  %i.r = tail call i32 @slurm_bit_test(ptr noundef %6, i64 noundef %i.q) #9
  %.not28.i = icmp eq i32 %i.r, 0
  br i1 %.not28.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @slurm_bit_set(ptr noundef nonnull %i.h, i64 noundef %i.q) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.s = add i16 %.02130.i, 1                     ; 2 uses
  %i.t = zext i16 %i.s to i32
  %i.u = icmp samesign ugt i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !44

.loopexit.i:                                      ; preds = %bb.h, %bb.f, %.lr.ph33.i
  %.2.i = phi i32 [ %.032.i, %.lr.ph33.i ], [ %.032.i, %bb.f ], [ %i.o, %bb.h ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.j
  br i1 %exitcond.not.i, label %_blot_mask.exit, label %.lr.ph33.i, !llvm.loop !45

_blot_mask.exit:                                  ; preds = %.loopexit.i, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !46

bb.i:                                             ; preds = %bb.b
  %i.v = and i32 %i.a, 8
  %.not24 = icmp eq i32 %i.v, 0
  br i1 %.not24, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = zext i16 %5 to i32
  %i.x = zext i16 %4 to i32
  %i.y = mul nuw nsw i32 %i.w, %i.x
  %i.z = icmp samesign ugt i32 %i.y, 1
  %i.aa = icmp ne i32 %1, 0
  %or.cond40 = and i1 %i.z, %i.aa
  br i1 %or.cond40, label %.lr.ph39, label %.loopexit

.lr.ph39:                                         ; preds = %bb.j
  %i.ab = zext i16 %3 to i64
  %wide.trip.count47 = zext nneg i32 %1 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph39, %_blot_mask_sockets.exit
  %indvars.iv44 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next45, %_blot_mask_sockets.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv44 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not.i25 = icmp eq ptr %i.ad, null
  br i1 %.not.i25, label %_blot_mask_sockets.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call i64 @slurm_bit_size(ptr noundef %6) #9
  %i.af = sdiv i64 %i.ae, %i.ab
  %i.ag = trunc i64 %i.af to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 1) ; 2 uses
  %i.ah = load ptr, ptr %i.ac, align 8
  %i.ai = tail call i64 @slurm_bit_size(ptr noundef %i.ah) #9
  %i.aj = and i64 %i.ai, 65535                    ; 2 uses
  %.not33.i = icmp eq i64 %i.aj, 0
  br i1 %.not33.i, label %_blot_mask_sockets.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %bb.l, %.loopexit.i32
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i33, %.loopexit.i32 ], [ 0, %bb.l ] ; 4 uses
  %i.ak = load ptr, ptr %i.ac, align 8
  %i.al = tail call i32 @slurm_bit_test(ptr noundef %i.ak, i64 noundef %indvars.iv.i27) #9
  %.not27.i28 = icmp eq i32 %i.al, 0
  br i1 %.not27.i28, label %.loopexit.i32, label %.lr.ph.preheader.i29

.lr.ph.preheader.i29:                             ; preds = %.lr.ph32.i
  %indvars43 = trunc i64 %indvars.iv.i27 to i32
  %i.am = urem i32 %indvars43, %spec.store.select.i
  %i.an = trunc nuw i32 %i.am to i16
  %i.ao = trunc nuw i64 %indvars.iv.i27 to i16
  %i.ap = sub nuw i16 %i.ao, %i.an                ; 2 uses
  %i.aq = zext i16 %i.ap to i32
  %i.ar = add nuw nsw i32 %spec.store.select.i, %i.aq
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.n, %.lr.ph.preheader.i29
  %.030.i = phi i16 [ %i.av, %bb.n ], [ %i.ap, %.lr.ph.preheader.i29 ] ; 2 uses
  %i.as = zext i16 %.030.i to i64                 ; 2 uses
  %i.at = tail call i32 @slurm_bit_test(ptr noundef %6, i64 noundef %i.as) #9
  %.not28.i31 = icmp eq i32 %i.at, 0
  br i1 %.not28.i31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i30
  %i.au = load ptr, ptr %i.ac, align 8
  tail call void @slurm_bit_set(ptr noundef %i.au, i64 noundef %i.as) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i30
  %i.av = add i16 %.030.i, 1                      ; 2 uses
  %i.aw = zext i16 %i.av to i32
  %i.ax = icmp samesign ugt i32 %i.ar, %i.aw
  br i1 %i.ax, label %.lr.ph.i30, label %.loopexit.i32, !llvm.loop !47

.loopexit.i32:                                    ; preds = %bb.n, %.lr.ph32.i
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %i.aj
  br i1 %exitcond.not.i34, label %_blot_mask_sockets.exit, label %.lr.ph32.i, !llvm.loop !48

_blot_mask_sockets.exit:                          ; preds = %.loopexit.i32, %bb.k, %bb.l
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %.loopexit, label %bb.k, !llvm.loop !49

.loopexit:                                        ; preds = %_blot_mask.exit, %_blot_mask_sockets.exit, %bb.i, %bb.j, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !8, !9, !20, !21}
!11 = distinct !{!11, !8, !9, !20, !21}
!12 = distinct !{!12, !8, !9, !20}
!13 = distinct !{!13, !8, !9}
!14 = distinct !{!14, !8, !9}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !8, !9}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 2, i32 14}
!23 = distinct !{!23, !8, !9}
!24 = distinct !{!24, !8, !9}
!25 = distinct !{!25, !8, !9}
!26 = distinct !{!26, !8, !9}
!27 = distinct !{!27, !8, !9}
!28 = distinct !{null}
!29 = distinct !{!29, !8, !9}
!30 = distinct !{!30, !8, !9}
!31 = distinct !{!31, !8, !9}
!32 = distinct !{!32, !8, !9}
!33 = distinct !{!33, !8, !9}
!34 = distinct !{!34, !8, !9}
!35 = distinct !{!35, !8, !9}
!36 = distinct !{!36, !8, !9}
!37 = distinct !{!37, !8, !9}
!38 = distinct !{!38, !8, !9}
!39 = distinct !{!39, !8, !9}
!40 = distinct !{!40, !8, !9}
!41 = distinct !{!41, !8, !9}
!42 = distinct !{!42, !8, !9}
!43 = distinct !{!43, !8, !9}
!44 = distinct !{!44, !8, !9}
!45 = distinct !{!45, !8, !9}
!46 = distinct !{!46, !8, !9}
!47 = distinct !{!47, !8, !9}
!48 = distinct !{!48, !8, !9}
!49 = distinct !{!49, !8, !9}
end_hunk_1
