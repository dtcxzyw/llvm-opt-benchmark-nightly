Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_mgr?download=true
inline.NumInlined: 249
inline.NumDeleted: 67
begin_hunk_0_@_test_state_dir_flag:bb.a
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.695, ptr noundef nonnull %0) #24 ; 0 uses
  tail call void @slurm_job_state_set(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @__func__._test_state_dir_flag) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 22, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1040
  tail call void @slurm_xfree(ptr noundef nonnull %i.p) #24
  %i.q = tail call i64 @time(ptr noundef null) #24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i64 %i.q, ptr %i.s, align 8
  tail call void @job_completion_logger(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.b
  ret i32 0
}

declare zeroext i1 @running_cons_tres() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_get_req_gres(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %. = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.d)
  store i64 %., ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, %i.m
  store i64 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

declare i32 @gres_get_gpu_plugin_id() local_unnamed_addr #2

declare i32 @gres_find_id(ptr noundef, ptr noundef) #2

declare i64 @slurm_get_def_mem_per_gpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @job_epilog_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.b = and i64 %i.a, 268435456
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @get_log_level() #24
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__.job_epilog_complete, ptr noundef %0) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = and i32 %i.f, 33023
  %or.cond = icmp eq i32 %i.g, 0
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %i.f, 32768
  %.not30 = icmp ne i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.j = load ptr, ptr %i.i, align 8
  %.not31 = icmp ne ptr %i.j, null
  %brmerge = or i1 %.not30, %.not31
  br i1 %brmerge, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %i.n = tail call ptr @find_node_record(ptr noundef %1) #24 ; 2 uses
  %.not36 = icmp eq ptr %i.n, null
  br i1 %.not36, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 15
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @get_log_level() #24
  %i.t = icmp sgt i32 %i.s, 4
  br i1 %i.t, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.208, ptr noundef nonnull @__func__.job_epilog_complete, ptr noundef nonnull %0, ptr noundef %1) #24
  br label %bb.t

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 898
  %i.v = load i16, ptr %i.u, align 2
  %.not37 = icmp eq i16 %i.v, 0
  br i1 %.not37, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.w = tail call i32 @get_log_level() #24
  %i.x = icmp sgt i32 %i.w, 4
  br i1 %i.x, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.209, ptr noundef nonnull @__func__.job_epilog_complete, ptr noundef nonnull %0) #24
  br label %bb.t

bb.m:                                             ; preds = %.critedge
  %i.y = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.210, ptr noundef nonnull @__func__.job_epilog_complete, ptr noundef nonnull %0) #24 ; 0 uses
  br label %bb.t

bb.n:                                             ; preds = %bb.f
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.211, ptr noundef nonnull @__func__.job_epilog_complete, ptr noundef nonnull %0, ptr noundef %1) #24 ; 0 uses
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8
  %i.ab = tail call i32 @drain_nodes(ptr noundef %1, ptr noundef nonnull @.str.212, i32 noundef %i.aa) #24 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 1, ptr %i.ac, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ad = tail call ptr @find_node_record(ptr noundef %1) #24 ; 2 uses
  %.not34 = icmp eq ptr %i.ad, null
  br i1 %.not34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @make_node_idle(ptr noundef nonnull %i.ad, ptr noundef nonnull %0) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @slurm_xfree(ptr noundef nonnull %i.ae) #24
  %i.af = load i32, ptr %i.e, align 8
  %i.ag = and i32 %i.af, 32768
  %.not35 = icmp eq i32 %i.ag, 0
  br i1 %.not35, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @batch_requeue_fini(ptr noundef nonnull %0)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.j, %bb.i, %bb.k, %bb.l, %bb.m, %bb.s
  %.027 = phi i1 [ true, %bb.s ], [ false, %bb.j ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.r ]
  ret i1 %.027
}

