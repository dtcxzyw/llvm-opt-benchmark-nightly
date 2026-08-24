Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/gds_hash?download=true
inline.NumInlined: 189
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hash_store_job_info:bb.a
  %i.ow = icmp eq i8 %.pre, %.pre811
  br i1 %i.ow, label %.thread908, label %.thread600

.thread908:                                       ; preds = %pmix_obj_run_constructors.exit426, %bb.cp, %bb.cq
  %i.ox = phi ptr [ %.pre809, %bb.cq ], [ %i.of, %bb.cp ], [ %i.of, %pmix_obj_run_constructors.exit426 ]
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 480
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !124
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !169
  %i.pc = call i32 %i.pb(ptr noundef nonnull %7, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i16 noundef zeroext 4) #15 ; 3 uses
  switch i32 %i.pc, label %.thread600 [
    i32 0, label %.preheader
    i32 -2, label %.loopexit637
  ]

.preheader:                                       ; preds = %.thread908
  %i.pd = load i64, ptr %i.b, align 8, !tbaa !178
  %.not759 = icmp eq i64 %i.pd, 0
  br i1 %.not759, label %._crit_edge749, label %.lr.ph748

.thread600:                                       ; preds = %bb.cq, %.thread908
  %.7602 = phi i32 [ %i.pc, %.thread908 ], [ -20, %bb.cq ] ; 2 uses
  %i.pe = call ptr @PMIx_Error_string(i32 noundef %.7602) #15
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %i.pe, ptr noundef nonnull @.str.8, i32 noundef 875) #15
  br label %.loopexit637

.loopexit637:                                     ; preds = %.thread908, %.thread600
  %.7603 = phi i32 [ %.7602, %.thread600 ], [ %i.pc, %.thread908 ] ; 2 uses
  %i.pf = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !32 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !21 ; 2 uses
  %.not6.i427 = icmp eq ptr %i.pi, null
  br i1 %.not6.i427, label %pmix_obj_run_destructors.exit431, label %.lr.ph.i428

.lr.ph.i428:                                      ; preds = %.loopexit637, %.lr.ph.i428
  %i.pj = phi ptr [ %i.pl, %.lr.ph.i428 ], [ %i.pi, %.loopexit637 ]
  %.07.i429 = phi ptr [ %i.pk, %.lr.ph.i428 ], [ %i.ph, %.loopexit637 ]
  call void %i.pj(ptr noundef nonnull %2) #15, !inline_history !33
  %i.pk = getelementptr inbounds nuw i8, ptr %.07.i429, i64 8 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !21 ; 2 uses
  %.not.i430 = icmp eq ptr %i.pl, null
  br i1 %.not.i430, label %pmix_obj_run_destructors.exit431, label %.lr.ph.i428, !llvm.loop !34

pmix_obj_run_destructors.exit431:                 ; preds = %.lr.ph.i428, %.loopexit637
  %i.pm = load ptr, ptr %i.cb, align 8, !tbaa !16
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 48
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !32 ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !21 ; 2 uses
  %.not6.i432 = icmp eq ptr %i.pp, null
  br i1 %.not6.i432, label %pmix_obj_run_destructors.exit381, label %.lr.ph.i433

.lr.ph.i433:                                      ; preds = %pmix_obj_run_destructors.exit431, %.lr.ph.i433
  %i.pq = phi ptr [ %i.ps, %.lr.ph.i433 ], [ %i.pp, %pmix_obj_run_destructors.exit431 ]
  %.07.i434 = phi ptr [ %i.pr, %.lr.ph.i433 ], [ %i.po, %pmix_obj_run_destructors.exit431 ]
  call void %i.pq(ptr noundef nonnull %7) #15, !inline_history !33
  %i.pr = getelementptr inbounds nuw i8, ptr %.07.i434, i64 8 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !21 ; 2 uses
  %.not.i435 = icmp eq ptr %i.ps, null
  br i1 %.not.i435, label %pmix_obj_run_destructors.exit381, label %.lr.ph.i433, !llvm.loop !34

