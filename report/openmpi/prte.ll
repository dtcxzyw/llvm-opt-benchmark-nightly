Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/prte?download=true
inline.NumInlined: 91
inline.NumDeleted: 13
begin_hunk_0_@main:bb.a
  call void @exit(i32 noundef 1) #24
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr @prte_event_base, align 8, !tbaa !32
  %i.bi = load i32, ptr @term_pipe, align 4, !tbaa !13
  %i.bj = call i32 @prte_event_assign(ptr noundef nonnull @term_handler, ptr noundef %i.bh, i32 noundef %i.bi, i16 noundef signext 2, ptr noundef nonnull @clean_abort, ptr noundef null) #22 ; 0 uses
  %i.bk = call i32 @event_add(ptr noundef nonnull @term_handler, ptr noundef null) #22 ; 0 uses
  %i.bl = load i32, ptr @term_pipe, align 4, !tbaa !13
  %i.bm = call i32 @pmix_fd_set_cloexec(i32 noundef %i.bl) #22
  %.not672 = icmp eq i32 %i.bm, 0
  br i1 %.not672, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @term_pipe, i64 4), align 4, !tbaa !13
  %i.bo = call i32 @pmix_fd_set_cloexec(i32 noundef %i.bn) #22
  %.not673 = icmp eq i32 %i.bo, 0
  br i1 %.not673, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.bq = call i64 @fwrite(ptr nonnull @.str.6, i64 34, i64 1, ptr %i.bp) #25 ; 0 uses
  %i.br = call i32 @prte_progress_thread_finalize(ptr noundef null) #22 ; 0 uses
  call void @exit(i32 noundef 1) #24
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr @prte_event_base, align 8, !tbaa !32
  %i.bt = call i32 @prte_event_assign(ptr noundef nonnull @epipe_handler, ptr noundef %i.bs, i32 noundef 13, i16 noundef signext 24, ptr noundef nonnull @epipe_signal_callback, ptr noundef nonnull @epipe_handler) #22 ; 0 uses
  %i.bu = call i32 @event_add(ptr noundef nonnull @epipe_handler, ptr noundef null) #22 ; 0 uses
  %i.bv = call ptr @signal(i32 noundef 15, ptr noundef nonnull @abort_signal_callback) #22 ; 0 uses
  %i.bw = call ptr @signal(i32 noundef 2, ptr noundef nonnull @abort_signal_callback) #22 ; 0 uses
  %i.bx = call ptr @signal(i32 noundef 1, ptr noundef nonnull @abort_signal_callback) #22 ; 0 uses
  %i.by = call i32 @pmix_mca_base_framework_open(ptr noundef nonnull @prte_schizo_base_framework, i32 noundef 0) #22 ; 4 uses
  switch i32 %i.by, label %bb.v [
    i32 0, label %bb.w
    i32 -43, label %bb.mo
  ]

bb.v:                                             ; preds = %bb.u
  %i.bz = call ptr @prte_strerror(i32 noundef %i.by) #22
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %i.bz, ptr noundef nonnull @.str.8, i32 noundef 393) #22
  br label %bb.mo

bb.w:                                             ; preds = %bb.u
  %i.ca = call i32 @prte_schizo_base_select() #22 ; 4 uses
  switch i32 %i.ca, label %bb.x [
    i32 0, label %.preheader1012
    i32 -43, label %bb.mo
  ]

.preheader1012:                                   ; preds = %bb.w
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !9   ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !28 ; 2 uses
  %.not6761040 = icmp eq ptr %i.cc, null
  br i1 %.not6761040, label %._crit_edge1046, label %.lr.ph1045

bb.x:                                             ; preds = %bb.w
  %i.cd = call ptr @prte_strerror(i32 noundef %i.ca) #22
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %i.cd, ptr noundef nonnull @.str.8, i32 noundef 398) #22
  br label %bb.mo

