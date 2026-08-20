inline.NumInlined: 266
inline.NumDeleted: 81
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mca_coll_ftagree_iera_intra:bb.a
  %i.lk = load i16, ptr %.232.i.i, align 2, !tbaa !233
  %i.ll = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i16 %i.lk, ptr %i.ll, align 4, !tbaa !17
  br label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %bb.bd, %.lr.ph43.preheader.i.i
  %.02941.i.i = phi i64 [ %i.lt, %bb.bd ], [ 1, %.lr.ph43.preheader.i.i ] ; 3 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.232.i.i, i64 %.02941.i.i ; 2 uses
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !233
  %i.lo = zext i16 %i.ln to i32
  %i.lp = getelementptr i8, ptr %i.lm, i64 -2
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !233
  %i.lr = zext i16 %i.lq to i32
  %i.ls = add nuw nsw i32 %i.lr, 1
  %.not34.i.i = icmp eq i32 %i.ls, %i.lo
  br i1 %.not34.i.i, label %bb.bd, label %._crit_edge44.i.i

bb.bd:                                            ; preds = %.lr.ph43.i.i
  %i.lt = add nuw i64 %.02941.i.i, 1              ; 2 uses
  %exitcond.not.i92.i = icmp eq i64 %i.lt, %.1.i.i
  br i1 %exitcond.not.i92.i, label %._crit_edge44.i.i, label %.lr.ph43.i.i, !llvm.loop !235

._crit_edge44.i.i:                                ; preds = %bb.bd, %.lr.ph43.i.i, %bb.bc
  %.029.lcssa.i.i = phi i64 [ 1, %bb.bc ], [ %.02941.i.i, %.lr.ph43.i.i ], [ %.1.i.i, %bb.bd ]
  %i.lu = getelementptr [2 x i8], ptr %.232.i.i, i64 %.029.lcssa.i.i
  %i.lv = getelementptr i8, ptr %i.lu, i64 -2
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !233
  %i.lx = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %i.lw, ptr %i.lx, align 2, !tbaa !18
  call void @free(ptr noundef nonnull %.232.i.i) #20
  br label %era_agreement_value_set_gcrange.exit.i

era_agreement_value_set_gcrange.exit.i:           ; preds = %._crit_edge44.i.i, %._crit_edge.i91.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call fastcc void @era_combine_agreement_values(ptr noundef nonnull %.0.i39, ptr noundef nonnull %9)
  store ptr null, ptr %i.ku, align 8, !tbaa !19
  %i.ly = load ptr, ptr %9, align 8, !tbaa !49
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !65 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !52 ; 2 uses
  %.not6.i93.i = icmp eq ptr %i.mb, null
  br i1 %.not6.i93.i, label %mca_coll_ftagree_era_prepare_agreement.exit, label %.lr.ph.i94.i

.lr.ph.i94.i:                                     ; preds = %era_agreement_value_set_gcrange.exit.i, %.lr.ph.i94.i
  %i.mc = phi ptr [ %i.me, %.lr.ph.i94.i ], [ %i.mb, %era_agreement_value_set_gcrange.exit.i ]
  %.07.i95.i = phi ptr [ %i.md, %.lr.ph.i94.i ], [ %i.ma, %era_agreement_value_set_gcrange.exit.i ]
  call void %i.mc(ptr noundef nonnull %9) #20, !inline_history !232
  %i.md = getelementptr inbounds nuw i8, ptr %.07.i95.i, i64 8 ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !52 ; 2 uses
  %.not.i96.i = icmp eq ptr %i.me, null
  br i1 %.not.i96.i, label %mca_coll_ftagree_era_prepare_agreement.exit, label %.lr.ph.i94.i, !llvm.loop !67

