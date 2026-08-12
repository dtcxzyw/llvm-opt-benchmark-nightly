inline.NumInlined: 52
inline.NumDeleted: 18
begin_hunk_0_@make_REQ:bb.a
check_end.exit117.i:                              ; preds = %check_end.exit115.thread.i, %check_end.exit115.i
  %i.dc = getelementptr inbounds i8, ptr %i.cu, i64 -6
  %i.dd = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dc, ptr noundef nonnull dereferenceable(7) @.str.223) #13
  %.not92.i = icmp eq i32 %i.dd, 0
  br i1 %.not92.i, label %.backedge.i, label %check_end.exit117.thread.i.preheader

.backedge.i:                                      ; preds = %add_DN_object.exit.i, %check_end.exit117.i, %check_end.exit115.i, %check_end.exit113.i, %check_end.exit.i
  %i.de = add nsw i32 %i.co, 1                    ; 2 uses
  %i.df = call i32 @OPENSSL_sk_num(ptr noundef %.033) #11
  %.not88.i = icmp sgt i32 %i.df, %i.de
  br i1 %.not88.i, label %.lr.ph.i51.backedge, label %._crit_edge.i50

.lr.ph.i51.backedge:                              ; preds = %.backedge.i, %.loopexit163.i
  %.be = phi i32 [ %i.de, %.backedge.i ], [ %i.cm, %.loopexit163.i ]
  br label %.lr.ph.i51

check_end.exit117.thread.i:                       ; preds = %check_end.exit117.thread.i.preheader, %bb.y
  %.077.i = phi ptr [ %i.dj, %bb.y ], [ %i.cr, %check_end.exit117.thread.i.preheader ] ; 3 uses
  %i.dg = load i8, ptr %.077.i, align 1, !tbaa !22
  switch i8 %i.dg, label %bb.y [
    i8 0, label %.loopexit162.i
    i8 58, label %bb.x
    i8 44, label %bb.x
    i8 46, label %bb.x
  ]

bb.x:                                             ; preds = %check_end.exit117.thread.i, %check_end.exit117.thread.i, %check_end.exit117.thread.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.077.i, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !22
  %.not94.i = icmp eq i8 %i.di, 0
  %spec.select.i52 = select i1 %.not94.i, ptr %i.cr, ptr %i.dh
  br label %.loopexit162.i

bb.y:                                             ; preds = %check_end.exit117.thread.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.077.i, i64 1
  br label %check_end.exit117.thread.i, !llvm.loop !39

.loopexit162.i:                                   ; preds = %check_end.exit117.thread.i, %bb.x
  %.073.i = phi ptr [ %spec.select.i52, %bb.x ], [ %i.cr, %check_end.exit117.thread.i ] ; 2 uses
  %i.dk = load i8, ptr %.073.i, align 1, !tbaa !22
  %i.dl = icmp eq i8 %i.dk, 43                    ; 2 uses
  %.074.i = sext i1 %i.dl to i32
  %.1.idx.i53 = zext i1 %i.dl to i64
  %.1.i54 = getelementptr inbounds nuw i8, ptr %.073.i, i64 %.1.idx.i53
  %i.dm = call i32 @OBJ_txt2nid(ptr noundef nonnull %.1.i54) #11 ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.loopexit163.i, label %bb.z

bb.z:                                             ; preds = %.loopexit162.i
  %i.do = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 3 uses
  %i.dp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.do) #13 ; 3 uses
  %i.dq = add i64 %i.dp, -92
  %i.dr = icmp ult i64 %i.dq, -101
  br i1 %i.dr, label %join.exit.thread.i, label %bb.aa