.lr.ph1045:                                       ; preds = %.preheader1012, %.thread937
  %i.ce = phi ptr [ %i.dp, %.thread937 ], [ %i.cb, %.preheader1012 ] ; 4 uses
  %indvars.iv1158 = phi i64 [ %indvars.iv.next1159, %.thread937 ], [ 0, %.preheader1012 ] ; 5 uses
  %i.cf = phi ptr [ %i.dr, %.thread937 ], [ %i.cc, %.preheader1012 ] ; 12 uses
  %i.cg = phi ptr [ %i.dq, %.thread937 ], [ %i.cb, %.preheader1012 ]
  %.05391043 = phi i8 [ %.1540, %.thread937 ], [ 0, %.preheader1012 ] ; 8 uses
  %.05411042 = phi i8 [ %.1542, %.thread937 ], [ 0, %.preheader1012 ] ; 8 uses
  %.05471041 = phi ptr [ %.1548, %.thread937 ], [ null, %.preheader1012 ] ; 7 uses
  %i.ch = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull dereferenceable(14) @.str.9) #23
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph1045
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !28
  br label %.thread937

bb.z:                                             ; preds = %.lr.ph1045
  %i.cl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull dereferenceable(9) @.str.10) #23
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.cf) #22
  %i.cn = call noalias dereferenceable_or_null(8) ptr @strdup(ptr noundef nonnull @.str.11) #22
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv1158
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !28
  br label %.thread937

bb.ab:                                            ; preds = %bb.z
  %i.cq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull dereferenceable(10) @.str.12) #23
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull dereferenceable(9) @.str.13) #23
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.thread, label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.cu = trunc nuw i8 %.05411042 to i1
  br i1 %i.cu, label %bb.ae, label %bb.af

.thread:                                          ; preds = %bb.ac
  %i.cv = trunc nuw i8 %.05411042 to i1
  br i1 %i.cv, label %bb.ae, label %.thread937

bb.ae:                                            ; preds = %.thread, %bb.ad
  %i.cw = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull %i.cf) #22 ; 0 uses
  br label %bb.mo

bb.af:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.cf) #22
  %i.cx = call noalias dereferenceable_or_null(9) ptr @strdup(ptr noundef nonnull @.str.13) #22
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv1158
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !28
  br label %.thread937

bb.ag:                                            ; preds = %bb.ac
  %i.da = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull dereferenceable(10) @.str.16) #23
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull dereferenceable(9) @.str.17) #23
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %.thread938, label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.de = trunc nuw i8 %.05391043 to i1
  br i1 %i.de, label %bb.aj, label %bb.ak

.thread938:                                       ; preds = %bb.ah
  %i.df = trunc nuw i8 %.05391043 to i1
  br i1 %i.df, label %bb.aj, label %.thread937

bb.aj:                                            ; preds = %.thread938, %bb.ai
  %i.dg = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull @.str.18) #22 ; 0 uses
  br label %bb.mo

bb.ak:                                            ; preds = %bb.ai
  call void @free(ptr noundef nonnull %i.cf) #22
  %i.dh = call noalias dereferenceable_or_null(9) ptr @strdup(ptr noundef nonnull @.str.17) #22
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv1158
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !28
  br label %.thread937

bb.al:                                            ; preds = %bb.ah
  %i.dk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull dereferenceable(18) @.str.19) #23
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.am, label %.thread937

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.cf) #22
  %i.dm = call noalias dereferenceable_or_null(7) ptr @strdup(ptr noundef nonnull @.str.20) #22
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv1158
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !28
  br label %.thread937

.thread937:                                       ; preds = %.thread938, %.thread, %bb.al, %bb.ak, %bb.af, %bb.am, %bb.aa, %bb.y
  %i.dp = phi ptr [ %i.ce, %bb.y ], [ %i.co, %bb.aa ], [ %i.cy, %bb.af ], [ %i.ce, %bb.al ], [ %i.di, %bb.ak ], [ %i.ce, %.thread ], [ %i.dn, %bb.am ], [ %i.ce, %.thread938 ] ; 2 uses
  %.1548 = phi ptr [ %i.ck, %bb.y ], [ %.05471041, %bb.aa ], [ %.05471041, %bb.af ], [ %.05471041, %bb.al ], [ %.05471041, %bb.ak ], [ %.05471041, %.thread ], [ %.05471041, %bb.am ], [ %.05471041, %.thread938 ] ; 2 uses
  %.1542 = phi i8 [ %.05411042, %bb.y ], [ %.05411042, %bb.aa ], [ 1, %bb.af ], [ %.05411042, %bb.al ], [ %.05411042, %bb.ak ], [ 1, %.thread ], [ %.05411042, %bb.am ], [ %.05411042, %.thread938 ]
  %.1540 = phi i8 [ %.05391043, %bb.y ], [ %.05391043, %bb.aa ], [ %.05391043, %bb.af ], [ %.05391043, %bb.al ], [ 1, %bb.ak ], [ %.05391043, %.thread ], [ %.05391043, %bb.am ], [ 1, %.thread938 ]
  %indvars.iv.next1159 = add nuw nsw i64 %indvars.iv1158, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next1159 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !28 ; 2 uses
  %.not676 = icmp eq ptr %i.dr, null
  br i1 %.not676, label %._crit_edge1046, label %.lr.ph1045, !llvm.loop !34

