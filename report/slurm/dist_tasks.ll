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
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = load ptr, ptr @conf, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4264
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.m, align 8
  %i.aa = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__._get_avail_map, ptr noundef %i.y, ptr noundef %i.z) #9 ; 0 uses
  tail call void @slurm_cred_unlock_args(ptr noundef %0) #9
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.d
  %.026.i = phi i32 [ 0, %bb.d ], [ %.127.lcssa.i, %._crit_edge.i ]
  %.026.i.a = phi i32 [ 0, %bb.d ], [ %.125.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.024.i = phi i32 [ -1, %bb.d ], [ %4, %._crit_edge.i ]
  %.0.i = phi i32 [ -1, %bb.d ], [ %.1.lcssa.i, %._crit_edge.i ] ; 8 uses
  %4 = add nsw i32 %.024.i, 1                     ; 2 uses
  %5 = zext nneg i32 %4 to i64                    ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %5
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = icmp slt i32 %.0.i, %i.r                ; 2 uses
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ad, align 8
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %5
  %i.am = load i16, ptr %i.al, align 2
  %i.an = zext i16 %i.am to i32
  %i.ao = load ptr, ptr %i.ae, align 8
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %5
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = zext i16 %i.aq to i32
  %i.as = mul nuw i32 %i.ar, %i.an                ; 5 uses
  %i.at = xor i32 %.0.i, -1
  %i.au = add i32 %i.r, %i.at
  %i.av = freeze i32 %i.au
  %i.aw = add i32 %i.ag, -1
  %umin = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.aw)
  %i.ax = add i32 %umin, 1                        ; 7 uses
  %min.iters.check = icmp ult i32 %i.ax, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check141 = icmp ult i32 %i.ax, 16
  br i1 %min.iters.check141, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i32 %i.ax, 12
  %n.vec = and i32 %i.ax, -16                     ; 6 uses
  %i.az = add i32 %.0.i, %n.vec                   ; 3 uses
  %i.ba = mul i32 %n.vec, %i.as
  %i.bb = add i32 %.026.i.a, %i.ba                ; 3 uses
  %i.bc = add nsw i32 %.0.i, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.bd = phi i32 [ %i.bc, %vector.ph ], [ %i.be, %vector.body ] ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.be = add nsw i32 %i.bd, 16
  %i.bf = icmp eq i32 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %ind.escape = sub i32 %i.bb, %i.as
  %i.bg = add nsw i32 %i.bd, 1
  %i.bh = icmp slt i32 %i.bg, %i.r
  %cmp.n = icmp eq i32 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ay, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.az, %vec.epilog.iter.check ], [ %.0.i, %vector.main.loop.iter.check ]
  %n.vec145 = and i32 %i.ax, -4                   ; 5 uses
  %i.bi = add i32 %.0.i, %n.vec145                ; 2 uses
  %i.bj = mul i32 %n.vec145, %i.as
  %i.bk = add i32 %.026.i.a, %i.bj                ; 3 uses
  %i.bl = add nsw i32 %bc.resume.val, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index151 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next153, %vec.epilog.vector.body ]
  %i.bm = phi i32 [ %i.bl, %vec.epilog.ph ], [ %i.bn, %vec.epilog.vector.body ] ; 2 uses
  %index.next153 = add nuw i32 %index151, 4       ; 2 uses
  %i.bn = add nsw i32 %i.bm, 4
  %i.bo = icmp eq i32 %index.next153, %n.vec145
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape155 = sub i32 %i.bk, %i.as
  %i.bp = add nsw i32 %i.bm, 1
  %i.bq = icmp slt i32 %i.bp, %i.r
  %cmp.n156 = icmp eq i32 %i.ax, %n.vec145
  br i1 %cmp.n156, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.131.i.ph = phi i32 [ %.0.i, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.02330.i.ph = phi i32 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec145, %vec.epilog.middle.block ]
  %.12529.i.ph = phi i32 [ %.026.i.a, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.131.i = phi i32 [ %i.bs, %vec.epilog.scalar.ph ], [ %.131.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.02330.i = phi i32 [ %i.bt, %vec.epilog.scalar.ph ], [ %.02330.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.12529.i = phi i32 [ %i.br, %vec.epilog.scalar.ph ], [ %.12529.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.br = add nuw nsw i32 %.12529.i, %i.as        ; 2 uses
  %i.bs = add nsw i32 %.131.i, 1                  ; 3 uses
  %i.bt = add nuw nsw i32 %.02330.i, 1            ; 2 uses
  %i.bu = icmp ult i32 %i.bt, %i.ag
  %i.bv = icmp slt i32 %i.bs, %i.r                ; 2 uses
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %vec.epilog.scalar.ph, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e
  %.127.lcssa.i = phi i32 [ %.026.i, %bb.e ], [ %ind.escape155, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.12529.i, %vec.epilog.scalar.ph ] ; 2 uses
  %.125.lcssa.i = phi i32 [ %.026.i.a, %bb.e ], [ %i.bk, %vec.epilog.middle.block ], [ %i.bb, %middle.block ], [ %i.br, %vec.epilog.scalar.ph ]
  %.1.lcssa.i = phi i32 [ %.0.i, %bb.e ], [ %i.bi, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %i.bs, %vec.epilog.scalar.ph ]
  %.lcssa.i = phi i1 [ %i.ai, %bb.e ], [ %i.bq, %vec.epilog.middle.block ], [ %i.bh, %middle.block ], [ %i.bv, %vec.epilog.scalar.ph ]
  br i1 %.lcssa.i, label %bb.e, label %_get_local_node_info.exit, !llvm.loop !16

_get_local_node_info.exit:                        ; preds = %._crit_edge.i
  %i.bx = load ptr, ptr %i.ad, align 8
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %5
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = load ptr, ptr %i.ae, align 8
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %5
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = tail call i32 @slurm_get_log_level() #9
  %i.ce = icmp sgt i32 %i.cd, 6
  %i.cf = zext i16 %i.bz to i32                   ; 2 uses
  %i.cg = zext i16 %i.cc to i32                   ; 2 uses
  br i1 %i.ce, label %bb.f, label %_get_local_node_info.exit._crit_edge

bb.f:                                             ; preds = %_get_local_node_info.exit
  %i.ch = load i16, ptr %1, align 2
  %i.ci = zext i16 %i.ch to i32
  %i.cj = load i16, ptr %2, align 2
  %i.ck = zext i16 %i.cj to i32
  %i.cl = load i16, ptr %3, align 2
  %i.cm = zext i16 %i.cl to i32
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.26, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.ck, i32 noundef %i.cm) #9
  br label %_get_local_node_info.exit._crit_edge

_get_local_node_info.exit._crit_edge:             ; preds = %_get_local_node_info.exit, %bb.f
  %i.cn = mul nuw nsw i32 %i.cg, %i.cf            ; 3 uses
  %i.co = load i16, ptr %1, align 2
  %i.cp = zext i16 %i.co to i32
  %i.cq = load i16, ptr %2, align 2
  %i.cr = zext i16 %i.cq to i32
  %i.cs = mul nuw nsw i32 %i.cr, %i.cp
  %. = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 %i.cs)
  %.mask = and i32 %., 65535                      ; 3 uses
  %i.ct = zext nneg i32 %.mask to i64             ; 2 uses
  %i.cu = tail call ptr @slurm_bit_alloc(i64 noundef %i.ct) #9 ; 5 uses
  store ptr %i.cu, ptr %i.a, align 8
  %i.cv = load ptr, ptr @conf, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4232
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = zext i16 %i.cx to i64
  %i.cz = tail call ptr @slurm_bit_alloc(i64 noundef %i.cy) #9 ; 4 uses
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_get_local_node_info.exit._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %i.db = phi i32 [ 0, %.lr.ph ], [ %i.dj, %bb.i ] ; 2 uses
  %.07298 = phi i16 [ 0, %.lr.ph ], [ %i.di, %bb.i ]
  %i.dc = load ptr, ptr %i.da, align 8
  %i.dd = add nuw nsw i32 %i.db, %.127.lcssa.i
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = tail call i32 @slurm_bit_test(ptr noundef %i.dc, i64 noundef %i.de) #9
  %.not85 = icmp eq i32 %i.df, 0
  br i1 %.not85, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = urem i32 %i.db, %.mask
  %i.dh = zext nneg i32 %i.dg to i64
  tail call void @slurm_bit_set(ptr noundef %i.cu, i64 noundef %i.dh) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.di = add i16 %.07298, 1                      ; 2 uses
  %i.dj = zext i16 %i.di to i32                   ; 2 uses
  %i.dk = icmp samesign ugt i32 %i.cn, %i.dj
  br i1 %i.dk, label %bb.g, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.i, %_get_local_node_info.exit._crit_edge
  %i.dl = tail call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.cu) #9 ; 2 uses
  store ptr %i.dl, ptr %i.b, align 8
  %i.dm = tail call i32 @slurm_get_log_level() #9
  %i.dn = icmp sgt i32 %i.dm, 6
  br i1 %i.dn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.27, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, ptr noundef nonnull %i.c, ptr noundef %i.dl) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  %.not121 = icmp eq i32 %.mask, 0
  br i1 %.not121, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.k, %.loopexit95
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit95 ], [ 0, %bb.k ] ; 3 uses
  %i.do = call i32 @slurm_bit_test(ptr noundef %i.cu, i64 noundef %indvars.iv) #9
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %.loopexit95, label %bb.l

