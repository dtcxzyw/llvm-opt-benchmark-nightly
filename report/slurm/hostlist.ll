Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/hostlist?download=true
inline.NumInlined: 142
inline.NumDeleted: 36
begin_hunk_0_@hostlist_push:bb.a
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_push) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.j = load i32, ptr %i.i, align 8
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #21 ; 2 uses
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @__errno_location() #22
  store i32 %i.k, ptr %i.l, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_push) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = tail call i32 @hostlist_push_list(ptr noundef nonnull %0, ptr noundef nonnull %i.e) ; 0 uses
  tail call void @hostlist_destroy(ptr noundef nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %hostlist_create.exit, %bb.a, %bb.h
  %.0 = phi i32 [ %i.j, %bb.h ], [ 0, %bb.a ], [ 0, %hostlist_create.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hostlist_push_host_dims(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp ne ptr %1, null
  %i.d = icmp ne ptr %0, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.f = zext i16 %i.e to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016 = phi i32 [ %2, %bb.b ], [ %i.f, %bb.c ]
  %i.g = tail call fastcc ptr @hostname_create_dims(ptr noundef %1, i32 noundef %.016) ; 8 uses
  %.not.i = icmp eq ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %hostname_suffix_is_valid.exit.thread, label %hostname_suffix_is_valid.exit

hostname_suffix_is_valid.exit:                    ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.i, null
  br i1 %.not26, label %hostname_suffix_is_valid.exit.thread, label %hostname_suffix_width.exit

hostname_suffix_width.exit:                       ; preds = %hostname_suffix_is_valid.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #24
  %i.o = trunc i64 %i.n to i32
  %i.p = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 6 uses
  %i.q = tail call ptr @xstrdup(ptr noundef %i.k) #21
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.m, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.m, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i8 0, ptr %i.u, align 4
  br label %hostrange_destroy.exit

hostname_suffix_is_valid.exit.thread:             ; preds = %bb.d, %hostname_suffix_is_valid.exit
  %i.v = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 4 uses
  %i.w = tail call ptr @xstrdup(ptr noundef nonnull %1) #21
  store ptr %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  store i8 1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  br label %hostrange_destroy.exit

hostrange_destroy.exit:                           ; preds = %hostname_suffix_is_valid.exit.thread, %hostname_suffix_width.exit
  %.0 = phi ptr [ %i.p, %hostname_suffix_width.exit ], [ %i.v, %hostname_suffix_is_valid.exit.thread ] ; 3 uses
  %i.z = tail call fastcc i32 @hostlist_push_range(ptr noundef nonnull %0, ptr noundef nonnull %.0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.0, ptr %i.b, align 8
  tail call void @slurm_xfree(ptr noundef nonnull %.0) #21
  call void @slurm_xfree(ptr noundef nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  br i1 %.not.i, label %hostname_destroy.exit, label %bb.e

bb.e:                                             ; preds = %hostrange_destroy.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr null, ptr %i.aa, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.g) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @slurm_xfree(ptr noundef nonnull %i.ab) #21
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  br label %hostname_destroy.exit

hostname_destroy.exit:                            ; preds = %hostrange_destroy.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %hostname_destroy.exit
  %.017 = phi i32 [ 1, %hostname_destroy.exit ], [ 0, %bb.a ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hostlist_push_host(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.b = zext i16 %i.a to i32
  %i.c = tail call i32 @hostlist_push_host_dims(ptr noundef %0, ptr noundef %1, i32 noundef %i.b)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hostlist_push_list(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #22
  store i32 %i.d, ptr %i.i, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_push_list) #23
  unreachable

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.025 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.d ]
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call fastcc i32 @hostlist_push_range(ptr noundef nonnull %0, ptr noundef %i.l)
  %i.n = add nsw i32 %i.m, %.025                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %i.e, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.d, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.n, %bb.d ]
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not23 = icmp eq i32 %i.r, 0
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.s = tail call ptr @__errno_location() #22
  store i32 %i.r, ptr %i.s, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_push_list) #23
  unreachable

bb.f:                                             ; preds = %._crit_edge, %bb.a
  %.018 = phi i32 [ 0, %bb.a ], [ %.0.lcssa, %._crit_edge ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @hostlist_ranged_string_dims(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.b = zext i16 %i.a to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0113 = phi i32 [ %3, %bb.a ], [ %i.b, %bb.b ] ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not136 = icmp eq i32 %i.d, 0
  br i1 %.not136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__errno_location() #22
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_ranged_string_dims) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %.0113, 1
  br i1 %i.f, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not137 = icmp eq i32 %i.h, 0
  br i1 %.not137, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @multi_dim_lock) #21 ; 2 uses
  %.not138 = icmp eq i32 %i.i, 0
  br i1 %.not138, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @__errno_location() #22
  store i32 %i.i, ptr %i.j, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_ranged_string_dims) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = load i32, ptr @hostlist_ranged_string_dims.last_dims, align 4
  %i.l = icmp ne i32 %i.k, %.0113
  %i.m = load i32, ptr @dim_grid_size, align 4
  %i.n = icmp eq i32 %i.m, -1
  %or.cond = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit183

.lr.ph.preheader:                                 ; preds = %bb.i
  store i32 %.0113, ptr @hostlist_ranged_string_dims.last_dims, align 4
  %i.o = shl i32 %.0113, 2
  store i32 %i.o, ptr @dim_grid_size, align 4
  %i.p = zext nneg i32 %.0113 to i64
  %i.q = getelementptr [4 x i8], ptr @offset, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  store i32 1, ptr %i.r, align 4
  %i.s = add nsw i32 %.0113, -2
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = getelementptr i8, ptr @offset, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.v, i64 4
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.x, %.lr.ph ]
  %indvars.iv = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @offset, i64 %indvars.iv
  %i.x = mul nsw i32 %store_forwarded, 36         ; 2 uses
  store i32 %i.x, ptr %i.w, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not297 = icmp eq i64 %indvars.iv, 0
  br i1 %.not297, label %.loopexit183, label %.lr.ph, !llvm.loop !30

.loopexit183:                                     ; preds = %.lr.ph, %bb.i
  %i.y = load i32, ptr @hostlist_ranged_string_dims.max_dims, align 4
  %i.z = icmp slt i32 %i.y, %.0113
  br i1 %i.z, label %.lr.ph193.preheader, label %bb.m

.lr.ph193.preheader:                              ; preds = %.loopexit183
  store i32 %.0113, ptr @hostlist_ranged_string_dims.max_dims, align 4
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %.lr.ph193
  %storemerge139192 = phi i32 [ %i.ac, %.lr.ph193 ], [ 0, %.lr.ph193.preheader ]
  %i.aa = phi i64 [ %i.ab, %.lr.ph193 ], [ 1, %.lr.ph193.preheader ]
  %i.ab = mul i64 %i.aa, 36                       ; 3 uses
  %i.ac = add nuw nsw i32 %storemerge139192, 1    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %.0113
  br i1 %exitcond.not, label %bb.j, label %.lr.ph193, !llvm.loop !31

bb.j:                                             ; preds = %.lr.ph193
  store i64 %i.ab, ptr @grid_size, align 8
  %i.ad = load ptr, ptr @bit_grid, align 8
  %.not140 = icmp eq ptr %i.ad, null
  br i1 %.not140, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @slurm_bit_free(ptr noundef nonnull @bit_grid) #21
  %.pre = load i64, ptr @grid_size, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = phi i64 [ %.pre, %bb.k ], [ %i.ab, %bb.j ]
  store ptr null, ptr @bit_grid, align 8
  %i.af = tail call ptr @bit_alloc(i64 noundef %i.ae) #21
  store ptr %i.af, ptr @bit_grid, align 8
  br label %bb.n

bb.m:                                             ; preds = %.loopexit183
  %i.ag = load ptr, ptr @bit_grid, align 8
  tail call void @bit_clear_all(ptr noundef %i.ag) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = load i32, ptr @dim_grid_size, align 4
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @grid_start, i8 36, i64 %i.ai, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @grid_end, i8 -1, i64 %i.ai, i1 false)
  %i.aj = load i32, ptr %i.g, align 4
  %.not181195 = icmp sgt i32 %i.aj, 0
  br i1 %.not181195, label %.lr.ph199, label %._crit_edge200

