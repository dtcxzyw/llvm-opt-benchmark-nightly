Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pack?download=true
inline.NumInlined: 23
inline.NumDeleted: 8
begin_hunk_0_@zif_pack:bb.a

bb.y:                                             ; preds = %bb.x
  %i.bw = zext nneg i8 %i.bn to i32
  call void @_efree(ptr noundef nonnull %i.s) #9
  call void @_efree(ptr noundef nonnull %i.t) #9
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.5, i32 noundef %i.bw) #9
  br label %.critedge468

bb.z:                                             ; preds = %bb.x
  %i.bx = add nsw i32 %i.bs, %.0373607
  br label %bb.be

bb.aa:                                            ; preds = %.lr.ph610, %.lr.ph610, %.lr.ph610, %.lr.ph610, %.lr.ph610, %.lr.ph610
  %i.by = icmp slt i32 %i.bp, 0
  %i.bz = sub nsw i32 2147483647, %.0373607
  %i.ca = icmp slt i32 %i.bz, %i.bp
  %or.cond472 = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %or.cond472, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cb = zext nneg i8 %i.bn to i32
  call void @_efree(ptr noundef nonnull %i.s) #9
  call void @_efree(ptr noundef nonnull %i.t) #9
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.5, i32 noundef %i.cb) #9
  br label %.critedge468

bb.ac:                                            ; preds = %bb.aa
  %i.cc = add nsw i32 %i.bp, %.0373607
  br label %bb.be

bb.ad:                                            ; preds = %.lr.ph610, %.lr.ph610, %.lr.ph610, %.lr.ph610
  %i.cd = icmp slt i32 %i.bp, 0
  br i1 %i.cd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = sub nsw i32 2147483647, %.0373607
  %i.cf = lshr i32 %i.ce, 1
  %i.cg = icmp samesign ult i32 %i.cf, %i.bp
  br i1 %i.cg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ch = zext nneg i8 %i.bn to i32
  call void @_efree(ptr noundef nonnull %i.s) #9
  call void @_efree(ptr noundef nonnull %i.t) #9
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.5, i32 noundef %i.ch) #9
  br label %.critedge468

bb.ag:                                            ; preds = %bb.ae
  %i.ci = shl nuw nsw i32 %i.bp, 1
  %i.cj = add nsw i32 %i.ci, %.0373607
  br label %bb.be

bb.ah:                                            ; preds = %.lr.ph610, %.lr.ph610
  %i.ck = icmp slt i32 %i.bp, 0
  br i1 %i.ck, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = sub nsw i32 2147483647, %.0373607
  %i.cm = lshr i32 %i.cl, 2
  %i.cn = icmp samesign ult i32 %i.cm, %i.bp
  br i1 %i.cn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.co = zext nneg i8 %i.bn to i32
  call void @_efree(ptr noundef nonnull %i.s) #9
  call void @_efree(ptr noundef nonnull %i.t) #9
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.5, i32 noundef %i.co) #9
  br label %.critedge468

bb.ak:                                            ; preds = %bb.ai
  %i.cp = shl nuw nsw i32 %i.bp, 2
  %i.cq = add i32 %i.cp, %.0373607
  br label %bb.be

bb.al:                                            ; preds = %.lr.ph610, %.lr.ph610, %.lr.ph610, %.lr.ph610
  %i.cr = icmp slt i32 %i.bp, 0
  br i1 %i.cr, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = sub nsw i32 2147483647, %.0373607
  %i.ct = lshr i32 %i.cs, 2
  %i.cu = icmp samesign ult i32 %i.ct, %i.bp
  br i1 %i.cu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cv = zext nneg i8 %i.bn to i32
  call void @_efree(ptr noundef nonnull %i.s) #9
  call void @_efree(ptr noundef nonnull %i.t) #9
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.5, i32 noundef %i.cv) #9
  br label %.critedge468

bb.ao:                                            ; preds = %bb.am
  %i.cw = shl nuw nsw i32 %i.bp, 2
  %i.cx = add nsw i32 %i.cw, %.0373607
  br label %bb.be

