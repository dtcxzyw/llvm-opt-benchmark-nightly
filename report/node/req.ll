inline.NumInlined: 52
inline.NumDeleted: 18
begin_hunk_0_@make_REQ:bb.a
  %i.cu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ct, ptr noundef nonnull dereferenceable(9) @.str.226) #13
  %.not86.i = icmp eq i32 %i.cu, 0
  br i1 %.not86.i, label %.backedge.i, label %check_end.exit112.i

check_end.exit110.thread.i:                       ; preds = %check_end.exit108.thread.i
  %i.cv = icmp samesign ult i64 %i.cm, 6
  br i1 %i.cv, label %check_end.exit112.thread.i.preheader, label %check_end.exit112.i

check_end.exit112.i:                              ; preds = %check_end.exit110.thread.i, %check_end.exit110.i
  %i.cw = getelementptr inbounds i8, ptr %i.co, i64 -6
  %i.cx = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cw, ptr noundef nonnull dereferenceable(7) @.str.227) #13
  %.not87.i = icmp eq i32 %i.cx, 0
  br i1 %.not87.i, label %.backedge.i, label %check_end.exit112.thread.i.preheader

.backedge.i:                                      ; preds = %add_DN_object.exit.i, %check_end.exit112.i, %check_end.exit110.i, %check_end.exit108.i, %check_end.exit.i
  %i.cy = add nsw i32 %i.ci, 1                    ; 2 uses
  %i.cz = call i32 @OPENSSL_sk_num(ptr noundef %.033) #11
  %.not83.i = icmp sgt i32 %i.cz, %i.cy
  br i1 %.not83.i, label %.lr.ph.i52.backedge, label %._crit_edge.i50

.lr.ph.i52.backedge:                              ; preds = %.backedge.i, %.loopexit158.i
  %.be = phi i32 [ %i.cy, %.backedge.i ], [ %i.cg, %.loopexit158.i ]
  br label %.lr.ph.i52

check_end.exit112.thread.i:                       ; preds = %check_end.exit112.thread.i.preheader, %bb.x
  %.073.i = phi ptr [ %i.dd, %bb.x ], [ %i.cl, %check_end.exit112.thread.i.preheader ] ; 3 uses
  %i.da = load i8, ptr %.073.i, align 1, !tbaa !23
  switch i8 %i.da, label %bb.x [
    i8 0, label %.loopexit157.i
    i8 58, label %bb.w
    i8 44, label %bb.w
    i8 46, label %bb.w
  ]

bb.w:                                             ; preds = %check_end.exit112.thread.i, %check_end.exit112.thread.i, %check_end.exit112.thread.i
  %i.db = getelementptr inbounds nuw i8, ptr %.073.i, i64 1 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !23
  %.not89.i = icmp eq i8 %i.dc, 0
  %spec.select.i53 = select i1 %.not89.i, ptr %i.cl, ptr %i.db
  br label %.loopexit157.i

bb.x:                                             ; preds = %check_end.exit112.thread.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.073.i, i64 1
  br label %check_end.exit112.thread.i, !llvm.loop !40

.loopexit157.i:                                   ; preds = %check_end.exit112.thread.i, %bb.w
  %.069.i = phi ptr [ %spec.select.i53, %bb.w ], [ %i.cl, %check_end.exit112.thread.i ] ; 2 uses
  %i.de = load i8, ptr %.069.i, align 1, !tbaa !23
  %i.df = icmp eq i8 %i.de, 43                    ; 2 uses
  %.070.i = sext i1 %i.df to i32
  %.1.idx.i = zext i1 %i.df to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %.069.i, i64 %.1.idx.i
  %i.dg = call i32 @OBJ_txt2nid(ptr noundef nonnull %.1.i) #11 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %.loopexit158.i, label %bb.y

bb.y:                                             ; preds = %.loopexit157.i
  %i.di = load ptr, ptr %i.ck, align 8, !tbaa !35 ; 3 uses
  %i.dj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.di) #13 ; 3 uses
  %i.dk = add i64 %i.dj, -92
  %i.dl = icmp ult i64 %i.dk, -101
  br i1 %i.dl, label %join.exit.thread.i, label %bb.z

