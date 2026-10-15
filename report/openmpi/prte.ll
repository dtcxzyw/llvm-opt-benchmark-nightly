Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/prte?download=true
inline.NumInlined: 91
inline.NumDeleted: 13
begin_hunk_0_@main:bb.a
bb.ae:                                            ; preds = %.thread, %bb.ad
  %i.cu = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull %i.cd) #22 ; 0 uses
  br label %bb.mo

bb.af:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.cd) #22
  %i.cv = call noalias dereferenceable_or_null(9) ptr @strdup(ptr noundef nonnull @.str.13) #22
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv1159
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !32
  br label %.thread938

bb.ag:                                            ; preds = %bb.ac
  %i.cy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cd, ptr noundef nonnull dereferenceable(10) @.str.16) #23
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.da = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cd, ptr noundef nonnull dereferenceable(9) @.str.17) #23
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.thread939, label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.dc = trunc nuw i8 %.05391044 to i1
  br i1 %i.dc, label %bb.aj, label %bb.ak

.thread939:                                       ; preds = %bb.ah
  %i.dd = trunc nuw i8 %.05391044 to i1
  br i1 %i.dd, label %bb.aj, label %.thread938

bb.aj:                                            ; preds = %.thread939, %bb.ai
  %i.de = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull @.str.18) #22 ; 0 uses
  br label %bb.mo

bb.ak:                                            ; preds = %bb.ai
  call void @free(ptr noundef nonnull %i.cd) #22
  %i.df = call noalias dereferenceable_or_null(9) ptr @strdup(ptr noundef nonnull @.str.17) #22
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv1159
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !32
  br label %.thread938

bb.al:                                            ; preds = %bb.ah
  %i.di = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cd, ptr noundef nonnull dereferenceable(18) @.str.19) #23
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.am, label %.thread938

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.cd) #22
  %i.dk = call noalias dereferenceable_or_null(7) ptr @strdup(ptr noundef nonnull @.str.20) #22
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv1159
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !32
  br label %.thread938

.thread938:                                       ; preds = %.thread939, %.thread, %bb.al, %bb.ak, %bb.af, %bb.am, %bb.aa, %bb.y
  %i.dn = phi ptr [ %i.cc, %bb.y ], [ %i.cm, %bb.aa ], [ %i.cw, %bb.af ], [ %i.cc, %bb.al ], [ %i.dg, %bb.ak ], [ %i.cc, %.thread ], [ %i.dl, %bb.am ], [ %i.cc, %.thread939 ] ; 2 uses
  %.1548 = phi ptr [ %i.ci, %bb.y ], [ %.05471042, %bb.aa ], [ %.05471042, %bb.af ], [ %.05471042, %bb.al ], [ %.05471042, %bb.ak ], [ %.05471042, %.thread ], [ %.05471042, %bb.am ], [ %.05471042, %.thread939 ] ; 2 uses
  %.1542 = phi i8 [ %.05411043, %bb.y ], [ %.05411043, %bb.aa ], [ 1, %bb.af ], [ %.05411043, %bb.al ], [ %.05411043, %bb.ak ], [ 1, %.thread ], [ %.05411043, %bb.am ], [ %.05411043, %.thread939 ]
  %.1540 = phi i8 [ %.05391044, %bb.y ], [ %.05391044, %bb.aa ], [ %.05391044, %bb.af ], [ %.05391044, %bb.al ], [ 1, %bb.ak ], [ %.05391044, %.thread ], [ %.05391044, %bb.am ], [ 1, %.thread939 ]
  %indvars.iv.next1160 = add nuw nsw i64 %indvars.iv1159, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next1160 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !32 ; 2 uses
  %.not676 = icmp eq ptr %i.dp, null
  br i1 %.not676, label %._crit_edge1047, label %.lr.ph1046, !llvm.loop !79

._crit_edge1047:                                  ; preds = %.thread938, %.preheader1013
  %.0547.lcssa = phi ptr [ null, %.preheader1013 ], [ %.1548, %.thread938 ] ; 2 uses
  %i.dq = call ptr @prte_schizo_base_detect_proxy(ptr noundef %.0547.lcssa) #22 ; 7 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge1047
  %i.ds = load ptr, ptr @prte_tool_basename, align 8, !tbaa !32
  %i.dt = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef %i.ds, ptr noundef %.0547.lcssa) #22 ; 0 uses
  br label %bb.mo

bb.ao:                                            ; preds = %._crit_edge1047
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !104
  %i.dv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(5) @.str.2) #23
  %.not677 = icmp eq i32 %i.dv, 0
  br i1 %.not677, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dw = load ptr, ptr @prte_tool_basename, align 8, !tbaa !32
  %i.dx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dw, ptr noundef nonnull dereferenceable(5) @.str.2) #23
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = load i8, ptr getelementptr inbounds nuw (i8, ptr @prte_schizo_base, i64 272), align 8, !range !105
  %i.ea = trunc nuw i8 %i.dz to i1
  %or.cond = select i1 %i.dy, i1 true, i1 %i.ea
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0551 = phi i1 [ %or.cond, %bb.ap ], [ true, %bb.ao ] ; 4 uses
  %i.eb = call i32 @unsetenv(ptr noundef nonnull @.str.22) #22 ; 0 uses
  %i.ec = call i32 @prte_register_params() #22    ; 3 uses
  switch i32 %i.ec, label %bb.ar [
    i32 0, label %bb.as
    i32 -43, label %bb.mo
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ed = call ptr @prte_strerror(i32 noundef %i.ec) #22
  %i.ee = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %i.ed, i32 noundef %i.ec) #22 ; 0 uses
  br label %bb.mo

bb.as:                                            ; preds = %bb.aq
  %i.ef = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !19
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_cli_result_t_class, i64 32), align 8, !tbaa !24
  %.not679 = icmp eq i32 %i.ef, %i.eg
  br i1 %.not679, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_cli_result_t_class) #22
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr @pmix_cli_result_t_class, ptr %i.eh, align 8, !tbaa !27
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 1, ptr %i.ei, align 8, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ej, i8 0, i64 64, i1 false)
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_cli_result_t_class, i64 40), align 8, !tbaa !29 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !30 ; 2 uses
  %.not6.i767 = icmp eq ptr %i.el, null
  br i1 %.not6.i767, label %pmix_obj_run_constructors.exit771, label %.lr.ph.i768

.lr.ph.i768:                                      ; preds = %bb.au, %.lr.ph.i768
  %i.em = phi ptr [ %i.eo, %.lr.ph.i768 ], [ %i.el, %bb.au ]
  %.07.i769 = phi ptr [ %i.en, %.lr.ph.i768 ], [ %i.ek, %bb.au ]
  call void %i.em(ptr noundef nonnull %9) #22, !inline_history !0
  %i.en = getelementptr inbounds nuw i8, ptr %.07.i769, i64 8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !30 ; 2 uses
  %.not.i770 = icmp eq ptr %i.eo, null
  br i1 %.not.i770, label %pmix_obj_run_constructors.exit771, label %.lr.ph.i768, !llvm.loop !1

pmix_obj_run_constructors.exit771:                ; preds = %.lr.ph.i768, %bb.au
  %i.ep = load i32, ptr %i.c, align 4
  %i.eq = icmp sgt i32 %i.ep, 1
  %or.cond3 = select i1 %.0551, i1 %i.eq, i1 false
  %.pre1176 = load ptr, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  br i1 %or.cond3, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %pmix_obj_run_constructors.exit771
  %i.er = getelementptr inbounds nuw i8, ptr %.pre1176, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !32
  %i.et = load i8, ptr %i.es, align 1, !tbaa !37
  %.not680 = icmp eq i8 %i.et, 45
  br i1 %.not680, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eu = call ptr @PMIx_Argv_copy(ptr noundef nonnull %i.er) #22
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 392
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !106
  br label %bb.bb

bb.ax:                                            ; preds = %bb.av, %pmix_obj_run_constructors.exit771
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !107
  %i.ey = call i32 %i.ex(ptr noundef %.pre1176, ptr noundef nonnull %9, i1 noundef zeroext false) #22 ; 4 uses
  %.not681 = icmp eq i32 %i.ey, 0
  br i1 %.not681, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ez = load ptr, ptr %i.eh, align 8, !tbaa !27
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !42 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !30 ; 2 uses
  %.not6.i772 = icmp eq ptr %i.fc, null
  br i1 %.not6.i772, label %pmix_obj_run_destructors.exit, label %.lr.ph.i773

.lr.ph.i773:                                      ; preds = %bb.ay, %.lr.ph.i773
  %i.fd = phi ptr [ %i.ff, %.lr.ph.i773 ], [ %i.fc, %bb.ay ]
  %.07.i774 = phi ptr [ %i.fe, %.lr.ph.i773 ], [ %i.fb, %bb.ay ]
  call void %i.fd(ptr noundef nonnull %9) #22, !inline_history !2
  %i.fe = getelementptr inbounds nuw i8, ptr %.07.i774, i64 8 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !30 ; 2 uses
  %.not.i775 = icmp eq ptr %i.ff, null
  br i1 %.not.i775, label %pmix_obj_run_destructors.exit, label %.lr.ph.i773, !llvm.loop !3

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i773, %bb.ay
  switch i32 %i.ey, label %bb.az [
    i32 -72, label %bb.mo
    i32 -43, label %bb.ba
  ]

bb.az:                                            ; preds = %pmix_obj_run_destructors.exit
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !34
  %i.fh = load ptr, ptr @prte_tool_basename, align 8, !tbaa !32
  %i.fi = call ptr @prte_strerror(i32 noundef %i.ey) #22
  %i.fj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fg, ptr noundef nonnull @.str.26, ptr noundef %i.fh, ptr noundef %i.fi) #26 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %pmix_obj_run_destructors.exit, %bb.az
  br label %bb.mo

