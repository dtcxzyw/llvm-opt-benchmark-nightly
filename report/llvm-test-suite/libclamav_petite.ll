inline.NumInlined: 26
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@petite_inflate2x_1to9:bb.a
bb.y:                                             ; preds = %.lr.ph1296
  %.0623.val.us = load i32, ptr %.06231294.us, align 1
  %.not787.us = icmp eq i32 %.0623.val.us, 0
  br i1 %.not787.us, label %.critedge7, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = load i32, ptr %i.bq, align 4, !tbaa !8
  %i.cq = add i32 %i.cp, %5
  %i.cr = icmp ult i32 %i.cq, -1074785481
  %i.cs = sext i1 %i.cr to i32
  %spec.select.us = add i32 %.26441291.us, %i.cj
  %.4646.us = add i32 %spec.select.us, %i.cs      ; 2 uses
  %i.ct = tail call i32 @llvm.fshl.i32(i32 %.4646.us, i32 %.4646.us, i32 29)
  br i1 %.not785.us, label %.critedge, label %.lr.ph1296, !llvm.loop !16

.critedge7:                                       ; preds = %bb.y
  br i1 %.not782, label %.critedge, label %bb.v

.critedge.thread:                                 ; preds = %bb.o, %bb.w, %bb.n
  %.6648997 = phi i32 [ %.06421272, %bb.n ], [ %.16431323, %bb.w ], [ %.16431323.us, %bb.o ]
  %i.cu = add i32 %.6648997, %i.bk                ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str, i32 noundef %i.cu) #6
  br label %bb.aa

.critedge:                                        ; preds = %bb.p, %.lr.ph1327.split.us, %.critedge7.us, %bb.u, %.lr.ph1296.us, %bb.x, %bb.v, %.critedge7, %.lr.ph1296, %bb.z, %.preheader
  %i.cv = load i32, ptr %.06931270, align 4, !tbaa !8 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.cv) #6
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.thread, %.critedge, %._crit_edge1289
  %.8 = phi i32 [ 0, %._crit_edge1289 ], [ %i.cu, %.critedge.thread ], [ %i.cv, %.critedge ]
  %wide.trip.count1507 = zext nneg i32 %.07081267 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.06931270, i64 8
  store i32 0, ptr %i.cw, align 4, !tbaa !17
  %i.cx = getelementptr inbounds nuw i8, ptr %.06931270, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !10 ; 3 uses
  %i.cz = add i32 %i.cy, -1
  %or.cond852.not.peel = icmp uge i32 %i.cz, %2
  %.not793.peel = icmp ugt i32 %i.cy, %2
  %or.cond = or i1 %or.cond852.not.peel, %.not793.peel
  br i1 %or.cond, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = zext i32 %i.cy to i64
  %i.db = load i32, ptr %.06931270, align 4, !tbaa !8
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dc
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.dd, i64 %i.da, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %exitcond1508.peel.not = icmp eq i32 %.07081267, 1
  br i1 %exitcond1508.peel.not, label %.lr.ph1351.preheader, label %.lr.ph1347.peel.next

.lr.ph1347.peel.next:                             ; preds = %bb.ac, %bb.af
  %indvars.iv1486 = phi i64 [ %indvars.iv.next1487, %bb.af ], [ 1, %bb.ac ] ; 3 uses
  %i.de = getelementptr [36 x i8], ptr %.06931270, i64 %indvars.iv1486 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !17
  %i.dh = getelementptr i8, ptr %i.de, i64 -24
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !10
  %i.dj = add i32 %i.di, %i.dg                    ; 2 uses
  %i.dk = getelementptr inbounds nuw [36 x i8], ptr %.06931270, i64 %indvars.iv1486 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !10 ; 2 uses
  %i.do = add i32 %i.dn, -1
  %or.cond852.not = icmp ult i32 %i.do, %2
  br i1 %or.cond852.not, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph1347.peel.next
  %i.dp = zext i32 %i.dj to i64                   ; 2 uses
  %i.dq = zext i32 %i.dn to i64                   ; 2 uses
  %i.dr = add nuw nsw i64 %i.dq, %i.dp
  %.not793 = icmp samesign ugt i64 %i.dr, %i.n
  br i1 %.not793, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %i.dp
  %i.dt = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.du
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.dv, i64 %i.dq, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph1347.peel.next, %bb.ad, %bb.ae
  %indvars.iv.next1487 = add nuw nsw i64 %indvars.iv1486, 1 ; 2 uses
  %exitcond1508.not = icmp eq i64 %indvars.iv.next1487, %wide.trip.count1507
  br i1 %exitcond1508.not, label %.lr.ph1351.preheader, label %.lr.ph1347.peel.next, !llvm.loop !18

.lr.ph1351.preheader:                             ; preds = %bb.af, %bb.ac
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #6
  %wide.trip.count1531 = zext nneg i32 %.07081267 to i64
  br label %.lr.ph1351

.lr.ph1351:                                       ; preds = %.lr.ph1351.preheader, %.lr.ph1351
  %indvars.iv1510 = phi i64 [ 0, %.lr.ph1351.preheader ], [ %indvars.iv.next1511, %.lr.ph1351 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [36 x i8], ptr %.06931270, i64 %indvars.iv1510 ; 4 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !10
  %i.ee = trunc nuw nsw i64 %indvars.iv1510 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %i.ee, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.eb, i32 noundef %i.ed) #6
  %indvars.iv.next1511 = add nuw nsw i64 %indvars.iv1510, 1 ; 2 uses
  %exitcond1532.not = icmp eq i64 %indvars.iv.next1511, %wide.trip.count1531
  br i1 %exitcond1532.not, label %._crit_edge1352, label %.lr.ph1351, !llvm.loop !20

._crit_edge1352:                                  ; preds = %.lr.ph1351
  %i.ef = tail call i32 @cli_rebuildpe(ptr noundef %0, ptr noundef nonnull %.06931270, i32 noundef %.07081267, i32 noundef %5, i32 noundef %.8, i32 noundef %9, i32 noundef %10, i32 noundef %7) #6
  %.not788 = icmp eq i32 %i.ef, 0
  br i1 %.not788, label %.thread1057.sink.split.sink.split, label %.thread1057.sink.split

bb.ag:                                            ; preds = %bb.e
  %.not796 = icmp sgt i32 %.2607.val, -1
  br i1 %.not796, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.p, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %.26071275, i64 12 ; 2 uses
  %.not839.not = icmp ugt ptr %i.eg, %i.o
  br i1 %.not839.not, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.not840 = icmp eq ptr %.06931270, null
  br i1 %.not840, label %.thread1057, label %.thread1057.sink.split