join.exit.thread.i:                               ; preds = %bb.y
  %i.dm = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.dn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dm, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.di) #11 ; 0 uses
  br label %prompt_info.exit

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.di, i64 %i.dj, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.do, ptr noundef nonnull align 1 dereferenceable(9) @.str.226, i64 9, i1 false)
  %i.dp = load ptr, ptr @req_conf, align 8, !tbaa !28
  %i.dq = call ptr @app_conf_try_string(ptr noundef %i.dp, ptr noundef %i.q, ptr noundef nonnull %i.c) #11 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  %spec.store.select.i = select i1 %i.dr, ptr @.str.84, ptr %i.dq
  %i.ds = load ptr, ptr %i.ck, align 8, !tbaa !35 ; 3 uses
  %i.dt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #13 ; 3 uses
  %i.du = add i64 %i.dt, -94
  %i.dv = icmp ult i64 %i.du, -101
  br i1 %i.dv, label %join.exit115.thread.i, label %bb.aa

join.exit115.thread.i:                            ; preds = %bb.z
  %i.dw = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.dx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dw, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.ds) #11 ; 0 uses
  br label %prompt_info.exit

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.ds, i64 %i.dt, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dy, ptr noundef nonnull align 1 dereferenceable(7) @.str.227, i64 7, i1 false)
  %i.dz = load ptr, ptr @req_conf, align 8, !tbaa !28
  %i.ea = call ptr @app_conf_try_string(ptr noundef %i.dz, ptr noundef %i.q, ptr noundef nonnull %i.c) #11
  %i.eb = load ptr, ptr %i.ck, align 8, !tbaa !35 ; 3 uses
  %i.ec = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eb) #13 ; 3 uses
  %i.ed = add i64 %i.ec, -96
  %i.ee = icmp ult i64 %i.ed, -101
  br i1 %i.ee, label %join.exit117.thread.i, label %bb.ab

join.exit117.thread.i:                            ; preds = %bb.aa
  %i.ef = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.eg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ef, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.eb) #11 ; 0 uses
  br label %prompt_info.exit

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.eb, i64 %i.ec, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.eh, ptr noundef nonnull align 1 dereferenceable(5) @.str.224, i64 5, i1 false)
  %i.ei = load ptr, ptr @req_conf, align 8, !tbaa !28
  %i.ej = call i32 @app_conf_try_number(ptr noundef %i.ei, ptr noundef %i.q, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %.not93.i = icmp eq i32 %i.ej, 0
  br i1 %.not93.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i64 -1, ptr %i.d, align 8, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ek = load ptr, ptr %i.ck, align 8, !tbaa !35 ; 3 uses
  %i.el = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ek) #13 ; 3 uses
  %i.em = add i64 %i.el, -96
  %i.en = icmp ult i64 %i.em, -101
  br i1 %i.en, label %join.exit119.thread.i, label %bb.ae