bb.bb:                                            ; preds = %bb.ax, %bb.aw
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 28 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 360 ; 13 uses
  %.09.i = load ptr, ptr %i.fl, align 8, !tbaa !43 ; 4 uses
  %.not10.i = icmp eq ptr %.09.i, %i.fk
  br i1 %.not10.i, label %pmix_cmd_line_get_param.exit.thread, label %.lr.ph.i776

.lr.ph.i776:                                      ; preds = %bb.bb, %bb.bc
  %.011.i = phi ptr [ %.0.i, %bb.bc ], [ %.09.i, %bb.bb ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.011.i, i64 144
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !45
  %i.fo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(7) @.str.27) #23
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %pmix_cmd_line_get_param.exit, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i776
  %i.fq = getelementptr inbounds nuw i8, ptr %.011.i, i64 120
  %.0.i = load ptr, ptr %i.fq, align 8, !tbaa !43 ; 2 uses
  %.not.i777 = icmp eq ptr %.0.i, %i.fk
  br i1 %.not.i777, label %pmix_cmd_line_get_param.exit.thread, label %.lr.ph.i776, !llvm.loop !4

pmix_cmd_line_get_param.exit:                     ; preds = %.lr.ph.i776
  %i.fr = getelementptr inbounds nuw i8, ptr %.011.i, i64 152
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !108
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !32
  %i.fu = call ptr @PMIx_Argv_split(ptr noundef %i.ft, i32 noundef 44) #22 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !32 ; 2 uses
  %.not6841048 = icmp eq ptr %i.fv, null
  br i1 %.not6841048, label %.loopexit1012, label %.lr.ph1050

bb.bd:                                            ; preds = %.lr.ph1050
  %i.fw = add i64 %.05571049, 1                   ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !32 ; 2 uses
  %.not684 = icmp eq ptr %i.fy, null
  br i1 %.not684, label %.loopexit1012, label %.lr.ph1050, !llvm.loop !80

.lr.ph1050:                                       ; preds = %pmix_cmd_line_get_param.exit, %bb.bd
  %i.fz = phi ptr [ %i.fy, %bb.bd ], [ %i.fv, %pmix_cmd_line_get_param.exit ]
  %.05571049 = phi i64 [ %i.fw, %bb.bd ], [ 0, %pmix_cmd_line_get_param.exit ]
  %i.ga = call fastcc zeroext i1 @pmix_check_cli_option(ptr noundef nonnull %i.fz, ptr noundef nonnull @.str.28)
  br i1 %i.ga, label %bb.be, label %bb.bd

bb.be:                                            ; preds = %.lr.ph1050
  store i8 1, ptr @prte_xml_output, align 1, !tbaa !47
  br label %.loopexit1012

.loopexit1012:                                    ; preds = %bb.bd, %pmix_cmd_line_get_param.exit, %bb.be
  call void @PMIx_Argv_free(ptr noundef nonnull %i.fu) #22
  %.09.i778.pre = load ptr, ptr %i.fl, align 8, !tbaa !43
  br label %pmix_cmd_line_get_param.exit.thread

pmix_cmd_line_get_param.exit.thread:              ; preds = %bb.bc, %bb.bb, %.loopexit1012
  %.09.i778 = phi ptr [ %.09.i778.pre, %.loopexit1012 ], [ %.09.i, %bb.bb ], [ %.09.i, %bb.bc ] ; 2 uses
  %.not10.i779 = icmp eq ptr %.09.i778, %i.fk
  br i1 %.not10.i779, label %pmix_cmd_line_get_param.exit785.thread, label %.lr.ph.i780

.lr.ph.i780:                                      ; preds = %pmix_cmd_line_get_param.exit.thread, %bb.bf
  %.011.i781 = phi ptr [ %.0.i782, %bb.bf ], [ %.09.i778, %pmix_cmd_line_get_param.exit.thread ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.011.i781, i64 144
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !45
  %i.gd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gc, ptr noundef nonnull dereferenceable(17) @.str.29) #23
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %pmix_cmd_line_get_param.exit785, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i780
  %i.gf = getelementptr inbounds nuw i8, ptr %.011.i781, i64 120
  %.0.i782 = load ptr, ptr %i.gf, align 8, !tbaa !43 ; 2 uses
  %.not.i783 = icmp eq ptr %.0.i782, %i.fk
  br i1 %.not.i783, label %pmix_cmd_line_get_param.exit785.thread, label %.lr.ph.i780, !llvm.loop !4

pmix_cmd_line_get_param.exit785:                  ; preds = %.lr.ph.i780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.gg = call i32 @pmix_getcwd(ptr noundef nonnull %i.h, i64 noundef 4097) #22 ; 2 uses
  %.not686 = icmp eq i32 %i.gg, 0
  br i1 %.not686, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %pmix_cmd_line_get_param.exit785
  %i.gh = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef nonnull @.str.32, i32 noundef %i.gg) #22 ; 0 uses
  br label %.thread945

bb.bh:                                            ; preds = %pmix_cmd_line_get_param.exit785
  %i.gi = getelementptr inbounds nuw i8, ptr %.011.i781, i64 152 ; 3 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !108
  %i.gk = call i32 @PMIx_Argv_count(ptr noundef %i.gj) #22
  %i.gl = icmp sgt i32 %i.gk, 1
  %i.gm = load ptr, ptr %i.gi, align 8, !tbaa !108 ; 2 uses
  br i1 %i.gl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gn = call ptr @PMIx_Argv_join(ptr noundef %i.gm, i32 noundef 44) #22
  %i.go = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef %i.gn) #22 ; 0 uses
  br label %.thread945

bb.bj:                                            ; preds = %bb.bh
  %i.gp = load ptr, ptr %i.gm, align 8, !tbaa !32
  %i.gq = call zeroext i1 @pmix_path_is_absolute(ptr noundef %i.gp) #22
  %i.gr = load ptr, ptr %i.gi, align 8, !tbaa !108
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !32 ; 2 uses
  br i1 %i.gq, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gt = call noalias ptr (i32, ...) @pmix_os_path(i32 noundef 0, ptr noundef nonnull %i.h, ptr noundef %i.gs, ptr noundef null) #22
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %.0534 = phi ptr [ %i.gt, %bb.bk ], [ %i.gs, %bb.bj ]
  %i.gu = load ptr, ptr @prte_default_hostfile, align 8, !tbaa !32 ; 2 uses
  %.not687 = icmp eq ptr %i.gu, null
  br i1 %.not687, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef nonnull %i.gu) #22
  br label %bb.bn

.thread945:                                       ; preds = %bb.bg, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %bb.mo

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.gv = call noalias ptr @strdup(ptr noundef %.0534) #22
  store ptr %i.gv, ptr @prte_default_hostfile, align 8, !tbaa !32
  store i8 1, ptr @prte_default_hostfile_given, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %pmix_cmd_line_get_param.exit785.thread

pmix_cmd_line_get_param.exit785.thread:           ; preds = %bb.bf, %pmix_cmd_line_get_param.exit.thread, %bb.bn
  %i.gw = call i32 @geteuid() #22
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %pmix_cmd_line_get_param.exit785.thread
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !109
  call void %i.gz(ptr noundef nonnull %9) #22
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %pmix_cmd_line_get_param.exit785.thread
  %.09.i786 = load ptr, ptr %i.fl, align 8, !tbaa !43 ; 4 uses
  %.not10.i787 = icmp eq ptr %.09.i786, %i.fk
  br i1 %.not10.i787, label %pmix_cmd_line_get_param.exit793.thread, label %.lr.ph.i788

.lr.ph.i788:                                      ; preds = %bb.bp, %bb.bq
  %.011.i789 = phi ptr [ %.0.i790, %bb.bq ], [ %.09.i786, %bb.bp ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.011.i789, i64 144
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !45
  %i.hc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(4) @.str.35) #23
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %pmix_cmd_line_get_param.exit793, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i788
  %i.he = getelementptr inbounds nuw i8, ptr %.011.i789, i64 120
  %.0.i790 = load ptr, ptr %i.he, align 8, !tbaa !43 ; 2 uses
  %.not.i791 = icmp eq ptr %.0.i790, %i.fk
  br i1 %.not.i791, label %pmix_cmd_line_get_param.exit793.thread, label %.lr.ph.i788, !llvm.loop !4

pmix_cmd_line_get_param.exit793:                  ; preds = %.lr.ph.i788
  %i.hf = getelementptr inbounds nuw i8, ptr %.011.i789, i64 152 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !108
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !32
  %i.hi = call noalias ptr @fopen(ptr noundef %i.hh, ptr noundef nonnull @.str.36) ; 4 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.br, label %.preheader1011

.preheader1011:                                   ; preds = %pmix_cmd_line_get_param.exit793
  %i.hk = call ptr @pmix_getline(ptr noundef nonnull %i.hi) #22 ; 2 uses
  %.not6891056 = icmp eq ptr %i.hk, null
  br i1 %.not6891056, label %._crit_edge1059, label %.lr.ph1058

bb.br:                                            ; preds = %pmix_cmd_line_get_param.exit793
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !108
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !32
  %i.hn = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef %i.hm) #22 ; 0 uses
  br label %bb.mo

.lr.ph1058:                                       ; preds = %.preheader1011, %._crit_edge1055
  %i.ho = phi ptr [ %i.ib, %._crit_edge1055 ], [ %i.hk, %.preheader1011 ]
  %.05501057 = phi i1 [ false, %._crit_edge1055 ], [ true, %.preheader1011 ]
  br i1 %.05501057, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1058
  %i.hp = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.39) #22 ; 0 uses
  %i.hq = load i32, ptr %i.c, align 4, !tbaa !19
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.c, align 4, !tbaa !19
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph1058
  %i.hs = call ptr @PMIx_Argv_split(ptr noundef nonnull %i.ho, i32 noundef 32) #22 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !32 ; 2 uses
  %.not7531051 = icmp eq ptr %i.ht, null
  br i1 %.not7531051, label %._crit_edge1055, label %.lr.ph1054