bb.ak:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %.26071275, i64 8
  %.val893 = load i32, ptr %i.eh, align 1         ; 2 uses
  %i.ei = add nsw i32 %.val893, 4
  %.val892 = load i32, ptr %i.z, align 1
  %i.ej = sext i32 %.val892 to i64
  %i.ek = shl i32 %.2607.val, 2                   ; 3 uses
  %i.el = add i32 %i.ek, -4
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = sub nsw i64 %i.ej, %i.em                ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %i.c, i64 %i.en
  %i.ep = sext i32 %.val893 to i64
  %i.eq = sub nsw i64 %i.ep, %i.em                ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %i.c, i64 %i.eq
  %i.es = add i32 %i.ek, -1
  %or.cond855 = icmp uge i32 %i.es, %2
  %.not843 = icmp slt i64 %i.en, %i.a
  %or.cond1085 = select i1 %or.cond855, i1 true, i1 %.not843
  br i1 %or.cond1085, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = zext i32 %i.ek to i64                   ; 3 uses
  %i.eu = sub nsw i64 %i.et, %i.a
  %i.ev = add nsw i64 %i.eu, %i.en                ; 2 uses
  %.not844 = icmp sgt i64 %i.ev, %i.n
  %i.ew = icmp slt i64 %i.ev, 1
  %or.cond856.not1088 = or i1 %.not844, %i.ew
  %.not845 = icmp slt i64 %i.eq, %i.a
  %or.cond857 = select i1 %or.cond856.not1088, i1 true, i1 %.not845
  br i1 %or.cond857, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = add nsw i64 %i.q, %i.et
  %i.ey = add nsw i64 %i.ex, %i.eq
  %or.cond1086 = icmp ult i64 %i.ey, %i.n
  br i1 %or.cond1086, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.not847 = icmp eq ptr %.06931270, null
  br i1 %.not847, label %.thread1057, label %.thread1057.sink.split

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.er, ptr align 1 %i.eo, i64 %i.et, i1 false)
  br label %.thread1035

bb.ap:                                            ; preds = %bb.ag
  %i.ez = getelementptr inbounds nuw i8, ptr %.26071275, i64 12
  %.not798 = icmp ule ptr %i.ez, %i.o
  %or.cond1353 = select i1 %i.r, i1 %.not798, i1 false
  br i1 %or.cond1353, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not799 = icmp eq ptr %.06931270, null
  br i1 %.not799, label %.thread1057, label %.thread1057.sink.split

bb.ar:                                            ; preds = %bb.ap
  %.val890 = load i32, ptr %i.z, align 1          ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.26071275, i64 8
  %.val889 = load i32, ptr %i.fa, align 1         ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.26071275, i64 16 ; 2 uses
  %i.fc = icmp sgt i32 %.07081267, 95
  br i1 %i.fc, label %.thread1057.sink.split.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fd = add nsw i32 %.07081267, 1               ; 4 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul nsw i64 %i.fe, 36
  %i.fg = tail call ptr @cli_realloc(ptr noundef %.06931270, i64 noundef %i.ff) #6 ; 21 uses
  %.not800 = icmp eq ptr %i.fg, null
  br i1 %.not800, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.not801 = icmp eq ptr %.06931270, null
  br i1 %.not801, label %.thread1057, label %.thread1057.sink.split

bb.au:                                            ; preds = %bb.as
  %i.fh = sext i32 %.07081267 to i64
  %i.fi = getelementptr inbounds [36 x i8], ptr %i.fg, i64 %i.fh ; 6 uses
  store i32 %.val889, ptr %i.fi, align 4, !tbaa !8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12 ; 5 uses
  store i32 %.val890, ptr %i.fj, align 4, !tbaa !10
  %i.fk = sub i32 %.06391273, %.val889            ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  %spec.select = select i1 %i.fl, i32 %i.fk, i32 %.val890
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 %spec.select, ptr %i.fm, align 4, !tbaa !11
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 0, ptr %i.fn, align 4, !tbaa !17
  %.not802 = icmp eq i32 %.val890, 0
  br i1 %.not802, label %.thread1035, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fo = zext nneg i32 %.2607.val to i64         ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fo ; 2 uses
  %i.fq = zext i32 %.val889 to i64                ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fq ; 2 uses
  %.not803 = icmp ne i32 %.06971269, 0
  %brmerge = or i1 %.not803, %.not1355
  br i1 %brmerge, label %.loopexit1103, label %.lr.ph

.lr.ph:                                           ; preds = %bb.av, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 0, %bb.av ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !8  ; 3 uses
  %.not804 = icmp ugt i32 %.val889, %i.ft
  br i1 %.not804, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.lr.ph
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !11
  %i.fw = add i32 %i.fv, %i.ft
  %.not805 = icmp ult i32 %.val889, %i.fw
  br i1 %.not805, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.ft, ptr %i.fi, align 4, !tbaa !8
  %i.fx = load i32, ptr %i.fs, align 4, !tbaa !8
  %i.fy = add i32 %.val889, %.val890
  %i.fz = sub i32 %i.fy, %i.fx
  store i32 %i.fz, ptr %i.fj, align 4, !tbaa !10
  br label %.loopexit1103

bb.ay:                                            ; preds = %.lr.ph, %bb.aw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1103, label %.lr.ph, !llvm.loop !21

.loopexit1103:                                    ; preds = %bb.ay, %bb.av, %bb.ax
  %i.ga = icmp ult i32 %.val890, 65536            ; 3 uses
  %i.gb = icmp ult i32 %.val890, 262144           ; 3 uses
  %. = select i1 %i.gb, i32 32383, i32 31999
  %.860 = select i1 %i.gb, i32 1663, i32 1279
  %.861 = select i1 %i.gb, i32 7, i32 8
  %i.gc = select i1 %i.ga, i32 16287, i32 %.
  %i.gd = select i1 %i.ga, i32 927, i32 %.860
  %.0619 = select i1 %i.ga, i32 5, i32 %.861
  %.not806 = icmp ult i32 %.2607.val, %1
  br i1 %.not806, label %.thread1057.sink.split, label %bb.az

bb.az:                                            ; preds = %.loopexit1103
  %.not807 = icmp samesign ugt i64 %invariant.op, %i.fo
  %.not808 = icmp uge i32 %.val889, %1
  %or.cond863.not1356 = select i1 %.not807, i1 %.not808, i1 false
  %.not809.not.not = icmp samesign ugt i64 %invariant.op, %i.fq
  %or.cond1093 = select i1 %or.cond863.not1356, i1 %.not809.not.not, i1 false
  br i1 %or.cond1093, label %bb.ba, label %.thread1057.sink.split

bb.ba:                                            ; preds = %bb.az
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  %i.gf = add i32 %.val890, -1                    ; 2 uses
  %i.gg = load i8, ptr %i.fp, align 1, !tbaa !22
  store i8 %i.gg, ptr %i.fr, align 1, !tbaa !22
  %.not8111257 = icmp eq i32 %i.gf, 0
  br i1 %.not8111257, label %._crit_edge, label %.lr.ph1263.preheader

.lr.ph1263.preheader:                             ; preds = %bb.ba
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  br label %.lr.ph1263