._crit_edge1046:                                  ; preds = %.thread937, %.preheader1012
  %.0547.lcssa = phi ptr [ null, %.preheader1012 ], [ %.1548, %.thread937 ] ; 2 uses
  %i.ds = call ptr @prte_schizo_base_detect_proxy(ptr noundef %.0547.lcssa) #22 ; 7 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge1046
  %i.du = load ptr, ptr @prte_tool_basename, align 8, !tbaa !28
  %i.dv = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef %i.du, ptr noundef %.0547.lcssa) #22 ; 0 uses
  br label %bb.mo

bb.ao:                                            ; preds = %._crit_edge1046
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !35
  %i.dx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dw, ptr noundef nonnull dereferenceable(5) @.str.2) #23
  %.not677 = icmp eq i32 %i.dx, 0
  br i1 %.not677, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dy = load ptr, ptr @prte_tool_basename, align 8, !tbaa !28
  %i.dz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(5) @.str.2) #23
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = load i8, ptr getelementptr inbounds nuw (i8, ptr @prte_schizo_base, i64 272), align 8, !range !37
  %i.ec = trunc nuw i8 %i.eb to i1
  %or.cond = select i1 %i.ea, i1 true, i1 %i.ec
  br i1 %or.cond, label %11, label %bb.aq

11:                                               ; preds = %bb.ap
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %11, %bb.ap
  %.0551 = phi i1 [ false, %bb.ap ], [ true, %11 ], [ true, %bb.ao ] ; 4 uses
  %i.ed = call i32 @unsetenv(ptr noundef nonnull @.str.22) #22 ; 0 uses
  %i.ee = call i32 @prte_register_params() #22    ; 3 uses
  switch i32 %i.ee, label %bb.ar [
    i32 0, label %bb.as
    i32 -43, label %bb.mo
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ef = call ptr @prte_strerror(i32 noundef %i.ee) #22
  %i.eg = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %i.ef, i32 noundef %i.ee) #22 ; 0 uses
  br label %bb.mo

bb.as:                                            ; preds = %bb.aq
  %i.eh = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !13
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_cli_result_t_class, i64 32), align 8, !tbaa !14
  %.not679 = icmp eq i32 %i.eh, %i.ei
  br i1 %.not679, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_cli_result_t_class) #22
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr @pmix_cli_result_t_class, ptr %i.ej, align 8, !tbaa !19
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 1, ptr %i.ek, align 8, !tbaa !22
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.el, i8 0, i64 64, i1 false)
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_cli_result_t_class, i64 40), align 8, !tbaa !23 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !24 ; 2 uses
  %.not6.i766 = icmp eq ptr %i.en, null
  br i1 %.not6.i766, label %pmix_obj_run_constructors.exit770, label %.lr.ph.i767

.lr.ph.i767:                                      ; preds = %bb.au, %.lr.ph.i767
  %i.eo = phi ptr [ %i.eq, %.lr.ph.i767 ], [ %i.en, %bb.au ]
  %.07.i768 = phi ptr [ %i.ep, %.lr.ph.i767 ], [ %i.em, %bb.au ]
  call void %i.eo(ptr noundef nonnull %9) #22, !inline_history !25
  %i.ep = getelementptr inbounds nuw i8, ptr %.07.i768, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !24 ; 2 uses
  %.not.i769 = icmp eq ptr %i.eq, null
  br i1 %.not.i769, label %pmix_obj_run_constructors.exit770, label %.lr.ph.i767, !llvm.loop !26