bb.l:                                             ; preds = %.lr.ph104
  %i.dq = load ptr, ptr @conf, align 8            ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4232
  %i.ds = load i16, ptr %i.dr, align 8
  %i.dt = trunc nuw i64 %indvars.iv to i16
  %i.du = urem i16 %i.dt, %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 4158
  %i.dw = load i16, ptr %i.dv, align 2
  %.not122 = icmp eq i16 %i.dw, 0
  br i1 %.not122, label %.loopexit95, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.l, %.lr.ph101
  %i.dx = phi ptr [ %i.eg, %.lr.ph101 ], [ %i.dq, %bb.l ]
  %.07199 = phi i16 [ %i.ef, %.lr.ph101 ], [ 0, %bb.l ] ; 2 uses
  %i.dy = load i16, ptr %3, align 2
  %i.dz = mul i16 %i.dy, %i.du
  %i.ea = add i16 %i.dz, %.07199
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 4232
  %i.ec = load i16, ptr %i.eb, align 8
  %i.ed = urem i16 %i.ea, %i.ec
  %i.ee = zext i16 %i.ed to i64
  call void @slurm_bit_set(ptr noundef %i.cz, i64 noundef %i.ee) #9
  %i.ef = add nuw i16 %.07199, 1                  ; 2 uses
  %i.eg = load ptr, ptr @conf, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4158
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = icmp ult i16 %i.ef, %i.ei
  br i1 %i.ej, label %.lr.ph101, label %.loopexit95, !llvm.loop !18