bb.ap:                                            ; preds = %.lr.ph610, %.lr.ph610, %.lr.ph610, %.lr.ph610
  %i.cy = icmp slt i32 %i.bp, 0
  br i1 %i.cy, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cz = sub nsw i32 2147483647, %.0373607
  %i.da = lshr i32 %i.cz, 3
  %i.db = icmp samesign ult i32 %i.da, %i.bp
  br i1 %i.db, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dc = zext nneg i8 %i.bn to i32
  call void @_efree(ptr noundef nonnull %i.s) #9
  call void @_efree(ptr noundef nonnull %i.t) #9
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.5, i32 noundef %i.dc) #9
  br label %.critedge468

bb.as:                                            ; preds = %bb.aq
  %i.dd = shl nuw nsw i32 %i.bp, 3
  %i.de = add nsw i32 %i.dd, %.0373607
  br label %bb.be

bb.at:                                            ; preds = %.lr.ph610, %.lr.ph610, %.lr.ph610
  %i.df = icmp slt i32 %i.bp, 0
  br i1 %i.df, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dg = sub nsw i32 2147483647, %.0373607
  %i.dh = lshr i32 %i.dg, 2
  %i.di = icmp samesign ult i32 %i.dh, %i.bp
  br i1 %i.di, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dj = zext nneg i8 %i.bn to i32
  call void @_efree(ptr noundef nonnull %i.s) #9
  call void @_efree(ptr noundef nonnull %i.t) #9
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.5, i32 noundef %i.dj) #9
  br label %.critedge468

bb.aw:                                            ; preds = %bb.au
  %i.dk = shl nuw nsw i32 %i.bp, 2
  %i.dl = add i32 %i.dk, %.0373607
  br label %bb.be

bb.ax:                                            ; preds = %.lr.ph610, %.lr.ph610, %.lr.ph610
  %i.dm = icmp slt i32 %i.bp, 0
  br i1 %i.dm, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dn = sub nsw i32 2147483647, %.0373607
  %i.do = lshr i32 %i.dn, 3
  %i.dp = icmp samesign ult i32 %i.do, %i.bp
  br i1 %i.dp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dq = zext nneg i8 %i.bn to i32
  call void @_efree(ptr noundef nonnull %i.s) #9
  call void @_efree(ptr noundef nonnull %i.t) #9
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.5, i32 noundef %i.dq) #9
  br label %.critedge468

bb.ba:                                            ; preds = %bb.ay
  %i.dr = shl nuw nsw i32 %i.bp, 3
  %i.ds = add i32 %i.dr, %.0373607
  br label %bb.be

bb.bb:                                            ; preds = %.lr.ph610
  %i.dt = sub nsw i32 %.0373607, %i.bp            ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 88) #9
  br label %bb.be

bb.bd:                                            ; preds = %.lr.ph610
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bc, %bb.bd, %bb.ba, %bb.aw, %bb.as, %bb.ao, %bb.ak, %bb.ag, %bb.ac, %bb.z, %.lr.ph610
  %.1374 = phi i32 [ %.0373607, %.lr.ph610 ], [ %i.bx, %bb.z ], [ %i.cc, %bb.ac ], [ %i.cj, %bb.ag ], [ %i.cq, %bb.ak ], [ %i.cx, %bb.ao ], [ %i.de, %bb.as ], [ %i.dl, %bb.aw ], [ %i.ds, %bb.ba ], [ 0, %bb.bc ], [ %i.dt, %bb.bb ], [ %i.bp, %bb.bd ] ; 2 uses
  %spec.select473 = call i32 @llvm.smax.i32(i32 %.0425606, i32 %.1374) ; 2 uses
  %i.dv = add nuw i64 %.4608, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.dv, %.0372.lcssa
  br i1 %exitcond.not, label %._crit_edge611.loopexit, label %.lr.ph610, !llvm.loop !26

._crit_edge611.loopexit:                          ; preds = %bb.be
  %i.dw = zext nneg i32 %spec.select473 to i64
  br label %._crit_edge611

._crit_edge611:                                   ; preds = %bb.w, %._crit_edge611.loopexit
  %.0425.lcssa = phi i64 [ 0, %bb.w ], [ %i.dw, %._crit_edge611.loopexit ] ; 2 uses
  %i.dx = and i64 %.0425.lcssa, 2147483640
  %i.dy = add nuw nsw i64 %i.dx, 32
  %i.dz = call noalias ptr @_emalloc(i64 noundef %i.dy) #10 ; 7 uses
  store i32 1, ptr %i.dz, align 4, !tbaa !21
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 22, ptr %i.ea, align 4, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 0, ptr %i.eb, align 8, !tbaa !22
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  store i64 %.0425.lcssa, ptr %i.ec, align 8, !tbaa !18
  br i1 %.not699, label %._crit_edge696, label %.lr.ph695

