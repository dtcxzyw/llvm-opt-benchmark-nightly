Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/cgroup_common?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0
@.str.7 = private unnamed_addr constant [46 x i8] c"%s: unexpected base %d. Unable to write to %s\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"%s: %s: %s:%d: %s: safe_write (%zu of %d) failed: %m\00", align 1
@plugin_type = external constant [0 x i8], align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"%s: %s: %s:%d: %s: safe_write (%zu of %d) partial write\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"%s: write value '%s' to '%s' failed: %m\00", align 1
@__func__.common_file_write_content = private unnamed_addr constant [26 x i8] c"common_file_write_content\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"%s: unable to write %zu bytes to cgroup %s: %m\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"%s: unable to create cgroup '%s' : %m\00", align 1
@__func__.common_cgroup_instantiate = private unnamed_addr constant [26 x i8] c"common_cgroup_instantiate\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@slurm_conf = dso_local local_unnamed_addr global %struct.slurm_conf_t zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [74 x i8] c"%s: %s: CGROUP: unable to build cgroup '%s' absolute path in ns '%s' : %m\00", align 1
@__func__.common_cgroup_create = private unnamed_addr constant [21 x i8] c"common_cgroup_create\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Cannot write to cgroup.procs for %s\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"cgroup.procs\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"%s: %s: CGROUP: no content given, nothing to do\00", align 1
@__func__.common_cgroup_set_param = private unnamed_addr constant [24 x i8] c"common_cgroup_set_param\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"%s: %s: CGROUP: unable to build filepath for '%s' and parameter '%s' : %m\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"%s: %s: CGROUP: unable to set parameter '%s' to '%s' for '%s'\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"%s: %s: %s: parameter '%s' set to '%s' for '%s'\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"invalid control group\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"%s: %s: CGROUP: Cannot rmdir(%s), cgroup is not empty\00", align 1
@__func__.common_cgroup_delete = private unnamed_addr constant [21 x i8] c"common_cgroup_delete\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"%s: %s: Not removing %s, found %d pids\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"%s: %s: CGROUP: Unable to rmdir(%s), did %d retries: %m\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"Unable to rmdir(%s), unexpected error: %m\00", align 1
@.str.27 = private unnamed_addr constant [80 x i8] c"%s: %s: CGROUP: rmdir(%s): took %d retries, possible cgroup filesystem slowness\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"unable to add pids to '%s'\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"unable to read '%s/cgroup.procs'\00", align 1
@.str.30 = private unnamed_addr constant [62 x i8] c"%s: %s: CGROUP: unable to get pids of '%s', file disappeared?\00", align 1
@__func__.common_cgroup_get_pids = private unnamed_addr constant [23 x i8] c"common_cgroup_get_pids\00", align 1
@__func__.common_cgroup_get_param = private unnamed_addr constant [24 x i8] c"common_cgroup_get_param\00", align 1
@.str.31 = private unnamed_addr constant [54 x i8] c"%s: %s: CGROUP: unable to get parameter '%s' for '%s'\00", align 1
@__func__.common_cgroup_set_uint64_param = private unnamed_addr constant [31 x i8] c"common_cgroup_set_uint64_param\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"%s: %s: CGROUP: unable to set parameter '%s' to '%lu' for '%s'\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"%s: %s: %s: parameter '%s' set to '%lu' for '%s'\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"error from open of cgroup '%s' : %m\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"error locking cgroup '%s' : %m\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"error unlocking cgroup '%s' : %m\00", align 1
@.str.37 = private unnamed_addr constant [77 x i8] c"%s: %s: CGROUP: Took %d checks before pid %d was removed from the %s cgroup.\00", align 1
@__func__.common_cgroup_wait_pid_moved = private unnamed_addr constant [29 x i8] c"common_cgroup_wait_pid_moved\00", align 1
@.str.38 = private unnamed_addr constant [59 x i8] c"Pid %d is still in the %s cgroup after %d tries and %d ms.\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"unable to open '%s' for reading : %m\00", align 1
@__func__._read_cg_file = private unnamed_addr constant [14 x i8] c"_read_cg_file\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"unable to read '%s': %m\00", align 1
@.str.41 = private unnamed_addr constant [101 x i8] c"%s: %s: CGROUP: %s: Read %zd bytes after %d read() syscalls. File may have changed between syscalls.\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"%s: failed on path %s: %m\00", align 1
@__func__._cgroup_procs_check = private unnamed_addr constant [20 x i8] c"_cgroup_procs_check\00", align 1
@__func__._set_uint32_param = private unnamed_addr constant [18 x i8] c"_set_uint32_param\00", align 1
@.str.43 = private unnamed_addr constant [62 x i8] c"%s: %s: CGROUP: unable to set parameter '%s' to '%u' for '%s'\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"%s: %s: CGROUP: parameter '%s' set to '%u' for '%s'\00", align 1
@.str.47 = private unnamed_addr constant [58 x i8] c"%s: %s: CGROUP: Found at least one child directory: %s/%s\00", align 1
@__func__._is_empty_dir = private unnamed_addr constant [14 x i8] c"_is_empty_dir\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @common_file_read_uints(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call fastcc i64 @_read_cg_file(ptr noundef %0, ptr noundef %i.a)
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.h = tail call ptr @xstrchr(ptr noundef %i.g, i32 noundef 10) #8
  %.not60 = icmp eq ptr %i.h, null
  br i1 %.not60, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.03562 = phi ptr [ %i.k, %.lr.ph ], [ %i.g, %bb.c ]
  %.03661 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.c ]
  %i.i = add nuw nsw i32 %.03661, 1               ; 4 uses
  %i.j = tail call ptr @xstrchr(ptr noundef %.03562, i32 noundef 10) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.l = tail call ptr @xstrchr(ptr noundef nonnull %i.k, i32 noundef 10) #8
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph
  switch i32 %3, label %.thread91 [
    i32 32, label %bb.d
    i32 64, label %bb.e
  ]

