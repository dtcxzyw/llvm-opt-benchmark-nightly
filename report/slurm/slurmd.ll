Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurmd?download=true
inline.NumInlined: 37
inline.NumDeleted: 23
begin_hunk_0_@_print_conf:bb.a

bb.bm:                                            ; preds = %bb.bl
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 1528
  %i.id = load ptr, ptr %i.ic, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.272, ptr noundef %i.id) #16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ie = call i32 @get_log_level() #16
  %i.if = icmp sgt i32 %i.ie, 6
  br i1 %i.if, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ig = getelementptr inbounds nuw i8, ptr %i.e, i64 1504
  %i.ih = load ptr, ptr %i.ig, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.273, ptr noundef %i.ih) #16
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ii = call i32 @get_log_level() #16
  %i.ij = icmp sgt i32 %i.ii, 6
  br i1 %i.ij, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 1520
  %i.il = load i32, ptr %i.ik, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.274, i32 noundef %i.il) #16
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.im = call i32 @get_log_level() #16
  %i.in = icmp sgt i32 %i.im, 6
  br i1 %i.in, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.io = getelementptr inbounds nuw i8, ptr %i.e, i64 284
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = and i32 %i.ip, 16
  %i.ir = zext nneg i32 %i.iq to i64
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.275, i64 noundef %i.ir) #16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  call void @slurm_conf_unlock() #16
  br label %bb.bu

bb.bu:                                            ; preds = %bb.a, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @proctrack_g_init() local_unnamed_addr #3

declare i32 @task_g_init() local_unnamed_addr #3

declare i32 @spank_slurmd_init() local_unnamed_addr #3

declare i32 @cred_g_init() local_unnamed_addr #3

declare i32 @compress_g_init() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @rlimits_use_max_nofile() local_unnamed_addr #3

declare i32 @stepd_cleanup_sockets(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_stepd_cleanup_batch_dirs(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.c = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #16
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.276, ptr noundef %0) #16 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 61440
  %i.i = icmp eq i32 %i.h, 16384
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.277, ptr noundef %0) #16 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noalias ptr @opendir(ptr noundef %0) ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.m = tail call ptr @readdir(ptr noundef nonnull %i.k) #16 ; 2 uses
  %.not1 = icmp eq ptr %i.m, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.278, ptr noundef %0) #16 ; 0 uses
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %i.o = phi ptr [ %i.ac, %bb.k ], [ %i.m, %.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 19 ; 2 uses
  %i.q = call i32 @xstrncmp(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.279, i64 noundef 3) #16
  %.not13 = icmp eq i32 %i.q, 0
  br i1 %.not13, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 22
  %i.s = load i8, ptr %i.r, align 1
  %i.t = add i8 %i.s, -48
  %or.cond = icmp ult i8 %i.t, 10
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.280, ptr noundef %0, ptr noundef nonnull %i.p) #16
  %i.u = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.281, ptr noundef %i.u) #16
  %i.v = call i32 @get_log_level() #16
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.282, ptr noundef nonnull @__func__._stepd_cleanup_batch_dirs, ptr noundef %i.x) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = call i32 @unlink(ptr noundef %i.y) #16   ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = call i32 @rmdir(ptr noundef %i.aa) #16  ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %.lr.ph
  %i.ac = call ptr @readdir(ptr noundef nonnull %i.k) #16 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %i.ad = call i32 @closedir(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.f, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_set_work_dir() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load ptr, ptr @conf, align 8             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4320
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.g = tail call ptr @xstrdup(ptr noundef nonnull %i.d) #16 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8
  %i.h = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.g, i32 noundef 47) #21 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.g
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 0, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call i32 @access(ptr noundef nonnull %i.g, i32 noundef 2) #16
  %.not8 = icmp eq i32 %i.k, 0
  br i1 %.not8, label %bb.g, label %.thread13

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @chdir(ptr noundef nonnull %i.g) #16
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.thread13, label %bb.h

.thread13:                                        ; preds = %bb.g, %bb.f
  %0 = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.283, ptr noundef nonnull %i.g) #16 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.pre = load ptr, ptr @conf, align 8
  br label %.thread

bb.h:                                             ; preds = %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread16

