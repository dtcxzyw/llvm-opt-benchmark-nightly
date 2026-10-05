Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ras_base_allocate?download=true
inline.NumInlined: 110
inline.NumDeleted: 14
begin_hunk_0_@prte_ras_base_add_hosts:bb.a
  call void @free(ptr noundef %i.fh) #16
  %i.fp = call ptr @pmix_getline(ptr noundef nonnull %i.dn) #16 ; 2 uses
  %.not282 = icmp eq ptr %i.fp, null
  br i1 %.not282, label %._crit_edge, label %.lr.ph448, !llvm.loop !133

thread-pre-split:                                 ; preds = %thread-pre-split.lr.ph, %thread-pre-split
  %.0228648 = phi ptr [ %i.fh, %thread-pre-split.lr.ph ], [ %i.fq, %thread-pre-split ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0228648, i64 1 ; 3 uses
  %.pr = load i8, ptr %i.fq, align 1, !tbaa !67   ; 2 uses
  %i.fr = sext i8 %.pr to i64
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.fk, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !148
  %i.fu = and i16 %i.ft, 8192
  %.not283 = icmp eq i16 %i.fu, 0
  br i1 %.not283, label %._crit_edge649, label %thread-pre-split, !llvm.loop !132

._crit_edge649:                                   ; preds = %thread-pre-split
  br label %bb.ad, !llvm.loop !132

bb.ad:                                            ; preds = %._crit_edge649, %.preheader406
  %.lcssa624 = phi i8 [ %.pr, %._crit_edge649 ], [ %char0, %.preheader406 ] ; 2 uses
  %.0228.lcssa = phi ptr [ %i.fq, %._crit_edge649 ], [ %i.fh, %.preheader406 ] ; 5 uses
  switch i8 %.lcssa624, label %.lr.ph [
    i8 35, label %.backedge
    i8 0, label %.critedge.thread
  ]

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %i.fv = phi i8 [ %i.gb, %bb.ae ], [ %.lcssa624, %bb.ad ]
  %.0225441 = phi ptr [ %i.ga, %bb.ae ], [ %.0228.lcssa, %bb.ad ] ; 3 uses
  %i.fw = sext i8 %i.fv to i64
  %i.fx = getelementptr inbounds [2 x i8], ptr %i.fk, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !148
  %i.fz = and i16 %i.fy, 8192
  %.not285 = icmp eq i16 %i.fz, 0
  br i1 %.not285, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %.lr.ph
  %i.ga = getelementptr inbounds nuw i8, ptr %.0225441, i64 1 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !67  ; 2 uses
  %.not284 = icmp eq i8 %i.gb, 0
  br i1 %.not284, label %.critedge.thread, label %.lr.ph, !llvm.loop !134

.critedge:                                        ; preds = %.lr.ph
  store i8 0, ptr %.0225441, align 1, !tbaa !67
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge5.backedge, %.critedge
  %.0225.pn = phi ptr [ %.0225441, %.critedge ], [ %.1226, %.critedge5.backedge ]
  %.1226 = getelementptr inbounds nuw i8, ptr %.0225.pn, i64 1 ; 3 uses
  %i.gc = load i8, ptr %.1226, align 1, !tbaa !67
  switch i8 %i.gc, label %.critedge5.backedge [
    i8 0, label %.critedge.thread
    i8 61, label %bb.af
  ]

.critedge5.backedge:                              ; preds = %.critedge5, %bb.af
  br label %.critedge5, !llvm.loop !135

bb.af:                                            ; preds = %.critedge5
  %i.gd = load ptr, ptr %i.fj, align 8, !tbaa !147 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 122
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !148
  %i.gg = and i16 %i.gf, 8192
  %.not288 = icmp eq i16 %i.gg, 0
  br i1 %.not288, label %.critedge3, label %.critedge5.backedge

.critedge3:                                       ; preds = %bb.af, %bb.ag
  %.1226.pn = phi ptr [ %.2227, %bb.ag ], [ %.1226, %bb.af ]
  %.2227 = getelementptr inbounds nuw i8, ptr %.1226.pn, i64 1 ; 3 uses
  %i.gh = load i8, ptr %.2227, align 1, !tbaa !67 ; 3 uses
  %.not289 = icmp eq i8 %i.gh, 0
  br i1 %.not289, label %.critedge7.thread, label %bb.ag

bb.ag:                                            ; preds = %.critedge3
  %i.gi = sext i8 %i.gh to i64
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.gd, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !148
  %i.gl = and i16 %i.gk, 8192
  %.not290 = icmp eq i16 %i.gl, 0
  br i1 %.not290, label %.critedge7, label %.critedge3, !llvm.loop !136

.critedge7:                                       ; preds = %bb.ag
  %i.gm = add i8 %i.gh, -43
  %switch.and = and i8 %i.gm, -3
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %i.gn = call i64 @__isoc23_strtol(ptr noundef nonnull %.2227, ptr noundef null, i32 noundef 10) #16
  %i.go = trunc i64 %i.gn to i32
  br label %.critedge.thread

.critedge7.thread:                                ; preds = %.critedge3
  %i.gp = call ptr @prte_strerror(i32 noundef -5) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef %i.gp, ptr noundef nonnull @.str.24, i32 noundef 940) #16
  %i.gq = call i32 @fclose(ptr noundef nonnull %i.dn) ; 0 uses
  call void @free(ptr noundef %i.fh) #16
  call void @PMIx_Argv_free(ptr noundef nonnull %i.dj) #16
  %i.gr = load volatile i64, ptr %i.cr, align 8, !tbaa !77
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %._crit_edge472, label %.lr.ph471