.lr.ph199:                                        ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph199, %bb.u
  %indvars.iv235 = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next236, %bb.u ] ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv235
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8
  %.not151 = icmp eq i32 %i.ap, %.0113
  br i1 %.not151, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = trunc nuw nsw i64 %indvars.iv235 to i32 ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8
  %i.as = load i8, ptr %i.ar, align 1
  %.not152 = icmp eq i8 %i.as, 0
  %i.at = tail call i32 @get_log_level() #21      ; 2 uses
  br i1 %.not152, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = icmp sgt i32 %i.at, 7
  br i1 %i.au, label %bb.r, label %bb.ag

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %i.ak, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv235
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ba = load i32, ptr %i.az, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 8, ptr noundef nonnull @.str.11, i32 noundef %.0113, i32 noundef %i.aq, ptr noundef %i.ay, i32 noundef %i.ba) #21
  br label %bb.ag

bb.s:                                             ; preds = %bb.p
  %i.bb = icmp sgt i32 %i.at, 6
  br i1 %i.bb, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.ak, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv235
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.12, i32 noundef %.0113, i32 noundef %i.aq, i32 noundef %i.bg) #21
  br label %bb.ag

bb.u:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bk = load i64, ptr %i.bj, align 8
  tail call fastcc void @_set_grid(i64 noundef %i.bi, i64 noundef %i.bk, i32 noundef %.0113)
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.bl = load i32, ptr %i.g, align 4
  %i.bm = sext i32 %i.bl to i64
  %.not181 = icmp slt i64 %indvars.iv.next236, %i.bm
  br i1 %.not181, label %bb.o, label %._crit_edge200.loopexit, !llvm.loop !32