._crit_edge.thread:                               ; preds = %bb.c
  %i.m = icmp eq i32 %3, 32
  br i1 %i.m, label %.sink.split.sink.split, label %.thread91

bb.d:                                             ; preds = %._crit_edge
  %i.n = zext nneg i32 %i.i to i64
  %i.o = tail call ptr @slurm_xcalloc(i64 noundef %i.n, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 209, ptr noundef nonnull @__func__.common_file_read_uints) #8 ; 3 uses
  %i.p = tail call ptr @xstrchr(ptr noundef %i.g, i32 noundef 10) #8
  %.not4669 = icmp eq ptr %i.p, null
  br i1 %.not4669, label %.sink.split.sink.split, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.d, %.lr.ph73
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.lr.ph73 ], [ 0, %bb.d ] ; 2 uses
  %.171 = phi ptr [ %i.t, %.lr.ph73 ], [ %i.g, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv79
  %i.r = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.171, ptr noundef nonnull @.str.1, ptr noundef %i.q) #8 ; 0 uses
  %i.s = tail call ptr @xstrchr(ptr noundef %.171, i32 noundef 10) #8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.u = tail call ptr @xstrchr(ptr noundef nonnull %i.t, i32 noundef 10) #8
  %.not46 = icmp eq ptr %i.u, null
  br i1 %.not46, label %.loopexit.loopexit, label %.lr.ph73, !llvm.loop !11

bb.e:                                             ; preds = %._crit_edge
  %i.v = zext nneg i32 %i.i to i64
  %i.w = tail call ptr @slurm_xcalloc(i64 noundef %i.v, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 221, ptr noundef nonnull @__func__.common_file_read_uints) #8 ; 3 uses
  %i.x = tail call ptr @xstrchr(ptr noundef %i.g, i32 noundef 10) #8
  %.not4463 = icmp eq ptr %i.x, null
  br i1 %.not4463, label %.sink.split.sink.split, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.e, %.lr.ph67
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph67 ], [ 0, %bb.e ] ; 2 uses
  %.265 = phi ptr [ %i.ac, %.lr.ph67 ], [ %i.g, %bb.e ] ; 2 uses
  %i.y = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.265, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #8 ; 0 uses
  %i.z = load i64, ptr %i.b, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = call ptr @xstrchr(ptr noundef %.265, i32 noundef 10) #8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ad = call ptr @xstrchr(ptr noundef nonnull %i.ac, i32 noundef 10) #8
  %.not44 = icmp eq ptr %i.ad, null
  br i1 %.not44, label %.loopexit.loopexit75, label %.lr.ph67, !llvm.loop !12

.loopexit.loopexit:                               ; preds = %.lr.ph73
  %i.ae = trunc nuw i64 %indvars.iv.next80 to i32
  br label %.sink.split.sink.split

.loopexit.loopexit75:                             ; preds = %.lr.ph67
  %i.af = trunc nuw i64 %indvars.iv.next to i32
  br label %.sink.split.sink.split

.thread91:                                        ; preds = %._crit_edge, %._crit_edge.thread
  %.036.lcssa8694 = phi i32 [ %i.i, %._crit_edge ], [ 0, %._crit_edge.thread ] ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  %i.ag = icmp eq i32 %3, 64
  br i1 %i.ag, label %.sink.split, label %bb.f

