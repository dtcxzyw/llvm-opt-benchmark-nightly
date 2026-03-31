begin_hunk_0
  br i1 %.not212, label %.thread257, label %bb.ax

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 6 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !35 ; 3 uses
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !35
  switch i32 %i.ae, label %.thread265 [
    i32 510, label %bb.y
    i32 508, label %bb.z
    i32 507, label %bb.ab
end_hunk_0
begin_hunk_1
  %i.io = tail call i32 @cli_check_mydoom_log(i32 noundef %0, ptr noundef %i.in) #9
  br label %.thread265

.thread257:                                       ; preds = %.thread239, %bb.ax, %bb.ay
  %i.ip = phi i32 [ %i.at, %.thread239 ], [ %i.ds, %bb.ay ], [ %i.at, %bb.ax ]
  %.1165255 = phi i32 [ %.0164, %.thread239 ], [ %i.dr, %bb.ay ], [ %.0164, %bb.ax ]
  store i32 %i.ip, ptr %i.as, align 8, !tbaa !36
  br label %bb.cx

.thread265:                                       ; preds = %bb.cf, %bb.ce, %bb.ca, %bb.cp, %bb.cq, %bb.cl, %bb.cm, %bb.cn, %bb.cj, %bb.ck, %bb.cg, %bb.ch, %bb.ci, %bb.cc, %bb.cd, %bb.cb, %bb.by, %bb.bz, %bb.co, %bb.bw, %bb.bx, %bb.bt, %bb.bu, %bb.bv, %bb.bq, %bb.br, %bb.bs, %bb.bn, %bb.bo, %bb.bp, %bb.bk, %bb.bl, %bb.bm, %bb.bh, %bb.bi, %bb.bj, %bb.be, %bb.bf, %bb.bg, %bb.bc, %bb.bd, %bb.az, %bb.ba, %bb.bb, %bb.av, %bb.aw, %bb.as, %bb.at, %bb.au, %bb.ap, %bb.aq, %bb.ar, %bb.am, %bb.an, %bb.ao, %bb.aj, %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ag, %bb.ct, %bb.ab, %bb.ac, %bb.ad, %bb.y, %bb.x
  %.1165.ph.ph = phi i32 [ %.0164, %bb.x ], [ %.0164, %bb.y ], [ %i.bo, %bb.ad ], [ %.0164, %bb.ac ], [ %.0164, %bb.ab ], [ %i.io, %bb.ct ], [ %i.bw, %bb.ag ], [ %.0164, %bb.af ], [ %.0164, %bb.ae ], [ %i.bz, %bb.ai ], [ %.0164, %bb.ah ], [ %i.ch, %bb.al ], [ %.0164, %bb.ak ], [ %.0164, %bb.aj ], [ %i.cp, %bb.ao ], [ %.0164, %bb.an ], [ %.0164, %bb.am ], [ %i.cx, %bb.ar ], [ %.0164, %bb.aq ], [ %.0164, %bb.ap ], [ %i.df, %bb.au ], [ %.0164, %bb.at ], [ %.0164, %bb.as ], [ %i.dl, %bb.aw ], [ %.0164, %bb.av ], [ %i.ea, %bb.bb ], [ %.0164, %bb.ba ], [ %.0164, %bb.az ], [ %i.eg, %bb.bd ], [ %.0164, %bb.bc ], [ %i.eo, %bb.bg ], [ %.0164, %bb.bf ], [ %.0164, %bb.be ], [ %i.ew, %bb.bj ], [ %.0164, %bb.bi ], [ %.0164, %bb.bh ], [ %i.fe, %bb.bm ], [ %.0164, %bb.bl ], [ %.0164, %bb.bk ], [ %i.fm, %bb.bp ], [ %.0164, %bb.bo ], [ %.0164, %bb.bn ], [ %i.fu, %bb.bs ], [ %.0164, %bb.br ], [ %.0164, %bb.bq ], [ %i.gc, %bb.bv ], [ %.0164, %bb.bu ], [ %.0164, %bb.bt ], [ %i.gi, %bb.bx ], [ %.0164, %bb.bw ], [ %.0164, %bb.co ], [ %.0164, %bb.bz ], [ %.0164, %bb.by ], [ 0, %bb.ca ], [ %.0164, %bb.cd ], [ %.0164, %bb.cc ], [ %i.hk, %bb.ci ], [ %.0164, %bb.ch ], [ %.0164, %bb.cg ], [ %i.hq, %bb.ck ], [ %.0164, %bb.cj ], [ %i.hx, %bb.cn ], [ %.0164, %bb.cm ], [ %.0164, %bb.cl ], [ %i.if, %bb.cq ], [ %.0164, %bb.cp ], [ 1, %bb.cb ], [ 1, %bb.cf ], [ 0, %bb.ce ]
  %.2.ph.ph = phi i32 [ %i.ae, %bb.x ], [ 510, %bb.y ], [ 507, %bb.ad ], [ 507, %bb.ac ], [ 507, %bb.ab ], [ %.1, %bb.ct ], [ 511, %bb.ag ], [ 511, %bb.af ], [ 511, %bb.ae ], [ 535, %bb.ai ], [ 535, %bb.ah ], [ 536, %bb.al ], [ 536, %bb.ak ], [ 536, %bb.aj ], [ 514, %bb.ao ], [ 514, %bb.an ], [ 514, %bb.am ], [ 528, %bb.ar ], [ 528, %bb.aq ], [ 528, %bb.ap ], [ 526, %bb.au ], [ 526, %bb.at ], [ 526, %bb.as ], [ 527, %bb.aw ], [ 527, %bb.av ], [ 521, %bb.bb ], [ 521, %bb.ba ], [ 521, %bb.az ], [ 524, %bb.bd ], [ 524, %bb.bc ], [ 525, %bb.bg ], [ 525, %bb.bf ], [ 525, %bb.be ], [ 515, %bb.bj ], [ 515, %bb.bi ], [ 515, %bb.bh ], [ 513, %bb.bm ], [ 513, %bb.bl ], [ 513, %bb.bk ], [ 505, %bb.bp ], [ 505, %bb.bo ], [ 505, %bb.bn ], [ 506, %bb.bs ], [ 506, %bb.br ], [ 506, %bb.bq ], [ 520, %bb.bv ], [ 520, %bb.bu ], [ 520, %bb.bt ], [ 517, %bb.bx ], [ 517, %bb.bw ], [ 516, %bb.co ], [ 519, %bb.bz ], [ 519, %bb.by ], [ 519, %bb.ca ], [ 518, %bb.cd ], [ 518, %bb.cc ], [ 523, %bb.ci ], [ 523, %bb.ch ], [ 523, %bb.cg ], [ 522, %bb.ck ], [ 522, %bb.cj ], [ 503, %bb.cn ], [ 503, %bb.cm ], [ 503, %bb.cl ], [ 516, %bb.cq ], [ 516, %bb.cp ], [ 519, %bb.cb ], [ 518, %bb.cf ], [ 518, %bb.ce ]
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !35
  %i.is = add i32 %i.ir, -1
end_hunk_1
begin_hunk_2
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #9
  br label %bb.cx

bb.cx:                                            ; preds = %.thread, %.thread265, %.thread257, %bb.cw, %bb.cv, %bb.cu
  %.1165246254 = phi i32 [ %.1165.ph288, %bb.cw ], [ %.1165.ph288, %bb.cv ], [ %i.it, %bb.cu ], [ %.1165.ph.ph, %.thread265 ], [ %.1165255, %.thread257 ], [ %.0164, %.thread ] ; 4 uses
  %.2248253 = phi i32 [ 508, %bb.cw ], [ 508, %bb.cv ], [ 508, %bb.cu ], [ %.2.ph.ph, %.thread265 ], [ 529, %.thread257 ], [ 508, %.thread ] ; 3 uses
  %.0 = phi i8 [ 0, %bb.cw ], [ 1, %bb.cv ], [ 1, %bb.cu ], [ 1, %.thread265 ], [ 1, %.thread257 ], [ 1, %.thread ]
  %i.jd = icmp ne i32 %.2248253, 504
  %i.je = icmp ne i32 %.1165246254, 1
  %or.cond4 = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %or.cond4, label %bb.cy, label %bb.da

end_hunk_2
begin_hunk_3
  br i1 %.not231, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ji = tail call fastcc i32 @cli_scanraw(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %.2248253, i8 noundef zeroext %.0)
  %i.jj = icmp eq i32 %i.ji, 1
  br i1 %i.jj, label %bb.dg, label %bb.da

end_hunk_3
begin_hunk_4
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !35
  %i.jn = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #9 ; 0 uses
  %cond = icmp eq i32 %.2248253, 502
  br i1 %cond, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
end_hunk_4
begin_hunk_5
  br label %bb.de

bb.de:                                            ; preds = %bb.da, %bb.db, %bb.dc, %bb.dd
  %.2166 = phi i32 [ %i.jt, %bb.dd ], [ %.1165246254, %bb.dc ], [ %.1165246254, %bb.db ], [ %.1165246254, %bb.da ] ; 2 uses
  %i.ju = load i32, ptr %i.jk, align 4, !tbaa !35
  %i.jv = add i32 %i.ju, -1
  store i32 %i.jv, ptr %i.jk, align 4, !tbaa !35
end_hunk_5
