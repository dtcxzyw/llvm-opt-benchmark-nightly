Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/priority_multifactor?download=true
inline.NumInlined: 21
inline.NumDeleted: 13
begin_hunk_0_@set_priority_factors:bb.a

.thread.i:                                        ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bc
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %_get_tres_factors.exit, label %.lr.ph.split.us.split.i, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %bb.bl, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %bb.bl ] ; 4 uses
  %i.ic = load ptr, ptr %i.hk, align 8            ; 2 uses
  %.not.i150 = icmp eq ptr %i.ic, null
  br i1 %.not.i150, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.split.i
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i
  %i.ie = load i64, ptr %i.id, align 8            ; 2 uses
  %.not30.i = icmp eq i64 %i.ie, -3
  br i1 %.not30.i, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.split.i
  %i.if = load ptr, ptr %i.hl, align 8            ; 2 uses
  %.not31.i = icmp eq ptr %i.if, null
  br i1 %.not31.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i
  %i.ih = load i64, ptr %i.ig, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0.i151 = phi i64 [ 0, %bb.bj ], [ %i.ih, %bb.bk ], [ %i.ie, %bb.bi ]
  %i.ii = uitofp i64 %.0.i151 to double
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i
  store double %i.ii, ptr %i.ij, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_get_tres_factors.exit, label %.lr.ph.split.i, !llvm.loop !1