.lr.ph1263:                                       ; preds = %.lr.ph1263.preheader, %.loopexit1099
  %.06731262 = phi i32 [ %.2675, %.loopexit1099 ], [ 0, %.lr.ph1263.preheader ] ; 2 uses
  %.06881261 = phi i32 [ %.1689, %.loopexit1099 ], [ %i.gf, %.lr.ph1263.preheader ] ; 3 uses
  %.06901260 = phi ptr [ %.2692, %.loopexit1099 ], [ %i.ge, %.lr.ph1263.preheader ] ; 11 uses
  %.09611259 = phi i8 [ %.6965, %.loopexit1099 ], [ 0, %.lr.ph1263.preheader ] ; 3 uses
  %.09701258 = phi ptr [ %.6976, %.loopexit1099 ], [ %i.gh, %.lr.ph1263.preheader ] ; 5 uses
  %i.gi = shl i8 %.09611259, 1
  %i.gj = and i8 %.09611259, 127
  %.not.i = icmp eq i8 %i.gj, 0
  br i1 %.not.i, label %bb.bb, label %doubledl.exit

bb.bb:                                            ; preds = %.lr.ph1263
  %i.gk = icmp uge ptr %.09701258, %0
  %.not20.i = icmp ult ptr %.09701258, %i.s
  %or.cond.i = select i1 %i.gk, i1 %.not20.i, i1 false
  br i1 %or.cond.i, label %bb.bc, label %.thread1057.sink.split

bb.bc:                                            ; preds = %bb.bb
  %i.gl = load i8, ptr %.09701258, align 1, !tbaa !22 ; 2 uses
  %i.gm = shl i8 %i.gl, 1
  %i.gn = or disjoint i8 %i.gm, 1
  %i.go = getelementptr inbounds nuw i8, ptr %.09701258, i64 1
  br label %doubledl.exit

doubledl.exit:                                    ; preds = %.lr.ph1263, %bb.bc
  %.7977 = phi ptr [ %i.go, %bb.bc ], [ %.09701258, %.lr.ph1263 ] ; 4 uses
  %.016.i = phi i8 [ %i.gn, %bb.bc ], [ %i.gi, %.lr.ph1263 ] ; 2 uses
  %.0.i = phi i8 [ %i.gl, %bb.bc ], [ %.09611259, %.lr.ph1263 ]
  %cond = icmp sgt i8 %.0.i, -1
  br i1 %cond, label %bb.bd, label %.preheader1101

bb.bd:                                            ; preds = %doubledl.exit
  %.not824 = icmp ult ptr %.7977, %0
  br i1 %.not824, label %.thread1057.sink.split, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = getelementptr inbounds nuw i8, ptr %.7977, i64 1 ; 2 uses
  %.not825 = icmp ugt ptr %i.gp, %i.o
  %.not826 = icmp ult ptr %.06901260, %0
  %or.cond866 = select i1 %.not825, i1 true, i1 %.not826
  br i1 %or.cond866, label %.thread1057.sink.split, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gq = getelementptr inbounds nuw i8, ptr %.06901260, i64 1 ; 2 uses
  %.not827.not = icmp ugt ptr %i.gq, %i.o
  br i1 %.not827.not, label %.thread1057.sink.split, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gr = load i8, ptr %.7977, align 1, !tbaa !22
  %i.gs = trunc i32 %.06881261 to i8
  %i.gt = xor i8 %i.gr, %i.gs
  store i8 %i.gt, ptr %.06901260, align 1, !tbaa !22
  %i.gu = add i32 %.06881261, -1
  br label %.loopexit1099

.preheader1101:                                   ; preds = %doubledl.exit, %doubledl.exit908
  %.1971 = phi ptr [ %.11981, %doubledl.exit908 ], [ %.7977, %doubledl.exit ] ; 5 uses
  %.1 = phi i8 [ %.016.i903, %doubledl.exit908 ], [ %.016.i, %doubledl.exit ] ; 3 uses
  %.1677 = phi i32 [ %i.hf, %doubledl.exit908 ], [ 1, %doubledl.exit ]
  %i.gv = shl i8 %.1, 1
  %i.gw = and i8 %.1, 127
  %.not.i895 = icmp eq i8 %i.gw, 0
  br i1 %.not.i895, label %bb.bh, label %doubledl.exit901

bb.bh:                                            ; preds = %.preheader1101
  %i.gx = icmp uge ptr %.1971, %0
  %.not20.i899 = icmp ult ptr %.1971, %i.s
  %or.cond.i900 = select i1 %i.gx, i1 %.not20.i899, i1 false
  br i1 %or.cond.i900, label %bb.bi, label %.thread1057.sink.split

bb.bi:                                            ; preds = %bb.bh
  %i.gy = load i8, ptr %.1971, align 1, !tbaa !22 ; 2 uses
  %i.gz = shl i8 %i.gy, 1
  %i.ha = or disjoint i8 %i.gz, 1
  %i.hb = getelementptr inbounds nuw i8, ptr %.1971, i64 1
  br label %doubledl.exit901

doubledl.exit901:                                 ; preds = %.preheader1101, %bb.bi
  %.9979 = phi ptr [ %i.hb, %bb.bi ], [ %.1971, %.preheader1101 ] ; 5 uses
  %.016.i896 = phi i8 [ %i.ha, %bb.bi ], [ %i.gv, %.preheader1101 ] ; 3 uses
  %.0.i897 = phi i8 [ %i.gy, %bb.bi ], [ %.1, %.preheader1101 ]
  %i.hc = lshr i8 %.0.i897, 7
  %i.hd = zext nneg i8 %i.hc to i32
  %i.he = shl nsw i32 %.1677, 1
  %i.hf = or disjoint i32 %i.he, %i.hd            ; 4 uses
  %i.hg = shl i8 %.016.i896, 1
  %i.hh = and i8 %.016.i896, 127
  %.not.i902 = icmp eq i8 %i.hh, 0
  br i1 %.not.i902, label %bb.bj, label %doubledl.exit908

bb.bj:                                            ; preds = %doubledl.exit901
  %i.hi = icmp uge ptr %.9979, %0
  %.not20.i906 = icmp ult ptr %.9979, %i.s
  %or.cond.i907 = select i1 %i.hi, i1 %.not20.i906, i1 false
  br i1 %or.cond.i907, label %bb.bk, label %.thread1057.sink.split

bb.bk:                                            ; preds = %bb.bj
  %i.hj = load i8, ptr %.9979, align 1, !tbaa !22 ; 2 uses
  %i.hk = shl i8 %i.hj, 1
  %i.hl = or disjoint i8 %i.hk, 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.9979, i64 1
  br label %doubledl.exit908

doubledl.exit908:                                 ; preds = %doubledl.exit901, %bb.bk
  %.11981 = phi ptr [ %i.hm, %bb.bk ], [ %.9979, %doubledl.exit901 ] ; 3 uses
  %.016.i903 = phi i8 [ %i.hl, %bb.bk ], [ %i.hg, %doubledl.exit901 ] ; 3 uses
  %.0.i904 = phi i8 [ %i.hj, %bb.bk ], [ %.016.i896, %doubledl.exit901 ]
  %cond1083 = icmp sgt i8 %.0.i904, -1
  br i1 %cond1083, label %bb.bl, label %.preheader1101