.lr.ph695:                                        ; preds = %._crit_edge611
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 17 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph695, %zend_tmp_string_release.exit480
  %.5694 = phi i64 [ 0, %.lr.ph695 ], [ %i.ol, %zend_tmp_string_release.exit480 ] ; 3 uses
  %.4370693 = phi i32 [ 0, %.lr.ph695 ], [ %.16, %zend_tmp_string_release.exit480 ] ; 31 uses
  %.3376692 = phi i32 [ 0, %.lr.ph695 ], [ %.17, %zend_tmp_string_release.exit480 ] ; 33 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.s, i64 %.5694
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !12  ; 5 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.5694
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !20 ; 36 uses
  %i.ei = sext i8 %i.ef to i32                    ; 2 uses
  switch i8 %i.ef, label %zend_tmp_string_release.exit480 [
    i8 64, label %bb.dh
    i8 88, label %bb.dg
    i8 120, label %bb.df
    i8 104, label %bb.bn
    i8 72, label %bb.bn
    i8 99, label %bb.cd
    i8 67, label %bb.cd
    i8 97, label %bb.bh
    i8 65, label %bb.bh
    i8 90, label %bb.bg
    i8 69, label %.preheader
    i8 105, label %bb.cj
    i8 73, label %bb.cj
    i8 115, label %.fold.split
    i8 83, label %.fold.split
    i8 118, label %.fold.split
    i8 110, label %bb.cg
    i8 108, label %.fold.split474
    i8 76, label %.fold.split474
    i8 86, label %.fold.split474
    i8 78, label %bb.cm
    i8 102, label %.preheader556
    i8 103, label %.preheader558
    i8 71, label %.preheader560
    i8 100, label %.preheader562
    i8 101, label %.preheader564
    i8 74, label %bb.cq
    i8 80, label %bb.cp
    i8 81, label %bb.cp
    i8 113, label %bb.cp
  ]

.preheader564:                                    ; preds = %bb.bf
  %i.ej = icmp sgt i32 %i.eh, 0
  br i1 %i.ej, label %.lr.ph623.preheader, label %zend_tmp_string_release.exit480

.lr.ph623.preheader:                              ; preds = %.preheader564
  %i.ek = sext i32 %.4370693 to i64
  br label %.lr.ph623

.preheader562:                                    ; preds = %bb.bf
  %i.el = icmp sgt i32 %i.eh, 0
  br i1 %i.el, label %.lr.ph629.preheader, label %zend_tmp_string_release.exit480

.lr.ph629.preheader:                              ; preds = %.preheader562
  %i.em = sext i32 %.4370693 to i64
  br label %.lr.ph629

.preheader560:                                    ; preds = %bb.bf
  %i.en = icmp sgt i32 %i.eh, 0
  br i1 %i.en, label %.lr.ph635.preheader, label %zend_tmp_string_release.exit480

.lr.ph635.preheader:                              ; preds = %.preheader560
  %i.eo = sext i32 %.4370693 to i64
  br label %.lr.ph635

.preheader558:                                    ; preds = %bb.bf
  %i.ep = icmp sgt i32 %i.eh, 0
  br i1 %i.ep, label %.lr.ph641.preheader, label %zend_tmp_string_release.exit480

.lr.ph641.preheader:                              ; preds = %.preheader558
  %i.eq = sext i32 %.4370693 to i64
  br label %.lr.ph641

.preheader556:                                    ; preds = %bb.bf
  %i.er = icmp sgt i32 %i.eh, 0
  br i1 %i.er, label %.lr.ph647.preheader, label %zend_tmp_string_release.exit480

.lr.ph647.preheader:                              ; preds = %.preheader556
  %i.es = sext i32 %.4370693 to i64
  br label %.lr.ph647

.preheader:                                       ; preds = %bb.bf
  %i.et = icmp sgt i32 %i.eh, 0
  br i1 %i.et, label %.lr.ph674.preheader, label %zend_tmp_string_release.exit480

