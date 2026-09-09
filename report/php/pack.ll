Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pack?download=true
inline.NumInlined: 23
inline.NumDeleted: 8
begin_hunk_0_@zif_pack:bb.a
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
  %.5694 = phi i64 [ 0, %.lr.ph695 ], [ %i.oh, %zend_tmp_string_release.exit480 ] ; 3 uses
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
  %2 = select i1 %i.fz, i8 0, i8 4
  %i.ga = add nsw i32 %.4370693, 1                ; 4 uses
  %i.gb = sext i32 %.4370693 to i64
  %i.gc = getelementptr inbounds [16 x i8], ptr %.0, i64 %i.gb ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !12
  %i.gf = icmp eq i8 %i.ge, 6
  br i1 %i.gf, label %bb.bo, label %bb.bp, !prof !14

bb.bo:                                            ; preds = %bb.bn
  %i.gg = load ptr, ptr %i.gc, align 8, !tbaa !12
  br label %zval_get_tmp_string.exit

bb.bp:                                            ; preds = %bb.bn
  %i.gh = call ptr @zval_get_string_func(ptr noundef nonnull %i.gc) #9 ; 2 uses
  br label %zval_get_tmp_string.exit

zval_get_tmp_string.exit:                         ; preds = %bb.bo, %bb.bp
  %.0516 = phi ptr [ null, %bb.bo ], [ %i.gh, %bb.bp ] ; 5 uses
  %.0.i476 = phi ptr [ %i.gg, %bb.bo ], [ %i.gh, %bb.bp ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i476, i64 24
  %i.gj = add nsw i32 %.3376692, -1
  %i.gk = sext i32 %i.eh to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i476, i64 16 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !18
  %i.gn = icmp ult i64 %i.gm, %i.gk
  br i1 %i.gn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %zval_get_tmp_string.exit
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.ei) #9
  %i.go = load i64, ptr %i.gl, align 8, !tbaa !18
  %i.gp = trunc i64 %i.go to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %zval_get_tmp_string.exit
  %.0398 = phi i32 [ %i.gp, %bb.bq ], [ %i.eh, %zval_get_tmp_string.exit ] ; 2 uses
  %i.gq = icmp sgt i32 %.0398, 0
  br i1 %i.gq, label %.lr.ph689, label %._crit_edge690

.lr.ph689:                                        ; preds = %bb.br, %bb.bz
  %.in = phi i32 [ %i.gr, %bb.bz ], [ %.0398, %bb.br ] ; 2 uses
  %.4377687 = phi i32 [ %.5378, %bb.bz ], [ %i.gj, %bb.br ] ; 3 uses
  %.0394686 = phi ptr [ %i.gs, %bb.bz ], [ %i.gi, %bb.br ] ; 2 uses
  %.0395685 = phi i32 [ %.1396, %bb.bz ], [ 1, %bb.br ]
  %.0397684 = phi i8 [ %4, %bb.bz ], [ %2, %bb.br ] ; 2 uses
  %i.gr = add nsw i32 %.in, -1
  %i.gs = getelementptr inbounds nuw i8, ptr %.0394686, i64 1
  %i.gt = load i8, ptr %.0394686, align 1, !tbaa !12 ; 6 uses
  %i.gu = sext i8 %i.gt to i32
  %i.gv = add i8 %i.gt, -48                       ; 2 uses
  %or.cond7 = icmp ult i8 %i.gv, 10
  br i1 %or.cond7, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph689
  %i.gw = add i8 %i.gt, -65
  %or.cond10 = icmp ult i8 %i.gw, 6
  br i1 %or.cond10, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gx = add nsw i8 %i.gt, -55
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bs
  %i.gy = add i8 %i.gt, -97
  %or.cond13 = icmp ult i8 %i.gy, 6
  br i1 %or.cond13, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.gz = add nsw i8 %i.gt, -87
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %i.ei, i32 noundef %i.gu) #9
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph689, %bb.bt, %bb.bw, %bb.bv
  %.0393 = phi i8 [ 0, %bb.bw ], [ %i.gx, %bb.bt ], [ %i.gz, %bb.bv ], [ %i.gv, %.lr.ph689 ]
  %.not458 = icmp eq i32 %.0395685, 0
  br i1 %.not458, label %._crit_edge795, label %bb.by