_get_tres_factors.exit:                           ; preds = %bb.bl, %.thread.i, %.lr.ph.split.us.i, %thread-pre-split, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_get_tres_weight_array(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @state_save_open(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @unpack_time(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @free_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @_reset_usage() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.assoc_mgr_lock_t, align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) @__const._apply_decay.locks, i64 28, i1 false)
  %.b = load i1, ptr @calc_fairshare, align 1
  br i1 %.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @assoc_mgr_lock(ptr noundef nonnull %0) #12
  %i.a = load ptr, ptr @assoc_mgr_assoc_list, align 8
  %i.b = call ptr @list_iterator_create(ptr noundef %i.a) #12 ; 3 uses
  %i.c = call ptr @list_next(ptr noundef %i.b) #12 ; 2 uses
  %.not29 = icmp eq ptr %i.c, null
  br i1 %.not29, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.b, %bb.e
  %i.d = phi ptr [ %i.s, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 296 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store x86_fp80 0.000000e+00, ptr %i.g, align 16
  %i.h = load i32, ptr @slurmctld_tres_cnt, align 4 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph31
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.l = load ptr, ptr %i.k, align 16
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv
  store x86_fp80 0.000000e+00, ptr %i.m, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph31
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store double 0.000000e+00, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not26 = icmp eq ptr %i.q, null
  br i1 %.not26, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr %i.e, align 8
  %.not27 = icmp eq ptr %i.q, %i.r
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @slurmdb_destroy_assoc_usage(ptr noundef nonnull %i.q) #12
  store ptr null, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %i.s = call ptr @list_next(ptr noundef %i.b) #12 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge32, label %.lr.ph31, !llvm.loop !31

._crit_edge32:                                    ; preds = %bb.e, %bb.b
  call void @list_iterator_destroy(ptr noundef %i.b) #12
  %i.t = load ptr, ptr @assoc_mgr_qos_list, align 8
  %i.u = call ptr @list_iterator_create(ptr noundef %i.t) #12 ; 3 uses
  %i.v = call ptr @list_next(ptr noundef %i.u) #12 ; 2 uses
  %.not2537 = icmp eq ptr %i.v, null
  br i1 %.not2537, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %._crit_edge32, %._crit_edge36
  %i.w = phi ptr [ %i.ai, %._crit_edge36 ], [ %i.v, %._crit_edge32 ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 312 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  store x86_fp80 0.000000e+00, ptr %i.z, align 16
  %i.aa = load i32, ptr @slurmctld_tres_cnt, align 4 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph35.preheader, label %._crit_edge36

.lr.ph35.preheader:                               ; preds = %.lr.ph39
  %wide.trip.count45 = zext nneg i32 %i.aa to i64
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %.lr.ph35
  %indvars.iv42 = phi i64 [ 0, %.lr.ph35.preheader ], [ %indvars.iv.next43, %.lr.ph35 ] ; 2 uses
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = load ptr, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv42
  store x86_fp80 0.000000e+00, ptr %i.af, align 16
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %._crit_edge36, label %.lr.ph35, !llvm.loop !32

._crit_edge36:                                    ; preds = %.lr.ph35, %.lr.ph39
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store double 0.000000e+00, ptr %i.ah, align 16
  %i.ai = call ptr @list_next(ptr noundef %i.u) #12 ; 2 uses
  %.not25 = icmp eq ptr %i.ai, null
  br i1 %.not25, label %._crit_edge40, label %.lr.ph39, !llvm.loop !33

._crit_edge40:                                    ; preds = %._crit_edge36, %._crit_edge32
  call void @list_iterator_destroy(ptr noundef %i.u) #12
  call void @assoc_mgr_unlock(ptr noundef nonnull %0) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @_next_reset(i16 noundef zeroext %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %struct.tm, align 8                 ; 19 uses
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.b = tail call i64 @time(ptr noundef null) #12 ; 2 uses
  %i.c = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #12
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.f, align 8
  switch i16 %0, label %.loopexit [
    i16 2, label %.loopexit.loopexit
    i16 3, label %.loopexit.loopexit18
    i16 4, label %bb.c
    i16 5, label %bb.f
    i16 6, label %bb.m
  ]

.loopexit.loopexit:                               ; preds = %bb.b
  %i.g = call i64 @slurm_mktime(ptr noundef nonnull %2) #12 ; 4 uses
  %3 = add i64 %i.g, 86400
  %i.h = add i64 %i.g, 172800
  %smax19 = call i64 @llvm.smax.i64(i64 %i.b, i64 %i.h)
  %i.i = add i64 %smax19, -172800                 ; 2 uses
  %i.j = icmp ne i64 %i.i, %i.g
  %umin20 = zext i1 %i.j to i64                   ; 2 uses
  %i.k = add i64 %i.g, %umin20
  %i.l = sub i64 %i.i, %i.k
  %i.m = udiv i64 %i.l, 86400
  %i.n = add nuw nsw i64 %i.m, %umin20
  %i.o = mul i64 %i.n, 86400
  %i.p = add i64 %3, %i.o
  br label %.loopexit

.loopexit.loopexit18:                             ; preds = %bb.b
  %i.q = call i64 @slurm_mktime(ptr noundef nonnull %2) #12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = sub i32 7, %i.s
  %i.u = mul i32 %i.t, 86400
  %i.v = sext i32 %i.u to i64                     ; 3 uses
  %i.w = add i64 %i.q, %i.v                       ; 2 uses
  %i.x = add i64 %i.w, 604800
  %smax = call i64 @llvm.smax.i64(i64 %i.b, i64 %i.x)
  %i.y = add i64 %smax, -604800
  %i.z = sub i64 %i.y, %i.q                       ; 2 uses
  %i.aa = icmp ne i64 %i.z, %i.v
  %umin = zext i1 %i.aa to i64                    ; 2 uses
  %i.ab = or disjoint i64 %umin, %i.v
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = udiv i64 %i.ac, 604800
  %i.ae = add nuw nsw i64 %i.ad, %umin
  %i.af = mul i64 %i.ae, 604800
  %i.ag = add i64 %i.w, %i.af
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 11
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = add nsw i32 %i.aj, 1
  store i32 %i.al, ptr %i.ai, align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  store i32 0, ptr %i.ai, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ar = load i32, ptr %i.aq, align 8            ; 3 uses
  %i.as = icmp slt i32 %i.ar, 3
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %i.aq, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.at = icmp samesign ult i32 %i.ar, 6
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 6, ptr %i.aq, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.au = icmp samesign ult i32 %i.ar, 9
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 9, ptr %i.aq, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.aq, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.k, %bb.l, %bb.i, %bb.d, %bb.e, %bb.m
  %i.bd = call i64 @slurm_mktime(ptr noundef nonnull %2) #12
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit18, %.loopexit.loopexit, %bb.b, %bb.a, %bb.n
  %.012 = phi i64 [ %i.bd, %bb.n ], [ %i.p, %.loopexit.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ag, %.loopexit.loopexit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i64 %.012
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_children_usage_efctv(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @list_count(ptr noundef nonnull %0) #12
  %.not10 = icmp eq i32 %i.a, 0
  br i1 %.not10, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @list_iterator_create(ptr noundef nonnull %0) #12 ; 3 uses
  %i.c = tail call ptr @list_next(ptr noundef %i.b) #12 ; 2 uses
  %.not1113 = icmp eq ptr %i.c, null
  br i1 %.not1113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.backedge
  %i.d = phi ptr [ %i.j, %.backedge ], [ %i.c, %bb.c ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.f = load ptr, ptr %i.e, align 8
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store x86_fp80 f0x401EFFFFFFFE00000000, ptr %i.i, align 16
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.e
  %i.j = tail call ptr @list_next(ptr noundef %i.b) #12 ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !34

bb.e:                                             ; preds = %.lr.ph
  tail call void @priority_p_set_assoc_usage(ptr noundef nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call fastcc void @_set_children_usage_efctv(ptr noundef %i.n)
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.c
  tail call void @list_iterator_destroy(ptr noundef %i.b) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

declare void @site_factor_g_update() local_unnamed_addr #1

declare void @fair_tree_decay(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @_set_non_fair_tree_fs_factor(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.35, ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 2147483647
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.d ], [ %i.b, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 296
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load x86_fp80, ptr %i.m, align 16        ; 2 uses
  %i.o = fadd x86_fp80 %i.n, f0xC01EFFFFFFFE00000000
  %i.p = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.o)
  %or.cond.i = fcmp olt x86_fp80 %i.p, f0x3FEEA7C5AC471B478800
  br i1 %or.cond.i, label %_set_assoc_fs_factor.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.r = load double, ptr %i.q, align 16          ; 2 uses
  %i.s = fcmp ugt double %i.r, 0.000000e+00
  br i1 %i.s, label %bb.g, label %_set_assoc_fs_factor.exit

bb.g:                                             ; preds = %bb.f
  %i.t = fpext double %i.r to x86_fp80
  %i.u = load i16, ptr @damp_factor, align 2
  %i.v = uitofp i16 %i.u to x86_fp80
  %i.w = fneg x86_fp80 %i.n
  %i.x = fdiv x86_fp80 %i.w, %i.t
  %i.y = fdiv x86_fp80 %i.x, %i.v
  %i.z = fptrunc x86_fp80 %i.y to double
  %exp2.i = tail call double @exp2(double %i.z) #12
  br label %_set_assoc_fs_factor.exit

_set_assoc_fs_factor.exit:                        ; preds = %bb.e, %bb.f, %bb.g
  %exp2.sink.i = phi double [ %exp2.i, %bb.g ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.ab = load ptr, ptr %i.aa, align 8
end_hunk_0