.lr.ph1054:                                       ; preds = %bb.bt, %.lr.ph1054
  %i.hu = phi ptr [ %i.ia, %.lr.ph1054 ], [ %i.ht, %bb.bt ]
  %.15581052 = phi i64 [ %i.hy, %.lr.ph1054 ], [ 0, %bb.bt ]
  %i.hv = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.b, ptr noundef nonnull %i.hu) #22 ; 0 uses
  %i.hw = load i32, ptr %i.c, align 4, !tbaa !19
  %i.hx = add nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.c, align 4, !tbaa !19
  %i.hy = add i64 %.15581052, 1                   ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !32 ; 2 uses
  %.not753 = icmp eq ptr %i.ia, null
  br i1 %.not753, label %._crit_edge1055, label %.lr.ph1054, !llvm.loop !81

._crit_edge1055:                                  ; preds = %.lr.ph1054, %bb.bt
  call void @PMIx_Argv_free(ptr noundef nonnull %i.hs) #22
  %i.ib = call ptr @pmix_getline(ptr noundef nonnull %i.hi) #22 ; 2 uses
  %.not689 = icmp eq ptr %i.ib, null
  br i1 %.not689, label %._crit_edge1059, label %.lr.ph1058, !llvm.loop !82

._crit_edge1059:                                  ; preds = %._crit_edge1055, %.preheader1011
  %i.ic = call i32 @fclose(ptr noundef nonnull %i.hi) ; 0 uses
  %.09.i794.pre = load ptr, ptr %i.fl, align 8, !tbaa !43
  br label %pmix_cmd_line_get_param.exit793.thread

pmix_cmd_line_get_param.exit793.thread:           ; preds = %bb.bq, %bb.bp, %._crit_edge1059
  %.09.i794 = phi ptr [ %.09.i794.pre, %._crit_edge1059 ], [ %.09.i786, %bb.bp ], [ %.09.i786, %bb.bq ] ; 3 uses
  %.not10.i795 = icmp eq ptr %.09.i794, %i.fk     ; 2 uses
  br i1 %.not10.i795, label %pmix_cmd_line_get_param.exit801, label %.lr.ph.i796

.lr.ph.i796:                                      ; preds = %pmix_cmd_line_get_param.exit793.thread, %bb.bu
  %.011.i797 = phi ptr [ %.0.i798, %bb.bu ], [ %.09.i794, %pmix_cmd_line_get_param.exit793.thread ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.011.i797, i64 144
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !45
  %i.if = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ie, ptr noundef nonnull dereferenceable(4) @.str.40) #23
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %pmix_cmd_line_get_param.exit801, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i796
  %i.ih = getelementptr inbounds nuw i8, ptr %.011.i797, i64 120
  %.0.i798 = load ptr, ptr %i.ih, align 8, !tbaa !43 ; 2 uses
  %.not.i799 = icmp eq ptr %.0.i798, %i.fk
  br i1 %.not.i799, label %pmix_cmd_line_get_param.exit801, label %.lr.ph.i796, !llvm.loop !4

pmix_cmd_line_get_param.exit801:                  ; preds = %.lr.ph.i796, %bb.bu, %pmix_cmd_line_get_param.exit793.thread
  %.08.i800 = phi ptr [ null, %pmix_cmd_line_get_param.exit793.thread ], [ %.011.i797, %.lr.ph.i796 ], [ null, %bb.bu ] ; 8 uses
  br i1 %.0551, label %bb.bv, label %bb.cn

bb.bv:                                            ; preds = %pmix_cmd_line_get_param.exit801
  %.not690 = icmp eq ptr %.08.i800, null
  br i1 %.not690, label %bb.bw, label %.critedge761

bb.bw:                                            ; preds = %bb.bv
  %i.ii = call ptr @getenv(ptr noundef nonnull @.str.41) #22
  %.not691 = icmp eq ptr %i.ii, null
  br i1 %.not691, label %bb.cn, label %bb.cm

.critedge761:                                     ; preds = %bb.bv
  %i.ij = getelementptr inbounds nuw i8, ptr %.08.i800, i64 152 ; 7 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !108 ; 2 uses
  %.not750 = icmp eq ptr %i.ik, null
  br i1 %.not750, label %bb.cm, label %bb.bx

bb.bx:                                            ; preds = %.critedge761
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !32 ; 9 uses
  %.not751 = icmp eq ptr %i.il, null
  br i1 %.not751, label %bb.cm, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.im = call i32 @strncasecmp(ptr noundef nonnull %i.il, ptr noundef nonnull @.str.42, i64 noundef 5) #23
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.io = getelementptr inbounds nuw i8, ptr %.08.i800, i64 144 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !45
  call void @free(ptr noundef %i.ip) #22
  %i.iq = call noalias dereferenceable_or_null(8) ptr @strdup(ptr noundef nonnull @.str.43) #22
  br label %.sink.split

bb.ca:                                            ; preds = %bb.by
  %i.ir = call i32 @strncasecmp(ptr noundef nonnull %i.il, ptr noundef nonnull @.str.44, i64 noundef 4) #23
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.it = getelementptr inbounds nuw i8, ptr %.08.i800, i64 144 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !45
  call void @free(ptr noundef %i.iu) #22
  %i.iv = call noalias dereferenceable_or_null(8) ptr @strdup(ptr noundef nonnull @.str.43) #22
  store ptr %i.iv, ptr %i.it, align 8, !tbaa !45
  %i.iw = load ptr, ptr %i.ij, align 8, !tbaa !108 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !32
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = call noalias ptr @strdup(ptr noundef nonnull %i.iy) #22
  store ptr %i.iz, ptr %i.a, align 8, !tbaa !32
  %i.ja = load ptr, ptr %i.iw, align 8, !tbaa !32
  call void @free(ptr noundef %i.ja) #22
  %i.jb = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.jc = load ptr, ptr %i.ij, align 8, !tbaa !108
  br label %.sink.split

bb.cc:                                            ; preds = %bb.ca
  %i.jd = call i32 @strncasecmp(ptr noundef nonnull %i.il, ptr noundef nonnull @.str.45, i64 noundef 4) #23
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.jf = getelementptr inbounds nuw i8, ptr %.08.i800, i64 144 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !45
  call void @free(ptr noundef %i.jg) #22
  %i.jh = call noalias dereferenceable_or_null(4) ptr @strdup(ptr noundef nonnull @.str.46) #22
  store ptr %i.jh, ptr %i.jf, align 8, !tbaa !45
  %i.ji = load ptr, ptr %i.ij, align 8, !tbaa !108 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jl = call noalias ptr @strdup(ptr noundef nonnull %i.jk) #22
  store ptr %i.jl, ptr %i.a, align 8, !tbaa !32
  %i.jm = load ptr, ptr %i.ji, align 8, !tbaa !32
  call void @free(ptr noundef %i.jm) #22
  %i.jn = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.jo = load ptr, ptr %i.ij, align 8, !tbaa !108
  br label %.sink.split

bb.ce:                                            ; preds = %bb.cc
  %i.jp = call i32 @strncasecmp(ptr noundef nonnull %i.il, ptr noundef nonnull @.str.47, i64 noundef 3) #23
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.jr = getelementptr inbounds nuw i8, ptr %.08.i800, i64 144 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !45
  call void @free(ptr noundef %i.js) #22
  %i.jt = call noalias dereferenceable_or_null(10) ptr @strdup(ptr noundef nonnull @.str.48) #22
  store ptr %i.jt, ptr %i.jr, align 8, !tbaa !45
  %i.ju = load ptr, ptr %i.ij, align 8, !tbaa !108 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 3
  %i.jx = call noalias ptr @strdup(ptr noundef nonnull %i.jw) #22
  store ptr %i.jx, ptr %i.a, align 8, !tbaa !32
  %i.jy = load ptr, ptr %i.ju, align 8, !tbaa !32
  call void @free(ptr noundef %i.jy) #22
  %i.jz = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ka = load ptr, ptr %i.ij, align 8, !tbaa !108
  br label %.sink.split

bb.cg:                                            ; preds = %bb.ce
  %i.kb = call i32 @strncasecmp(ptr noundef nonnull %i.il, ptr noundef nonnull @.str.49, i64 noundef 6) #23
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.kd = getelementptr inbounds nuw i8, ptr %.08.i800, i64 144 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !45
  call void @free(ptr noundef %i.ke) #22
  %i.kf = call noalias dereferenceable_or_null(19) ptr @strdup(ptr noundef nonnull @.str.50) #22
  br label %.sink.split

bb.ci:                                            ; preds = %bb.cg
  %i.kg = call i32 @strncasecmp(ptr noundef nonnull %i.il, ptr noundef nonnull @.str.51, i64 noundef 6) #23
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ki = getelementptr inbounds nuw i8, ptr %.08.i800, i64 144 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !45
  call void @free(ptr noundef %i.kj) #22
  %i.kk = call noalias dereferenceable_or_null(10) ptr @strdup(ptr noundef nonnull @.str.48) #22
  br label %.sink.split

bb.ck:                                            ; preds = %bb.ci
  %i.kl = call i32 @strncasecmp(ptr noundef nonnull %i.il, ptr noundef nonnull @.str.52, i64 noundef 6) #23
  %.not752 = icmp eq i32 %i.kl, 0
  br i1 %.not752, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.km = load ptr, ptr @prte_tool_basename, align 8, !tbaa !32
  %i.kn = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.53, i32 noundef 1, ptr noundef nonnull %i.il, ptr noundef %i.km) #22 ; 0 uses
  br label %bb.mo