.lr.ph674.preheader:                              ; preds = %.preheader
  %i.eu = sext i32 %.4370693 to i64
  br label %.lr.ph674

bb.bg:                                            ; preds = %bb.bf
  %i.ev = call i32 @llvm.smax.i32(i32 %i.eh, i32 1)
  %i.ew = add nsw i32 %i.ev, -1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bf, %bb.bg
  %i.ex = phi i32 [ %i.ew, %bb.bg ], [ %i.eh, %bb.bf ], [ %i.eh, %bb.bf ]
  %i.ey = sext i32 %i.ex to i64
  %i.ez = add nsw i32 %.4370693, 1                ; 4 uses
  %i.fa = sext i32 %.4370693 to i64
  %i.fb = getelementptr inbounds [16 x i8], ptr %.0, i64 %i.fa ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !12
  %i.fe = icmp eq i8 %i.fd, 6
  br i1 %i.fe, label %bb.bi, label %bb.bj, !prof !14

bb.bi:                                            ; preds = %bb.bh
  %i.ff = load ptr, ptr %i.fb, align 8, !tbaa !12
  br label %zval_get_tmp_string.exit478

bb.bj:                                            ; preds = %bb.bh
  %i.fg = call ptr @zval_get_string_func(ptr noundef nonnull %i.fb) #9 ; 2 uses
  br label %zval_get_tmp_string.exit478

zval_get_tmp_string.exit478:                      ; preds = %bb.bi, %bb.bj
  %.0517 = phi ptr [ null, %bb.bi ], [ %i.fg, %bb.bj ] ; 5 uses
  %.0.i477 = phi ptr [ %i.ff, %bb.bi ], [ %i.fg, %bb.bj ] ; 2 uses
  %i.fh = sext i32 %.3376692 to i64
  %i.fi = getelementptr inbounds i8, ptr %i.ed, i64 %i.fh ; 2 uses
  %i.fj = icmp eq i8 %i.ef, 97
  %i.fk = icmp eq i8 %i.ef, 90
  %i.fl = or i1 %i.fj, %i.fk
  %i.fm = select i1 %i.fl, i8 0, i8 32
  %i.fn = sext i32 %i.eh to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fi, i8 %i.fm, i64 %i.fn, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i477, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i477, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !18
  %. = call i64 @llvm.umin.i64(i64 %i.fq, i64 %i.ey)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr nonnull align 8 %i.fo, i64 %., i1 false)
  %i.fr = add nsw i32 %i.eh, %.3376692            ; 4 uses
  %.not.i479 = icmp eq ptr %.0517, null
  br i1 %.not.i479, label %zend_tmp_string_release.exit480, label %bb.bk, !prof !14

bb.bk:                                            ; preds = %zval_get_tmp_string.exit478
  %i.fs = getelementptr inbounds nuw i8, ptr %.0517, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !12
  %i.fu = and i32 %i.ft, 64
  %.not.i486 = icmp eq i32 %i.fu, 0
  br i1 %.not.i486, label %bb.bl, label %zend_tmp_string_release.exit480

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i32, ptr %.0517, align 4, !tbaa !21 ; 2 uses
  %i.fw = icmp ne i32 %i.fv, 0
  call void @llvm.assume(i1 %i.fw)
  %i.fx = add i32 %i.fv, -1                       ; 2 uses
  store i32 %i.fx, ptr %.0517, align 4, !tbaa !21
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.bm, label %zend_tmp_string_release.exit480

bb.bm:                                            ; preds = %bb.bl
  call void @_efree(ptr noundef nonnull %.0517) #9
  br label %zend_tmp_string_release.exit480

bb.bn:                                            ; preds = %bb.bf, %bb.bf
  %i.fz = icmp eq i8 %i.ef, 104
  %i.ga = select i1 %i.fz, i32 0, i32 4
  %i.gb = add nsw i32 %.4370693, 1                ; 4 uses
  %i.gc = sext i32 %.4370693 to i64
  %i.gd = getelementptr inbounds [16 x i8], ptr %.0, i64 %i.gc ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !12
  %i.gg = icmp eq i8 %i.gf, 6
  br i1 %i.gg, label %bb.bo, label %bb.bp, !prof !14

bb.bo:                                            ; preds = %bb.bn
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !12
  br label %zval_get_tmp_string.exit

