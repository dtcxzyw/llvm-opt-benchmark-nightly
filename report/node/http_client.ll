inline.NumInlined: 18
inline.NumDeleted: 11
begin_hunk_0_@OSSL_HTTP_REQ_CTX_nbio:bb.a
  %i.dm = load i64, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %.not233 = icmp ne i64 %i.dm, 0
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %or.cond264 = select i1 %.not233, i1 %i.dn, i1 false
  br i1 %or.cond264, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 733, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 130, ptr noundef null) #10
  store i32 4096, ptr %0, align 8, !tbaa !9
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  %i.do = load i32, ptr %i.r, align 8, !tbaa !15
  %i.dp = icmp eq i32 %i.db, %i.do
  br i1 %i.dp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 740, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 113, ptr noundef null) #10
  store i32 4096, ptr %0, align 8, !tbaa !9
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.dq = icmp eq i32 %i.dg, 1
  br i1 %i.dq, label %bb.bd, label %bb.bv

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.dr = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(8) @.str.52, i64 noundef 7) #11
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.be, label %.critedge.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.dt = load i8, ptr %i.cq, align 1, !tbaa !30  ; 3 uses
  %i.du = icmp sgt i8 %i.dt, 48
  %i.dv = zext i1 %i.du to i32                    ; 12 uses
  %.not87.i = icmp eq i8 %i.dt, 0
  br i1 %.not87.i, label %.critedge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.be, %bb.bf
  %i.dw = phi i8 [ %i.ea, %bb.bf ], [ %i.dt, %bb.be ]
  %.05488.i = phi ptr [ %i.dz, %bb.bf ], [ %i.cq, %bb.be ] ; 3 uses
  %i.dx = sext i8 %i.dw to i32
  %i.dy = call i32 @ossl_ctype_check(i32 noundef %i.dx, i32 noundef 8) #10
  %.not64.i = icmp eq i32 %i.dy, 0
  br i1 %.not64.i, label %bb.bf, label %.critedge.i

bb.bf:                                            ; preds = %.lr.ph.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.05488.i, i64 1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !30  ; 2 uses
  %.not.i267 = icmp eq i8 %i.ea, 0
  br i1 %.not.i267, label %.critedge.thread.i, label %.lr.ph.i, !llvm.loop !43

.critedge.i:                                      ; preds = %.lr.ph.i
  %.pr.i = load i8, ptr %.05488.i, align 1, !tbaa !30 ; 2 uses
  %i.eb = icmp eq i8 %.pr.i, 0
  br i1 %i.eb, label %.critedge.thread.i, label %.preheader83.i

.preheader83.i:                                   ; preds = %.critedge.i, %bb.bg
  %.15589.i = phi ptr [ %i.ef, %bb.bg ], [ %.05488.i, %.critedge.i ] ; 5 uses
  %i.ec = phi i8 [ %.pr77.i, %bb.bg ], [ %.pr.i, %.critedge.i ]
  %i.ed = sext i8 %i.ec to i32
  %i.ee = call i32 @ossl_ctype_check(i32 noundef %i.ed, i32 noundef 8) #10
  %.not66.i = icmp eq i32 %i.ee, 0
  br i1 %.not66.i, label %.critedge2.i, label %bb.bg

bb.bg:                                            ; preds = %.preheader83.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.15589.i, i64 1 ; 2 uses
  %.pr77.i = load i8, ptr %i.ef, align 1, !tbaa !30 ; 2 uses
  %.not65.i = icmp eq i8 %.pr77.i, 0
  br i1 %.not65.i, label %.critedge.thread.i, label %.preheader83.i, !llvm.loop !45

.critedge2.i:                                     ; preds = %.preheader83.i
  %.pre.i = load i8, ptr %.15589.i, align 1, !tbaa !30 ; 2 uses
  %i.eg = icmp eq i8 %.pre.i, 0
  br i1 %i.eg, label %.critedge.thread.i, label %.preheader82.i