declare i32 @drain_nodes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @batch_requeue_fini(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %1 = alloca %struct.gres_job_state_validate_t, align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = and i32 %i.d, 16777216
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call ptr @next_node_bitmap(ptr noundef %i.g, ptr noundef nonnull %i.b) #24 ; 2 uses
  %.not125155 = icmp eq ptr %i.h, null
  br i1 %.not125155, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.pre = load i32, ptr %i.c, align 8
  br label %bb.e

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.i = phi ptr [ %i.p, %bb.d ], [ %i.h, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8              ; 2 uses
  %.not148 = icmp eq i16 %i.k, 0
  br i1 %.not148, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = add i16 %i.k, -1
  store i16 %i.l, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  call void @make_node_idle(ptr noundef nonnull %i.i, ptr noundef null) #24
  %i.m = load i32, ptr %i.b, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.b, align 4
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = call ptr @next_node_bitmap(ptr noundef %i.o, ptr noundef nonnull %i.b) #24 ; 2 uses
  %.not125 = icmp eq ptr %i.p, null
  br i1 %.not125, label %._crit_edge, label %.lr.ph, !llvm.loop !78

bb.e:                                             ; preds = %._crit_edge, %bb.a
  %i.q = phi i32 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ] ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = and i64 %i.r, 32768
  %.not126 = icmp eq i64 %i.s, 0
  %i.t = and i32 %i.q, 255
  %i.u = icmp eq i32 %i.t, 0
  %or.cond = and i1 %i.u, %.not126
  br i1 %or.cond, label %bb.f, label %bb.bh

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load i16, ptr %i.v, align 8
  %.not127 = icmp eq i16 %i.w, 0
  br i1 %.not127, label %bb.bh, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = and i64 %i.r, 16777216
  %.not128 = icmp eq i64 %i.x, 0
  br i1 %.not128, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.z = load i8, ptr %i.y, align 2, !range !16, !noundef !17
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 @get_log_level() #24
  %i.ac = icmp sgt i32 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.bh

bb.j:                                             ; preds = %bb.i
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.batch_requeue_fini, ptr noundef nonnull %0) #24
  br label %bb.bh

bb.k:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ae = load i16, ptr %i.ad, align 8
  %.not129 = icmp eq i16 %i.ae, 0
  br i1 %.not129, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @slurm_job_state_unset_flag(ptr noundef nonnull %0, i32 noundef 16777216, ptr noundef nonnull @__func__.batch_requeue_fini) #24
  call void @slurm_job_state_set_flag(ptr noundef nonnull %0, i32 noundef 2048, ptr noundef nonnull @__func__.batch_requeue_fini) #24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 16, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.ag) #24
  %i.ah = call ptr @xstrdup(ptr noundef nonnull @.str.214) #24
  store ptr %i.ah, ptr %i.ag, align 8
  call void (ptr, ...) @sched_info(ptr noundef nonnull @.str.215, ptr noundef nonnull @__func__.batch_requeue_fini, ptr noundef nonnull %0) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i32 0, ptr %i.ai, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.g
  %i.aj = call i32 @get_log_level() #24
  %i.ak = icmp sgt i32 %i.aj, 2
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.216, ptr noundef nonnull %0) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  call void @slurm_xfree(ptr noundef nonnull %i.at) #24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @slurm_xfree(ptr noundef nonnull %i.au) #24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @free_job_resources(ptr noundef nonnull %i.av) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not130 = icmp eq ptr %i.ax, null
  br i1 %.not130, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @list_destroy(ptr noundef nonnull %i.ax) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @slurm_xfree(ptr noundef nonnull %i.ay) #24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 640
  call void @slurm_xfree(ptr noundef nonnull %i.az) #24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 648
  call void @slurm_xfree(ptr noundef nonnull %i.ba) #24
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 704
  call void @slurm_xfree(ptr noundef nonnull %i.bb) #24
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @slurm_xfree(ptr noundef nonnull %i.bc) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @slurm_xfree(ptr noundef nonnull %i.bd) #24
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %.not131 = icmp eq ptr %i.bf, null
  br i1 %.not131, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @slurm_bit_free(ptr noundef nonnull %i.be) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr null, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not132 = icmp eq ptr %i.bh, null
  br i1 %.not132, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @slurm_bit_free(ptr noundef nonnull %i.bg) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %.not133 = icmp eq ptr %i.bj, null
  br i1 %.not133, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @slurm_bit_free(ptr noundef nonnull %i.bi) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr null, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not134 = icmp eq ptr %i.bl, null
  br i1 %.not134, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @list_destroy(ptr noundef nonnull %i.bl) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr null, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 944
  call void @slurm_xfree(ptr noundef nonnull %i.bm) #24
  call void @restore_job_licenses(ptr noundef nonnull %0, i1 noundef zeroext true) #24
  call void @job_resv_clear_magnetic_flag(ptr noundef nonnull %0) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %.not135 = icmp eq ptr %i.bp, null
  br i1 %.not135, label %bb.an, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = call i64 @time(ptr noundef null) #24    ; 4 uses
  %i.br = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load i64, ptr %i.bs, align 8
  %.not136 = icmp sgt i64 %i.bt, %i.bq
  br i1 %.not136, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.b.i = load i1, ptr @_requeue_delay.set, align 1
  br i1 %.b.i, label %_requeue_delay.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.bv = call ptr @conf_get_opt_str(ptr noundef %i.bu, ptr noundef nonnull @.str.696) #24 ; 3 uses
  store ptr %i.bv, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bv, ptr noundef null, i32 noundef 10) #24, !inline_history !4
  %i.bx = trunc i64 %i.bw to i32
  store i32 %i.bx, ptr @_requeue_delay.delay, align 4
  call void @slurm_xfree(ptr noundef nonnull %i.a) #24
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.by = call i32 @cred_expiration() #24
  store i32 %i.by, ptr @_requeue_delay.delay, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i1 true, ptr @_requeue_delay.set, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_requeue_delay.exit