.lr.ph748:                                        ; preds = %.preheader, %pmix_obj_run_destructors.exit506
  %.0274747 = phi i32 [ %i.yo, %pmix_obj_run_destructors.exit506 ], [ 0, %.preheader ]
  store i32 1, ptr %i.a, align 4, !tbaa !8
  %i.pt = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !8
  %i.pu = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_kval_t_class, i64 32), align 8, !tbaa !9
  %.not342 = icmp eq i32 %i.pt, %i.pu
  br i1 %.not342, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph748
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_kval_t_class) #15
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.lr.ph748
  store ptr @pmix_kval_t_class, ptr %i.bo, align 8, !tbaa !16
  store i32 1, ptr %i.bp, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i8 0, i64 64, i1 false)
  %i.pv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_kval_t_class, i64 40), align 8, !tbaa !20 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !21 ; 2 uses
  %.not6.i437 = icmp eq ptr %i.pw, null
  br i1 %.not6.i437, label %pmix_obj_run_constructors.exit441, label %.lr.ph.i438

.lr.ph.i438:                                      ; preds = %bb.cs, %.lr.ph.i438
  %i.px = phi ptr [ %i.pz, %.lr.ph.i438 ], [ %i.pw, %bb.cs ]
  %.07.i439 = phi ptr [ %i.py, %.lr.ph.i438 ], [ %i.pv, %bb.cs ]
  call void %i.px(ptr noundef nonnull %4) #15, !inline_history !22
  %i.py = getelementptr inbounds nuw i8, ptr %.07.i439, i64 8 ; 2 uses
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !21 ; 2 uses
  %.not.i440 = icmp eq ptr %i.pz, null
  br i1 %.not.i440, label %pmix_obj_run_constructors.exit441, label %.lr.ph.i438, !llvm.loop !23

pmix_obj_run_constructors.exit441:                ; preds = %.lr.ph.i438, %bb.cs
  %i.qa = load i32, ptr @pmix_bfrops_base_output, align 4, !tbaa !8 ; 3 uses
  %or.cond17 = icmp ult i32 %i.qa, 64
  br i1 %or.cond17, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %pmix_obj_run_constructors.exit441
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.qb
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !48
  %i.qf = icmp sgt i32 %i.qe, 1
  br i1 %i.qf, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qg = load ptr, ptr @pmix_client_globals, align 8, !tbaa !164
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 120
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !108
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 480
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !124
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !129
  %i.qm = call ptr @PMIx_Data_type_string(i16 noundef zeroext 28) #15
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.qa, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.8, i32 noundef 884, ptr noundef %i.ql, ptr noundef %i.qm) #15
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %pmix_obj_run_constructors.exit441
  %i.qn = load i8, ptr %i.ce, align 8, !tbaa !121
  %i.qo = load ptr, ptr @pmix_client_globals, align 8, !tbaa !164
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 120
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !108 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 472
  %i.qs = load i8, ptr %i.qr, align 8, !tbaa !123
  %i.qt = icmp eq i8 %i.qn, %i.qs
  br i1 %i.qt, label %bb.cw, label %.thread604

bb.cw:                                            ; preds = %bb.cv
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 480
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !124
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !169
  %i.qy = call i32 %i.qx(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i16 noundef zeroext 28) #15 ; 3 uses
  switch i32 %i.qy, label %.thread604 [
    i32 0, label %bb.cx
    i32 -2, label %.loopexit629
  ]

.thread604:                                       ; preds = %bb.cv, %bb.cw
  %.8606 = phi i32 [ %i.qy, %bb.cw ], [ -20, %bb.cv ] ; 2 uses
  %i.qz = call ptr @PMIx_Error_string(i32 noundef %.8606) #15
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %i.qz, ptr noundef nonnull @.str.8, i32 noundef 886) #15
  br label %.loopexit629

.loopexit629:                                     ; preds = %bb.cw, %.thread604
  %.8607 = phi i32 [ %.8606, %.thread604 ], [ %i.qy, %bb.cw ] ; 2 uses
  %i.ra = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 48
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !32 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !21 ; 2 uses
  %.not6.i442 = icmp eq ptr %i.rd, null
  br i1 %.not6.i442, label %pmix_obj_run_destructors.exit446, label %.lr.ph.i443

.lr.ph.i443:                                      ; preds = %.loopexit629, %.lr.ph.i443
  %i.re = phi ptr [ %i.rg, %.lr.ph.i443 ], [ %i.rd, %.loopexit629 ]
  %.07.i444 = phi ptr [ %i.rf, %.lr.ph.i443 ], [ %i.rc, %.loopexit629 ]
  call void %i.re(ptr noundef nonnull %2) #15, !inline_history !33
  %i.rf = getelementptr inbounds nuw i8, ptr %.07.i444, i64 8 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !21 ; 2 uses
  %.not.i445 = icmp eq ptr %i.rg, null
  br i1 %.not.i445, label %pmix_obj_run_destructors.exit446, label %.lr.ph.i443, !llvm.loop !34