join.exit.thread.i:                               ; preds = %bb.z
  %i.ds = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.dt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ds, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.do) #11 ; 0 uses
  br label %.loopexit.split.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.do, i64 %i.dp, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.du, ptr noundef nonnull align 1 dereferenceable(9) @.str.222, i64 9, i1 false)
  %i.dv = load ptr, ptr @req_conf, align 8, !tbaa !27
  %i.dw = call ptr @app_conf_try_string(ptr noundef %i.dv, ptr noundef %i.q, ptr noundef nonnull %i.c) #11 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  %spec.store.select.i = select i1 %i.dx, ptr @.str.80, ptr %i.dw
  %i.dy = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 3 uses
  %i.dz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dy) #13 ; 3 uses
  %i.ea = add i64 %i.dz, -94
  %i.eb = icmp ult i64 %i.ea, -101
  br i1 %i.eb, label %join.exit120.thread.i, label %bb.ab

join.exit120.thread.i:                            ; preds = %bb.aa
  %i.ec = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.ed = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ec, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.dy) #11 ; 0 uses
  br label %.loopexit.split.i

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.dy, i64 %i.dz, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ee, ptr noundef nonnull align 1 dereferenceable(7) @.str.223, i64 7, i1 false)
  %i.ef = load ptr, ptr @req_conf, align 8, !tbaa !27
  %i.eg = call ptr @app_conf_try_string(ptr noundef %i.ef, ptr noundef %i.q, ptr noundef nonnull %i.c) #11
  %i.eh = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 3 uses
  %i.ei = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eh) #13 ; 3 uses
  %i.ej = add i64 %i.ei, -96
  %i.ek = icmp ult i64 %i.ej, -101
  br i1 %i.ek, label %join.exit122.thread.i, label %bb.ac

join.exit122.thread.i:                            ; preds = %bb.ab
  %i.el = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.em = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.el, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.eh) #11 ; 0 uses
  br label %.loopexit.split.i

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.eh, i64 %i.ei, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.en, ptr noundef nonnull align 1 dereferenceable(5) @.str.220, i64 5, i1 false)
  %i.eo = load ptr, ptr @req_conf, align 8, !tbaa !27
  %i.ep = call i32 @app_conf_try_number(ptr noundef %i.eo, ptr noundef %i.q, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %.not98.i = icmp eq i32 %i.ep, 0
  br i1 %.not98.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i64 -1, ptr %i.d, align 8, !tbaa !13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.eq = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 3 uses
  %i.er = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eq) #13 ; 3 uses
  %i.es = add i64 %i.er, -96
  %i.et = icmp ult i64 %i.es, -101
  br i1 %i.et, label %join.exit124.thread.i, label %bb.af