.sink.split:                                      ; preds = %bb.cb, %bb.cf, %bb.cj, %bb.ch, %bb.cd, %bb.bz
  %.sink1317 = phi ptr [ %i.io, %bb.bz ], [ %i.jo, %bb.cd ], [ %i.kd, %bb.ch ], [ %i.ki, %bb.cj ], [ %i.ka, %bb.cf ], [ %i.jc, %bb.cb ]
  %.sink = phi ptr [ %i.iq, %bb.bz ], [ %i.jn, %bb.cd ], [ %i.kf, %bb.ch ], [ %i.kk, %bb.cj ], [ %i.jz, %bb.cf ], [ %i.jb, %bb.cb ]
  store ptr %.sink, ptr %.sink1317, align 8, !tbaa !32
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split, %bb.bw, %bb.ck, %bb.bx, %.critedge761
  %i.ko = call i32 @prun_common(ptr noundef nonnull %9, ptr noundef nonnull %i.dq, i32 noundef %0, ptr noundef %1) #22
  call void @exit(i32 noundef %i.ko) #27
  unreachable

bb.cn:                                            ; preds = %bb.bw, %pmix_cmd_line_get_param.exit801
  br i1 %.not10.i795, label %pmix_cmd_line_get_param.exit809.thread, label %.lr.ph.i804

.lr.ph.i804:                                      ; preds = %bb.cn, %bb.co
  %.011.i805 = phi ptr [ %.0.i806, %bb.co ], [ %.09.i794, %bb.cn ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.011.i805, i64 144
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !45
  %i.kr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.kq, ptr noundef nonnull dereferenceable(10) @.str.54) #23
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %pmix_cmd_line_get_param.exit809, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i804
  %i.kt = getelementptr inbounds nuw i8, ptr %.011.i805, i64 120
  %.0.i806 = load ptr, ptr %i.kt, align 8, !tbaa !43 ; 2 uses
  %.not.i807 = icmp eq ptr %.0.i806, %i.fk
  br i1 %.not.i807, label %pmix_cmd_line_get_param.exit809.thread, label %.lr.ph.i804, !llvm.loop !4

pmix_cmd_line_get_param.exit809:                  ; preds = %.lr.ph.i804
  store i1 true, ptr @keepalive, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %.011.i805, i64 152
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !108
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !32
  %i.kx = call i32 @PMIx_Setenv(ptr noundef nonnull @.str.55, ptr noundef %i.kw, i1 noundef zeroext true, ptr noundef nonnull @environ) #22 ; 0 uses
  br label %pmix_cmd_line_get_param.exit809.thread

pmix_cmd_line_get_param.exit809.thread:           ; preds = %bb.co, %bb.cn, %pmix_cmd_line_get_param.exit809
  %i.ky = call fastcc zeroext i1 @pmix_cmd_line_is_taken(ptr noundef %9, ptr noundef nonnull @.str.56)
  br i1 %i.ky, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %pmix_cmd_line_get_param.exit809.thread
  store i8 1, ptr @prte_debug_flag, align 1, !tbaa !47
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %pmix_cmd_line_get_param.exit809.thread
  %i.kz = call fastcc zeroext i1 @pmix_cmd_line_is_taken(ptr noundef %9, ptr noundef nonnull @.str.57)
  br i1 %i.kz, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i8 1, ptr @prte_debug_daemons_flag, align 1, !tbaa !47
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.la = call fastcc zeroext i1 @pmix_cmd_line_is_taken(ptr noundef %9, ptr noundef nonnull @.str.58)
  br i1 %i.la, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i8 1, ptr @prte_debug_daemons_file_flag, align 1, !tbaa !47
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.lb = call fastcc zeroext i1 @pmix_cmd_line_is_taken(ptr noundef %9, ptr noundef nonnull @.str.59)
  br i1 %i.lb, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store i8 1, ptr @prte_leave_session_attached, align 1, !tbaa !47
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.lc = call fastcc zeroext i1 @pmix_cmd_line_is_taken(ptr noundef %9, ptr noundef nonnull @.str.60)
  br i1 %i.lc, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i8 1, ptr @prte_hetero_nodes, align 1, !tbaa !47
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ld = call fastcc zeroext i1 @pmix_cmd_line_is_taken(ptr noundef %9, ptr noundef nonnull @.str.61)
  br i1 %i.ld, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.le = call i32 @pipe(ptr noundef nonnull @wait_pipe) #22
  %i.lf = icmp slt i32 %i.le, 0
  br i1 %i.lf, label %bb.mo, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lg = load i32, ptr getelementptr inbounds nuw (i8, ptr @wait_pipe, i64 4), align 4, !tbaa !19
  store i32 %i.lg, ptr @prte_state_base, align 4, !tbaa !111
  %i.lh = call i32 @prte_daemon_init_callback(ptr noundef null, ptr noundef nonnull @wait_dvm) #22 ; 0 uses
  %i.li = load i32, ptr @wait_pipe, align 4, !tbaa !19
  %i.lj = call i32 @close(i32 noundef %i.li) #22  ; 0 uses
  br label %bb.dd

bb.db:                                            ; preds = %bb.cy
  %i.lk = call fastcc zeroext i1 @pmix_cmd_line_is_taken(ptr noundef %9, ptr noundef nonnull @.str.62)
  br i1 %i.lk, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ll = call i32 @setsid() #22                  ; 0 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc, %bb.da
  %i.lm = call fastcc zeroext i1 @pmix_cmd_line_is_taken(ptr noundef %9, ptr noundef nonnull @.str.63)
  br i1 %i.lm, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base, i64 4), align 4, !tbaa !112
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.ln = call fastcc zeroext i1 @pmix_cmd_line_is_taken(ptr noundef %9, ptr noundef nonnull @.str.64)
  br i1 %i.ln, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.lo = call i32 @PMIx_Setenv(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i1 noundef zeroext true, ptr noundef nonnull @environ) #22 ; 0 uses
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.lp = call i32 @PMIx_Setenv(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i1 noundef zeroext true, ptr noundef nonnull @environ) #22 ; 0 uses
  %.09.i810 = load ptr, ptr %i.fl, align 8, !tbaa !43 ; 5 uses
  %.not10.i811 = icmp eq ptr %.09.i810, %i.fk
  br i1 %.not10.i811, label %pmix_cmd_line_get_param.exit825.thread, label %.lr.ph.i812

.lr.ph.i812:                                      ; preds = %bb.dh, %bb.di
  %.011.i813 = phi ptr [ %.0.i814, %bb.di ], [ %.09.i810, %bb.dh ] ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.011.i813, i64 144
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !45
  %i.ls = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lr, ptr noundef nonnull dereferenceable(11) @.str.68) #23
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %pmix_cmd_line_get_param.exit817, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i812
  %i.lu = getelementptr inbounds nuw i8, ptr %.011.i813, i64 120
  %.0.i814 = load ptr, ptr %i.lu, align 8, !tbaa !43 ; 2 uses
  %.not.i815 = icmp eq ptr %.0.i814, %i.fk
  br i1 %.not.i815, label %.lr.ph.i820.preheader, label %.lr.ph.i812, !llvm.loop !4

pmix_cmd_line_get_param.exit817:                  ; preds = %.lr.ph.i812
  %i.lv = getelementptr inbounds nuw i8, ptr %.011.i813, i64 152
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !108
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !32
  %i.ly = call noalias ptr @strdup(ptr noundef %i.lx) #22
  store ptr %i.ly, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 1160), align 8, !tbaa !114
  br label %.lr.ph.i820.preheader

.lr.ph.i820.preheader:                            ; preds = %bb.di, %pmix_cmd_line_get_param.exit817
  br label %.lr.ph.i820

.lr.ph.i820:                                      ; preds = %.lr.ph.i820.preheader, %bb.dj
  %.011.i821 = phi ptr [ %.0.i822, %bb.dj ], [ %.09.i810, %.lr.ph.i820.preheader ] ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.011.i821, i64 144
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !45
  %i.mb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ma, ptr noundef nonnull dereferenceable(13) @.str.69) #23
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %pmix_cmd_line_get_param.exit825, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i820
  %i.md = getelementptr inbounds nuw i8, ptr %.011.i821, i64 120
  %.0.i822 = load ptr, ptr %i.md, align 8, !tbaa !43 ; 2 uses
  %.not.i823 = icmp eq ptr %.0.i822, %i.fk
  br i1 %.not.i823, label %pmix_cmd_line_get_param.exit825.thread, label %.lr.ph.i820, !llvm.loop !4

pmix_cmd_line_get_param.exit825:                  ; preds = %.lr.ph.i820
  %i.me = getelementptr inbounds nuw i8, ptr %.011.i821, i64 152
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !108
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !32
  %i.mh = call i32 @setenv(ptr noundef nonnull @.str.70, ptr noundef %i.mg, i32 noundef 1) #22 ; 0 uses
  %.09.i826.pre = load ptr, ptr %i.fl, align 8, !tbaa !43
  br label %pmix_cmd_line_get_param.exit825.thread

pmix_cmd_line_get_param.exit825.thread:           ; preds = %bb.dj, %bb.dh, %pmix_cmd_line_get_param.exit825
  %.09.i826 = phi ptr [ %.09.i826.pre, %pmix_cmd_line_get_param.exit825 ], [ %.09.i810, %bb.dh ], [ %.09.i810, %bb.dj ] ; 2 uses
  %.not10.i827 = icmp eq ptr %.09.i826, %i.fk
  br i1 %.not10.i827, label %pmix_cmd_line_get_param.exit833.thread, label %.lr.ph.i828