pmix_obj_run_destructors.exit446:                 ; preds = %.lr.ph.i443, %.loopexit629
  %i.rh = load ptr, ptr %i.cb, align 8, !tbaa !16
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 48
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !32 ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !21 ; 2 uses
  %.not6.i447 = icmp eq ptr %i.rk, null
  br i1 %.not6.i447, label %pmix_obj_run_destructors.exit451, label %.lr.ph.i448

.lr.ph.i448:                                      ; preds = %pmix_obj_run_destructors.exit446, %.lr.ph.i448
  %i.rl = phi ptr [ %i.rn, %.lr.ph.i448 ], [ %i.rk, %pmix_obj_run_destructors.exit446 ]
  %.07.i449 = phi ptr [ %i.rm, %.lr.ph.i448 ], [ %i.rj, %pmix_obj_run_destructors.exit446 ]
  call void %i.rl(ptr noundef nonnull %7) #15, !inline_history !33
  %i.rm = getelementptr inbounds nuw i8, ptr %.07.i449, i64 8 ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !21 ; 2 uses
  %.not.i450 = icmp eq ptr %i.rn, null
  br i1 %.not.i450, label %pmix_obj_run_destructors.exit451, label %.lr.ph.i448, !llvm.loop !34

pmix_obj_run_destructors.exit451:                 ; preds = %.lr.ph.i448, %pmix_obj_run_destructors.exit446
  %i.ro = load ptr, ptr %i.bo, align 8, !tbaa !16
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 48
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !32 ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !21 ; 2 uses
  %.not6.i452 = icmp eq ptr %i.rr, null
  br i1 %.not6.i452, label %pmix_obj_run_destructors.exit381, label %.lr.ph.i453

.lr.ph.i453:                                      ; preds = %pmix_obj_run_destructors.exit451, %.lr.ph.i453
  %i.rs = phi ptr [ %i.ru, %.lr.ph.i453 ], [ %i.rr, %pmix_obj_run_destructors.exit451 ]
  %.07.i454 = phi ptr [ %i.rt, %.lr.ph.i453 ], [ %i.rq, %pmix_obj_run_destructors.exit451 ]
  call void %i.rs(ptr noundef nonnull %4) #15, !inline_history !33
  %i.rt = getelementptr inbounds nuw i8, ptr %.07.i454, i64 8 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !21 ; 2 uses
  %.not.i455 = icmp eq ptr %i.ru, null
  br i1 %.not.i455, label %pmix_obj_run_destructors.exit381, label %.lr.ph.i453, !llvm.loop !34

bb.cx:                                            ; preds = %bb.cw
  %i.rv = load ptr, ptr %i.br, align 8, !tbaa !86
  %i.rw = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.d, ptr noundef %i.rv) #15 ; 0 uses
  %i.rx = load ptr, ptr %i.br, align 8, !tbaa !86
  %i.ry = call ptr @pmix_gds_hash_check_nodename(ptr noundef nonnull %i.bt, ptr noundef %i.rx) #15 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %i.sa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_nodeinfo_t_class, i64 56), align 8, !tbaa !179
  %i.sb = call noalias noundef ptr @malloc(i64 noundef %i.sa) #20 ; 13 uses
  %8 = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !8
  %i.sc = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_nodeinfo_t_class, i64 32), align 8, !tbaa !9
  %.not.i457 = icmp eq i32 %8, %i.sc
  br i1 %.not.i457, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_nodeinfo_t_class) #15
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.not22.i = icmp eq ptr %i.sb, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.sd = call i32 @pthread_mutex_init(ptr noundef nonnull %i.sb, ptr noundef null) #15 ; 0 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 40
  store ptr @pmix_nodeinfo_t_class, ptr %i.se, align 8, !tbaa !16
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sb, i64 48
  store i32 1, ptr %i.sf, align 8, !tbaa !19
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sb, i64 56
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sb, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sh, i8 0, i64 24, i1 false)
  %i.si = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_nodeinfo_t_class, i64 40), align 8, !tbaa !20 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !21 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.sj, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.db, %.lr.ph.i.i
  %i.sk = phi ptr [ %i.sm, %.lr.ph.i.i ], [ %i.sj, %bb.db ]
  %.07.i.i = phi ptr [ %i.sl, %.lr.ph.i.i ], [ %i.si, %bb.db ]
  call void %i.sk(ptr noundef nonnull %i.sb) #15, !inline_history !180
  %i.sl = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.sm, null
  br i1 %.not.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !23

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.da, %bb.db
  %i.sn = load ptr, ptr %i.br, align 8, !tbaa !86
  %i.so = call noalias ptr @strdup(ptr noundef %i.sn) #15
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sb, i64 152
  store ptr %i.so, ptr %i.sp, align 8, !tbaa !98
  %i.sq = load ptr, ptr %i.bv, align 8, !tbaa !30 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sb, i64 128
  store ptr %i.sq, ptr %i.sr, align 8, !tbaa !30
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 120
  store volatile ptr %i.sb, ptr %i.ss, align 8, !tbaa !31
  %i.st = getelementptr inbounds nuw i8, ptr %i.sb, i64 120
  store ptr %i.bu, ptr %i.st, align 8, !tbaa !31
  store ptr %i.sb, ptr %i.bv, align 8, !tbaa !30
  %i.su = load volatile i64, ptr %i.bw, align 8, !tbaa !25
  %i.sv = add i64 %i.su, 1
  store volatile i64 %i.sv, ptr %i.bw, align 8, !tbaa !25
  br label %bb.dc