.preheader82.i:                                   ; preds = %.critedge2.i, %bb.bh
  %.090.i = phi ptr [ %i.ek, %bb.bh ], [ %.15589.i, %.critedge2.i ] ; 4 uses
  %i.eh = phi i8 [ %.pr78.i, %bb.bh ], [ %.pre.i, %.critedge2.i ]
  %i.ei = sext i8 %i.eh to i32
  %i.ej = call i32 @ossl_ctype_check(i32 noundef %i.ei, i32 noundef 8) #10
  %.not68.i = icmp eq i32 %i.ej, 0
  br i1 %.not68.i, label %bb.bh, label %.critedge4.i

bb.bh:                                            ; preds = %.preheader82.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.090.i, i64 1 ; 2 uses
  %.pr78.i = load i8, ptr %i.ek, align 1, !tbaa !30 ; 2 uses
  %.not67.i = icmp eq i8 %.pr78.i, 0
  br i1 %.not67.i, label %.critedge.thread.i, label %.preheader82.i, !llvm.loop !46

.critedge4.i:                                     ; preds = %.preheader82.i
  %.pre101.i = load i8, ptr %.090.i, align 1, !tbaa !30
  %i.el = icmp eq i8 %.pre101.i, 0
  br i1 %i.el, label %.critedge.thread.i, label %bb.bi

bb.bi:                                            ; preds = %.critedge4.i
  store i8 0, ptr %.090.i, align 1, !tbaa !30
  %i.em = call i64 @strtoul(ptr noundef nonnull %.15589.i, ptr noundef nonnull %i.a, i32 noundef 10) #10
  %i.en = trunc i64 %i.em to i32                  ; 5 uses
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !30
  %.not69.i = icmp eq i8 %i.ep, 0
  br i1 %.not69.i, label %.preheader.i, label %.critedge.thread.i

.preheader.i:                                     ; preds = %bb.bi, %bb.bj
  %.0.pn.i = phi ptr [ %.1.i, %bb.bj ], [ %.090.i, %bb.bi ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.0.pn.i, i64 1 ; 7 uses
  %i.eq = load i8, ptr %.1.i, align 1, !tbaa !30  ; 2 uses
  %.not70.i = icmp eq i8 %i.eq, 0
  br i1 %.not70.i, label %.critedge6.thread.i, label %bb.bj

bb.bj:                                            ; preds = %.preheader.i
  %i.er = sext i8 %i.eq to i32
  %i.es = call i32 @ossl_ctype_check(i32 noundef %i.er, i32 noundef 8) #10
  %.not71.i = icmp eq i32 %i.es, 0
  br i1 %.not71.i, label %.critedge6.i, label %.preheader.i, !llvm.loop !47

.critedge6.i:                                     ; preds = %bb.bj
  %.pr79.i = load i8, ptr %.1.i, align 1, !tbaa !30
  %.not72.i = icmp eq i8 %.pr79.i, 0
  br i1 %.not72.i, label %.critedge6.thread.i, label %bb.bk

bb.bk:                                            ; preds = %.critedge6.i
  %i.et = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #11
  %i.eu = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.et
  %storemerge91.i = getelementptr inbounds i8, ptr %i.eu, i64 -1 ; 2 uses
  %i.ev = load i8, ptr %storemerge91.i, align 1, !tbaa !30
  %i.ew = sext i8 %i.ev to i32
  %i.ex = call i32 @ossl_ctype_check(i32 noundef %i.ew, i32 noundef 8) #10
  %.not7392.i = icmp eq i32 %i.ex, 0
  br i1 %.not7392.i, label %.critedge6.thread.i, label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.bk, %.lr.ph94.i
  %storemerge93.i = phi ptr [ %storemerge.i, %.lr.ph94.i ], [ %storemerge91.i, %bb.bk ] ; 2 uses
  store i8 0, ptr %storemerge93.i, align 1, !tbaa !30
  %storemerge.i = getelementptr inbounds i8, ptr %storemerge93.i, i64 -1 ; 2 uses
  %i.ey = load i8, ptr %storemerge.i, align 1, !tbaa !30
  %i.ez = sext i8 %i.ey to i32
  %i.fa = call i32 @ossl_ctype_check(i32 noundef %i.ez, i32 noundef 8) #10
  %.not73.i = icmp eq i32 %i.fa, 0
  br i1 %.not73.i, label %.critedge6.thread.i, label %.lr.ph94.i, !llvm.loop !48

.critedge6.thread.i:                              ; preds = %.preheader.i, %.lr.ph94.i, %bb.bk, %.critedge6.i
  switch i32 %i.en, label %bb.bl [
    i32 200, label %parse_http_line1.exit
    i32 301, label %parse_http_line1.exit
    i32 302, label %parse_http_line1.exit
  ]

bb.bl:                                            ; preds = %.critedge6.thread.i
  %i.fb = icmp eq i32 %i.en, 404
  %i.fc = icmp slt i32 %i.en, 400
  %or.cond.i266 = or i1 %i.fb, %i.fc
  br i1 %or.cond.i266, label %bb.bm, label %parse_http_line1.exit

bb.bm:                                            ; preds = %bb.bl
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 493, ptr noundef nonnull @__func__.parse_http_line1) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 114, ptr noundef nonnull @.str.53, ptr noundef nonnull %.15589.i) #10
  %i.fd = load i8, ptr %.1.i, align 1, !tbaa !30
  %.not74.i = icmp eq i8 %i.fd, 0
  br i1 %.not74.i, label %parse_http_line1.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, ptr noundef nonnull @.str.54, ptr noundef nonnull %.1.i) #10
  br label %parse_http_line1.exit

