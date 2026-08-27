Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_ftagree_earlyreturning?download=true
inline.NumInlined: 266
inline.NumDeleted: 81
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mca_coll_ftagree_era_init:bb.a
bb.e:                                             ; preds = %opal_obj_run_constructors.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %opal_obj_run_constructors.exit
  store ptr @opal_mutex_t_class, ptr @era_incomplete_msg_mutex, align 8, !tbaa !49
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @era_incomplete_msg_mutex, i64 8), align 8, !tbaa !50
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !51 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 2 uses
  %.not6.i6 = icmp eq ptr %i.m, null
  br i1 %.not6.i6, label %opal_obj_run_constructors.exit10, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.f, %.lr.ph.i7
  %i.n = phi ptr [ %i.p, %.lr.ph.i7 ], [ %i.m, %bb.f ]
  %.07.i8 = phi ptr [ %i.o, %.lr.ph.i7 ], [ %i.l, %bb.f ]
  tail call void %i.n(ptr noundef nonnull @era_incomplete_msg_mutex) #20, !inline_history !53
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i8, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52   ; 2 uses
  %.not.i9 = icmp eq ptr %i.p, null
  br i1 %.not.i9, label %opal_obj_run_constructors.exit10, label %.lr.ph.i7, !llvm.loop !54

opal_obj_run_constructors.exit10:                 ; preds = %.lr.ph.i7, %bb.f
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_bml, i64 56), align 8, !tbaa !82
  %i.r = tail call i32 %i.q(i8 noundef zeroext 49, ptr noundef nonnull @era_cb_fn, ptr noundef null) #20 ; 0 uses
  %i.s = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !45
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_free_list_t_class, i64 32), align 8, !tbaa !46
  %.not2 = icmp eq i32 %i.s, %i.t
  br i1 %.not2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %opal_obj_run_constructors.exit10
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_free_list_t_class) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %opal_obj_run_constructors.exit10
  store ptr @opal_free_list_t_class, ptr @era_iagree_requests, align 16, !tbaa !49
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @era_iagree_requests, i64 8), align 8, !tbaa !50
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_free_list_t_class, i64 40), align 8, !tbaa !51 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52   ; 2 uses
  %.not6.i11 = icmp eq ptr %i.v, null
  br i1 %.not6.i11, label %opal_obj_run_constructors.exit15, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.h, %.lr.ph.i12
  %i.w = phi ptr [ %i.y, %.lr.ph.i12 ], [ %i.v, %bb.h ]
  %.07.i13 = phi ptr [ %i.x, %.lr.ph.i12 ], [ %i.u, %bb.h ]
  tail call void %i.w(ptr noundef nonnull @era_iagree_requests) #20, !inline_history !53
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i13, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52   ; 2 uses
  %.not.i14 = icmp eq ptr %i.y, null
  br i1 %.not.i14, label %opal_obj_run_constructors.exit15, label %.lr.ph.i12, !llvm.loop !54

opal_obj_run_constructors.exit15:                 ; preds = %.lr.ph.i12, %bb.h
  %i.z = load i32, ptr @opal_cache_line_size, align 4, !tbaa !45
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = tail call i32 @opal_free_list_init(ptr noundef nonnull @era_iagree_requests, i64 noundef 192, i64 noundef %i.aa, ptr noundef nonnull @ompi_coll_ftagree_era_iagree_request_t_class, i64 noundef 0, i64 noundef %i.aa, i32 noundef 0, i32 noundef 2147483647, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  %i.ac = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !45
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 32), align 8, !tbaa !46
  %.not3 = icmp eq i32 %i.ac, %i.ad
  br i1 %.not3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %opal_obj_run_constructors.exit15
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_hash_table_t_class) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %opal_obj_run_constructors.exit15
  store ptr @opal_hash_table_t_class, ptr @era_passed_agreements, align 8, !tbaa !49
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @era_passed_agreements, i64 8), align 8, !tbaa !50
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 40), align 8, !tbaa !51 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52 ; 2 uses
  %.not6.i16 = icmp eq ptr %i.af, null
  br i1 %.not6.i16, label %opal_obj_run_constructors.exit20, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.j, %.lr.ph.i17
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i17 ], [ %i.af, %bb.j ]
  %.07.i18 = phi ptr [ %i.ah, %.lr.ph.i17 ], [ %i.ae, %bb.j ]
  tail call void %i.ag(ptr noundef nonnull @era_passed_agreements) #20, !inline_history !53
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i18, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52 ; 2 uses
  %.not.i19 = icmp eq ptr %i.ai, null
  br i1 %.not.i19, label %opal_obj_run_constructors.exit20, label %.lr.ph.i17, !llvm.loop !54