bb.dc:                                            ; preds = %pmix_obj_new_tma.exit, %bb.cx
  %.0268 = phi ptr [ %i.sb, %pmix_obj_new_tma.exit ], [ %i.ry, %bb.cx ] ; 5 uses
  %i.sw = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_kval_t_class, i64 56), align 8, !tbaa !179
  %i.sx = call noalias noundef ptr @malloc(i64 noundef %i.sw) #20 ; 20 uses
  %9 = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !8
  %i.sy = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_kval_t_class, i64 32), align 8, !tbaa !9
  %.not.i458 = icmp eq i32 %9, %i.sy
  br i1 %.not.i458, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_kval_t_class) #15
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.not22.i459 = icmp eq ptr %i.sx, null
  br i1 %.not22.i459, label %pmix_obj_new_tma.exit464, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.sz = call i32 @pthread_mutex_init(ptr noundef nonnull %i.sx, ptr noundef null) #15 ; 0 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  store ptr @pmix_kval_t_class, ptr %i.ta, align 8, !tbaa !16
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  store i32 1, ptr %i.tb, align 8, !tbaa !19
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sx, i64 56 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sx, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.tc, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.td, i8 0, i64 24, i1 false)
  %i.te = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_kval_t_class, i64 40), align 8, !tbaa !20 ; 2 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !21 ; 2 uses
  %.not6.i.i460 = icmp eq ptr %i.tf, null
  br i1 %.not6.i.i460, label %.loopexit626, label %.lr.ph.i.i461

.lr.ph.i.i461:                                    ; preds = %bb.df, %.lr.ph.i.i461
  %i.tg = phi ptr [ %i.ti, %.lr.ph.i.i461 ], [ %i.tf, %bb.df ]
  %.07.i.i462 = phi ptr [ %i.th, %.lr.ph.i.i461 ], [ %i.te, %bb.df ]
  call void %i.tg(ptr noundef nonnull %i.sx) #15, !inline_history !180
  %i.th = getelementptr inbounds nuw i8, ptr %.07.i.i462, i64 8 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !21 ; 2 uses
  %.not.i.i463 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i463, label %.loopexit626, label %.lr.ph.i.i461, !llvm.loop !23

pmix_obj_new_tma.exit464:                         ; preds = %bb.de
  %i.tj = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 48
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !32 ; 2 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !21 ; 2 uses
  %.not6.i465 = icmp eq ptr %i.tm, null
  br i1 %.not6.i465, label %pmix_obj_run_destructors.exit381, label %.lr.ph.i466

.lr.ph.i466:                                      ; preds = %pmix_obj_new_tma.exit464, %.lr.ph.i466
  %i.tn = phi ptr [ %i.tp, %.lr.ph.i466 ], [ %i.tm, %pmix_obj_new_tma.exit464 ]
  %.07.i467 = phi ptr [ %i.to, %.lr.ph.i466 ], [ %i.tl, %pmix_obj_new_tma.exit464 ]
  call void %i.tn(ptr noundef nonnull %2) #15, !inline_history !33
  %i.to = getelementptr inbounds nuw i8, ptr %.07.i467, i64 8 ; 2 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !21 ; 2 uses
  %.not.i468 = icmp eq ptr %i.tp, null
  br i1 %.not.i468, label %pmix_obj_run_destructors.exit381, label %.lr.ph.i466, !llvm.loop !34

