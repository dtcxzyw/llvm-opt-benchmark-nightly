Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres?download=true
inline.NumInlined: 191
inline.NumDeleted: 74
begin_hunk_0_@_foreach_prep_build_env:bb.a
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr %i.m(ptr noundef %i.o) #26 ; 4 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not19 = icmp eq ptr %i.r, null
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @list_create(ptr noundef nonnull @_prep_list_del) #26
  store ptr %i.s, ptr %i.q, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = load i32, ptr %i.k, align 8
  store i32 %i.t, ptr %i.p, align 8
  %i.u = load ptr, ptr %1, align 8
  %i.v = tail call ptr @xstrdup(ptr noundef %i.u) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.q, align 8
  tail call void @list_append(ptr noundef %i.x, ptr noundef nonnull %i.p) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_find_context_by_id.exit, %bb.g, %.loopexit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @gres_g_prep_set_env(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.foreach_prep_set_env_t, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %2, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.b, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @gres_context_lock) #26 ; 2 uses
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__errno_location() #27
  store i32 %i.c, ptr %i.d, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.gres_g_prep_set_env) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = call i32 @list_for_each(ptr noundef nonnull %1, ptr noundef nonnull @_foreach_prep_set_env, ptr noundef nonnull %3) #26 ; 0 uses
  %i.f = call i32 @pthread_mutex_unlock(ptr noundef nonnull @gres_context_lock) #26 ; 2 uses
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @__errno_location() #27
  store i32 %i.f, ptr %i.g, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.gres_g_prep_set_env) #28
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_prep_set_env(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = load i32, ptr @gres_context_cnt, align 4 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr @gres_context, align 8
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c, !llvm.loop !44

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [168 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %i.a
  br i1 %i.h, label %_find_context_by_id.exit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.i = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.302, ptr noundef nonnull @__func__._foreach_prep_set_env, i32 noundef %i.a) #26 ; 0 uses
  br label %bb.e

_find_context_by_id.exit:                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_find_context_by_id.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i32, ptr %1, align 8
  tail call void %i.k(ptr noundef %i.m, ptr noundef nonnull %0, i32 noundef %i.n) #26
  br label %bb.e

bb.e:                                             ; preds = %_find_context_by_id.exit, %bb.d, %.loopexit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @gres_validate_node_cores(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = sext i32 %1 to i64
  %i.h = icmp sgt i32 %1, 0
  %wide.trip.count76.i = zext nneg i32 %1 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.61, ptr noundef %2) #26 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 6 uses
  %.036 = phi i32 [ 1, %.lr.ph ], [ %.2, %bb.r ]  ; 3 uses
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i64 @bit_size(ptr noundef nonnull %i.l) #26
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = icmp eq i32 %1, %i.n
  br i1 %i.o, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not31 = icmp eq i32 %.036, 0
  br i1 %.not31, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @get_log_level() #26
  %i.q = icmp sgt i32 %i.p, 4
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.62, ptr noundef %2, i32 noundef %i.n, i32 noundef %1) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = tail call ptr @bit_alloc(i64 noundef %i.g) #26 ; 3 uses
  %i.v = tail call i64 @bit_size(ptr noundef %i.t) #26
  %.fr53.i = freeze i64 %i.v                      ; 3 uses
  %i.w = trunc i64 %.fr53.i to i32                ; 4 uses
  %i.x = icmp slt i32 %1, %i.w
  br i1 %i.x, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.y = sdiv i32 %i.w, %1                        ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %or.cond.i = and i1 %i.h, %i.z
  br i1 %or.cond.i, label %.preheader.us.preheader.i, label %_core_bitmap_rebuild.exit

.preheader.us.preheader.i:                        ; preds = %bb.j
  %i.aa = zext nneg i32 %i.y to i64               ; 2 uses
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %..loopexit_crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next74.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %i.ab = mul nuw nsw i64 %indvars.iv73.i, %i.aa
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %i.aa
  br i1 %exitcond72.not.i, label %..loopexit_crit_edge.us.i, label %bb.l, !llvm.loop !141

