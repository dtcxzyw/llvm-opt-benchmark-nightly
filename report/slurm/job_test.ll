Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_test?download=true
inline.NumInlined: 60
inline.NumDeleted: 26
begin_hunk_0_@_block_by_topology:bb.a

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dz = phi ptr [ %.pre84, %bb.ah ], [ %i.dt, %bb.ag ]
  call void @bit_and_not(ptr noundef %2, ptr noundef %i.dz) #9
  %i.ea = load ptr, ptr %i.a, align 8
  %.not42 = icmp eq ptr %i.ea, null
  br i1 %.not42, label %._crit_edge.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ai, %bb.aj, %bb.g, %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare void @part_data_sort_res(ptr noundef) local_unnamed_addr #2

declare void @job_res_rm_cores(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @create_job_resources() local_unnamed_addr #2

declare ptr @bitmap2node_name_sortable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @gres_select_util_job_min_tasks(i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @build_job_resources(ptr noundef) local_unnamed_addr #2

declare i64 @bit_size(ptr noundef) local_unnamed_addr #2

declare i32 @drain_nodes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #3

declare i32 @count_core_array_set(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gres_select_util_job_tres_per_task(ptr noundef) local_unnamed_addr #2

declare i32 @gres_select_util_get_task_limit(ptr noundef) local_unnamed_addr #2

declare i32 @dist_tasks(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gres_select_filter_select_and_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @topology_g_get_rank(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @build_job_resources_cpu_array(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gres_select_util_job_mem_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @job_resources_get_node_cpu_cnt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @gres_select_util_job_mem_max(ptr noundef) local_unnamed_addr #2

declare i64 @bit_ffs(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gres_node_state_list_has_alloc_gres(ptr noundef) local_unnamed_addr #2

declare i32 @gres_job_test(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_is_node_busy(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i1 noundef zeroext %2, ptr nofree noundef readnone captures(address) %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %.not3241 = icmp eq ptr %0, null
  br i1 %.not3241, label %.loopexit38, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %.not37 = xor i1 %4, true                       ; 4 uses
  %i.a = zext i32 %1 to i64                       ; 4 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %.lr.ph43.split, label %.lr.ph43.split.us

.lr.ph43.split.us:                                ; preds = %.lr.ph43
  br i1 %2, label %.lr.ph43.split.us.split.us, label %.lr.ph43.split.us.split

.lr.ph43.split.us.split.us:                       ; preds = %.lr.ph43.split.us, %..loopexit_crit_edge.split.us48.us
  %.02842.us.us = phi ptr [ %i.u, %..loopexit_crit_edge.split.us48.us ], [ %0, %.lr.ph43.split.us ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02842.us.us, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %i.d = load i8, ptr @preempt_by_qos, align 1, !range !8, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  %not.or.cond.us.us = and i1 %.not37, %i.e
  %i.f = sext i1 %not.or.cond.us.us to i16
  %spec.select.us.us = add i16 %i.c, %i.f         ; 2 uses
  %i.g = icmp ult i16 %spec.select.us.us, 2
  br i1 %i.g, label %..loopexit_crit_edge.split.us48.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph43.split.us.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %.02842.us.us, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, %3
  br i1 %i.j, label %..loopexit_crit_edge.split.us48.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.02842.us.us, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not33.us.us = icmp eq ptr %i.l, null
  br i1 %.not33.us.us, label %..loopexit_crit_edge.split.us48.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.c
  %wide.trip.count70 = zext i16 %spec.select.us.us to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.preheader.us.us
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %bb.h ], [ 0, %.preheader.us.us ] ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv67
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not34.us46.us = icmp eq ptr %i.p, null
  br i1 %.not34.us46.us, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.a
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not35.us47.us = icmp eq ptr %i.r, null
  br i1 %.not35.us47.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @bit_set_count(ptr noundef nonnull %i.r) #9
  %.not60 = icmp eq i32 %i.s, 0
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @list_find_first(ptr noundef nonnull %5, ptr noundef nonnull @_is_job_sharing, ptr noundef null) #9
  %.not36.us.us = icmp eq ptr %i.t, null
  br i1 %.not36.us.us, label %bb.h, label %.loopexit38

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %..loopexit_crit_edge.split.us48.us, label %bb.d, !llvm.loop !58

..loopexit_crit_edge.split.us48.us:               ; preds = %bb.h, %bb.c, %bb.b, %.lr.ph43.split.us.split.us
  %i.u = load ptr, ptr %.02842.us.us, align 8     ; 2 uses
  %.not32.us.us = icmp eq ptr %i.u, null
  br i1 %.not32.us.us, label %.loopexit38, label %.lr.ph43.split.us.split.us, !llvm.loop !59

.lr.ph43.split.us.split:                          ; preds = %.lr.ph43.split.us, %.loopexit.us
  %.02842.us = phi ptr [ %i.ak, %.loopexit.us ], [ %0, %.lr.ph43.split.us ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02842.us, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not33.us = icmp eq ptr %i.w, null
  br i1 %.not33.us, label %.loopexit.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph43.split.us.split
  %i.x = load i8, ptr @preempt_by_qos, align 1, !range !8, !noundef !9
  %i.y = trunc nuw i8 %i.x to i1
  %not.or.cond.us = and i1 %.not37, %i.y
  %i.z = sext i1 %not.or.cond.us to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %.02842.us, i64 8
  %i.ab = load i16, ptr %i.aa, align 8
  %spec.select.us = add i16 %i.ab, %i.z           ; 2 uses
  %.not58 = icmp eq i16 %spec.select.us, 0
  br i1 %.not58, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %wide.trip.count = zext i16 %spec.select.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not34.us46 = icmp eq ptr %i.af, null
  br i1 %.not34.us46, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.us
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not35.us47 = icmp eq ptr %i.ah, null
  br i1 %.not35.us47, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call i32 @bit_set_count(ptr noundef nonnull %i.ah) #9
  %.not59 = icmp eq i32 %i.ai, 0
  br i1 %.not59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @list_find_first(ptr noundef nonnull %5, ptr noundef nonnull @_is_job_sharing, ptr noundef null) #9
  %.not36.us = icmp eq ptr %i.aj, null
  br i1 %.not36.us, label %bb.l, label %.loopexit38

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !58

.loopexit.us:                                     ; preds = %bb.l, %.preheader.us, %.lr.ph43.split.us.split
  %i.ak = load ptr, ptr %.02842.us, align 8       ; 2 uses
  %.not32.us = icmp eq ptr %i.ak, null
  br i1 %.not32.us, label %.loopexit38, label %.lr.ph43.split.us.split, !llvm.loop !59

.lr.ph43.split:                                   ; preds = %.lr.ph43
  br i1 %2, label %.lr.ph43.split.split.us, label %.lr.ph43.split.split

.lr.ph43.split.split.us:                          ; preds = %.lr.ph43.split, %..loopexit_crit_edge.split.us.us
  %.02842.us49 = phi ptr [ %i.bc, %..loopexit_crit_edge.split.us.us ], [ %0, %.lr.ph43.split ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02842.us49, i64 8
  %i.am = load i16, ptr %i.al, align 8
  %6 = load i8, ptr @preempt_by_qos, align 1, !range !8, !noundef !9
  %i.an = trunc nuw i8 %6 to i1
  %not.or.cond.us50 = and i1 %.not37, %i.an
  %i.ao = sext i1 %not.or.cond.us50 to i16
  %spec.select.us51 = add i16 %i.am, %i.ao        ; 2 uses
  %i.ap = icmp ult i16 %spec.select.us51, 2
  br i1 %i.ap, label %..loopexit_crit_edge.split.us.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph43.split.split.us
  %i.aq = getelementptr inbounds nuw i8, ptr %.02842.us49, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, %3
  br i1 %i.as, label %..loopexit_crit_edge.split.us.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.02842.us49, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %.not33.us52 = icmp eq ptr %i.au, null
  br i1 %.not33.us52, label %..loopexit_crit_edge.split.us.us, label %.preheader.us53

.preheader.us53:                                  ; preds = %bb.n
  %wide.trip.count80 = zext i16 %spec.select.us51 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.preheader.us53
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %bb.r ], [ 0, %.preheader.us53 ] ; 2 uses
  %i.av = load ptr, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %indvars.iv77
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not34.us.us = icmp eq ptr %i.ay, null
  br i1 %.not34.us.us, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.a
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not35.us.us = icmp eq ptr %i.ba, null
  br i1 %.not35.us.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = tail call i32 @bit_set_count(ptr noundef nonnull %i.ba) #9 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %..loopexit_crit_edge.split.us.us, label %bb.o, !llvm.loop !58

..loopexit_crit_edge.split.us.us:                 ; preds = %bb.r, %bb.n, %bb.m, %.lr.ph43.split.split.us
  %i.bc = load ptr, ptr %.02842.us49, align 8     ; 2 uses
  %.not32.us56 = icmp eq ptr %i.bc, null
  br i1 %.not32.us56, label %.loopexit38, label %.lr.ph43.split.split.us, !llvm.loop !59

.lr.ph43.split.split:                             ; preds = %.lr.ph43.split, %.loopexit
  %.02842 = phi ptr [ %i.br, %.loopexit ], [ %0, %.lr.ph43.split ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02842, i64 32 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %.not33 = icmp eq ptr %i.be, null
  br i1 %.not33, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph43.split.split
  %i.bf = load i8, ptr @preempt_by_qos, align 1, !range !8, !noundef !9
  %i.bg = trunc nuw i8 %i.bf to i1
  %not.or.cond = and i1 %.not37, %i.bg
  %i.bh = sext i1 %not.or.cond to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %.02842, i64 8
  %i.bj = load i16, ptr %i.bi, align 8
  %spec.select = add i16 %i.bj, %i.bh             ; 2 uses
  %.not57 = icmp eq i16 %spec.select, 0
  br i1 %.not57, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count75 = zext i16 %spec.select to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %indvars.iv72 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next73, %bb.u ] ; 2 uses
  %i.bk = load ptr, ptr %i.bd, align 8
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %indvars.iv72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not34.us = icmp eq ptr %i.bn, null
  br i1 %.not34.us, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.a
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not35.us = icmp eq ptr %i.bp, null
  br i1 %.not35.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = tail call i32 @bit_set_count(ptr noundef nonnull %i.bp) #9 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.lr.ph
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.loopexit, label %.lr.ph, !llvm.loop !58

.loopexit:                                        ; preds = %bb.u, %.preheader, %.lr.ph43.split.split
  %i.br = load ptr, ptr %.02842, align 8          ; 2 uses
  %.not32 = icmp eq ptr %i.br, null
  br i1 %.not32, label %.loopexit38, label %.lr.ph43.split.split, !llvm.loop !59

.loopexit38:                                      ; preds = %.loopexit.us, %bb.k, %..loopexit_crit_edge.split.us48.us, %bb.g, %.loopexit, %..loopexit_crit_edge.split.us.us, %bb.a
  %.027 = phi i32 [ 0, %.loopexit ], [ 1, %bb.k ], [ 1, %bb.g ], [ 0, %..loopexit_crit_edge.split.us.us ], [ 0, %..loopexit_crit_edge.split.us48.us ], [ 0, %bb.a ], [ 0, %.loopexit.us ]
  ret i32 %.027
}

declare void @bit_clear(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_is_job_sharing(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 442
  %i.d = load i8, ptr %i.c, align 2
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %i.i = load i16, ptr %i.h, align 4
  %.not = icmp sgt i16 %i.i, -1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call i32 @get_log_level() #9
  %i.k = icmp sgt i32 %i.j, 6
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.67, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._is_job_sharing, ptr noundef nonnull %0) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i64 @slurm_get_def_cpu_per_gpu(ptr noundef) local_unnamed_addr #2

declare i64 @slurm_get_def_mem_per_gpu(ptr noundef) local_unnamed_addr #2

declare void @gres_select_util_job_set_defs(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare zeroext i1 @topology_g_allow_one_node(i32 noundef) local_unnamed_addr #2

declare i32 @bit_super_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @topology_g_eval_nodes(ptr noundef) local_unnamed_addr #2

declare void @bit_and(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gres_sched_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_cmp_node(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.f = load i64, ptr %i.e, align 8
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.d, i64 %i.f)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_can_job_run_on_node(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i16 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr nofree noundef readonly captures(address_is_null) %8, ptr noundef %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %10 = alloca %struct.gres_sock_list_create_t, align 8 ; 23 uses
  %i.f = alloca i16, align 2                      ; 6 uses
  %11 = alloca %struct.gres_remove_unused_args_t, align 8 ; 22 uses
  %i.g = zext i1 %6 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.h = load ptr, ptr @node_record_table_ptr, align 8
  %i.i = zext i32 %2 to i64                       ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8              ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 90 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2
  store i16 %i.o, ptr %10, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.p, i8 0, i64 14, i1 false)
  store i16 %5, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 18 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.s, i8 0, i64 6, i1 false)
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  store ptr %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.z, align 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.af = load ptr, ptr %i.ae, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ag = phi ptr [ %i.af, %bb.b ], [ %i.ad, %bb.a ]
  store ptr %i.ag, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i32 %2, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 60
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 280 ; 6 uses
  %i.al = load ptr, ptr %i.ak, align 8
  store ptr %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 72
  store ptr %9, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 5 uses
  store ptr null, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 436
end_hunk_0
