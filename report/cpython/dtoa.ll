inline.NumInlined: 94
inline.NumDeleted: 14
begin_hunk_0_@_Py_dg_strtod:bb.a
  %spec.select568 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 0)
  store i32 %i.ci, ptr %3, align 4, !tbaa !23
  store double 0.000000e+00, ptr %2, align 8, !tbaa !11
  br label %.thread

.lr.ph866.preheader:                              ; preds = %.lr.ph1392
  %i.cj = sub nsw i32 %i.aw, %.04541391
  %i.ck = add i32 %i.cj, %i.ca                    ; 4 uses
  %spec.select5681107 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %.04541391) ; 5 uses
  store i32 %i.ck, ptr %3, align 4, !tbaa !23
  br label %.lr.ph866

.lr.ph866:                                        ; preds = %.lr.ph866.preheader, %bb.x
  %.0414864 = phi i32 [ %.1415, %bb.x ], [ 0, %.lr.ph866.preheader ] ; 3 uses
  %.0416863 = phi i32 [ %.1417, %bb.x ], [ 0, %.lr.ph866.preheader ] ; 3 uses
  %.2456862 = phi i32 [ %i.dh, %bb.x ], [ 0, %.lr.ph866.preheader ] ; 7 uses
  %i.cl = icmp samesign ult i32 %.2456862, 9
  br i1 %i.cl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph866
  %i.cm = mul i32 %.0416863, 10
  %i.cn = icmp sge i32 %.2456862, %spec.select5681107
  %i.co = zext i1 %i.cn to i32
  %i.cp = add nuw nsw i32 %.2456862, %i.co
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %.1430, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !11
  %i.ct = sext i8 %i.cs to i32
  %i.cu = add i32 %i.cm, -48
  %i.cv = add i32 %i.cu, %i.ct
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph866
  %i.cw = icmp samesign ult i32 %.2456862, 16
  br i1 %i.cw, label %bb.w, label %._crit_edge867

bb.w:                                             ; preds = %bb.v
  %i.cx = mul i32 %.0414864, 10
  %i.cy = icmp sge i32 %.2456862, %spec.select5681107
  %i.cz = zext i1 %i.cy to i32
  %i.da = add nuw nsw i32 %.2456862, %i.cz
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr i8, ptr %.1430, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.de = sext i8 %i.dd to i32
  %i.df = add i32 %i.cx, -48
  %i.dg = add i32 %i.df, %i.de
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  %.1417 = phi i32 [ %i.cv, %bb.u ], [ %.0416863, %bb.w ] ; 2 uses
  %.1415 = phi i32 [ %.0414864, %bb.u ], [ %i.dg, %bb.w ] ; 2 uses
  %i.dh = add nuw nsw i32 %.2456862, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.dh, %.04541391
  br i1 %exitcond.not, label %._crit_edge867, label %.lr.ph866, !llvm.loop !25

._crit_edge867:                                   ; preds = %bb.x, %bb.v
  %.0416.lcssa.ph = phi i32 [ %.1417, %bb.x ], [ %.0416863, %bb.v ] ; 4 uses
  %.0414.lcssa.ph = phi i32 [ %.1415, %bb.x ], [ %.0414864, %bb.v ]
  %i.di = tail call i32 @llvm.smin.i32(i32 %.04541391, i32 16) ; 4 uses
  %i.dj = uitofp i32 %.0416.lcssa.ph to double    ; 3 uses
  store double %i.dj, ptr %2, align 8, !tbaa !11
  %i.dk = icmp sgt i32 %.04541391, 9
  br i1 %i.dk, label %bb.y, label %.thread

bb.y:                                             ; preds = %._crit_edge867
  %i.dl = uitofp i32 %.0414.lcssa.ph to double
  %i.dm = zext nneg i32 %i.di to i64
  %i.dn = getelementptr [8 x i8], ptr @tens, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -72
  %i.dp = load double, ptr %i.do, align 8, !tbaa !26
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dj, double %i.dl) ; 3 uses
  store double %i.dq, ptr %2, align 8, !tbaa !11
  %i.dr = icmp samesign ult i32 %.04541391, 16
  br i1 %i.dr, label %.thread, label %bb.ah