bb.bp:                                            ; preds = %bb.bn
  %i.gi = call ptr @zval_get_string_func(ptr noundef nonnull %i.gd) #9 ; 2 uses
  br label %zval_get_tmp_string.exit

zval_get_tmp_string.exit:                         ; preds = %bb.bo, %bb.bp
  %.0516 = phi ptr [ null, %bb.bo ], [ %i.gi, %bb.bp ] ; 5 uses
  %.0.i476 = phi ptr [ %i.gh, %bb.bo ], [ %i.gi, %bb.bp ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i476, i64 24
  %i.gk = add nsw i32 %.3376692, -1
  %i.gl = sext i32 %i.eh to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i476, i64 16 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !18
  %i.go = icmp ult i64 %i.gn, %i.gl
  br i1 %i.go, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %zval_get_tmp_string.exit
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.ei) #9
  %i.gp = load i64, ptr %i.gm, align 8, !tbaa !18
  %i.gq = trunc i64 %i.gp to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %zval_get_tmp_string.exit
  %.0398 = phi i32 [ %i.gq, %bb.bq ], [ %i.eh, %zval_get_tmp_string.exit ] ; 2 uses
  %i.gr = icmp sgt i32 %.0398, 0
  br i1 %i.gr, label %.lr.ph689, label %._crit_edge690

.lr.ph689:                                        ; preds = %bb.br, %bb.bz
  %.in = phi i32 [ %i.gs, %bb.bz ], [ %.0398, %bb.br ] ; 2 uses
  %.4377687 = phi i32 [ %.5378, %bb.bz ], [ %i.gk, %bb.br ] ; 3 uses
  %.0394686 = phi ptr [ %i.gt, %bb.bz ], [ %i.gj, %bb.br ] ; 2 uses
  %.0395685 = phi i32 [ %.1396, %bb.bz ], [ 1, %bb.br ]
  %.0397684 = phi i32 [ %i.hj, %bb.bz ], [ %i.ga, %bb.br ] ; 2 uses
  %i.gs = add nsw i32 %.in, -1
  %i.gt = getelementptr inbounds nuw i8, ptr %.0394686, i64 1
  %i.gu = load i8, ptr %.0394686, align 1, !tbaa !12 ; 6 uses
  %i.gv = sext i8 %i.gu to i32
  %i.gw = add i8 %i.gu, -48                       ; 2 uses
  %or.cond7 = icmp ult i8 %i.gw, 10
  br i1 %or.cond7, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph689
  %i.gx = add i8 %i.gu, -65
  %or.cond10 = icmp ult i8 %i.gx, 6
  br i1 %or.cond10, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gy = add nsw i8 %i.gu, -55
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bs
  %i.gz = add i8 %i.gu, -97
  %or.cond13 = icmp ult i8 %i.gz, 6
  br i1 %or.cond13, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ha = add nsw i8 %i.gu, -87
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %i.ei, i32 noundef %i.gv) #9
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph689, %bb.bt, %bb.bw, %bb.bv
  %.0393 = phi i8 [ 0, %bb.bw ], [ %i.gy, %bb.bt ], [ %i.ha, %bb.bv ], [ %i.gw, %.lr.ph689 ]
  %.not458 = icmp eq i32 %.0395685, 0
  br i1 %.not458, label %._crit_edge795, label %bb.by

._crit_edge795:                                   ; preds = %bb.bx
  %.phi.trans.insert = sext i32 %.4377687 to i64  ; 2 uses
  %.phi.trans.insert796 = getelementptr inbounds i8, ptr %i.ed, i64 %.phi.trans.insert
  %.pre797 = load i8, ptr %.phi.trans.insert796, align 1, !tbaa !12
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hb = add nsw i32 %.4377687, 1                ; 2 uses
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %2 = getelementptr inbounds i8, ptr %i.ed, i64 %i.hc
  store i8 0, ptr %2, align 1, !tbaa !12
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge795, %bb.by
  %.pre-phi = phi i64 [ %.phi.trans.insert, %._crit_edge795 ], [ %i.hc, %bb.by ]
  %i.hd = phi i8 [ %.pre797, %._crit_edge795 ], [ 0, %bb.by ]
  %.1396 = phi i32 [ 1, %._crit_edge795 ], [ 0, %bb.by ]
  %.5378 = phi i32 [ %.4377687, %._crit_edge795 ], [ %i.hb, %bb.by ] ; 2 uses
  %i.he = zext nneg i8 %.0393 to i32
  %i.hf = shl nuw nsw i32 %i.he, %.0397684
  %i.hg = getelementptr inbounds i8, ptr %i.ed, i64 %.pre-phi
  %i.hh = trunc i32 %i.hf to i8
  %i.hi = or i8 %i.hd, %i.hh
  store i8 %i.hi, ptr %i.hg, align 1, !tbaa !12
  %i.hj = xor i32 %.0397684, 4
  %i.hk = icmp samesign ugt i32 %.in, 1
  br i1 %i.hk, label %.lr.ph689, label %._crit_edge690.loopexit, !llvm.loop !27