join.exit119.thread.i:                            ; preds = %bb.ad
  %i.eo = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.ep = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.eo, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.ek) #11 ; 0 uses
  br label %prompt_info.exit

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.ek, i64 %i.el, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.eq, ptr noundef nonnull align 1 dereferenceable(5) @.str.225, i64 5, i1 false)
  %i.er = load ptr, ptr @req_conf, align 8, !tbaa !28
  %i.es = call i32 @app_conf_try_number(ptr noundef %i.er, ptr noundef %i.q, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #11
  %.not95.i = icmp eq i32 %i.es, 0
  br i1 %.not95.i, label %bb.af, label %._crit_edge232.i

._crit_edge232.i:                                 ; preds = %bb.ae
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !14
  %i.et = trunc i64 %.pre.i to i32
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 -1, ptr %i.e, align 8, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge232.i
  %i.eu = phi i32 [ %i.et, %._crit_edge232.i ], [ -1, %bb.af ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !38
  %i.ex = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ey = trunc i64 %i.ex to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ez = call fastcc i32 @build_data(ptr noundef %i.ew, ptr noundef nonnull %spec.store.select.i, ptr noundef %i.ea, i32 noundef %i.ey, i32 noundef %i.eu, ptr noundef %i.b, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234) ; 2 uses
  %or.cond.i.i = icmp samesign ult i32 %i.ez, 2
  br i1 %or.cond.i.i, label %add_DN_object.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fa = call i32 @X509_NAME_add_entry_by_NID(ptr noundef %i.bo, i32 noundef range(i32 1, 0) %i.dg, i32 noundef %i.cf, ptr noundef nonnull %i.b, i32 noundef -1, i32 noundef -1, i32 noundef range(i32 -1, 1) %.070.i) #11
  %.not.i.i = icmp ne i32 %i.fa, 0
  %spec.select.i.i = zext i1 %.not.i.i to i32
  br label %add_DN_object.exit.i

add_DN_object.exit.i:                             ; preds = %bb.ah, %bb.ag
  %.014.i.i = phi i32 [ %spec.select.i.i, %bb.ah ], [ %i.ez, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %.not96.i = icmp eq i32 %.014.i.i, 0
  br i1 %.not96.i, label %prompt_info.exit, label %.backedge.i

._crit_edge.i50:                                  ; preds = %.loopexit158.i, %.backedge.i, %.preheader.i49
  %i.fb = call i32 @X509_NAME_entry_count(ptr noundef %i.bo) #11
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i50
  %i.fd = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.fe = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fd, ptr noundef nonnull @.str.217) #11 ; 0 uses
  br label %prompt_info.exit

bb.aj:                                            ; preds = %._crit_edge.i50
  %.not97.i = icmp eq i32 %3, 0
  %.not98.i = icmp eq ptr %.032, null
  %or.cond = or i1 %.not97.i, %.not98.i
  br i1 %or.cond, label %prompt_info.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ff = call i32 @OPENSSL_sk_num(ptr noundef nonnull %.032) #11
  %i.fg = icmp slt i32 %i.ff, 1
  %.b.i = load i1, ptr @batch, align 4
  %or.cond.i = select i1 %i.fg, i1 true, i1 %.b.i
  br i1 %or.cond.i, label %.split.i.preheader.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fh = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.fi = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fh, ptr noundef nonnull @.str.229) #11 ; 0 uses
  %i.fj = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.fk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fj, ptr noundef nonnull @.str.230) #11 ; 0 uses
  br label %.split.i.preheader.preheader

.split.i.preheader.preheader:                     ; preds = %bb.al, %bb.ak
  %i.fl = trunc nuw nsw i64 %4 to i32
  br label %.split.i

.split.i:                                         ; preds = %.split.i.backedge, %.split.i.preheader.preheader
  %.3.i = phi i32 [ -1, %.split.i.preheader.preheader ], [ %i.fm, %.split.i.backedge ]
  %i.fm = add nsw i32 %.3.i, 1                    ; 3 uses
  %i.fn = call i32 @OPENSSL_sk_num(ptr noundef nonnull %.032) #11
  %.not99.i = icmp sgt i32 %i.fn, %i.fm
  br i1 %.not99.i, label %bb.am, label %prompt_info.exit

bb.am:                                            ; preds = %.split.i
  %i.fo = call ptr @OPENSSL_sk_value(ptr noundef nonnull %.032, i32 noundef %i.fm) #11 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !35 ; 13 uses
  %i.fr = call i32 @OBJ_txt2nid(ptr noundef %i.fq) #11 ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %.split.i.backedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ft = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fq) #13 ; 3 uses
  %i.fu = add i64 %i.ft, -92
  %i.fv = icmp ult i64 %i.fu, -101
  br i1 %i.fv, label %join.exit121.thread.i, label %bb.ao