.thread:                                          ; preds = %._crit_edge867.thread, %._crit_edge867, %bb.y
  %i.ds = phi i32 [ %i.di, %._crit_edge867 ], [ %i.di, %bb.y ], [ 0, %._crit_edge867.thread ] ; 3 uses
  %.0416.lcssa1121 = phi i32 [ %.0416.lcssa.ph, %._crit_edge867 ], [ %.0416.lcssa.ph, %bb.y ], [ 0, %._crit_edge867.thread ] ; 3 uses
  %.0454.lcssa11081119 = phi i32 [ %.04541391, %._crit_edge867 ], [ %.04541391, %bb.y ], [ 0, %._crit_edge867.thread ] ; 5 uses
  %i.dt = phi i32 [ %i.ck, %._crit_edge867 ], [ %i.ck, %bb.y ], [ %i.ci, %._crit_edge867.thread ] ; 11 uses
  %spec.select56811111117 = phi i32 [ %spec.select5681107, %._crit_edge867 ], [ %spec.select5681107, %bb.y ], [ %spec.select568, %._crit_edge867.thread ] ; 3 uses
  %i.du = phi double [ %i.dj, %._crit_edge867 ], [ %i.dq, %bb.y ], [ 0.000000e+00, %._crit_edge867.thread ] ; 7 uses
  %i.dv = tail call i32 @llvm.get.rounding()
  %i.dw = icmp eq i32 %i.dv, 1
  br i1 %i.dw, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %.thread
  %.not535 = icmp eq i32 %i.dt, 0
  br i1 %.not535, label %bb.gt, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = icmp sgt i32 %i.dt, 0
  br i1 %i.dx, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.dy = icmp samesign ult i32 %i.dt, 23
  br i1 %i.dy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dz = zext nneg i32 %i.dt to i64
  %i.ea = getelementptr [8 x i8], ptr @tens, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !26
  %i.ec = fmul double %i.eb, %i.du
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab
  %i.ed = sub nsw i32 37, %.0454.lcssa11081119
  %.not536 = icmp samesign ugt i32 %i.dt, %i.ed
  br i1 %.not536, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = sub nuw nsw i32 15, %.0454.lcssa11081119 ; 2 uses
  %i.ef = sub nuw nsw i32 %i.dt, %i.ee
  %i.eg = zext nneg i32 %i.ee to i64
  %i.eh = getelementptr [8 x i8], ptr @tens, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !26
  %i.ej = fmul double %i.ei, %i.du
  %i.ek = zext nneg i32 %i.ef to i64
  %i.el = getelementptr [8 x i8], ptr @tens, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !26
  %i.en = fmul double %i.ej, %i.em
  br label %.sink.split

bb.af:                                            ; preds = %bb.aa
  %i.eo = icmp samesign ugt i32 %i.dt, -23
  br i1 %i.eo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ep = sub nsw i32 0, %i.dt
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr [8 x i8], ptr @tens, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !26
  %i.et = fdiv double %i.du, %i.es
  br label %.sink.split

