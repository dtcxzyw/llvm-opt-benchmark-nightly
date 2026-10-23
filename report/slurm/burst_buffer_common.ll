Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/burst_buffer_common?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@bb_post_persist_delete:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @get_log_level() #17
  %i.d = icmp sgt i32 %i.c, 5
  br i1 %i.d, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.101, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.bb_post_persist_delete, ptr noundef nonnull @__func__.bb_post_persist_delete) #17
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, 20                        ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i8 0, i64 104, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %2, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 264), align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.q, ptr %i.r, align 8
  %i.s = tail call i64 @time(ptr noundef null) #17
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.y = load i32, ptr %i.a, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.102, i32 noundef %i.y, i64 noundef %i.g) #17
  %i.z = load ptr, ptr @acct_db_conn, align 8
  %i.aa = call i32 @acct_storage_g_remove_reservation(ptr noundef %i.z, ptr noundef nonnull %2) #17 ; 4 uses
  call void @slurm_xfree(ptr noundef nonnull %i.x) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 396 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.059 = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not5560 = icmp eq ptr %.059, null
  br i1 %.not5560, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %.061 = phi ptr [ %.0, %bb.i ], [ %.059, %bb.e ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.061, i64 296 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 16
  %i.aj = load i32, ptr %i.ab, align 4
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 3 uses
  %.not58 = icmp ult i64 %i.am, %i.g
  br i1 %.not58, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.an = sub nuw i64 %i.am, %i.g
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = call i32 @get_log_level() #17
  %i.ap = icmp sgt i32 %i.ao, 5
  br i1 %i.ap, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.m, align 8
  %i.ar = load i32, ptr %i.p, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.061, i64 132
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.061, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.061, i64 312
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.061, i64 264
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.bb = load i32, ptr %i.ab, align 4
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.af, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 16
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bc
  %i.bj = load i64, ptr %i.bi, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.104, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.bb_post_persist_delete, ptr noundef nonnull @__func__.bb_post_persist_delete, ptr noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.at, ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.az, ptr noundef %i.be, i64 noundef %i.bj) #17
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.bk = load ptr, ptr %i.m, align 8
  %i.bl = load i32, ptr %i.p, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.061, i64 132
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.061, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.061, i64 312
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.061, i64 264
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ak
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.bb_post_persist_delete, ptr noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.bn, ptr noundef %i.bp, ptr noundef %i.br, ptr noundef %i.bt, ptr noundef %i.bw, i64 noundef %i.am, i64 noundef %i.g) #17 ; 0 uses
  %i.by = load ptr, ptr %i.af, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 16
  %i.cb = load i32, ptr %i.ab, align 4
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cc
  store i64 0, ptr %i.cd, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.ce = load ptr, ptr %i.af, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %.0 = load ptr, ptr %i.cf, align 8              ; 2 uses
  %.not55 = icmp eq ptr %.0, null
  br i1 %.not55, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.i, %bb.e
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not56 = icmp eq ptr %i.ch, null
  br i1 %.not56, label %bb.m, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 312
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 16
  %i.cm = load i32, ptr %i.ab, align 4
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cn ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %.not57 = icmp ult i64 %i.cp, %i.g
  br i1 %.not57, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = sub nuw i64 %i.cp, %i.g
  store i64 %i.cq, ptr %i.co, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i64 0, ptr %i.co, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.k, %bb.l, %._crit_edge, %bb.b, %bb.c
  %.049 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.aa, %._crit_edge ], [ %i.aa, %bb.l ], [ %i.aa, %bb.k ], [ %i.aa, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.049
}