.critedge.thread.i:                               ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi, %.critedge4.i, %.critedge2.i, %.critedge.i, %bb.be, %bb.bd
  %.5273 = phi i32 [ %i.dv, %bb.be ], [ %i.dv, %bb.bh ], [ %i.dv, %.critedge.i ], [ %i.dv, %.critedge2.i ], [ %.1269.ph, %bb.bd ], [ %i.dv, %.critedge4.i ], [ %i.dv, %bb.bi ], [ %i.dv, %bb.bg ], [ %i.dv, %bb.bf ]
  %.058.i = phi ptr [ %i.cq, %bb.be ], [ %i.cq, %bb.bh ], [ %i.cq, %.critedge.i ], [ %i.cq, %.critedge2.i ], [ %i.ab, %bb.bd ], [ %i.cq, %.critedge4.i ], [ %i.cq, %bb.bi ], [ %i.cq, %bb.bg ], [ %i.cq, %bb.bf ] ; 3 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.br, %.critedge.thread.i
  %indvars.iv.i = phi i64 [ 0, %.critedge.thread.i ], [ %indvars.iv.next.i, %bb.br ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.058.i, i64 %indvars.iv.i ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !30  ; 2 uses
  %.not75.i = icmp eq i8 %i.ff, 0
  br i1 %.not75.i, label %parse_http_line1.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fg = sext i8 %i.ff to i32
  %i.fh = call i32 @ossl_ctype_check(i32 noundef %i.fg, i32 noundef 256) #10
  %.not76.i = icmp eq i32 %i.fh, 0
  br i1 %.not76.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i8 32, ptr %i.fe, align 1, !tbaa !30
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 60
  br i1 %exitcond.not.i, label %parse_http_line1.exit.thread, label %bb.bo, !llvm.loop !49

parse_http_line1.exit.thread:                     ; preds = %bb.bo, %bb.br
  %.057.lcssa.i = phi i64 [ 60, %bb.br ], [ %indvars.iv.i, %bb.bo ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.058.i, i64 %.057.lcssa.i
  store i8 0, ptr %i.fi, align 1, !tbaa !30
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 505, ptr noundef nonnull @__func__.parse_http_line1) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 126, ptr noundef nonnull @.str.55, ptr noundef nonnull %.058.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %check_max_len.exit.outer.backedge

parse_http_line1.exit:                            ; preds = %.critedge6.thread.i, %.critedge6.thread.i, %.critedge6.thread.i, %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  switch i32 %i.en, label %bb.bu [
    i32 200, label %check_max_len.exit.outer.backedge
    i32 301, label %bb.bs
    i32 302, label %bb.bs
  ]

bb.bs:                                            ; preds = %parse_http_line1.exit, %parse_http_line1.exit
  %i.fj = load i32, ptr %i.u, align 8, !tbaa !29
  %.not252 = icmp eq i32 %i.fj, 0
  br i1 %.not252, label %check_max_len.exit.outer.backedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 765, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 116, ptr noundef null) #10
  br label %check_max_len.exit.outer.backedge