.lr.ph471:                                        ; preds = %.critedge7.thread
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph471, %bb.am
  %i.gu = load volatile i64, ptr %i.cr, align 8, !tbaa !77
  %i.gv = add i64 %i.gu, -1
  store volatile i64 %i.gv, ptr %i.cr, align 8, !tbaa !77
  %i.gw = load ptr, ptr %i.gt, align 8, !tbaa !66 ; 11 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 128
  %i.gy = load volatile ptr, ptr %i.gx, align 8, !tbaa !76
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 120 ; 2 uses
  %i.ha = load volatile ptr, ptr %i.gz, align 8, !tbaa !68
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 128
  store volatile ptr %i.gy, ptr %i.hb, align 8, !tbaa !76
  %i.hc = load volatile ptr, ptr %i.gz, align 8, !tbaa !68
  store ptr %i.hc, ptr %i.gt, align 8, !tbaa !66
  %i.hd = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.gw) #16
  %i.he = icmp eq i32 %i.hd, 35
  br i1 %i.he, label %bb.ai, label %pmix_obj_update.exit303

bb.ai:                                            ; preds = %bb.ah
  %i.hf = tail call ptr @__errno_location() #18
  store i32 35, ptr %i.hf, align 4, !tbaa !52
  call void @perror(ptr noundef nonnull @.str.49) #19
  call void @abort() #20
  unreachable

pmix_obj_update.exit303:                          ; preds = %bb.ah
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 48 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !62
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  store i32 %i.hi, ptr %i.hg, align 8, !tbaa !62
  %i.hj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gw) #16 ; 0 uses
  %i.hk = icmp eq i32 %i.hi, 0
  br i1 %i.hk, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %pmix_obj_update.exit303
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !61
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !64 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !40 ; 2 uses
  %.not6.i339 = icmp eq ptr %i.hp, null
  br i1 %.not6.i339, label %pmix_obj_run_destructors.exit343, label %.lr.ph.i340

.lr.ph.i340:                                      ; preds = %bb.aj, %.lr.ph.i340
  %i.hq = phi ptr [ %i.hs, %.lr.ph.i340 ], [ %i.hp, %bb.aj ]
  %.07.i341 = phi ptr [ %i.hr, %.lr.ph.i340 ], [ %i.ho, %bb.aj ]
  call void %i.hq(ptr noundef nonnull %i.gw) #16, !inline_history !2
  %i.hr = getelementptr inbounds nuw i8, ptr %.07.i341, i64 8 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !40 ; 2 uses
  %.not.i342 = icmp eq ptr %i.hs, null
  br i1 %.not.i342, label %pmix_obj_run_destructors.exit343, label %.lr.ph.i340, !llvm.loop !3

pmix_obj_run_destructors.exit343:                 ; preds = %.lr.ph.i340, %bb.aj
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !65 ; 2 uses
  %.not292 = icmp eq ptr %i.hu, null
  br i1 %.not292, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %pmix_obj_run_destructors.exit343
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  call void %i.hu(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.gw) #16, !inline_history !4
  br label %bb.am

bb.al:                                            ; preds = %pmix_obj_run_destructors.exit343
  call void @free(ptr noundef nonnull %i.gw) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %pmix_obj_update.exit303
  %i.hw = load volatile i64, ptr %i.cr, align 8, !tbaa !77
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %._crit_edge472, label %bb.ah, !llvm.loop !137