join.exit121.thread.i:                            ; preds = %bb.an
  %i.fw = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.fx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fw, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.fq) #11 ; 0 uses
  br label %prompt_info.exit

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.fq, i64 %i.ft, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fy, ptr noundef nonnull align 1 dereferenceable(9) @.str.226, i64 9, i1 false)
  %i.fz = load ptr, ptr @req_conf, align 8, !tbaa !28
  %i.ga = call ptr @app_conf_try_string(ptr noundef %i.fz, ptr noundef %i.y, ptr noundef nonnull %i.c) #11 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  %spec.store.select3.i = select i1 %i.gb, ptr @.str.84, ptr %i.ga
  %i.gc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fq) #13 ; 3 uses
  %i.gd = add i64 %i.gc, -94
  %i.ge = icmp ult i64 %i.gd, -101
  br i1 %i.ge, label %join.exit123.thread.i, label %bb.ap

join.exit123.thread.i:                            ; preds = %bb.ao
  %i.gf = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.gg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gf, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.fq) #11 ; 0 uses
  br label %prompt_info.exit

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.fq, i64 %i.gc, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.gh, ptr noundef nonnull align 1 dereferenceable(7) @.str.227, i64 7, i1 false)
  %i.gi = load ptr, ptr @req_conf, align 8, !tbaa !28
  %i.gj = call ptr @app_conf_try_string(ptr noundef %i.gi, ptr noundef %i.y, ptr noundef nonnull %i.c) #11
  %i.gk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fq) #13 ; 3 uses
  %i.gl = add i64 %i.gk, -96
  %i.gm = icmp ult i64 %i.gl, -101
  br i1 %i.gm, label %join.exit125.thread.i, label %bb.aq

join.exit125.thread.i:                            ; preds = %bb.ap
  %i.gn = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.go = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gn, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.fq) #11 ; 0 uses
  br label %prompt_info.exit

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.fq, i64 %i.gk, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.gp, ptr noundef nonnull align 1 dereferenceable(5) @.str.224, i64 5, i1 false)
  %i.gq = load ptr, ptr @req_conf, align 8, !tbaa !28
  %i.gr = call i32 @app_conf_try_number(ptr noundef %i.gq, ptr noundef %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %.not103.i = icmp eq i32 %i.gr, 0
  br i1 %.not103.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i64 -1, ptr %i.d, align 8, !tbaa !14
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fq) #13 ; 3 uses
  %i.gt = add i64 %i.gs, -96
  %i.gu = icmp ult i64 %i.gt, -101
  br i1 %i.gu, label %join.exit127.thread.i, label %bb.at