pmix_obj_run_constructors.exit770:                ; preds = %.lr.ph.i767, %bb.au
  %i.er = load i32, ptr %i.c, align 4
  %i.es = icmp sgt i32 %i.er, 1
  %or.cond3 = select i1 %.0551, i1 %i.es, i1 false
  %.pre1175 = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  br i1 %or.cond3, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %pmix_obj_run_constructors.exit770
  %i.et = getelementptr inbounds nuw i8, ptr %.pre1175, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !28
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !38
  %.not680 = icmp eq i8 %i.ev, 45
  br i1 %.not680, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ew = call ptr @PMIx_Argv_copy(ptr noundef nonnull %i.et) #22
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 392
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !39
  br label %bb.bb

bb.ax:                                            ; preds = %bb.av, %pmix_obj_run_constructors.exit770
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !44
  %i.fa = call i32 %i.ez(ptr noundef %.pre1175, ptr noundef nonnull %9, i1 noundef zeroext false) #22 ; 4 uses
  %.not681 = icmp eq i32 %i.fa, 0
  br i1 %.not681, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fb = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !45 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !24 ; 2 uses
  %.not6.i771 = icmp eq ptr %i.fe, null
  br i1 %.not6.i771, label %pmix_obj_run_destructors.exit, label %.lr.ph.i772

.lr.ph.i772:                                      ; preds = %bb.ay, %.lr.ph.i772
  %i.ff = phi ptr [ %i.fh, %.lr.ph.i772 ], [ %i.fe, %bb.ay ]
  %.07.i773 = phi ptr [ %i.fg, %.lr.ph.i772 ], [ %i.fd, %bb.ay ]
  call void %i.ff(ptr noundef nonnull %9) #22, !inline_history !46
  %i.fg = getelementptr inbounds nuw i8, ptr %.07.i773, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !24 ; 2 uses
  %.not.i774 = icmp eq ptr %i.fh, null
  br i1 %.not.i774, label %pmix_obj_run_destructors.exit, label %.lr.ph.i772, !llvm.loop !47

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i772, %bb.ay
  switch i32 %i.fa, label %bb.az [
    i32 -72, label %bb.mo
    i32 -43, label %bb.ba
  ]

bb.az:                                            ; preds = %pmix_obj_run_destructors.exit
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.fj = load ptr, ptr @prte_tool_basename, align 8, !tbaa !28
  %i.fk = call ptr @prte_strerror(i32 noundef %i.fa) #22
  %i.fl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fi, ptr noundef nonnull @.str.26, ptr noundef %i.fj, ptr noundef %i.fk) #26 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %pmix_obj_run_destructors.exit, %bb.az
  br label %bb.mo

bb.bb:                                            ; preds = %bb.ax, %bb.aw
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 28 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 360 ; 13 uses
  %.09.i = load ptr, ptr %i.fn, align 8, !tbaa !48 ; 4 uses
  %.not10.i = icmp eq ptr %.09.i, %i.fm
  br i1 %.not10.i, label %pmix_cmd_line_get_param.exit.thread, label %.lr.ph.i775

.lr.ph.i775:                                      ; preds = %bb.bb, %bb.bc
  %.011.i = phi ptr [ %.0.i, %bb.bc ], [ %.09.i, %bb.bb ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.011.i, i64 144
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !49
  %i.fq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fp, ptr noundef nonnull dereferenceable(7) @.str.27) #23
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %pmix_cmd_line_get_param.exit, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i775
  %i.fs = getelementptr inbounds nuw i8, ptr %.011.i, i64 120
  %.0.i = load ptr, ptr %i.fs, align 8, !tbaa !48 ; 2 uses
  %.not.i776 = icmp eq ptr %.0.i, %i.fm
  br i1 %.not.i776, label %pmix_cmd_line_get_param.exit.thread, label %.lr.ph.i775, !llvm.loop !51

pmix_cmd_line_get_param.exit:                     ; preds = %.lr.ph.i775
  %i.ft = getelementptr inbounds nuw i8, ptr %.011.i, i64 152
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !52
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !28
  %i.fw = call ptr @PMIx_Argv_split(ptr noundef %i.fv, i32 noundef 44) #22 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !28 ; 2 uses
  %.not6841047 = icmp eq ptr %i.fx, null
  br i1 %.not6841047, label %.loopexit1011, label %.lr.ph1049