.loopexit626:                                     ; preds = %.lr.ph.i.i461, %bb.df
  %i.tq = call noalias dereferenceable_or_null(12) ptr @strdup(ptr noundef nonnull @.str.39) #15
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sx, i64 144 ; 2 uses
  store ptr %i.tq, ptr %i.tr, align 8, !tbaa !86
  %i.ts = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #20 ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sx, i64 152
  store ptr %i.ts, ptr %i.tt, align 8, !tbaa !89
  %i.tu = icmp eq ptr %i.ts, null
  br i1 %i.tu, label %bb.dg, label %bb.dm

bb.dg:                                            ; preds = %.loopexit626
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.tw = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.sx) #15
  %i.tx = icmp eq i32 %i.tw, 35
  br i1 %i.tx, label %bb.dh, label %pmix_obj_update.exit367

bb.dh:                                            ; preds = %bb.dg
  %i.ty = tail call ptr @__errno_location() #16
  store i32 35, ptr %i.ty, align 4, !tbaa !8
  call void @perror(ptr noundef nonnull @.str.13) #17
  call void @abort() #18
  unreachable

pmix_obj_update.exit367:                          ; preds = %bb.dg
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sx, i64 48 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !19
  %i.ub = add nsw i32 %i.ua, -1                   ; 2 uses
  store i32 %i.ub, ptr %i.tz, align 8, !tbaa !19
  %i.uc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.sx) #15 ; 0 uses
  %i.ud = icmp eq i32 %i.ub, 0
  br i1 %i.ud, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %pmix_obj_update.exit367
  %i.ue = load ptr, ptr %i.tv, align 8, !tbaa !16
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 48
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !32 ; 2 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !21 ; 2 uses
  %.not6.i470 = icmp eq ptr %i.uh, null
  br i1 %.not6.i470, label %pmix_obj_run_destructors.exit474, label %.lr.ph.i471

.lr.ph.i471:                                      ; preds = %bb.di, %.lr.ph.i471
  %i.ui = phi ptr [ %i.uk, %.lr.ph.i471 ], [ %i.uh, %bb.di ]
  %.07.i472 = phi ptr [ %i.uj, %.lr.ph.i471 ], [ %i.ug, %bb.di ]
  call void %i.ui(ptr noundef nonnull %i.sx) #15, !inline_history !33
  %i.uj = getelementptr inbounds nuw i8, ptr %.07.i472, i64 8 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !21 ; 2 uses
  %.not.i473 = icmp eq ptr %i.uk, null
  br i1 %.not.i473, label %pmix_obj_run_destructors.exit474, label %.lr.ph.i471, !llvm.loop !34

pmix_obj_run_destructors.exit474:                 ; preds = %.lr.ph.i471, %bb.di
  %i.ul = load ptr, ptr %i.td, align 8, !tbaa !35 ; 2 uses
  %.not349 = icmp eq ptr %i.ul, null
  br i1 %.not349, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %pmix_obj_run_destructors.exit474
  call void %i.ul(ptr noundef nonnull %i.tc, ptr noundef nonnull %i.sx) #15, !inline_history !36
  br label %bb.dl

bb.dk:                                            ; preds = %pmix_obj_run_destructors.exit474
  call void @free(ptr noundef nonnull %i.sx) #15
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dj, %bb.dk, %pmix_obj_update.exit367
  %i.um = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 48
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !32 ; 2 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !21 ; 2 uses
  %.not6.i476 = icmp eq ptr %i.up, null
  br i1 %.not6.i476, label %pmix_obj_run_destructors.exit381, label %.lr.ph.i477

.lr.ph.i477:                                      ; preds = %bb.dl, %.lr.ph.i477
  %i.uq = phi ptr [ %i.us, %.lr.ph.i477 ], [ %i.up, %bb.dl ]
  %.07.i478 = phi ptr [ %i.ur, %.lr.ph.i477 ], [ %i.uo, %bb.dl ]
  call void %i.uq(ptr noundef nonnull %2) #15, !inline_history !33
  %i.ur = getelementptr inbounds nuw i8, ptr %.07.i478, i64 8 ; 2 uses
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !21 ; 2 uses
  %.not.i479 = icmp eq ptr %i.us, null
  br i1 %.not.i479, label %pmix_obj_run_destructors.exit381, label %.lr.ph.i477, !llvm.loop !34