bb.bl:                                            ; preds = %doubledl.exit908
  %i.hn = icmp sgt i32 %i.hf, 2
  br i1 %i.hn, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.ho = add nsw i32 %i.hf, -3
  br label %bb.bn

bb.bn:                                            ; preds = %doubledl.exit915, %bb.bm
  %.2972 = phi ptr [ %.11981, %bb.bm ], [ %.13983, %doubledl.exit915 ] ; 5 uses
  %.2962 = phi i8 [ %.016.i903, %bb.bm ], [ %.016.i910, %doubledl.exit915 ] ; 3 uses
  %.2678 = phi i32 [ %i.ho, %bb.bm ], [ %i.hz, %doubledl.exit915 ]
  %.0668 = phi i32 [ %.0619, %bb.bm ], [ %i.ia, %doubledl.exit915 ]
  %i.hp = shl i8 %.2962, 1
  %i.hq = and i8 %.2962, 127
  %.not.i909 = icmp eq i8 %i.hq, 0
  br i1 %.not.i909, label %bb.bo, label %doubledl.exit915

bb.bo:                                            ; preds = %bb.bn
  %i.hr = icmp uge ptr %.2972, %0
  %.not20.i913 = icmp ult ptr %.2972, %i.s
  %or.cond.i914 = select i1 %i.hr, i1 %.not20.i913, i1 false
  br i1 %or.cond.i914, label %bb.bp, label %.thread1057.sink.split

bb.bp:                                            ; preds = %bb.bo
  %i.hs = load i8, ptr %.2972, align 1, !tbaa !22 ; 2 uses
  %i.ht = shl i8 %i.hs, 1
  %i.hu = or disjoint i8 %i.ht, 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.2972, i64 1
  br label %doubledl.exit915

doubledl.exit915:                                 ; preds = %bb.bn, %bb.bp
  %.13983 = phi ptr [ %i.hv, %bb.bp ], [ %.2972, %bb.bn ] ; 2 uses
  %.016.i910 = phi i8 [ %i.hu, %bb.bp ], [ %i.hp, %bb.bn ] ; 2 uses
  %.0.i911 = phi i8 [ %i.hs, %bb.bp ], [ %.2962, %bb.bn ]
  %i.hw = lshr i8 %.0.i911, 7
  %i.hx = zext nneg i8 %i.hw to i32
  %i.hy = shl nsw i32 %.2678, 1
  %i.hz = or disjoint i32 %i.hy, %i.hx            ; 4 uses
  %i.ia = add nsw i32 %.0668, -1                  ; 2 uses
  %.not829 = icmp eq i32 %i.ia, 0
  br i1 %.not829, label %bb.bq, label %bb.bn, !llvm.loop !23

bb.bq:                                            ; preds = %doubledl.exit915
  %i.ib = xor i32 %i.hz, -1
  %i.ic = icmp slt i32 %i.gd, %i.hz
  %i.id = select i1 %i.ic, i32 2, i32 1
  %i.ie = icmp slt i32 %i.gc, %i.hz
  %i.if = zext i1 %i.ie to i32
  %i.ig = add nuw nsw i32 %i.id, %i.if
  br label %bb.bs

bb.br:                                            ; preds = %bb.bl
  %i.ih = shl i32 %i.hf, 1
  %i.ii = add i32 %i.ih, -4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.3973 = phi ptr [ %.13983, %bb.bq ], [ %.11981, %bb.br ] ; 5 uses
  %.3 = phi i8 [ %.016.i910, %bb.bq ], [ %.016.i903, %bb.br ] ; 3 uses
  %.1674 = phi i32 [ %i.ib, %bb.bq ], [ %.06731262, %bb.br ] ; 6 uses
  %.1669 = phi i32 [ 0, %bb.bq ], [ %i.ii, %bb.br ]
  %.0667 = phi i32 [ %i.ig, %bb.bq ], [ 0, %bb.br ]
  %i.ij = shl i8 %.3, 1
  %i.ik = and i8 %.3, 127
  %.not.i916 = icmp eq i8 %i.ik, 0
  br i1 %.not.i916, label %bb.bt, label %doubledl.exit922

bb.bt:                                            ; preds = %bb.bs
  %i.il = icmp uge ptr %.3973, %0
  %.not20.i920 = icmp ult ptr %.3973, %i.s
  %or.cond.i921 = select i1 %i.il, i1 %.not20.i920, i1 false
  br i1 %or.cond.i921, label %bb.bu, label %.thread1057.sink.split

bb.bu:                                            ; preds = %bb.bt
  %i.im = load i8, ptr %.3973, align 1, !tbaa !22 ; 2 uses
  %i.in = shl i8 %i.im, 1
  %i.io = or disjoint i8 %i.in, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.3973, i64 1
  br label %doubledl.exit922

doubledl.exit922:                                 ; preds = %bb.bs, %bb.bu
  %.15985 = phi ptr [ %i.ip, %bb.bu ], [ %.3973, %bb.bs ] ; 5 uses
  %.016.i917 = phi i8 [ %i.io, %bb.bu ], [ %i.ij, %bb.bs ] ; 3 uses
  %.0.i918 = phi i8 [ %i.im, %bb.bu ], [ %.3, %bb.bs ]
  %i.iq = lshr i8 %.0.i918, 7
  %i.ir = zext nneg i8 %i.iq to i32
  %i.is = shl i8 %.016.i917, 1
  %i.it = and i8 %.016.i917, 127
  %.not.i923 = icmp eq i8 %i.it, 0
  br i1 %.not.i923, label %bb.bv, label %doubledl.exit929

bb.bv:                                            ; preds = %doubledl.exit922
  %i.iu = icmp uge ptr %.15985, %0
  %.not20.i927 = icmp ult ptr %.15985, %i.s
  %or.cond.i928 = select i1 %i.iu, i1 %.not20.i927, i1 false
  br i1 %or.cond.i928, label %bb.bw, label %.thread1057.sink.split

bb.bw:                                            ; preds = %bb.bv
  %i.iv = load i8, ptr %.15985, align 1, !tbaa !22 ; 2 uses
  %i.iw = shl i8 %i.iv, 1
  %i.ix = or disjoint i8 %i.iw, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.15985, i64 1
  br label %doubledl.exit929