join.exit124.thread.i:                            ; preds = %bb.ae
  %i.eu = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.ev = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.eu, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.eq) #11 ; 0 uses
  br label %.loopexit.split.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.eq, i64 %i.er, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ew, ptr noundef nonnull align 1 dereferenceable(5) @.str.221, i64 5, i1 false)
  %i.ex = load ptr, ptr @req_conf, align 8, !tbaa !27
  %i.ey = call i32 @app_conf_try_number(ptr noundef %i.ex, ptr noundef %i.q, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #11
  %.not100.i = icmp eq i32 %i.ey, 0
  br i1 %.not100.i, label %bb.ag, label %._crit_edge237.i

._crit_edge237.i:                                 ; preds = %bb.af
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !13
  %i.ez = trunc i64 %.pre.i to i32
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i64 -1, ptr %i.e, align 8, !tbaa !13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge237.i
  %i.fa = phi i32 [ %i.ez, %._crit_edge237.i ], [ -1, %bb.ag ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !37
  %i.fd = load i64, ptr %i.d, align 8, !tbaa !13
  %i.fe = trunc i64 %i.fd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ff = call fastcc i32 @build_data(ptr noundef %i.fc, ptr noundef nonnull %spec.store.select.i, ptr noundef %i.eg, i32 noundef %i.fe, i32 noundef %i.fa, ptr noundef %i.b, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.229) ; 2 uses
  %or.cond.i.i = icmp samesign ult i32 %i.ff, 2
  br i1 %or.cond.i.i, label %add_DN_object.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = call i32 @X509_NAME_add_entry_by_NID(ptr noundef nonnull %i.bt, i32 noundef range(i32 1, 0) %i.dm, i32 noundef %i.cl, ptr noundef nonnull %i.b, i32 noundef -1, i32 noundef -1, i32 noundef range(i32 -1, 1) %.074.i) #11
  %.not.i.i = icmp ne i32 %i.fg, 0
  %spec.select.i.i = zext i1 %.not.i.i to i32
  br label %add_DN_object.exit.i

add_DN_object.exit.i:                             ; preds = %bb.ai, %bb.ah
  %.014.i.i = phi i32 [ %spec.select.i.i, %bb.ai ], [ %i.ff, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %.not101.i = icmp eq i32 %.014.i.i, 0
  br i1 %.not101.i, label %.loopexit.split.i, label %.backedge.i

._crit_edge.i50:                                  ; preds = %.loopexit163.i, %.backedge.i, %.preheader.i49
  %i.fh = call i32 @X509_NAME_entry_count(ptr noundef nonnull %i.bt) #11
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i50
  %i.fj = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.fk = call i32 @BIO_puts(ptr noundef %i.fj, ptr noundef nonnull @.str.212) #11 ; 0 uses
  br label %.loopexit.split.i

bb.ak:                                            ; preds = %._crit_edge.i50
  %i.fl = call i32 @X509_REQ_set_subject_name(ptr noundef nonnull %0, ptr noundef nonnull %i.bt) #11
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fn = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.fo = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fn, ptr noundef nonnull @.str.213) #11 ; 0 uses
  br label %.loopexit.split.i

bb.am:                                            ; preds = %bb.ak
  %.not102.i = icmp eq i32 %3, 0
  %.not103.i = icmp eq ptr %.032, null
  %or.cond = or i1 %.not102.i, %.not103.i
  br i1 %or.cond, label %.loopexit.split.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = call i32 @OPENSSL_sk_num(ptr noundef nonnull %.032) #11
  %i.fq = icmp slt i32 %i.fp, 1
  %.b.i = load i1, ptr @batch, align 4
  %or.cond.i = select i1 %i.fq, i1 true, i1 %.b.i
  br i1 %or.cond.i, label %.split.i.preheader.preheader, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fr = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.fs = call i32 @BIO_puts(ptr noundef %i.fr, ptr noundef nonnull @.str.225) #11 ; 0 uses
  br label %.split.i.preheader.preheader

.split.i.preheader.preheader:                     ; preds = %bb.ao, %bb.an
  %i.ft = trunc nuw nsw i64 %4 to i32
  br label %.split.i

.split.i:                                         ; preds = %.split.i.backedge, %.split.i.preheader.preheader
  %.3.i = phi i32 [ -1, %.split.i.preheader.preheader ], [ %i.fu, %.split.i.backedge ]
  %i.fu = add nsw i32 %.3.i, 1                    ; 3 uses
  %i.fv = call i32 @OPENSSL_sk_num(ptr noundef nonnull %.032) #11
  %.not104.i = icmp sgt i32 %i.fv, %i.fu
  br i1 %.not104.i, label %bb.ap, label %.loopexit.split.i

bb.ap:                                            ; preds = %.split.i
  %i.fw = call ptr @OPENSSL_sk_value(ptr noundef nonnull %.032, i32 noundef %i.fu) #11 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !34 ; 13 uses
  %i.fz = call i32 @OBJ_txt2nid(ptr noundef %i.fy) #11 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %.split.i.backedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fy) #13 ; 3 uses
  %i.gc = add i64 %i.gb, -92
  %i.gd = icmp ult i64 %i.gc, -101
  br i1 %i.gd, label %join.exit126.thread.i, label %bb.ar

join.exit126.thread.i:                            ; preds = %bb.aq
  %i.ge = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.gf = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ge, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.fy) #11 ; 0 uses
  br label %prompt_info.exit

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.fy, i64 %i.gb, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.gg, ptr noundef nonnull align 1 dereferenceable(9) @.str.222, i64 9, i1 false)
  %i.gh = load ptr, ptr @req_conf, align 8, !tbaa !27
  %i.gi = call ptr @app_conf_try_string(ptr noundef %i.gh, ptr noundef %i.y, ptr noundef nonnull %i.c) #11 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  %spec.store.select3.i = select i1 %i.gj, ptr @.str.80, ptr %i.gi
  %i.gk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fy) #13 ; 3 uses
  %i.gl = add i64 %i.gk, -94
  %i.gm = icmp ult i64 %i.gl, -101
  br i1 %i.gm, label %join.exit128.thread.i, label %bb.as