.lr.ph.i828:                                      ; preds = %pmix_cmd_line_get_param.exit825.thread, %bb.dk
  %.011.i829 = phi ptr [ %.0.i830, %bb.dk ], [ %.09.i826, %pmix_cmd_line_get_param.exit825.thread ] ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.011.i829, i64 144
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !45
  %i.mk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mj, ptr noundef nonnull dereferenceable(10) @.str.71) #23
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %pmix_cmd_line_get_param.exit833, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i828
  %i.mm = getelementptr inbounds nuw i8, ptr %.011.i829, i64 120
  %.0.i830 = load ptr, ptr %i.mm, align 8, !tbaa !43 ; 2 uses
  %.not.i831 = icmp eq ptr %.0.i830, %i.fk
  br i1 %.not.i831, label %pmix_cmd_line_get_param.exit833.thread, label %.lr.ph.i828, !llvm.loop !4

pmix_cmd_line_get_param.exit833:                  ; preds = %.lr.ph.i828
  %i.mn = getelementptr inbounds nuw i8, ptr %.011.i829, i64 152
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !108
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !32
  %i.mq = call noalias ptr @strdup(ptr noundef %i.mp) #22
  store ptr %i.mq, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 1168), align 8, !tbaa !115
  br label %pmix_cmd_line_get_param.exit833.thread

pmix_cmd_line_get_param.exit833.thread:           ; preds = %bb.dk, %pmix_cmd_line_get_param.exit825.thread, %pmix_cmd_line_get_param.exit833
  store i8 1, ptr @prte_persistent, align 1, !tbaa !47
  %i.mr = call fastcc zeroext i1 @pmix_cmd_line_is_taken(ptr noundef %9, ptr noundef nonnull @.str.61)
  br i1 %i.mr, label %bb.ec, label %bb.dl

bb.dl:                                            ; preds = %pmix_cmd_line_get_param.exit833.thread
  %i.ms = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.mt = call i32 @prte_parse_locals(ptr noundef nonnull %i.dq, ptr noundef nonnull %3, ptr noundef %i.ms, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %4) #22 ; 6 uses
  %i.mu = icmp ne i32 %i.mt, 0                    ; 2 uses
  switch i32 %i.mt, label %bb.dm [
    i32 -13, label %bb.dr
    i32 0, label %bb.dr
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.mv = load i32, ptr @prte_exit_status, align 4, !tbaa !19
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %bb.dn, label %bb.mj

bb.dn:                                            ; preds = %bb.dm
  %i.mx = load i32, ptr @prte_debug_output, align 4, !tbaa !19 ; 3 uses
  %or.cond9 = icmp ult i32 %i.mx, 64
  br i1 %or.cond9, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !52
  %i.nc = icmp sgt i32 %i.nb, 0
  br i1 %i.nc, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.nd = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #22
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.mx, ptr noundef nonnull @.str.72, ptr noundef %i.nd, ptr noundef nonnull @.str.8, i32 noundef 723, i32 noundef %i.mt) #22
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dn
  store i32 %i.mt, ptr @prte_exit_status, align 4, !tbaa !19
  br label %bb.mj

bb.dr:                                            ; preds = %bb.dl, %bb.dl
  br i1 %i.mu, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.nf = load volatile i64, ptr %i.ne, align 8, !tbaa !116
  %i.ng = icmp eq i64 %i.nf, 0
  br i1 %i.ng, label %bb.dt, label %bb.dz

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  br i1 %.0551, label %bb.du, label %bb.ec

bb.du:                                            ; preds = %bb.dt
  %i.nh = load ptr, ptr @prte_tool_basename, align 8, !tbaa !32 ; 2 uses
  %i.ni = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.73, i32 noundef 1, ptr noundef %i.nh, ptr noundef %i.nh) #22 ; 0 uses
  %i.nj = load i32, ptr @prte_exit_status, align 4, !tbaa !19
  %i.nk = icmp eq i32 %i.nj, 0
  %or.cond11 = and i1 %i.mu, %i.nk
  br i1 %or.cond11, label %bb.dv, label %bb.mj

bb.dv:                                            ; preds = %bb.du
  %i.nl = load i32, ptr @prte_debug_output, align 4, !tbaa !19 ; 3 uses
  %or.cond13 = icmp ult i32 %i.nl, 64
  br i1 %or.cond13, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %i.np = load i32, ptr %i.no, align 4, !tbaa !52
  %i.nq = icmp sgt i32 %i.np, 0
  br i1 %i.nq, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.nr = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #22
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.nl, ptr noundef nonnull @.str.72, ptr noundef %i.nr, ptr noundef nonnull @.str.8, i32 noundef 731, i32 noundef %i.mt) #22
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv
  store i32 %i.mt, ptr @prte_exit_status, align 4, !tbaa !19
  br label %bb.mj

bb.dz:                                            ; preds = %bb.ds
  br i1 %.0551, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ns = load ptr, ptr @prte_tool_basename, align 8, !tbaa !32 ; 2 uses
  %i.nt = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.74, i32 noundef 1, ptr noundef %i.ns, ptr noundef %i.ns) #22 ; 0 uses
  br label %bb.mj

bb.eb:                                            ; preds = %bb.dz
  store i8 0, ptr @prte_persistent, align 1, !tbaa !47
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dt, %pmix_cmd_line_get_param.exit833.thread
  %i.nu = call i32 @prte_init(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i8 noundef zeroext 4) #22 ; 3 uses
  switch i32 %i.nu, label %bb.ed [
    i32 0, label %bb.ef
    i32 -43, label %bb.ee
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.nv = call ptr @prte_strerror(i32 noundef %i.nu) #22
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %i.nv, ptr noundef nonnull @.str.8, i32 noundef 751) #22
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.ed
  store i8 1, ptr @prte_finalizing, align 1, !tbaa !47
  call void @prte_job_session_dir_finalize(ptr noundef null) #22
  br label %bb.mo

bb.ef:                                            ; preds = %bb.ec
  %i.nw = call i32 @PMIx_Get(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.d) #22 ; 2 uses
  switch i32 %i.nw, label %bb.eg [
    i32 0, label %bb.em
    i32 -2, label %bb.eh
  ]

bb.eg:                                            ; preds = %bb.ef
  %i.nx = call ptr @PMIx_Error_string(i32 noundef %i.nw) #22
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.76, ptr noundef %i.nx, ptr noundef nonnull @.str.8, i32 noundef 760) #22
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %i.ny = load i32, ptr @prte_exit_status, align 4, !tbaa !19
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.ei, label %bb.mj

bb.ei:                                            ; preds = %bb.eh
  %i.oa = load i32, ptr @prte_debug_output, align 4, !tbaa !19 ; 3 uses
  %or.cond19 = icmp ult i32 %i.oa, 64
  br i1 %or.cond19, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !52
  %i.of = icmp sgt i32 %i.oe, 0
  br i1 %i.of, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.og = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #22
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.oa, ptr noundef nonnull @.str.72, ptr noundef %i.og, ptr noundef nonnull @.str.8, i32 noundef 761, i32 noundef -6) #22
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  store i32 -6, ptr @prte_exit_status, align 4, !tbaa !19
  br label %bb.mj

bb.em:                                            ; preds = %bb.ef
  %i.oh = load ptr, ptr %i.d, align 8, !tbaa !118 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) @myproc, ptr noundef nonnull align 4 dereferenceable(260) %i.oj, i64 260, i1 false)
  call void @PMIx_Value_free(ptr noundef %i.oh, i64 noundef 1) #22
  store ptr null, ptr %i.d, align 8, !tbaa !118
  %.09.i834 = load ptr, ptr %i.fl, align 8, !tbaa !43 ; 2 uses
  %.not10.i835 = icmp eq ptr %.09.i834, %i.fk
  br i1 %.not10.i835, label %pmix_cmd_line_get_param.exit841.thread, label %.lr.ph.i836

.lr.ph.i836:                                      ; preds = %bb.em, %bb.en
  %.011.i837 = phi ptr [ %.0.i838, %bb.en ], [ %.09.i834, %bb.em ] ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.011.i837, i64 144
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !45
  %i.om = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ol, ptr noundef nonnull dereferenceable(16) @.str.77) #23
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %pmix_cmd_line_get_param.exit841, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i836
  %i.oo = getelementptr inbounds nuw i8, ptr %.011.i837, i64 120
  %.0.i838 = load ptr, ptr %i.oo, align 8, !tbaa !43 ; 2 uses
  %.not.i839 = icmp eq ptr %.0.i838, %i.fk
  br i1 %.not.i839, label %pmix_cmd_line_get_param.exit841.thread, label %.lr.ph.i836, !llvm.loop !4

pmix_cmd_line_get_param.exit841:                  ; preds = %.lr.ph.i836
  %i.op = getelementptr inbounds nuw i8, ptr %.011.i837, i64 152
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !108
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !32
  br label %pmix_cmd_line_get_param.exit841.thread

pmix_cmd_line_get_param.exit841.thread:           ; preds = %bb.en, %bb.em, %pmix_cmd_line_get_param.exit841
  %.1535 = phi ptr [ %i.or, %pmix_cmd_line_get_param.exit841 ], [ null, %bb.em ], [ null, %bb.en ]
  %i.os = call i32 @prte_ess_base_setup_signals(ptr noundef %.1535) #22
  %.not699 = icmp eq i32 %i.os, 0
  br i1 %.not699, label %bb.et, label %bb.eo

bb.eo:                                            ; preds = %pmix_cmd_line_get_param.exit841.thread
  %i.ot = load i32, ptr @prte_exit_status, align 4, !tbaa !19
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %bb.ep, label %bb.mj