bb.ah:                                            ; preds = %bb.ad, %bb.af, %.thread, %bb.y
  %i.eu = phi i32 [ %i.ds, %bb.ad ], [ %i.ds, %bb.af ], [ %i.ds, %.thread ], [ %i.di, %bb.y ]
  %.0416.lcssa1120 = phi i32 [ %.0416.lcssa1121, %bb.ad ], [ %.0416.lcssa1121, %bb.af ], [ %.0416.lcssa1121, %.thread ], [ %.0416.lcssa.ph, %bb.y ] ; 3 uses
  %.0454.lcssa11081118 = phi i32 [ %.0454.lcssa11081119, %bb.ad ], [ %.0454.lcssa11081119, %bb.af ], [ %.0454.lcssa11081119, %.thread ], [ %.04541391, %bb.y ] ; 20 uses
  %i.ev = phi i32 [ %i.dt, %bb.ad ], [ %i.dt, %bb.af ], [ %i.dt, %.thread ], [ %i.ck, %bb.y ] ; 4 uses
  %spec.select56811111116 = phi i32 [ %spec.select56811111117, %bb.ad ], [ %spec.select56811111117, %bb.af ], [ %spec.select56811111117, %.thread ], [ %spec.select5681107, %bb.y ] ; 20 uses
  %i.ew = phi double [ %i.du, %bb.ad ], [ %i.du, %bb.af ], [ %i.du, %.thread ], [ %i.dq, %bb.y ] ; 4 uses
  %i.ex = sub nsw i32 %.0454.lcssa11081118, %i.eu
  %i.ey = add i32 %i.ev, %i.ex                    ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 0, ptr %i.ez, align 4, !tbaa !28
  %i.fa = icmp sgt i32 %i.ey, 0
  br i1 %i.fa, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.fb = and i32 %i.ey, 15                       ; 2 uses
  %.not542 = icmp eq i32 %i.fb, 0
  br i1 %.not542, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr [8 x i8], ptr @tens, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !26
  %i.ff = fmul double %i.fe, %i.ew                ; 2 uses
  store double %i.ff, ptr %2, align 8, !tbaa !11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.promoted880 = phi double [ %i.ff, %bb.aj ], [ %i.ew, %bb.ai ] ; 2 uses
  %i.fg = and i32 %i.ey, 2147483632               ; 2 uses
  %.not543 = icmp eq i32 %i.fg, 0
  br i1 %.not543, label %bb.bj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fh = icmp samesign ugt i32 %i.fg, 308
  br i1 %i.fh, label %.loopexit730, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fi = icmp samesign ugt i32 %i.ey, 31
  br i1 %i.fi, label %.lr.ph885.preheader, label %._crit_edge886

.lr.ph885.preheader:                              ; preds = %bb.am
  %i.fj = lshr i32 %i.ey, 4
  br label %.lr.ph885

.lr.ph885:                                        ; preds = %.lr.ph885.preheader, %bb.ao
  %indvars.iv1012 = phi i64 [ 0, %.lr.ph885.preheader ], [ %indvars.iv.next1013, %bb.ao ] ; 2 uses
  %.0468882 = phi i32 [ %i.fj, %.lr.ph885.preheader ], [ %i.fq, %bb.ao ] ; 3 uses
  %i.fk = phi double [ %.promoted880, %.lr.ph885.preheader ], [ %i.fp, %bb.ao ] ; 2 uses
  %i.fl = and i32 %.0468882, 1
  %.not564 = icmp eq i32 %i.fl, 0
  br i1 %.not564, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph885
  %i.fm = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv1012
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !26
  %i.fo = fmul double %i.fn, %i.fk
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph885, %bb.an
  %i.fp = phi double [ %i.fk, %.lr.ph885 ], [ %i.fo, %bb.an ] ; 2 uses
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 1 ; 2 uses
  %i.fq = lshr i32 %.0468882, 1
  %i.fr = icmp samesign ugt i32 %.0468882, 3
  br i1 %i.fr, label %.lr.ph885, label %._crit_edge886, !llvm.loop !29

._crit_edge886:                                   ; preds = %bb.ao, %bb.am
  %.lcssa881 = phi double [ %.promoted880, %bb.am ], [ %i.fp, %bb.ao ] ; 2 uses
  %.0452.lcssa = phi i64 [ 0, %bb.am ], [ %indvars.iv.next1013, %bb.ao ]
  store double %.lcssa881, ptr %2, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ft = bitcast double %.lcssa881 to i64
  %i.fu = lshr i64 %i.ft, 32
  %i.fv = trunc nuw i64 %i.fu to i32
  %i.fw = add i32 %i.fv, -55574528
  store i32 %i.fw, ptr %i.fs, align 4, !tbaa !11
  %i.fx = getelementptr [8 x i8], ptr @bigtens, i64 %.0452.lcssa
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !26
  %i.fz = load double, ptr %2, align 8, !tbaa !11
  %i.ga = fmul double %i.fy, %i.fz                ; 2 uses
  store double %i.ga, ptr %2, align 8, !tbaa !11
  %i.gb = bitcast double %i.ga to i64
  %i.gc = lshr i64 %i.gb, 32
  %i.gd = trunc nuw i64 %i.gc to i32              ; 2 uses
  %i.ge = and i32 %i.gd, 2146435072               ; 2 uses
  %i.gf = icmp samesign ugt i32 %i.ge, 2090860544
  br i1 %i.gf, label %.loopexit730, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge886
  %i.gg = icmp samesign ugt i32 %i.ge, 2089811968
  br i1 %i.gg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 2146435071, ptr %i.fs, align 4, !tbaa !11
  store i32 -1, ptr %2, align 8, !tbaa !11
  br label %bb.bj