._crit_edge472:                                   ; preds = %bb.am, %.critedge7.thread
  %i.hy = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !64 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !40 ; 2 uses
  %.not6.i345 = icmp eq ptr %i.ib, null
  br i1 %.not6.i345, label %pmix_obj_run_destructors.exit320, label %.lr.ph.i346

.lr.ph.i346:                                      ; preds = %._crit_edge472, %.lr.ph.i346
  %i.ic = phi ptr [ %i.ie, %.lr.ph.i346 ], [ %i.ib, %._crit_edge472 ]
  %.07.i347 = phi ptr [ %i.id, %.lr.ph.i346 ], [ %i.ia, %._crit_edge472 ]
  call void %i.ic(ptr noundef nonnull %1) #16, !inline_history !2
  %i.id = getelementptr inbounds nuw i8, ptr %.07.i347, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !40 ; 2 uses
  %.not.i348 = icmp eq ptr %i.ie, null
  br i1 %.not.i348, label %pmix_obj_run_destructors.exit320, label %.lr.ph.i346, !llvm.loop !3

.critedge.thread:                                 ; preds = %bb.ae, %.critedge5, %bb.ad, %.critedge7
  %.0237 = phi i32 [ %i.go, %.critedge7 ], [ %.2, %bb.ad ], [ %.2, %.critedge5 ], [ %.2, %bb.ae ] ; 3 uses
  %.1223 = phi i1 [ %switch.selectcmp, %.critedge7 ], [ false, %bb.ad ], [ false, %.critedge5 ], [ false, %bb.ae ] ; 2 uses
  %i.if = call zeroext i1 @prte_check_host_is_local(ptr noundef nonnull %.0228.lcssa) #16
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 800), align 8
  %.0224 = select i1 %i.if, ptr %i.ig, ptr %.0228.lcssa
  %i.ih = load ptr, ptr @prte_node_pool, align 8, !tbaa !35 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 128
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 152
  %2 = load i32, ptr %i.ii, align 8, !tbaa !38    ; 2 uses
  %3 = sext i32 %2 to i64
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %pmix_pointer_array_get_item.exit352.preheader, label %.critedge9

pmix_pointer_array_get_item.exit352.preheader:    ; preds = %.critedge.thread
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !39
  br label %pmix_pointer_array_get_item.exit352

pmix_pointer_array_get_item.exit352:              ; preds = %pmix_pointer_array_get_item.exit352.preheader, %.loopexit403
  %indvars.iv513651 = phi i64 [ %indvars.iv.next514, %.loopexit403 ], [ 0, %pmix_pointer_array_get_item.exit352.preheader ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv513651
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !40 ; 5 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %.loopexit403, label %bb.an

bb.an:                                            ; preds = %pmix_pointer_array_get_item.exit352
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 152
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !41
  %i.iq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0224, ptr noundef nonnull dereferenceable(1) %i.ip) #17
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  br i1 %.1223, label %bb.ap, label %.backedge

bb.ap:                                            ; preds = %bb.ao
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 220 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !42
  %i.iu = add nsw i32 %i.it, %.0237
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.iu, i32 0)
  store i32 %spec.store.select, ptr %i.is, align 4
  br label %.backedge

bb.aq:                                            ; preds = %bb.an
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 168
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !46 ; 3 uses
  %.not293 = icmp eq ptr %i.iw, null
  br i1 %.not293, label %.loopexit403, label %.preheader402

.preheader402:                                    ; preds = %bb.aq
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !30 ; 2 uses
  %.not294442 = icmp eq ptr %i.ix, null
  br i1 %.not294442, label %.loopexit403, label %.lr.ph444

bb.ar:                                            ; preds = %.lr.ph444
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv.next511
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !30 ; 2 uses
  %.not294 = icmp eq ptr %i.iz, null
  br i1 %.not294, label %.loopexit403, label %.lr.ph444, !llvm.loop !138

.lr.ph444:                                        ; preds = %.preheader402, %bb.ar
  %indvars.iv510 = phi i64 [ %indvars.iv.next511, %bb.ar ], [ 0, %.preheader402 ]
  %i.ja = phi ptr [ %i.iz, %bb.ar ], [ %i.ix, %.preheader402 ]
  %i.jb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0228.lcssa, ptr noundef nonnull dereferenceable(1) %i.ja) #17
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.as, label %bb.ar

bb.as:                                            ; preds = %.lr.ph444
  br i1 %.1223, label %bb.at, label %.backedge

