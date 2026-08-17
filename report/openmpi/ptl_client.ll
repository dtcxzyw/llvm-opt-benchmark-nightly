inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@connect_to_peer:bb.a
  store ptr @pmix_list_t_class, ptr %i.bg, align 8, !tbaa !75
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 1, ptr %i.bh, align 8, !tbaa !76
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i8 0, i64 64, i1 false)
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !77 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !78 ; 2 uses
  %.not6.i = icmp eq ptr %i.bk, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %i.bl = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.bk, %bb.o ]
  %.07.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.bj, %bb.o ]
  call void %i.bl(ptr noundef nonnull %5) #10, !inline_history !79
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !78 ; 2 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !80

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.o
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.bp = call i32 @pmix_ptl_base_parse_uri_file(ptr noundef %i.bo, i1 noundef zeroext true, ptr noundef nonnull %5) #10
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !8
  call void @free(ptr noundef %i.bq) #10
  store ptr null, ptr %i.e, align 8, !tbaa !8
  %i.br = icmp eq i32 %i.bp, 0
  br i1 %i.br, label %bb.p, label %bb.al

bb.p:                                             ; preds = %pmix_obj_run_constructors.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 9 uses
  %i.bt = load volatile i64, ptr %i.bs, align 8, !tbaa !81
  %.not128 = icmp eq i64 %i.bt, 0
  br i1 %.not128, label %bb.al, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 5 uses
  %.val = load ptr, ptr %i.bu, align 8, !tbaa !82 ; 4 uses
  %i.bv = call ptr @PMIx_Info_list_start() #10    ; 5 uses
  %i.bw = call i32 @getpid() #10
  store i32 %i.bw, ptr %i.f, align 4, !tbaa !11
  %i.bx = call i32 @PMIx_Info_list_add(ptr noundef %i.bv, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, i16 noundef zeroext 5) #10 ; 0 uses
  %i.by = call ptr @pmix_ptl_base_get_cmd_line() #10 ; 3 uses
  %.not129 = icmp eq ptr %i.by, null
  br i1 %.not129, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = call i32 @PMIx_Info_list_add(ptr noundef %i.bv, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.by, i16 noundef zeroext 3) #10 ; 0 uses
  call void @free(ptr noundef nonnull %i.by) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ca = call i32 @PMIx_Info_list_convert(ptr noundef %i.bv, ptr noundef nonnull %4) #10 ; 4 uses
  switch i32 %i.ca, label %bb.t [
    i32 -60, label %bb.ab
    i32 0, label %bb.aa
    i32 -2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.cb = call ptr @PMIx_Error_string(i32 noundef %i.ca) #10
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %i.cb, ptr noundef nonnull @.str.8, i32 noundef 165) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @PMIx_Info_list_release(ptr noundef %i.bv) #10
  %i.cc = load volatile i64, ptr %i.bs, align 8, !tbaa !81
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %._crit_edge194, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.u, %bb.z
  %i.ce = load volatile i64, ptr %i.bs, align 8, !tbaa !81
  %i.cf = add i64 %i.ce, -1
  store volatile i64 %i.cf, ptr %i.bs, align 8, !tbaa !81
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !82 ; 11 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  %i.ci = load volatile ptr, ptr %i.ch, align 8, !tbaa !83
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 120 ; 2 uses
  %i.ck = load volatile ptr, ptr %i.cj, align 8, !tbaa !84
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 128
  store volatile ptr %i.ci, ptr %i.cl, align 8, !tbaa !83
  %i.cm = load volatile ptr, ptr %i.cj, align 8, !tbaa !84
  store ptr %i.cm, ptr %i.bu, align 8, !tbaa !82
  %i.cn = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cg) #10
  %i.co = icmp eq i32 %i.cn, 35
  br i1 %i.co, label %bb.v, label %pmix_obj_update.exit141

bb.v:                                             ; preds = %.lr.ph193
  %i.cp = tail call ptr @__errno_location() #12
  store i32 35, ptr %i.cp, align 4, !tbaa !11
  call void @perror(ptr noundef nonnull @.str.12) #13
  call void @abort() #14
  unreachable