.sink.split.sink.split:                           ; preds = %._crit_edge.thread, %.loopexit.loopexit, %bb.d, %.loopexit.loopexit75, %bb.e
  %.058101.sink.ph = phi ptr [ %i.w, %.loopexit.loopexit75 ], [ %i.w, %bb.e ], [ null, %._crit_edge.thread ], [ %i.o, %.loopexit.loopexit ], [ %i.o, %bb.d ]
  %.350.ph.ph = phi i32 [ %i.af, %.loopexit.loopexit75 ], [ 0, %bb.e ], [ 0, %._crit_edge.thread ], [ %i.ae, %.loopexit.loopexit ], [ 0, %bb.d ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.thread91
  %.058101.sink = phi ptr [ null, %.thread91 ], [ %.058101.sink.ph, %.sink.split.sink.split ]
  %.350.ph = phi i32 [ %.036.lcssa8694, %.thread91 ], [ %.350.ph.ph, %.sink.split.sink.split ]
  store ptr %.058101.sink, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.thread91
  %.350 = phi i32 [ %.036.lcssa8694, %.thread91 ], [ %.350.ph, %.sink.split ]
  store i32 %.350, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.039 = phi i32 [ 0, %bb.f ], [ -1, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.039
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -1, -9223372036854775808) i64 @_read_cg_file(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0, i32 noundef 448) #8 ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.39, ptr noundef %0) #8 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 4092, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 158, ptr noundef nonnull @__func__._read_cg_file) #8
  store ptr %i.e, ptr %i.a, align 8
  br label %.outer

.outer:                                           ; preds = %bb.h, %bb.c
  %.023.ph = phi i32 [ %i.q, %bb.h ], [ 0, %bb.c ] ; 3 uses
  %.0.ph = phi i64 [ %i.n, %bb.h ], [ 0, %bb.c ]  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.f
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0.ph
  %i.h = call i64 @read(i32 noundef %i.b, ptr noundef %i.g, i64 noundef 4092) #8 ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @__errno_location() #9
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.g, !llvm.loop !13

bb.g:                                             ; preds = %bb.f
  %i.m = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.40, ptr noundef %0) #8 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.n = add nuw nsw i64 %i.h, %.0.ph             ; 2 uses
  %i.o = add nuw i64 %i.n, 4092
  %i.p = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.o, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @__func__._read_cg_file) #8 ; 0 uses
  %i.q = add nuw nsw i32 %.023.ph, 1
  br label %.outer, !llvm.loop !13

.loopexit:                                        ; preds = %bb.d, %bb.g
  %i.r = icmp samesign ugt i32 %.023.ph, 1
  br i1 %i.r, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.loopexit
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.t = and i64 %i.s, 36028797018963968
  %.not27 = icmp eq i64 %i.t, 0
  br i1 %.not27, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @get_log_level() #8
  %i.v = icmp sgt i32 %i.u, 3
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.41, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._read_cg_file, ptr noundef %0, i64 noundef %.0.ph, i32 noundef %.023.ph) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %.loopexit
  %i.w = call i32 @close(i32 noundef %i.b) #8     ; 0 uses
  %i.x = load ptr, ptr %i.a, align 8
  store ptr %i.x, ptr %1, align 8
  %2 = icmp eq i64 %i.h, -1
  %3 = select i1 %2, i64 -1, i64 %.0.ph
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.024 = phi i64 [ -1, %bb.b ], [ %3, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.024
}

declare ptr @xstrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @common_file_write_uints(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 1, i32 noundef 448) #8 ; 8 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.common_file_write_uints, ptr noundef %0) #8 ; 0 uses
  br label %.thread67

bb.c:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph90, label %._crit_edge

.lr.ph90:                                         ; preds = %bb.c
  switch i32 %3, label %bb.i [
    i32 32, label %.lr.ph90.split
    i32 64, label %.lr.ph90.split
  ]

.lr.ph90.split:                                   ; preds = %.lr.ph90, %.lr.ph90
  %wide.trip.count = zext nneg i32 %2 to i64
  %cond = icmp eq i32 %3, 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph90.split, %._crit_edge.split.us
  %indvars.iv = phi i64 [ 0, %.lr.ph90.split ], [ %indvars.iv.next, %._crit_edge.split.us ] ; 3 uses
  br i1 %cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.1, i32 noundef %i.g) #8
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.common_file_write_uints, i32 noundef %i.g) #8 ; 0 uses
  %i.k = tail call i32 @close(i32 noundef %i.b) #8 ; 0 uses
  br label %.thread67

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.5, i64 noundef %i.m) #8
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.common_file_write_uints, i64 noundef %i.m) #8 ; 0 uses
  %i.q = tail call i32 @close(i32 noundef %i.b) #8 ; 0 uses
  br label %.thread67