bb.ep:                                            ; preds = %bb.eo
  %i.ov = load i32, ptr @prte_debug_output, align 4, !tbaa !19 ; 3 uses
  %or.cond21 = icmp ult i32 %i.ov, 64
  br i1 %or.cond21, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.ow
end_hunk_0
begin_hunk_1_@main:bb.a

bb.hu:                                            ; preds = %bb.ht
  %i.yp = load ptr, ptr %i.yk, align 8, !tbaa !32
  %i.yq = call fastcc zeroext i1 @pmix_check_cli_option(ptr noundef %i.yp, ptr noundef nonnull @.str.100)
  br i1 %i.yq, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.yr = call i32 @prte_set_attribute(ptr noundef nonnull %i.ud, i16 noundef zeroext 310, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 1) #22 ; 0 uses
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %indvars.iv.next1165 = add nuw nsw i64 %indvars.iv1164, 1 ; 2 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %indvars.iv.next1165
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !32 ; 2 uses
  %.not742 = icmp eq ptr %i.yt, null
  br i1 %.not742, label %.loopexit1003, label %.lr.ph1084, !llvm.loop !90

.loopexit1003:                                    ; preds = %bb.hw, %.lr.ph1091, %bb.hs
  call void @PMIx_Argv_free(ptr noundef nonnull %i.yh) #22
  %i.yu = load ptr, ptr %i.yc, align 8, !tbaa !108 ; 2 uses
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %.25591090
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !32
  %i.yx = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.yw, i32 noundef 58) #23 ; 2 uses
  %.not743 = icmp eq ptr %i.yx, null
  br i1 %.not743, label %pmix_cmd_line_get_param.exit869, label %bb.hx

bb.hx:                                            ; preds = %.loopexit1003
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 1
  %i.yz = call ptr @PMIx_Argv_split(ptr noundef nonnull %i.yy, i32 noundef 58) #22 ; 4 uses
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !32 ; 2 uses
  %.not7441085 = icmp eq ptr %i.za, null
  br i1 %.not7441085, label %.loopexit1002, label %.lr.ph1088

bb.hy:                                            ; preds = %bb.hz
  %indvars.iv.next1168 = add nuw nsw i64 %indvars.iv1167, 1 ; 2 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %indvars.iv.next1168
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !32 ; 2 uses
  %.not744 = icmp eq ptr %i.zc, null
  br i1 %.not744, label %.loopexit1002, label %.lr.ph1088, !llvm.loop !91

.lr.ph1088:                                       ; preds = %bb.hx, %bb.hy
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %bb.hy ], [ 0, %bb.hx ] ; 2 uses
  %i.zd = phi ptr [ %i.zc, %bb.hy ], [ %i.za, %bb.hx ]
  %i.ze = call fastcc zeroext i1 @pmix_check_cli_option(ptr noundef nonnull %i.zd, ptr noundef nonnull @.str.99)
  br i1 %i.ze, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %.lr.ph1088
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %indvars.iv1167
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !32
  %i.zh = call fastcc zeroext i1 @pmix_check_cli_option(ptr noundef %i.zg, ptr noundef nonnull @.str.100)
  br i1 %i.zh, label %bb.ia, label %bb.hy

bb.ia:                                            ; preds = %bb.hz, %.lr.ph1088
  %i.zi = call i32 @prte_set_attribute(ptr noundef nonnull %i.ud, i16 noundef zeroext 310, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 1) #22 ; 0 uses
  br label %.loopexit1002

.loopexit1002:                                    ; preds = %bb.hy, %bb.hx, %bb.ia
  call void @PMIx_Argv_free(ptr noundef nonnull %i.yz) #22
  %.pre1180 = load ptr, ptr %i.yc, align 8, !tbaa !108
  br label %pmix_cmd_line_get_param.exit869

pmix_cmd_line_get_param.exit869:                  ; preds = %.loopexit1003, %.loopexit1002
  %i.zj = phi ptr [ %i.yu, %.loopexit1003 ], [ %.pre1180, %.loopexit1002 ]
  %i.zk = add i64 %.25591090, 1                   ; 2 uses
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %i.zk
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !32 ; 2 uses
  %.not718 = icmp eq ptr %i.zm, null
  br i1 %.not718, label %.loopexit1004, label %.lr.ph1091, !llvm.loop !92

.loopexit1005:                                    ; preds = %bb.hr, %bb.hq
  %i.zn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_schizo_base, i64 280), align 8, !tbaa !130 ; 2 uses
  %.not714 = icmp eq ptr %i.zn, null
  br i1 %.not714, label %.loopexit1004, label %bb.ib

bb.ib:                                            ; preds = %.loopexit1005
  %i.zo = call ptr @PMIx_Argv_split(ptr noundef nonnull %i.zn, i32 noundef 44) #22 ; 4 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !32 ; 2 uses
  %.not7151092 = icmp eq ptr %i.zp, null
  br i1 %.not7151092, label %._crit_edge1096, label %.lr.ph1095

.lr.ph1095:                                       ; preds = %bb.ib, %bb.ie
  %indvars.iv1170 = phi i64 [ %indvars.iv.next1171, %bb.ie ], [ 0, %bb.ib ] ; 2 uses
  %i.zq = phi ptr [ %i.zz, %bb.ie ], [ %i.zp, %bb.ib ]
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %indvars.iv1170 ; 2 uses
  %i.zs = call fastcc zeroext i1 @pmix_check_cli_option(ptr noundef nonnull %i.zq, ptr noundef nonnull @.str.98)
  br i1 %i.zs, label %.sink.split1319, label %bb.ic

bb.ic:                                            ; preds = %.lr.ph1095
  %i.zt = load ptr, ptr %i.zr, align 8, !tbaa !32
  %i.zu = call fastcc zeroext i1 @pmix_check_cli_option(ptr noundef %i.zt, ptr noundef nonnull @.str.99)
  br i1 %i.zu, label %.sink.split1319, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.zv = load ptr, ptr %i.zr, align 8, !tbaa !32
  %i.zw = call fastcc zeroext i1 @pmix_check_cli_option(ptr noundef %i.zv, ptr noundef nonnull @.str.100)
  br i1 %i.zw, label %.sink.split1319, label %bb.ie

.sink.split1319:                                  ; preds = %bb.ic, %bb.id, %.lr.ph1095
  %.sink1320 = phi i16 [ 268, %.lr.ph1095 ], [ 310, %bb.id ], [ 310, %bb.ic ]
  %i.zx = call i32 @prte_set_attribute(ptr noundef nonnull %i.ud, i16 noundef zeroext %.sink1320, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 1) #22 ; 0 uses
  br label %bb.ie

bb.ie:                                            ; preds = %.sink.split1319, %bb.id
  %indvars.iv.next1171 = add nuw nsw i64 %indvars.iv1170, 1 ; 2 uses
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %indvars.iv.next1171
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !32 ; 2 uses
  %.not715 = icmp eq ptr %i.zz, null
  br i1 %.not715, label %._crit_edge1096, label %.lr.ph1095, !llvm.loop !93

._crit_edge1096:                                  ; preds = %bb.ie, %bb.ib
  call void @PMIx_Argv_free(ptr noundef nonnull %i.zo) #22
  %i.aaa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_schizo_base, i64 280), align 8, !tbaa !130
  %i.aab = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aaa, i32 noundef 58) #23 ; 2 uses
  %.not716 = icmp eq ptr %i.aab, null
  br i1 %.not716, label %.loopexit1004, label %bb.if

bb.if:                                            ; preds = %._crit_edge1096
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 1
  %i.aad = call ptr @PMIx_Argv_split(ptr noundef nonnull %i.aac, i32 noundef 58) #22 ; 4 uses
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !32 ; 2 uses
  %.not7171097 = icmp eq ptr %i.aae, null
  br i1 %.not7171097, label %.loopexit1001, label %.lr.ph1100

bb.ig:                                            ; preds = %bb.ih
  %indvars.iv.next1174 = add nuw nsw i64 %indvars.iv1173, 1 ; 2 uses
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %indvars.iv.next1174
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !32 ; 2 uses
  %.not717 = icmp eq ptr %i.aag, null
  br i1 %.not717, label %.loopexit1001, label %.lr.ph1100, !llvm.loop !94

.lr.ph1100:                                       ; preds = %bb.if, %bb.ig
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %bb.ig ], [ 0, %bb.if ] ; 2 uses
  %i.aah = phi ptr [ %i.aag, %bb.ig ], [ %i.aae, %bb.if ]
  %i.aai = call fastcc zeroext i1 @pmix_check_cli_option(ptr noundef nonnull %i.aah, ptr noundef nonnull @.str.99)
  br i1 %i.aai, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph1100
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %indvars.iv1173
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !32
  %i.aal = call fastcc zeroext i1 @pmix_check_cli_option(ptr noundef %i.aak, ptr noundef nonnull @.str.100)
  br i1 %i.aal, label %bb.ii, label %bb.ig

bb.ii:                                            ; preds = %bb.ih, %.lr.ph1100
  %i.aam = call i32 @prte_set_attribute(ptr noundef nonnull %i.ud, i16 noundef zeroext 310, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 1) #22 ; 0 uses
  br label %.loopexit1001

.loopexit1001:                                    ; preds = %bb.ig, %bb.if, %bb.ii
  call void @PMIx_Argv_free(ptr noundef nonnull %i.aad) #22
  br label %.loopexit1004

.loopexit1004:                                    ; preds = %pmix_cmd_line_get_param.exit869, %pmix_cmd_line_get_param.exit869.preheader, %._crit_edge1096, %.loopexit1001, %.loopexit1005
  %i.aan = load i32, ptr @prte_rml_base, align 8, !tbaa !132 ; 3 uses
  %or.cond43 = icmp ult i32 %i.aan, 64
  br i1 %or.cond43, label %bb.ij, label %bb.il