join.exit128.thread.i:                            ; preds = %bb.ar
  %i.gn = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.go = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gn, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.fy) #11 ; 0 uses
  br label %.loopexit.split.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.fy, i64 %i.gk, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.gp, ptr noundef nonnull align 1 dereferenceable(7) @.str.223, i64 7, i1 false)
  %i.gq = load ptr, ptr @req_conf, align 8, !tbaa !27
  %i.gr = call ptr @app_conf_try_string(ptr noundef %i.gq, ptr noundef %i.y, ptr noundef nonnull %i.c) #11
  %i.gs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fy) #13 ; 3 uses
  %i.gt = add i64 %i.gs, -96
  %i.gu = icmp ult i64 %i.gt, -101
  br i1 %i.gu, label %join.exit130.thread.i, label %bb.at

join.exit130.thread.i:                            ; preds = %bb.as
  %i.gv = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.gw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gv, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.fy) #11 ; 0 uses
  br label %.loopexit.split.i

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.fy, i64 %i.gs, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.gx, ptr noundef nonnull align 1 dereferenceable(5) @.str.220, i64 5, i1 false)
  %i.gy = load ptr, ptr @req_conf, align 8, !tbaa !27
  %i.gz = call i32 @app_conf_try_number(ptr noundef %i.gy, ptr noundef %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %.not108.i = icmp eq i32 %i.gz, 0
  br i1 %.not108.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i64 -1, ptr %i.d, align 8, !tbaa !13
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ha = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fy) #13 ; 3 uses
  %i.hb = add i64 %i.ha, -96
  %i.hc = icmp ult i64 %i.hb, -101
  br i1 %i.hc, label %join.exit132.thread.i, label %bb.aw