mca_coll_ftagree_era_prepare_agreement.exit:      ; preds = %.lr.ph.i94.i, %era_agreement_value_set_gcrange.exit.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.0.i39, i64 32 ; 2 uses
  store i32 2, ptr %i.mf, align 8, !tbaa !29
  call fastcc void @era_check_status(ptr noundef nonnull %.0.i39)
  %i.mg = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @era_mutex, i64 16)) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  store volatile i32 2, ptr %i.aq, align 8, !tbaa !203
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store i32 4, ptr %i.mh, align 8, !tbaa !236
  %i.mi = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  store i64 0, ptr %i.mj, align 8, !tbaa !237
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr %i.mi, align 8, !tbaa !45
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.i, i64 152
  store ptr %6, ptr %i.mk, align 8, !tbaa !28
  store ptr null, ptr %i.at, align 8, !tbaa !238
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i, i64 120
  store ptr @era_iagree_req_free, ptr %i.ml, align 8, !tbaa !239
  %i.mm = getelementptr inbounds nuw i8, ptr %.0.i, i64 128
  store ptr null, ptr %i.mm, align 8, !tbaa !240
  store ptr @era_iagree_req_complete_cb, ptr %i.as, align 8, !tbaa !241
  %i.mn = getelementptr inbounds nuw i8, ptr %.0.i, i64 160
  %i.mo = or disjoint i64 %.sroa.10.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert = or disjoint i64 %i.mo, %.sroa.12.0.insert.shift.i
  store i64 %.sroa.0.0.insert.insert, ptr %i.mn, align 8, !tbaa !28
  %i.mp = getelementptr inbounds nuw i8, ptr %.0.i, i64 168
  store ptr %0, ptr %i.mp, align 8, !tbaa !242
  %i.mq = select i1 %5, ptr %4, ptr null
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.i, i64 176
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !243
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  store ptr %.0.i39, ptr %i.ms, align 8, !tbaa !244
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i39, i64 48
  store ptr %.0.i, ptr %i.mt, align 8, !tbaa !44
  %i.mu = load i32, ptr %i.mf, align 8, !tbaa !29
  %i.mv = icmp eq i32 %i.mu, 4
  br i1 %i.mv, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %mca_coll_ftagree_era_prepare_agreement.exit
  %i.mw = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @era_mutex, i64 16)) #20 ; 0 uses
  %i.mx = load ptr, ptr %i.as, align 8, !tbaa !245 ; 2 uses
  %.not.i41 = icmp eq ptr %i.mx, null
  br i1 %.not.i41, label %.critedge.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr null, ptr %i.as, align 8, !tbaa !245
  %i.my = call i32 %i.mx(ptr noundef nonnull %.0.i) #20, !inline_history !246
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %.critedge.i, label %ompi_request_complete.exit

.critedge.i:                                      ; preds = %bb.bf, %bb.be
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !tbaa !166
  br label %ompi_request_complete.exit

ompi_request_complete.exit:                       ; preds = %bb.bf, %.critedge.i
  %i.na = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @era_mutex, i64 16)) #20 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %ompi_request_complete.exit, %mca_coll_ftagree_era_prepare_agreement.exit
  store ptr %.0.i, ptr %7, align 8, !tbaa !164
  br label %bb.bh