doubledl.exit929:                                 ; preds = %doubledl.exit922, %bb.bw
  %.17 = phi ptr [ %i.iy, %bb.bw ], [ %.15985, %doubledl.exit922 ] ; 2 uses
  %.016.i924 = phi i8 [ %i.ix, %bb.bw ], [ %i.is, %doubledl.exit922 ] ; 2 uses
  %.0.i925 = phi i8 [ %i.iv, %bb.bw ], [ %.016.i917, %doubledl.exit922 ]
  %i.iz = lshr i8 %.0.i925, 7
  %i.ja = zext nneg i8 %i.iz to i32
  %i.jb = add nsw i32 %.1669, %i.ir
  %i.jc = shl nsw i32 %i.jb, 1
  %i.jd = or disjoint i32 %i.jc, %i.ja            ; 2 uses
  %.not830 = icmp eq i32 %i.jd, 0
  br i1 %.not830, label %.preheader1100, label %bb.cc

.preheader1100:                                   ; preds = %doubledl.exit929, %doubledl.exit943
  %.4974 = phi ptr [ %.21, %doubledl.exit943 ], [ %.17, %doubledl.exit929 ] ; 5 uses
  %.4963 = phi i8 [ %.016.i938, %doubledl.exit943 ], [ %.016.i924, %doubledl.exit929 ] ; 3 uses
  %.2670 = phi i32 [ %i.jo, %doubledl.exit943 ], [ 1, %doubledl.exit929 ]
  %i.je = shl i8 %.4963, 1
  %i.jf = and i8 %.4963, 127
  %.not.i930 = icmp eq i8 %i.jf, 0
  br i1 %.not.i930, label %bb.bx, label %doubledl.exit936

bb.bx:                                            ; preds = %.preheader1100
  %i.jg = icmp uge ptr %.4974, %0
  %.not20.i934 = icmp ult ptr %.4974, %i.s
  %or.cond.i935 = select i1 %i.jg, i1 %.not20.i934, i1 false
  br i1 %or.cond.i935, label %bb.by, label %.thread1057.sink.split

bb.by:                                            ; preds = %bb.bx
  %i.jh = load i8, ptr %.4974, align 1, !tbaa !22 ; 2 uses
  %i.ji = shl i8 %i.jh, 1
  %i.jj = or disjoint i8 %i.ji, 1
  %i.jk = getelementptr inbounds nuw i8, ptr %.4974, i64 1
  br label %doubledl.exit936

doubledl.exit936:                                 ; preds = %.preheader1100, %bb.by
  %.19 = phi ptr [ %i.jk, %bb.by ], [ %.4974, %.preheader1100 ] ; 5 uses
  %.016.i931 = phi i8 [ %i.jj, %bb.by ], [ %i.je, %.preheader1100 ] ; 3 uses
  %.0.i932 = phi i8 [ %i.jh, %bb.by ], [ %.4963, %.preheader1100 ]
  %i.jl = lshr i8 %.0.i932, 7
  %i.jm = zext nneg i8 %i.jl to i32
  %i.jn = shl nsw i32 %.2670, 1
  %i.jo = or disjoint i32 %i.jn, %i.jm            ; 2 uses
  %i.jp = shl i8 %.016.i931, 1
  %i.jq = and i8 %.016.i931, 127
  %.not.i937 = icmp eq i8 %i.jq, 0
  br i1 %.not.i937, label %bb.bz, label %doubledl.exit943

bb.bz:                                            ; preds = %doubledl.exit936
  %i.jr = icmp uge ptr %.19, %0
  %.not20.i941 = icmp ult ptr %.19, %i.s
  %or.cond.i942 = select i1 %i.jr, i1 %.not20.i941, i1 false
  br i1 %or.cond.i942, label %bb.ca, label %.thread1057.sink.split

bb.ca:                                            ; preds = %bb.bz
  %i.js = load i8, ptr %.19, align 1, !tbaa !22   ; 2 uses
  %i.jt = shl i8 %i.js, 1
  %i.ju = or disjoint i8 %i.jt, 1
  %i.jv = getelementptr inbounds nuw i8, ptr %.19, i64 1
  br label %doubledl.exit943

doubledl.exit943:                                 ; preds = %doubledl.exit936, %bb.ca
  %.21 = phi ptr [ %i.jv, %bb.ca ], [ %.19, %doubledl.exit936 ] ; 2 uses
  %.016.i938 = phi i8 [ %i.ju, %bb.ca ], [ %i.jp, %doubledl.exit936 ] ; 2 uses
  %.0.i939 = phi i8 [ %i.js, %bb.ca ], [ %.016.i931, %doubledl.exit936 ]
  %cond1084 = icmp sgt i8 %.0.i939, -1
  br i1 %cond1084, label %bb.cb, label %.preheader1100

bb.cb:                                            ; preds = %doubledl.exit943
  %i.jw = add nsw i32 %i.jo, 2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %doubledl.exit929
  %.5975 = phi ptr [ %.21, %bb.cb ], [ %.17, %doubledl.exit929 ] ; 4 uses
  %.5964 = phi i8 [ %.016.i938, %bb.cb ], [ %.016.i924, %doubledl.exit929 ] ; 4 uses
  %.3671 = phi i32 [ %i.jw, %bb.cb ], [ %i.jd, %doubledl.exit929 ]
  %i.jx = add nsw i32 %.3671, %.0667              ; 9 uses
  %i.jy = sub i32 %.06881261, %i.jx               ; 4 uses
  %i.jz = icmp slt i32 %i.jx, 1
  %.not832 = icmp ugt i32 %i.jx, %2
  %or.cond868 = or i1 %i.jz, %.not832
  %.not833 = icmp ult ptr %.06901260, %0
  %or.cond869 = select i1 %or.cond868, i1 true, i1 %.not833
  br i1 %or.cond869, label %.thread1057.sink.split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ka = zext nneg i32 %i.jx to i64              ; 7 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.06901260, i64 %i.ka ; 2 uses
  %.not834 = icmp ule ptr %i.kb, %i.o
  %i.kc = icmp ugt ptr %i.kb, %0
  %or.cond870 = and i1 %.not834, %i.kc
  br i1 %or.cond870, label %11, label %.thread1057.sink.split

11:                                               ; preds = %bb.cd
  %12 = sext i32 %.1674 to i64                    ; 12 uses
  %13 = getelementptr inbounds i8, ptr %.06901260, i64 %12 ; 2 uses
  %.not835 = icmp ult ptr %13, %0
  br i1 %.not835, label %.thread1057.sink.split, label %bb.ce

bb.ce:                                            ; preds = %11
  %i.kd = getelementptr inbounds nuw i8, ptr %13, i64 %i.ka ; 2 uses
  %.not836 = icmp ule ptr %i.kd, %i.o
  %14 = icmp ugt ptr %i.kd, %0
  %or.cond871 = and i1 %.not836, %14
  br i1 %or.cond871, label %iter.check, label %.thread1057.sink.split