declare i32 @acct_storage_g_remove_reservation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @bb_test_size_limit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.h = tail call i64 @time(ptr noundef null) #17 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.79.0.copyload = load i64, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.0.copyload.fr = freeze i32 %.sroa.8.0.copyload ; 6 uses
  %.sroa.1011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.1011.0.copyload = load ptr, ptr %.sroa.1011.0..sroa_idx, align 8
  %.sroa.1112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 168
  %.sroa.1112.0.copyload = load ptr, ptr %.sroa.1112.0..sroa_idx, align 8
  %.sroa.1213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 248
  %.sroa.1213.0.copyload = load ptr, ptr %.sroa.1213.0..sroa_idx, align 8
  %.sroa.1314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 384
  %.sroa.1314.0.copyload = load i64, ptr %.sroa.1314.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 400
  %.sroa.1617.0.copyload = load i64, ptr %.sroa.1617.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 408
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8
  %i.i = add i32 %.sroa.8.0.copyload.fr, 1        ; 5 uses
  %i.j = sext i32 %i.i to i64                     ; 7 uses
  %i.k = tail call ptr @slurm_xcalloc(i64 noundef %i.j, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 1736, ptr noundef nonnull @__func__.bb_test_size_limit) #17 ; 3 uses
  store ptr %i.k, ptr %i.a, align 8
  %i.l = tail call ptr @slurm_xcalloc(i64 noundef %i.j, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 1737, ptr noundef nonnull @__func__.bb_test_size_limit) #17 ; 3 uses
  store ptr %i.l, ptr %i.b, align 8
  %i.m = tail call ptr @slurm_xcalloc(i64 noundef %i.j, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 1738, ptr noundef nonnull @__func__.bb_test_size_limit) #17 ; 8 uses
  store ptr %i.m, ptr %i.c, align 8
  %i.n = tail call ptr @slurm_xcalloc(i64 noundef %i.j, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 1739, ptr noundef nonnull @__func__.bb_test_size_limit) #17 ; 7 uses
  store ptr %i.n, ptr %i.g, align 8
  %i.o = tail call ptr @slurm_xcalloc(i64 noundef %i.j, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 1740, ptr noundef nonnull @__func__.bb_test_size_limit) #17
  store ptr %i.o, ptr %i.d, align 8
  %i.p = tail call ptr @slurm_xcalloc(i64 noundef %i.j, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 1741, ptr noundef nonnull @__func__.bb_test_size_limit) #17 ; 3 uses
  store ptr %i.p, ptr %i.e, align 8
  %i.q = tail call ptr @slurm_xcalloc(i64 noundef %i.j, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 1742, ptr noundef nonnull @__func__.bb_test_size_limit) #17 ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.not342 = icmp eq i32 %.sroa.8.0.copyload.fr, 0
  br i1 %.not342, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.sroa.8.0.copyload.fr to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %.0212291 = phi ptr [ %.sroa.1011.0.copyload, %.lr.ph.preheader ], [ %i.ag, %bb.c ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0212291, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0212291, i64 32
  %i.u = load i64, ptr %i.t, align 8
  %. = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.u) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0212291, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %.not253 = icmp ult i64 %i.w, %.
  br i1 %.not253, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.x = sub nuw i64 %i.w, %.
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  store i64 %i.x, ptr %i.y, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.z = load i64, ptr %.0212291, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0212291, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = load i64, ptr %i.v, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store i64 %i.ae, ptr %i.af, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0212291, i64 40
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !50

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.ah = zext nneg i32 %.sroa.8.0.copyload.fr to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0206.lcssa = phi i64 [ 0, %bb.a ], [ %i.ah, %._crit_edge.loopexit ] ; 4 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %.sroa.1617.0.copyload, i64 %.sroa.18.0.copyload) ; 2 uses
  %.not = icmp eq i64 %.sroa.1314.0.copyload, %i.ai
  br i1 %.not, label %._crit_edge._crit_edge, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.aj = sub i64 %.sroa.1314.0.copyload, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0206.lcssa
  store i64 %i.aj, ptr %i.ak, align 8
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.d
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0206.lcssa
  store i64 %.sroa.79.0.copyload, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0206.lcssa
  store ptr %.sroa.3.0.copyload, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0206.lcssa
  store i64 %.sroa.1314.0.copyload, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %.not233 = icmp ne i64 %i.ap, 0
  %i.aq = icmp ult i32 %.sroa.8.0.copyload.fr, 2147483647 ; 5 uses
  %or.cond340 = and i1 %.not233, %i.aq
  br i1 %or.cond340, label %.lr.ph294, label %.loopexit282

.lr.ph294:                                        ; preds = %._crit_edge._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count369 = zext nneg i32 %i.i to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %.loopexit282, label %bb.f, !llvm.loop !51

bb.f:                                             ; preds = %.lr.ph294, %bb.e
  %indvars.iv366 = phi i64 [ 0, %.lr.ph294 ], [ %indvars.iv.next367, %bb.e ] ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv366
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i32 @xstrcmp(ptr noundef %i.as, ptr noundef %i.au) #17
  %.not234 = icmp eq i32 %i.av, 0
  br i1 %.not234, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.ao, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %bb_granularity.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv366
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = add i64 %i.aw, -1
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  %i.bb = urem i64 %i.ba, %i.ay
  %i.bc = sub nuw i64 %i.ba, %i.bb
  br label %bb_granularity.exit

