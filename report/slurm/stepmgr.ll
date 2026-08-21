Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/stepmgr?download=true
inline.NumInlined: 63
inline.NumDeleted: 15
begin_hunk_0_@_set_max_num_tasks:bb.a
  %.04459 = phi i32 [ 0, %.lr.ph62 ], [ %i.ci, %bb.l ]
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv71
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = zext i16 %i.cf to i32
  %i.ch = sdiv i32 %i.cg, %3
  %i.ci = add i32 %i.ch, %.04459                  ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge63, label %bb.l, !llvm.loop !43
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @_cmp_node_rank(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.b, %i.d
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 4                ; 2 uses
  %i.h = load i32, ptr %1, align 4                ; 2 uses
  %i.i = icmp ugt i32 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %i.g, %i.h
  %. = sext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ -1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

declare i32 @bit_super_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gres_stepmgr_step_test_per_step(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @bit_pick_cnt(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_mark_busy_nodes(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load i32, ptr %i.e, align 8
  %.off = add i32 %i.f, 6
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 256
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.143, ptr noundef nonnull @__func__._mark_busy_nodes, ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  tail call void @bit_and_not(ptr noundef %1, ptr noundef nonnull %i.k) #16
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.n = and i64 %i.m, 2
  %.not15 = icmp eq i64 %i.n, 0
  br i1 %.not15, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = tail call ptr @bitmap2node_name(ptr noundef %i.o) #16 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.r = and i64 %i.q, 2
  %.not16 = icmp eq i64 %i.r, 0
  br i1 %.not16, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i32 @get_log_level() #16
  %i.t = icmp sgt i32 %i.s, 3
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__._mark_busy_nodes, ptr noundef nonnull %0, ptr noundef %i.p) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.f, %bb.j, %bb.c, %bb.a, %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_opt_cpu_cnt(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4
  %i.b = call ptr @next_node_bitmap(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #16
  %.not1416 = icmp eq ptr %i.b, null
  br i1 %.not1416, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01017 = phi i32 [ %i.g, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %i.c = load i32, ptr %i.a, align 4              ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not15 = icmp ult i32 %i.f, %.01017
  br i1 %.not15, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.g = sub nuw i32 %.01017, %i.f                ; 2 uses
  %i.h = add nsw i32 %i.c, 1
  store i32 %i.h, ptr %i.a, align 4
  %i.i = call ptr @next_node_bitmap(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #16
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %spec.select = phi i32 [ %0, %bb.b ], [ 0, %.lr.ph ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.1 = phi i32 [ %0, %bb.a ], [ %spec.select, %._crit_edge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_pick_step_nodes_cpus(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = load i32, ptr @node_record_count, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = tail call ptr @bit_alloc(i64 noundef %i.d) #16 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %.not = icmp slt i32 %i.i, %6
  %spec.store.select = select i1 %.not, i32 %i.i, i32 0 ; 13 uses
  %i.j = add nsw i32 %2, -1
  %i.k = add nsw i32 %i.j, %3
  %i.l = sdiv i32 %i.k, %2                        ; 7 uses
  %i.m = icmp sgt i32 %i.l, 1024
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @get_log_level() #16
  %i.o = icmp sgt i32 %i.n, 2
  br i1 %i.o, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.145, ptr noundef nonnull @__func__._pick_step_nodes_cpus, i32 noundef %i.l) #16
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %.not184 = icmp sgt i32 %3, %2
  br i1 %.not184, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d
  %.not.i244 = icmp sgt i32 %2, 0
  br i1 %.not.i244, label %.lr.ph247.a, label %.loopexit

.lr.ph247.a:                                      ; preds = %.thread
  %exitcond.not.i406 = icmp slt i32 %6, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph247.a, %bb.j
  %.0156246 = phi i32 [ %i.ac, %bb.j ], [ 0, %.lr.ph247.a ] ; 2 uses
  %.0162245 = phi i32 [ %.4166407, %bb.j ], [ 0, %.lr.ph247.a ]
  %i.p = icmp eq i32 %.0156246, 0
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %.0162245, 1
  %i.r = srem i32 %i.q, %6                        ; 2 uses
  %i.s = icmp eq i32 %i.r, %spec.store.select
  br i1 %i.s, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.3165 = phi i32 [ %i.r, %bb.f ], [ %spec.store.select, %bb.e ] ; 2 uses
  br i1 %exitcond.not.i406, label %.loopexit, label %.lr.ph410

bb.h:                                             ; preds = %bb.i
  %i.t = add nuw nsw i32 %.026.i408, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %6, %i.t
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph410

.lr.ph410:                                        ; preds = %bb.g, %bb.h
  %.026.i408 = phi i32 [ %i.t, %bb.h ], [ 0, %bb.g ]
  %.4166407 = phi i32 [ %i.aa, %bb.h ], [ %.3165, %bb.g ] ; 4 uses
  %i.u = sext i32 %.4166407 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %5, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = tail call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.x) #16
  %.not31.i = icmp eq i32 %i.y, 0
  br i1 %.not31.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph410
  %i.z = add nsw i32 %.4166407, 1
  %i.aa = srem i32 %i.z, %6                       ; 3 uses
  %i.ab = icmp eq i32 %i.aa, %spec.store.select
  br i1 %i.ab, label %.loopexit, label %bb.h

bb.j:                                             ; preds = %.lr.ph410
  %i.ac = add nuw nsw i32 %.0156246, 1            ; 2 uses
  tail call void @bit_set(ptr noundef %i.e, i64 noundef %i.x) #16
  %exitcond286.not = icmp eq i32 %i.ac, %2
  br i1 %exitcond286.not, label %.loopexit, label %bb.e, !llvm.loop !45

.loopexit:                                        ; preds = %bb.f, %bb.j, %bb.g, %bb.i, %bb.h, %.thread
  %.5167.ph = phi i32 [ 0, %.thread ], [ %i.aa, %bb.h ], [ %spec.store.select, %bb.i ], [ %.3165, %bb.g ], [ %spec.store.select, %bb.f ], [ %.4166407, %bb.j ] ; 4 uses
  %i.ad = sext i32 %.5167.ph to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %.5167.ph, 1
  %i.ai = srem i32 %i.ah, %6                      ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = sext i32 %6 to i64
  %i.am = getelementptr [8 x i8], ptr %5, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4
  %.unshifted.i = xor i32 %i.ao, %i.ak
  %i.ap = icmp ult i32 %.unshifted.i, 65536
  %.not20.i = icmp eq i32 %i.ai, %.5167.ph
  %or.cond.i = select i1 %i.ap, i1 true, i1 %.not20.i
  br i1 %or.cond.i, label %_next_rank_start.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.k
  %.021.i = phi i32 [ %i.av, %bb.k ], [ %i.ai, %.loopexit ] ; 3 uses
  %i.aq = sext i32 %.021.i to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %5, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %.not19.unshifted.i = xor i32 %i.at, %i.ag
  %.not19.i = icmp ult i32 %.not19.unshifted.i, 65536
  br i1 %.not19.i, label %bb.k, label %_next_rank_start.exit

bb.k:                                             ; preds = %.lr.ph.i
  %i.au = add nsw i32 %.021.i, 1
  %i.av = srem i32 %i.au, %6                      ; 2 uses
  %.not.i105 = icmp eq i32 %i.av, %.5167.ph
  br i1 %.not.i105, label %_next_rank_start.exit, label %.lr.ph.i, !llvm.loop !46

_next_rank_start.exit:                            ; preds = %.lr.ph.i, %bb.k, %.loopexit
  %.018.i = phi i32 [ %i.ai, %.loopexit ], [ %i.ai, %bb.k ], [ %.021.i, %.lr.ph.i ]
  %i.aw = load ptr, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  store i32 %.018.i, ptr %i.ax, align 8
  br label %bb.ar

bb.l:                                             ; preds = %bb.d
  %i.ay = sext i32 %i.l to i64
  %i.az = tail call ptr @slurm_xcalloc(i64 noundef %i.ay, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 1118, ptr noundef nonnull @__func__._pick_step_nodes_cpus) #16
  store ptr %i.az, ptr %i.b, align 8
  %exitcond.not.i110384 = icmp slt i32 %6, 1
  br label %.outer192

.outer192:                                        ; preds = %bb.v, %bb.l
  %.1163.ph = phi i32 [ %.7385, %bb.v ], [ 0, %bb.l ] ; 2 uses
  %.1157.ph = phi i32 [ %i.bn, %bb.v ], [ 0, %bb.l ] ; 2 uses
  %.085.ph = phi i32 [ %i.cx, %bb.v ], [ %2, %bb.l ] ; 5 uses
  %.084.ph = phi i32 [ %i.bz, %bb.v ], [ %3, %bb.l ] ; 4 uses
  %.not.i106217 = icmp slt i32 %.1157.ph, %6
  br i1 %.not.i106217, label %.lr.ph, label %.loopexit189

.lr.ph:                                           ; preds = %.outer192, %bb.r
  %.1157219 = phi i32 [ %i.bn, %bb.r ], [ %.1157.ph, %.outer192 ] ; 2 uses
  %.1163218 = phi i32 [ %.7385, %bb.r ], [ %.1163.ph, %.outer192 ]
  %i.ba = icmp eq i32 %.1157219, 0
  br i1 %i.ba, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bb = add nsw i32 %.1163218, 1
  %i.bc = srem i32 %i.bb, %6                      ; 2 uses
  %i.bd = icmp eq i32 %i.bc, %spec.store.select
  br i1 %i.bd, label %.loopexit189, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.6 = phi i32 [ %i.bc, %bb.m ], [ %spec.store.select, %.lr.ph ] ; 2 uses
  br i1 %exitcond.not.i110384, label %.loopexit189, label %.lr.ph388

bb.o:                                             ; preds = %bb.p
  %i.be = add nuw nsw i32 %.026.i109386, 1        ; 2 uses
  %exitcond.not.i110 = icmp eq i32 %6, %i.be
  br i1 %exitcond.not.i110, label %.loopexit189, label %.lr.ph388

.lr.ph388:                                        ; preds = %bb.n, %bb.o
  %.026.i109386 = phi i32 [ %i.be, %bb.o ], [ 0, %bb.n ]
  %.7385 = phi i32 [ %i.bl, %bb.o ], [ %.6, %bb.n ] ; 8 uses
  %i.bf = sext i32 %.7385 to i64                  ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = sext i32 %i.bh to i64                   ; 4 uses
  %i.bj = tail call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.bi) #16
  %.not31.i111 = icmp eq i32 %i.bj, 0
  br i1 %.not31.i111, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph388
  %i.bk = add nsw i32 %.7385, 1
  %i.bl = srem i32 %i.bk, %6                      ; 3 uses
  %i.bm = icmp eq i32 %i.bl, %spec.store.select
  br i1 %i.bm, label %.loopexit189, label %bb.o

bb.q:                                             ; preds = %.lr.ph388
  %i.bn = add i32 %.1157219, 1                    ; 3 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bi
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = icmp ult i32 %i.bp, %i.l
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
  %exitcond.not = icmp eq i32 %i.bn, %6
  br i1 %exitcond.not, label %.loopexit189, label %.lr.ph, !llvm.loop !47

bb.s:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bi
  %i.bx = load ptr, ptr %i.a, align 8
  tail call void @bit_set(ptr noundef %i.bx, i64 noundef %i.bi) #16
  %i.by = load i32, ptr %i.bw, align 4
  %i.bz = sub i32 %.084.ph, %i.by                 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 1
  %i.cb = icmp slt i32 %.085.ph, 2
  %or.cond3 = and i1 %i.cb, %i.ca
  br i1 %or.cond3, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bf
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = add nsw i32 %.7385, 1
  %i.cg = srem i32 %i.cf, %6                      ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = zext nneg i32 %6 to i64
  %i.ck = getelementptr [8 x i8], ptr %5, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4
  %.unshifted.i114 = xor i32 %i.cm, %i.ci
  %i.cn = icmp ult i32 %.unshifted.i114, 65536
  %.not20.i115 = icmp eq i32 %i.cg, %.7385
  %or.cond.i116 = select i1 %i.cn, i1 true, i1 %.not20.i115
  br i1 %or.cond.i116, label %_next_rank_start.exit123, label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %bb.t, %bb.u
  %.021.i118 = phi i32 [ %i.ct, %bb.u ], [ %i.cg, %bb.t ] ; 3 uses
  %i.co = sext i32 %.021.i118 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %5, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4
  %.not19.unshifted.i119 = xor i32 %i.cr, %i.ce
  %.not19.i120 = icmp ult i32 %.not19.unshifted.i119, 65536
  br i1 %.not19.i120, label %bb.u, label %_next_rank_start.exit123

bb.u:                                             ; preds = %.lr.ph.i117
  %i.cs = add nsw i32 %.021.i118, 1
  %i.ct = srem i32 %i.cs, %6                      ; 2 uses
  %.not.i122 = icmp eq i32 %i.ct, %.7385
  br i1 %.not.i122, label %_next_rank_start.exit123, label %.lr.ph.i117, !llvm.loop !46

_next_rank_start.exit123:                         ; preds = %.lr.ph.i117, %bb.u, %bb.t
  %.018.i121 = phi i32 [ %i.cg, %bb.t ], [ %i.cg, %bb.u ], [ %.021.i118, %.lr.ph.i117 ]
  %i.cu = load ptr, ptr %i.f, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  store i32 %.018.i121, ptr %i.cv, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.cw = load ptr, ptr %i.a, align 8
  br label %bb.ar

bb.v:                                             ; preds = %bb.s
  %i.cx = add nsw i32 %.085.ph, -1                ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.w, label %.outer192, !llvm.loop !47

bb.w:                                             ; preds = %bb.v
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.cz = load ptr, ptr %i.a, align 8
  %.not104 = icmp eq ptr %i.cz, null
  br i1 %.not104, label %bb.ar, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #16
  br label %bb.ar

.loopexit189:                                     ; preds = %.outer192, %bb.m, %bb.r, %bb.n, %bb.p, %bb.o
  %.8.ph = phi i32 [ %i.bl, %bb.o ], [ %.7385, %bb.r ], [ %spec.store.select, %bb.p ], [ %.6, %bb.n ], [ %spec.store.select, %bb.m ], [ %.1163.ph, %.outer192 ]
  %i.da = load ptr, ptr %i.a, align 8
  %.not100 = icmp eq ptr %i.da, null
  br i1 %.not100, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit189
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  br label %bb.ar

bb.z:                                             ; preds = %.loopexit189
  %i.db = load ptr, ptr %i.b, align 8
  store i32 0, ptr %i.db, align 4
  %i.dc = icmp sgt i32 %i.l, 1
  br i1 %i.dc, label %.lr.ph233.preheader, label %._crit_edge

.lr.ph233.preheader:                              ; preds = %bb.z
  %i.dd = zext nneg i32 %i.l to i64
  %.pre287 = load ptr, ptr %i.b, align 8          ; 2 uses
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %bb.ae
  %i.de = phi ptr [ %.pre287, %.lr.ph233.preheader ], [ %i.dt, %bb.ae ] ; 2 uses
  %i.df = phi ptr [ %.pre287, %.lr.ph233.preheader ], [ %i.du, %bb.ae ] ; 3 uses
  %indvars.iv = phi i64 [ %i.dd, %.lr.ph233.preheader ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %.1231 = phi i32 [ %.084.ph, %.lr.ph233.preheader ], [ %.2, %bb.ae ] ; 3 uses
  %.186230 = phi i32 [ %.085.ph, %.lr.ph233.preheader ], [ %.287, %bb.ae ] ; 6 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph233
  %i.dj = icmp sgt i32 %i.dh, %.186230
  br i1 %i.dj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %.186230, ptr %i.dg, align 4
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dk = phi ptr [ %.pre, %bb.ab ], [ %i.de, %bb.aa ] ; 4 uses
  %i.dl = phi ptr [ %.pre, %bb.ab ], [ %i.df, %bb.aa ]
  %i.dm = icmp sgt i32 %.186230, 0
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %i.dp = sub nsw i32 %.186230, %i.do
  %i.dq = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.dr = mul nsw i32 %i.do, %i.dq
  %i.ds = sub nsw i32 %.1231, %i.dr
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %.lr.ph233
  %i.dt = phi ptr [ %i.de, %.lr.ph233 ], [ %i.dk, %bb.ad ], [ %i.dk, %bb.ac ]
  %i.du = phi ptr [ %i.df, %.lr.ph233 ], [ %i.dk, %bb.ad ], [ %i.dl, %bb.ac ]
  %.287 = phi i32 [ %.186230, %.lr.ph233 ], [ %i.dp, %bb.ad ], [ %.186230, %bb.ac ] ; 2 uses
  %.2 = phi i32 [ %.1231, %.lr.ph233 ], [ %i.ds, %bb.ad ], [ %.1231, %bb.ac ] ; 2 uses
  %i.dv = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.dv, label %.lr.ph233, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.ae, %bb.z
  %.186.lcssa = phi i32 [ %.085.ph, %bb.z ], [ %.287, %bb.ae ]
  %.1.lcssa = phi i32 [ %.084.ph, %bb.z ], [ %.2, %bb.ae ]
  %i.dw = icmp sgt i32 %.1.lcssa, 0
  %i.dx = icmp sgt i32 %.186.lcssa, 0
  %or.cond5 = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond5, label %bb.af, label %.outer.preheader

.outer.preheader:                                 ; preds = %._crit_edge
  %exitcond.not.i128399 = icmp slt i32 %6, 1
  br label %.outer

bb.af:                                            ; preds = %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.dy = load ptr, ptr %i.a, align 8
  %.not103 = icmp eq ptr %i.dy, null
  br i1 %.not103, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #16
  br label %bb.ar

bb.ah:                                            ; preds = %.lr.ph242, %.backedge
  %.2158241 = phi i32 [ %.2158.ph, %.lr.ph242 ], [ %i.em, %.backedge ] ; 2 uses
  %.2164240 = phi i32 [ %.2164.ph, %.lr.ph242 ], [ %.10400, %.backedge ]
  %i.dz = icmp eq i32 %.2158241, 0
  br i1 %i.dz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = add nsw i32 %.2164240, 1
  %i.eb = srem i32 %i.ea, %6                      ; 2 uses
  %i.ec = icmp eq i32 %i.eb, %spec.store.select
  br i1 %i.ec, label %_next_node_inx.exit131.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.9 = phi i32 [ %i.eb, %bb.ai ], [ %spec.store.select, %bb.ah ]
  br i1 %exitcond.not.i128399, label %_next_node_inx.exit131.thread, label %.lr.ph403

.lr.ph403:                                        ; preds = %bb.aj, %bb.ak
  %.026.i127401 = phi i32 [ %i.el, %bb.ak ], [ 0, %bb.aj ]
  %.10400 = phi i32 [ %i.ej, %bb.ak ], [ %.9, %bb.aj ] ; 5 uses
  %i.ed = sext i32 %.10400 to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = sext i32 %i.ef to i64                   ; 4 uses
  %i.eh = tail call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.eg) #16
  %.not31.i129 = icmp eq i32 %i.eh, 0
  br i1 %.not31.i129, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph403
  %i.ei = add nsw i32 %.10400, 1
  %i.ej = srem i32 %i.ei, %6                      ; 2 uses
  %i.ek = icmp eq i32 %i.ej, %spec.store.select
  %i.el = add nuw nsw i32 %.026.i127401, 1        ; 2 uses
  %exitcond.not.i128 = icmp eq i32 %6, %i.el
  %or.cond = select i1 %i.ek, i1 true, i1 %exitcond.not.i128
  br i1 %or.cond, label %_next_node_inx.exit131.thread, label %.lr.ph403

bb.al:                                            ; preds = %.lr.ph403
  %i.em = add i32 %.2158241, 1                    ; 3 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eg
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %.not101 = icmp ult i32 %i.eo, %i.l
  br i1 %.not101, label %bb.am, label %.backedge

.backedge:                                        ; preds = %bb.al, %bb.am
  %exitcond285.not = icmp eq i32 %i.em, %6
  br i1 %exitcond285.not, label %_next_node_inx.exit131.thread, label %bb.ah, !llvm.loop !49

bb.am:                                            ; preds = %bb.al
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4            ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %.backedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eg
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.ep
  %i.ev = add nsw i32 %i.er, -1
  store i32 %i.ev, ptr %i.eu, align 4
  %i.ew = load ptr, ptr %i.a, align 8
  tail call void @bit_set(ptr noundef %i.ew, i64 noundef %i.eg) #16
  %i.ex = load i32, ptr %i.et, align 4
  %i.ey = sub i32 %.3.ph, %i.ex                   ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 1
  %i.fa = icmp slt i32 %.388.ph, 2
  %or.cond7 = and i1 %i.fa, %i.ez
  br i1 %or.cond7, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fb = tail call fastcc i32 @_next_rank_start(ptr noundef nonnull %5, i32 noundef %6, i32 noundef %.10400)
  %i.fc = load ptr, ptr %i.f, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 88
  store i32 %i.fb, ptr %i.fd, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.fe = load ptr, ptr %i.a, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.ff = add nsw i32 %.388.ph, -1                ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_next_node_inx.exit131.thread, label %.outer, !llvm.loop !49

.outer:                                           ; preds = %.outer.preheader, %bb.ap
  %.2164.ph = phi i32 [ %.10400, %bb.ap ], [ %.8.ph, %.outer.preheader ]
  %.2158.ph = phi i32 [ %i.em, %bb.ap ], [ 0, %.outer.preheader ] ; 2 uses
  %.388.ph = phi i32 [ %i.ff, %bb.ap ], [ %.085.ph, %.outer.preheader ] ; 2 uses
  %.3.ph = phi i32 [ %i.ey, %bb.ap ], [ %.084.ph, %.outer.preheader ]
  %.not.i124239 = icmp slt i32 %.2158.ph, %6
  br i1 %.not.i124239, label %.lr.ph242, label %_next_node_inx.exit131.thread

.lr.ph242:                                        ; preds = %.outer
  %i.fh = load ptr, ptr %i.b, align 8             ; 2 uses
  br label %bb.ah

_next_node_inx.exit131.thread:                    ; preds = %.outer, %bb.ap, %.backedge, %bb.ai, %bb.aj, %bb.ak
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.fi = load ptr, ptr %i.a, align 8
  %.not102 = icmp eq ptr %i.fi, null
  br i1 %.not102, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_next_node_inx.exit131.thread
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #16
  br label %bb.ar

bb.ar:                                            ; preds = %_next_node_inx.exit131.thread, %bb.aq, %bb.af, %bb.ag, %bb.w, %bb.x, %bb.ao, %bb.y, %_next_rank_start.exit123, %_next_rank_start.exit
  %.089 = phi ptr [ %i.e, %_next_rank_start.exit ], [ %i.cw, %_next_rank_start.exit123 ], [ null, %bb.y ], [ null, %bb.w ], [ %i.fe, %bb.ao ], [ null, %bb.af ], [ null, %bb.x ], [ null, %bb.ag ], [ null, %bb.aq ], [ null, %_next_node_inx.exit131.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.089
}

declare void @bit_or(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_count_cpus(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr @next_node_bitmap(ptr noundef %i.e, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.h = phi ptr [ %i.f, %.lr.ph ], [ %i.aa, %bb.e ]
  %.012 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 216 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = call i32 @slurm_bit_test(ptr noundef %i.i, i64 noundef %i.l) #16
  %.not9 = icmp eq i32 %i.m, 0
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.j, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.o) #16
  %.not10 = icmp eq i32 %i.p, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.j, align 8
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add i32 %i.t, %.012
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.1 = phi i32 [ %i.u, %bb.d ], [ %.012, %bb.c ], [ %.012, %bb.b ] ; 2 uses
  %i.v = load i32, ptr %i.a, align 4
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 4
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call ptr @next_node_bitmap(ptr noundef %i.z, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0.lcssa
}

declare i64 @bit_ffs_from_bit(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @bit_not(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @_cmp_cpu_counts(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %i.b = load i16, ptr %1, align 2
  %.0 = tail call i32 @llvm.ucmp.i32.i16(i16 %i.b, i16 %i.a)
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @_next_rank_start(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add nsw i32 %2, 1
  %i.f = srem i32 %i.e, %1                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr [8 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4
  %.unshifted = xor i32 %i.l, %i.h
  %i.m = icmp ult i32 %.unshifted, 65536
  %.not20 = icmp eq i32 %i.f, %2
  %or.cond = select i1 %i.m, i1 true, i1 %.not20
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ %i.s, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.n = sext i32 %.021 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %.not19.unshifted = xor i32 %i.q, %i.d
  %.not19 = icmp ult i32 %.not19.unshifted, 65536
  br i1 %.not19, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nsw i32 %.021, 1
  %i.s = srem i32 %i.r, %1                        ; 2 uses
  %.not = icmp eq i32 %i.s, %2
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.018 = phi i32 [ %i.f, %bb.a ], [ %.021, %.lr.ph ], [ %i.f, %bb.b ]
  ret i32 %.018
}

declare void @slurm_sprint_cpu_bind_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @switch_g_stepinfo_build(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3
end_hunk_0