join.exit127.thread.i:                            ; preds = %bb.as
  %i.gv = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.gw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gv, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.fq) #11 ; 0 uses
  br label %prompt_info.exit

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.fq, i64 %i.gs, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.gx, ptr noundef nonnull align 1 dereferenceable(5) @.str.225, i64 5, i1 false)
  %i.gy = load ptr, ptr @req_conf, align 8, !tbaa !28
  %i.gz = call i32 @app_conf_try_number(ptr noundef %i.gy, ptr noundef %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #11
  %.not105.i = icmp eq i32 %i.gz, 0
  br i1 %.not105.i, label %bb.au, label %._crit_edge233.i

._crit_edge233.i:                                 ; preds = %bb.at
  %.pre234.i = load i64, ptr %i.e, align 8, !tbaa !14
  %i.ha = trunc i64 %.pre234.i to i32
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  store i64 -1, ptr %i.e, align 8, !tbaa !14
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge233.i
  %i.hb = phi i32 [ %i.ha, %._crit_edge233.i ], [ -1, %bb.au ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !38
  %i.he = load i64, ptr %i.d, align 8, !tbaa !14
  %i.hf = trunc i64 %i.he to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.hg = call fastcc i32 @build_data(ptr noundef %i.hd, ptr noundef nonnull %spec.store.select3.i, ptr noundef %i.gj, i32 noundef %i.hf, i32 noundef %i.hb, ptr noundef %i.a, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.240) ; 2 uses
  %or.cond.i128.i = icmp samesign ult i32 %i.hg, 2
  br i1 %or.cond.i128.i, label %add_attribute_object.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hh = call i32 @X509_REQ_add1_attr_by_NID(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %i.fr, i32 noundef %i.fl, ptr noundef nonnull %i.a, i32 noundef -1) #11
  %.not.i129.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i129.i, label %add_attribute_object.exit.thread.i, label %add_attribute_object.exit.i

add_attribute_object.exit.thread.i:               ; preds = %bb.aw
  %i.hi = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.hj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hi, ptr noundef nonnull @.str.241) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %prompt_info.exit

add_attribute_object.exit.i:                      ; preds = %bb.aw, %bb.av
  %.013.i.i = phi i32 [ %i.hg, %bb.av ], [ 1, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not106.i = icmp eq i32 %.013.i.i, 0
  br i1 %.not106.i, label %prompt_info.exit, label %.split.i.backedge

.split.i.backedge:                                ; preds = %add_attribute_object.exit.i, %bb.am
  br label %.split.i

bb.ax:                                            ; preds = %bb.v
  %i.hk = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.hl = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hk, ptr noundef nonnull @.str.231) #11 ; 0 uses
  br label %prompt_info.exit

prompt_info.exit:                                 ; preds = %add_DN_object.exit.i, %.split.i, %add_attribute_object.exit.i, %join.exit.thread.i, %join.exit115.thread.i, %join.exit117.thread.i, %join.exit119.thread.i, %bb.ai, %bb.aj, %join.exit121.thread.i, %join.exit123.thread.i, %join.exit125.thread.i, %join.exit127.thread.i, %add_attribute_object.exit.thread.i, %bb.ax
  %.0.i = phi i32 [ 0, %bb.ai ], [ 0, %add_attribute_object.exit.thread.i ], [ 0, %join.exit127.thread.i ], [ 0, %join.exit125.thread.i ], [ 0, %join.exit123.thread.i ], [ 0, %join.exit121.thread.i ], [ 0, %add_attribute_object.exit.i ], [ 0, %join.exit119.thread.i ], [ 0, %join.exit117.thread.i ], [ 0, %join.exit115.thread.i ], [ 0, %join.exit.thread.i ], [ 0, %bb.ax ], [ 1, %bb.aj ], [ 1, %.split.i ], [ 0, %add_DN_object.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %auto_info.exit

auto_info.exit:                                   ; preds = %prompt_info.exit, %bb.i
  %.030 = phi i32 [ %i.af, %bb.i ], [ %.0.i, %prompt_info.exit ]
  %.not45 = icmp eq i32 %.030, 0
  br i1 %.not45, label %auto_info.exit.thread, label %auto_info.exit.thread57

auto_info.exit.thread57:                          ; preds = %bb.r, %bb.q, %.preheader.i, %auto_info.exit
  %i.hm = call i32 @X509_REQ_set_pubkey(ptr noundef nonnull %0, ptr noundef %1) #11
  %.not46 = icmp ne i32 %i.hm, 0
  %spec.select47 = zext i1 %.not46 to i32
  br label %auto_info.exit.thread

auto_info.exit.thread:                            ; preds = %.loopexit51.i, %bb.s, %bb.p, %auto_info.exit.thread57, %auto_info.exit, %bb.g, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.g ], [ %spec.select47, %auto_info.exit.thread57 ], [ 0, %auto_info.exit ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %.loopexit51.i ]
  ret i32 %.0
}

declare ptr @X509_REQ_get0_pubkey(ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #2

declare ptr @X509_REQ_get_subject_name(ptr noundef) local_unnamed_addr #2

declare ptr @X509_new_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @X509_set_serialNumber(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rand_serial(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_serialNumber(ptr noundef) local_unnamed_addr #2

declare i32 @X509_set_issuer_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @set_cert_times(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_set_subject_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @X509_set_pubkey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @copy_extensions(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509V3_set_issuer_pkey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cert_matches_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @X509_add1_ext_i2d(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @do_X509_sign(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @X509V3_EXT_REQ_add_nconf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @do_X509_REQ_sign(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