bb.ij:                                            ; preds = %.loopexit1004
  %i.aao = zext nneg i32 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.aao
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 4
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !52
  %i.aas = icmp sgt i32 %i.aar, 1
  br i1 %i.aas, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.aan, ptr noundef nonnull @.str.101, i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.main, i32 noundef 1121) #22
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij, %.loopexit1004
  call void @prte_rml_recv_buffer_nb(ptr noundef nonnull @prte_name_wildcard, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull @prte_daemon_recv, ptr noundef null) #22
  %i.aat = call ptr @PMIx_Info_list_start() #22   ; 7 uses
  call void @PMIx_Load_procid(ptr noundef nonnull %7, ptr noundef nonnull @myproc, i32 noundef -2) #22
  %i.aau = call i32 @PMIx_Get(ptr noundef nonnull %7, ptr noundef nonnull @.str.102, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.d) #22
  %i.aav = icmp eq i32 %i.aau, 0
  br i1 %i.aav, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.aaw = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !37 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 256
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !133
  call void @PMIx_Load_procid(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 528), ptr noundef %i.aay, i32 noundef %i.aba) #22
  %i.abb = load ptr, ptr %i.d, align 8, !tbaa !118
  call void @PMIx_Value_free(ptr noundef %i.abb, i64 noundef 1) #22
  store ptr null, ptr %i.d, align 8, !tbaa !118
  %i.abc = call i32 @PMIx_Info_list_add(ptr noundef %i.aat, ptr noundef nonnull @.str.103, ptr noundef null, i16 noundef zeroext 1) #22 ; 0 uses
  %i.abd = call i32 @PMIx_Info_list_add(ptr noundef %i.aat, ptr noundef nonnull @.str.102, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 528), i16 noundef zeroext 22) #22 ; 0 uses
  br label %bb.io

bb.in:                                            ; preds = %bb.il
  %i.abe = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 256), align 8, !tbaa !69
  call void @PMIx_Load_procid(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 528), ptr noundef nonnull @prte_process_info, i32 noundef %i.abe) #22
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.abf = load i8, ptr @prte_persistent, align 1, !tbaa !47, !range !105, !noundef !125
  %i.abg = trunc nuw i8 %i.abf to i1
  br i1 %i.abg, label %bb.ip, label %bb.is

bb.ip:                                            ; preds = %bb.io
  %.09.i870 = load ptr, ptr %i.fl, align 8, !tbaa !43 ; 4 uses
  %.not10.i871 = icmp eq ptr %.09.i870, %i.fk
  br i1 %.not10.i871, label %pmix_cmd_line_get_param.exit877.thread, label %.lr.ph.i872

.lr.ph.i872:                                      ; preds = %bb.ip, %bb.iq
  %.011.i873 = phi ptr [ %.0.i874, %bb.iq ], [ %.09.i870, %bb.ip ] ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.011.i873, i64 144
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !45
  %i.abj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.abi, ptr noundef nonnull dereferenceable(9) @.str.104) #23
  %i.abk = icmp eq i32 %i.abj, 0
  br i1 %i.abk, label %pmix_cmd_line_get_param.exit877, label %bb.iq

bb.iq:                                            ; preds = %.lr.ph.i872
  %i.abl = getelementptr inbounds nuw i8, ptr %.011.i873, i64 120
  %.0.i874 = load ptr, ptr %i.abl, align 8, !tbaa !43 ; 2 uses
  %.not.i875 = icmp eq ptr %.0.i874, %i.fk
  br i1 %.not.i875, label %pmix_cmd_line_get_param.exit877.thread, label %.lr.ph.i872, !llvm.loop !4

pmix_cmd_line_get_param.exit877:                  ; preds = %.lr.ph.i872
  %i.abm = getelementptr inbounds nuw i8, ptr %.011.i873, i64 152
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !108
  %i.abo = call ptr @PMIx_Argv_join(ptr noundef %i.abn, i32 noundef 44) #22 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.sd, i64 352
  %i.abq = call i32 @prte_set_attribute(ptr noundef nonnull %i.abp, i16 noundef zeroext 1, i1 noundef zeroext false, ptr noundef %i.abo, i16 noundef zeroext 3) #22 ; 0 uses
  call void @free(ptr noundef %i.abo) #22
  %.09.i878.pre = load ptr, ptr %i.fl, align 8, !tbaa !43
  br label %pmix_cmd_line_get_param.exit877.thread

pmix_cmd_line_get_param.exit877.thread:           ; preds = %bb.iq, %bb.ip, %pmix_cmd_line_get_param.exit877
  %.09.i878 = phi ptr [ %.09.i878.pre, %pmix_cmd_line_get_param.exit877 ], [ %.09.i870, %bb.ip ], [ %.09.i870, %bb.iq ] ; 2 uses
  %.not10.i879 = icmp eq ptr %.09.i878, %i.fk
  br i1 %.not10.i879, label %pmix_cmd_line_get_param.exit885.thread, label %.lr.ph.i880

.lr.ph.i880:                                      ; preds = %pmix_cmd_line_get_param.exit877.thread, %bb.ir
  %.011.i881 = phi ptr [ %.0.i882, %bb.ir ], [ %.09.i878, %pmix_cmd_line_get_param.exit877.thread ] ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.011.i881, i64 144
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !45
  %i.abt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.abs, ptr noundef nonnull dereferenceable(5) @.str.105) #23
  %i.abu = icmp eq i32 %i.abt, 0
  br i1 %i.abu, label %pmix_cmd_line_get_param.exit885, label %bb.ir

bb.ir:                                            ; preds = %.lr.ph.i880
  %i.abv = getelementptr inbounds nuw i8, ptr %.011.i881, i64 120
  %.0.i882 = load ptr, ptr %i.abv, align 8, !tbaa !43 ; 2 uses
  %.not.i883 = icmp eq ptr %.0.i882, %i.fk
  br i1 %.not.i883, label %pmix_cmd_line_get_param.exit885.thread, label %.lr.ph.i880, !llvm.loop !4

pmix_cmd_line_get_param.exit885:                  ; preds = %.lr.ph.i880
  %i.abw = getelementptr inbounds nuw i8, ptr %.011.i881, i64 152
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !108
  %i.aby = call ptr @PMIx_Argv_join(ptr noundef %i.abx, i32 noundef 44) #22 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.sd, i64 352
  %i.aca = call i32 @prte_set_attribute(ptr noundef nonnull %i.abz, i16 noundef zeroext 3, i1 noundef zeroext false, ptr noundef %i.aby, i16 noundef zeroext 3) #22 ; 0 uses
  call void @free(ptr noundef %i.aby) #22
  br label %pmix_cmd_line_get_param.exit885.thread

bb.is:                                            ; preds = %bb.io
  %i.acb = load ptr, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  %.not719 = icmp eq ptr %i.acb, null
  br i1 %.not719, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.acc = call ptr @PMIx_Argv_join(ptr noundef nonnull %i.acb, i32 noundef 44) #22 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.sd, i64 352
  %i.ace = call i32 @prte_set_attribute(ptr noundef nonnull %i.acd, i16 noundef zeroext 1, i1 noundef zeroext false, ptr noundef %i.acc, i16 noundef zeroext 3) #22 ; 0 uses
  call void @free(ptr noundef %i.acc) #22
  %i.acf = load ptr, ptr %i.e, align 8, !tbaa !102
  call void @PMIx_Argv_free(ptr noundef %i.acf) #22
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is
  %i.acg = load ptr, ptr %i.f, align 8, !tbaa !102 ; 2 uses
  %.not720 = icmp eq ptr %i.acg, null
  br i1 %.not720, label %pmix_cmd_line_get_param.exit885.thread, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ach = call ptr @PMIx_Argv_join(ptr noundef nonnull %i.acg, i32 noundef 44) #22 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.sd, i64 352
  %i.acj = call i32 @prte_set_attribute(ptr noundef nonnull %i.aci, i16 noundef zeroext 3, i1 noundef zeroext false, ptr noundef %i.ach, i16 noundef zeroext 3) #22 ; 0 uses
  call void @free(ptr noundef %i.ach) #22
  %i.ack = load ptr, ptr %i.f, align 8, !tbaa !102
  call void @PMIx_Argv_free(ptr noundef %i.ack) #22
  br label %pmix_cmd_line_get_param.exit885.thread

pmix_cmd_line_get_param.exit885.thread:           ; preds = %bb.ir, %pmix_cmd_line_get_param.exit877.thread, %pmix_cmd_line_get_param.exit885, %bb.iv, %bb.iu
  %i.acl = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 72), align 8, !tbaa !136
  %i.acm = icmp sgt i32 %i.acl, 0
  br i1 %i.acm, label %bb.iw, label %bb.iz

bb.iw:                                            ; preds = %pmix_cmd_line_get_param.exit885.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.acn = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #22 ; 0 uses
  %i.aco = load i64, ptr %10, align 8, !tbaa !138
  %i.acp = sitofp i64 %i.aco to double
  %i.acq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !139
  %i.acs = sitofp i64 %i.acr to double
  %i.act = fdiv double %i.acs, 1.000000e+06
  %i.acu = fadd double %i.act, %i.acp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.acv = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 76), align 4, !tbaa !140 ; 3 uses
  %or.cond45 = icmp ult i32 %i.acv, 64
  br i1 %or.cond45, label %bb.ix, label %bb.iz