._crit_edge200.loopexit:                          ; preds = %bb.u
  %.pre268 = load i32, ptr @dim_grid_size, align 4
  %.pre269 = sext i32 %.pre268 to i64
  br label %._crit_edge200

._crit_edge200:                                   ; preds = %._crit_edge200.loopexit, %bb.n
  %.pre-phi = phi i64 [ %.pre269, %._crit_edge200.loopexit ], [ %i.ai, %bb.n ]
  %bcmp = tail call i32 @bcmp(ptr nonnull @grid_start, ptr nonnull @grid_end, i64 %.pre-phi)
  %.not142 = icmp eq i32 %bcmp, 0
  br i1 %.not142, label %bb.v, label %.preheader.preheader.i

bb.v:                                             ; preds = %._crit_edge200
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %1, ptr noundef nonnull @.str.13, ptr noundef %i.bq) #21 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, -1
  %i.bt = add nuw nsw i32 %i.br, %.0113
  %i.bu = zext nneg i32 %i.bt to i64
  %.not143 = icmp ugt i64 %1, %i.bu
  %or.cond160 = select i1 %i.bs, i1 %.not143, i1 false
  br i1 %or.cond160, label %.lr.ph217.preheader, label %bb.af

.lr.ph217.preheader:                              ; preds = %bb.v
  %i.bv = zext nneg i32 %i.br to i64
  %smax264 = tail call i32 @llvm.smax.i32(i32 %.0113, i32 1)
  %wide.trip.count265 = zext nneg i32 %smax264 to i64
  br label %.lr.ph217

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %.lr.ph217
  %indvars.iv259 = phi i64 [ 0, %.lr.ph217.preheader ], [ %indvars.iv.next260, %.lr.ph217 ] ; 2 uses
  %indvars.iv257 = phi i64 [ %i.bv, %.lr.ph217.preheader ], [ %indvars.iv.next258.a, %.lr.ph217 ] ; 2 uses
  %i.bw = load ptr, ptr @alpha_num, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @grid_start, i64 %indvars.iv259
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %indvars.iv.next258.a = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv257
  store i8 %i.cb, ptr %i.cc, align 1
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count265
  br i1 %exitcond266.not, label %.loopexit182.loopexit, label %.lr.ph217, !llvm.loop !33