._crit_edge795:                                   ; preds = %bb.bx
  %.phi.trans.insert = sext i32 %.4377687 to i64  ; 2 uses
  %.phi.trans.insert796 = getelementptr inbounds i8, ptr %i.ed, i64 %.phi.trans.insert
  %.pre797 = load i8, ptr %.phi.trans.insert796, align 1, !tbaa !12
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ha = add nsw i32 %.4377687, 1                ; 2 uses
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.ed, i64 %i.hb
  store i8 0, ptr %i.hc, align 1, !tbaa !12
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge795, %bb.by
  %.pre-phi = phi i64 [ %.phi.trans.insert, %._crit_edge795 ], [ %i.hb, %bb.by ]
  %i.hd = phi i8 [ %.pre797, %._crit_edge795 ], [ 0, %bb.by ]
  %.1396 = phi i32 [ 1, %._crit_edge795 ], [ 0, %bb.by ]
  %.5378 = phi i32 [ %.4377687, %._crit_edge795 ], [ %i.ha, %bb.by ] ; 2 uses
  %3 = shl i8 %.0393, %.0397684
  %i.he = getelementptr inbounds i8, ptr %i.ed, i64 %.pre-phi
  %i.hf = or i8 %i.hd, %3
  store i8 %i.hf, ptr %i.he, align 1, !tbaa !12
  %4 = xor i8 %.0397684, 4
  %i.hg = icmp samesign ugt i32 %.in, 1
  br i1 %i.hg, label %.lr.ph689, label %._crit_edge690.loopexit, !llvm.loop !27

._crit_edge690.loopexit:                          ; preds = %bb.bz
  %i.hh = add nsw i32 %.5378, 1
  br label %._crit_edge690

._crit_edge690:                                   ; preds = %._crit_edge690.loopexit, %bb.br
  %.4377.lcssa = phi i32 [ %.3376692, %bb.br ], [ %i.hh, %._crit_edge690.loopexit ] ; 4 uses
  %.not.i = icmp eq ptr %.0516, null
  br i1 %.not.i, label %zend_tmp_string_release.exit480, label %bb.ca, !prof !14

bb.ca:                                            ; preds = %._crit_edge690
  %i.hi = getelementptr inbounds nuw i8, ptr %.0516, i64 4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !12
  %i.hk = and i32 %i.hj, 64
  %.not.i487 = icmp eq i32 %i.hk, 0
  br i1 %.not.i487, label %bb.cb, label %zend_tmp_string_release.exit480

bb.cb:                                            ; preds = %bb.ca
  %i.hl = load i32, ptr %.0516, align 4, !tbaa !21 ; 2 uses
  %i.hm = icmp ne i32 %i.hl, 0
  call void @llvm.assume(i1 %i.hm)
  %i.hn = add i32 %i.hl, -1                       ; 2 uses
  store i32 %i.hn, ptr %.0516, align 4, !tbaa !21
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.cc, label %zend_tmp_string_release.exit480

bb.cc:                                            ; preds = %bb.cb
  call void @_efree(ptr noundef nonnull %.0516) #9
  br label %zend_tmp_string_release.exit480

bb.cd:                                            ; preds = %bb.bf, %bb.bf
  %i.hp = icmp sgt i32 %i.eh, 0
  br i1 %i.hp, label %.lr.ph681.preheader, label %zend_tmp_string_release.exit480

.lr.ph681.preheader:                              ; preds = %bb.cd
  %i.hq = sext i32 %.4370693 to i64
  %i.hr = sext i32 %.3376692 to i64
  br label %.lr.ph681

.lr.ph681:                                        ; preds = %.lr.ph681.preheader, %php_pack.exit
  %indvars.iv789 = phi i64 [ %i.hr, %.lr.ph681.preheader ], [ %indvars.iv.next790, %php_pack.exit ] ; 2 uses
  %indvars.iv787 = phi i64 [ %i.hq, %.lr.ph681.preheader ], [ %indvars.iv.next788, %php_pack.exit ] ; 2 uses
  %.2400677 = phi i32 [ %i.eh, %.lr.ph681.preheader ], [ %i.hs, %php_pack.exit ] ; 2 uses
  %i.hs = add nsw i32 %.2400677, -1
  %indvars.iv.next788 = add nsw i64 %indvars.iv787, 1 ; 2 uses
  %i.ht = getelementptr inbounds [16 x i8], ptr %.0, i64 %indvars.iv787 ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %i.ed, i64 %indvars.iv789
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !12
  %i.hx = icmp eq i8 %i.hw, 4
  br i1 %i.hx, label %bb.ce, label %bb.cf, !prof !14

bb.ce:                                            ; preds = %.lr.ph681
  %i.hy = load i64, ptr %i.ht, align 8, !tbaa !12
  br label %php_pack.exit

bb.cf:                                            ; preds = %.lr.ph681
  %i.hz = call i64 @zval_get_long_func(ptr noundef nonnull %i.ht, i1 noundef zeroext false) #9
  br label %php_pack.exit

php_pack.exit:                                    ; preds = %bb.ce, %bb.cf
  %i.ia = phi i64 [ %i.hy, %bb.ce ], [ %i.hz, %bb.cf ]
  %.0.extract.trunc = trunc i64 %i.ia to i8
  store i8 %.0.extract.trunc, ptr %i.hu, align 1
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, 1 ; 2 uses
  %i.ib = icmp samesign ugt i32 %.2400677, 1
  br i1 %i.ib, label %.lr.ph681, label %zend_tmp_string_release.exit480.loopexit, !llvm.loop !28

