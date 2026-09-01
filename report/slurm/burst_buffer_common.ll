Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/burst_buffer_common?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@bb_post_persist_create:bb.a

declare i32 @acct_storage_g_add_reservation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @bb_post_persist_delete(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.slurmdb_reservation_rec_t, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

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
  %.sroa.8.0.copyload.fr = freeze i32 %.sroa.8.0.copyload ; 7 uses
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
  %i.i = add i32 %.sroa.8.0.copyload.fr, 1        ; 6 uses
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
  %i.aq = icmp ult i32 %.sroa.8.0.copyload.fr, 2147483647 ; 4 uses
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
  %.not343 = icmp eq i32 %i.bh, 0
  %.not446 = icmp ugt i32 %.sroa.8.0.copyload.fr, 2147483646
  %brmerge447 = or i1 %.not343, %.not446
  br i1 %brmerge447, label %._crit_edge301, label %.lr.ph300.split.us.preheader

.lr.ph300.split.us.preheader:                     ; preds = %.loopexit282
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %wide.trip.count374 = zext i32 %i.i to i64
  br label %.lr.ph300.split.us

.lr.ph300.split.us:                               ; preds = %.lr.ph300.split.us.preheader, %..loopexit280_crit_edge.us
  %.1207298.us = phi i32 [ %i.ce, %..loopexit280_crit_edge.us ], [ 0, %.lr.ph300.split.us.preheader ]
  %.0211297.us = phi ptr [ %i.cf, %..loopexit280_crit_edge.us ], [ %i.bj, %.lr.ph300.split.us.preheader ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0211297.us, i64 12
  %i.bl = load i8, ptr %i.bk, align 4, !range !25, !noundef !26
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
  %i.ci = getelementptr inbounds nuw i8, ptr %.0211297.us, i64 24
  br label %bb.k

._crit_edge301:                                   ; preds = %..loopexit280_crit_edge.us, %.loopexit282
  %i.cj = tail call ptr @job_test_bb_resv(ptr noundef %0, i64 noundef %i.h, i1 noundef zeroext true) #17 ; 4 uses
  %.not235 = icmp eq ptr %i.cj, null              ; 2 uses
  br i1 %.not235, label %.loopexit278, label %bb.n

bb.n:                                             ; preds = %._crit_edge301
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %.not344 = icmp eq i32 %i.cl, 0
  br i1 %.not344, label %.loopexit278, label %.lr.ph315

.lr.ph315:                                        ; preds = %bb.n
  %i.cm = load ptr, ptr %i.cj, align 8
  %i.cn = icmp ugt i32 %.sroa.8.0.copyload.fr, 2147483646
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 176
  %wide.trip.count.i = zext i32 %i.i to i64       ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph315, %bb.af
  %i.cq = phi ptr [ %i.p, %.lr.ph315 ], [ %i.gk, %bb.af ] ; 3 uses
  %i.cr = phi ptr [ %i.n, %.lr.ph315 ], [ %i.gl, %bb.af ] ; 3 uses
  %i.cs = phi ptr [ %i.p, %.lr.ph315 ], [ %i.gm, %bb.af ] ; 3 uses
  %i.ct = phi ptr [ %i.n, %.lr.ph315 ], [ %i.gn, %bb.af ] ; 3 uses
  %.0313 = phi ptr [ %i.cm, %.lr.ph315 ], [ %i.gp, %bb.af ] ; 5 uses
  %.2208312 = phi i32 [ 0, %.lr.ph315 ], [ %i.go, %bb.af ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0313, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call i32 @xstrcmp(ptr noundef %i.cv, ptr noundef %.sroa.1213.0.copyload) #17
  %.not246 = icmp eq i32 %i.cw, 0
  br i1 %.not246, label %bb.p, label %bb.af

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.0313, i64 72 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %.not345 = icmp eq i32 %i.cy, 0
  br i1 %.not345, label %._crit_edge309, label %.lr.ph308.preheader

.lr.ph308.preheader:                              ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %.0313, i64 80
  %i.da = load ptr, ptr %i.cz, align 8
  br label %.lr.ph308

.lr.ph308:                                        ; preds = %.lr.ph308.preheader, %.loopexit274
  %.2306 = phi i32 [ %i.du, %.loopexit274 ], [ 0, %.lr.ph308.preheader ]
  %.1213305 = phi ptr [ %i.dv, %.loopexit274 ], [ %i.da, %.lr.ph308.preheader ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.1213305, i64 8
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %.not249 = icmp eq ptr %i.dc, null
  %.sroa.3.0.copyload. = select i1 %.not249, ptr %.sroa.3.0.copyload, ptr %i.dc
  %i.dd = getelementptr inbounds nuw i8, ptr %.1213305, i64 24
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %.1213305, i64 32
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.dg) ; 2 uses
  br i1 %i.aq, label %.lr.ph304, label %.loopexit274

bb.q:                                             ; preds = %.lr.ph304
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count.i
  br i1 %exitcond380.not, label %.loopexit274, label %.lr.ph304, !llvm.loop !54

.lr.ph304:                                        ; preds = %.lr.ph308, %bb.q
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %bb.q ], [ 0, %.lr.ph308 ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv376
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call i32 @xstrcmp(ptr noundef %.sroa.3.0.copyload., ptr noundef %i.dj) #17
  %.not250 = icmp eq i32 %i.dk, 0
  br i1 %.not250, label %bb.r, label %bb.q

bb.r:                                             ; preds = %.lr.ph304
  %.not.i259 = icmp eq i64 %i.dh, 0
  br i1 %.not.i259, label %bb_granularity.exit261, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv376
  %i.dm = load i64, ptr %i.dl, align 8            ; 2 uses
  %i.dn = add i64 %i.dh, -1
  %i.do = add i64 %i.dn, %i.dm                    ; 2 uses
  %i.dp = urem i64 %i.do, %i.dm
  %i.dq = sub nuw i64 %i.do, %i.dp
  br label %bb_granularity.exit261

bb_granularity.exit261:                           ; preds = %bb.r, %bb.s
  %.0.i260 = phi i64 [ %i.dq, %bb.s ], [ 0, %bb.r ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv376 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8
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
end_hunk_0