bb_granularity.exit:                              ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.bc, %bb.h ], [ 0, %bb.g ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv366 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, %.0.i
  store i64 %i.bf, ptr %i.bd, align 8
  br label %.loopexit282

.loopexit282:                                     ; preds = %bb.e, %bb_granularity.exit, %._crit_edge._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %.not343 = icmp ne i32 %i.bh, 0
  %brmerge447.not = and i1 %.not343, %i.aq
  br i1 %brmerge447.not, label %.lr.ph300.split.us.preheader, label %._crit_edge301

.lr.ph300.split.us.preheader:                     ; preds = %.loopexit282
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %wide.trip.count374 = zext i32 %i.i to i64
  br label %.lr.ph300.split.us

.lr.ph300.split.us:                               ; preds = %.lr.ph300.split.us.preheader, %..loopexit280_crit_edge.us
  %.1207298.us = phi i32 [ %i.ce, %..loopexit280_crit_edge.us ], [ 0, %.lr.ph300.split.us.preheader ]
  %.0211297.us = phi ptr [ %i.cf, %..loopexit280_crit_edge.us ], [ %i.bj, %.lr.ph300.split.us.preheader ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0211297.us, i64 12
  %i.bl = load i8, ptr %i.bk, align 4, !range !13, !noundef !14
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.i, label %..loopexit280_crit_edge.us

bb.i:                                             ; preds = %.lr.ph300.split.us
  %i.bn = getelementptr inbounds nuw i8, ptr %.0211297.us, i64 40
  %i.bo = load i16, ptr %i.bn, align 8
  %.not251.us = icmp eq i16 %i.bo, 0
  br i1 %.not251.us, label %.preheader279.us, label %..loopexit280_crit_edge.us

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count374
  br i1 %exitcond375.not, label %..loopexit280_crit_edge.us, label %bb.k, !llvm.loop !52

bb.k:                                             ; preds = %.preheader279.us, %bb.j
  %indvars.iv371 = phi i64 [ 0, %.preheader279.us ], [ %indvars.iv.next372, %bb.j ] ; 4 uses
  %i.bp = load ptr, ptr %i.ci, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv371
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call i32 @xstrcmp(ptr noundef %i.bp, ptr noundef %i.br) #17
  %.not252.us = icmp eq i32 %i.bs, 0
  br i1 %.not252.us, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %.0211297.us, i64 32
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %.not.i256.us = icmp eq i64 %i.bu, 0
  br i1 %.not.i256.us, label %bb_granularity.exit258.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv371
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = add i64 %i.bu, -1
  %i.by = add i64 %i.bx, %i.bw                    ; 2 uses
  %i.bz = urem i64 %i.by, %i.bw
  %i.ca = sub nuw i64 %i.by, %i.bz
  br label %bb_granularity.exit258.us

bb_granularity.exit258.us:                        ; preds = %bb.m, %bb.l
  %.0.i257.us = phi i64 [ %i.ca, %bb.m ], [ 0, %bb.l ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv371 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = add i64 %i.cc, %.0.i257.us
  store i64 %i.cd, ptr %i.cb, align 8
  br label %..loopexit280_crit_edge.us

..loopexit280_crit_edge.us:                       ; preds = %bb.j, %bb_granularity.exit258.us, %bb.i, %.lr.ph300.split.us
  %i.ce = add nuw nsw i32 %.1207298.us, 1         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0211297.us, i64 64
  %i.cg = load i32, ptr %i.bg, align 8
  %i.ch = icmp ult i32 %i.ce, %i.cg
  br i1 %i.ch, label %.lr.ph300.split.us, label %._crit_edge301, !llvm.loop !53

.preheader279.us:                                 ; preds = %bb.i
end_hunk_0
begin_hunk_1_@bb_test_size_limit:bb.a
  %i.dt = add i64 %i.ds, %.0.i260
  store i64 %i.dt, ptr %i.dr, align 8
  br label %.loopexit274

.loopexit274:                                     ; preds = %bb.q, %.lr.ph308, %bb_granularity.exit261
  %i.du = add nuw nsw i32 %.2306, 1               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.1213305, i64 40
  %i.dw = load i32, ptr %i.cx, align 8
  %i.dx = icmp ult i32 %i.du, %i.dw
  br i1 %i.dx, label %.lr.ph308, label %._crit_edge309, !llvm.loop !55

._crit_edge309:                                   ; preds = %.loopexit274, %bb.p
  %i.dy = getelementptr inbounds nuw i8, ptr %.0313, i64 160 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8
  %.not247 = icmp eq i64 %i.dz, 0
  %brmerge = or i1 %.not247, %i.cn
  br i1 %brmerge, label %.loopexit277, label %.lr.ph311

bb.t:                                             ; preds = %.lr.ph311
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count.i
  br i1 %exitcond385.not, label %.loopexit277, label %.lr.ph311, !llvm.loop !56

.lr.ph311:                                        ; preds = %._crit_edge309, %bb.t
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %bb.t ], [ 0, %._crit_edge309 ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv381
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call i32 @xstrcmp(ptr noundef %.sroa.3.0.copyload, ptr noundef %i.eb) #17
  %.not248 = icmp eq i32 %i.ec, 0
  br i1 %.not248, label %bb.u, label %bb.t

bb.u:                                             ; preds = %.lr.ph311
  %i.ed = load i64, ptr %i.dy, align 8            ; 2 uses
  %.not.i262 = icmp eq i64 %i.ed, 0
  br i1 %.not.i262, label %bb_granularity.exit264, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv381
  %i.ef = load i64, ptr %i.ee, align 8            ; 2 uses
  %i.eg = add i64 %i.ed, -1
  %i.eh = add i64 %i.eg, %i.ef                    ; 2 uses
  %i.ei = urem i64 %i.eh, %i.ef
  %i.ej = sub nuw i64 %i.eh, %i.ei
  br label %bb_granularity.exit264

bb_granularity.exit264:                           ; preds = %bb.u, %bb.v
  %.0.i263 = phi i64 [ %i.ej, %bb.v ], [ 0, %bb.u ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv381 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = add i64 %i.el, %.0.i263
  store i64 %i.em, ptr %i.ek, align 8
  %.pre = load ptr, ptr %i.g, align 8
  %.pre409 = load ptr, ptr %i.e, align 8
  br label %.loopexit277

.loopexit277:                                     ; preds = %bb.t, %._crit_edge309, %bb_granularity.exit264
  %i.en = phi ptr [ %.pre409, %bb_granularity.exit264 ], [ %i.cq, %._crit_edge309 ], [ %i.cq, %bb.t ] ; 3 uses
  %i.eo = phi ptr [ %.pre, %bb_granularity.exit264 ], [ %i.cr, %._crit_edge309 ], [ %i.cr, %bb.t ] ; 3 uses
  %i.ep = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.eq = load ptr, ptr @job_list, align 8
  %i.er = tail call ptr @list_iterator_create(ptr noundef %i.eq) #17 ; 4 uses
  %i.es = tail call ptr @list_next(ptr noundef %i.er) #17 ; 3 uses
  %.not37.i = icmp eq ptr %i.es, null
  br i1 %.not37.i, label %_rm_active_job_bb.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.loopexit277
  br i1 %i.aq, label %.lr.ph38.split.us.i, label %.lr.ph38.split.i

.lr.ph38.split.us.i:                              ; preds = %.lr.ph38.i, %.backedge.us.i
  %i.et = phi ptr [ %i.fz, %.backedge.us.i ], [ %i.es, %.lr.ph38.i ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 152
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.backedge.us.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph38.split.us.i
  %i.ex = load i8, ptr %i.ev, align 1
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %.backedge.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 928
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call i32 @xstrcmp(ptr noundef %i.fa, ptr noundef %i.ep) #17
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %.backedge.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 448
  %i.fe = load i32, ptr %i.fd, align 8            ; 2 uses
  %i.ff = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.us.i, label %.backedge.us.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = urem i32 %i.fe, 100
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fh
  %.012.i.us.i = load ptr, ptr %i.fi, align 8     ; 2 uses
  %.not1113.i.us.i = icmp eq ptr %.012.i.us.i, null
  br i1 %.not1113.i.us.i, label %.backedge.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.z, %bb.aa
  %.014.i.us.i = phi ptr [ %.0.i.us.i, %bb.aa ], [ %.012.i.us.i, %bb.z ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.014.i.us.i, i64 24
  %i.fk = load i32, ptr %i.fj, align 8
  %i.fl = icmp eq i32 %i.fk, %i.fe
  br i1 %i.fl, label %bb_job_find.exit.us.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.us.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.014.i.us.i, i64 64
  %.0.i.us.i = load ptr, ptr %i.fm, align 8       ; 2 uses
  %.not11.i.us.i = icmp eq ptr %.0.i.us.i, null
  br i1 %.not11.i.us.i, label %.backedge.us.i, label %.lr.ph.i.us.i, !llvm.loop !2

bb_job_find.exit.us.i:                            ; preds = %.lr.ph.i.us.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.014.i.us.i, i64 112
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = add i32 %i.fo, -69
  %or.cond.us.i = icmp ult i32 %i.fp, -68
  br i1 %or.cond.us.i, label %.backedge.us.i, label %.preheader.us.i

bb.ab:                                            ; preds = %bb.ac
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.backedge.us.i, label %bb.ac, !llvm.loop !57

bb.ac:                                            ; preds = %.preheader.us.i, %bb.ab
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.ab ] ; 3 uses
  %i.fq = load ptr, ptr %i.fy, align 8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = tail call i32 @xstrcmp(ptr noundef %i.fq, ptr noundef %i.fs) #17
  %.not31.us.i = icmp eq i32 %i.ft, 0
  br i1 %.not31.us.i, label %.backedge.us.sink.split.i, label %bb.ab

.backedge.us.sink.split.i:                        ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.014.i.us.i, i64 128
  %i.fx = load i64, ptr %i.fw, align 8
  %.sink.i = tail call i64 @llvm.usub.sat.i64(i64 %i.fv, i64 %i.fx)
  store i64 %.sink.i, ptr %i.fu, align 8
  br label %.backedge.us.i

.preheader.us.i:                                  ; preds = %bb_job_find.exit.us.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.014.i.us.i, i64 32
  br label %bb.ac

.backedge.us.i:                                   ; preds = %bb.aa, %bb.ab, %.backedge.us.sink.split.i, %bb_job_find.exit.us.i, %bb.z, %bb.y, %bb.x, %bb.w, %.lr.ph38.split.us.i
  %i.fz = tail call ptr @list_next(ptr noundef %i.er) #17 ; 2 uses
  %.not.us.i = icmp eq ptr %i.fz, null
  br i1 %.not.us.i, label %_rm_active_job_bb.exit, label %.lr.ph38.split.us.i, !llvm.loop !58

.lr.ph38.split.i:                                 ; preds = %.lr.ph38.i, %.backedge.i
  %i.ga = phi ptr [ %i.gj, %.backedge.i ], [ %i.es, %.lr.ph38.i ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 152
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %.backedge.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph38.split.i
  %i.ge = load i8, ptr %i.gc, align 1
  %i.gf = icmp eq i8 %i.ge, 0
  br i1 %i.gf, label %.backedge.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 928
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = tail call i32 @xstrcmp(ptr noundef %i.gh, ptr noundef %i.ep) #17 ; 0 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ae, %bb.ad, %.lr.ph38.split.i
  %i.gj = tail call ptr @list_next(ptr noundef %i.er) #17 ; 2 uses
  %.not.i265 = icmp eq ptr %i.gj, null
  br i1 %.not.i265, label %_rm_active_job_bb.exit, label %.lr.ph38.split.i, !llvm.loop !58

_rm_active_job_bb.exit:                           ; preds = %.backedge.i, %.backedge.us.i, %.loopexit277
  tail call void @list_iterator_destroy(ptr noundef %i.er) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.o, %_rm_active_job_bb.exit
  %i.gk = phi ptr [ %i.cq, %bb.o ], [ %i.en, %_rm_active_job_bb.exit ]
  %i.gl = phi ptr [ %i.cr, %bb.o ], [ %i.eo, %_rm_active_job_bb.exit ]
  %i.gm = phi ptr [ %i.cs, %bb.o ], [ %i.en, %_rm_active_job_bb.exit ]
  %i.gn = phi ptr [ %i.ct, %bb.o ], [ %i.eo, %_rm_active_job_bb.exit ]
  %i.go = add nuw nsw i32 %.2208312, 1            ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0313, i64 200
  %i.gq = load i32, ptr %i.ck, align 8
  %i.gr = icmp ult i32 %i.go, %i.gq
  br i1 %i.gr, label %bb.o, label %.loopexit278, !llvm.loop !59

.loopexit278:                                     ; preds = %bb.af, %bb.n, %._crit_edge301
  br i1 %i.aq, label %.lr.ph319, label %.loopexit270

.lr.ph319:                                        ; preds = %.loopexit278
  %i.gs = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.gt = load ptr, ptr %i.f, align 8
  %i.gu = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.gv = load ptr, ptr %i.b, align 8             ; 3 uses
  %wide.trip.count388 = zext nneg i32 %i.i to i64 ; 4 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph319, %bb.ah
  %indvars.iv386 = phi i64 [ 0, %.lr.ph319 ], [ %indvars.iv.next387, %bb.ah ] ; 5 uses
  %.0200317 = phi i1 [ true, %.lr.ph319 ], [ %spec.select, %bb.ah ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv386
  %i.gx = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv386
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = icmp sgt i64 %i.gx, %i.gz
  br i1 %i.ha, label %.loopexit270, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv386
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = add nsw i64 %i.hc, %i.gx
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv386
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = icmp sle i64 %i.hd, %i.hf
  %spec.select = select i1 %i.hg, i1 %.0200317, i1 false ; 2 uses
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count388
  br i1 %exitcond389.not, label %._crit_edge320, label %bb.ag, !llvm.loop !60

._crit_edge320:                                   ; preds = %bb.ah
  br i1 %spec.select, label %.loopexit270, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge320
  %.not236 = icmp eq ptr %3, null
  br i1 %.not236, label %.loopexit270, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hh = tail call ptr @list_create(ptr noundef nonnull @bb_job_queue_del) #17 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 1032
  br label %bb.ak

.lr.ph334:                                        ; preds = %._crit_edge330
  %i.hj = load ptr, ptr %i.d, align 8
  br label %bb.aw

bb.ak:                                            ; preds = %bb.aj, %._crit_edge330
  %indvars.iv395 = phi i64 [ 0, %bb.aj ], [ %indvars.iv.next396, %._crit_edge330 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1112.0.copyload, i64 %indvars.iv395
  %.0210325 = load ptr, ptr %i.hk, align 8        ; 2 uses
  %.not241326 = icmp eq ptr %.0210325, null
  br i1 %.not241326, label %._crit_edge330, label %.lr.ph329

.lr.ph329:                                        ; preds = %bb.ak, %.loopexit271
  %.0210327 = phi ptr [ %.0210, %.loopexit271 ], [ %.0210325, %bb.ak ] ; 8 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0210327, i64 64 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8
  %.not242 = icmp eq i32 %i.hm, 0
  br i1 %.not242, label %.loopexit271, label %bb.al

bb.al:                                            ; preds = %.lr.ph329
  %i.hn = getelementptr inbounds nuw i8, ptr %.0210327, i64 72 ; 4 uses
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hq = load i8, ptr %i.ho, align 1
  %i.hr = add i8 %i.hq, -48
  %or.cond = icmp ult i8 %i.hr, 10
  br i1 %or.cond, label %bb.an, label %.loopexit271

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hs = getelementptr inbounds nuw i8, ptr %.0210327, i64 160 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8            ; 2 uses
  %i.hu = icmp sgt i64 %i.ht, %i.h
  br i1 %i.hu, label %bb.ao, label %.loopexit271

bb.ao:                                            ; preds = %bb.an
  %i.hv = load i64, ptr %i.hi, align 8
  %i.hw = icmp sgt i64 %i.ht, %i.hv
  br i1 %i.hw, label %bb.ap, label %.loopexit271

bb.ap:                                            ; preds = %bb.ao
  %i.hx = getelementptr inbounds nuw i8, ptr %.0210327, i64 104
  %i.hy = load ptr, ptr %i.hx, align 8
  %.not243 = icmp eq ptr %i.hy, null
  br i1 %.not243, label %bb.aq, label %.lr.ph324

bb.aq:                                            ; preds = %bb.ap
  %i.hz = tail call ptr @xstrdup(ptr noundef %.sroa.3.0.copyload) #17
  store ptr %i.hz, ptr %i.hn, align 8
  br label %.lr.ph324

.lr.ph324:                                        ; preds = %bb.ap, %bb.aq
  %i.ia = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 1881, ptr noundef nonnull @__func__.bb_test_size_limit) #17 ; 7 uses
  store ptr %.0210327, ptr %i.ia, align 8
  %i.ib = load i32, ptr %i.hl, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i32 %i.ib, ptr %i.ic, align 8
  %i.id = load ptr, ptr %i.hn, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store ptr %i.id, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %.0210327, i64 136 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 24 ; 2 uses
  store i64 %i.ig, ptr %i.ih, align 8
  %i.ii = load i64, ptr %i.hs, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  store i64 %i.ii, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.0210327, i64 168
  %i.il = load i32, ptr %i.ik, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  store i32 %i.il, ptr %i.im, align 8
  tail call void @list_push(ptr noundef %i.hh, ptr noundef nonnull %i.ia) #17
  %i.in = load ptr, ptr %i.g, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.as
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %exitcond394.not = icmp eq i64 %indvars.iv.next391, %wide.trip.count388
  br i1 %exitcond394.not, label %.loopexit271, label %bb.as, !llvm.loop !61

bb.as:                                            ; preds = %.lr.ph324, %bb.ar
  %indvars.iv390 = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next391, %bb.ar ] ; 4 uses
  %i.io = load ptr, ptr %i.hn, align 8
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv390
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = tail call i32 @xstrcmp(ptr noundef %i.io, ptr noundef %i.iq) #17
  %.not244 = icmp eq i32 %i.ir, 0
  br i1 %.not244, label %bb.at, label %bb.ar

bb.at:                                            ; preds = %bb.as
  %i.is = load i64, ptr %i.if, align 8            ; 2 uses
  %.not.i266 = icmp eq i64 %i.is, 0
  br i1 %.not.i266, label %bb_granularity.exit268, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv390
  %i.iu = load i64, ptr %i.it, align 8            ; 2 uses
  %i.iv = add i64 %i.is, -1
  %i.iw = add i64 %i.iv, %i.iu                    ; 2 uses
  %i.ix = urem i64 %i.iw, %i.iu
  %i.iy = sub nuw i64 %i.iw, %i.ix
  br label %bb_granularity.exit268

bb_granularity.exit268:                           ; preds = %bb.at, %bb.au
  %.0.i267 = phi i64 [ %i.iy, %bb.au ], [ 0, %bb.at ] ; 2 uses
  store i64 %.0.i267, ptr %i.ih, align 8
  %i.iz = load ptr, ptr %i.d, align 8
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv390 ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = add i64 %i.jb, %.0.i267
  store i64 %i.jc, ptr %i.ja, align 8
  br label %.loopexit271

.loopexit271:                                     ; preds = %bb.ar, %bb_granularity.exit268, %bb.ao, %bb.an, %bb.am, %.lr.ph329
  %i.jd = getelementptr inbounds nuw i8, ptr %.0210327, i64 80
  %.0210 = load ptr, ptr %i.jd, align 8           ; 2 uses
  %.not241 = icmp eq ptr %.0210, null
  br i1 %.not241, label %._crit_edge330, label %.lr.ph329, !llvm.loop !62

._crit_edge330:                                   ; preds = %.loopexit271, %bb.ak
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %exitcond398.not = icmp eq i64 %indvars.iv.next396, 100
  br i1 %exitcond398.not, label %.lr.ph334, label %bb.ak, !llvm.loop !63

bb.av:                                            ; preds = %bb.aw
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond403.not = icmp eq i64 %indvars.iv.next400, %wide.trip.count388
  br i1 %exitcond403.not, label %.critedge, label %bb.aw, !llvm.loop !64

bb.aw:                                            ; preds = %.lr.ph334, %bb.av
  %indvars.iv399 = phi i64 [ 0, %.lr.ph334 ], [ %indvars.iv.next400, %bb.av ] ; 5 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv399
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv399
  %i.jh = load i64, ptr %i.jg, align 8
  %i.ji = add nsw i64 %i.jh, %i.jf
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv399
  %i.jk = load i64, ptr %i.jj, align 8
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv399
  %i.jm = load i64, ptr %i.jl, align 8
  %i.jn = add nsw i64 %i.jm, %i.jk
  %i.jo = icmp sgt i64 %i.ji, %i.jn
  br i1 %i.jo, label %.loopexit270, label %bb.av

.critedge:                                        ; preds = %bb.av
  tail call void @list_sort(ptr noundef %i.hh, ptr noundef nonnull @bb_preempt_queue_sort) #17
  %i.jp = tail call ptr @list_iterator_create(ptr noundef %i.hh) #17 ; 3 uses
  %i.jq = tail call ptr @list_next(ptr noundef %i.jp) #17 ; 2 uses
  %.not238337 = icmp eq ptr %i.jq, null
  br i1 %.not238337, label %._crit_edge338, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.critedge
  %.pre410 = load ptr, ptr %i.g, align 8
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %i.jr = phi ptr [ %i.lf, %..loopexit_crit_edge.us ], [ %i.jq, %.preheader.us.preheader ] ; 8 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ay
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %exitcond408.not = icmp eq i64 %indvars.iv.next405, %wide.trip.count388
  br i1 %exitcond408.not, label %..loopexit_crit_edge.us, label %bb.ay, !llvm.loop !65

bb.ay:                                            ; preds = %.preheader.us, %bb.ax
  %indvars.iv404 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next405, %bb.ax ] ; 6 uses
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.pre410, i64 %indvars.iv404
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = tail call i32 @xstrcmp(ptr noundef %i.jt, ptr noundef %i.jv) #17
  %.not239.us = icmp eq i32 %i.jw, 0
  br i1 %.not239.us, label %bb.az, label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv404
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv404
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = add nsw i64 %i.ka, %i.jy
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv404 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8            ; 2 uses
  %i.ke = icmp sgt i64 %i.kb, %i.kd
  br i1 %i.ke, label %.critedge255.us, label %..loopexit_crit_edge.us

.critedge255.us:                                  ; preds = %bb.az
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jr, i64 24 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8
  %i.kh = add i64 %i.kg, %i.kd
  store i64 %i.kh, ptr %i.kc, align 8
  %i.ki = load i64, ptr %i.kf, align 8
  %i.kj = load ptr, ptr %i.d, align 8
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv404 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8
  %i.km = sub i64 %i.kl, %i.ki
  store i64 %i.km, ptr %i.kk, align 8
  %i.kn = load ptr, ptr %i.jr, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  store i8 1, ptr %i.ko, align 8
  %i.kp = load ptr, ptr %i.jr, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 48
  store i64 0, ptr %i.kq, align 8
  %i.kr = load ptr, ptr %i.jr, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 144
  store i16 65, ptr %i.ks, align 8
  %i.kt = tail call i64 @time(ptr noundef null) #17
  %i.ku = load ptr, ptr %i.jr, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 152
  store i64 %i.kt, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jr, i64 40
  %i.kz = load i32, ptr %i.ky, align 8
  tail call void %3(i32 noundef %i.kx, i32 noundef %i.kz, i1 noundef zeroext true) #17
  %i.la = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.lb = and i64 %i.la, 1099511627776
  %.not240.us = icmp eq i64 %i.lb, 0
  br i1 %.not240.us, label %..loopexit_crit_edge.us, label %bb.ba

bb.ba:                                            ; preds = %.critedge255.us
  %i.lc = tail call i32 @get_log_level() #17
  %i.ld = icmp sgt i32 %i.lc, 3
  br i1 %i.ld, label %bb.bb, label %..loopexit_crit_edge.us

bb.bb:                                            ; preds = %bb.ba
  %i.le = load i32, ptr %i.kw, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.106, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.bb_test_size_limit, i32 noundef %i.le, ptr noundef %0) #17
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.ax, %bb.bb, %bb.ba, %.critedge255.us, %bb.az
  %i.lf = tail call ptr @list_next(ptr noundef %i.jp) #17 ; 2 uses
  %.not238.us = icmp eq ptr %i.lf, null
  br i1 %.not238.us, label %._crit_edge338, label %.preheader.us, !llvm.loop !66

._crit_edge338:                                   ; preds = %..loopexit_crit_edge.us, %.critedge
  tail call void @list_iterator_destroy(ptr noundef %i.jp) #17
  br label %.loopexit270

.loopexit270:                                     ; preds = %bb.ag, %bb.aw, %.loopexit278, %._crit_edge320, %bb.ai, %._crit_edge338
  %.0201 = phi i32 [ 2, %bb.ai ], [ 2, %bb.aw ], [ 2, %._crit_edge338 ], [ 0, %._crit_edge320 ], [ 0, %.loopexit278 ], [ 1, %bb.ag ]
  %.0197 = phi ptr [ null, %bb.ai ], [ %i.hh, %bb.aw ], [ %i.hh, %._crit_edge338 ], [ null, %._crit_edge320 ], [ null, %.loopexit278 ], [ null, %bb.ag ] ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #17
  call void @slurm_xfree(ptr noundef nonnull %i.b) #17
  call void @slurm_xfree(ptr noundef nonnull %i.c) #17
  call void @slurm_xfree(ptr noundef nonnull %i.g) #17
  call void @slurm_xfree(ptr noundef nonnull %i.d) #17
  call void @slurm_xfree(ptr noundef nonnull %i.e) #17
  call void @slurm_xfree(ptr noundef nonnull %i.f) #17
  br i1 %.not235, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.loopexit270
  call void @slurm_free_burst_buffer_info_msg(ptr noundef nonnull %i.cj) #17
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit270, %bb.bc
  %.not245 = icmp eq ptr %.0197, null
  br i1 %.not245, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @list_destroy(ptr noundef nonnull %.0197) #17
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0201
}

declare ptr @job_test_bb_resv(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @list_create(ptr noundef) local_unnamed_addr #1

declare void @list_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @list_sort(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @list_iterator_create(ptr noundef) local_unnamed_addr #1

declare ptr @list_next(ptr noundef) local_unnamed_addr #1

declare void @list_iterator_destroy(ptr noundef) local_unnamed_addr #1

declare void @slurm_free_burst_buffer_info_msg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @bb_update_system_comment(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.slurmdb_job_cond_t, align 8 ; 8 uses
  %5 = alloca %struct.slurmdb_job_rec_t, align 8  ; 5 uses
  %6 = alloca %struct.slurm_selected_step_t, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.e = icmp ugt i64 %i.d, 1023
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.str.108.sink = phi ptr [ @.str.107, %bb.b ], [ @.str.108, %bb.a ]
  call void @_xstrftimecat(ptr noundef nonnull %i.a, ptr noundef nonnull %.str.108.sink) #17
  %i.f = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.109, ptr noundef %i.f, ptr noundef nonnull @plugin_type, ptr noundef %1, ptr noundef %2) #17
  call void @slurm_xfree(ptr noundef nonnull %i.a) #17
  br i1 %3, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i64 192, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %5, i8 0, i64 544, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 -2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 -2, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 -2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 -2, ptr %i.m, align 4
  %i.n = call ptr @list_create(ptr noundef null) #17 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8
  call void @list_append(ptr noundef %i.n, ptr noundef nonnull %6) #17
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 192, ptr %i.p, align 8
  %i.q = call ptr @list_create(ptr noundef null) #17 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 264), align 8
  call void @list_append(ptr noundef %i.q, ptr noundef %i.s) #17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 %i.w, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 416
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr @acct_db_conn, align 8
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8
  %i.ac = call ptr @acct_storage_g_modify_job(ptr noundef %i.aa, i32 noundef %i.ab, ptr noundef nonnull %4, ptr noundef nonnull %5) #17 ; 2 uses
  %i.ad = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not15 = icmp eq ptr %i.ad, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @list_destroy(ptr noundef nonnull %i.ad) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.r, align 8
  %i.ae = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not16 = icmp eq ptr %i.ae, null
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @list_destroy(ptr noundef nonnull %i.ae) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.o, align 8
  %.not17 = icmp eq ptr %i.ac, null
  br i1 %.not17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @list_destroy(ptr noundef nonnull %i.ac) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare void @_xstrftimecat(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @acct_storage_g_modify_job(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @bb_valid_pool_test(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @xstrcmp(ptr noundef nonnull %1, ptr noundef %i.b) #17
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.017 = phi i32 [ %i.k, %bb.d ], [ 0, %.lr.ph.preheader ]
  %.01116 = phi ptr [ %i.l, %bb.d ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01116, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @xstrcmp(ptr noundef nonnull %1, ptr noundef %i.i) #17
  %.not15 = icmp eq i32 %i.j, 0
  br i1 %.not15, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.k = add nuw nsw i32 %.017, 1                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01116, i64 40
  %i.m = load i32, ptr %i.d, align 8
  %i.n = icmp ult i32 %i.k, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.o = tail call i32 @get_log_level() #17
  %i.p = icmp sgt i32 %i.o, 2
  br i1 %i.p, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.110, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.bb_valid_pool_test, ptr noundef nonnull %1) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.e, %bb.b, %bb.a
  %.012 = phi i1 [ true, %bb.b ], [ false, %._crit_edge ], [ true, %bb.a ], [ false, %bb.e ], [ true, %.lr.ph ]
  ret i1 %.012
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #11

declare i32 @creat(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @bb_write_nid_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %.not11 = icmp eq i8 %i.b, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @hostlist_create(ptr noundef nonnull %1) #17 ; 3 uses
  %i.d = tail call ptr @hostlist_shift(ptr noundef %i.c) #17 ; 2 uses
  %.not1213 = icmp eq ptr %i.d, null
  br i1 %.not1213, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.e = phi ptr [ %i.f, %.lr.ph ], [ %i.d, %bb.c ] ; 2 uses
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.e) #17
  call void @free(ptr noundef nonnull %i.e) #17
  %i.f = call ptr @hostlist_shift(ptr noundef %i.c) #17 ; 2 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @hostlist_destroy(ptr noundef %i.c) #17
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call i32 @bb_write_file(ptr noundef %0, ptr noundef %i.g)
  call void @slurm_xfree(ptr noundef nonnull %i.a) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.114, ptr noundef %2) #17 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0 = phi i32 [ %i.h, %._crit_edge ], [ 22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare ptr @hostlist_create(ptr noundef) local_unnamed_addr #1

declare ptr @hostlist_shift(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

declare void @hostlist_destroy(ptr noundef) local_unnamed_addr #1

declare i32 @uid_from_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uid_to_string(i32 noundef) local_unnamed_addr #1

declare void @pack_time(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @pack16(i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare i32 @xstrncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @xstrstr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11, !12}
!1 = distinct !{!1, !11, !12}
!2 = distinct !{!2, !11, !12}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
!26 = distinct !{!26, !11, !12}
!27 = distinct !{!27, !11, !12}
!28 = distinct !{!28, !11, !12}
!29 = distinct !{!29, !11, !12}
!30 = distinct !{!30, !11, !12}
!31 = distinct !{!31, !11, !12}
!32 = distinct !{!32, !11, !12}
!33 = distinct !{!33, !11, !12}
!34 = distinct !{!34, !11, !12}
!35 = distinct !{!35, !11, !12}
!36 = distinct !{!36, !11, !12}
!37 = distinct !{!37, !11, !12}
!38 = distinct !{!38, !11, !12}
!39 = distinct !{!39, !11, !12}
!40 = distinct !{!40, !11, !12}
!41 = distinct !{!41, !11, !12}
!42 = distinct !{!42, !11, !12}
!43 = distinct !{!43, !11, !12}
!44 = distinct !{!44, !11, !12}
!45 = distinct !{!45, !11, !12}
!46 = distinct !{!46, !11, !12}
!47 = distinct !{!47, !11, !12}
!48 = distinct !{!48, !11, !12}
!49 = distinct !{!49, !11, !12}
!50 = distinct !{!50, !11, !12}
!51 = distinct !{!51, !11, !12}
!52 = distinct !{!52, !11, !12}
!53 = distinct !{!53, !11, !12}
!54 = distinct !{!54, !11, !12}
!55 = distinct !{!55, !11, !12}
!56 = distinct !{!56, !11, !12}
!57 = distinct !{!57, !11, !12}
!58 = distinct !{!58, !11, !12}
!59 = distinct !{!59, !11, !12}
!60 = distinct !{!60, !11, !12}
!61 = distinct !{!61, !11, !12}
!62 = distinct !{!62, !11, !12}
!63 = distinct !{!63, !11, !12}
!64 = distinct !{!64, !11, !12}
!65 = distinct !{!65, !11, !12}
!66 = distinct !{!66, !11, !12}
!67 = distinct !{!67, !11, !12}
!68 = distinct !{!68, !11, !12}
end_hunk_1