.preheader.preheader.i:                           ; preds = %._crit_edge200
  %wide.trip.count.i = zext nneg i32 %.0113 to i64
  br label %.preheader.i

bb.w:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_test_box.exit, label %.preheader.i, !llvm.loop !34

.preheader.i:                                     ; preds = %bb.w, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @grid_start, i64 %indvars.iv.i
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @grid_end, i64 %indvars.iv.i
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp sgt i32 %i.ce, %i.cg
  br i1 %i.ch, label %_test_box.exit.thread, label %bb.w

_test_box.exit:                                   ; preds = %bb.w
  %i.ci = tail call fastcc zeroext i1 @_test_box_in_grid(i32 noundef 0, i32 noundef 0, i32 noundef range(i32 2, -2147483648) %.0113)
  br i1 %i.ci, label %bb.aa, label %_test_box.exit.thread

_test_box.exit.thread:                            ; preds = %.preheader.i, %_test_box.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %1, ptr noundef nonnull @.str.13, ptr noundef %i.cm) #21 ; 5 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.af, label %bb.x

bb.x:                                             ; preds = %_test_box.exit.thread
  %i.cp = add nuw nsw i32 %i.cn, 1                ; 3 uses
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %.not145 = icmp ugt i64 %1, %i.cq
  br i1 %.not145, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %.not146 = icmp eq i32 %4, 0
  %i.cr = zext nneg i32 %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 2 uses
  br i1 %.not146, label %.split, label %.split115

.split:                                           ; preds = %bb.y
  %i.ct = trunc i64 %1 to i32
  %i.cu = sub i32 %i.ct, %i.cn
  %i.cv = tail call fastcc i32 @_get_boxes(ptr noundef %i.cs, i32 noundef %i.cu, i32 noundef %.0113, i32 noundef 0)
  br label %bb.z

.split115:                                        ; preds = %bb.y
  store i8 91, ptr %i.cs, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq
  %i.cx = trunc i64 %1 to i32
  %i.cy = sub i32 %i.cx, %i.cp
  %i.cz = tail call fastcc i32 @_get_boxes(ptr noundef nonnull %i.cw, i32 noundef %i.cy, i32 noundef %.0113, i32 noundef %4)
  br label %bb.z

bb.z:                                             ; preds = %.split, %.split115
  %phi.call = phi i32 [ %i.cv, %.split ], [ %i.cz, %.split115 ]
  %.1112 = phi i32 [ %i.cn, %.split ], [ %i.cp, %.split115 ]
  %i.da = add nsw i32 %.1112, %phi.call
  br label %.loopexit182

bb.aa:                                            ; preds = %_test_box.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %1, ptr noundef nonnull @.str.13, ptr noundef %i.de) #21 ; 5 uses
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = shl nuw nsw i32 %.0113, 1
  %i.di = add nuw nsw i32 %i.dh, 3
  %i.dj = add nuw nsw i32 %i.di, %i.df
  %i.dk = zext nneg i32 %i.dj to i64
  %.not147 = icmp ugt i64 %1, %i.dk
  br i1 %.not147, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not148 = icmp eq i32 %4, 0                    ; 2 uses
  br i1 %.not148, label %.lr.ph204.preheader, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = add nuw nsw i32 %i.df, 1
  %i.dm = zext nneg i32 %i.df to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm
  store i8 91, ptr %i.dn, align 1
  br label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %bb.ac, %bb.ad
  %.2 = phi i32 [ %i.dl, %bb.ad ], [ %i.df, %bb.ac ]
  %5 = zext nneg i32 %.2 to i64
  %smax245 = tail call i32 @llvm.smax.i32(i32 %.0113, i32 1)
  %wide.trip.count = zext nneg i32 %smax245 to i64
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %.lr.ph204
  %indvars.iv240 = phi i64 [ 0, %.lr.ph204.preheader ], [ %indvars.iv.next241, %.lr.ph204 ] ; 2 uses
  %indvars.iv238 = phi i64 [ %5, %.lr.ph204.preheader ], [ %indvars.iv.next239, %.lr.ph204 ] ; 3 uses
  %i.do = load ptr, ptr @alpha_num, align 8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @grid_start, i64 %indvars.iv240
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv238
  store i8 %i.dt, ptr %i.du, align 1
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count
  br i1 %exitcond246.not, label %.lr.ph211.preheader, label %.lr.ph204, !llvm.loop !35