pmix_obj_update.exit141:                          ; preds = %.lr.ph193
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !76
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !76
  %i.ct = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cg) #10 ; 0 uses
  %i.cu = icmp eq i32 %i.cs, 0
  br i1 %i.cu, label %bb.w, label %bb.z

bb.w:                                             ; preds = %pmix_obj_update.exit141
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !75
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !85 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !78 ; 2 uses
  %.not6.i142 = icmp eq ptr %i.cz, null
  br i1 %.not6.i142, label %pmix_obj_run_destructors.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.w, %.lr.ph.i143
  %i.da = phi ptr [ %i.dc, %.lr.ph.i143 ], [ %i.cz, %bb.w ]
  %.07.i144 = phi ptr [ %i.db, %.lr.ph.i143 ], [ %i.cy, %bb.w ]
  call void %i.da(ptr noundef nonnull %i.cg) #10, !inline_history !86
  %i.db = getelementptr inbounds nuw i8, ptr %.07.i144, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !78 ; 2 uses
  %.not.i145 = icmp eq ptr %i.dc, null
  br i1 %.not.i145, label %pmix_obj_run_destructors.exit, label %.lr.ph.i143, !llvm.loop !87

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i143, %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !88 ; 2 uses
  %.not133 = icmp eq ptr %i.de, null
  br i1 %.not133, label %bb.y, label %bb.x

bb.x:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  call void %i.de(ptr noundef nonnull %i.df, ptr noundef nonnull %i.cg) #10, !inline_history !89
  br label %bb.z

bb.y:                                             ; preds = %pmix_obj_run_destructors.exit
  call void @free(ptr noundef nonnull %i.cg) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %pmix_obj_update.exit141
  %i.dg = load volatile i64, ptr %i.bs, align 8, !tbaa !81
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %._crit_edge194, label %.lr.ph193, !llvm.loop !90

._crit_edge194:                                   ; preds = %bb.z, %bb.u
  %i.di = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !85 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !78 ; 2 uses
  %.not6.i146 = icmp eq ptr %i.dl, null
  br i1 %.not6.i146, label %pmix_obj_run_destructors.exit150, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %._crit_edge194, %.lr.ph.i147
  %i.dm = phi ptr [ %i.do, %.lr.ph.i147 ], [ %i.dl, %._crit_edge194 ]
  %.07.i148 = phi ptr [ %i.dn, %.lr.ph.i147 ], [ %i.dk, %._crit_edge194 ]
  call void %i.dm(ptr noundef nonnull %5) #10, !inline_history !86
  %i.dn = getelementptr inbounds nuw i8, ptr %.07.i148, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !78 ; 2 uses
  %.not.i149 = icmp eq ptr %i.do, null
  br i1 %.not.i149, label %pmix_obj_run_destructors.exit150, label %.lr.ph.i147, !llvm.loop !87

bb.aa:                                            ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !91
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !93
  br label %bb.ab

