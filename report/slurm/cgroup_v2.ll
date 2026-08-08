inline.NumInlined: 22
inline.NumDeleted: 18
begin_hunk_0_@cgroup_p_step_destroy:bb.a
  %i.bc = call i32 @list_delete_all(ptr noundef %i.bb, ptr noundef nonnull @_rmdir_task, ptr noundef null) #17 ; 0 uses
  %i.bd = call i32 @common_cgroup_delete(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 200)) #17 ; 3 uses
  %.not13 = icmp eq i32 %i.bd, 0
  br i1 %.not13, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_wait_cgroup_empty.exit
  %i.be = call i32 @get_log_level() #17
  %i.bf = icmp sgt i32 %i.be, 5
  br i1 %i.bf, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @int_cg, i64 216), align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.39, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.cgroup_p_step_destroy, ptr noundef %i.bg) #17
  br label %bb.aj

bb.z:                                             ; preds = %_wait_cgroup_empty.exit
  call void @common_cgroup_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 200)) #17
  %i.bh = call i32 @common_cgroup_delete(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 240)) #17 ; 3 uses
  %.not14 = icmp eq i32 %i.bh, 0
  br i1 %.not14, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = call i32 @get_log_level() #17
  %i.bj = icmp sgt i32 %i.bi, 5
  br i1 %i.bj, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @int_cg, i64 256), align 16
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.40, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.cgroup_p_step_destroy, ptr noundef %i.bk) #17
  br label %bb.aj

bb.ac:                                            ; preds = %bb.z
  call void @common_cgroup_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 240)) #17
  %i.bl = call i32 @common_cgroup_delete(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 160)) #17 ; 3 uses
  %.not15 = icmp eq i32 %i.bl, 0
  br i1 %.not15, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = call i32 @get_log_level() #17
  %i.bn = icmp sgt i32 %i.bm, 5
  br i1 %i.bn, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @int_cg, i64 176), align 16
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.41, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.cgroup_p_step_destroy, ptr noundef %i.bo) #17
  br label %bb.aj

bb.af:                                            ; preds = %bb.ac
  call void @common_cgroup_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 160)) #17
  %i.bp = call i32 @common_cgroup_delete(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 120)) #17
  %.not16 = icmp eq i32 %i.bp, 0
  br i1 %.not16, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bq = call i32 @get_log_level() #17
  %i.br = icmp sgt i32 %i.bq, 5
  br i1 %i.br, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @int_cg, i64 136), align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.42, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.cgroup_p_step_destroy, ptr noundef %i.bs) #17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  call void @common_cgroup_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 120)) #17
  store i16 0, ptr @step_active_cnt, align 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ad, %bb.ae, %bb.aa, %bb.ab, %bb.x, %bb.y, %bb.ai, %bb.i
  %.0 = phi i32 [ %i.w, %bb.i ], [ %i.bd, %bb.y ], [ %i.bd, %bb.x ], [ %i.bh, %bb.ab ], [ %i.bh, %bb.aa ], [ %i.bl, %bb.ae ], [ %i.bl, %bb.ad ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.ai ]
  %i.bt = call i32 @common_cgroup_unlock(ptr noundef nonnull @int_cg) #17 ; 0 uses
  call void @common_cgroup_destroy(ptr noundef nonnull %2) #17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.c, %bb.e, %bb.d, %bb.aj, %bb.g, %bb.b
  %.05 = phi i32 [ 0, %bb.b ], [ %.0, %bb.aj ], [ -1, %bb.g ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.05
}

declare i32 @common_cgroup_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @cgroup_p_has_pid(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store i32 %0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.c, align 4
  %i.d = load ptr, ptr @task_list, align 8
  %i.e = call ptr @list_find_first(ptr noundef %i.d, ptr noundef nonnull @_find_pid_task, ptr noundef nonnull %i.a) #17
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @common_cgroup_get_pids(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 200), ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 4              ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.sink.split

.lr.ph:                                           ; preds = %.preheader
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i32, ptr %i.a, align 4
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, %i.j                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.m, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.sink.split, label %bb.c, !llvm.loop !28

.sink.split:                                      ; preds = %bb.c, %.preheader
  %.04.ph = phi i1 [ false, %.preheader ], [ %i.m, %bb.c ]
  call void @slurm_xfree(ptr noundef nonnull %i.b) #17
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.04 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %.04.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i1 %.04
}