bb.l:                                             ; preds = %bb.k, %.preheader.us.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next69.i, %bb.k ] ; 2 uses
  %i.ac = add nuw nsw i64 %indvars.iv68.i, %i.ab
  %i.ad = tail call i32 @slurm_bit_test(ptr noundef %i.t, i64 noundef %i.ac) #26
  %.not40.us.i = icmp eq i32 %i.ad, 0
  br i1 %.not40.us.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @bit_set(ptr noundef %i.u, i64 noundef %indvars.iv73.i) #26
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %bb.k, %bb.m
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count76.i
  br i1 %exitcond77.not.i, label %_core_bitmap_rebuild.exit, label %.preheader.us.i, !llvm.loop !142

bb.n:                                             ; preds = %bb.i
  %i.ae = sdiv i32 %1, %i.w                       ; 2 uses
  %i.af = icmp sgt i32 %i.w, 0
  br i1 %i.af, label %.lr.ph48.i, label %_core_bitmap_rebuild.exit

.lr.ph48.i:                                       ; preds = %bb.n
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph48.split.us.preheader.i, label %.lr.ph48.split.preheader.i

.lr.ph48.split.preheader.i:                       ; preds = %.lr.ph48.i
  %wide.trip.count.i = and i64 %.fr53.i, 2147483647
  br label %.lr.ph48.split.i

.lr.ph48.split.us.preheader.i:                    ; preds = %.lr.ph48.i
  %i.ah = zext nneg i32 %i.ae to i64              ; 2 uses
  %wide.trip.count66.i = and i64 %.fr53.i, 2147483647
  br label %.lr.ph48.split.us.i

.lr.ph48.split.us.i:                              ; preds = %..loopexit43_crit_edge.us.i, %.lr.ph48.split.us.preheader.i
  %indvars.iv63.i = phi i64 [ 0, %.lr.ph48.split.us.preheader.i ], [ %indvars.iv.next64.i, %..loopexit43_crit_edge.us.i ] ; 3 uses
  %i.ai = tail call i32 @slurm_bit_test(ptr noundef %i.t, i64 noundef %indvars.iv63.i) #26
  %.not.us.i = icmp eq i32 %i.ai, 0
  br i1 %.not.us.i, label %..loopexit43_crit_edge.us.i, label %.preheader42.us.i

bb.o:                                             ; preds = %.preheader42.us.i, %bb.o
  %indvars.iv58.i = phi i64 [ 0, %.preheader42.us.i ], [ %indvars.iv.next59.i, %bb.o ] ; 2 uses
  %i.aj = add nuw nsw i64 %indvars.iv58.i, %i.ak
  tail call void @bit_set(ptr noundef %i.u, i64 noundef %i.aj) #26
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %i.ah
  br i1 %exitcond62.not.i, label %..loopexit43_crit_edge.us.i, label %bb.o, !llvm.loop !143

..loopexit43_crit_edge.us.i:                      ; preds = %bb.o, %.lr.ph48.split.us.i
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %wide.trip.count66.i
  br i1 %exitcond67.not.i, label %_core_bitmap_rebuild.exit, label %.lr.ph48.split.us.i, !llvm.loop !144

.preheader42.us.i:                                ; preds = %.lr.ph48.split.us.i
  %i.ak = mul nuw nsw i64 %indvars.iv63.i, %i.ah
  br label %bb.o

.lr.ph48.split.i:                                 ; preds = %.lr.ph48.split.i, %.lr.ph48.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph48.split.preheader.i ], [ %indvars.iv.next.i, %.lr.ph48.split.i ] ; 2 uses
  %i.al = tail call i32 @slurm_bit_test(ptr noundef %i.t, i64 noundef %indvars.iv.i) #26 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_core_bitmap_rebuild.exit, label %.lr.ph48.split.i, !llvm.loop !144