_requeue_delay.exit:                              ; preds = %bb.aa, %bb.ae
  %i.bz = load i32, ptr @_requeue_delay.delay, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add i64 %i.bq, 1
  %i.cc = add i64 %i.cb, %i.ca                    ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = and i64 %i.ce, 4194304
  %.not137 = icmp eq i64 %i.cf, 0
  br i1 %.not137, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_requeue_delay.exit
  %i.cg = load ptr, ptr %i.bo, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not138 = icmp eq ptr %i.ci, null
  br i1 %.not138, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = call i64 @calc_next_cron_start(ptr noundef nonnull %i.ci, i64 noundef %i.cc) #24
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.ck = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.217, ptr noundef nonnull %0) #24 ; 0 uses
  %i.cl = load i64, ptr %i.cd, align 8
  %i.cm = and i64 %i.cl, -4194305
  store i64 %i.cm, ptr %i.cd, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %_requeue_delay.exit
  %i.cn = and i64 %i.ce, 35184372088832
  %.not140 = icmp eq i64 %i.cn, 0
  %spec.select = select i1 %.not140, i64 %i.cc, i64 0
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.0 = phi i64 [ %i.cj, %bb.ag ], [ %i.cc, %bb.ah ], [ %spec.select, %bb.ai ]
  %i.co = load ptr, ptr %i.bo, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store i64 %.0, ptr %i.cp, align 8
  %.pre156 = load ptr, ptr %i.bo, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.z
  %i.cq = phi ptr [ %.pre156, %bb.aj ], [ %i.br, %bb.z ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 496 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = icmp eq i64 %i.bq, %i.cs
  %i.cu = zext i1 %i.ct to i64
  %spec.select150 = add nsw i64 %i.bq, %i.cu
  store i64 %spec.select150, ptr %i.cr, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = and i64 %i.cw, -262145
  store i64 %i.cx, ptr %i.cv, align 8
  %i.cy = load ptr, ptr %i.bo, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 0, ptr %i.cz, align 8
  %i.da = load ptr, ptr %i.bo, align 8            ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 512
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = and i8 %i.dc, 1
  %.not141 = icmp eq i8 %i.dd, 0
  br i1 %.not141, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not142 = icmp eq ptr %i.df, null
  br i1 %.not142, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 248
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.dn = load <2 x ptr>, ptr %i.dm, align 8
  %i.do = insertelement <4 x ptr> poison, ptr %i.dj, i64 0
  %i.dp = insertelement <4 x ptr> %i.do, ptr %i.dl, i64 1
  %i.dq = shufflevector <2 x ptr> %i.dn, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dr = shufflevector <4 x ptr> %i.dp, <4 x ptr> %i.dq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.dr, ptr %1, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %3 = load ptr, ptr %2, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 112
  %4 = load <2 x ptr>, ptr %i.dt, align 8
  %5 = insertelement <4 x ptr> poison, ptr %3, i64 2
  %6 = insertelement <4 x ptr> %5, ptr %i.du, i64 3
  %7 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x ptr> %7, <4 x ptr> %6, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x ptr> %8, ptr %i.ds, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %9 = getelementptr inbounds nuw i8, ptr %i.da, <4 x i64> <i64 240, i64 272, i64 288, i64 296>
  store <4 x ptr> %9, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store ptr %i.dx, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dz = getelementptr inbounds nuw i8, ptr %i.da, i64 298
  store ptr %i.dz, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.eb = getelementptr inbounds nuw i8, ptr %i.da, i64 300
  store ptr %i.eb, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store ptr %i.ed, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.de, ptr %i.ee, align 8
  call void @list_destroy(ptr noundef nonnull %i.df) #24
  store ptr null, ptr %i.de, align 8
  %i.ef = call i32 @gres_job_state_validate(ptr noundef nonnull %1) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.al, %bb.am, %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8
  %.not144 = icmp eq i32 %i.eh, 0
  br i1 %.not144, label %set_job_prio.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = load i32, ptr %i.c, align 8
  %i.ej = and i32 %i.ei, 255
  %i.ek = icmp samesign ugt i32 %i.ej, 2
  br i1 %i.ek, label %set_job_prio.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.el = load i32, ptr @lowest_prio, align 4
  %i.em = call i32 @priority_g_set(i32 noundef %i.el, ptr noundef nonnull %0) #24 ; 5 uses
  store i32 %i.em, ptr %i.eg, align 8
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %set_job_prio.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ep = load i16, ptr %i.eo, align 8
  %.not.i151 = icmp eq i16 %i.ep, 0
  br i1 %.not.i151, label %bb.ar, label %set_job_prio.exit

bb.ar:                                            ; preds = %bb.aq
  %i.eq = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not16.i = icmp eq ptr %i.eq, null
  br i1 %.not16.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 292
  %i.es = load i32, ptr %i.er, align 4            ; 2 uses
  %.not17.i = icmp eq i32 %i.es, -2147483648
  br i1 %.not17.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.et = xor i32 %i.es, -2147483648
  %i.eu = add i32 %i.et, %i.em
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.0.i = phi i32 [ %i.eu, %bb.at ], [ %i.em, %bb.as ], [ %i.em, %bb.ar ]
  %i.ev = load i32, ptr @lowest_prio, align 4
  %i.ew = call i32 @llvm.umin.i32(i32 %.0.i, i32 %i.ev)
  store i32 %i.ew, ptr @lowest_prio, align 4
  br label %set_job_prio.exit

set_job_prio.exit:                                ; preds = %bb.au, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not145 = icmp eq ptr %i.ey, null
  br i1 %.not145, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %set_job_prio.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 272
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i32 %i.fa, ptr %i.fb, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %set_job_prio.exit
  call void @slurm_on_job_state_change(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @__func__._remove_job_hash) #24
  %i.fc = load i64, ptr %0, align 8               ; 3 uses
  %.not.i152 = icmp eq i64 %i.fc, 0
  br i1 %.not.i152, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fd = call i32 @get_log_level() #24
  %i.fe = icmp sgt i32 %i.fd, 4
  br i1 %i.fe, label %bb.ay, label %_remove_job_hash.exit

bb.ay:                                            ; preds = %bb.ax
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.302, ptr noundef nonnull @__func__._remove_job_hash, ptr noundef nonnull %0) #24
  br label %_remove_job_hash.exit