iter.check:                                       ; preds = %bb.ce
  %min.iters.check = icmp ult i32 %i.jx, 4
  %diff.check = icmp ugt i32 %.1674, -32
  %or.cond1803 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1803, label %.lr.ph1256.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1791 = icmp ult i32 %i.jx, 32
  br i1 %min.iters.check1791, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ka, 28
  %n.vec = and i64 %i.ka, 2147483616              ; 5 uses
  %i.ke = trunc nuw nsw i64 %n.vec to i32
  %i.kf = sub nsw i32 %i.jx, %i.ke
  %i.kg = getelementptr i8, ptr %.06901260, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.06901260, i64 %index ; 3 uses
  %i.kh = getelementptr inbounds i8, ptr %next.gep, i64 %12 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %wide.load = load <16 x i8>, ptr %i.kh, align 1, !tbaa !22
  %wide.load1792 = load <16 x i8>, ptr %i.ki, align 1, !tbaa !22
  %i.kj = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !22
  store <16 x i8> %wide.load1792, ptr %i.kj, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ka
  br i1 %cmp.n, label %.loopexit1099, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1256.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1795 = and i64 %i.ka, 2147483644          ; 4 uses
  %i.kl = trunc nuw nsw i64 %n.vec1795 to i32
  %i.km = sub nsw i32 %i.jx, %i.kl
  %i.kn = getelementptr i8, ptr %.06901260, i64 %n.vec1795 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1796 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1799, %vec.epilog.vector.body ] ; 2 uses
  %next.gep1797 = getelementptr i8, ptr %.06901260, i64 %index1796 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %next.gep1797, i64 %12
  %wide.load1798 = load <4 x i8>, ptr %i.ko, align 1, !tbaa !22
  store <4 x i8> %wide.load1798, ptr %next.gep1797, align 1, !tbaa !22
  %index.next1799 = add nuw i64 %index1796, 4     ; 2 uses
  %i.kp = icmp eq i64 %index.next1799, %n.vec1795
  br i1 %i.kp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1800 = icmp eq i64 %n.vec1795, %i.ka
  br i1 %cmp.n1800, label %.loopexit1099, label %.lr.ph1256.preheader

.lr.ph1256.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.46721255.ph = phi i32 [ %i.jx, %iter.check ], [ %i.kf, %vec.epilog.iter.check ], [ %i.km, %vec.epilog.middle.block ] ; 4 uses
  %.16911254.ph = phi ptr [ %.06901260, %iter.check ], [ %i.kg, %vec.epilog.iter.check ], [ %i.kn, %vec.epilog.middle.block ] ; 2 uses
  %i.kq = add nsw i32 %.46721255.ph, -1
  %xtraiter = and i32 %.46721255.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1256.prol.loopexit, label %.lr.ph1256.prol

.lr.ph1256.prol:                                  ; preds = %.lr.ph1256.preheader, %.lr.ph1256.prol
  %.46721255.prol = phi i32 [ %i.kr, %.lr.ph1256.prol ], [ %.46721255.ph, %.lr.ph1256.preheader ]
  %.16911254.prol = phi ptr [ %i.ku, %.lr.ph1256.prol ], [ %.16911254.ph, %.lr.ph1256.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1256.prol ], [ 0, %.lr.ph1256.preheader ]
  %i.kr = add nsw i32 %.46721255.prol, -1         ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %.16911254.prol, i64 %12
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !22
  store i8 %i.kt, ptr %.16911254.prol, align 1, !tbaa !22
  %i.ku = getelementptr inbounds nuw i8, ptr %.16911254.prol, i64 1 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1256.prol.loopexit, label %.lr.ph1256.prol, !llvm.loop !29

.lr.ph1256.prol.loopexit:                         ; preds = %.lr.ph1256.prol, %.lr.ph1256.preheader
  %.lcssa1826.unr = phi ptr [ poison, %.lr.ph1256.preheader ], [ %i.ku, %.lr.ph1256.prol ]
  %.46721255.unr = phi i32 [ %.46721255.ph, %.lr.ph1256.preheader ], [ %i.kr, %.lr.ph1256.prol ]
  %.16911254.unr = phi ptr [ %.16911254.ph, %.lr.ph1256.preheader ], [ %i.ku, %.lr.ph1256.prol ]
  %i.kv = icmp ult i32 %i.kq, 7
  br i1 %i.kv, label %.loopexit1099, label %.lr.ph1256

.lr.ph1256:                                       ; preds = %.lr.ph1256.prol.loopexit, %.lr.ph1256
  %.46721255 = phi i32 [ %i.lr, %.lr.ph1256 ], [ %.46721255.unr, %.lr.ph1256.prol.loopexit ]
  %.16911254 = phi ptr [ %i.lu, %.lr.ph1256 ], [ %.16911254.unr, %.lr.ph1256.prol.loopexit ] ; 10 uses
  %i.kw = getelementptr inbounds i8, ptr %.16911254, i64 %12
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !22
  store i8 %i.kx, ptr %.16911254, align 1, !tbaa !22
  %i.ky = getelementptr inbounds nuw i8, ptr %.16911254, i64 1 ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %12
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !22
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !22
  %i.lb = getelementptr inbounds nuw i8, ptr %.16911254, i64 2 ; 2 uses
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %12
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !22
  store i8 %i.ld, ptr %i.lb, align 1, !tbaa !22
  %i.le = getelementptr inbounds nuw i8, ptr %.16911254, i64 3 ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 %12
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !22
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !22
  %i.lh = getelementptr inbounds nuw i8, ptr %.16911254, i64 4 ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 %12
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !22
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !22
  %i.lk = getelementptr inbounds nuw i8, ptr %.16911254, i64 5 ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %12
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !22
  store i8 %i.lm, ptr %i.lk, align 1, !tbaa !22
  %i.ln = getelementptr inbounds nuw i8, ptr %.16911254, i64 6 ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 %12
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !22
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !22
  %i.lq = getelementptr inbounds nuw i8, ptr %.16911254, i64 7 ; 2 uses
  %i.lr = add nsw i32 %.46721255, -8              ; 2 uses
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 %12
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !22
  store i8 %i.lt, ptr %i.lq, align 1, !tbaa !22
  %i.lu = getelementptr inbounds nuw i8, ptr %.16911254, i64 8 ; 2 uses
  %.not837.7 = icmp eq i32 %i.lr, 0
  br i1 %.not837.7, label %.loopexit1099, label %.lr.ph1256, !llvm.loop !31

.loopexit1099:                                    ; preds = %.lr.ph1256.prol.loopexit, %.lr.ph1256, %middle.block, %vec.epilog.middle.block, %bb.bg
  %.6976 = phi ptr [ %i.gp, %bb.bg ], [ %.5975, %middle.block ], [ %.5975, %vec.epilog.middle.block ], [ %.5975, %.lr.ph1256 ], [ %.5975, %.lr.ph1256.prol.loopexit ]
  %.6965 = phi i8 [ %.016.i, %bb.bg ], [ %.5964, %middle.block ], [ %.5964, %vec.epilog.middle.block ], [ %.5964, %.lr.ph1256 ], [ %.5964, %.lr.ph1256.prol.loopexit ]
  %.2692 = phi ptr [ %i.gq, %bb.bg ], [ %i.kg, %middle.block ], [ %i.kn, %vec.epilog.middle.block ], [ %.lcssa1826.unr, %.lr.ph1256.prol.loopexit ], [ %i.lu, %.lr.ph1256 ] ; 2 uses
  %.1689 = phi i32 [ %i.gu, %bb.bg ], [ %i.jy, %middle.block ], [ %i.jy, %vec.epilog.middle.block ], [ %i.jy, %.lr.ph1256 ], [ %i.jy, %.lr.ph1256.prol.loopexit ] ; 2 uses
  %.2675 = phi i32 [ %.06731262, %bb.bg ], [ %.1674, %middle.block ], [ %.1674, %vec.epilog.middle.block ], [ %.1674, %.lr.ph1256 ], [ %.1674, %.lr.ph1256.prol.loopexit ]
  %.not811 = icmp eq i32 %.1689, 0
  br i1 %.not811, label %._crit_edge, label %.lr.ph1263, !llvm.loop !32