_core_bitmap_rebuild.exit:                        ; preds = %.lr.ph48.split.i, %..loopexit43_crit_edge.us.i, %..loopexit_crit_edge.us.i, %bb.j, %bb.n
  %i.am = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %.not32 = icmp eq ptr %i.ao, null
  br i1 %.not32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_core_bitmap_rebuild.exit
  tail call void @slurm_bit_free(ptr noundef nonnull %i.an) #26
  %.pre = load ptr, ptr %i.d, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_core_bitmap_rebuild.exit
  %i.ap = phi ptr [ %.pre, %bb.p ], [ %i.am, %_core_bitmap_rebuild.exit ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  store ptr null, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.d, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  store ptr %i.u, ptr %i.as, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.d, %bb.q
  %.2 = phi i32 [ %.036, %bb.e ], [ 0, %bb.q ], [ %.036, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load i16, ptr %i.a, align 8
  %i.au = zext i16 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.d, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %bb.r, %bb.a, %bb.c
  ret void
}

declare i32 @get_log_level() local_unnamed_addr #5

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gres_job_test(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.foreach_job_test_t, align 8 ; 12 uses
  %i.a = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 -2, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %4, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %5, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %6, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.h, i8 0, i64 7, i1 false)
  %i.i = icmp eq ptr %0, null
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @list_for_each(ptr noundef nonnull %0, ptr noundef nonnull @_foreach_job_test, ptr noundef nonnull %7) #26 ; 0 uses
  %i.l = load i32, ptr %7, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ -2, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_foreach_job_test(ptr noundef %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = tail call ptr @list_find_first(ptr noundef %i.f, ptr noundef nonnull @gres_find_id, ptr noundef nonnull %i.g) #26 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 8
  br label %bb.bu

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i8, ptr %i.i, align 8, !range !13, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 22 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.w = load i32, ptr %0, align 8
  %i.x = and i32 %i.w, 512
  %.not.i.i = icmp eq i32 %i.x, 0
  %i.y = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1200), align 8
  %.not.i = icmp slt i16 %i.y, 0
  %.not249.i = select i1 %.not.i.i, i1 true, i1 %.not.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !range !13, !noundef !14
  %i.ab = or i8 %i.aa, %i.j
  %.0198.i.not = icmp eq i8 %i.ab, 0              ; 6 uses
  br i1 %.0198.i.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.h, align 8
  %i.ad = and i32 %i.ac, 1536
  %or.cond.not.i.i = icmp eq i32 %i.ad, 1536
  br i1 %or.cond.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.af = load i64, ptr %i.ae, align 8
  %.not5.i.i = icmp eq i64 %i.af, 0
  br i1 %.not5.i.i, label %bb.f, label %gres_use_busy_dev.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br label %gres_use_busy_dev.exit.i

gres_use_busy_dev.exit.i:                         ; preds = %bb.f, %bb.e
  %.0.i.i = phi i1 [ false, %bb.f ], [ true, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %.not214.i = icmp ne i64 %i.ah, 0
  %.0177.i = zext i1 %.not214.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %.0177.i)
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.am = load i64, ptr %i.al, align 8
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ap) ; 7 uses
  %.not215.i = icmp eq i64 %i.aq, 0
  br i1 %.not215.i, label %bb.bg, label %bb.g

bb.g:                                             ; preds = %gres_use_busy_dev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 8 uses
  %i.as = load i16, ptr %i.ar, align 8            ; 2 uses
  %.not216.i = icmp eq i16 %i.as, 0
  br i1 %.not216.i, label %bb.bg, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  br i1 %.0198.i.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0183.i = phi i64 [ %i.au, %bb.h ], [ %i.ax, %bb.i ]
  %i.ay = icmp ugt i64 %i.aq, %.0183.i
  br i1 %i.ay, label %_job_test.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = sub nsw i32 %i.n, %i.l
  %i.ba = add nsw i32 %i.az, 1                    ; 2 uses
end_hunk_0