bb.ar:                                            ; preds = %bb.ap
  %i.gh = add i32 %i.gd, 55574528
  store i32 %i.gh, ptr %i.fs, align 4, !tbaa !11
  br label %bb.bj

bb.as:                                            ; preds = %bb.ah
  %i.gi = icmp slt i32 %i.ey, 0
  br i1 %i.gi, label %bb.at, label %bb.bj

bb.at:                                            ; preds = %bb.as
  %i.gj = sub i32 0, %i.ey                        ; 3 uses
  %i.gk = and i32 %i.gj, 15                       ; 2 uses
  %.not537 = icmp eq i32 %i.gk, 0
  br i1 %.not537, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr [8 x i8], ptr @tens, i64 %i.gl
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !26
  %i.go = fdiv double %i.ew, %i.gn                ; 2 uses
  store double %i.go, ptr %2, align 8, !tbaa !11
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.promoted = phi double [ %i.go, %bb.au ], [ %i.ew, %bb.at ] ; 2 uses
  %i.gp = ashr i32 %i.gj, 4                       ; 4 uses
  %.not538 = icmp eq i32 %i.gp, 0
  br i1 %.not538, label %bb.bj, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gq = icmp sgt i32 %i.gp, 31
  br i1 %i.gq, label %bb.gu, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = and i32 %i.gj, 256
  %.not539 = icmp eq i32 %i.gr, 0                 ; 2 uses
  br i1 %.not539, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 106, ptr %i.ez, align 4, !tbaa !28
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gs = phi i32 [ 106, %bb.ay ], [ 0, %bb.ax ]
  %i.gt = icmp sgt i32 %i.gp, 0
  br i1 %i.gt, label %.lr.ph877, label %._crit_edge878