.fold.split:                                      ; preds = %bb.bf, %bb.bf, %bb.bf
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bf, %.fold.split
  %.not.not.not.i = phi i1 [ false, %bb.bf ], [ true, %.fold.split ]
  %i.ic = icmp sgt i32 %i.eh, 0
  br i1 %i.ic, label %.lr.ph661.preheader, label %zend_tmp_string_release.exit480

.lr.ph661.preheader:                              ; preds = %bb.cg
  %i.id = sext i32 %.4370693 to i64
  %i.ie = sext i32 %.3376692 to i64
  br label %.lr.ph661

.lr.ph661:                                        ; preds = %.lr.ph661.preheader, %zval_get_long.exit.i
  %indvars.iv776 = phi i64 [ %i.ie, %.lr.ph661.preheader ], [ %indvars.iv.next777, %zval_get_long.exit.i ] ; 2 uses
  %indvars.iv774 = phi i64 [ %i.id, %.lr.ph661.preheader ], [ %indvars.iv.next775, %zval_get_long.exit.i ] ; 2 uses
  %.3401657 = phi i32 [ %i.eh, %.lr.ph661.preheader ], [ %i.if, %zval_get_long.exit.i ] ; 2 uses
  %i.if = add nsw i32 %.3401657, -1
  %indvars.iv.next775 = add nsw i64 %indvars.iv774, 1 ; 2 uses
  %i.ig = getelementptr inbounds [16 x i8], ptr %.0, i64 %indvars.iv774 ; 3 uses
  %i.ih = getelementptr inbounds i8, ptr %i.ed, i64 %indvars.iv776
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ij = load i8, ptr %i.ii, align 8, !tbaa !12
  %i.ik = icmp eq i8 %i.ij, 4
  br i1 %i.ik, label %bb.ch, label %bb.ci, !prof !14

bb.ch:                                            ; preds = %.lr.ph661
  %i.il = load i64, ptr %i.ig, align 8, !tbaa !12
  br label %zval_get_long.exit.i

bb.ci:                                            ; preds = %.lr.ph661
  %i.im = call i64 @zval_get_long_func(ptr noundef nonnull %i.ig, i1 noundef zeroext false) #9
  br label %zval_get_long.exit.i

zval_get_long.exit.i:                             ; preds = %bb.ci, %bb.ch
  %i.in = phi i64 [ %i.il, %bb.ch ], [ %i.im, %bb.ci ] ; 2 uses
  %i.io = call i64 @llvm.bswap.i64(i64 %i.in)
  %i.ip = lshr i64 %i.io, 48
  %storemerge.i = select i1 %.not.not.not.i, i64 %i.in, i64 %i.ip
  %.0.extract.trunc511 = trunc i64 %storemerge.i to i16
  store i16 %.0.extract.trunc511, ptr %i.ih, align 1
  %indvars.iv.next777 = add nsw i64 %indvars.iv776, 2 ; 2 uses
  %i.iq = icmp samesign ugt i32 %.3401657, 1
  br i1 %i.iq, label %.lr.ph661, label %zend_tmp_string_release.exit480.loopexit703, !llvm.loop !29

bb.cj:                                            ; preds = %bb.bf, %bb.bf
  %i.ir = icmp sgt i32 %i.eh, 0
  br i1 %i.ir, label %.lr.ph668.preheader, label %zend_tmp_string_release.exit480

.lr.ph668.preheader:                              ; preds = %bb.cj
  %i.is = sext i32 %.4370693 to i64
  br label %.lr.ph668

.lr.ph668:                                        ; preds = %.lr.ph668.preheader, %php_pack.exit493
  %indvars.iv781 = phi i64 [ %i.is, %.lr.ph668.preheader ], [ %indvars.iv.next782, %php_pack.exit493 ] ; 2 uses
  %.8381665 = phi i32 [ %.3376692, %.lr.ph668.preheader ], [ %i.jd, %php_pack.exit493 ] ; 2 uses
  %.4402664 = phi i32 [ %i.eh, %.lr.ph668.preheader ], [ %i.it, %php_pack.exit493 ] ; 2 uses
  %i.it = add nsw i32 %.4402664, -1
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, 1 ; 2 uses
  %i.iu = getelementptr inbounds [16 x i8], ptr %.0, i64 %indvars.iv781 ; 3 uses
  %i.iv = sext i32 %.8381665 to i64
  %i.iw = getelementptr inbounds i8, ptr %i.ed, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !12
  %i.iz = icmp eq i8 %i.iy, 4
  br i1 %i.iz, label %bb.ck, label %bb.cl, !prof !14