join.exit132.thread.i:                            ; preds = %bb.av
  %i.hd = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.he = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hd, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.fy) #11 ; 0 uses
  br label %.loopexit.split.i

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.fy, i64 %i.ha, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.hf, ptr noundef nonnull align 1 dereferenceable(5) @.str.221, i64 5, i1 false)
  %i.hg = load ptr, ptr @req_conf, align 8, !tbaa !27
  %i.hh = call i32 @app_conf_try_number(ptr noundef %i.hg, ptr noundef %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #11
  %.not110.i = icmp eq i32 %i.hh, 0
  br i1 %.not110.i, label %bb.ax, label %._crit_edge238.i

._crit_edge238.i:                                 ; preds = %bb.aw
  %.pre239.i = load i64, ptr %i.e, align 8, !tbaa !13
  %i.hi = trunc i64 %.pre239.i to i32
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i64 -1, ptr %i.e, align 8, !tbaa !13
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge238.i
  %i.hj = phi i32 [ %i.hi, %._crit_edge238.i ], [ -1, %bb.ax ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !37
  %i.hm = load i64, ptr %i.d, align 8, !tbaa !13
  %i.hn = trunc i64 %i.hm to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ho = call fastcc i32 @build_data(ptr noundef %i.hl, ptr noundef nonnull %spec.store.select3.i, ptr noundef %i.gr, i32 noundef %i.hn, i32 noundef %i.hj, ptr noundef %i.a, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.235) ; 2 uses
  %or.cond.i133.i = icmp samesign ult i32 %i.ho, 2
  br i1 %or.cond.i133.i, label %add_attribute_object.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hp = call i32 @X509_REQ_add1_attr_by_NID(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %i.fz, i32 noundef %i.ft, ptr noundef nonnull %i.a, i32 noundef -1) #11
  %.not.i134.i = icmp eq i32 %i.hp, 0
  br i1 %.not.i134.i, label %add_attribute_object.exit.thread.i, label %add_attribute_object.exit.i

add_attribute_object.exit.thread.i:               ; preds = %bb.az
  %i.hq = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.hr = call i32 @BIO_puts(ptr noundef %i.hq, ptr noundef nonnull @.str.236) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit.split.i

add_attribute_object.exit.i:                      ; preds = %bb.az, %bb.ay
  %.013.i.i = phi i32 [ %i.ho, %bb.ay ], [ 1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not111.i = icmp eq i32 %.013.i.i, 0
  br i1 %.not111.i, label %.loopexit.split.i, label %.split.i.backedge

.split.i.backedge:                                ; preds = %add_attribute_object.exit.i, %bb.ap
  br label %.split.i

bb.ba:                                            ; preds = %bb.w
  %i.hs = load ptr, ptr @bio_err, align 8, !tbaa !15
  %i.ht = tail call i32 @BIO_puts(ptr noundef %i.hs, ptr noundef nonnull @.str.226) #11 ; 0 uses
  br label %.loopexit.split.i

.loopexit.split.i:                                ; preds = %add_DN_object.exit.i, %add_attribute_object.exit.i, %.split.i, %bb.ba, %add_attribute_object.exit.thread.i, %join.exit132.thread.i, %join.exit130.thread.i, %join.exit128.thread.i, %bb.am, %bb.al, %bb.aj, %join.exit124.thread.i, %join.exit122.thread.i, %join.exit120.thread.i, %join.exit.thread.i, %bb.t
  %.0.i = phi i32 [ 0, %bb.t ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ba ], [ 0, %add_attribute_object.exit.thread.i ], [ 0, %join.exit132.thread.i ], [ 0, %join.exit130.thread.i ], [ 0, %join.exit128.thread.i ], [ 0, %add_attribute_object.exit.i ], [ 0, %join.exit124.thread.i ], [ 0, %join.exit122.thread.i ], [ 0, %join.exit120.thread.i ], [ 0, %join.exit.thread.i ], [ 1, %bb.am ], [ 1, %.split.i ], [ 0, %add_DN_object.exit.i ]
  call void @X509_NAME_free(ptr noundef %i.bt) #11
  br label %prompt_info.exit

prompt_info.exit:                                 ; preds = %join.exit126.thread.i, %.loopexit.split.i
  %.072.i = phi i32 [ %.0.i, %.loopexit.split.i ], [ 0, %join.exit126.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %auto_info.exit

auto_info.exit:                                   ; preds = %.loopexit55.i, %prompt_info.exit, %bb.i
  %.030 = phi i32 [ %i.af, %bb.i ], [ %.072.i, %prompt_info.exit ], [ %.041.i, %.loopexit55.i ]
  %.not45 = icmp eq i32 %.030, 0
  br i1 %.not45, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %auto_info.exit
  %i.hu = call i32 @X509_REQ_set_pubkey(ptr noundef nonnull %0, ptr noundef %1) #11
  %.not46 = icmp ne i32 %i.hu, 0
  %spec.select47 = zext i1 %.not46 to i32
  br label %bb.bc

bb.bc:                                            ; preds = %auto_info.exit.thread, %bb.bb, %auto_info.exit, %bb.g, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.g ], [ %spec.select47, %bb.bb ], [ 0, %auto_info.exit ], [ 0, %auto_info.exit.thread ]
  ret i32 %.0
}

declare ptr @X509_REQ_get0_pubkey(ptr noundef) local_unnamed_addr #2

declare ptr @X509_REQ_get_subject_name(ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #2

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
end_hunk_0