bb.az:                                            ; preds = %bb.aw
  %i.ff = load ptr, ptr @job_hash_sluid, align 8  ; 2 uses
  %cond49.i = icmp eq ptr %i.ff, null
  br i1 %cond49.i, label %.loopexit.i, label %.lr.ph.split.us52.split.i.preheader

.lr.ph.split.us52.split.i.preheader:              ; preds = %bb.az
  %i.fg = load i32, ptr @hash_table_size, align 4
  %i.fh = sext i32 %i.fg to i64
  %i.fi = urem i64 %i.fc, %i.fh
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fi
  br label %.lr.ph.split.us52.split.i

.lr.ph.split.us52.split.i:                        ; preds = %.lr.ph.split.us52.split.i.preheader, %.lr.ph.split.us52.split.i
  %.150.us53.i = phi ptr [ %i.fl, %.lr.ph.split.us52.split.i ], [ %i.fj, %.lr.ph.split.us52.split.i.preheader ] ; 2 uses
  %i.fk = load ptr, ptr %.150.us53.i, align 8     ; 3 uses
  %.not44.us54.i = icmp eq ptr %i.fk, null        ; 2 uses
  %.not45.us55.i = icmp eq ptr %i.fk, %0
  %or.cond.us56.i = or i1 %.not44.us54.i, %.not45.us55.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 488
  br i1 %or.cond.us56.i, label %.critedge.i, label %.lr.ph.split.us52.split.i