.loopexit95:                                      ; preds = %.lr.ph101, %bb.l, %.lr.ph104
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ct
  br i1 %exitcond.not, label %._crit_edge105, label %.lr.ph104, !llvm.loop !19

._crit_edge105:                                   ; preds = %.loopexit95, %bb.k
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.el = load i16, ptr %i.ek, align 8
  %.fr = freeze i16 %i.el                         ; 3 uses
  %i.em = icmp ult i16 %.fr, -32767
  %i.en = and i16 %.fr, 32767                     ; 2 uses
  %cond = icmp eq i16 %.fr, -2
  %or.cond = or i1 %i.em, %cond
  br i1 %or.cond, label %.loopexit94, label %bb.m

bb.m:                                             ; preds = %._crit_edge105
  %i.eo = load ptr, ptr @conf, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4158
  %i.eq = load i16, ptr %i.ep, align 2            ; 2 uses
  %i.er = icmp ne i16 %i.eq, 0
  %i.es = icmp ne i16 %i.en, 0
  %i.et = and i1 %i.er, %i.es
  br i1 %i.et, label %.lr.ph120.preheader, label %.loopexit94

.lr.ph120.preheader:                              ; preds = %bb.m
  %i.eu = zext i16 %i.eq to i32
  %i.ev = zext nneg i16 %i.en to i32
  br label %.lr.ph120