bb.ck:                                            ; preds = %.lr.ph668
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !12
  br label %php_pack.exit493

bb.cl:                                            ; preds = %.lr.ph668
  %i.jb = call i64 @zval_get_long_func(ptr noundef nonnull %i.iu, i1 noundef zeroext false) #9
  br label %php_pack.exit493

php_pack.exit493:                                 ; preds = %bb.ck, %bb.cl
  %i.jc = phi i64 [ %i.ja, %bb.ck ], [ %i.jb, %bb.cl ]
  %.0.extract.trunc513 = trunc i64 %i.jc to i32
  store i32 %.0.extract.trunc513, ptr %i.iw, align 1
  %i.jd = add i32 %.8381665, 4                    ; 2 uses
  %i.je = icmp samesign ugt i32 %.4402664, 1
  br i1 %i.je, label %.lr.ph668, label %zend_tmp_string_release.exit480.loopexit702, !llvm.loop !30

.fold.split474:                                   ; preds = %bb.bf, %bb.bf, %bb.bf
  br label %bb.cm

bb.cm:                                            ; preds = %bb.bf, %.fold.split474
  %.not.not.not.i495 = phi i1 [ false, %bb.bf ], [ true, %.fold.split474 ]
  %i.jf = icmp sgt i32 %i.eh, 0
  br i1 %i.jf, label %.lr.ph654.preheader, label %zend_tmp_string_release.exit480

.lr.ph654.preheader:                              ; preds = %bb.cm
  %i.jg = sext i32 %.4370693 to i64
  %i.jh = sext i32 %.3376692 to i64
  br label %.lr.ph654

.lr.ph654:                                        ; preds = %.lr.ph654.preheader, %zval_get_long.exit.i494
  %indvars.iv769 = phi i64 [ %i.jh, %.lr.ph654.preheader ], [ %indvars.iv.next770, %zval_get_long.exit.i494 ] ; 2 uses
  %indvars.iv767 = phi i64 [ %i.jg, %.lr.ph654.preheader ], [ %indvars.iv.next768, %zval_get_long.exit.i494 ] ; 2 uses
  %.5403650 = phi i32 [ %i.eh, %.lr.ph654.preheader ], [ %i.ji, %zval_get_long.exit.i494 ] ; 2 uses
  %i.ji = add nsw i32 %.5403650, -1
  %indvars.iv.next768 = add nsw i64 %indvars.iv767, 1 ; 2 uses
  %i.jj = getelementptr inbounds [16 x i8], ptr %.0, i64 %indvars.iv767 ; 3 uses
  %i.jk = getelementptr inbounds i8, ptr %i.ed, i64 %indvars.iv769
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !12
  %i.jn = icmp eq i8 %i.jm, 4
  br i1 %i.jn, label %bb.cn, label %bb.co, !prof !14

bb.cn:                                            ; preds = %.lr.ph654
  %i.jo = load i64, ptr %i.jj, align 8, !tbaa !12
  br label %zval_get_long.exit.i494

bb.co:                                            ; preds = %.lr.ph654
  %i.jp = call i64 @zval_get_long_func(ptr noundef nonnull %i.jj, i1 noundef zeroext false) #9
  br label %zval_get_long.exit.i494

zval_get_long.exit.i494:                          ; preds = %bb.co, %bb.cn
  %i.jq = phi i64 [ %i.jo, %bb.cn ], [ %i.jp, %bb.co ] ; 2 uses
  %i.jr = call i64 @llvm.bswap.i64(i64 %i.jq)
  %i.js = lshr i64 %i.jr, 32
  %storemerge.i496 = select i1 %.not.not.not.i495, i64 %i.jq, i64 %i.js
  %.0.extract.trunc515 = trunc i64 %storemerge.i496 to i32
  store i32 %.0.extract.trunc515, ptr %i.jk, align 1
  %indvars.iv.next770 = add nsw i64 %indvars.iv769, 4 ; 2 uses
  %i.jt = icmp samesign ugt i32 %.5403650, 1
  br i1 %i.jt, label %.lr.ph654, label %zend_tmp_string_release.exit480.loopexit704, !llvm.loop !31

bb.cp:                                            ; preds = %bb.bf, %bb.bf, %bb.bf
  br label %bb.cq
end_hunk_0
begin_hunk_1_@zif_unpack:bb.a
    i8 108, label %bb.ba
    i8 76, label %bb.ba
    i8 78, label %bb.ba
    i8 86, label %bb.ba
    i8 113, label %bb.bf
    i8 81, label %bb.bf
    i8 74, label %bb.bf
    i8 80, label %bb.bf
    i8 73, label %bb.ay
    i8 105, label %bb.ax
    i8 120, label %bb.bx
    i8 102, label %bb.bi
    i8 71, label %bb.bh
    i8 103, label %bb.bg
    i8 101, label %bb.bk
    i8 69, label %bb.bl
    i8 100, label %bb.bm
  ]