.lr.ph877:                                        ; preds = %bb.az, %bb.bb
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bb ], [ 0, %bb.az ] ; 2 uses
  %.1469874 = phi i32 [ %i.ha, %bb.bb ], [ %i.gp, %bb.az ] ; 2 uses
  %i.gu = phi double [ %i.gz, %bb.bb ], [ %.promoted, %bb.az ] ; 2 uses
  %i.gv = and i32 %.1469874, 1
  %.not541 = icmp eq i32 %i.gv, 0
  br i1 %.not541, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph877
  %i.gw = getelementptr [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !26
  %i.gy = fmul double %i.gx, %i.gu
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph877, %bb.ba
  %i.gz = phi double [ %i.gu, %.lr.ph877 ], [ %i.gy, %bb.ba ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ha = lshr i32 %.1469874, 1                   ; 2 uses
  %.not901 = icmp eq i32 %i.ha, 0
  br i1 %.not901, label %._crit_edge878, label %.lr.ph877, !llvm.loop !30

._crit_edge878:                                   ; preds = %bb.bb, %bb.az
  %.lcssa873 = phi double [ %.promoted, %bb.az ], [ %i.gz, %bb.bb ] ; 3 uses
  store double %.lcssa873, ptr %2, align 8
  %i.hb = bitcast double %.lcssa873 to i64        ; 2 uses
  %i.hc = lshr i64 %i.hb, 32
  %i.hd = trunc nuw i64 %i.hc to i32              ; 2 uses
  %i.he = trunc i64 %i.hb to i32
  br i1 %.not539, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge878
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.hg = lshr i32 %i.hd, 20
  %i.hh = and i32 %i.hg, 2047                     ; 5 uses
  %i.hi = sub nsw i32 107, %i.hh
  %i.hj = icmp samesign ult i32 %i.hh, 107
  br i1 %i.hj, label %bb.bd, label %thread-pre-split

bb.bd:                                            ; preds = %bb.bc
  %i.hk = icmp samesign ult i32 %i.hh, 76
  br i1 %i.hk, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %2, align 8, !tbaa !11
  %i.hl = icmp samesign ult i32 %i.hh, 55
  br i1 %i.hl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 57671680, ptr %i.hf, align 4, !tbaa !11
  br label %thread-pre-split

bb.bg:                                            ; preds = %bb.be
  %i.hm = sub nuw nsw i32 75, %i.hh
  %i.hn = shl nsw i32 -1, %i.hm
  %i.ho = and i32 %i.hn, %i.hd
  store i32 %i.ho, ptr %i.hf, align 4, !tbaa !11
  br label %thread-pre-split

bb.bh:                                            ; preds = %bb.bd
  %i.hp = shl nsw i32 -1, %i.hi
  %i.hq = and i32 %i.hp, %i.he
  store i32 %i.hq, ptr %2, align 8, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bc, %bb.bf, %bb.bg, %bb.bh
  %.pr = load double, ptr %2, align 8, !tbaa !11
  br label %bb.bi

bb.bi:                                            ; preds = %thread-pre-split, %._crit_edge878
  %i.hr = phi double [ %.pr, %thread-pre-split ], [ %.lcssa873, %._crit_edge878 ]
  %i.hs = fcmp une double %i.hr, 0.000000e+00
  br i1 %i.hs, label %bb.bj, label %bb.gu

bb.bj:                                            ; preds = %bb.as, %bb.bi, %bb.av, %bb.ak, %bb.ar, %bb.aq
  %i.ht = phi i32 [ 0, %bb.as ], [ %i.gs, %bb.bi ], [ 0, %bb.av ], [ 0, %bb.ak ], [ 0, %bb.ar ], [ 0, %bb.aq ] ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %.0454.lcssa11081118, ptr %i.hu, align 4, !tbaa !31
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %spec.select56811111116, ptr %i.hv, align 4, !tbaa !32
  %i.hw = icmp sgt i32 %.0454.lcssa11081118, 40
  br i1 %i.hw, label %.preheader735.preheader, label %.loopexit733

.preheader735.preheader:                          ; preds = %bb.bj
  %.not544 = icmp slt i32 %spec.select, 18
  %i.hx = select i1 %.not544, i64 18, i64 17
  %i.hy = getelementptr i8, ptr %.1430, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !11
  %.not545 = icmp eq i8 %i.hz, 48
  br i1 %.not545, label %.preheader735.1, label %.thread1122

.preheader735.1:                                  ; preds = %.preheader735.preheader
  %.not544.1 = icmp slt i32 %spec.select56811111116, 17
  %i.ia = select i1 %.not544.1, i64 17, i64 16
  %i.ib = getelementptr i8, ptr %.1430, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !11
  %.not545.1 = icmp eq i8 %i.ic, 48
  br i1 %.not545.1, label %.preheader735.2, label %.thread1122

.preheader735.2:                                  ; preds = %.preheader735.1
  %.not544.2 = icmp slt i32 %spec.select56811111116, 16
  %i.id = select i1 %.not544.2, i64 16, i64 15
  %i.ie = getelementptr i8, ptr %.1430, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !11
  %.not545.2 = icmp eq i8 %i.if, 48
  br i1 %.not545.2, label %.preheader735.3, label %.thread1122

.preheader735.3:                                  ; preds = %.preheader735.2
  %.not544.3 = icmp slt i32 %spec.select56811111116, 15
  %i.ig = select i1 %.not544.3, i64 15, i64 14
  %i.ih = getelementptr i8, ptr %.1430, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !11
  %.not545.3 = icmp eq i8 %i.ii, 48
  br i1 %.not545.3, label %.preheader735.4, label %.thread1122

.preheader735.4:                                  ; preds = %.preheader735.3
  %.not544.4 = icmp slt i32 %spec.select56811111116, 14
  %i.ij = select i1 %.not544.4, i64 14, i64 13
  %i.ik = getelementptr i8, ptr %.1430, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !11
  %.not545.4 = icmp eq i8 %i.il, 48
  br i1 %.not545.4, label %.preheader735.5, label %.thread1122

.preheader735.5:                                  ; preds = %.preheader735.4
  %.not544.5 = icmp slt i32 %spec.select56811111116, 13
  %i.im = select i1 %.not544.5, i64 13, i64 12
end_hunk_0