bb.dm:                                            ; preds = %.loopexit626
  store i16 3, ptr %i.ts, align 8, !tbaa !159
  %i.ut = load ptr, ptr %i.bs, align 8, !tbaa !89
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !40
  %i.uw = call noalias ptr @strdup(ptr noundef %i.uv) #15
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  store ptr %i.uw, ptr %i.ux, align 8, !tbaa !40
  %i.uy = getelementptr inbounds nuw i8, ptr %.0268, i64 288 ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.0268, i64 408
  %.0276740 = load ptr, ptr %i.uz, align 8, !tbaa !31 ; 2 uses
  %.not344741 = icmp eq ptr %.0276740, %i.uy
  br i1 %.not344741, label %.loopexit625, label %.lr.ph743

.lr.ph743:                                        ; preds = %bb.dm, %bb.ds
  %.0276742 = phi ptr [ %i.vf, %bb.ds ], [ %.0276740, %bb.dm ] ; 12 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.0276742, i64 144
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !86
  %i.vc = load ptr, ptr %i.tr, align 8, !tbaa !86
  %i.vd = call zeroext i1 @PMIx_Check_key(ptr noundef %i.vb, ptr noundef %i.vc) #15
  %i.ve = getelementptr inbounds nuw i8, ptr %.0276742, i64 120
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !31 ; 4 uses
  br i1 %i.vd, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %.lr.ph743
  %i.vg = getelementptr inbounds nuw i8, ptr %.0276742, i64 128
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !30 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 120
  store volatile ptr %i.vf, ptr %i.vi, align 8, !tbaa !31
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 128
  store volatile ptr %i.vh, ptr %i.vj, align 8, !tbaa !30
  %i.vk = getelementptr inbounds nuw i8, ptr %.0268, i64 432 ; 2 uses
  %i.vl = load volatile i64, ptr %i.vk, align 8, !tbaa !25
  %i.vm = add i64 %i.vl, -1
  store volatile i64 %i.vm, ptr %i.vk, align 8, !tbaa !25
  %i.vn = call i32 @pthread_mutex_lock(ptr noundef nonnull %.0276742) #15
  %i.vo = icmp eq i32 %i.vn, 35
  br i1 %i.vo, label %bb.do, label %pmix_obj_update.exit366

bb.do:                                            ; preds = %bb.dn
  %i.vp = tail call ptr @__errno_location() #16
  store i32 35, ptr %i.vp, align 4, !tbaa !8
  call void @perror(ptr noundef nonnull @.str.13) #17
  call void @abort() #18
  unreachable

pmix_obj_update.exit366:                          ; preds = %bb.dn
  %i.vq = getelementptr inbounds nuw i8, ptr %.0276742, i64 48 ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !19
  %i.vs = add nsw i32 %i.vr, -1                   ; 2 uses
  store i32 %i.vs, ptr %i.vq, align 8, !tbaa !19
  %i.vt = call i32 @pthread_mutex_unlock(ptr noundef nonnull %.0276742) #15 ; 0 uses
  %i.vu = icmp eq i32 %i.vs, 0
  br i1 %i.vu, label %bb.dp, label %.loopexit625

bb.dp:                                            ; preds = %pmix_obj_update.exit366
  %i.vv = getelementptr inbounds nuw i8, ptr %.0276742, i64 40
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !16
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 48
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !32 ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !21 ; 2 uses
  %.not6.i481 = icmp eq ptr %i.vz, null
  br i1 %.not6.i481, label %pmix_obj_run_destructors.exit485, label %.lr.ph.i482

.lr.ph.i482:                                      ; preds = %bb.dp, %.lr.ph.i482
  %i.wa = phi ptr [ %i.wc, %.lr.ph.i482 ], [ %i.vz, %bb.dp ]
  %.07.i483 = phi ptr [ %i.wb, %.lr.ph.i482 ], [ %i.vy, %bb.dp ]
  call void %i.wa(ptr noundef nonnull %.0276742) #15, !inline_history !33
  %i.wb = getelementptr inbounds nuw i8, ptr %.07.i483, i64 8 ; 2 uses
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !21 ; 2 uses
end_hunk_0