.lr.ph211.preheader:                              ; preds = %.lr.ph204
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next239
  store i8 120, ptr %i.dv, align 1
  %.4207 = add nuw i64 %indvars.iv238, 2
  %i.dw = and i64 %.4207, 4294967295
  %smax254 = tail call i32 @llvm.smax.i32(i32 %.0113, i32 1)
  %wide.trip.count255 = zext nneg i32 %smax254 to i64
  br label %.lr.ph211

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %.lr.ph211
  %indvars.iv249 = phi i64 [ 0, %.lr.ph211.preheader ], [ %indvars.iv.next250, %.lr.ph211 ] ; 2 uses
  %indvars.iv247 = phi i64 [ %i.dw, %.lr.ph211.preheader ], [ %indvars.iv.next248, %.lr.ph211 ] ; 3 uses
  %i.dx = load ptr, ptr @alpha_num, align 8
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @grid_end, i64 %indvars.iv249
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv247
  store i8 %i.ec, ptr %i.ed, align 1
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 3 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count255
  br i1 %exitcond256.not, label %._crit_edge212, label %.lr.ph211, !llvm.loop !36

._crit_edge212:                                   ; preds = %.lr.ph211
  %i.ee = trunc nuw i64 %indvars.iv.next248 to i32
  br i1 %.not148, label %.loopexit182, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge212
  %i.ef = trunc nuw i64 %indvars.iv247 to i32
  %i.eg = add nuw nsw i32 %i.ef, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next248
  store i8 93, ptr %i.eh, align 1
  br label %.loopexit182

.loopexit182.loopexit:                            ; preds = %.lr.ph217
  %i.ei = trunc nuw i64 %indvars.iv.next258.a to i32
  br label %.loopexit182

.loopexit182:                                     ; preds = %.loopexit182.loopexit, %bb.z, %bb.ae, %._crit_edge212
  %.5 = phi i32 [ %i.eg, %bb.ae ], [ %i.ee, %._crit_edge212 ], [ %i.da, %bb.z ], [ %i.ei, %.loopexit182.loopexit ] ; 3 uses
  %i.ej = icmp slt i32 %.5, 0
  %i.ek = zext nneg i32 %.5 to i64
  %i.el = icmp ult i64 %1, %i.ek
  %or.cond162 = select i1 %i.ej, i1 true, i1 %i.el
  br i1 %or.cond162, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit182, %bb.aa, %bb.ab, %_test_box.exit.thread, %bb.x, %bb.v
  %i.em = trunc i64 %1 to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit182, %bb.s, %bb.t, %bb.q, %bb.r
  %.not181186 = phi i1 [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.s ], [ false, %bb.af ], [ false, %.loopexit182 ]
  %.7 = phi i32 [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.s ], [ %i.em, %bb.af ], [ %.5, %.loopexit182 ] ; 2 uses
  %i.en = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @multi_dim_lock) #21 ; 2 uses
  %.not153 = icmp eq i32 %i.en, 0
  br i1 %.not153, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = tail call ptr @__errno_location() #22
  store i32 %i.en, ptr %i.eo, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_ranged_string_dims) #23
  unreachable

