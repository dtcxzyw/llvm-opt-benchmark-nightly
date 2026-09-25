Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres?download=true
inline.NumInlined: 191
inline.NumDeleted: 74
begin_hunk_0_@_foreach_resv_gres_remap:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ @.str.275, %bb.f ], [ %spec.select42, %bb.g ]
  %i.p = load i32, ptr %i.d, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.273, ptr noundef nonnull @__func__._foreach_resv_gres_remap, ptr noundef nonnull %spec.select, ptr noundef nonnull %i.o, i32 noundef %i.p, i32 noundef %i.a) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.d
  %i.q = load i32, ptr %i.d, align 8
  %i.r = load i32, ptr @old_node_record_count, align 4
  %. = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.r) ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not39 = icmp eq ptr %i.t, null
  br i1 %.not39, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr @node_old_to_new_map, align 8
  %i.v = zext i32 %i.a to i64
  %i.w = tail call ptr @slurm_xcalloc(i64 noundef %i.v, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 6242, ptr noundef nonnull @__func__._remap_ptr_array) #26 ; 2 uses
  %.not30.i = icmp eq i32 %., 0
  br i1 %.not30.i, label %_remap_ptr_array.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %wide.trip.count36.i = zext i32 %. to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  %i.ac = icmp slt i32 %i.aa, %i.a
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = zext nneg i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad
  store ptr %i.y, ptr %i.ae, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @bit_free_ptr(ptr noundef nonnull %i.y) #26, !callees !109, !inline_history !106
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr null, ptr %i.x, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count36.i
  br i1 %exitcond.not.i, label %_remap_ptr_array.exit, label %.lr.ph.split.i, !llvm.loop !107

_remap_ptr_array.exit:                            ; preds = %bb.o, %bb.j
  tail call void @slurm_xfree(ptr noundef nonnull %i.s) #26
  store ptr %i.w, ptr %i.s, align 8
  br label %bb.p

bb.p:                                             ; preds = %_remap_ptr_array.exit, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not40 = icmp eq ptr %i.ag, null
  br i1 %.not40, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr @node_old_to_new_map, align 8
  %i.ai = zext i32 %i.a to i64
  %i.aj = tail call ptr @slurm_xcalloc(i64 noundef %i.ai, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 6265, ptr noundef nonnull @__func__._remap_uint64_t_array) #26 ; 2 uses
  %.not.i43 = icmp eq i32 %., 0
  br i1 %.not.i43, label %_remap_uint64_t_array.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.q
  %wide.trip.count.i = zext i32 %. to i64
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %bb.s, %.lr.ph.preheader.i
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i47, %bb.s ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i45
  %i.al = load i32, ptr %i.ak, align 4            ; 3 uses
  %i.am = icmp sgt i32 %i.al, -1
  %i.an = icmp slt i32 %i.al, %i.a
  %or.cond.i46 = and i1 %i.am, %i.an
  br i1 %or.cond.i46, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i44
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i45
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = zext nneg i32 %i.al to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.aq
  store i64 %i.ap, ptr %i.ar, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i44
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next.i47, %wide.trip.count.i
  br i1 %exitcond.not.i48, label %_remap_uint64_t_array.exit, label %.lr.ph.i44, !llvm.loop !108

_remap_uint64_t_array.exit:                       ; preds = %bb.s, %bb.q
  tail call void @slurm_xfree(ptr noundef nonnull %i.af) #26
  store ptr %i.aj, ptr %i.af, align 8
  br label %bb.t

bb.t:                                             ; preds = %_remap_uint64_t_array.exit, %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not41 = icmp eq ptr %i.at, null
  br i1 %.not41, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr @node_old_to_new_map, align 8
  %i.av = zext i32 %i.a to i64
  %i.aw = tail call ptr @slurm_xcalloc(i64 noundef %i.av, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 6242, ptr noundef nonnull @__func__._remap_ptr_array) #26 ; 2 uses
  %.not30.i49 = icmp eq i32 %., 0
  br i1 %.not30.i49, label %_remap_ptr_array.exit58, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.u
  %wide.trip.count36.i51 = zext i32 %. to i64
  br label %.lr.ph.split.i52