bb.ab:                                            ; preds = %bb.s, %bb.aa
  %.0102 = phi i64 [ %i.ds, %bb.aa ], [ 0, %bb.s ]
  %.0101 = phi ptr [ %i.dq, %bb.aa ], [ null, %bb.s ]
  call void @PMIx_Info_list_release(ptr noundef %i.bv) #10
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !30
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 144
  store i16 2, ptr %i.du, align 8, !tbaa !94
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 2, ptr %i.dv, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.dw = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !95 ; 3 uses
  %.not134 = icmp eq ptr %i.dx, null
  br i1 %.not134, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !28
  %i.dz = icmp eq i8 %i.dy, 118
  %.sink.idx = zext i1 %i.dz to i64
  %.sink = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.sink.idx
  %i.ea = call i64 @__isoc23_strtoul(ptr noundef nonnull %.sink, ptr noundef nonnull %i.g, i32 noundef 10) #10
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1 ; 2 uses
  store ptr %i.ec, ptr %i.g, align 8, !tbaa !8
  %i.ed = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.g, i32 noundef 10) #10
  %i.ee = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 2 uses
  store ptr %i.ef, ptr %i.g, align 8, !tbaa !8
  %i.eg = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.ef, ptr noundef null, i32 noundef 10) #10
  %i.eh = trunc i64 %i.ea to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 %i.eh, ptr %i.ei, align 4, !tbaa !97
  %i.ej = trunc i64 %i.ed to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 141
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !98
  %i.el = trunc i64 %i.eg to i8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 2, ptr %i.em, align 4, !tbaa !97
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink235 = phi i64 [ 141, %bb.ad ], [ 142, %bb.ac ]
  %.sink233 = phi i8 [ 0, %bb.ad ], [ %i.el, %bb.ac ]
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink235
  store i8 %.sink233, ptr %6, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %i.en = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !99
  %i.ep = call i32 @pmix_ptl_base_make_connection(ptr noundef nonnull %0, ptr noundef %i.eo, ptr noundef %.0101, i64 noundef %.0102) #10
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !100
  store ptr %i.es, ptr %i.c, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !101
  store i32 %i.eu, ptr %i.d, align 4, !tbaa !11
  %i.ev = load ptr, ptr %i.en, align 8, !tbaa !99
  store ptr %i.ev, ptr %i.b, align 8, !tbaa !8
  store ptr null, ptr %i.er, align 8, !tbaa !100
  store ptr null, ptr %i.en, align 8, !tbaa !99
  %i.ew = load volatile i64, ptr %i.bs, align 8, !tbaa !81
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.af, %bb.ak
  %i.ey = load volatile i64, ptr %i.bs, align 8, !tbaa !81
  %i.ez = add i64 %i.ey, -1
  store volatile i64 %i.ez, ptr %i.bs, align 8, !tbaa !81
  %i.fa = load ptr, ptr %i.bu, align 8, !tbaa !82 ; 11 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  %i.fc = load volatile ptr, ptr %i.fb, align 8, !tbaa !83
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 120 ; 2 uses
  %i.fe = load volatile ptr, ptr %i.fd, align 8, !tbaa !84
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 128
  store volatile ptr %i.fc, ptr %i.ff, align 8, !tbaa !83
  %i.fg = load volatile ptr, ptr %i.fd, align 8, !tbaa !84
  store ptr %i.fg, ptr %i.bu, align 8, !tbaa !82
  %i.fh = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.fa) #10
  %i.fi = icmp eq i32 %i.fh, 35
  br i1 %i.fi, label %bb.ag, label %pmix_obj_update.exit140

bb.ag:                                            ; preds = %.lr.ph190
  %i.fj = tail call ptr @__errno_location() #12
  store i32 35, ptr %i.fj, align 4, !tbaa !11
  call void @perror(ptr noundef nonnull @.str.12) #13
  call void @abort() #14
  unreachable

pmix_obj_update.exit140:                          ; preds = %.lr.ph190
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 48 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !76
  %i.fm = add nsw i32 %i.fl, -1                   ; 2 uses
  store i32 %i.fm, ptr %i.fk, align 8, !tbaa !76
  %i.fn = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fa) #10 ; 0 uses
  %i.fo = icmp eq i32 %i.fm, 0
  br i1 %i.fo, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %pmix_obj_update.exit140
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !75
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !85 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !78 ; 2 uses
  %.not6.i153 = icmp eq ptr %i.ft, null
  br i1 %.not6.i153, label %pmix_obj_run_destructors.exit157, label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %bb.ah, %.lr.ph.i154
  %i.fu = phi ptr [ %i.fw, %.lr.ph.i154 ], [ %i.ft, %bb.ah ]
  %.07.i155 = phi ptr [ %i.fv, %.lr.ph.i154 ], [ %i.fs, %bb.ah ]
  call void %i.fu(ptr noundef nonnull %i.fa) #10, !inline_history !86
  %i.fv = getelementptr inbounds nuw i8, ptr %.07.i155, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !78 ; 2 uses
  %.not.i156 = icmp eq ptr %i.fw, null
  br i1 %.not.i156, label %pmix_obj_run_destructors.exit157, label %.lr.ph.i154, !llvm.loop !87

pmix_obj_run_destructors.exit157:                 ; preds = %.lr.ph.i154, %bb.ah
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !88 ; 2 uses
  %.not139 = icmp eq ptr %i.fy, null
  br i1 %.not139, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %pmix_obj_run_destructors.exit157
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  call void %i.fy(ptr noundef nonnull %i.fz, ptr noundef nonnull %i.fa) #10, !inline_history !89
  br label %bb.ak