.thread:                                          ; preds = %bb.b, %bb.a, %.thread13
  %i.n = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.a ], [ %.pre, %.thread13 ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4360
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i32 @access(ptr noundef %i.p, i32 noundef 2) #16
  %.not9 = icmp eq i32 %i.q, 0
  br i1 %.not9, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.r = load ptr, ptr @conf, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4360
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call i32 @chdir(ptr noundef %i.t) #16
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %.thread16

bb.j:                                             ; preds = %bb.i, %.thread
  %i.w = load ptr, ptr @conf, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4360
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.283, ptr noundef %i.y) #16 ; 0 uses
  %i.aa = call i32 @access(ptr noundef nonnull @.str.284, i32 noundef 2) #16
  %.not10 = icmp eq i32 %i.aa, 0
  br i1 %.not10, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = call i32 @chdir(ptr noundef nonnull @.str.284) #16
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.285) #16 ; 0 uses
  br label %.thread16

bb.m:                                             ; preds = %bb.k
  %i.ae = call i32 @get_log_level() #16
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %bb.n, label %.thread16

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.286) #16
  br label %.thread16

.thread16:                                        ; preds = %bb.h, %bb.m, %bb.n, %bb.i, %bb.l
  %.04 = phi i32 [ -1, %bb.l ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.m ]
  ret i32 %.04
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @fetch_config(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare i32 @sleep(i32 noundef) local_unnamed_addr #3

declare ptr @slurm_conf_expand_slurmd_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @write_configs_to_conf_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @slurm_free_config_response_msg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @gethostname(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @slurm_conf_get_nodename(ptr noundef) local_unnamed_addr #3

declare ptr @slurm_conf_get_aliased_nodename() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_spec_override(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1520), align 8
  %i.b = and i32 %i.a, 2097152
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @xcpuinfo_get_cpuspec() #16 ; 3 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @get_log_level() #16
  %i.e = icmp sgt i32 %i.d, 2
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @conf, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4160
  %i.h = load ptr, ptr %i.g, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.187, ptr noundef %i.h, ptr noundef nonnull %i.c) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load ptr, ptr @conf, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4160
  tail call void @slurm_xfree(ptr noundef nonnull %i.j) #16
  %i.k = load ptr, ptr @conf, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  store ptr %i.c, ptr %i.l, align 8
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1520), align 8
  %i.n = and i32 %i.m, -262145
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1520), align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.o = tail call ptr @cgroup_g_constrain_get(i32 noundef 2, i32 noundef 1) #16 ; 3 uses
  %.not13 = icmp eq ptr %i.o, null
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq i64 %i.q, -2
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = tail call i32 @get_log_level() #16
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.188) #16
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.u = lshr i64 %i.q, 20                        ; 2 uses
  store i64 %i.u, ptr %i.p, align 8
  %i.v = sub i64 %0, %i.u
  %i.w = load ptr, ptr @conf, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4176
  store i64 %i.v, ptr %i.x, align 8
  %i.y = tail call i32 @get_log_level() #16
  %i.z = icmp sgt i32 %i.y, 2
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %i.p, align 8
  %i.ab = load ptr, ptr @conf, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4176
  %i.ad = load i64, ptr %i.ac, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.189, i64 noundef %0, i64 noundef %i.aa, i64 noundef %i.ad) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  tail call void @cgroup_free_limits(ptr noundef %i.o) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret void
}

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #3

declare ptr @xstrcasestr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_xstrcat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcpuinfo_get_cpuspec() local_unnamed_addr #3

declare ptr @cgroup_g_constrain_get(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cgroup_free_limits(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

declare i32 @gres_parse_conf(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gres_get_dynamic_gpu_str(ptr noundef byval(%struct.node_config_load_t) align 8) local_unnamed_addr #3

declare ptr @xstrstr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @slurm_conf_parse_nodeline(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @config_record_from_conf_node(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @expand_nodeline_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @_build_node_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 @create_node_record(ptr noundef %7, ptr noundef %0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  switch i32 %5, label %bb.c [
    i32 -2, label %bb.d
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  store i32 %5, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  store i64 0, ptr %i.f, align 8
  %i.g = call ptr @xstrdup(ptr noundef %2) #16
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  store i32 %i.k, ptr %i.l, align 4
  %i.m = call ptr @xstrdup(ptr noundef %1) #16
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  store ptr %i.m, ptr %i.o, align 8
  %i.p = call ptr @xstrdup(ptr noundef %3) #16
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 376
  store i16 %4, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call ptr @xstrdup(ptr noundef %i.u) #16
  %i.w = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 416
  store ptr %i.v, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 328 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = or i32 %i.z, 67108864
  store i32 %i.aa, ptr %i.y, align 8
  call void @slurm_conf_add_node(ptr noundef %i.w) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %i.b
}
end_hunk_0