.critedge.i:                                      ; preds = %.lr.ph.split.us52.split.i
  br i1 %.not44.us54.i, label %.loopexit.i, label %bb.bb

.loopexit.i:                                      ; preds = %.critedge.i, %bb.az
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = icmp eq i32 %i.fn, -2
  br i1 %i.fo, label %_remove_job_hash.exit, label %bb.ba

bb.ba:                                            ; preds = %.loopexit.i
  %i.fp = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.326, ptr noundef nonnull @__func__._remove_job_hash, i64 noundef %i.fc) #24 ; 0 uses
  br label %_remove_job_hash.exit

bb.bb:                                            ; preds = %.critedge.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8
  store ptr %i.fr, ptr %.150.us53.i, align 8
  store ptr null, ptr %i.fq, align 8
  br label %_remove_job_hash.exit

_remove_job_hash.exit:                            ; preds = %bb.ax, %bb.ay, %.loopexit.i, %bb.ba, %bb.bb
  call void @job_record_set_sluid(ptr noundef nonnull %0, i1 noundef zeroext true) #24
  %i.fs = load i64, ptr %0, align 8               ; 2 uses
  %.not.i154 = icmp eq i64 %i.fs, 0
  br i1 %.not.i154, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %_remove_job_hash.exit
  %i.ft = call i32 @get_log_level() #24
  %i.fu = icmp sgt i32 %i.ft, 4
  br i1 %i.fu, label %bb.bd, label %_add_job_hash_sluid.exit

bb.bd:                                            ; preds = %bb.bc
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.302, ptr noundef nonnull @__func__._add_job_hash_sluid, ptr noundef nonnull %0) #24
  br label %_add_job_hash_sluid.exit

bb.be:                                            ; preds = %_remove_job_hash.exit
  %i.fv = load i32, ptr @hash_table_size, align 4
  %i.fw = sext i32 %i.fv to i64
  %i.fx = urem i64 %i.fs, %i.fw
  %i.fy = load ptr, ptr @job_hash_sluid, align 8
  %sext.i = shl i64 %i.fx, 32
  %i.fz = ashr exact i64 %sext.i, 29
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 %i.fz ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.gb, ptr %i.gc, align 8
  store ptr %0, ptr %i.ga, align 8
  br label %_add_job_hash_sluid.exit

_add_job_hash_sluid.exit:                         ; preds = %bb.bc, %bb.bd, %bb.be
  %i.gd = load ptr, ptr @acct_db_conn, align 8
  %i.ge = call i32 @jobacct_storage_g_job_start(ptr noundef %i.gd, ptr noundef nonnull %0) #24 ; 0 uses
  %i.gf = call i32 @fed_mgr_is_origin_job(ptr noundef nonnull %0) #24
  %.not146 = icmp eq i32 %i.gf, 0
  br i1 %.not146, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %_add_job_hash_sluid.exit
  %i.gg = call i32 @fed_mgr_job_requeue(ptr noundef nonnull %0) #24
  %.not147 = icmp eq i32 %i.gg, 0
  br i1 %.not147, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.218, ptr noundef nonnull %0) #24 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.i, %bb.j, %bb.e, %bb.f, %_add_job_hash_sluid.exit
  ret void
}

declare void @sched_info(ptr noundef, ...) local_unnamed_addr #2

declare void @free_job_resources(ptr noundef) local_unnamed_addr #2

declare void @restore_job_licenses(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @job_resv_clear_magnetic_flag(ptr noundef) local_unnamed_addr #2

declare i64 @calc_next_cron_start(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @fed_mgr_is_origin_job(ptr noundef) local_unnamed_addr #2

declare i32 @fed_mgr_job_requeue(ptr noundef) local_unnamed_addr #2

end_hunk_0