bb.bh:                                            ; preds = %opal_free_list_get.exit, %bb.bg
  %.0 = phi i32 [ 0, %bb.bg ], [ -2, %opal_free_list_get.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mca_coll_ftagree_era_inter(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = icmp ne ptr %3, @ompi_mpi_op_band
  %i.e = icmp ne ptr %2, @ompi_mpi_int
  %or.cond = or i1 %i.e, %i.d
  %i.f = icmp ne i32 %1, 1
  %spec.select = or i1 %i.f, %or.cond
  br i1 %spec.select, label %bb.k, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @ompi_comm_determine_first_auto(ptr noundef %6) #20
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !220
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !247
  %i.l = call i32 @ompi_group_union(ptr noundef %i.i, ptr noundef %i.k, ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.m = load i32, ptr %0, align 4, !tbaa !45
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !220
  %i.r = call i32 @ompi_group_union(ptr noundef %i.o, ptr noundef %i.q, ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.s = load i32, ptr %0, align 4, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink36 = phi i32 [ -1, %bb.d ], [ %i.m, %bb.c ]
  %.sink = phi i32 [ %i.s, %bb.d ], [ -1, %bb.c ]
  store i32 %.sink36, ptr %i.c, align 4, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %.sink, ptr %i.t, align 4, !tbaa !45
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val = load i32, ptr %i.v, align 8, !tbaa !157
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !248
  %i.y = call i32 @ompi_comm_set(ptr noundef nonnull %i.a, ptr noundef nonnull %6, i32 noundef %.val, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %i.x, ptr noundef %i.u, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.z = call i32 @ompi_group_free(ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !249 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !250
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !155
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !155
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !251
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !251
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !252
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !252
  %i.an = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ak, i64 noundef 64, ptr noundef nonnull @.str.6, ptr noundef %i.am) #20 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 372
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !253
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !249 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 372
  store i32 %i.ap, ptr %i.ar, align 4, !tbaa !253
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 360 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !130
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 360
  store ptr %i.at, ptr %i.au, align 8, !tbaa !130
  %i.av = call i32 @mca_coll_ftagree_era_intra(ptr noundef nonnull %i.c, i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %i.aq, ptr noundef %7)
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !249 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 360
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !130 ; 3 uses
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !130
  %.not33 = icmp eq ptr %i.ay, null
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !62 ; 2 uses
  br i1 %.not33, label %opal_thread_add_fetch_32.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = trunc nuw i8 %.pre to i1
  br i1 %i.ba, label %opal_thread_add_fetch_32.exit.thread, label %opal_thread_add_fetch_32.exit.thread42, !prof !64

opal_thread_add_fetch_32.exit.thread:             ; preds = %bb.f
  %i.bb = atomicrmw volatile add ptr %i.az, i32 1 monotonic, align 4 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br label %bb.g

opal_thread_add_fetch_32.exit.thread42:           ; preds = %bb.f
  %i.bd = load volatile i32, ptr %i.az, align 4, !tbaa !45
  %i.be = add nsw i32 %i.bd, 1
  store volatile i32 %i.be, ptr %i.az, align 4, !tbaa !45
  %i.bf = load volatile i32, ptr %i.az, align 4, !tbaa !45 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br label %bb.h

opal_thread_add_fetch_32.exit:                    ; preds = %bb.e
  %.pre38 = trunc nuw i8 %.pre to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  br i1 %.pre38, label %bb.g, label %bb.h, !prof !254

bb.g:                                             ; preds = %opal_thread_add_fetch_32.exit.thread, %opal_thread_add_fetch_32.exit
  %i.bi = phi ptr [ %i.bc, %opal_thread_add_fetch_32.exit.thread ], [ %i.bh, %opal_thread_add_fetch_32.exit ]
  %i.bj = atomicrmw volatile add ptr %i.bi, i32 -1 monotonic, align 4
  %i.bk = add i32 %i.bj, -1
  br label %opal_thread_add_fetch_32.exit35

bb.h:                                             ; preds = %opal_thread_add_fetch_32.exit.thread42, %opal_thread_add_fetch_32.exit
  %i.bl = phi ptr [ %i.bg, %opal_thread_add_fetch_32.exit.thread42 ], [ %i.bh, %opal_thread_add_fetch_32.exit ] ; 3 uses
  %i.bm = load volatile i32, ptr %i.bl, align 4, !tbaa !45
  %i.bn = add nsw i32 %i.bm, -1
  store volatile i32 %i.bn, ptr %i.bl, align 4, !tbaa !45
  %i.bo = load volatile i32, ptr %i.bl, align 4, !tbaa !45
  br label %opal_thread_add_fetch_32.exit35

opal_thread_add_fetch_32.exit35:                  ; preds = %bb.g, %bb.h
  %.0.i34 = phi i32 [ %i.bk, %bb.g ], [ %i.bo, %bb.h ]
  %i.bp = icmp eq i32 %.0.i34, 0
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %opal_thread_add_fetch_32.exit35
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52 ; 2 uses
  %.not6.i = icmp eq ptr %i.bt, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.bu = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.bt, %bb.i ]
  %.07.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.bs, %bb.i ]
  call void %i.bu(ptr noundef nonnull %i.aw) #20, !inline_history !66
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !52 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !67

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre37 = load ptr, ptr %i.a, align 8, !tbaa !249
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.i
  %i.bx = phi ptr [ %.pre37, %opal_obj_run_destructors.exit.loopexit ], [ %i.aw, %bb.i ]
  call void @free(ptr noundef %i.bx) #20
  br label %bb.j

bb.j:                                             ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit35
  %i.by = load i32, ptr %i.t, align 4
  %i.bz = load i32, ptr %i.c, align 4
  %i.ca = select i1 %.not, i32 %i.bz, i32 %i.by
  store i32 %i.ca, ptr %0, align 4, !tbaa !45
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.0 = phi i32 [ %i.av, %bb.j ], [ 52, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

declare i32 @ompi_comm_determine_first_auto(ptr noundef) local_unnamed_addr #6

declare i32 @ompi_group_union(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ompi_comm_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @ompi_group_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal noundef i32 @era_iagree_req_free(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !164    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr null, ptr %i.d, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !244
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store volatile i32 0, ptr %i.e, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !255  ; 2 uses
  %.not11 = icmp eq i32 %i.g, -32766
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_request_f_to_c_table, i32 noundef %i.g, ptr noundef null) #20 ; 0 uses
  store i32 -32766, ptr %i.f, align 8, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !62, !noundef !63
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 24), align 8, !tbaa !28 ; 3 uses
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.04.i.i.i = inttoptr i64 %i.k to ptr           ; 2 uses
  store volatile ptr %.04.i.i.i, ptr %i.l, align 8, !tbaa !59
  fence release
  %i.m = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.n = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 24), i64 %i.k, i64 %i.m acquire monotonic, align 8 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i: ; preds = %bb.f, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i
  %i.p = phi { i64, i1 } [ %i.r, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ], [ %i.n, %bb.f ]
  %i.q = extractvalue { i64, i1 } %i.p, 0         ; 2 uses
  %.0.i.i.i = inttoptr i64 %i.q to ptr            ; 2 uses
  store volatile ptr %.0.i.i.i, ptr %i.l, align 8, !tbaa !59
  fence release
  %i.r = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 24), i64 %i.q, i64 %i.m acquire monotonic, align 8 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_lifo_push_atomic.exit.i.i:                   ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %.04.i.i.i, %bb.f ], [ %.0.i.i.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ]
  %i.t = icmp ne ptr %.0.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 32)
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 104), align 8
  %.not.i.i = icmp eq i64 %i.u, 0
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %opal_free_list_return.exit, label %bb.g