._crit_edge690.loopexit:                          ; preds = %bb.bz
  %i.hl = add nsw i32 %.5378, 1
  br label %._crit_edge690

._crit_edge690:                                   ; preds = %._crit_edge690.loopexit, %bb.br
  %.4377.lcssa = phi i32 [ %.3376692, %bb.br ], [ %i.hl, %._crit_edge690.loopexit ] ; 4 uses
  %.not.i = icmp eq ptr %.0516, null
  br i1 %.not.i, label %zend_tmp_string_release.exit480, label %bb.ca, !prof !14

bb.ca:                                            ; preds = %._crit_edge690
  %i.hm = getelementptr inbounds nuw i8, ptr %.0516, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !12
  %i.ho = and i32 %i.hn, 64
  %.not.i487 = icmp eq i32 %i.ho, 0
  br i1 %.not.i487, label %bb.cb, label %zend_tmp_string_release.exit480

bb.cb:                                            ; preds = %bb.ca
  %i.hp = load i32, ptr %.0516, align 4, !tbaa !21 ; 2 uses
  %i.hq = icmp ne i32 %i.hp, 0
  call void @llvm.assume(i1 %i.hq)
  %i.hr = add i32 %i.hp, -1                       ; 2 uses
  store i32 %i.hr, ptr %.0516, align 4, !tbaa !21
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.cc, label %zend_tmp_string_release.exit480

bb.cc:                                            ; preds = %bb.cb
  call void @_efree(ptr noundef nonnull %.0516) #9
  br label %zend_tmp_string_release.exit480

bb.cd:                                            ; preds = %bb.bf, %bb.bf
  %i.ht = icmp sgt i32 %i.eh, 0
  br i1 %i.ht, label %.lr.ph681.preheader, label %zend_tmp_string_release.exit480

.lr.ph681.preheader:                              ; preds = %bb.cd
  %i.hu = sext i32 %.4370693 to i64
  %i.hv = sext i32 %.3376692 to i64
  br label %.lr.ph681

.lr.ph681:                                        ; preds = %.lr.ph681.preheader, %php_pack.exit
  %indvars.iv789 = phi i64 [ %i.hv, %.lr.ph681.preheader ], [ %indvars.iv.next790, %php_pack.exit ] ; 2 uses
  %indvars.iv787 = phi i64 [ %i.hu, %.lr.ph681.preheader ], [ %indvars.iv.next788, %php_pack.exit ] ; 2 uses
  %.2400677 = phi i32 [ %i.eh, %.lr.ph681.preheader ], [ %i.hw, %php_pack.exit ] ; 2 uses
  %i.hw = add nsw i32 %.2400677, -1
  %indvars.iv.next788 = add nsw i64 %indvars.iv787, 1 ; 2 uses
  %i.hx = getelementptr inbounds [16 x i8], ptr %.0, i64 %indvars.iv787 ; 3 uses
  %i.hy = getelementptr inbounds i8, ptr %i.ed, i64 %indvars.iv789
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !12
  %i.ib = icmp eq i8 %i.ia, 4
  br i1 %i.ib, label %bb.ce, label %bb.cf, !prof !14

bb.ce:                                            ; preds = %.lr.ph681
  %i.ic = load i64, ptr %i.hx, align 8, !tbaa !12
  br label %php_pack.exit

bb.cf:                                            ; preds = %.lr.ph681
  %i.id = call i64 @zval_get_long_func(ptr noundef nonnull %i.hx, i1 noundef zeroext false) #9
  br label %php_pack.exit