bb.aj:                                            ; preds = %pmix_obj_run_destructors.exit157
  call void @free(ptr noundef nonnull %i.fa) #10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %pmix_obj_update.exit140
  %i.ga = load volatile i64, ptr %i.bs, align 8, !tbaa !81
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %._crit_edge191, label %.lr.ph190, !llvm.loop !102

._crit_edge191:                                   ; preds = %bb.ak, %bb.af
  %i.gc = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !85 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !78 ; 2 uses
  %.not6.i158 = icmp eq ptr %i.gf, null
  br i1 %.not6.i158, label %pmix_obj_run_destructors.exit162, label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %._crit_edge191, %.lr.ph.i159
  %i.gg = phi ptr [ %i.gi, %.lr.ph.i159 ], [ %i.gf, %._crit_edge191 ]
  %.07.i160 = phi ptr [ %i.gh, %.lr.ph.i159 ], [ %i.ge, %._crit_edge191 ]
  call void %i.gg(ptr noundef nonnull %5) #10, !inline_history !86
  %i.gh = getelementptr inbounds nuw i8, ptr %.07.i160, i64 8 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !78 ; 2 uses
  %.not.i161 = icmp eq ptr %i.gi, null
  br i1 %.not.i161, label %pmix_obj_run_destructors.exit162, label %.lr.ph.i159, !llvm.loop !87

bb.al:                                            ; preds = %bb.ae, %bb.p, %pmix_obj_run_constructors.exit
  %i.gj = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base_framework, i64 76), align 4, !tbaa !12 ; 3 uses
  %or.cond5 = icmp ult i32 %i.gj, 64
  br i1 %or.cond5, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !23
  %i.go = icmp sgt i32 %i.gn, 1
  br i1 %i.go, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.gj, ptr noundef nonnull @.str.9) #10
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.am, %bb.an
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 4 uses
  %i.gq = load volatile i64, ptr %i.gp, align 8, !tbaa !81
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.ao
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph196, %bb.au
  %i.gt = load volatile i64, ptr %i.gp, align 8, !tbaa !81
  %i.gu = add i64 %i.gt, -1
  store volatile i64 %i.gu, ptr %i.gp, align 8, !tbaa !81
  %i.gv = load ptr, ptr %i.gs, align 8, !tbaa !82 ; 11 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 128
  %i.gx = load volatile ptr, ptr %i.gw, align 8, !tbaa !83
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 120 ; 2 uses
  %i.gz = load volatile ptr, ptr %i.gy, align 8, !tbaa !84
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 128
  store volatile ptr %i.gx, ptr %i.ha, align 8, !tbaa !83
  %i.hb = load volatile ptr, ptr %i.gy, align 8, !tbaa !84
  store ptr %i.hb, ptr %i.gs, align 8, !tbaa !82
  %i.hc = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.gv) #10
  %i.hd = icmp eq i32 %i.hc, 35
  br i1 %i.hd, label %bb.aq, label %pmix_obj_update.exit

bb.aq:                                            ; preds = %bb.ap
  %i.he = tail call ptr @__errno_location() #12
  store i32 35, ptr %i.he, align 4, !tbaa !11
  call void @perror(ptr noundef nonnull @.str.12) #13
  call void @abort() #14
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.ap
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gv, i64 48 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !76
  %i.hh = add nsw i32 %i.hg, -1                   ; 2 uses
  store i32 %i.hh, ptr %i.hf, align 8, !tbaa !76
  %i.hi = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gv) #10 ; 0 uses
  %i.hj = icmp eq i32 %i.hh, 0
  br i1 %i.hj, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %pmix_obj_update.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !75
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !85 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !78 ; 2 uses
  %.not6.i165 = icmp eq ptr %i.ho, null
  br i1 %.not6.i165, label %pmix_obj_run_destructors.exit169, label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %bb.ar, %.lr.ph.i166
  %i.hp = phi ptr [ %i.hr, %.lr.ph.i166 ], [ %i.ho, %bb.ar ]
  %.07.i167 = phi ptr [ %i.hq, %.lr.ph.i166 ], [ %i.hn, %bb.ar ]
  call void %i.hp(ptr noundef nonnull %i.gv) #10, !inline_history !86
  %i.hq = getelementptr inbounds nuw i8, ptr %.07.i167, i64 8 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !78 ; 2 uses
  %.not.i168 = icmp eq ptr %i.hr, null
  br i1 %.not.i168, label %pmix_obj_run_destructors.exit169, label %.lr.ph.i166, !llvm.loop !87