zend_string_init.exit488:                         ; preds = %zend_string_init_fast.exit
  %i.dx = sub nsw i64 %i.am, %.1373618
  %i.dy = icmp slt i32 %.1417616, 0
  %.0408 = select i1 %i.dy, i64 %i.dx, i64 %i.cz  ; 5 uses
  %i.dz = trunc i64 %.0408 to i32
  %i.ea = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %i.eb = and i64 %.0408, -8
  %i.ec = add i64 %i.eb, 32
  %i.ed = call noalias ptr @_emalloc(i64 noundef %i.ec) #10 ; 6 uses
  store i32 1, ptr %i.ed, align 4, !tbaa !21
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 22, ptr %i.ee, align 4, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 0, ptr %i.ef, align 8, !tbaa !22
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 %.0408, ptr %i.eg, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 1 %i.ea, i64 %.0408, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.0408
  store i8 0, ptr %i.ei, align 1, !tbaa !12
  store ptr %i.ed, ptr %2, align 8, !tbaa !12
  br label %.sink.split

bb.ag:                                            ; preds = %zend_string_init_fast.exit
  %i.ej = sub nsw i64 %i.am, %.1373618
  %i.ek = icmp slt i32 %.1417616, 0
  %.0400 = select i1 %i.ek, i64 %i.ej, i64 %i.cz  ; 4 uses
  %i.el = trunc i64 %.0400 to i32
  %i.em = icmp sgt i64 %.0400, 0
  br i1 %i.em, label %.lr.ph610, label %._crit_edge611

.lr.ph610:                                        ; preds = %bb.ag
  %i.en = getelementptr i8, ptr %i.al, i64 %.1373618
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph610, %bb.ai
  %.1401608 = phi i64 [ %.0400, %.lr.ph610 ], [ %i.eo, %bb.ai ] ; 3 uses
  %i.eo = add nsw i64 %.1401608, -1               ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !12
  switch i8 %i.eq, label %._crit_edge611 [
    i8 0, label %bb.ai
    i8 32, label %bb.ai
    i8 9, label %bb.ai
    i8 13, label %bb.ai
    i8 10, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah
  %i.er = icmp samesign ugt i64 %.1401608, 1
  br i1 %i.er, label %bb.ah, label %._crit_edge611, !llvm.loop !43

._crit_edge611:                                   ; preds = %bb.ai, %bb.ah, %bb.ag
  %.1401.lcssa = phi i64 [ %.0400, %bb.ag ], [ %.1401608, %bb.ah ], [ 0, %bb.ai ] ; 4 uses
  %i.es = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %i.et = and i64 %.1401.lcssa, -8
  %i.eu = add i64 %i.et, 32
  %i.ev = call noalias ptr @_emalloc(i64 noundef %i.eu) #10 ; 6 uses
  store i32 1, ptr %i.ev, align 4, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 22, ptr %i.ew, align 4, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 0, ptr %i.ex, align 8, !tbaa !22
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i64 %.1401.lcssa, ptr %i.ey, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr nonnull align 1 %i.es, i64 %.1401.lcssa, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.1401.lcssa
  store i8 0, ptr %i.fa, align 1, !tbaa !12
  store ptr %i.ev, ptr %2, align 8, !tbaa !12
  br label %.sink.split

bb.aj:                                            ; preds = %zend_string_init_fast.exit
  %i.fb = sub nsw i64 %i.am, %.1373618
  %i.fc = icmp slt i32 %.1417616, 0
  %.0397 = select i1 %i.fc, i64 %i.fb, i64 %i.cz  ; 4 uses
  %i.fd = trunc i64 %.0397 to i32
  %i.fe = getelementptr i8, ptr %i.al, i64 %.1373618 ; 2 uses
  %i.ff = icmp sgt i64 %.0397, 0
  br i1 %i.ff, label %.lr.ph603, label %._crit_edge604

.lr.ph603:                                        ; preds = %bb.aj, %bb.ak
  %.0398601 = phi i64 [ %i.fj, %bb.ak ], [ 0, %bb.aj ] ; 3 uses
  %i.fg = getelementptr i8, ptr %i.fe, i64 %.0398601
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !12
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %._crit_edge604, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph603
  %i.fj = add nuw nsw i64 %.0398601, 1            ; 2 uses
  %exitcond647.not = icmp eq i64 %i.fj, %.0397
  br i1 %exitcond647.not, label %._crit_edge604, label %.lr.ph603, !llvm.loop !44

._crit_edge604:                                   ; preds = %.lr.ph603, %bb.ak, %bb.aj
  %.0398.lcssa = phi i64 [ 0, %bb.aj ], [ %.0398601, %.lr.ph603 ], [ %.0397, %bb.ak ] ; 4 uses
  %i.fk = and i64 %.0398.lcssa, 9223372036854775800
  %i.fl = add nuw i64 %i.fk, 32
  %i.fm = call noalias ptr @_emalloc(i64 noundef %i.fl) #10 ; 6 uses
  store i32 1, ptr %i.fm, align 4, !tbaa !21
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 22, ptr %i.fn, align 4, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 0, ptr %i.fo, align 8, !tbaa !22
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %.0398.lcssa, ptr %i.fp, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fq, ptr nonnull align 1 %i.fe, i64 %.0398.lcssa, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.0398.lcssa
  store i8 0, ptr %i.fr, align 1, !tbaa !12
  store ptr %i.fm, ptr %2, align 8, !tbaa !12
  br label %.sink.split

bb.al:                                            ; preds = %zend_string_init_fast.exit, %zend_string_init_fast.exit
  %i.fs = icmp slt i32 %.1417616, 1073741824
  br i1 %i.fs, label %zend_string_alloc.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not460 = icmp eq ptr %.0415, null
  br i1 %.not460, label %.thread533, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ft = getelementptr inbounds nuw i8, ptr %.0415, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.fv = and i32 %i.fu, 64
  %.not.i490 = icmp eq i32 %i.fv, 0
  br i1 %.not.i490, label %bb.ao, label %.thread533

bb.ao:                                            ; preds = %bb.an
  %i.fw = load i32, ptr %.0415, align 4, !tbaa !21 ; 2 uses
  %i.fx = icmp ne i32 %i.fw, 0
  call void @llvm.assume(i1 %i.fx)
  %i.fy = add i32 %i.fw, -1                       ; 2 uses
  store i32 %i.fy, ptr %.0415, align 4, !tbaa !21
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ap, label %.thread533

bb.ap:                                            ; preds = %bb.ao
  call void @_efree(ptr noundef nonnull %.0415) #9
  br label %.thread533

.thread533:                                       ; preds = %bb.am, %bb.an, %bb.ao, %bb.ap
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef 1073741823) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.critedge482