php_pack.exit:                                    ; preds = %bb.ce, %bb.cf
  %i.ie = phi i64 [ %i.ic, %bb.ce ], [ %i.id, %bb.cf ]
  %.0.extract.trunc = trunc i64 %i.ie to i8
  store i8 %.0.extract.trunc, ptr %i.hy, align 1
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, 1 ; 2 uses
  %i.if = icmp samesign ugt i32 %.2400677, 1
  br i1 %i.if, label %.lr.ph681, label %zend_tmp_string_release.exit480.loopexit, !llvm.loop !28

.fold.split:                                      ; preds = %bb.bf, %bb.bf, %bb.bf
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bf, %.fold.split
  %.not.not.not.i = phi i1 [ false, %bb.bf ], [ true, %.fold.split ]
  %i.ig = icmp sgt i32 %i.eh, 0
  br i1 %i.ig, label %.lr.ph661.preheader, label %zend_tmp_string_release.exit480

.lr.ph661.preheader:                              ; preds = %bb.cg
  %i.ih = sext i32 %.4370693 to i64
  %i.ii = sext i32 %.3376692 to i64
  br label %.lr.ph661

.lr.ph661:                                        ; preds = %.lr.ph661.preheader, %zval_get_long.exit.i
  %indvars.iv776 = phi i64 [ %i.ii, %.lr.ph661.preheader ], [ %indvars.iv.next777, %zval_get_long.exit.i ] ; 2 uses
  %indvars.iv774 = phi i64 [ %i.ih, %.lr.ph661.preheader ], [ %indvars.iv.next775, %zval_get_long.exit.i ] ; 2 uses
  %.3401657 = phi i32 [ %i.eh, %.lr.ph661.preheader ], [ %i.ij, %zval_get_long.exit.i ] ; 2 uses
  %i.ij = add nsw i32 %.3401657, -1
  %indvars.iv.next775 = add nsw i64 %indvars.iv774, 1 ; 2 uses
  %i.ik = getelementptr inbounds [16 x i8], ptr %.0, i64 %indvars.iv774 ; 3 uses
  %i.il = getelementptr inbounds i8, ptr %i.ed, i64 %indvars.iv776
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.in = load i8, ptr %i.im, align 8, !tbaa !12
  %i.io = icmp eq i8 %i.in, 4
  br i1 %i.io, label %bb.ch, label %bb.ci, !prof !14

bb.ch:                                            ; preds = %.lr.ph661
  %i.ip = load i64, ptr %i.ik, align 8, !tbaa !12
  br label %zval_get_long.exit.i

bb.ci:                                            ; preds = %.lr.ph661
  %i.iq = call i64 @zval_get_long_func(ptr noundef nonnull %i.ik, i1 noundef zeroext false) #9
  br label %zval_get_long.exit.i

zval_get_long.exit.i:                             ; preds = %bb.ci, %bb.ch
  %i.ir = phi i64 [ %i.ip, %bb.ch ], [ %i.iq, %bb.ci ] ; 2 uses
  %i.is = call i64 @llvm.bswap.i64(i64 %i.ir)
  %i.it = lshr i64 %i.is, 48
  %storemerge.i = select i1 %.not.not.not.i, i64 %i.ir, i64 %i.it
  %.0.extract.trunc511 = trunc i64 %storemerge.i to i16
  store i16 %.0.extract.trunc511, ptr %i.il, align 1
  %indvars.iv.next777 = add nsw i64 %indvars.iv776, 2 ; 2 uses
  %i.iu = icmp samesign ugt i32 %.3401657, 1
  br i1 %i.iu, label %.lr.ph661, label %zend_tmp_string_release.exit480.loopexit703, !llvm.loop !29

bb.cj:                                            ; preds = %bb.bf, %bb.bf
  %i.iv = icmp sgt i32 %i.eh, 0
  br i1 %i.iv, label %.lr.ph668.preheader, label %zend_tmp_string_release.exit480

.lr.ph668.preheader:                              ; preds = %bb.cj
  %i.iw = sext i32 %.4370693 to i64
  br label %.lr.ph668