pmix_obj_run_destructors.exit169:                 ; preds = %.lr.ph.i166, %bb.ar
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gv, i64 96
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !88 ; 2 uses
  %.not136 = icmp eq ptr %i.ht, null
  br i1 %.not136, label %bb.at, label %bb.as

bb.as:                                            ; preds = %pmix_obj_run_destructors.exit169
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  call void %i.ht(ptr noundef nonnull %i.hu, ptr noundef nonnull %i.gv) #10, !inline_history !89
  br label %bb.au

bb.at:                                            ; preds = %pmix_obj_run_destructors.exit169
  call void @free(ptr noundef nonnull %i.gv) #10
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %pmix_obj_update.exit
  %i.hv = load volatile i64, ptr %i.gp, align 8, !tbaa !81
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %._crit_edge197, label %bb.ap, !llvm.loop !103

._crit_edge197:                                   ; preds = %bb.au, %bb.ao
  %i.hx = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !85 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !78 ; 2 uses
  %.not6.i170 = icmp eq ptr %i.ia, null
  br i1 %.not6.i170, label %pmix_obj_run_destructors.exit150, label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %._crit_edge197, %.lr.ph.i171
  %i.ib = phi ptr [ %i.id, %.lr.ph.i171 ], [ %i.ia, %._crit_edge197 ]
  %.07.i172 = phi ptr [ %i.ic, %.lr.ph.i171 ], [ %i.hz, %._crit_edge197 ]
  call void %i.ib(ptr noundef nonnull %5) #10, !inline_history !86
  %i.ic = getelementptr inbounds nuw i8, ptr %.07.i172, i64 8 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !78 ; 2 uses
  %.not.i173 = icmp eq ptr %i.id, null
  br i1 %.not.i173, label %pmix_obj_run_destructors.exit150, label %.lr.ph.i171, !llvm.loop !87

bb.av:                                            ; preds = %thread-pre-split, %._crit_edge202
  %i.ie = phi ptr [ %.pre, %._crit_edge202 ], [ %i.u, %thread-pre-split ]
  %i.if = call i32 @pmix_ptl_base_parse_uri(ptr noundef %i.ie, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #10 ; 2 uses
  %.not125 = icmp eq i32 %i.if, 0
  br i1 %.not125, label %bb.aw, label %pmix_obj_run_destructors.exit150

bb.aw:                                            ; preds = %bb.av
  %i.ig = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base_framework, i64 76), align 4, !tbaa !12 ; 3 uses
  %or.cond7 = icmp ult i32 %i.ig, 64
  br i1 %or.cond7, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !23
  %i.il = icmp sgt i32 %i.ik, 1
  br i1 %i.il, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.im = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.in = load i32, ptr %i.d, align 4, !tbaa !11
  %i.io = load ptr, ptr %i.b, align 8, !tbaa !8
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ig, ptr noundef nonnull @.str.10, ptr noundef %i.im, i32 noundef %i.in, ptr noundef %i.io) #10
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.ip = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.iq = call i32 @pmix_ptl_base_make_connection(ptr noundef %0, ptr noundef %i.ip, ptr noundef null, i64 noundef 0) #10 ; 2 uses
  %.not126 = icmp eq i32 %i.iq, 0
  br i1 %.not126, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ir = load ptr, ptr %i.c, align 8, !tbaa !8
  call void @free(ptr noundef %i.ir) #10
  %i.is = load ptr, ptr %i.b, align 8, !tbaa !8
  call void @free(ptr noundef %i.is) #10
  br label %pmix_obj_run_destructors.exit150

bb.bb:                                            ; preds = %bb.az
  %i.it = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base_framework, i64 76), align 4, !tbaa !12 ; 3 uses
  %or.cond9 = icmp ult i32 %i.it, 64
  br i1 %or.cond9, label %bb.bc, label %pmix_obj_run_destructors.exit162