zend_string_alloc.exit:                           ; preds = %bb.al
  %i.ga = sub nsw i64 %i.am, %.1373618
  %i.gb = shl nsw i64 %i.ga, 1
  %i.gc = shl nuw nsw i32 %.1417616, 1
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = icmp slt i32 %.1417616, 0
  %.0394 = select i1 %i.ge, i64 %i.gb, i64 %i.gd  ; 2 uses
  %i.gf = icmp sgt i64 %.0394, 0
  %or.cond17 = select i1 %i.gf, i1 %i.cr, i1 false
  %i.gg = select i1 %or.cond17, i64 %i.ct, i64 0
  %.1395 = sub i64 %.0394, %i.gg                  ; 5 uses
  %i.gh = and i64 %.1395, -8
  %i.gi = add i64 %i.gh, 32
  %i.gj = call noalias ptr @_emalloc(i64 noundef %i.gi) #10 ; 7 uses
  store i32 1, ptr %i.gj, align 4, !tbaa !21
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 2 uses
  store i32 22, ptr %i.gk, align 4, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i64 0, ptr %i.gl, align 8, !tbaa !22
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store i64 %.1395, ptr %i.gm, align 8, !tbaa !18
  %i.gn = icmp sgt i64 %.1395, 0
  br i1 %i.gn, label %.lr.ph600, label %._crit_edge

.lr.ph600:                                        ; preds = %zend_string_alloc.exit
  %i.go = getelementptr i8, ptr %i.al, i64 %.1373618
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph600, %bb.aq
  %.0388599 = phi i64 [ 0, %.lr.ph600 ], [ %i.hc, %bb.aq ] ; 2 uses
  %.0389598 = phi i64 [ 0, %.lr.ph600 ], [ %.1390, %bb.aq ] ; 2 uses
  %.0391597 = phi i32 [ 1, %.lr.ph600 ], [ %.1392, %bb.aq ] ; 2 uses
  %.0393596 = phi i32 [ %i.cq, %.lr.ph600 ], [ %i.gy, %bb.aq ] ; 2 uses
  %i.gq = getelementptr i8, ptr %i.go, i64 %.0389598
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !12
  %3 = zext i8 %i.gr to i32
  %4 = lshr i32 %3, %.0393596
  %i.gs = and i32 %4, 15                          ; 2 uses
  %i.gt = icmp samesign ult i32 %i.gs, 10
  %i.gu = trunc nuw nsw i32 %i.gs to i8           ; 2 uses
  %i.gv = or disjoint i8 %i.gu, 48
  %i.gw = add nuw nsw i8 %i.gu, 87
  %.0387 = select i1 %i.gt, i8 %i.gv, i8 %i.gw
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.0388599
  store i8 %.0387, ptr %i.gx, align 1, !tbaa !12
  %i.gy = xor i32 %.0393596, 4
  %i.gz = add nsw i32 %.0391597, -1
  %i.ha = icmp eq i32 %.0391597, 0                ; 2 uses
  %.1392 = select i1 %i.ha, i32 1, i32 %i.gz
  %i.hb = zext i1 %i.ha to i64
  %.1390 = add nuw nsw i64 %.0389598, %i.hb
  %i.hc = add nuw nsw i64 %.0388599, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hc, %.1395
  br i1 %exitcond.not, label %._crit_edge, label %bb.aq, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.aq, %zend_string_alloc.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %.1395
  store i8 0, ptr %i.he, align 1, !tbaa !12
  store ptr %i.gj, ptr %2, align 8, !tbaa !12
  %i.hf = load i32, ptr %i.gk, align 4, !tbaa !12
  %i.hg = and i32 %i.hf, 64
  %.not459 = icmp eq i32 %i.hg, 0
  %i.hh = select i1 %.not459, i32 262, i32 6
  br label %.sink.split