opal_obj_run_constructors.exit20:                 ; preds = %.lr.ph.i17, %bb.j
  %i.aj = tail call i32 @opal_hash_table_init(ptr noundef nonnull @era_passed_agreements, i64 noundef 32) #20 ; 0 uses
  %i.ak = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !45
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 32), align 8, !tbaa !46
  %.not4 = icmp eq i32 %i.ak, %i.al
  br i1 %.not4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %opal_obj_run_constructors.exit20
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_hash_table_t_class) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %opal_obj_run_constructors.exit20
  store ptr @opal_hash_table_t_class, ptr @era_ongoing_agreements, align 8, !tbaa !49
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @era_ongoing_agreements, i64 8), align 8, !tbaa !50
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 40), align 8, !tbaa !51 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %.not6.i21 = icmp eq ptr %i.an, null
  br i1 %.not6.i21, label %opal_obj_run_constructors.exit25, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.l, %.lr.ph.i22
  %i.ao = phi ptr [ %i.aq, %.lr.ph.i22 ], [ %i.an, %bb.l ]
  %.07.i23 = phi ptr [ %i.ap, %.lr.ph.i22 ], [ %i.am, %bb.l ]
  tail call void %i.ao(ptr noundef nonnull @era_ongoing_agreements) #20, !inline_history !53
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i23, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52 ; 2 uses
  %.not.i24 = icmp eq ptr %i.aq, null
  br i1 %.not.i24, label %opal_obj_run_constructors.exit25, label %.lr.ph.i22, !llvm.loop !54

opal_obj_run_constructors.exit25:                 ; preds = %.lr.ph.i22, %bb.l
  %i.ar = tail call i32 @opal_hash_table_init(ptr noundef nonnull @era_ongoing_agreements, i64 noundef 16) #20 ; 0 uses
  %i.as = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !45
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 32), align 8, !tbaa !46
  %.not5 = icmp eq i32 %i.as, %i.at
  br i1 %.not5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %opal_obj_run_constructors.exit25
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_hash_table_t_class) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %opal_obj_run_constructors.exit25
  store ptr @opal_hash_table_t_class, ptr @era_incomplete_messages, align 8, !tbaa !49
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @era_incomplete_messages, i64 8), align 8, !tbaa !50
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 40), align 8, !tbaa !51 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52 ; 2 uses
  %.not6.i26 = icmp eq ptr %i.av, null
  br i1 %.not6.i26, label %opal_obj_run_constructors.exit30, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.n, %.lr.ph.i27
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i27 ], [ %i.av, %bb.n ]
  %.07.i28 = phi ptr [ %i.ax, %.lr.ph.i27 ], [ %i.au, %bb.n ]
  tail call void %i.aw(ptr noundef nonnull @era_incomplete_messages) #20, !inline_history !53
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i28, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52 ; 2 uses
  %.not.i29 = icmp eq ptr %i.ay, null
  br i1 %.not.i29, label %opal_obj_run_constructors.exit30, label %.lr.ph.i27, !llvm.loop !54