bb.at:                                            ; preds = %bb.as
  %i.jd = getelementptr inbounds nuw i8, ptr %i.im, i64 220 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !42
  %i.jf = add nsw i32 %i.je, %.0237
  %spec.store.select300 = call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  store i32 %spec.store.select300, ptr %i.jd, align 4
  br label %.backedge

.loopexit403:                                     ; preds = %bb.ar, %.preheader402, %bb.aq, %pmix_pointer_array_get_item.exit352
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513651, 1 ; 2 uses
  %5 = icmp slt i64 %indvars.iv.next514, %3
  br i1 %5, label %pmix_pointer_array_get_item.exit352, label %.critedge9, !llvm.loop !139

.critedge9:                                       ; preds = %.loopexit403, %.critedge.thread
  %i.jg = load i64, ptr getelementptr inbounds nuw (i8, ptr @prte_node_t_class, i64 56), align 8, !tbaa !75
  %i.jh = call noalias noundef ptr @malloc(i64 noundef %i.jg) #21 ; 13 uses
  %i.ji = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !52
  %i.jj = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_node_t_class, i64 32), align 8, !tbaa !60
  %.not.i353 = icmp eq i32 %i.ji, %i.jj
  br i1 %.not.i353, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.critedge9
  call void @pmix_class_initialize(ptr noundef nonnull @prte_node_t_class) #16
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.critedge9
  %.not22.i = icmp eq ptr %i.jh, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jk = call i32 @pthread_mutex_init(ptr noundef nonnull %i.jh, ptr noundef null) #16 ; 0 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  store ptr @prte_node_t_class, ptr %i.jl, align 8, !tbaa !61
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  store i32 1, ptr %i.jm, align 8, !tbaa !62
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jn, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jo, i8 0, i64 24, i1 false)
  %i.jp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_node_t_class, i64 40), align 8, !tbaa !63 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !40 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.jq, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aw, %.lr.ph.i.i
  %i.jr = phi ptr [ %i.jt, %.lr.ph.i.i ], [ %i.jq, %bb.aw ]
  %.07.i.i = phi ptr [ %i.js, %.lr.ph.i.i ], [ %i.jp, %bb.aw ]
  call void %i.jr(ptr noundef nonnull %i.jh) #16, !inline_history !5
  %i.js = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !1

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.av, %bb.aw
  %i.ju = call noalias ptr @strdup(ptr noundef nonnull %.0228.lcssa) #16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jh, i64 152
  store ptr %i.ju, ptr %i.jv, align 8, !tbaa !41
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jh, i64 220
  store i32 %.0237, ptr %i.jw, align 4, !tbaa !42
  %i.jx = load ptr, ptr %i.cq, align 8, !tbaa !76 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jh, i64 128
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !76
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 120
  store volatile ptr %i.jh, ptr %i.jz, align 8, !tbaa !68
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jh, i64 120
  store ptr %i.cp, ptr %i.ka, align 8, !tbaa !68
  store ptr %i.jh, ptr %i.cq, align 8, !tbaa !76
  %i.kb = load volatile i64, ptr %i.cr, align 8, !tbaa !77
  %i.kc = add i64 %i.kb, 1
  store volatile i64 %i.kc, ptr %i.cr, align 8, !tbaa !77
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %.preheader407
  %i.kd = call i32 @fclose(ptr noundef nonnull %i.dn) ; 0 uses
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next517
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !30 ; 2 uses
  %.not281 = icmp eq ptr %i.kf, null
  br i1 %.not281, label %._crit_edge455, label %.lr.ph454, !llvm.loop !140

._crit_edge455:                                   ; preds = %._crit_edge, %bb.v
  call void @PMIx_Argv_free(ptr noundef nonnull %i.dj) #16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.r, %._crit_edge455, %pmix_pointer_array_get_item.exit323
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %i.kg = load ptr, ptr %i.l, align 8, !tbaa !74  ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 128
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !38
  %i.kj = sext i32 %i.ki to i64
  %i.kk = icmp slt i64 %indvars.iv.next520, %i.kj
  br i1 %i.kk, label %pmix_pointer_array_get_item.exit323, label %._crit_edge457, !llvm.loop !141