bb.ar:                                            ; preds = %zend_string_init_fast.exit, %zend_string_init_fast.exit
  %i.hi = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !12  ; 2 uses
  %i.hk = sext i8 %i.hj to i64
  %i.hl = zext i8 %i.hj to i64
  %i.hm = select i1 %i.co, i64 %i.hk, i64 %i.hl
  store i64 %i.hm, ptr %2, align 8, !tbaa !12
  br label %.sink.split

bb.as:                                            ; preds = %zend_string_init_fast.exit, %zend_string_init_fast.exit, %zend_string_init_fast.exit, %zend_string_init_fast.exit
  %i.hn = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %i.ho = load i16, ptr %i.hn, align 1, !tbaa !56 ; 3 uses
  switch i8 %i.aw, label %bb.au [
    i8 115, label %bb.at
    i8 110, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.hp = sext i16 %i.ho to i64
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.hq = zext i16 %i.ho to i64
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.ho)
  %i.hr = zext i16 %rev.i to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.au, %bb.av
  %.0384 = phi i64 [ %i.hp, %bb.at ], [ %i.hr, %bb.av ], [ %i.hq, %bb.au ]
  store i64 %.0384, ptr %2, align 8, !tbaa !12
  br label %.sink.split

bb.ax:                                            ; preds = %zend_string_init_fast.exit
  %i.hs = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %i.ht = load i32, ptr %i.hs, align 1, !tbaa !20
  %i.hu = sext i32 %i.ht to i64
  br label %bb.az

bb.ay:                                            ; preds = %zend_string_init_fast.exit
  %i.hv = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %i.hw = load i32, ptr %i.hv, align 1, !tbaa !20
  %i.hx = zext i32 %i.hw to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.0383 = phi i64 [ %i.hu, %bb.ax ], [ %i.hx, %bb.ay ]
  store i64 %.0383, ptr %2, align 8, !tbaa !12
  br label %.sink.split