._crit_edge:                                      ; preds = %.loopexit1099, %bb.ba
  %.0690.lcssa = phi ptr [ %i.ge, %bb.ba ], [ %.2692, %.loopexit1099 ] ; 3 uses
  %.not812 = icmp eq i32 %i.fd, 0
  br i1 %.not812, label %.thread1027, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge
  %i.lv = load i32, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.lw = icmp ugt i32 %i.lv, %.0713
  br i1 %i.lw, label %bb.cg, label %.thread1022

bb.cg:                                            ; preds = %bb.cf
  %i.lx = getelementptr inbounds i8, ptr %.0690.lcssa, i64 %i.u ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 84 ; 2 uses
  %.not813 = icmp ult ptr %i.ly, %0
  br i1 %.not813, label %.thread1022, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 92 ; 2 uses
  %.not814 = icmp ule ptr %i.lz, %i.o
  %i.ma = icmp ugt ptr %i.lz, %0
  %or.cond872 = and i1 %.not814, %i.ma
  br i1 %or.cond872, label %bb.ci, label %.thread1022

bb.ci:                                            ; preds = %bb.ch
  %.val888 = load i32, ptr %i.ly, align 1
  %i.mb = icmp eq i32 %.val888, 1683931187
  br i1 %i.mb, label %bb.cj, label %.thread1022

bb.cj:                                            ; preds = %bb.ci
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 88
  %.val887 = load i32, ptr %i.mc, align 1
  %.not1091 = icmp eq i32 %.val887, 462100619
  br i1 %.not1091, label %.thread1030, label %.thread1022

.thread1022:                                      ; preds = %bb.ch, %bb.cf, %bb.ci, %bb.cg, %bb.cj
  %i.md = icmp ugt i32 %i.lv, %i.v
  br i1 %i.md, label %bb.ck, label %.thread1027

bb.ck:                                            ; preds = %.thread1022
  %i.me = getelementptr inbounds i8, ptr %.0690.lcssa, i64 %i.u ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 84
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 %i.x ; 3 uses
  %.not816 = icmp ult ptr %i.mg, %0
  br i1 %.not816, label %.thread1027, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %.not817 = icmp ule ptr %i.mh, %i.o
  %i.mi = icmp ugt ptr %i.mh, %0
  %or.cond875 = and i1 %.not817, %i.mi
  br i1 %or.cond875, label %bb.cm, label %.thread1027

bb.cm:                                            ; preds = %bb.cl
  %.val886 = load i32, ptr %i.mg, align 1
  %i.mj = icmp eq i32 %.val886, 1683931187
  br i1 %i.mj, label %bb.cn, label %.thread1027

bb.cn:                                            ; preds = %bb.cm
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 88
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 %i.x
  %.val885 = load i32, ptr %i.ml, align 1
  %.not1092 = icmp eq i32 %.val885, 462100619
  br i1 %.not1092, label %.thread1030, label %.thread1027

.thread1030:                                      ; preds = %bb.cj, %bb.cn
  %.26121033 = phi i32 [ %.0712, %bb.cn ], [ 0, %bb.cj ] ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %.0690.lcssa, i64 %i.u ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 15
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 7
  %i.mp = zext i32 %.26121033 to i64
  %i.mq = sub nsw i64 0, %i.mp                    ; 5 uses
  %i.mr = getelementptr inbounds i8, ptr %i.mo, i64 %i.mq ; 3 uses
  %.not819 = icmp ult ptr %i.mr, %0
  br i1 %.not819, label %.thread1027, label %bb.co

bb.co:                                            ; preds = %.thread1030
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %.not820 = icmp ule ptr %i.ms, %i.o
  %i.mt = icmp ugt ptr %i.ms, %0
  %or.cond878 = and i1 %.not820, %i.mt
  br i1 %or.cond878, label %bb.cp, label %.thread1027

bb.cp:                                            ; preds = %bb.co
  %.val884 = load i32, ptr %i.mr, align 1         ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 11
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 %i.mq
  %.val883 = load i32, ptr %i.mv, align 1
  %i.mw = load i32, ptr %i.fi, align 4, !tbaa !8
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i32 noundef %.07081267, i32 noundef %i.mw) #6
  %i.mx = xor i32 %.val883, %.val884
  %i.my = icmp eq i32 %i.mx, 1953408297
  %or.cond51 = and i1 %i.y, %i.my
  br i1 %or.cond51, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.mz = getelementptr inbounds i8, ptr %i.mn, i64 %i.mq ; 3 uses
  %.not821 = icmp ult ptr %i.mz, %0
  br i1 %.not821, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 437 ; 2 uses
  %.not822 = icmp ule ptr %i.na, %i.o
  %i.nb = icmp ugt ptr %i.na, %0
  %or.cond879 = and i1 %.not822, %i.nb
  br i1 %or.cond879, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mm, i64 289
  %i.nd = getelementptr inbounds i8, ptr %i.nc, i64 %i.mq
  %.val882 = load i32, ptr %i.nd, align 1         ; 2 uses
  %.val881 = load i32, ptr %i.mz, align 1
  %i.ne = xor i32 %.val884, %.val881
  %i.nf = xor i32 %i.ne, -1654234710              ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mm, i64 448
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 %i.mq
  %.val = load i32, ptr %i.nh, align 1
  %i.ni = icmp ne i32 %.val, -1869574000
  %i.nj = zext i1 %i.ni to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7, i32 noundef %i.nf, i32 noundef %.val882) #6
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %.1702 = phi i32 [ %i.nj, %bb.cs ], [ %.07011268.fr, %bb.cp ], [ %.07011268.fr, %bb.cr ], [ %.07011268.fr, %bb.cq ]
  %.1650 = phi i32 [ %.val882, %bb.cs ], [ %.06491271, %bb.cp ], [ %.06491271, %bb.cr ], [ %.06491271, %bb.cq ]
  %.10 = phi i32 [ %i.nf, %bb.cs ], [ %.06421272, %bb.cp ], [ %.06421272, %bb.cr ], [ %.06421272, %bb.cq ]
  %i.nk = load i32, ptr %i.fj, align 4, !tbaa !10
  %i.nl = add nsw i32 %.26121033, %.0713
  %i.nm = sub i32 %i.nk, %i.nl
  store i32 %i.nm, ptr %i.fj, align 4, !tbaa !10
  br label %.thread1027