bb.ix:                                            ; preds = %bb.iw
  %i.acw = zext nneg i32 %i.acv to i64
  %i.acx = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 4
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !52
  %i.ada = icmp sgt i32 %i.acz, 0
  br i1 %i.ada, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.adb = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #22
  %i.adc = getelementptr inbounds nuw i8, ptr %i.rk, i64 168
  %i.add = call ptr @prte_util_print_jobids(ptr noundef nonnull %i.adc) #22
  %i.ade = call ptr @prte_job_state_to_str(i32 noundef 3) #22
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.acv, ptr noundef nonnull @.str.106, ptr noundef %i.adb, double noundef %i.acu, ptr noundef %i.add, ptr noundef %i.ade, ptr noundef nonnull @.str.8, i32 noundef 1180) #22
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iw, %bb.ix, %bb.iy, %pmix_cmd_line_get_param.exit885.thread
  %i.adf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_state, i64 16), align 8, !tbaa !142
  call void %i.adf(ptr noundef nonnull %i.rk, i32 noundef 3) #22
  %i.adg = load i8, ptr @prte_event_base_active, align 1, !tbaa !47, !range !105, !noundef !125
  %i.adh = trunc nuw i8 %i.adg to i1
  %i.adi = load i8, ptr @prte_dvm_ready, align 1, !range !105
  %i.adj = trunc nuw i8 %i.adi to i1              ; 2 uses
  %not.1101 = xor i1 %i.adh, true
  %i.adk = select i1 %not.1101, i1 true, i1 %i.adj
  br i1 %i.adk, label %._crit_edge1104, label %.lr.ph1103

.lr.ph1103:                                       ; preds = %bb.iz, %.lr.ph1103
  %i.adl = load ptr, ptr @prte_event_base, align 8, !tbaa !36
  %i.adm = call i32 @event_base_loop(ptr noundef %i.adl, i32 noundef 1) #22 ; 0 uses
  %i.adn = load i8, ptr @prte_event_base_active, align 1, !tbaa !47, !range !105, !noundef !125
  %i.ado = trunc nuw i8 %i.adn to i1
  %i.adp = load i8, ptr @prte_dvm_ready, align 1, !range !105
  %i.adq = trunc nuw i8 %i.adp to i1              ; 2 uses
  %not. = xor i1 %i.ado, true
  %i.adr = select i1 %not., i1 true, i1 %i.adq
  br i1 %i.adr, label %._crit_edge1104, label %.lr.ph1103, !llvm.loop !95

._crit_edge1104:                                  ; preds = %.lr.ph1103, %bb.iz
  %.lcssa1017 = phi i1 [ %i.adj, %bb.iz ], [ %i.adq, %.lr.ph1103 ]
  br i1 %.lcssa1017, label %bb.jf, label %bb.ja

bb.ja:                                            ; preds = %._crit_edge1104
  %i.ads = load i32, ptr @prte_exit_status, align 4, !tbaa !19
  %i.adt = icmp eq i32 %i.ads, 0
  br i1 %i.adt, label %bb.jb, label %bb.mj

bb.jb:                                            ; preds = %bb.ja
  %i.adu = load i32, ptr @prte_debug_output, align 4, !tbaa !19 ; 3 uses
  %or.cond47 = icmp ult i32 %i.adu, 64
  br i1 %or.cond47, label %bb.jc, label %bb.je

bb.jc:                                            ; preds = %bb.jb
  %i.adv = zext nneg i32 %i.adu to i64
  %i.adw = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 4
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !52
  %i.adz = icmp sgt i32 %i.ady, 0
  br i1 %i.adz, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.aea = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #22
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.adu, ptr noundef nonnull @.str.72, ptr noundef %i.aea, ptr noundef nonnull @.str.8, i32 noundef 1189, i32 noundef -6) #22
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc, %bb.jb
  store i32 -6, ptr @prte_exit_status, align 4, !tbaa !19
  br label %bb.mj

bb.jf:                                            ; preds = %._crit_edge1104
  %i.aeb = load i32, ptr @prted_debug_failure, align 4, !tbaa !19 ; 3 uses
  %.not723 = icmp eq i32 %i.aeb, -4
  br i1 %.not723, label %bb.jr, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aec = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 256), align 8, !tbaa !69
  %i.aed = icmp eq i32 %i.aec, %i.aeb
  %i.aee = icmp eq i32 %i.aeb, -2
  %or.cond49 = or i1 %i.aee, %i.aed
  br i1 %or.cond49, label %bb.jh, label %bb.jr

bb.jh:                                            ; preds = %bb.jg
  %i.aef = load i32, ptr @prted_debug_failure_delay, align 4, !tbaa !19
  %i.aeg = icmp sgt i32 %i.aef, 0
  br i1 %i.aeg, label %bb.ji, label %bb.jm

bb.ji:                                            ; preds = %bb.jh
  %i.aeh = call fastcc ptr @pmix_obj_new_tma(ptr noundef nonnull @prte_timer_t_class) ; 4 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 136 ; 2 uses
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !144
  %i.aek = load ptr, ptr @prte_event_base, align 8, !tbaa !36
  %i.ael = call i32 @prte_event_assign(ptr noundef %i.aej, ptr noundef %i.aek, i32 noundef -1, i16 noundef signext 0, ptr noundef nonnull @shutdown_callback, ptr noundef %i.aeh) #22 ; 0 uses
  %i.aem = load i32, ptr @prted_debug_failure_delay, align 4, !tbaa !19
  %i.aen = sext i32 %i.aem to i64                 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 120 ; 2 uses
  store i64 %i.aen, ptr %i.aeo, align 8, !tbaa !145
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeh, i64 128
  store i64 0, ptr %i.aep, align 8, !tbaa !146
  %i.aeq = load i32, ptr @prte_debug_output, align 4, !tbaa !19 ; 3 uses
  %or.cond51 = icmp ult i32 %i.aeq, 64
  br i1 %or.cond51, label %bb.jj, label %bb.jl

bb.jj:                                            ; preds = %bb.ji
  %i.aer = zext nneg i32 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.aer
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 4
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !52
  %i.aev = icmp sgt i32 %i.aeu, 0
  br i1 %i.aev, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.aeq, ptr noundef nonnull @.str.108, i64 noundef %i.aen, i64 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 1202) #22
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj, %bb.ji
  fence release
  %i.aew = load ptr, ptr %i.aei, align 8, !tbaa !144
  %i.aex = call i32 @event_add(ptr noundef %i.aew, ptr noundef nonnull %i.aeo) #22 ; 0 uses
  br label %bb.jr

bb.jm:                                            ; preds = %bb.jh
  %i.aey = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #22
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.109, ptr noundef %i.aey) #22
  %i.aez = call ptr @prte_get_job_data_object(ptr noundef nonnull @prte_process_info) #22 ; 9 uses
  %i.afa = call i32 @pthread_mutex_lock(ptr noundef %i.aez) #22
  %i.afb = icmp eq i32 %i.afa, 35
  br i1 %i.afb, label %bb.jn, label %pmix_obj_update.exit

bb.jn:                                            ; preds = %bb.jm
  %i.afc = tail call ptr @__errno_location() #29
  store i32 35, ptr %i.afc, align 4, !tbaa !19
  call void @perror(ptr noundef nonnull @.str.129) #25
  call void @abort() #27
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.jm
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aez, i64 48 ; 2 uses
  %i.afe = load i32, ptr %i.afd, align 8, !tbaa !28
  %i.aff = add nsw i32 %i.afe, -1                 ; 2 uses
  store i32 %i.aff, ptr %i.afd, align 8, !tbaa !28
  %i.afg = call i32 @pthread_mutex_unlock(ptr noundef %i.aez) #22 ; 0 uses
  %i.afh = icmp eq i32 %i.aff, 0
  br i1 %i.afh, label %bb.jo, label %bb.mj

bb.jo:                                            ; preds = %pmix_obj_update.exit
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aez, i64 40
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !27
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 48
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !42 ; 2 uses
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !30 ; 2 uses
  %.not6.i886 = icmp eq ptr %i.afm, null
  br i1 %.not6.i886, label %pmix_obj_run_destructors.exit890, label %.lr.ph.i887

.lr.ph.i887:                                      ; preds = %bb.jo, %.lr.ph.i887
  %i.afn = phi ptr [ %i.afp, %.lr.ph.i887 ], [ %i.afm, %bb.jo ]
  %.07.i888 = phi ptr [ %i.afo, %.lr.ph.i887 ], [ %i.afl, %bb.jo ]
  call void %i.afn(ptr noundef nonnull %i.aez) #22, !inline_history !2
  %i.afo = getelementptr inbounds nuw i8, ptr %.07.i888, i64 8 ; 2 uses
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !30 ; 2 uses
  %.not.i889 = icmp eq ptr %i.afp, null
  br i1 %.not.i889, label %pmix_obj_run_destructors.exit890, label %.lr.ph.i887, !llvm.loop !3

pmix_obj_run_destructors.exit890:                 ; preds = %.lr.ph.i887, %bb.jo
  %i.afq = getelementptr inbounds nuw i8, ptr %i.aez, i64 96
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !70 ; 2 uses
  %.not724 = icmp eq ptr %i.afr, null
  br i1 %.not724, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %pmix_obj_run_destructors.exit890
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aez, i64 56
  call void %i.afr(ptr noundef nonnull %i.afs, ptr noundef nonnull %i.aez) #22, !inline_history !5
  br label %bb.mj

bb.jq:                                            ; preds = %pmix_obj_run_destructors.exit890
  call void @free(ptr noundef nonnull %i.aez) #22
  br label %bb.mj

bb.jr:                                            ; preds = %bb.jl, %bb.jg, %bb.jf
  %.09.i892 = load ptr, ptr %i.fl, align 8, !tbaa !43 ; 2 uses
  %.not10.i893 = icmp eq ptr %.09.i892, %i.fk
  br i1 %.not10.i893, label %pmix_cmd_line_get_param.exit899.thread, label %.lr.ph.i894
end_hunk_1