.lr.ph.split.i52:                                 ; preds = %bb.z, %.lr.ph.i50
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i56, %bb.z ], [ 0, %.lr.ph.i50 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i53 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %.not.i54 = icmp eq ptr %i.ay, null
  br i1 %.not.i54, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.i52
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i53
  %i.ba = load i32, ptr %i.az, align 4            ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, -1
  %i.bc = icmp slt i32 %i.ba, %i.a
  %or.cond.i55 = and i1 %i.bb, %i.bc
  br i1 %or.cond.i55, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bd
  store ptr %i.ay, ptr %i.be, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @xfree_ptr(ptr noundef nonnull %i.ay) #26, !callees !109, !inline_history !106
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr null, ptr %i.ax, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.split.i52
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count36.i51
  br i1 %exitcond.not.i57, label %_remap_ptr_array.exit58, label %.lr.ph.split.i52, !llvm.loop !107

_remap_ptr_array.exit58:                          ; preds = %bb.z, %bb.u
  tail call void @slurm_xfree(ptr noundef nonnull %i.as) #26
  store ptr %i.aw, ptr %i.as, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_remap_ptr_array.exit58, %bb.t
  store i32 %i.a, ptr %i.d, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.c, %bb.a, %bb.aa
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gres_job_state_validate(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.foreach_gres_list_cnt_t, align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 20 uses
  %i.b = alloca i64, align 8                      ; 27 uses
  %2 = alloca %struct.job_validate_t, align 8     ; 13 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 1, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %0, align 8                ; 5 uses
  %i.p = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = icmp ne ptr %i.z, null                  ; 4 uses
  br i1 %i.aa, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ab = tail call zeroext i1 @run_in_daemon(i32 noundef 8) #26
  br i1 %i.ab, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ac = tail call zeroext i1 @running_cons_tres() #26
  br i1 %i.ac, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ad = tail call ptr @xstrdup(ptr noundef nonnull %i.z) #26
  store ptr %i.ad, ptr %i.c, align 8
  call void @slurm_option_update_tres_per_task(i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.c) #26
  %i.ae = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @slurm_xfree(ptr noundef nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.cr

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.c, %bb.b, %bb.a
  %i.af = call zeroext i1 @run_in_daemon(i32 noundef 8) #26
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = call zeroext i1 @running_cons_tres() #26
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %i.t, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %i.x, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.p, i64 3
  %.fr = freeze <4 x ptr> %i.ak
  %i.al = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.am = bitcast <4 x i1> %i.al to i4
  %.not381 = icmp eq i4 %i.am, 0
  br i1 %.not381, label %bb.i, label %bb.cr

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.an = icmp ne ptr %i.o, null                  ; 2 uses
  %i.ao = icmp ne ptr %i.t, null                  ; 2 uses
  %or.cond7 = select i1 %i.an, i1 true, i1 %i.ao
  %i.ap = icmp ne ptr %i.v, null                  ; 2 uses
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.ap
  %i.aq = icmp ne ptr %i.x, null                  ; 2 uses
  %or.cond11 = select i1 %or.cond9, i1 true, i1 %i.aq
  %or.cond13 = or i1 %or.cond11, %i.aa
  %i.ar = icmp ne ptr %i.p, null                  ; 2 uses
  %or.cond15 = select i1 %or.cond13, i1 true, i1 %i.ar
  br i1 %or.cond15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not258 = icmp eq ptr %i.at, null
  br i1 %.not258, label %bb.cr, label %.thread

bb.k:                                             ; preds = %bb.i
  br i1 %i.aa, label %bb.l, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.j
  %i.au = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.at, %bb.j ]
  %i.av = load i16, ptr %i.au, align 2
  %.not259 = icmp eq i16 %i.av, -2
  br i1 %.not259, label %bb.t, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp eq i32 %i.ay, -2
  br i1 %i.az, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load i32, ptr %i.bb, align 4            ; 5 uses
  %.not260 = icmp eq i32 %i.bc, -2
  br i1 %.not260, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = icmp eq i32 %i.bc, %i.bf
  br i1 %i.bg, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load i16, ptr %i.bi, align 2            ; 2 uses
  %.not261 = icmp eq i16 %i.bj, -2
  br i1 %.not261, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul i32 %i.bc, %i.bk
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load i16, ptr %i.bn, align 2            ; 2 uses
  %.not262 = icmp eq i16 %i.bo, -2
  br i1 %.not262, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = zext i16 %i.bo to i32
  %i.bq = mul i32 %i.bc, %i.bp
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = icmp eq i16 %i.bt, -2
  br i1 %i.bu, label %.sink.split, label %bb.t

.sink.split:                                      ; preds = %bb.s, %bb.r, %bb.p
  %.sink = phi i32 [ %i.bl, %bb.p ], [ %i.bq, %bb.r ], [ %i.bc, %bb.s ]
  store i32 %.sink, ptr %i.ax, align 4
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.s, %bb.n, %bb.m, %bb.l, %.thread
  %i.bv = call ptr @list_create(ptr noundef nonnull @gres_job_list_delete) #26
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 23 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %i.bv, ptr %i.bx, align 8
  %i.by = call i32 @pthread_mutex_lock(ptr noundef nonnull @gres_context_lock) #26 ; 2 uses
  %.not263 = icmp eq i32 %i.by, 0
  br i1 %.not263, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = tail call ptr @__errno_location() #27
  store i32 %i.by, ptr %i.bz, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.gres_job_state_validate) #28
  unreachable

bb.v:                                             ; preds = %bb.t
  br i1 %i.an, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store ptr null, ptr %i.d, align 8
  %i.ca = load ptr, ptr %i.bw, align 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call fastcc ptr @_get_next_job_gres(ptr noundef nonnull %i.o, ptr noundef %i.b, ptr noundef %i.cb, ptr noundef %i.d, ptr noundef %i.a) ; 2 uses
  %.not264303 = icmp eq ptr %i.cc, null
  br i1 %.not264303, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.x
  %i.ce = phi i64 [ 0, %.lr.ph ], [ %i.cp, %bb.x ]
  %i.cf = phi ptr [ %i.cc, %.lr.ph ], [ %i.ct, %bb.x ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 18
  store i16 %i.cj, ptr %i.ck, align 2
  %i.cl = load ptr, ptr %i.cd, align 8
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  store i16 %i.cm, ptr %i.cn, align 8
  %i.co = and i64 %i.ce, 4294967295
  %i.cp = call i64 @llvm.umax.i64(i64 %i.ci, i64 %i.co) ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  store i32 %i.cq, ptr %2, align 8
  %i.cr = load ptr, ptr %i.bw, align 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call fastcc ptr @_get_next_job_gres(ptr noundef null, ptr noundef %i.b, ptr noundef %i.cs, ptr noundef %i.d, ptr noundef %i.a) ; 2 uses
  %.not264 = icmp eq ptr %i.ct, null
  br i1 %.not264, label %._crit_edge, label %bb.x, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.v
  br i1 %i.ao, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store ptr null, ptr %i.e, align 8
  %i.cu = load ptr, ptr %i.bw, align 8
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call fastcc ptr @_get_next_job_gres(ptr noundef nonnull %i.t, ptr noundef %i.b, ptr noundef %i.cv, ptr noundef %i.e, ptr noundef %i.a) ; 2 uses
  %.not265304 = icmp eq ptr %i.cw, null
  br i1 %.not265304, label %._crit_edge308, label %.lr.ph307

.lr.ph307:                                        ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph307, %bb.ac
  %i.cy = phi ptr [ %i.cw, %.lr.ph307 ], [ %i.do, %bb.ac ] ; 2 uses
  %.0207305 = phi i8 [ 0, %.lr.ph307 ], [ %.1, %bb.ac ]
  %i.cz = trunc nuw i8 %.0207305 to i1
  br i1 %i.cz, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call i32 @xstrcmp(ptr noundef %i.db, ptr noundef nonnull @.str.9) #26
  %.not293 = icmp eq i32 %i.dc, 0
  %spec.select = zext i1 %.not293 to i8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1 = phi i8 [ 1, %bb.aa ], [ %spec.select, %bb.ab ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %i.df = load i64, ptr %i.b, align 8             ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i64 %i.df, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 128 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8
  %. = call i64 @llvm.umax.i64(i64 %i.di, i64 %i.df)
  store i64 %., ptr %i.dh, align 8
  %i.dj = load ptr, ptr %i.cx, align 8
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  store i16 %i.dk, ptr %i.dl, align 8
  %i.dm = load ptr, ptr %i.bw, align 8
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call fastcc ptr @_get_next_job_gres(ptr noundef null, ptr noundef %i.b, ptr noundef %i.dn, ptr noundef %i.e, ptr noundef %i.a) ; 2 uses
  %.not265 = icmp eq ptr %i.do, null
  br i1 %.not265, label %._crit_edge308, label %bb.aa, !llvm.loop !111

._crit_edge308:                                   ; preds = %bb.ac, %bb.z
  %.0207.lcssa = phi i8 [ 0, %bb.z ], [ %.1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge308, %bb.y
  %.2 = phi i8 [ %.0207.lcssa, %._crit_edge308 ], [ 0, %bb.y ] ; 3 uses
  br i1 %i.ap, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store ptr null, ptr %i.f, align 8
  %i.dp = load ptr, ptr %i.bw, align 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call fastcc ptr @_get_next_job_gres(ptr noundef nonnull %i.v, ptr noundef %i.b, ptr noundef %i.dq, ptr noundef %i.f, ptr noundef %i.a) ; 2 uses
  %.not266309 = icmp eq ptr %i.dr, null
  br i1 %.not266309, label %._crit_edge313, label %.lr.ph312

.lr.ph312:                                        ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph312, %bb.aj
  %i.du = phi ptr [ %i.dr, %.lr.ph312 ], [ %i.ep, %bb.aj ] ; 2 uses
  %.3310 = phi i8 [ %.2, %.lr.ph312 ], [ %.4, %bb.aj ]
  %i.dv = trunc nuw i8 %.3310 to i1
  br i1 %i.dv, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call i32 @xstrcmp(ptr noundef %i.dx, ptr noundef nonnull @.str.9) #26
  %.not291 = icmp eq i32 %i.dy, 0
  %spec.select294 = zext i1 %.not291 to i8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.4 = phi i8 [ 1, %bb.af ], [ %spec.select294, %bb.ag ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8            ; 3 uses
  %i.eb = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store i64 %i.eb, ptr %i.ec, align 8
  %i.ed = load ptr, ptr %i.ds, align 8
  %i.ee = load i32, ptr %i.ed, align 4            ; 2 uses
  %.not292 = icmp eq i32 %i.ee, -2
  br i1 %.not292, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = zext i32 %i.ee to i64
  %i.eg = mul i64 %i.eb, %i.ef                    ; 2 uses
  store i64 %i.eg, ptr %i.b, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.eh = phi i64 [ %i.eg, %bb.ai ], [ %i.eb, %bb.ah ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 128 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8
  %.295 = call i64 @llvm.umax.i64(i64 %i.ej, i64 %i.eh)
  store i64 %.295, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %i.dt, align 8
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  store i16 %i.el, ptr %i.em, align 8
  %i.en = load ptr, ptr %i.bw, align 8
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call fastcc ptr @_get_next_job_gres(ptr noundef null, ptr noundef %i.b, ptr noundef %i.eo, ptr noundef %i.f, ptr noundef %i.a) ; 2 uses
  %.not266 = icmp eq ptr %i.ep, null
  br i1 %.not266, label %._crit_edge313, label %bb.af, !llvm.loop !112

._crit_edge313:                                   ; preds = %bb.aj, %bb.ae
  %.3.lcssa = phi i8 [ %.2, %bb.ae ], [ %.4, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge313, %bb.ad
  %.5 = phi i8 [ %.3.lcssa, %._crit_edge313 ], [ %.2, %bb.ad ] ; 3 uses
  br i1 %i.aq, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store ptr null, ptr %i.g, align 8
  %i.eq = load ptr, ptr %i.bw, align 8
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call fastcc ptr @_get_next_job_gres(ptr noundef nonnull %i.x, ptr noundef %i.b, ptr noundef %i.er, ptr noundef %i.g, ptr noundef %i.a) ; 2 uses
  %.not267315 = icmp eq ptr %i.es, null
  br i1 %.not267315, label %._crit_edge319, label %.lr.ph318

.lr.ph318:                                        ; preds = %bb.al
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph318, %bb.aw
  %i.ey = phi ptr [ %i.es, %.lr.ph318 ], [ %i.gj, %bb.aw ] ; 2 uses
  %.6316 = phi i8 [ %.5, %.lr.ph318 ], [ %.7, %bb.aw ]
  %i.ez = trunc nuw i8 %.6316 to i1
  br i1 %i.ez, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call i32 @xstrcmp(ptr noundef %i.fb, ptr noundef nonnull @.str.9) #26
  %.not285 = icmp eq i32 %i.fc, 0
  %spec.select296 = zext i1 %.not285 to i8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.7 = phi i8 [ 1, %bb.am ], [ %spec.select296, %bb.an ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8            ; 3 uses
  %i.ff = load i64, ptr %i.b, align 8             ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store i64 %i.ff, ptr %i.fg, align 8
  %i.fh = load ptr, ptr %i.et, align 8
  %i.fi = load i32, ptr %i.fh, align 4            ; 2 uses
  %.not286 = icmp eq i32 %i.fi, -2
  br i1 %.not286, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = load ptr, ptr %i.eu, align 8
  %i.fk = load i16, ptr %i.fj, align 2            ; 2 uses
  %.not287 = icmp eq i16 %i.fk, -2
  br i1 %.not287, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = zext i16 %i.fk to i32
  %i.fm = mul i32 %i.fi, %i.fl
  %i.fn = zext i32 %i.fm to i64
  br label %.sink.split378

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.fo = load ptr, ptr %i.ev, align 8
  %i.fp = load i32, ptr %i.fo, align 4            ; 2 uses
  %.not288 = icmp eq i32 %i.fp, -2
  br i1 %.not288, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = load ptr, ptr %i.ew, align 8
  %i.fr = load i16, ptr %i.fq, align 2            ; 2 uses
  %.not289 = icmp eq i16 %i.fr, -2
  br i1 %.not289, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = zext i16 %i.fr to i32                   ; 2 uses
  %i.ft = add i32 %i.fp, -1
  %i.fu = add i32 %i.ft, %i.fs
  %i.fv = udiv i32 %i.fu, %i.fs
  %i.fw = zext i32 %i.fv to i64
  br label %.sink.split378

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.fx = load ptr, ptr %i.eu, align 8
  %i.fy = load i16, ptr %i.fx, align 2            ; 2 uses
  %.not290 = icmp eq i16 %i.fy, -2
  br i1 %.not290, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fz = zext i16 %i.fy to i64
  br label %.sink.split378

.sink.split378:                                   ; preds = %bb.aq, %bb.av, %bb.at
  %.sink380 = phi i64 [ %i.fw, %bb.at ], [ %i.fz, %bb.av ], [ %i.fn, %bb.aq ]
  %i.ga = mul i64 %i.ff, %.sink380                ; 2 uses
  store i64 %i.ga, ptr %i.b, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split378, %bb.au
  %i.gb = phi i64 [ %i.ff, %bb.au ], [ %i.ga, %.sink.split378 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 128 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8
  %.297 = call i64 @llvm.umax.i64(i64 %i.gd, i64 %i.gb)
  store i64 %.297, ptr %i.gc, align 8
  %i.ge = load ptr, ptr %i.ex, align 8
  %i.gf = load i16, ptr %i.ge, align 2
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  store i16 %i.gf, ptr %i.gg, align 8
  %i.gh = load ptr, ptr %i.bw, align 8
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call fastcc ptr @_get_next_job_gres(ptr noundef null, ptr noundef %i.b, ptr noundef %i.gi, ptr noundef %i.g, ptr noundef %i.a) ; 2 uses
  %.not267 = icmp eq ptr %i.gj, null
  br i1 %.not267, label %._crit_edge319, label %bb.am, !llvm.loop !113

._crit_edge319:                                   ; preds = %bb.aw, %bb.al
  %.6.lcssa = phi i8 [ %.5, %bb.al ], [ %.7, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge319, %bb.ak
  %.8 = phi i8 [ %.6.lcssa, %._crit_edge319 ], [ %.5, %bb.ak ] ; 3 uses
  br i1 %i.aa, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store ptr null, ptr %i.h, align 8
  %i.gk = load ptr, ptr %i.bw, align 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call fastcc ptr @_get_next_job_gres(ptr noundef nonnull %i.z, ptr noundef %i.b, ptr noundef %i.gl, ptr noundef %i.h, ptr noundef %i.a) ; 2 uses
  %.not268321 = icmp eq ptr %i.gm, null
  br i1 %.not268321, label %._crit_edge325, label %.lr.ph324

.lr.ph324:                                        ; preds = %bb.ay
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph324, %bb.bd
  %i.gp = phi ptr [ %i.gm, %.lr.ph324 ], [ %i.hk, %bb.bd ] ; 2 uses
  %.9322 = phi i8 [ %.8, %.lr.ph324 ], [ %.10, %bb.bd ]
  %i.gq = trunc nuw i8 %.9322 to i1
  br i1 %i.gq, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = call i32 @xstrcmp(ptr noundef %i.gs, ptr noundef nonnull @.str.9) #26
  %.not283 = icmp eq i32 %i.gt, 0
  %spec.select298 = zext i1 %.not283 to i8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.10 = phi i8 [ 1, %bb.az ], [ %spec.select298, %bb.ba ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8            ; 3 uses
  %i.gw = load i64, ptr %i.b, align 8             ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  store i64 %i.gw, ptr %i.gx, align 8
  %i.gy = load ptr, ptr %i.gn, align 8
  %i.gz = load i32, ptr %i.gy, align 4            ; 2 uses
  %.not284 = icmp eq i32 %i.gz, -2
  br i1 %.not284, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ha = zext i32 %i.gz to i64
  %i.hb = mul i64 %i.gw, %i.ha                    ; 2 uses
  store i64 %i.hb, ptr %i.b, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hc = phi i64 [ %i.hb, %bb.bc ], [ %i.gw, %bb.bb ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 128 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8
  %.299 = call i64 @llvm.umax.i64(i64 %i.he, i64 %i.hc)
  store i64 %.299, ptr %i.hd, align 8
  %i.hf = load ptr, ptr %i.go, align 8
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  store i16 %i.hg, ptr %i.hh, align 8
  %i.hi = load ptr, ptr %i.bw, align 8
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = call fastcc ptr @_get_next_job_gres(ptr noundef null, ptr noundef %i.b, ptr noundef %i.hj, ptr noundef %i.h, ptr noundef %i.a) ; 2 uses
  %.not268 = icmp eq ptr %i.hk, null
  br i1 %.not268, label %._crit_edge325, label %bb.az, !llvm.loop !114

._crit_edge325:                                   ; preds = %bb.bd, %bb.ay
  %.9.lcssa = phi i8 [ %.8, %bb.ay ], [ %.10, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge325, %bb.ax
  %.11 = phi i8 [ %.9.lcssa, %._crit_edge325 ], [ %.8, %bb.ax ] ; 6 uses
  br i1 %i.ar, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store ptr null, ptr %i.i, align 8
  %i.hl = load ptr, ptr %i.bw, align 8
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call fastcc ptr @_get_next_job_gres(ptr noundef nonnull %i.p, ptr noundef %i.b, ptr noundef %i.hm, ptr noundef %i.i, ptr noundef %i.a) ; 2 uses
  %.not269327 = icmp eq ptr %i.hn, null
  br i1 %.not269327, label %._crit_edge330, label %.lr.ph329

.lr.ph329:                                        ; preds = %bb.bf
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph329, %bb.bg
  %i.hp = phi ptr [ %i.hn, %.lr.ph329 ], [ %i.hz, %bb.bg ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %i.hs = load i64, ptr %i.b, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  store i64 %i.hs, ptr %i.ht, align 8
  %i.hu = load ptr, ptr %i.ho, align 8
  %i.hv = load i16, ptr %i.hu, align 2
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 64
  store i16 %i.hv, ptr %i.hw, align 8
  %i.hx = load ptr, ptr %i.bw, align 8
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = call fastcc ptr @_get_next_job_gres(ptr noundef null, ptr noundef %i.b, ptr noundef %i.hy, ptr noundef %i.i, ptr noundef %i.a) ; 2 uses
  %.not269 = icmp eq ptr %i.hz, null
  br i1 %.not269, label %._crit_edge330, label %bb.bg, !llvm.loop !115

._crit_edge330:                                   ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge330, %bb.be
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  %.not270 = icmp eq ptr %i.ib, null
  br i1 %.not270, label %bb.bu, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ic = load i16, ptr %i.ib, align 2
  switch i16 %i.ic, label %bb.bj [
    i16 0, label %bb.bu
    i16 -2, label %bb.bu
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.id = trunc nuw i8 %.11 to i1
  br i1 %i.id, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.ie = load ptr, ptr %i.bw, align 8
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call i32 @list_count(ptr noundef %i.if) #26
  %.not272 = icmp eq i32 %i.ig, 0
  br i1 %.not272, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ih = load ptr, ptr %i.bw, align 8
  %i.ii = load ptr, ptr %i.ih, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %1, align 8
  store i64 -2, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.io = icmp eq ptr %i.ii, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.im, i8 0, i64 3, i1 false)
  br i1 %i.io, label %_get_job_gres_list_cnt.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ip = call i32 @list_count(ptr noundef nonnull %i.ii) #26
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %_get_job_gres_list_cnt.exit.thread, label %_get_job_gres_list_cnt.exit

_get_job_gres_list_cnt.exit.thread:               ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.bo

_get_job_gres_list_cnt.exit:                      ; preds = %bb.bm
  store i32 7696487, ptr %i.in, align 4
  %i.ir = call i32 @list_for_each(ptr noundef nonnull %i.ii, ptr noundef nonnull @_foreach_gres_list_cnt, ptr noundef nonnull %1) #26 ; 0 uses
  %i.is = load i64, ptr %i.ij, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %.not276 = icmp eq i64 %i.is, -2
  br i1 %.not276, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_get_job_gres_list_cnt.exit
  %i.it = load ptr, ptr %i.ia, align 8
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = zext i16 %i.iu to i64
  %i.iw = mul i64 %i.is, %i.iv
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.iz = load ptr, ptr %i.iy, align 8
  store i32 %i.ix, ptr %i.iz, align 4
  br label %bb.bu

bb.bo:                                            ; preds = %_get_job_gres_list_cnt.exit.thread, %_get_job_gres_list_cnt.exit
  %i.ja = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.gres_job_state_validate) #26 ; 0 uses
  store i32 2072, ptr %i.a, align 4
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bk, %bb.bj
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = load i32, ptr %i.jc, align 4            ; 2 uses
  switch i32 %i.jd, label %bb.bq [
    i32 0, label %bb.bt
    i32 -2, label %bb.bt
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.je = load ptr, ptr %i.ia, align 8
  %i.jf = load i16, ptr %i.je, align 2
  %i.jg = zext i16 %i.jf to i32
  %i.jh = udiv i32 %i.jd, %i.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store ptr null, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store ptr null, ptr %i.k, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.53, i32 noundef %i.jh) #26
  %i.ji = load ptr, ptr %i.k, align 8
  %i.jj = load ptr, ptr %i.bw, align 8
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = call fastcc ptr @_get_next_job_gres(ptr noundef %i.ji, ptr noundef %i.b, ptr noundef %i.jk, ptr noundef %i.j, ptr noundef %i.a) ; 2 uses
  %.not275331 = icmp eq ptr %i.jl, null
  br i1 %.not275331, label %._crit_edge334, label %.lr.ph333

.lr.ph333:                                        ; preds = %bb.bq, %.lr.ph333
  %i.jm = phi ptr [ %i.jy, %.lr.ph333 ], [ %i.jl, %bb.bq ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8            ; 3 uses
  %i.jp = load ptr, ptr %i.ia, align 8
  %i.jq = load i16, ptr %i.jp, align 2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 64
  store i16 %i.jq, ptr %i.jr, align 8
  %i.js = load i64, ptr %i.b, align 8             ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  store i64 %i.js, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 128 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8
  %.300 = call i64 @llvm.umax.i64(i64 %i.jv, i64 %i.js)
  store i64 %.300, ptr %i.ju, align 8
  %i.jw = load ptr, ptr %i.bw, align 8
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = call fastcc ptr @_get_next_job_gres(ptr noundef null, ptr noundef %i.b, ptr noundef %i.jx, ptr noundef %i.j, ptr noundef %i.a) ; 2 uses
  %.not275 = icmp eq ptr %i.jy, null
  br i1 %.not275, label %._crit_edge334, label %.lr.ph333, !llvm.loop !116

._crit_edge334:                                   ; preds = %.lr.ph333, %bb.bq
  %i.jz = load ptr, ptr %i.bw, align 8
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = call i32 @list_count(ptr noundef %i.ka) #26
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge334
  %i.kd = load ptr, ptr %i.k, align 8
  %i.ke = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.gres_job_state_validate, ptr noundef %i.kd) #26 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge334, %bb.br
  %.12 = phi i8 [ %.11, %bb.br ], [ 1, %._crit_edge334 ]
  call void @slurm_xfree(ptr noundef nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bp, %bb.bp
  %i.kf = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.gres_job_state_validate) #26 ; 0 uses
  store i32 2072, ptr %i.a, align 4
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bn, %bb.bo, %bb.bi, %bb.bi, %bb.bh, %bb.bs, %bb.bt
  %.13 = phi i8 [ %.11, %bb.bi ], [ %.11, %bb.bh ], [ %.12, %bb.bs ], [ %.11, %bb.bt ], [ %.11, %bb.bi ], [ 1, %bb.bo ], [ 1, %bb.bn ]
  %i.kg = call i32 @pthread_mutex_unlock(ptr noundef nonnull @gres_context_lock) #26 ; 2 uses
  %.not277 = icmp eq i32 %i.kg, 0
  br i1 %.not277, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kh = tail call ptr @__errno_location() #27
  store i32 %i.kg, ptr %i.kh, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.gres_job_state_validate) #28
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.ki = load i32, ptr %i.a, align 4             ; 2 uses
  %.not278 = icmp eq i32 %i.ki, 0
  br i1 %.not278, label %bb.bx, label %bb.cr

bb.bx:                                            ; preds = %bb.bw
  %i.kj = load ptr, ptr %i.bw, align 8
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = call i32 @list_count(ptr noundef %i.kk) #26 ; 2 uses
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.kn = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8            ; 2 uses
  %.not282 = icmp eq ptr %i.ko, null
  br i1 %.not282, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @list_destroy(ptr noundef nonnull %i.ko) #26
  %.pre335 = load ptr, ptr %i.bw, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.kp = phi ptr [ %.pre335, %bb.bz ], [ %i.kn, %bb.by ]
  store ptr null, ptr %i.kp, align 8
  br label %bb.cr

bb.cb:                                            ; preds = %bb.bx
  %i.kq = icmp eq ptr %i.p, null
  %i.kr = trunc nuw i8 %.13 to i1                 ; 2 uses
  %or.cond17 = select i1 %i.kq, i1 true, i1 %i.kr
  br i1 %or.cond17, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ks = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.56, ptr noundef nonnull %i.p) #26 ; 0 uses
  br label %bb.cr

bb.cd:                                            ; preds = %bb.cb
  %i.kt = icmp eq ptr %i.o, null
  %or.cond19 = select i1 %i.kt, i1 true, i1 %i.kr
  br i1 %or.cond19, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ku = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.57, ptr noundef nonnull %i.o) #26 ; 0 uses
  br label %bb.cr

bb.cf:                                            ; preds = %bb.cd
  %i.kv = sext i32 %i.kl to i64
  %i.kw = call ptr @slurm_xcalloc(i64 noundef %i.kv, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 7221, ptr noundef nonnull @__func__.gres_job_state_validate) #26
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.kw, ptr %i.kx, align 8
  %i.ky = load ptr, ptr %i.bw, align 8
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = call i32 @list_for_each(ptr noundef %i.kz, ptr noundef nonnull @_foreach_job_state_validate, ptr noundef nonnull %2) #26 ; 0 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.lc = load i32, ptr %i.lb, align 4            ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8            ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4
  %i.lg = icmp ugt i32 %i.lc, %i.lf
  br i1 %i.lg, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 %i.lc, ptr %i.le, align 4
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = load i16, ptr %i.li, align 2            ; 2 uses
  %i.lk = zext i16 %i.lj to i32
  %.not279 = icmp eq i16 %i.lj, -2
  br i1 %.not279, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = load i32, ptr %i.lm, align 4            ; 2 uses
  %.not280 = icmp eq i32 %i.ln, -2
  br i1 %.not280, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lo = mul i32 %i.ln, %i.lk                    ; 2 uses
  %i.lp = load ptr, ptr %i.ld, align 8            ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = icmp ult i32 %i.lq, %i.lo
  br i1 %i.lr, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 %i.lo, ptr %i.lp, align 4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck, %bb.ci, %bb.ch
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lt = load i8, ptr %i.ls, align 8, !range !17, !noundef !18
  %i.lu = trunc nuw i8 %i.lt to i1
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.lw = load i32, ptr %i.lv, align 8
  %i.lx = icmp eq i32 %i.lw, 0
  %or.cond22 = select i1 %i.lu, i1 %i.lx, i1 false
  %i.ly = icmp ne ptr %i.r, null
  %or.cond24 = select i1 %or.cond22, i1 %i.ly, i1 false
  br i1 %or.cond24, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.lz = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) @.str.9) #29
  %.not281 = icmp eq ptr %i.lz, null
  br i1 %.not281, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i32 2072, ptr %i.lv, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.mb = load i8, ptr %i.ma, align 1, !range !17, !noundef !18
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.md = load ptr, ptr %i.bw, align 8
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = call fastcc i32 @_merge_generic_data(ptr noundef %i.me, ptr noundef %2)
  store i32 %i.mf, ptr %i.lv, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  call void @slurm_xfree(ptr noundef nonnull %i.kx) #26
  %i.mg = load i32, ptr %i.lv, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.e, %bb.bw, %bb.j, %bb.h, %bb.cq, %bb.ce, %bb.cc, %bb.ca
  %.1209 = phi i32 [ 0, %bb.j ], [ 0, %bb.ca ], [ %i.mg, %bb.cq ], [ 2072, %bb.ce ], [ 2072, %bb.cc ], [ 2122, %bb.h ], [ 2122, %bb.e ], [ %i.ki, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.1209
}

declare void @slurm_option_update_tres_per_task(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_get_next_job_gres(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.gres_search_key, align 4    ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 -2, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %0, null
  %i.d = load ptr, ptr %3, align 8                ; 2 uses
  %i.e = icmp eq ptr %i.d, null                   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.r, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr @_get_next_job_gres.prev_save_ptr, align 8
  br label %bb.f

.thread:                                          ; preds = %bb.b, %bb.c
  %i.f = load ptr, ptr @_get_next_job_gres.prev_save_ptr, align 8 ; 2 uses
  %.not30 = icmp eq ptr %i.d, %i.f
  br i1 %.not30, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.g = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.276, ptr noundef nonnull @__func__._get_next_job_gres) #26 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %.thread, %bb.d
  %i.h = phi ptr [ %i.f, %.thread ], [ %0, %bb.d ]
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = call fastcc i32 @_get_next_gres(ptr noundef %0, ptr noundef %i.b, ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull @_get_next_job_gres.prev_save_ptr) ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  %i.m = load i32, ptr %i.a, align 4              ; 2 uses
  %i.n = icmp eq i32 %i.m, -2
  %or.cond = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr @_get_next_job_gres.prev_save_ptr, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.o = load ptr, ptr @gres_context, align 8
  %i.p = sext i32 %i.m to i64                     ; 2 uses
  %i.q = getelementptr inbounds [168 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  store i32 %i.s, ptr %5, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.u, ptr %i.v, align 4
  %i.w = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %gres_build_id.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %.not1617.i = icmp eq i8 %i.x, 0
  br i1 %.not1617.i, label %gres_build_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.y = phi i8 [ %i.af, %.lr.ph.i ], [ %i.x, %.preheader.i ]
  %.020.i = phi i32 [ %i.ab, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.01119.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.z = sext i8 %i.y to i32
  %i.aa = shl i32 %i.z, %.01119.i
  %i.ab = add i32 %i.aa, %.020.i                  ; 2 uses
  %i.ac = add nsw i32 %.01119.i, 8
  %i.ad = srem i32 %i.ac, 32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %.not16.i = icmp eq i8 %i.af, 0
  br i1 %.not16.i, label %gres_build_id.exit, label %.lr.ph.i, !llvm.loop !0

gres_build_id.exit:                               ; preds = %.lr.ph.i, %bb.i, %.preheader.i
  %.013.i = phi i32 [ 0, %bb.i ], [ 0, %.preheader.i ], [ %i.ab, %.lr.ph.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %.013.i, ptr %i.ag, align 4
  %i.ah = call ptr @list_find_first(ptr noundef %2, ptr noundef nonnull @gres_find_job_by_key, ptr noundef nonnull %5) #26 ; 2 uses
  %.not31 = icmp eq ptr %i.ah, null
  br i1 %.not31, label %bb.j, label %bb.k

bb.j:                                             ; preds = %gres_build_id.exit
  %i.ai = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 192, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 6721, ptr noundef nonnull @__func__._get_next_job_gres) #26 ; 3 uses
  %i.aj = load i32, ptr %i.ag, align 4
end_hunk_0