.thread1027:                                      ; preds = %bb.cl, %.thread1022, %bb.cm, %bb.ck, %bb.cn, %.thread1030, %bb.co, %bb.ct, %._crit_edge
  %.3704 = phi i32 [ %.07011268.fr, %._crit_edge ], [ %.1702, %bb.ct ], [ %.07011268.fr, %bb.cn ], [ %.07011268.fr, %bb.co ], [ %.07011268.fr, %.thread1030 ], [ %.07011268.fr, %bb.ck ], [ %.07011268.fr, %bb.cm ], [ %.07011268.fr, %.thread1022 ], [ %.07011268.fr, %bb.cl ]
  %.3652 = phi i32 [ %.06491271, %._crit_edge ], [ %.1650, %bb.ct ], [ %.06491271, %bb.cn ], [ %.06491271, %bb.co ], [ %.06491271, %.thread1030 ], [ %.06491271, %bb.ck ], [ %.06491271, %bb.cm ], [ %.06491271, %.thread1022 ], [ %.06491271, %bb.cl ]
  %.12 = phi i32 [ %.06421272, %._crit_edge ], [ %.10, %bb.ct ], [ %.06421272, %bb.cn ], [ %.06421272, %bb.co ], [ %.06421272, %.thread1030 ], [ %.06421272, %bb.ck ], [ %.06421272, %bb.cm ], [ %.06421272, %.thread1022 ], [ %.06421272, %bb.cl ]
  %i.nn = add nsw i32 %.06971269, 1
  br label %.thread1035

.thread1035:                                      ; preds = %bb.au, %.thread1027, %bb.ao
  %.3711 = phi i32 [ %.07081267, %bb.ao ], [ %i.fd, %.thread1027 ], [ %i.fd, %bb.au ]
  %.6707 = phi i32 [ %.07011268.fr, %bb.ao ], [ %.3704, %.thread1027 ], [ %.07011268.fr, %bb.au ]
  %.3700 = phi i32 [ 0, %bb.ao ], [ %i.nn, %.thread1027 ], [ %.06971269, %bb.au ]
  %.3696 = phi ptr [ %.06931270, %bb.ao ], [ %i.fg, %.thread1027 ], [ %i.fg, %bb.au ] ; 2 uses
  %.6655 = phi i32 [ %.06491271, %bb.ao ], [ %.3652, %.thread1027 ], [ %.06491271, %bb.au ]
  %.15 = phi i32 [ %.06421272, %bb.ao ], [ %.12, %.thread1027 ], [ %.06421272, %bb.au ]
  %.2641 = phi i32 [ %i.ei, %bb.ao ], [ %.06391273, %.thread1027 ], [ %.06391273, %bb.au ]
  %.5 = phi ptr [ %i.eg, %bb.ao ], [ %i.fb, %.thread1027 ], [ %i.fb, %bb.au ] ; 2 uses
  %.not = icmp ult ptr %.5, %0
  br i1 %.not, label %._crit_edge1278, label %bb.d

.thread1057.sink.split.sink.split:                ; preds = %bb.ar, %._crit_edge1352
  %.str.4.sink = phi ptr [ @.str.4, %._crit_edge1352 ], [ @.str.5, %bb.ar ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.4.sink) #6
  br label %.thread1057.sink.split

.thread1057.sink.split:                           ; preds = %.loopexit1103, %bb.az, %bb.cc, %bb.cd, %11, %bb.ce, %bb.bv, %bb.bt, %bb.bd, %bb.be, %bb.bf, %bb.bb, %bb.bj, %bb.bh, %bb.bo, %bb.bz, %bb.bx, %.thread1057.sink.split.sink.split, %bb.at, %bb.aq, %bb.an, %bb.aj, %._crit_edge1352, %._crit_edge1278
  %.06931270.lcssa1655.sink = phi ptr [ %.06931270, %bb.an ], [ %.06931270, %bb.at ], [ %.06931270, %bb.aq ], [ %.06931270, %bb.aj ], [ %i.fg, %bb.bj ], [ %i.fg, %bb.bz ], [ %.06931270, %._crit_edge1352 ], [ %.0693.lcssa, %._crit_edge1278 ], [ %i.fg, %bb.cc ], [ %.06931270, %.thread1057.sink.split.sink.split ], [ %i.fg, %bb.bo ], [ %i.fg, %bb.bx ], [ %i.fg, %bb.bh ], [ %i.fg, %bb.bb ], [ %i.fg, %bb.bf ], [ %i.fg, %bb.be ], [ %i.fg, %bb.bd ], [ %i.fg, %bb.bt ], [ %i.fg, %bb.bv ], [ %i.fg, %bb.ce ], [ %i.fg, %11 ], [ %i.fg, %bb.cd ], [ %i.fg, %bb.az ], [ %i.fg, %.loopexit1103 ]
  %.41070.ph = phi i32 [ 1, %bb.an ], [ 1, %bb.at ], [ 1, %bb.aq ], [ 1, %bb.aj ], [ 1, %bb.bj ], [ 1, %bb.bz ], [ 0, %._crit_edge1352 ], [ 1, %._crit_edge1278 ], [ 1, %bb.cc ], [ 1, %.thread1057.sink.split.sink.split ], [ 1, %bb.bo ], [ 1, %bb.bx ], [ 1, %bb.bh ], [ 1, %bb.bb ], [ 1, %bb.bf ], [ 1, %bb.be ], [ 1, %bb.bd ], [ 1, %bb.bt ], [ 1, %bb.bv ], [ 1, %bb.ce ], [ 1, %11 ], [ 1, %bb.cd ], [ 1, %bb.az ], [ 1, %.loopexit1103 ]
  tail call void @free(ptr noundef %.06931270.lcssa1655.sink) #6
  br label %.thread1057

.thread1057:                                      ; preds = %.thread1057.sink.split, %bb.c, %bb.at, %bb.aq, %bb.f, %._crit_edge1278, %bb.aj, %bb.an
  %.41070 = phi i32 [ 1, %bb.an ], [ 1, %bb.f ], [ 1, %bb.aj ], [ 1, %bb.at ], [ 1, %bb.c ], [ 1, %bb.aq ], [ 1, %._crit_edge1278 ], [ %.41070.ph, %.thread1057.sink.split ]
  ret i32 %.41070
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare i32 @cli_rebuildpe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cli_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!10 = !{!9, !5, i64 12}
!11 = !{!9, !5, i64 4}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{!9, !5, i64 8}
!18 = distinct !{!18, !13, !19}
!19 = !{!"llvm.loop.peeled.count", i32 1}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = !{!6, !6, i64 0}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 28}
!28 = distinct !{!28, !13, !25, !26}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !13, !25}
!32 = distinct !{!32, !13}
end_hunk_0