bb.ai:                                            ; preds = %bb.ag
  br i1 %.not181186, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.f, %bb.e, %bb.ai
  %.8180 = phi i32 [ %.7, %bb.ai ], [ 0, %bb.e ], [ 0, %bb.f ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = icmp sgt i32 %i.eq, 0
  %i.es = sext i32 %.8180 to i64                  ; 2 uses
  %i.et = icmp ugt i64 %1, %i.es
  %i.eu = and i1 %i.er, %i.et
  br i1 %i.eu, label %.lr.ph221, label %.loopexit

.lr.ph221:                                        ; preds = %.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not.i163 = icmp eq i32 %4, 0
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph221, %_get_bracketed_list.exit
  %i.ew = phi i64 [ %i.es, %.lr.ph221 ], [ %i.ig, %_get_bracketed_list.exit ]
  %.9220 = phi i32 [ %.8180, %.lr.ph221 ], [ %i.id, %_get_bracketed_list.exit ] ; 2 uses
  %.0219 = phi i32 [ 0, %.lr.ph221 ], [ %.1176, %_get_bracketed_list.exit ] ; 7 uses
  %.not154 = icmp eq i32 %.0219, 0
  br i1 %.not154, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ex = add nsw i32 %.9220, 1
  %i.ey = getelementptr inbounds i8, ptr %2, i64 %i.ew
  store i8 44, ptr %i.ey, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.10 = phi i32 [ %i.ex, %bb.ak ], [ %.9220, %bb.aj ] ; 2 uses
  %i.ez = sext i32 %.10 to i64                    ; 2 uses
  %i.fa = sub i64 %1, %i.ez                       ; 6 uses
  %i.fb = getelementptr inbounds i8, ptr %2, i64 %i.ez ; 6 uses
  %i.fc = load ptr, ptr %i.ev, align 8            ; 4 uses
  br i1 %.not.i163, label %._is_bracket_needed.exit_crit_edge.i, label %bb.am

._is_bracket_needed.exit_crit_edge.i:             ; preds = %bb.al
  %.pre65.i = sext i32 %.0219 to i64
  br label %_is_bracket_needed.exit.i

bb.am:                                            ; preds = %bb.al
  %.val.i = load i32, ptr %i.ep, align 4
  %i.fd = sext i32 %.0219 to i64                  ; 5 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fd ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8            ; 4 uses
  %i.fg = add nsw i32 %.val.i, -1
  %i.fh = icmp slt i32 %.0219, %i.fg
  br i1 %i.fh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fi = getelementptr i8, ptr %i.fe, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fk = phi ptr [ %i.fj, %bb.an ], [ null, %bb.am ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 28 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 4, !range !15, !noundef !16
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %hostrange_count.exit.thread.i.i, label %hostrange_count.exit.i.i

hostrange_count.exit.i.i:                         ; preds = %bb.ao
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = add i64 %i.fp, 1
  %i.ft = sub i64 %i.fs, %i.fr
  %i.fu = icmp ugt i64 %i.ft, 1
  br i1 %i.fu, label %_is_bracket_needed.exit.i, label %hostrange_count.exit.thread.i.i

hostrange_count.exit.thread.i.i:                  ; preds = %hostrange_count.exit.i.i, %bb.ao
  %i.fv = icmp eq ptr %i.fk, null
  br i1 %i.fv, label %_is_bracket_needed.exit.i, label %bb.ap

bb.ap:                                            ; preds = %hostrange_count.exit.thread.i.i
  %i.fw = load ptr, ptr %i.ff, align 8
  %i.fx = load ptr, ptr %i.fk, align 8
  %i.fy = tail call i32 @strnatcmp(ptr noundef %i.fw, ptr noundef %i.fx) #21
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %hostrange_prefix_cmp.exit.i.i.i, label %_is_bracket_needed.exit.i

hostrange_prefix_cmp.exit.i.i.i:                  ; preds = %bb.ap
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  %i.gb = load i8, ptr %i.ga, align 4, !range !15, !noundef !16 ; 2 uses
  %i.gc = load i8, ptr %i.fl, align 4, !range !15, !noundef !16
  %i.gd = icmp ne i8 %i.gb, %i.gc
  %i.ge = trunc nuw i8 %i.gb to i1
  %or.cond8.i.i.i = or i1 %i.gd, %i.ge
  br label %_is_bracket_needed.exit.i

_is_bracket_needed.exit.i:                        ; preds = %hostrange_prefix_cmp.exit.i.i.i, %bb.ap, %hostrange_count.exit.thread.i.i, %hostrange_count.exit.i.i, %._is_bracket_needed.exit_crit_edge.i
  %.pre-phi66.i = phi i64 [ %.pre65.i, %._is_bracket_needed.exit_crit_edge.i ], [ %i.fd, %hostrange_prefix_cmp.exit.i.i.i ], [ %i.fd, %bb.ap ], [ %i.fd, %hostrange_count.exit.thread.i.i ], [ %i.fd, %hostrange_count.exit.i.i ] ; 2 uses
  %.not53.i = phi i1 [ true, %._is_bracket_needed.exit_crit_edge.i ], [ %or.cond8.i.i.i, %hostrange_prefix_cmp.exit.i.i.i ], [ true, %bb.ap ], [ true, %hostrange_count.exit.thread.i.i ], [ false, %hostrange_count.exit.i.i ] ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %.pre-phi66.i
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.fb, i64 noundef %i.fa, ptr noundef nonnull @.str.13, ptr noundef %i.gh) #21 ; 5 uses
  %i.gj = icmp sgt i32 %i.gi, -1
  %i.gk = add nuw nsw i32 %i.gi, 4
  %i.gl = zext nneg i32 %i.gk to i64
  %.not52.i = icmp ugt i64 %i.fa, %i.gl
  %or.cond.i = select i1 %i.gj, i1 %.not52.i, i1 false
  br i1 %or.cond.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_is_bracket_needed.exit.i
  %i.gm = trunc i64 %i.fa to i32
  br label %_get_bracketed_list.exit

bb.ar:                                            ; preds = %_is_bracket_needed.exit.i
  br i1 %.not53.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gn = add nuw nsw i32 %i.gi, 1
  %i.go = zext nneg i32 %i.gi to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.go
  store i8 91, ptr %i.gp, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i = phi i32 [ %i.gn, %bb.as ], [ %i.gi, %bb.ar ]
  %i.gq = add i64 %i.fa, -1
  %i.gr = sext i32 %.0219 to i64
  br label %bb.au

bb.au:                                            ; preds = %hostrange_within_range.exit.i, %bb.at
  %indvars.iv.i164 = phi i64 [ %indvars.iv.next.i165, %hostrange_within_range.exit.i ], [ %.pre-phi66.i, %bb.at ] ; 3 uses
  %.1.i = phi i32 [ %i.he, %hostrange_within_range.exit.i ], [ %.0.i, %bb.at ] ; 3 uses
  %i.gs = icmp sgt i64 %indvars.iv.i164, %i.gr
  br i1 %i.gs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gt = add nuw nsw i32 %.1.i, 1
  %i.gu = zext nneg i32 %.1.i to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.gu
  store i8 44, ptr %i.gv, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.2.i = phi i32 [ %i.gt, %bb.av ], [ %.1.i, %bb.au ] ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %indvars.iv.i164 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = zext nneg i32 %.2.i to i64              ; 2 uses
  %i.gz = sub i64 %i.fa, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.gy
  %i.hb = tail call fastcc i64 @hostrange_numstr(ptr noundef %i.gx, i64 noundef %i.gz, ptr noundef %i.ha) ; 2 uses
  %i.hc = icmp slt i64 %i.hb, 0
  br i1 %i.hc, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hd = trunc nuw nsw i64 %i.hb to i32
  %i.he = add nuw nsw i32 %.2.i, %i.hd            ; 4 uses
  %i.hf = zext nneg i32 %i.he to i64              ; 3 uses
  %.not54.i = icmp ugt i64 %i.gq, %i.hf
  br i1 %.not54.i, label %bb.az, label %bb.ay
end_hunk_0