declare ptr @list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_find_pid_task(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4
  %i.d = call i32 @common_cgroup_get_pids(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 4              ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %i.a, align 8
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !29

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, %i.c
  br i1 %i.j, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.c, %.preheader
  %.lcssa = phi i32 [ 0, %.preheader ], [ 1, %bb.c ], [ 0, %bb.b ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.09 = phi i32 [ %.lcssa, %._crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cgroup_p_constrain_set(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = icmp eq i32 %1, 2
  br i1 %i.b, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 1
  %spec.store.select = select i1 %i.c, i32 0, i32 %1 ; 2 uses
  %i.d = icmp eq i32 %spec.store.select, 8
  %spec.store.select2 = select i1 %i.d, i32 0, i32 %spec.store.select ; 2 uses
  %i.e = icmp eq i32 %spec.store.select2, 4
  %spec.store.select1 = select i1 %i.e, i32 6, i32 %spec.store.select2 ; 8 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %0, label %bb.z [
    i32 0, label %bb.aa
    i32 1, label %bb.d
    i32 2, label %bb.h
    i32 3, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not65 = icmp eq ptr %i.g, null
  br i1 %.not65, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = zext i32 %spec.store.select1 to i64
  %i.i = getelementptr inbounds nuw [40 x i8], ptr @int_cg, i64 %i.h
  %i.j = tail call i32 @common_cgroup_set_param(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.g) #17
  %.not66 = icmp ne i32 %i.j, 0
  %spec.select = sext i1 %.not66 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.045 = phi i32 [ 0, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not67 = icmp eq ptr %i.l, null
  br i1 %.not67, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = zext i32 %spec.store.select1 to i64
  %i.n = getelementptr inbounds nuw [40 x i8], ptr @int_cg, i64 %i.m
  %i.o = tail call i32 @common_cgroup_set_param(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.l) #17
  %.not68 = icmp eq i32 %i.o, 0
  %spec.select69 = select i1 %.not68, i32 %.045, i32 -1
  br label %bb.aa

bb.h:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.not59 = icmp eq i64 %i.q, -2
  br i1 %.not59, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = zext i32 %spec.store.select1 to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr @int_cg, i64 %i.r
  %i.t = tail call i32 @common_cgroup_set_uint64_param(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.45, i64 noundef %i.q) #17
  %.not60 = icmp ne i32 %i.t, 0
  %spec.select70 = sext i1 %.not60 to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i32 [ 0, %bb.h ], [ %spec.select70, %bb.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %.not61 = icmp eq i64 %i.v, -2
  br i1 %.not61, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = zext i32 %spec.store.select1 to i64
  %i.x = getelementptr inbounds nuw [40 x i8], ptr @int_cg, i64 %i.w
  %i.y = tail call i32 @common_cgroup_set_uint64_param(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.46, i64 noundef %i.v) #17
  %.not62 = icmp eq i32 %i.y, 0
  %spec.select71 = select i1 %.not62, i32 %.1, i32 -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i32 [ %.1, %bb.j ], [ %spec.select71, %bb.k ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not63 = icmp eq i64 %i.aa, -2
  br i1 %.not63, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = zext i32 %spec.store.select1 to i64
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr @int_cg, i64 %i.ab
  %i.ad = load i64, ptr %i.p, align 8
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = tail call i32 @common_cgroup_set_uint64_param(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.47, i64 noundef %i.ae) #17
  %.not64 = icmp eq i32 %i.af, 0
  %spec.select72 = select i1 %.not64, i32 %.2, i32 -1
  br label %bb.aa

bb.n:                                             ; preds = %bb.c
  switch i32 %1, label %bb.s [
    i32 3, label %bb.o
    i32 6, label %bb.o
    i32 7, label %bb.p
    i32 4, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n
  %i.ag = zext i32 %spec.store.select1 to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr @p, i64 %i.ag
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr @task_list, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = tail call ptr @list_find_first(ptr noundef %i.ai, ptr noundef nonnull @_find_task_cg_info, ptr noundef nonnull %i.aj) #17 ; 2 uses
  %.not55 = icmp eq ptr %i.ak, null
  br i1 %.not55, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.al = load i32, ptr %i.aj, align 8
  %i.am = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.48, i32 noundef %i.al) #17 ; 0 uses
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.ao = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.49, i32 noundef %spec.store.select1) #17 ; 0 uses
  %i.ap = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.50, i32 noundef %spec.store.select1) #17 ; 0 uses
  br label %bb.aa

bb.t:                                             ; preds = %bb.o, %bb.r
  %.044.ph = phi ptr [ %i.an, %bb.r ], [ %i.ah, %bb.o ]
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.ar = tail call ptr @gres_device_id2str(ptr noundef nonnull %i.aq) #17 ; 2 uses
  store ptr %i.ar, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !range !11, !noundef !12
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aw = and i64 %i.av, 36028797018963968
  %.not58 = icmp eq i64 %i.aw, 0                  ; 2 uses
  br i1 %i.au, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  br i1 %.not58, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = tail call i32 @get_log_level() #17
  %i.ay = icmp sgt i32 %i.ax, 3
  br i1 %i.ay, label %.sink.split, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %.not58, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = tail call i32 @get_log_level() #17
  %i.ba = icmp sgt i32 %i.az, 3
  br i1 %i.ba, label %.sink.split, label %bb.y

.sink.split:                                      ; preds = %bb.x, %bb.v
  %.str.52.sink = phi ptr [ @.str.51, %bb.v ], [ @.str.52, %bb.x ]
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull %.str.52.sink, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.cgroup_p_constrain_set, ptr noundef %i.ar) #17
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.w, %bb.x, %bb.u, %bb.v
  call void @slurm_xfree(ptr noundef nonnull %i.a) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.bc, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 -2
  %switch.selectcmp73 = icmp eq i32 %i.bc, 1
  %switch.select74 = select i1 %switch.selectcmp73, i32 1, i32 %switch.select
  %i.bd = load i32, ptr %i.aq, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = load i8, ptr %i.as, align 8, !range !11, !noundef !12
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = call i32 @add_device_ebpf_prog(ptr noundef nonnull %.044.ph, i32 noundef %switch.select74, i32 noundef %i.bd, i32 noundef %i.bf, i1 noundef zeroext %i.bh) #17
  br label %bb.aa

bb.z:                                             ; preds = %bb.c
  %i.bj = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.53, i32 noundef %0) #17 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %bb.g, %bb.c, %bb.y, %bb.z, %bb.f, %bb.l, %bb.b, %bb.a, %bb.s, %bb.q
  %.043 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %bb.s ], [ -1, %bb.q ], [ -1, %bb.z ], [ %0, %bb.c ], [ %i.bi, %bb.y ], [ %.2, %bb.l ], [ %.045, %bb.f ], [ %spec.select69, %bb.g ], [ %spec.select72, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.043
}

declare i32 @common_cgroup_set_uint64_param(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @_find_task_cg_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, %i.a
  %. = zext i1 %i.d to i32
  ret i32 %.
}

declare ptr @gres_device_id2str(ptr noundef) local_unnamed_addr #1

declare i32 @add_device_ebpf_prog(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cgroup_p_constrain_apply(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = icmp eq i32 %1, 2
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 1
  %spec.store.select = select i1 %i.c, i32 0, i32 %1 ; 2 uses
  %i.d = icmp eq i32 %spec.store.select, 4
  %spec.store.select2 = select i1 %i.d, i32 6, i32 %spec.store.select ; 2 uses
  %cond = icmp eq i32 %0, 3
  br i1 %cond, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %bb.g [
    i32 6, label %.thread
    i32 3, label %.thread
    i32 7, label %bb.d
    i32 4, label %.thread
  ]

.thread:                                          ; preds = %bb.c, %bb.c, %bb.c
  %i.e = zext nneg i32 %spec.store.select2 to i64 ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr @p, i64 %i.e
  %i.g = getelementptr inbounds nuw [40 x i8], ptr @int_cg, i64 %i.e
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @task_list, align 8
  %i.i = call ptr @list_find_first(ptr noundef %i.h, ptr noundef nonnull @_find_task_cg_info, ptr noundef nonnull %i.a) #17 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.a, align 4
  %i.k = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.48, i32 noundef %i.j) #17 ; 0 uses
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.m = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.54, i32 noundef %2) #17 ; 0 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %.thread
  %.124.ph = phi ptr [ %i.f, %.thread ], [ %i.l, %bb.f ] ; 3 uses
  %.pn = phi ptr [ %i.g, %.thread ], [ %i.i, %bb.f ]
  %.1.ph.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.1.ph = load ptr, ptr %.1.ph.in, align 8       ; 3 uses
  %i.n = load i64, ptr %.124.ph, align 8
  %i.o = icmp ugt i64 %i.n, 6
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.q = and i64 %i.p, 36028797018963968
  %.not30 = icmp eq i64 %i.q, 0                   ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %.not30, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = call i32 @get_log_level() #17
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.55, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.cgroup_p_constrain_apply, ptr noundef %.1.ph) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  call void @close_ebpf_prog(ptr noundef nonnull %.124.ph, i1 noundef zeroext true) #17
  %i.t = icmp ne i32 %spec.store.select2, 7
  %i.u = load i32, ptr @token_fd, align 4
  %i.v = call i32 @load_ebpf_prog(ptr noundef nonnull %.124.ph, ptr noundef %.1.ph, i1 noundef zeroext %i.t, i32 noundef %i.u) #17
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  br i1 %.not30, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = call i32 @get_log_level() #17
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.56, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.cgroup_p_constrain_apply, ptr noundef %.1.ph) #17
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  %i.y = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.53, i32 noundef %0) #17 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.a, %bb.p, %bb.l, %bb.g, %bb.e
  %.022 = phi i32 [ -1, %bb.p ], [ %i.v, %bb.l ], [ 0, %bb.a ], [ -1, %bb.g ], [ -1, %bb.e ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  ret i32 %.022
}

declare void @close_ebpf_prog(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @load_ebpf_prog(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cgroup_p_get_scope_path() local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @stepd_scope_path, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cgroup_p_constrain_get(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.xcgroup_t, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.a = icmp eq i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.57, i32 noundef 2) #17 ; 0 uses
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 1
  %spec.store.select = select i1 %i.c, i32 0, i32 %1 ; 2 uses
  %i.d = icmp eq i32 %spec.store.select, 4
  %spec.store.select2 = select i1 %i.d, i32 6, i32 %spec.store.select ; 2 uses
  %i.e = icmp eq i32 %spec.store.select2, 8
  %spec.store.select1 = select i1 %i.e, i32 0, i32 %spec.store.select2 ; 2 uses
  %i.f = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 96, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.58, i32 noundef 2583, ptr noundef nonnull @__func__.cgroup_p_constrain_get) #17 ; 10 uses
  tail call void @cgroup_init_limits(ptr noundef %i.f) #17
  switch i32 %0, label %bb.q [
    i32 0, label %bb.r
    i32 1, label %bb.d
    i32 2, label %bb.p
    i32 3, label %bb.r
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = zext i32 %spec.store.select1 to i64
  %i.h = getelementptr inbounds nuw [40 x i8], ptr @int_cg, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %i.k = tail call i32 @common_cgroup_get_param(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #17
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = tail call i32 @xstrcmp(ptr noundef %i.n, ptr noundef nonnull @.str.59) #17
  %.not41 = icmp eq i32 %i.o, 0
  br i1 %.not41, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @slurm_xfree(ptr noundef nonnull %i.i) #17
  %i.p = tail call i32 @common_cgroup_get_param(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #17
  %.not42 = icmp eq i32 %i.p, 0
  br i1 %.not42, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.s = tail call i32 @common_cgroup_get_param(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #17
  %.not43 = icmp eq i32 %i.s, 0
  br i1 %.not43, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.q, align 8
  %i.w = tail call i32 @xstrcmp(ptr noundef %i.v, ptr noundef nonnull @.str.59) #17
  %.not44 = icmp eq i32 %i.w, 0
  br i1 %.not44, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @slurm_xfree(ptr noundef nonnull %i.q) #17
  %i.x = tail call i32 @common_cgroup_get_param(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #17
  %.not45 = icmp eq i32 %i.x, 0
  br i1 %.not45, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.y = load i64, ptr %i.j, align 8              ; 2 uses
  %.not46 = icmp eq i64 %i.y, 0
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  store i8 0, ptr %i.ab, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = load i64, ptr %i.r, align 8             ; 2 uses
  %.not47 = icmp eq i64 %i.ac, 0
  br i1 %.not47, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %i.q, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  store i8 0, ptr %i.af, align 1
  br label %bb.v

bb.p:                                             ; preds = %bb.c
  %i.ag = zext i32 %spec.store.select1 to i64
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr @int_cg, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call ptr @xstrdup(ptr noundef %i.aj) #17
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8
  call fastcc void @_get_mem_recursive(ptr noundef %2, ptr noundef %i.f)
  call void @slurm_xfree(ptr noundef nonnull %i.al) #17
end_hunk_0