bb.bu:                                            ; preds = %parse_http_line1.exit
  %i.fk = icmp slt i32 %i.en, 400
  %spec.select = select i1 %i.fk, i32 3, i32 2
  br label %check_max_len.exit.outer.backedge

check_max_len.exit.outer.backedge:                ; preds = %parse_http_line1.exit.thread, %bb.bt, %bb.bu, %bb.bs, %parse_http_line1.exit
  %.sink = phi i32 [ 4, %bb.bs ], [ 2, %parse_http_line1.exit ], [ %spec.select, %bb.bu ], [ 3, %parse_http_line1.exit.thread ], [ 3, %bb.bt ]
  %.1269.ph.be = phi i32 [ %i.dv, %bb.bs ], [ %i.dv, %parse_http_line1.exit ], [ %i.dv, %bb.bu ], [ %.5273, %parse_http_line1.exit.thread ], [ %i.dv, %bb.bt ]
  store i32 %.sink, ptr %0, align 8, !tbaa !9
  br label %check_max_len.exit.outer

bb.bv:                                            ; preds = %bb.bc
  %i.fl = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ab, i32 noundef 58) #11 ; 3 uses
  %.not234 = icmp eq ptr %i.fl, null
  br i1 %.not234, label %.thread290, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i8 0, ptr %i.fl, align 1, !tbaa !30
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %bb.bw
  %.pn = phi ptr [ %i.fl, %bb.bw ], [ %.0195, %bb.bx ]
  %.0195 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 16 uses
  %i.fm = load i8, ptr %.0195, align 1, !tbaa !30
  %i.fn = sext i8 %i.fm to i32
  %i.fo = call i32 @ossl_ctype_check(i32 noundef %i.fn, i32 noundef 8) #10
  %.not235 = icmp eq i32 %i.fo, 0
  br i1 %.not235, label %bb.by, label %bb.bx, !llvm.loop !50

bb.by:                                            ; preds = %bb.bx
  %i.fp = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0195, i32 noundef 13) #11 ; 3 uses
  store ptr %i.fp, ptr %i.c, align 8, !tbaa !38
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.fr = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0195, i32 noundef 10) #11 ; 3 uses
  store ptr %i.fr, ptr %i.c, align 8, !tbaa !38
  %.not236 = icmp eq ptr %i.fr, null
  br i1 %.not236, label %.thread290, label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %i.fs = phi ptr [ %i.fr, %bb.bz ], [ %i.fp, %bb.by ]
  store i8 0, ptr %i.fs, align 1, !tbaa !30
  %i.ft = load i32, ptr %0, align 8, !tbaa !9
  %i.fu = icmp eq i32 %i.ft, 4
  br i1 %i.fu, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.fv = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.12) #10
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store ptr %.0195, ptr %i.o, align 8, !tbaa !39
  %i.fx = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.fy = call i64 @BIO_ctrl(ptr noundef %i.fx, i32 noundef 1, i64 noundef 0, ptr noundef null) #10 ; 0 uses
  br label %.loopexit

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %i.fz = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.13) #10
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ce, label %.thread294

bb.ce:                                            ; preds = %bb.cd
  %i.gb = call i32 @OPENSSL_strncasecmp(ptr noundef nonnull %.0195, ptr noundef nonnull @.str.14, i64 noundef 5) #10 ; 0 uses
  %i.gc = load i32, ptr %0, align 8, !tbaa !9
  %i.gd = icmp eq i32 %i.gc, 2
  br i1 %i.gd, label %bb.cf, label %.thread294