opal_obj_run_constructors.exit30:                 ; preds = %.lr.ph.i27, %bb.n
  %i.az = tail call i32 @opal_hash_table_init(ptr noundef nonnull @era_incomplete_messages, i64 noundef 65536) #20 ; 0 uses
  %i.ba = load ptr, ptr @ompi_rank_failure_cbfunc, align 8, !tbaa !52
  store ptr %i.ba, ptr @ompi_stacked_rank_failure_callback_fct, align 8, !tbaa !52
  store ptr @era_on_comm_rank_failure, ptr @ompi_rank_failure_cbfunc, align 8, !tbaa !52
  store i1 true, ptr @era_inited, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %opal_obj_run_constructors.exit30
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @era_tree_fn_binary(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.d, align 4, !tbaa !88
  %exitcond.peel.not = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %.lr.ph.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.e = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %1, 2
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader27.new

.lr.ph.preheader27.new:                           ; preds = %.lr.ph.preheader27
  %unroll_iter = and i64 %i.e, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader27.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader27.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader27.new ], [ %niter.next.1, %.lr.ph ]
  %i.g = trunc i64 %indvars.iv to i32
  %i.h = lshr i32 %i.g, 1
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.h, ptr %i.j, align 4, !tbaa !85
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.k = shl i32 %indvars.iv.tr, 1
  %i.l = or disjoint i32 %i.k, 1
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.o, ptr %i.p, align 4, !tbaa !88
  %i.q = trunc i64 %indvars.iv.next to i32
  %i.r = add i32 %i.q, -1
  %i.s = lshr i32 %i.r, 1
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.s, ptr %i.u, align 4, !tbaa !85
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.v = shl i32 %indvars.iv.tr.1, 1
  %i.w = or disjoint i32 %i.v, 1
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 %i.x, ptr %i.y, align 4, !tbaa !87
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %1, ptr %i.z, align 4, !tbaa !88
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !89

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader27
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader27 ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod28 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aa = trunc i64 %indvars.iv.epil.init to i32
  %i.ab = add i32 %i.aa, -1
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.epil.init ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !85
  %indvars.iv.tr.epil = trunc i64 %indvars.iv.epil.init to i32
  %i.af = shl i32 %indvars.iv.tr.epil, 1
  %i.ag = or disjoint i32 %i.af, 1
  %i.ah = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %1)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !87
  %.not21.epil = trunc i64 %indvars.iv.epil.init to i1
  %i.aj = trunc i64 %indvars.iv.epil.init to i32
  %i.ak = add i32 %i.aj, 1
  %i.al = select i1 %.not21.epil, i32 %i.ak, i32 %1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.al, ptr %i.am, align 4, !tbaa !88
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @era_tree_fn_string(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 1)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.d, ptr %i.f, align 4, !tbaa !85
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %1, ptr %i.i, align 4, !tbaa !88
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.k = add nsw i32 %i.j, -1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.k, ptr %i.m, align 4, !tbaa !85
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.o = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %1, ptr %i.p, align 4, !tbaa !88
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !91

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod15 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.q = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.r = tail call i32 @llvm.usub.sat.i32(i32 %i.q, i32 1)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.epil.init ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.v = trunc i64 %indvars.iv.epil.init to i32
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.x, align 4, !tbaa !88
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @era_tree_fn_star(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.d, align 4, !tbaa !88
  %exitcond.peel.not = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.e = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = add nsw i32 %1, -2
  %i.g = icmp ult i32 %i.f, 3
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader18.new

.lr.ph.preheader18.new:                           ; preds = %.lr.ph.preheader18
  %unroll_iter = and i64 %i.e, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader18.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader18.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader18.new ], [ %niter.next.3, %.lr.ph ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %1, ptr %i.j, align 4, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.k, ptr %i.l, align 4, !tbaa !88
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %1, ptr %i.o, align 4, !tbaa !87
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %i.p, ptr %i.q, align 4, !tbaa !88
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next.1 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %1, ptr %i.t, align 4, !tbaa !87
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.u = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.u, ptr %i.v, align 4, !tbaa !88
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next.2 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !85
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %1, ptr %i.y, align 4, !tbaa !87
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !88
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !92

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader18
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader18 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.epil ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %i.ac, align 4, !tbaa !85
end_hunk_0