bb.bc:                                            ; preds = %bb.bb
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !23
  %i.iy = icmp sgt i32 %i.ix, 1
  br i1 %i.iy, label %bb.bd, label %pmix_obj_run_destructors.exit162

bb.bd:                                            ; preds = %bb.bc
  %i.iz = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.ja = load i32, ptr %i.d, align 4, !tbaa !11
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.it, ptr noundef nonnull @.str.11, ptr noundef %i.iz, i32 noundef %i.ja) #10
  br label %pmix_obj_run_destructors.exit162

pmix_obj_run_destructors.exit162:                 ; preds = %.lr.ph.i159, %._crit_edge191, %bb.bb, %bb.bc, %bb.bd
  %i.jb = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.jc = load i32, ptr %i.d, align 4, !tbaa !11
  call void @pmix_ptl_base_complete_connection(ptr noundef %0, ptr noundef %i.jb, i32 noundef %i.jc) #10
  %i.jd = load ptr, ptr %i.b, align 8, !tbaa !8
  store ptr %i.jd, ptr %3, align 8, !tbaa !8
  %i.je = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %.not138 = icmp eq ptr %i.je, null
  br i1 %.not138, label %pmix_obj_run_destructors.exit150, label %bb.be

bb.be:                                            ; preds = %pmix_obj_run_destructors.exit162
  call void @free(ptr noundef nonnull %i.je) #10
  br label %pmix_obj_run_destructors.exit150