bb.ba:                                            ; preds = %zend_string_init_fast.exit, %zend_string_init_fast.exit, %zend_string_init_fast.exit, %zend_string_init_fast.exit
  %i.hy = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %i.hz = load i32, ptr %i.hy, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.aw, label %bb.bc [
    i8 108, label %bb.bb
    i8 78, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ia = sext i32 %i.hz to i64
  br label %bb.be

bb.bc:                                            ; preds = %bb.ba
  %i.ib = zext i32 %i.hz to i64
  br label %bb.be

bb.bd:                                            ; preds = %bb.ba
  %i.ic = call noundef i32 @llvm.bswap.i32(i32 %i.hz)
  %i.id = zext i32 %i.ic to i64
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bc, %bb.bd
  %.0379 = phi i64 [ %i.ia, %bb.bb ], [ %i.id, %bb.bd ], [ %i.ib, %bb.bc ]
  store i64 %.0379, ptr %2, align 8, !tbaa !12
  br label %.sink.split

bb.bf:                                            ; preds = %zend_string_init_fast.exit, %zend_string_init_fast.exit, %zend_string_init_fast.exit, %zend_string_init_fast.exit
  %i.ie = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %i.if = load i64, ptr %i.ie, align 1, !tbaa !48 ; 2 uses
  %.sroa.0.0.insert.insert.i = call i64 @llvm.bswap.i64(i64 %i.if)
  %spec.select560 = select i1 %cond, i64 %.sroa.0.0.insert.insert.i, i64 %i.if
  store i64 %spec.select560, ptr %2, align 8, !tbaa !12
  br label %.sink.split

bb.bg:                                            ; preds = %zend_string_init_fast.exit
  %i.ig = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %.val499 = load float, ptr %i.ig, align 1
  br label %bb.bj

bb.bh:                                            ; preds = %zend_string_init_fast.exit
  %i.ih = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %.val562 = load i32, ptr %i.ih, align 1
  %i.ii = call i32 @llvm.bswap.i32(i32 %.val562)
  %i.ij = bitcast i32 %i.ii to float
  br label %bb.bj

bb.bi:                                            ; preds = %zend_string_init_fast.exit
  %i.ik = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %.0.copyload23 = load float, ptr %i.ik, align 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bi, %bb.bh
  %.0361 = phi float [ %.val499, %bb.bg ], [ %i.ij, %bb.bh ], [ %.0.copyload23, %bb.bi ]
  %i.il = fpext float %.0361 to double
  store double %i.il, ptr %2, align 8, !tbaa !12
  br label %.sink.split

bb.bk:                                            ; preds = %zend_string_init_fast.exit
  %i.im = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %.val501 = load double, ptr %i.im, align 1
  br label %bb.bn

bb.bl:                                            ; preds = %zend_string_init_fast.exit
  %i.in = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %.val500561 = load i64, ptr %i.in, align 1
  %.sroa.0.0.insert.insert.i.i502 = call i64 @llvm.bswap.i64(i64 %.val500561)
  %i.io = bitcast i64 %.sroa.0.0.insert.insert.i.i502 to double
  br label %bb.bn

bb.bm:                                            ; preds = %zend_string_init_fast.exit
  %i.ip = getelementptr inbounds i8, ptr %i.al, i64 %.1373618
  %.0.copyload = load double, ptr %i.ip, align 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bm, %bb.bl
  %.0360 = phi double [ %.val501, %bb.bk ], [ %i.io, %bb.bl ], [ %.0.copyload, %bb.bm ]
  store double %.0360, ptr %2, align 8, !tbaa !12
  br label %.sink.split

bb.bo:                                            ; preds = %zend_string_init_fast.exit
  %i.iq = icmp slt i64 %.1373618, %i.cz
  br i1 %i.iq, label %bb.bp, label %bb.bx

bb.bp:                                            ; preds = %bb.bo
  %i.ir = sub nsw i32 0, %.1417616
  %i.is = sext i32 %i.ir to i64                   ; 2 uses
  br i1 %i.cm, label %.sink.split701, label %bb.bx

bb.bq:                                            ; preds = %zend_string_init_fast.exit
  br i1 %.not458, label %.sink.split701, label %bb.bx

.sink.split:                                      ; preds = %zend_string_init.exit488, %._crit_edge611, %._crit_edge604, %bb.ar, %bb.aw, %bb.az, %bb.be, %bb.bf, %bb.bj, %bb.bn, %._crit_edge
  %.sink = phi i32 [ %i.hh, %._crit_edge ], [ 5, %bb.bn ], [ 5, %bb.bj ], [ 4, %bb.bf ], [ 4, %bb.be ], [ 4, %bb.az ], [ 4, %bb.aw ], [ 4, %bb.ar ], [ 262, %._crit_edge604 ], [ 262, %._crit_edge611 ], [ 262, %zend_string_init.exit488 ]
  %.2418.ph = phi i32 [ %.1417616, %._crit_edge ], [ %.1417616, %bb.bn ], [ %.1417616, %bb.bj ], [ %.1417616, %bb.bf ], [ %.1417616, %bb.be ], [ %.1417616, %bb.az ], [ %.1417616, %bb.aw ], [ %.1417616, %bb.ar ], [ %i.fd, %._crit_edge604 ], [ %i.el, %._crit_edge611 ], [ %i.dz, %zend_string_init.exit488 ]
  store i32 %.sink, ptr %i.at, align 8, !tbaa !12
  br label %bb.br

bb.br:                                            ; preds = %.sink.split, %zend_string_init_fast.exit
  %.2418 = phi i32 [ %.1417616, %zend_string_init_fast.exit ], [ %.2418.ph, %.sink.split ] ; 2 uses
  %.not466 = icmp eq ptr %.0415, null
  %i.it = load ptr, ptr %1, align 8, !tbaa !12    ; 3 uses
  br i1 %.not466, label %.thread535, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.iu = getelementptr inbounds nuw i8, ptr %.0415, i64 24 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.0415, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !18
  %i.ix = load i8, ptr %i.iu, align 8, !tbaa !12  ; 3 uses
  %i.iy = icmp sgt i8 %i.ix, 57
  br i1 %i.iy, label %_zend_handle_numeric_str.exit.thread, label %bb.bt, !prof !14

bb.bt:                                            ; preds = %bb.bs
  %i.iz = icmp slt i8 %i.ix, 48
  br i1 %i.iz, label %bb.bu, label %_zend_handle_numeric_str.exit

bb.bu:                                            ; preds = %bb.bt
  %.not.i498 = icmp eq i8 %i.ix, 45
  br i1 %.not.i498, label %bb.bv, label %_zend_handle_numeric_str.exit.thread
end_hunk_1