bb.bd:                                            ; preds = %.lr.ph1049
  %i.fy = add i64 %.05571048, 1                   ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !28 ; 2 uses
  %.not684 = icmp eq ptr %i.ga, null
  br i1 %.not684, label %.loopexit1011, label %.lr.ph1049, !llvm.loop !53

.lr.ph1049:                                       ; preds = %pmix_cmd_line_get_param.exit, %bb.bd
  %i.gb = phi ptr [ %i.ga, %bb.bd ], [ %i.fx, %pmix_cmd_line_get_param.exit ]
  %.05571048 = phi i64 [ %i.fy, %bb.bd ], [ 0, %pmix_cmd_line_get_param.exit ]
  %i.gc = call fastcc zeroext i1 @pmix_check_cli_option(ptr noundef nonnull %i.gb, ptr noundef nonnull @.str.28)
  br i1 %i.gc, label %bb.be, label %bb.bd

bb.be:                                            ; preds = %.lr.ph1049
  store i8 1, ptr @prte_xml_output, align 1, !tbaa !54
  br label %.loopexit1011

.loopexit1011:                                    ; preds = %bb.bd, %pmix_cmd_line_get_param.exit, %bb.be
  call void @PMIx_Argv_free(ptr noundef nonnull %i.fw) #22
  %.09.i777.pre = load ptr, ptr %i.fn, align 8, !tbaa !48
  br label %pmix_cmd_line_get_param.exit.thread

pmix_cmd_line_get_param.exit.thread:              ; preds = %bb.bc, %bb.bb, %.loopexit1011
  %.09.i777 = phi ptr [ %.09.i777.pre, %.loopexit1011 ], [ %.09.i, %bb.bb ], [ %.09.i, %bb.bc ] ; 2 uses
  %.not10.i778 = icmp eq ptr %.09.i777, %i.fm
  br i1 %.not10.i778, label %pmix_cmd_line_get_param.exit784.thread, label %.lr.ph.i779

.lr.ph.i779:                                      ; preds = %pmix_cmd_line_get_param.exit.thread, %bb.bf
  %.011.i780 = phi ptr [ %.0.i781, %bb.bf ], [ %.09.i777, %pmix_cmd_line_get_param.exit.thread ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.011.i780, i64 144
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !49
  %i.gf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ge, ptr noundef nonnull dereferenceable(17) @.str.29) #23
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %pmix_cmd_line_get_param.exit784, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i779
  %i.gh = getelementptr inbounds nuw i8, ptr %.011.i780, i64 120
  %.0.i781 = load ptr, ptr %i.gh, align 8, !tbaa !48 ; 2 uses
  %.not.i782 = icmp eq ptr %.0.i781, %i.fm
  br i1 %.not.i782, label %pmix_cmd_line_get_param.exit784.thread, label %.lr.ph.i779, !llvm.loop !51

pmix_cmd_line_get_param.exit784:                  ; preds = %.lr.ph.i779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.gi = call i32 @pmix_getcwd(ptr noundef nonnull %i.h, i64 noundef 4097) #22 ; 2 uses
  %.not686 = icmp eq i32 %i.gi, 0
  br i1 %.not686, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %pmix_cmd_line_get_param.exit784
  %i.gj = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef nonnull @.str.32, i32 noundef %i.gi) #22 ; 0 uses
  br label %.thread944

bb.bh:                                            ; preds = %pmix_cmd_line_get_param.exit784
  %i.gk = getelementptr inbounds nuw i8, ptr %.011.i780, i64 152 ; 3 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !52
  %i.gm = call i32 @PMIx_Argv_count(ptr noundef %i.gl) #22
  %i.gn = icmp sgt i32 %i.gm, 1
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !52 ; 2 uses
  br i1 %i.gn, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gp = call ptr @PMIx_Argv_join(ptr noundef %i.go, i32 noundef 44) #22
  %i.gq = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef %i.gp) #22 ; 0 uses
  br label %.thread944

bb.bj:                                            ; preds = %bb.bh
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !28
  %i.gs = call zeroext i1 @pmix_path_is_absolute(ptr noundef %i.gr) #22
end_hunk_0