pmix_obj_run_destructors.exit150:                 ; preds = %.lr.ph.i147, %.lr.ph.i171, %._crit_edge197, %._crit_edge194, %._crit_edge, %pmix_obj_run_destructors.exit162, %bb.be, %bb.av, %bb.i, %bb.f, %bb.ba
  %.0 = phi i32 [ %i.iq, %bb.ba ], [ -27, %bb.f ], [ %.097.lcssa, %._crit_edge ], [ %i.if, %bb.av ], [ -25, %.lr.ph.i171 ], [ 0, %pmix_obj_run_destructors.exit162 ], [ -32, %bb.i ], [ 0, %bb.be ], [ %i.ca, %._crit_edge194 ], [ -25, %._crit_edge197 ], [ %i.ca, %.lr.ph.i147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @PMIx_Check_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PMIx_Argv_split(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pmix_ptl_base_set_peer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #2

declare i32 @pmix_ptl_base_check_server_uris(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pmix_bfrops_base_assign_module(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #2

declare i32 @pmix_ptl_base_parse_uri_file(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare ptr @PMIx_Info_list_start() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #4

declare i32 @PMIx_Info_list_add(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare ptr @pmix_ptl_base_get_cmd_line() local_unnamed_addr #2

declare i32 @PMIx_Info_list_convert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PMIx_Error_string(i32 noundef) local_unnamed_addr #2

declare void @PMIx_Info_list_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @pmix_ptl_base_make_connection(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @pmix_ptl_base_parse_uri(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pmix_ptl_base_complete_connection(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !5, i64 76}
!13 = !{!"pmix_mca_base_framework_t", !9, i64 0, !9, i64 8, !9, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !5, i64 48, !5, i64 52, !14, i64 56, !9, i64 64, !5, i64 72, !5, i64 76, !16, i64 80, !16, i64 352}
!14 = !{!"p2 _ZTS31pmix_mca_base_component_2_1_0_t", !15, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!"pmix_list_t", !17, i64 0, !20, i64 120, !22, i64 264}
!17 = !{!"pmix_object_t", !6, i64 0, !18, i64 40, !5, i64 48, !19, i64 56}
!18 = !{!"p1 _ZTS12pmix_class_t", !10, i64 0}
!19 = !{!"pmix_tma", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !15, i64 56}
!20 = !{!"pmix_list_item_t", !17, i64 0, !21, i64 120, !21, i64 128, !5, i64 136}
!21 = !{!"p1 _ZTS16pmix_list_item_t", !10, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = !{!24, !5, i64 4}
!24 = !{!"", !25, i64 0, !25, i64 1, !5, i64 4, !25, i64 8, !5, i64 12, !9, i64 16, !9, i64 24, !5, i64 32, !9, i64 40, !5, i64 48, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !9, i64 56, !5, i64 64, !5, i64 68}
!25 = !{!"_Bool", !6, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!6, !6, i64 0}
!29 = distinct !{!29, !27}
!30 = !{!31, !35, i64 328}
!31 = !{!"", !5, i64 0, !32, i64 4, !33, i64 264, !33, i64 296, !35, i64 328, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !9, i64 352, !36, i64 360, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !37, i64 392, !37, i64 400, !5, i64 408, !38, i64 416, !25, i64 1648, !25, i64 1649, !39, i64 1656, !16, i64 1672, !40, i64 1944, !5, i64 2104, !5, i64 2108, !42, i64 2112, !25, i64 2304, !16, i64 2312, !25, i64 2584, !25, i64 2585, !25, i64 2586, !22, i64 2592, !16, i64 2600, !44, i64 2872, !44, i64 2888, !25, i64 2904, !25, i64 2905, !45, i64 2912, !46, i64 2944}
!32 = !{!"pmix_proc", !6, i64 0, !5, i64 256}
!33 = !{!"pmix_value", !34, i64 0, !6, i64 8}
!34 = !{!"short", !6, i64 0}
!35 = !{!"p1 _ZTS11pmix_peer_t", !10, i64 0}
!36 = !{!"p2 omnipotent char", !15, i64 0}
!37 = !{!"p1 _ZTS10event_base", !10, i64 0}
!38 = !{!"", !17, i64 0, !22, i64 120, !10, i64 128, !10, i64 136, !16, i64 144, !16, i64 416, !16, i64 688, !16, i64 960}
!39 = !{!"timeval", !22, i64 0, !22, i64 8}
!40 = !{!"pmix_pointer_array_t", !17, i64 0, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !41, i64 144, !15, i64 152}
!41 = !{!"p1 long", !10, i64 0}
!42 = !{!"pmix_hotel_t", !17, i64 0, !5, i64 120, !37, i64 128, !39, i64 136, !10, i64 152, !10, i64 160, !10, i64 168, !43, i64 176, !5, i64 184}
!43 = !{!"p1 int", !10, i64 0}
!44 = !{!"", !9, i64 0, !10, i64 8}
!45 = !{!"", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !25, i64 4, !25, i64 5, !25, i64 6, !9, i64 8, !9, i64 16, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !25, i64 28, !25, i64 29}
!46 = !{!"", !17, i64 0, !47, i64 120, !5, i64 128}
!47 = !{!"p1 _ZTS20pmix_pointer_array_t", !10, i64 0}
!48 = !{!49, !5, i64 136}
!49 = !{!"pmix_peer_t", !17, i64 0, !10, i64 120, !50, i64 128, !51, i64 136, !34, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !25, i64 160, !52, i64 168, !25, i64 296, !52, i64 304, !25, i64 432, !16, i64 440, !10, i64 712, !10, i64 720, !5, i64 728, !57, i64 736}
!50 = !{!"p1 _ZTS16pmix_rank_info_t", !10, i64 0}
!51 = !{!"", !5, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7}
!52 = !{!"event", !53, i64 0, !6, i64 40, !5, i64 56, !37, i64 64, !6, i64 72, !34, i64 104, !34, i64 106, !39, i64 112}
!53 = !{!"event_callback", !54, i64 0, !34, i64 16, !6, i64 18, !6, i64 19, !6, i64 24, !10, i64 32}
!54 = !{!"", !55, i64 0, !56, i64 8}
!55 = !{!"p1 _ZTS14event_callback", !10, i64 0}
!56 = !{!"p2 _ZTS14event_callback", !15, i64 0}
!57 = !{!"pmix_epilog_t", !5, i64 0, !5, i64 4, !16, i64 8, !16, i64 280, !16, i64 552}
!58 = !{!49, !10, i64 120}
!59 = !{!60, !10, i64 480}
!60 = !{!"", !20, i64 0, !9, i64 144, !61, i64 152, !5, i64 156, !22, i64 160, !25, i64 168, !25, i64 169, !10, i64 176, !22, i64 184, !22, i64 192, !16, i64 200, !62, i64 472, !57, i64 504, !16, i64 1328, !45, i64 1600, !16, i64 1632}
!61 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!62 = !{!"pmix_personality_t", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!63 = !{!64, !35, i64 0}
!64 = !{!"", !35, i64 0, !25, i64 8, !16, i64 16, !40, i64 288, !16, i64 448, !5, i64 720, !5, i64 724, !5, i64 728, !5, i64 732, !5, i64 736, !5, i64 740, !5, i64 744, !5, i64 748, !5, i64 752, !5, i64 756, !5, i64 760, !5, i64 764, !5, i64 768, !5, i64 772, !5, i64 776, !5, i64 780, !65, i64 784, !65, i64 1656}
!65 = !{!"", !20, i64 0, !32, i64 144, !34, i64 404, !66, i64 408, !25, i64 864, !25, i64 865, !25, i64 866}
!66 = !{!"", !20, i64 0, !25, i64 144, !25, i64 145, !5, i64 148, !67, i64 152, !39, i64 160, !5, i64 176, !16, i64 184}
!67 = !{!"p1 _ZTS5event", !10, i64 0}
!68 = !{!69, !9, i64 912}
!69 = !{!"pmix_ptl_base_t", !25, i64 0, !25, i64 1, !16, i64 8, !16, i64 280, !70, i64 552, !71, i64 880, !5, i64 888, !22, i64 896, !9, i64 904, !9, i64 912, !9, i64 920, !9, i64 928, !9, i64 936, !9, i64 944, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !9, i64 984, !9, i64 992, !25, i64 1000, !25, i64 1001, !25, i64 1002, !25, i64 1003, !25, i64 1004, !25, i64 1005, !25, i64 1006, !25, i64 1007, !25, i64 1008, !25, i64 1009, !25, i64 1010, !25, i64 1011, !25, i64 1012, !25, i64 1013, !25, i64 1014, !25, i64 1015, !25, i64 1016, !9, i64 1024, !9, i64 1032, !5, i64 1040, !25, i64 1044, !5, i64 1048, !25, i64 1052, !5, i64 1056, !5, i64 1060, !5, i64 1064, !5, i64 1068}
!70 = !{!"pmix_listener_t", !20, i64 0, !52, i64 144, !25, i64 272, !34, i64 274, !5, i64 276, !9, i64 280, !9, i64 288, !5, i64 296, !25, i64 300, !5, i64 304, !25, i64 308, !5, i64 312, !10, i64 320}
!71 = !{!"p1 _ZTS16sockaddr_storage", !10, i64 0}
!72 = !{!31, !9, i64 352}
!73 = !{!74, !5, i64 32}
!74 = !{!"pmix_class_t", !9, i64 0, !18, i64 8, !10, i64 16, !10, i64 24, !5, i64 32, !5, i64 36, !15, i64 40, !15, i64 48, !22, i64 56}
!75 = !{!17, !18, i64 40}
!76 = !{!17, !5, i64 48}
!77 = !{!74, !15, i64 40}
!78 = !{!10, !10, i64 0}
!79 = distinct !{null}
!80 = distinct !{!80, !27}
!81 = !{!16, !22, i64 264}
!82 = !{!16, !21, i64 240}
!83 = !{!20, !21, i64 128}
!84 = !{!20, !21, i64 120}
!85 = !{!74, !15, i64 48}
!86 = distinct !{null}
!87 = distinct !{!87, !27}
!88 = !{!17, !10, i64 96}
!89 = distinct !{null}
!90 = distinct !{!90, !27}
!91 = !{!92, !10, i64 16}
!92 = !{!"pmix_data_array", !34, i64 0, !22, i64 8, !10, i64 16}
!93 = !{!92, !22, i64 8}
!94 = !{!49, !34, i64 144}
!95 = !{!96, !9, i64 176}
!96 = !{!"", !20, i64 0, !5, i64 144, !9, i64 152, !5, i64 160, !9, i64 168, !9, i64 176}
!97 = !{!49, !6, i64 140}
!98 = !{!49, !6, i64 141}
!99 = !{!96, !9, i64 168}
!100 = !{!96, !9, i64 152}
!101 = !{!96, !5, i64 160}
!102 = distinct !{!102, !27}
!103 = distinct !{!103, !27}
end_hunk_0