._crit_edge457:                                   ; preds = %bb.ax, %.loopexit409
  %i.kl = phi ptr [ %i.cl, %.loopexit409 ], [ %i.kg, %bb.ax ]
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 5 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !66
  %i.kp = icmp ne ptr %i.ko, %i.km                ; 3 uses
  br i1 %i.kp, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %._crit_edge457
  %i.kq = call i32 @prte_ras_base_node_insert(ptr noundef nonnull %1, ptr noundef nonnull %0) #16 ; 2 uses
  switch i32 %i.kq, label %bb.az [
    i32 -43, label %bb.ba
    i32 0, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.kr = call ptr @prte_strerror(i32 noundef %i.kq) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef %i.kr, ptr noundef nonnull @.str.24, i32 noundef 1014) #16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.ay, %bb.az
  store i8 0, ptr @prte_nidmap_communicated, align 1, !tbaa !32
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !74
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge457
  %i.ks = phi ptr [ %.pre, %bb.ba ], [ %i.kl, %._crit_edge457 ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 128
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !38
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %pmix_pointer_array_get_item.exit356, label %._crit_edge459

pmix_pointer_array_get_item.exit356:              ; preds = %bb.bb, %bb.bj
  %indvars.iv522 = phi i64 [ %indvars.iv.next523, %bb.bj ], [ 0, %bb.bb ] ; 2 uses
  %i.kw = phi ptr [ %i.ly, %bb.bj ], [ %i.ks, %bb.bb ]
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 152
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !39
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv522
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !40 ; 2 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %pmix_pointer_array_get_item.exit356
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 352 ; 2 uses
  %i.ld = call zeroext i1 @prte_get_attribute(ptr noundef nonnull %i.lc, i16 noundef zeroext 4, ptr noundef nonnull %i.a, i16 noundef zeroext 3) #16
  br i1 %i.ld, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.le = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4, !tbaa !55 ; 3 uses
  %or.cond11 = icmp ult i32 %i.le, 64
  br i1 %or.cond11, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !57
  %i.lj = icmp sgt i32 %i.li, 4
  br i1 %i.lj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lk = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.ll = load ptr, ptr %i.a, align 8, !tbaa !30
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.le, ptr noundef nonnull @.str.41, ptr noundef %i.lk, ptr noundef %i.ll) #16
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.lm = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ln = call i32 @prte_util_add_dash_host_nodes(ptr noundef nonnull %1, ptr noundef %i.lm, i1 noundef zeroext true) #16 ; 3 uses
  switch i32 %i.ln, label %bb.bh [
    i32 0, label %bb.bi
    i32 -43, label %.loopexit
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.lo = call ptr @prte_strerror(i32 noundef %i.ln) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef %i.lo, ptr noundef nonnull @.str.24, i32 noundef 1040) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bg, %bb.bh
  %i.lp = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !64 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !40 ; 2 uses
  %.not6.i357 = icmp eq ptr %i.ls, null
  br i1 %.not6.i357, label %pmix_obj_run_destructors.exit361, label %.lr.ph.i358

.lr.ph.i358:                                      ; preds = %.loopexit, %.lr.ph.i358
  %i.lt = phi ptr [ %i.lv, %.lr.ph.i358 ], [ %i.ls, %.loopexit ]
  %.07.i359 = phi ptr [ %i.lu, %.lr.ph.i358 ], [ %i.lr, %.loopexit ]
  call void %i.lt(ptr noundef nonnull %1) #16, !inline_history !2
  %i.lu = getelementptr inbounds nuw i8, ptr %.07.i359, i64 8 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !40 ; 2 uses
  %.not.i360 = icmp eq ptr %i.lv, null
  br i1 %.not.i360, label %pmix_obj_run_destructors.exit361, label %.lr.ph.i358, !llvm.loop !3

pmix_obj_run_destructors.exit361:                 ; preds = %.lr.ph.i358, %.loopexit
  %i.lw = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @free(ptr noundef %i.lw) #16
  br label %pmix_obj_run_destructors.exit320

bb.bi:                                            ; preds = %bb.bg
  call void @prte_remove_attribute(ptr noundef nonnull %i.lc, i16 noundef zeroext 4) #16
  %i.lx = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @free(ptr noundef %i.lx) #16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bc, %bb.bi, %pmix_pointer_array_get_item.exit356
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %i.ly = load ptr, ptr %i.l, align 8, !tbaa !74  ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 128
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !38
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp slt i64 %indvars.iv.next523, %i.mb
  br i1 %i.mc, label %pmix_pointer_array_get_item.exit356, label %._crit_edge459, !llvm.loop !142

._crit_edge459:                                   ; preds = %bb.bj, %bb.bb
  %i.md = load ptr, ptr %i.kn, align 8, !tbaa !66 ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.km
end_hunk_0