bb.cf:                                            ; preds = %bb.ce
  %i.ge = load ptr, ptr %i.v, align 8, !tbaa !27  ; 2 uses
  %.not237 = icmp eq ptr %i.ge, null
  br i1 %.not237, label %.thread294, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gf = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ge, ptr noundef nonnull %.0195) #10
  %.not238 = icmp eq i32 %i.gf, 0
  br i1 %.not238, label %.thread294, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gg = load ptr, ptr %i.v, align 8, !tbaa !27  ; 3 uses
  %i.gh = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.gg, i32 noundef 59) #11
  %.not239 = icmp eq ptr %i.gh, null
  br i1 %.not239, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.gi = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0195, i32 noundef 59) #11 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %.0195 to i64
  %i.gm = sub i64 %i.gk, %i.gl                    ; 2 uses
  %i.gn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gg) #11
  %.not240 = icmp eq i64 %i.gm, %i.gn
  br i1 %.not240, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.go = call i32 @OPENSSL_strncasecmp(ptr noundef nonnull %i.gg, ptr noundef nonnull %.0195, i64 noundef %i.gm) #10
  %.not241 = icmp eq i32 %i.go, 0
  br i1 %.not241, label %.thread294, label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %bb.ci, %bb.cj, %bb.ck
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 812, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  %i.gp = load ptr, ptr %i.v, align 8, !tbaa !27
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 118, ptr noundef nonnull @.str.15, ptr noundef %i.gp, ptr noundef nonnull %.0195) #10
  br label %.loopexit

.thread294:                                       ; preds = %bb.cg, %bb.ck, %bb.ce, %bb.cf, %bb.cd
  %.3200 = phi i32 [ %.1198.ph.ph, %bb.cd ], [ %.1198.ph.ph, %bb.cf ], [ %.1198.ph.ph, %bb.ce ], [ 1, %bb.ck ], [ 1, %bb.cg ] ; 4 uses
  %i.gq = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.16) #10
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %.thread294
  %i.gs = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.0195, ptr noundef nonnull @.str.17) #10
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %.thread290, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gu = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.0195, ptr noundef nonnull @.str.18) #10
  %i.gv = icmp eq i32 %i.gu, 0
  %spec.select301 = select i1 %i.gv, i32 0, i32 %.1269.ph
  br label %.thread290

bb.co:                                            ; preds = %.thread294
  %i.gw = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.19) #10
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.cp, label %.thread290

bb.cp:                                            ; preds = %bb.co
  %i.gy = call i64 @strtoul(ptr noundef nonnull %.0195, ptr noundef nonnull %i.c, i32 noundef 10) #10
  %i.gz = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %.0195
  br i1 %i.ha, label %.thread298, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !30
  %.not242 = icmp eq i8 %i.hb, 0
  br i1 %.not242, label %bb.cr, label %.thread298

.thread298:                                       ; preds = %bb.cp, %bb.cq
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 832, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 119, ptr noundef nonnull @.str.20, ptr noundef nonnull %.0195) #10
  br label %.loopexit

bb.cr:                                            ; preds = %bb.cq
  %i.hc = call fastcc i32 @check_set_resp_len(ptr noundef nonnull @.str.21, ptr noundef %0, i64 noundef %i.gy)
  %.not243.not = icmp eq i32 %i.hc, 0
  br i1 %.not243.not, label %.loopexit, label %.thread290

.thread290:                                       ; preds = %bb.bz, %bb.cn, %bb.bv, %bb.cm, %bb.cr, %bb.co
  %.2270 = phi i32 [ 1, %bb.cm ], [ %.1269.ph, %bb.bv ], [ %spec.select301, %bb.cn ], [ %.1269.ph, %bb.cr ], [ %.1269.ph, %bb.co ], [ %.1269.ph, %bb.bz ] ; 3 uses
  %.4201 = phi i32 [ %.3200, %bb.cm ], [ %.1198.ph.ph, %bb.bv ], [ %.3200, %bb.cn ], [ %.3200, %bb.cr ], [ %.3200, %bb.co ], [ %.1198.ph.ph, %bb.bz ] ; 3 uses
  %i.hd = load ptr, ptr %i.p, align 8, !tbaa !16
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.thread290
  %storemerge = phi ptr [ %i.hd, %.thread290 ], [ %i.hf, %bb.ct ] ; 3 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !38
  %i.he = load i8, ptr %storemerge, align 1, !tbaa !30
  switch i8 %i.he, label %check_max_len.exit.outer.outer [
    i8 10, label %bb.ct
    i8 13, label %bb.ct
    i8 0, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs
  %i.hf = getelementptr inbounds nuw i8, ptr %storemerge, i64 1
  br label %bb.cs, !llvm.loop !51
end_hunk_0