.loopexit93:                                      ; preds = %.loopexit, %.lr.ph120
  %.2.lcssa = phi i32 [ %.1117, %.lr.ph120 ], [ %.3.lcssa, %.loopexit ] ; 2 uses
  %i.ew = icmp sgt i32 %.068118.in, 1
  %i.ex = icmp sgt i32 %.2.lcssa, 0
  %i.ey = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %i.ey, label %.lr.ph120, label %.loopexit94, !llvm.loop !20

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.loopexit93
  %.068118.in = phi i32 [ %.068118, %.loopexit93 ], [ %i.eu, %.lr.ph120.preheader ] ; 2 uses
  %.1117 = phi i32 [ %.2.lcssa, %.loopexit93 ], [ %i.ev, %.lr.ph120.preheader ] ; 2 uses
  %.068118 = add nsw i32 %.068118.in, -1          ; 2 uses
  %i.ez = load ptr, ptr @conf, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4184
  %i.fb = load i16, ptr %i.fa, align 8            ; 2 uses
  %.not123 = icmp eq i16 %i.fb, 0
  br i1 %.not123, label %.loopexit93, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.lr.ph120
  %i.fc = zext i16 %i.fb to i32
  br label %.lr.ph114

.loopexit:                                        ; preds = %.lr.ph109, %.lr.ph114
  %.3.lcssa = phi i32 [ %.2111, %.lr.ph114 ], [ %i.ga, %.lr.ph109 ] ; 3 uses
  %i.fd = icmp samesign ugt i32 %.067112.in, 1
  %i.fe = icmp ne i32 %.3.lcssa, 0
  %i.ff = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %i.ff, label %.lr.ph114, label %.loopexit93, !llvm.loop !21

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.loopexit
  %.067112.in = phi i32 [ %.067112, %.loopexit ], [ %i.fc, %.lr.ph114.preheader ] ; 2 uses
  %.2111 = phi i32 [ %.3.lcssa, %.loopexit ], [ %.1117, %.lr.ph114.preheader ] ; 2 uses
  %.067112 = add nsw i32 %.067112.in, -1          ; 2 uses
  %i.fg = load ptr, ptr @conf, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4156
  %i.fi = load i16, ptr %i.fh, align 4            ; 2 uses
  %.not124 = icmp eq i16 %i.fi, 0
  br i1 %.not124, label %.loopexit, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %.lr.ph114
  %i.fj = zext i16 %i.fi to i32
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %.0.in107 = phi i32 [ %.0, %.lr.ph109 ], [ %i.fj, %.lr.ph109.preheader ] ; 2 uses
  %.3106 = phi i32 [ %i.ga, %.lr.ph109 ], [ %.2111, %.lr.ph109.preheader ]
  %.0 = add nsw i32 %.0.in107, -1                 ; 2 uses
  %i.fk = load ptr, ptr @conf, align 8            ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4184
  %i.fm = load i16, ptr %i.fl, align 8
  %i.fn = zext i16 %i.fm to i32
  %i.fo = mul nuw nsw i32 %.0, %i.fn
  %i.fp = add nuw nsw i32 %i.fo, %.067112
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 4158
  %i.fr = load i16, ptr %i.fq, align 2
  %i.fs = zext i16 %i.fr to i32
  %i.ft = mul nsw i32 %i.fp, %i.fs
  %i.fu = add nuw nsw i32 %i.ft, %.068118
end_hunk_0