bb.g:                                             ; preds = %opal_lifo_push_atomic.exit.i.i
  %i.v = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 248), align 8, !tbaa !256
  %.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

bb.h:                                             ; preds = %bb.e
  %i.w = inttoptr i64 %i.k to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store volatile ptr %i.w, ptr %i.x, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.y, align 8, !tbaa !199
  %i.z = ptrtoint ptr %i.a to i64
  store volatile i64 %i.z, ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 24), align 8, !tbaa !28
  %i.aa = load volatile ptr, ptr %i.x, align 8, !tbaa !59
  %i.ab = icmp ne ptr %i.aa, getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 32)
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 104), align 8
  %.not.i4.i = icmp eq i64 %i.ac, 0
  %or.cond.i5.i = select i1 %i.ab, i1 true, i1 %.not.i4.i
  br i1 %or.cond.i5.i, label %opal_free_list_return.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 248), align 8, !tbaa !256
  %.not.i.i6.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i6.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

opal_free_list_return_mt.exit.sink.split.i:       ; preds = %bb.i, %bb.g
  %i.ae = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 252), align 4, !tbaa !257
  %i.af = add nsw i32 %i.ae, 1
  store volatile i32 %i.af, ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 252), align 4, !tbaa !257
  br label %opal_free_list_return.exit

opal_free_list_return.exit:                       ; preds = %opal_lifo_push_atomic.exit.i.i, %bb.g, %bb.h, %bb.i, %opal_free_list_return_mt.exit.sink.split.i
  store ptr @ompi_request_null, ptr %0, align 8, !tbaa !164
end_hunk_0