.lr.ph668:                                        ; preds = %.lr.ph668.preheader, %php_pack.exit493
  %indvars.iv781 = phi i64 [ %i.iw, %.lr.ph668.preheader ], [ %indvars.iv.next782, %php_pack.exit493 ] ; 2 uses
  %.8381665 = phi i32 [ %.3376692, %.lr.ph668.preheader ], [ %i.jh, %php_pack.exit493 ] ; 2 uses
  %.4402664 = phi i32 [ %i.eh, %.lr.ph668.preheader ], [ %i.ix, %php_pack.exit493 ] ; 2 uses
  %i.ix = add nsw i32 %.4402664, -1
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, 1 ; 2 uses
  %i.iy = getelementptr inbounds [16 x i8], ptr %.0, i64 %indvars.iv781 ; 3 uses
  %i.iz = sext i32 %.8381665 to i64
  %i.ja = getelementptr inbounds i8, ptr %i.ed, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !12
  %i.jd = icmp eq i8 %i.jc, 4
  br i1 %i.jd, label %bb.ck, label %bb.cl, !prof !14

bb.ck:                                            ; preds = %.lr.ph668
  %i.je = load i64, ptr %i.iy, align 8, !tbaa !12
  br label %php_pack.exit493

bb.cl:                                            ; preds = %.lr.ph668
  %i.jf = call i64 @zval_get_long_func(ptr noundef nonnull %i.iy, i1 noundef zeroext false) #9
  br label %php_pack.exit493

php_pack.exit493:                                 ; preds = %bb.ck, %bb.cl
  %i.jg = phi i64 [ %i.je, %bb.ck ], [ %i.jf, %bb.cl ]
  %.0.extract.trunc513 = trunc i64 %i.jg to i32
  store i32 %.0.extract.trunc513, ptr %i.ja, align 1
  %i.jh = add i32 %.8381665, 4                    ; 2 uses
  %i.ji = icmp samesign ugt i32 %.4402664, 1
  br i1 %i.ji, label %.lr.ph668, label %zend_tmp_string_release.exit480.loopexit702, !llvm.loop !30

.fold.split474:                                   ; preds = %bb.bf, %bb.bf, %bb.bf
  br label %bb.cm

bb.cm:                                            ; preds = %bb.bf, %.fold.split474
  %.not.not.not.i495 = phi i1 [ false, %bb.bf ], [ true, %.fold.split474 ]
  %i.jj = icmp sgt i32 %i.eh, 0
  br i1 %i.jj, label %.lr.ph654.preheader, label %zend_tmp_string_release.exit480

.lr.ph654.preheader:                              ; preds = %bb.cm
  %i.jk = sext i32 %.4370693 to i64
  %i.jl = sext i32 %.3376692 to i64
  br label %.lr.ph654

.lr.ph654:                                        ; preds = %.lr.ph654.preheader, %zval_get_long.exit.i494
  %indvars.iv769 = phi i64 [ %i.jl, %.lr.ph654.preheader ], [ %indvars.iv.next770, %zval_get_long.exit.i494 ] ; 2 uses
  %indvars.iv767 = phi i64 [ %i.jk, %.lr.ph654.preheader ], [ %indvars.iv.next768, %zval_get_long.exit.i494 ] ; 2 uses
  %.5403650 = phi i32 [ %i.eh, %.lr.ph654.preheader ], [ %i.jm, %zval_get_long.exit.i494 ] ; 2 uses
  %i.jm = add nsw i32 %.5403650, -1
  %indvars.iv.next768 = add nsw i64 %indvars.iv767, 1 ; 2 uses
  %i.jn = getelementptr inbounds [16 x i8], ptr %.0, i64 %indvars.iv767 ; 3 uses
  %i.jo = getelementptr inbounds i8, ptr %i.ed, i64 %indvars.iv769
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = load i8, ptr %i.jp, align 8, !tbaa !12
  %i.jr = icmp eq i8 %i.jq, 4
  br i1 %i.jr, label %bb.cn, label %bb.co, !prof !14

bb.cn:                                            ; preds = %.lr.ph654
  %i.js = load i64, ptr %i.jn, align 8, !tbaa !12
  br label %zval_get_long.exit.i494

bb.co:                                            ; preds = %.lr.ph654
  %i.jt = call i64 @zval_get_long_func(ptr noundef nonnull %i.jn, i1 noundef zeroext false) #9
  br label %zval_get_long.exit.i494
end_hunk_0