bb.i:                                             ; preds = %.lr.ph90
  %i.r = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.common_file_write_uints, i32 noundef %3, ptr noundef %0) #8 ; 0 uses
  %i.s = tail call i32 @close(i32 noundef %i.b) #8 ; 0 uses
  br label %.thread67

.critedge:                                        ; preds = %bb.g, %bb.e
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %.not83 = icmp eq i64 %i.u, 0
  br i1 %.not83, label %._crit_edge.split.us, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.critedge, %.lr.ph.split.backedge
  %.0.ph86 = phi ptr [ %i.ah, %.lr.ph.split.backedge ], [ %i.a, %.critedge ] ; 3 uses
  %.046.ph84 = phi i64 [ %i.ai, %.lr.ph.split.backedge ], [ %i.u, %.critedge ] ; 4 uses
  %i.v = call i64 @write(i32 noundef %i.b, ptr noundef %.0.ph86, i64 noundef %.046.ph84) #8 ; 2 uses
  %i.w = and i64 %i.v, 2147483648
  %.not6181 = icmp eq i64 %i.w, 0
  br i1 %.not6181, label %.split.us, label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph.split
  %i.x = tail call ptr @__errno_location() #9
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph82, %bb.k
  %i.y = load i32, ptr %i.x, align 4
  switch i32 %i.y, label %.split76.us [
    i32 11, label %bb.k
    i32 4, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.z = call i64 @write(i32 noundef %i.b, ptr noundef %.0.ph86, i64 noundef %.046.ph84) #8 ; 2 uses
  %i.aa = and i64 %i.z, 2147483648
  %.not61 = icmp eq i64 %i.aa, 0
  br i1 %.not61, label %.split.us, label %bb.j

.split76.us:                                      ; preds = %bb.j
  %i.ab = tail call i32 @get_log_level() #8
  %i.ac = icmp sgt i32 %i.ab, 4
  br i1 %i.ac, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.split76.us
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10
  %i.ae = trunc i64 %i.ad to i32
  %i.af = add nsw i32 %i.ae, 1
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.8, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.common_file_write_uints, ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @__func__.common_file_write_uints, i64 noundef %.046.ph84, i32 noundef %i.af) #8
  br label %bb.o

.split.us:                                        ; preds = %bb.k, %.lr.ph.split
  %.us-phi = phi i64 [ %i.v, %.lr.ph.split ], [ %i.z, %bb.k ]
  %i.ag = and i64 %.us-phi, 2147483647            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.ph86, i64 %i.ag
  %i.ai = sub i64 %.046.ph84, %i.ag               ; 3 uses
  %.not62 = icmp eq i64 %i.ai, 0
  br i1 %.not62, label %._crit_edge.split.us, label %bb.m

bb.m:                                             ; preds = %.split.us
  %i.aj = tail call i32 @get_log_level() #8
  %i.ak = icmp sgt i32 %i.aj, 6
  br i1 %i.ak, label %bb.n, label %.lr.ph.split.backedge

bb.n:                                             ; preds = %bb.m
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10
  %i.am = trunc i64 %i.al to i32
  %i.an = add nsw i32 %i.am, 1
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.9, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.common_file_write_uints, ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @__func__.common_file_write_uints, i64 noundef %i.ai, i32 noundef %i.an) #8
  br label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %bb.n, %bb.m
  br label %.lr.ph.split, !llvm.loop !14

._crit_edge.split.us:                             ; preds = %.split.us, %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !15

._crit_edge:                                      ; preds = %._crit_edge.split.us, %bb.c
  %i.ao = tail call i32 @close(i32 noundef %i.b) #8 ; 0 uses
  br label %.thread67

bb.o:                                             ; preds = %bb.l, %.split76.us
  %i.ap = tail call ptr @__errno_location() #9
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.common_file_write_uints, ptr noundef nonnull %i.a, ptr noundef %0) #8 ; 0 uses
  %i.as = call i32 @close(i32 noundef %i.b) #8    ; 0 uses
  br label %.thread67

.thread67:                                        ; preds = %bb.i, %bb.h, %bb.f, %bb.o, %._crit_edge, %bb.b
  %.5 = phi i32 [ -1, %bb.b ], [ %i.aq, %bb.o ], [ 0, %._crit_edge ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.5
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #4

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @common_file_write_content(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 1, i32 noundef 448) #8 ; 5 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not43 = icmp eq i64 %2, 0
  br i1 %.not43, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.preheader
end_hunk_0
