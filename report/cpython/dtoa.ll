Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/dtoa?download=true
inline.NumInlined: 94
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Py_dg_strtod:bb.a
  %i.bn = add nsw i32 %.9475, -48
  %i.bo = add i32 %i.bn, %i.bm                    ; 2 uses
  %i.bp = getelementptr i8, ptr %.9858, i64 1     ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11  ; 2 uses
  %i.br = add i8 %i.bq, -48
  %i.bs = icmp ult i8 %i.br, 10
  br i1 %i.bs, label %.lr.ph861, label %._crit_edge862.loopexit, !llvm.loop !128

._crit_edge862.loopexit:                          ; preds = %.lr.ph861
  %i.bt = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 1100000000)
  br label %._crit_edge862

._crit_edge862:                                   ; preds = %._crit_edge862.loopexit, %._crit_edge854
  %.9.lcssa = phi ptr [ %.8.lcssa, %._crit_edge854 ], [ %i.bp, %._crit_edge862.loopexit ] ; 3 uses
  %.0412.lcssa = phi i32 [ 0, %._crit_edge854 ], [ %i.bt, %._crit_edge862.loopexit ]
  %i.bu = ptrtoint ptr %.9.lcssa to i64
  %i.bv = ptrtoint ptr %.8.lcssa to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp sgt i64 %i.bw, 9
  %..0412 = select i1 %i.bx, i32 1100000000, i32 %.0412.lcssa ; 2 uses
  %i.by = sub nsw i32 0, %..0412
  %.1463 = select i1 %.1459, i32 %..0412, i32 %i.by
  %i.bz = icmp ne ptr %.9.lcssa, %.8.lcssa
  %or.cond9 = or i1 %i.bj, %i.bz
  %spec.select579 = select i1 %or.cond9, ptr %.9.lcssa, ptr %.6436
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge862, %bb.m
  %.2464 = phi i32 [ %.1463, %._crit_edge862 ], [ 0, %bb.m ]
  %.10 = phi ptr [ %spec.select579, %._crit_edge862 ], [ %.6436, %bb.m ]
  %i.ca = sub nsw i32 %.2464, %i.ax               ; 2 uses
  %i.cb = icmp slt i32 %i.ay, 1
  %spec.select = select i1 %i.cb, i32 %i.aw, i32 %i.ay ; 4 uses
  %.not531 = icmp eq ptr %1, null
  br i1 %.not531, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.10, ptr %1, align 8, !tbaa !15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not532 = icmp eq i64 %.0382, 0
  br i1 %.not532, label %bb.gt, label %.lr.ph1395

.preheader739:                                    ; preds = %.lr.ph1395
  %i.cc = icmp sgt i32 %.04491394, 1
  br i1 %i.cc, label %.lr.ph1395, label %._crit_edge870.thread, !llvm.loop !129

.lr.ph1395:                                       ; preds = %bb.t, %.preheader739
  %.04491394 = phi i32 [ %i.cd, %.preheader739 ], [ %i.aw, %bb.t ] ; 13 uses
  %i.cd = add nsw i32 %.04491394, -1              ; 2 uses
  %.not533 = icmp sgt i32 %.04491394, %spec.select
  %i.ce = select i1 %.not533, i32 %.04491394, i32 %i.cd
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr i8, ptr %.1429, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %.not534 = icmp eq i8 %i.ch, 48
  br i1 %.not534, label %.preheader739, label %.lr.ph869.preheader, !llvm.loop !129

._crit_edge870.thread:                            ; preds = %.preheader739
  %i.ci = add i32 %i.ca, %i.aw                    ; 2 uses
  %spec.select568 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 0)
  store i32 %i.ci, ptr %3, align 4, !tbaa !17
  store double 0.000000e+00, ptr %2, align 8, !tbaa !11
  br label %.thread

.lr.ph869.preheader:                              ; preds = %.lr.ph1395
  %i.cj = sub nsw i32 %i.aw, %.04491394
  %i.ck = add i32 %i.cj, %i.ca                    ; 4 uses
  %spec.select5681110 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %.04491394) ; 5 uses
  store i32 %i.ck, ptr %3, align 4, !tbaa !17
  br label %.lr.ph869

.lr.ph869:                                        ; preds = %.lr.ph869.preheader, %bb.x
  %.0413867 = phi i32 [ %.1414, %bb.x ], [ 0, %.lr.ph869.preheader ] ; 3 uses
  %.0415866 = phi i32 [ %.1416, %bb.x ], [ 0, %.lr.ph869.preheader ] ; 3 uses
  %.2451865 = phi i32 [ %i.dh, %bb.x ], [ 0, %.lr.ph869.preheader ] ; 7 uses
  %i.cl = icmp samesign ult i32 %.2451865, 9
  br i1 %i.cl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph869
  %i.cm = mul i32 %.0415866, 10
  %i.cn = icmp sge i32 %.2451865, %spec.select5681110
  %i.co = zext i1 %i.cn to i32
  %i.cp = add nuw nsw i32 %.2451865, %i.co
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %.1429, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !11
  %i.ct = sext i8 %i.cs to i32
  %i.cu = add i32 %i.cm, -48
  %i.cv = add i32 %i.cu, %i.ct
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph869
  %i.cw = icmp samesign ult i32 %.2451865, 16
  br i1 %i.cw, label %bb.w, label %._crit_edge870

bb.w:                                             ; preds = %bb.v
  %i.cx = mul i32 %.0413867, 10
  %i.cy = icmp sge i32 %.2451865, %spec.select5681110
  %i.cz = zext i1 %i.cy to i32
  %i.da = add nuw nsw i32 %.2451865, %i.cz
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr i8, ptr %.1429, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.de = sext i8 %i.dd to i32
  %i.df = add i32 %i.cx, -48
  %i.dg = add i32 %i.df, %i.de
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  %.1416 = phi i32 [ %i.cv, %bb.u ], [ %.0415866, %bb.w ] ; 2 uses
  %.1414 = phi i32 [ %.0413867, %bb.u ], [ %i.dg, %bb.w ] ; 2 uses
  %i.dh = add nuw nsw i32 %.2451865, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.dh, %.04491394
  br i1 %exitcond.not, label %._crit_edge870, label %.lr.ph869, !llvm.loop !130

._crit_edge870:                                   ; preds = %bb.x, %bb.v
  %.0415.lcssa.ph = phi i32 [ %.1416, %bb.x ], [ %.0415866, %bb.v ] ; 4 uses
  %.0413.lcssa.ph = phi i32 [ %.1414, %bb.x ], [ %.0413867, %bb.v ]
  %i.di = tail call i32 @llvm.smin.i32(i32 %.04491394, i32 16) ; 4 uses
  %i.dj = uitofp i32 %.0415.lcssa.ph to double    ; 3 uses
  store double %i.dj, ptr %2, align 8, !tbaa !11
  %i.dk = icmp sgt i32 %.04491394, 9
  br i1 %i.dk, label %bb.y, label %.thread

bb.y:                                             ; preds = %._crit_edge870
  %i.dl = uitofp i32 %.0413.lcssa.ph to double
  %i.dm = zext nneg i32 %i.di to i64
  %i.dn = getelementptr [8 x i8], ptr @tens, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -72
  %i.dp = load double, ptr %i.do, align 8, !tbaa !19
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dj, double %i.dl) ; 3 uses
  store double %i.dq, ptr %2, align 8, !tbaa !11
  %i.dr = icmp samesign ult i32 %.04491394, 16
  br i1 %i.dr, label %.thread, label %bb.ah

.thread:                                          ; preds = %._crit_edge870.thread, %._crit_edge870, %bb.y
  %i.ds = phi i32 [ %i.di, %._crit_edge870 ], [ %i.di, %bb.y ], [ 0, %._crit_edge870.thread ] ; 3 uses
  %.0415.lcssa1124 = phi i32 [ %.0415.lcssa.ph, %._crit_edge870 ], [ %.0415.lcssa.ph, %bb.y ], [ 0, %._crit_edge870.thread ] ; 3 uses
  %.0449.lcssa11111122 = phi i32 [ %.04491394, %._crit_edge870 ], [ %.04491394, %bb.y ], [ 0, %._crit_edge870.thread ] ; 5 uses
  %i.dt = phi i32 [ %i.ck, %._crit_edge870 ], [ %i.ck, %bb.y ], [ %i.ci, %._crit_edge870.thread ] ; 11 uses
  %spec.select56811141120 = phi i32 [ %spec.select5681110, %._crit_edge870 ], [ %spec.select5681110, %bb.y ], [ %spec.select568, %._crit_edge870.thread ] ; 3 uses
  %i.du = phi double [ %i.dj, %._crit_edge870 ], [ %i.dq, %bb.y ], [ 0.000000e+00, %._crit_edge870.thread ] ; 7 uses
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
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !19
  %i.ec = fmul double %i.eb, %i.du
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab
  %i.ed = sub nsw i32 37, %.0449.lcssa11111122
  %.not536 = icmp samesign ugt i32 %i.dt, %i.ed
  br i1 %.not536, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = sub nuw nsw i32 15, %.0449.lcssa11111122 ; 2 uses
  %i.ef = sub nuw nsw i32 %i.dt, %i.ee
  %i.eg = zext nneg i32 %i.ee to i64
  %i.eh = getelementptr [8 x i8], ptr @tens, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !19
  %i.ej = fmul double %i.ei, %i.du
  %i.ek = zext nneg i32 %i.ef to i64
  %i.el = getelementptr [8 x i8], ptr @tens, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !19
  %i.en = fmul double %i.ej, %i.em
  br label %.sink.split

bb.af:                                            ; preds = %bb.aa
  %i.eo = icmp samesign ugt i32 %i.dt, -23
  br i1 %i.eo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ep = sub nsw i32 0, %i.dt
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr [8 x i8], ptr @tens, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !19
  %i.et = fdiv double %i.du, %i.es
  br label %.sink.split

bb.ah:                                            ; preds = %bb.ad, %bb.af, %.thread, %bb.y
  %i.eu = phi i32 [ %i.ds, %bb.ad ], [ %i.ds, %bb.af ], [ %i.ds, %.thread ], [ %i.di, %bb.y ]
  %.0415.lcssa1123 = phi i32 [ %.0415.lcssa1124, %bb.ad ], [ %.0415.lcssa1124, %bb.af ], [ %.0415.lcssa1124, %.thread ], [ %.0415.lcssa.ph, %bb.y ] ; 3 uses
  %.0449.lcssa11111121 = phi i32 [ %.0449.lcssa11111122, %bb.ad ], [ %.0449.lcssa11111122, %bb.af ], [ %.0449.lcssa11111122, %.thread ], [ %.04491394, %bb.y ] ; 19 uses
  %i.ev = phi i32 [ %i.dt, %bb.ad ], [ %i.dt, %bb.af ], [ %i.dt, %.thread ], [ %i.ck, %bb.y ] ; 4 uses
  %spec.select56811141119 = phi i32 [ %spec.select56811141120, %bb.ad ], [ %spec.select56811141120, %bb.af ], [ %spec.select56811141120, %.thread ], [ %spec.select5681110, %bb.y ] ; 20 uses
  %i.ew = phi double [ %i.du, %bb.ad ], [ %i.du, %bb.af ], [ %i.du, %.thread ], [ %i.dq, %bb.y ] ; 4 uses
  %i.ex = sub nsw i32 %.0449.lcssa11111121, %i.eu
  %i.ey = add i32 %i.ev, %i.ex                    ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 0, ptr %i.ez, align 4, !tbaa !20
  %i.fa = icmp sgt i32 %i.ey, 0
  br i1 %i.fa, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.fb = and i32 %i.ey, 15                       ; 2 uses
  %.not542 = icmp eq i32 %i.fb, 0
  br i1 %.not542, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr [8 x i8], ptr @tens, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !19
  %i.ff = fmul double %i.fe, %i.ew                ; 2 uses
  store double %i.ff, ptr %2, align 8, !tbaa !11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.promoted883 = phi double [ %i.ff, %bb.aj ], [ %i.ew, %bb.ai ] ; 2 uses
  %i.fg = and i32 %i.ey, 2147483632               ; 2 uses
  %.not543 = icmp eq i32 %i.fg, 0
  br i1 %.not543, label %bb.bj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fh = icmp samesign ugt i32 %i.fg, 308
  br i1 %i.fh, label %.loopexit733, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fi = icmp samesign ugt i32 %i.ey, 31
  br i1 %i.fi, label %.lr.ph888.preheader, label %._crit_edge889

.lr.ph888.preheader:                              ; preds = %bb.am
  %i.fj = lshr i32 %i.ey, 4
  br label %.lr.ph888

.lr.ph888:                                        ; preds = %.lr.ph888.preheader, %bb.ao
  %indvars.iv1015 = phi i64 [ 0, %.lr.ph888.preheader ], [ %indvars.iv.next1016, %bb.ao ] ; 2 uses
  %.0460885 = phi i32 [ %i.fj, %.lr.ph888.preheader ], [ %i.fq, %bb.ao ] ; 3 uses
  %i.fk = phi double [ %.promoted883, %.lr.ph888.preheader ], [ %i.fp, %bb.ao ] ; 2 uses
  %i.fl = and i32 %.0460885, 1
  %.not564 = icmp eq i32 %i.fl, 0
  br i1 %.not564, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph888
  %i.fm = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv1015
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !19
  %i.fo = fmul double %i.fn, %i.fk
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph888, %bb.an
  %i.fp = phi double [ %i.fk, %.lr.ph888 ], [ %i.fo, %bb.an ] ; 2 uses
  %indvars.iv.next1016 = add nuw nsw i64 %indvars.iv1015, 1 ; 2 uses
  %i.fq = lshr i32 %.0460885, 1
  %i.fr = icmp samesign ugt i32 %.0460885, 3
  br i1 %i.fr, label %.lr.ph888, label %._crit_edge889, !llvm.loop !131

._crit_edge889:                                   ; preds = %bb.ao, %bb.am
  %.lcssa884 = phi double [ %.promoted883, %bb.am ], [ %i.fp, %bb.ao ] ; 2 uses
  %.0447.lcssa = phi i64 [ 0, %bb.am ], [ %indvars.iv.next1016, %bb.ao ]
  store double %.lcssa884, ptr %2, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ft = bitcast double %.lcssa884 to i64
  %i.fu = lshr i64 %i.ft, 32
  %i.fv = trunc nuw i64 %i.fu to i32
  %i.fw = add i32 %i.fv, -55574528
  store i32 %i.fw, ptr %i.fs, align 4, !tbaa !11
  %i.fx = getelementptr [8 x i8], ptr @bigtens, i64 %.0447.lcssa
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !19
  %i.fz = load double, ptr %2, align 8, !tbaa !11
  %i.ga = fmul double %i.fy, %i.fz                ; 2 uses
  store double %i.ga, ptr %2, align 8, !tbaa !11
  %i.gb = bitcast double %i.ga to i64
  %i.gc = lshr i64 %i.gb, 32
  %i.gd = trunc nuw i64 %i.gc to i32              ; 2 uses
  %i.ge = and i32 %i.gd, 2146435072               ; 2 uses
  %i.gf = icmp samesign ugt i32 %i.ge, 2090860544
  br i1 %i.gf, label %.loopexit733, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge889
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
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !19
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
  store i32 106, ptr %i.ez, align 4, !tbaa !20
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gs = phi i32 [ 106, %bb.ay ], [ 0, %bb.ax ]
  %i.gt = icmp sgt i32 %i.gp, 0
  br i1 %i.gt, label %.lr.ph880, label %._crit_edge881

.lr.ph880:                                        ; preds = %bb.az, %bb.bb
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bb ], [ 0, %bb.az ] ; 2 uses
  %.1461877 = phi i32 [ %i.ha, %bb.bb ], [ %i.gp, %bb.az ] ; 2 uses
  %i.gu = phi double [ %i.gz, %bb.bb ], [ %.promoted, %bb.az ] ; 2 uses
  %i.gv = and i32 %.1461877, 1
  %.not541 = icmp eq i32 %i.gv, 0
  br i1 %.not541, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph880
  %i.gw = getelementptr [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !19
  %i.gy = fmul double %i.gx, %i.gu
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph880, %bb.ba
  %i.gz = phi double [ %i.gu, %.lr.ph880 ], [ %i.gy, %bb.ba ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ha = lshr i32 %.1461877, 1                   ; 2 uses
  %.not904 = icmp eq i32 %i.ha, 0
  br i1 %.not904, label %._crit_edge881, label %.lr.ph880, !llvm.loop !132

._crit_edge881:                                   ; preds = %bb.bb, %bb.az
  %.lcssa876 = phi double [ %.promoted, %bb.az ], [ %i.gz, %bb.bb ] ; 3 uses
  store double %.lcssa876, ptr %2, align 8
  %i.hb = bitcast double %.lcssa876 to i64        ; 2 uses
  %i.hc = lshr i64 %i.hb, 32
  %i.hd = trunc nuw i64 %i.hc to i32              ; 2 uses
  %i.he = trunc i64 %i.hb to i32
  br i1 %.not539, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge881
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.hg = lshr i32 %i.hd, 20
  %i.hh = and i32 %i.hg, 2047                     ; 5 uses
  %i.hi = sub nuw nsw i32 107, %i.hh
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
end_hunk_0
begin_hunk_1_@_Py_dg_strtod:bb.a
  %.020.i.i.i = select i1 %.not2428.i.i.i, i32 %.3.i.i.i, i32 %spec.select27.i.i.i ; 6 uses
  %i.zn = icmp samesign ult i32 %.020.i.i.i, 11
  br i1 %i.zn, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.zo = sub nuw nsw i32 11, %.020.i.i.i         ; 2 uses
  %i.zp = lshr i32 %i.ze, %i.zo
  %i.zq = icmp ugt ptr %i.zd, %i.za
  br i1 %i.zq, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.zr = getelementptr i8, ptr %i.zc, i64 -8
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !10
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.zt = phi i32 [ %i.zs, %bb.eu ], [ 0, %bb.et ]
  %i.zu = add nuw nsw i32 %.020.i.i.i, 21
  %i.zv = shl i32 %i.ze, %i.zu
  %i.zw = lshr i32 %i.zt, %i.zo
  %i.zx = or i32 %i.zw, %i.zv
  br label %b2d.exit.i

bb.ew:                                            ; preds = %bb.es
  %i.zy = icmp ugt ptr %i.zd, %i.za
  br i1 %i.zy, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.zz = getelementptr i8, ptr %i.zc, i64 -8     ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !10
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.0.i.i635 = phi ptr [ %i.zz, %bb.ex ], [ %i.zd, %bb.ew ] ; 2 uses
  %i.aab = phi i32 [ %i.aaa, %bb.ex ], [ 0, %bb.ew ] ; 3 uses
  %i.aac = add nsw i32 %.020.i.i.i, -11           ; 3 uses
  %.not.i.i636 = icmp eq i32 %i.aac, 0
  br i1 %.not.i.i636, label %b2d.exit.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aad = shl i32 %i.ze, %i.aac
  %i.aae = sub nuw nsw i32 43, %.020.i.i.i        ; 2 uses
  %i.aaf = lshr i32 %i.aab, %i.aae
  %i.aag = or i32 %i.aaf, %i.aad
  %i.aah = icmp ugt ptr %.0.i.i635, %i.za
  br i1 %i.aah, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.aai = getelementptr i8, ptr %.0.i.i635, i64 -4
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !10
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.aak = phi i32 [ %i.aaj, %bb.fa ], [ 0, %bb.ez ]
  %i.aal = shl i32 %i.aab, %i.aac
  %i.aam = lshr i32 %i.aak, %i.aae
  %i.aan = or i32 %i.aam, %i.aal
  br label %b2d.exit.i

b2d.exit.i:                                       ; preds = %bb.fb, %bb.ey, %bb.ev
  %.sink.i.i = phi i32 [ %i.aan, %bb.fb ], [ %i.zx, %bb.ev ], [ %i.aab, %bb.ey ]
  %.sroa.0.4.insert.shift11.sink.in.in.in.i.i = phi i32 [ %i.aag, %bb.fb ], [ %i.zp, %bb.ev ], [ %i.ze, %bb.ey ]
  %i.aao = getelementptr i8, ptr %.2387, i64 24   ; 4 uses
  %i.aap = sext i32 %i.vp to i64
  %i.aaq = getelementptr [4 x i8], ptr %i.aao, i64 %i.aap ; 3 uses
  %i.aar = getelementptr i8, ptr %i.aaq, i64 -4   ; 4 uses
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !10 ; 7 uses
  %.not.i.i8.i = icmp ult i32 %i.aas, 65536       ; 2 uses
  %i.aat = shl nuw i32 %i.aas, 16
  %spec.select.i.i9.i = select i1 %.not.i.i8.i, i32 %i.aat, i32 %i.aas ; 3 uses
  %spec.select26.i.i10.i = select i1 %.not.i.i8.i, i32 16, i32 0 ; 2 uses
  %.not21.i.i11.i = icmp ult i32 %spec.select.i.i9.i, 16777216 ; 2 uses
  %i.aau = or disjoint i32 %spec.select26.i.i10.i, 8
  %i.aav = shl nuw i32 %spec.select.i.i9.i, 8
  %.117.i.i12.i = select i1 %.not21.i.i11.i, i32 %i.aav, i32 %spec.select.i.i9.i ; 3 uses
  %.1.i.i13.i = select i1 %.not21.i.i11.i, i32 %i.aau, i32 %spec.select26.i.i10.i ; 2 uses
  %.not22.i.i14.i = icmp ult i32 %.117.i.i12.i, 268435456 ; 2 uses
  %i.aaw = or disjoint i32 %.1.i.i13.i, 4
  %i.aax = shl nuw i32 %.117.i.i12.i, 4
  %.218.i.i15.i = select i1 %.not22.i.i14.i, i32 %i.aax, i32 %.117.i.i12.i ; 3 uses
  %.2.i.i16.i = select i1 %.not22.i.i14.i, i32 %i.aaw, i32 %.1.i.i13.i ; 2 uses
  %.not23.i.i17.i = icmp ult i32 %.218.i.i15.i, 1073741824 ; 2 uses
  %i.aay = or disjoint i32 %.2.i.i16.i, 2
  %i.aaz = shl nuw i32 %.218.i.i15.i, 2
  %.319.i.i18.i = select i1 %.not23.i.i17.i, i32 %i.aaz, i32 %.218.i.i15.i ; 2 uses
  %.3.i.i19.i = select i1 %.not23.i.i17.i, i32 %i.aay, i32 %.2.i.i16.i ; 2 uses
  %i.aba = add nuw nsw i32 %.3.i.i19.i, 1
  %.not25.i.i20.i = icmp ult i32 %.319.i.i18.i, 1073741824
  %spec.select27.i.i21.i = select i1 %.not25.i.i20.i, i32 32, i32 %i.aba
  %.not2428.i.i22.i = icmp slt i32 %.319.i.i18.i, 0
  %.020.i.i23.i = select i1 %.not2428.i.i22.i, i32 %.3.i.i19.i, i32 %spec.select27.i.i21.i ; 6 uses
  %i.abb = icmp samesign ult i32 %.020.i.i23.i, 11
  br i1 %i.abb, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %b2d.exit.i
  %i.abc = sub nuw nsw i32 11, %.020.i.i23.i      ; 2 uses
  %i.abd = lshr i32 %i.aas, %i.abc
  %i.abe = icmp ugt ptr %i.aar, %i.aao
  br i1 %i.abe, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.abf = getelementptr i8, ptr %i.aaq, i64 -8
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !10
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.abh = phi i32 [ %i.abg, %bb.fd ], [ 0, %bb.fc ]
  %i.abi = add nuw nsw i32 %.020.i.i23.i, 21
  %i.abj = shl i32 %i.aas, %i.abi
  %i.abk = lshr i32 %i.abh, %i.abc
  %i.abl = or i32 %i.abk, %i.abj
  br label %ratio.exit

bb.ff:                                            ; preds = %b2d.exit.i
  %i.abm = icmp ugt ptr %i.aar, %i.aao
  br i1 %i.abm, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.abn = getelementptr i8, ptr %i.aaq, i64 -8   ; 2 uses
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !10
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.0.i24.i = phi ptr [ %i.abn, %bb.fg ], [ %i.aar, %bb.ff ] ; 2 uses
  %i.abp = phi i32 [ %i.abo, %bb.fg ], [ 0, %bb.ff ] ; 3 uses
  %i.abq = add nsw i32 %.020.i.i23.i, -11         ; 3 uses
  %.not.i25.i = icmp eq i32 %i.abq, 0
  br i1 %.not.i25.i, label %ratio.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.abr = shl i32 %i.aas, %i.abq
  %i.abs = sub nuw nsw i32 43, %.020.i.i23.i      ; 2 uses
  %i.abt = lshr i32 %i.abp, %i.abs
  %i.abu = or i32 %i.abt, %i.abr
  %i.abv = icmp ugt ptr %.0.i24.i, %i.aao
  br i1 %i.abv, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.abw = getelementptr i8, ptr %.0.i24.i, i64 -4
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !10
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.aby = phi i32 [ %i.abx, %bb.fj ], [ 0, %bb.fi ]
  %i.abz = shl i32 %i.abp, %i.abq
  %i.aca = lshr i32 %i.aby, %i.abs
  %i.acb = or i32 %i.aca, %i.abz
  br label %ratio.exit

ratio.exit:                                       ; preds = %bb.fe, %bb.fh, %bb.fk
  %.sink.i26.i = phi i32 [ %i.acb, %bb.fk ], [ %i.abl, %bb.fe ], [ %i.abp, %bb.fh ]
  %.sroa.0.4.insert.shift11.sink.in.in.in.i27.i = phi i32 [ %i.abu, %bb.fk ], [ %i.abd, %bb.fe ], [ %i.aas, %bb.fh ]
  %.sroa.0.4.insert.shift11.sink.in.in.i.i = or i32 %.sroa.0.4.insert.shift11.sink.in.in.in.i.i, 1072693248
  %.sroa.0.4.insert.shift11.sink.in.in.i28.i = or i32 %.sroa.0.4.insert.shift11.sink.in.in.in.i27.i, 1072693248
  %i.acc = sub nsw i32 %.020.i.i23.i, %.020.i.i.i
  %i.acd = shl i32 %i.vq, 5
  %i.ace = add i32 %i.acc, %i.acd                 ; 2 uses
  %i.acf = tail call i32 @llvm.smax.i32(i32 %i.ace, i32 0)
  %i.acg = shl i32 %i.acf, 20
  %.sroa.04.4.insert.shift.pn.in.in.i = add i32 %i.acg, %.sroa.0.4.insert.shift11.sink.in.in.i.i
  %i.ach = tail call i32 @llvm.smin.i32(i32 %i.ace, i32 0)
  %i.aci = shl i32 %i.ach, 20
  %.sroa.0.4.insert.shift11.sink.i30.pn.in.in.i = sub i32 %.sroa.0.4.insert.shift11.sink.in.in.i28.i, %i.aci
  %.sroa.0.0.insert.ext2.i31.i = zext i32 %.sink.i26.i to i64
  %.sroa.0.4.insert.shift11.sink.i30.pn.in.i = zext i32 %.sroa.0.4.insert.shift11.sink.i30.pn.in.in.i to i64
  %.sroa.0.4.insert.shift11.sink.i30.pn.i = shl nuw i64 %.sroa.0.4.insert.shift11.sink.i30.pn.in.i, 32
  %.sroa.0.0.in.i = or disjoint i64 %.sroa.0.4.insert.shift11.sink.i30.pn.i, %.sroa.0.0.insert.ext2.i31.i
  %.sroa.0.0.i = bitcast i64 %.sroa.0.0.in.i to double
  %.sroa.0.0.insert.ext2.i.i = zext i32 %.sink.i.i to i64
  %.sroa.04.4.insert.shift.pn.in.i = zext i32 %.sroa.04.4.insert.shift.pn.in.in.i to i64
  %.sroa.04.4.insert.shift.pn.i = shl nuw i64 %.sroa.04.4.insert.shift.pn.in.i, 32
  %.sroa.04.0.in.i = or disjoint i64 %.sroa.04.4.insert.shift.pn.i, %.sroa.0.0.insert.ext2.i.i
  %.sroa.04.0.i = bitcast i64 %.sroa.04.0.in.i to double
  %i.acj = fdiv double %.sroa.04.0.i, %.sroa.0.0.i ; 4 uses
  %i.ack = fcmp ugt double %i.acj, 2.000000e+00
  br i1 %i.ack, label %bb.fr, label %bb.fl

bb.fl:                                            ; preds = %ratio.exit
  %.not550 = icmp eq i32 %i.vl, 0
  br i1 %.not550, label %bb.fm, label %.thread680

bb.fm:                                            ; preds = %bb.fl
  %i.acl = load i32, ptr %2, align 8, !tbaa !11   ; 2 uses
  %.not551 = icmp eq i32 %i.acl, 0
  br i1 %.not551, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.acm = load i32, ptr %i.qb, align 4, !tbaa !11
  %i.acn = and i32 %i.acm, 1048575
  %.not552 = icmp eq i32 %i.acn, 0
  br i1 %.not552, label %bb.fq, label %.thread680

bb.fo:                                            ; preds = %bb.fm
  %i.aco = icmp ne i32 %i.acl, 1
  %i.acp = load i32, ptr %i.qb, align 4
  %i.acq = icmp ne i32 %i.acp, 0
  %or.cond20 = select i1 %i.aco, i1 true, i1 %i.acq
  br i1 %or.cond20, label %.thread680, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.qa, label %bb.gq, label %bb.gu

bb.fq:                                            ; preds = %bb.fn
  %i.acr = fcmp olt double %i.acj, 1.000000e+00
  %i.acs = fmul nnan double %i.acj, 5.000000e-01
  %.0423 = select i1 %i.acr, double 5.000000e-01, double %i.acs ; 2 uses
  %i.act = fneg double %.0423
  br label %.thread680

bb.fr:                                            ; preds = %ratio.exit
  %i.acu = fmul double %i.acj, 5.000000e-01       ; 4 uses
  %.not549 = icmp eq i32 %i.vl, 0
  %i.acv = fneg double %i.acu
  %i.acw = select i1 %.not549, double %i.acv, double %i.acu ; 2 uses
  %i.acx = tail call i32 @llvm.get.rounding()
  %i.acy = icmp eq i32 %i.acx, 0
  br i1 %i.acy, label %bb.fs, label %.thread680

bb.fs:                                            ; preds = %bb.fr
  %i.acz = fadd double %i.acw, 5.000000e-01
  br label %.thread680

.thread680:                                       ; preds = %bb.fn, %bb.fo, %bb.fl, %bb.fr, %bb.fs, %bb.fq
  %.1424 = phi double [ %i.acu, %bb.fr ], [ 1.000000e+00, %bb.fl ], [ %.0423, %bb.fq ], [ %i.acu, %bb.fs ], [ 1.000000e+00, %bb.fo ], [ 1.000000e+00, %bb.fn ] ; 5 uses
  %.0420 = phi double [ %i.acw, %bb.fr ], [ 1.000000e+00, %bb.fl ], [ %i.act, %bb.fq ], [ %i.acz, %bb.fs ], [ -1.000000e+00, %bb.fo ], [ -1.000000e+00, %bb.fn ] ; 3 uses
  %i.ada = load i32, ptr %i.qb, align 4, !tbaa !11 ; 2 uses
  %i.adb = and i32 %i.ada, 2146435072             ; 5 uses
  %i.adc = icmp eq i32 %i.adb, 2145386496
  br i1 %i.adc, label %bb.ft, label %bb.fx

bb.ft:                                            ; preds = %.thread680
  %i.add = load i64, ptr %2, align 8, !tbaa !11
  %i.ade = add nsw i32 %i.ada, -55574528
  store i32 %i.ade, ptr %i.qb, align 4, !tbaa !11
  %i.adf = fmul double %.0420, f0x7950000000000000
  %i.adg = load double, ptr %2, align 8, !tbaa !11
  %i.adh = fadd double %i.adf, %i.adg             ; 2 uses
  store double %i.adh, ptr %2, align 8, !tbaa !11
  %i.adi = bitcast double %i.adh to i64           ; 2 uses
  %i.adj = lshr i64 %i.adi, 32
  %i.adk = trunc nuw i64 %i.adj to i32            ; 2 uses
  %i.adl = and i32 %i.adk, 2145386496
  %i.adm = icmp samesign ugt i32 %i.adl, 2090860543
  br i1 %i.adm, label %bb.fu, label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  %or.cond23 = icmp eq i64 %i.add, 9218868437227405311
  br i1 %or.cond23, label %.loopexit733, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  store i32 2146435071, ptr %i.qb, align 4, !tbaa !11
  store i32 -1, ptr %2, align 8, !tbaa !11
  br label %bb.gg

bb.fw:                                            ; preds = %bb.ft
  %i.adn = add i32 %i.adk, 55574528               ; 2 uses
  store i32 %i.adn, ptr %i.qb, align 4, !tbaa !11
  br label %bb.gc

bb.fx:                                            ; preds = %.thread680
  %i.ado = icmp samesign ult i32 %i.adb, 111149057
  %or.cond25 = select i1 %i.qc, i1 %i.ado, i1 false
  br i1 %or.cond25, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  %i.adp = fcmp ugt double %.1424, f0x41DFFFFFFFC00000
  br i1 %i.adp, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.adq = fptoui double %.1424 to i32
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.adq, i32 1)
  %i.adr = uitofp i32 %spec.store.select to double ; 3 uses
  %.not553 = icmp eq i32 %i.vl, 0
  %i.ads = fneg double %i.adr
  %i.adt = select i1 %.not553, double %i.ads, double %i.adr
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.2425 = phi double [ %i.adr, %bb.fz ], [ %.1424, %bb.fy ]
  %.1421 = phi double [ %i.adt, %bb.fz ], [ %.0420, %bb.fy ]
  %i.adu = bitcast double %.1421 to i64           ; 2 uses
  %.sroa.0116.4.extract.shift = lshr i64 %i.adu, 32
  %.sroa.0116.4.extract.trunc = trunc nuw i64 %.sroa.0116.4.extract.shift to i32
  %reass.sub905 = sub i32 %.sroa.0116.4.extract.trunc, %i.adb
  %i.adv = add i32 %reass.sub905, 112197632
  %.sroa.0116.4.insert.ext = zext i32 %i.adv to i64
  %.sroa.0116.4.insert.shift = shl nuw i64 %.sroa.0116.4.insert.ext, 32
  %.sroa.0116.4.insert.mask = and i64 %i.adu, 4294967295
  %.sroa.0116.4.insert.insert = or disjoint i64 %.sroa.0116.4.insert.shift, %.sroa.0116.4.insert.mask
  %i.adw = bitcast i64 %.sroa.0116.4.insert.insert to double
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fx
  %.3426 = phi double [ %.2425, %bb.ga ], [ %.1424, %bb.fx ]
  %.2422 = phi double [ %i.adw, %bb.ga ], [ %.0420, %bb.fx ]
  %i.adx = add nsw i32 %i.adb, -54525952
  %.sroa.0.4.insert.ext.i637 = zext i32 %i.adx to i64
  %.sroa.0.4.insert.shift.i638 = shl nuw i64 %.sroa.0.4.insert.ext.i637, 32
  %i.ady = bitcast i64 %.sroa.0.4.insert.shift.i638 to double
  %i.adz = fmul double %.2422, %i.ady
  %i.aea = load double, ptr %2, align 8, !tbaa !11
  %i.aeb = fadd double %i.aea, %i.adz             ; 2 uses
  store double %i.aeb, ptr %2, align 8, !tbaa !11
  %i.aec = bitcast double %i.aeb to i64           ; 2 uses
  %i.aed = lshr i64 %i.aec, 32
  %i.aee = trunc nuw i64 %i.aed to i32
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fw
  %.in = phi i64 [ %i.adi, %bb.fw ], [ %i.aec, %bb.gb ]
  %i.aef = phi i32 [ %i.adn, %bb.fw ], [ %i.aee, %bb.gb ] ; 2 uses
  %.4427 = phi double [ %.1424, %bb.fw ], [ %.3426, %bb.gb ] ; 2 uses
  %i.aeg = and i32 %i.aef, 2146435072
  %i.aeh = icmp eq i32 %i.adb, %i.aeg
  %or.cond577 = select i1 %or.cond33.not726, i1 %i.aeh, i1 false
  br i1 %or.cond577, label %bb.gd, label %bb.gg

bb.gd:                                            ; preds = %bb.gc
  %i.aei = fptosi double %.4427 to i32
  %i.aej = sitofp i32 %i.aei to double
  %i.aek = fsub double %.4427, %i.aej             ; 3 uses
  %i.ael = icmp eq i32 %i.vl, 0
  %i.aem = and i64 %.in, 4294967295
  %i.aen = icmp eq i64 %i.aem, 0
  %or.cond28.not729 = select i1 %i.ael, i1 %i.aen, i1 false
  %i.aeo = and i32 %i.aef, 1048575
  %.not554 = icmp eq i32 %i.aeo, 0
  %or.cond578 = select i1 %or.cond28.not729, i1 %.not554, i1 false
  br i1 %or.cond578, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aep = fcmp olt double %i.aek, f0x3FDFFFFF94A03595
  %i.aeq = fcmp ogt double %i.aek, f0x3FE0000035AFE535
  %or.cond30 = or i1 %i.aep, %i.aeq
  br i1 %or.cond30, label %cmp.exit618.thread, label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  %i.aer = fcmp olt double %i.aek, f0x3FCFFFFF94A03595
  br i1 %i.aer, label %cmp.exit618.thread, label %bb.gg

bb.gg:                                            ; preds = %bb.fv, %bb.ge, %bb.gf, %bb.gc
  %i.aes = getelementptr i8, ptr %.2406, i64 8
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !119 ; 2 uses
  %i.aeu = icmp sgt i32 %i.aet, 7
  br i1 %i.aeu, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  tail call void @PyMem_Free(ptr noundef nonnull %.2406) #11
  br label %Bfree.exit640

bb.gi:                                            ; preds = %bb.gg
  %i.aev = load ptr, ptr %i.pj, align 8, !tbaa !25
  %i.aew = getelementptr i8, ptr %i.aev, i64 11960
  %i.aex = sext i32 %i.aet to i64
  %i.aey = getelementptr [8 x i8], ptr %i.aew, i64 %i.aex ; 2 uses
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !27
  store ptr %i.aez, ptr %.2406, align 8, !tbaa !29
  store ptr %.2406, ptr %i.aey, align 8, !tbaa !27
  br label %Bfree.exit640

Bfree.exit640:                                    ; preds = %bb.gh, %bb.gi
  %.not.i641 = icmp eq ptr %.1398, null
  br i1 %.not.i641, label %Bfree.exit642, label %bb.gj

bb.gj:                                            ; preds = %Bfree.exit640
  %i.afa = getelementptr i8, ptr %.1398, i64 8
  %i.afb = load i32, ptr %i.afa, align 8, !tbaa !119 ; 2 uses
  %i.afc = icmp sgt i32 %i.afb, 7
  br i1 %i.afc, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  tail call void @PyMem_Free(ptr noundef nonnull %.1398) #11
  br label %Bfree.exit642

bb.gl:                                            ; preds = %bb.gj
  %i.afd = load ptr, ptr %i.pj, align 8, !tbaa !25
  %i.afe = getelementptr i8, ptr %i.afd, i64 11960
  %i.aff = sext i32 %i.afb to i64
  %i.afg = getelementptr [8 x i8], ptr %i.afe, i64 %i.aff ; 2 uses
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !27
  store ptr %i.afh, ptr %.1398, align 8, !tbaa !29
  store ptr %.1398, ptr %i.afg, align 8, !tbaa !27
  br label %Bfree.exit642

Bfree.exit642:                                    ; preds = %bb.gl, %bb.gk, %Bfree.exit640
  %i.afi = getelementptr i8, ptr %.2387, i64 8
  %i.afj = load i32, ptr %i.afi, align 8, !tbaa !119 ; 2 uses
  %i.afk = icmp sgt i32 %i.afj, 7
  br i1 %i.afk, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %Bfree.exit642
  tail call void @PyMem_Free(ptr noundef nonnull %.2387) #11
  br label %Bfree.exit644

bb.gn:                                            ; preds = %Bfree.exit642
  %i.afl = load ptr, ptr %i.pj, align 8, !tbaa !25
  %i.afm = getelementptr i8, ptr %i.afl, i64 11960
  %i.afn = sext i32 %i.afj to i64
  %i.afo = getelementptr [8 x i8], ptr %i.afm, i64 %i.afn ; 2 uses
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !27
  store ptr %i.afp, ptr %.2387, align 8, !tbaa !29
  store ptr %.2387, ptr %i.afo, align 8, !tbaa !27
  br label %Bfree.exit644

Bfree.exit644:                                    ; preds = %bb.gn, %bb.gm
  %i.afq = getelementptr i8, ptr %i.vi, i64 8
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !119 ; 2 uses
  %i.afs = icmp sgt i32 %i.afr, 7
  br i1 %i.afs, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %Bfree.exit644
  tail call void @PyMem_Free(ptr noundef nonnull %i.vi) #11
  br label %Bfree.exit646.backedge

Bfree.exit646.backedge:                           ; preds = %bb.go, %bb.gp
  br label %Bfree.exit646

bb.gp:                                            ; preds = %Bfree.exit644
  %i.aft = load ptr, ptr %i.pj, align 8, !tbaa !25
  %i.afu = getelementptr i8, ptr %i.aft, i64 11960
  %i.afv = sext i32 %i.afr to i64
  %i.afw = getelementptr [8 x i8], ptr %i.afu, i64 %i.afv ; 2 uses
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !27
  store ptr %i.afx, ptr %i.vi, align 8, !tbaa !29
  store ptr %i.vi, ptr %i.afw, align 8, !tbaa !27
  br label %Bfree.exit646.backedge

cmp.exit618.thread:                               ; preds = %bb.gf, %bb.ge, %bb.eg, %bb.ea, %bb.ef, %.thread677, %bb.er, %.thread679, %bb.eq, %bb.ep, %cmp.exit618, %bb.dy, %bb.dz, %.loopexit1162, %cmp.exit618.thread675._crit_edge, %bb.en, %bb.dw
  %.0449659 = phi i32 [ %.0449.lcssa11111121, %.loopexit1162 ], [ %.0449658672, %bb.dy ], [ %.0449658672, %bb.dz ], [ %.0449.lcssa11111121, %bb.dw ], [ %.0449658673, %bb.ep ], [ %.0449.lcssa11111121, %.thread677 ], [ %.0449658673, %cmp.exit618.thread675._crit_edge ], [ %.0449658672, %cmp.exit618 ], [ %.0449658672, %bb.ea ], [ %.0449.lcssa11111121, %bb.en ], [ %.0449.lcssa11111121, %bb.er ], [ %.0449.lcssa11111121, %.thread679 ], [ %.0449658672, %bb.ef ], [ %.0449.lcssa11111121, %bb.eq ], [ %.0449658672, %bb.eg ], [ %.0449.lcssa11111121, %bb.ge ], [ %.0449.lcssa11111121, %bb.gf ]
  %.2 = phi ptr [ %i.vi, %.loopexit1162 ], [ %i.vi, %bb.dy ], [ %i.vi, %bb.dz ], [ %i.vi, %bb.dw ], [ %.1384, %bb.ep ], [ %i.vi, %.thread677 ], [ %.1384, %cmp.exit618.thread675._crit_edge ], [ %i.xc, %cmp.exit618 ], [ %i.vi, %bb.ea ], [ %i.vi, %bb.en ], [ %i.vi, %bb.er ], [ %i.vi, %.thread679 ], [ %i.xc, %bb.ef ], [ %i.vi, %bb.eq ], [ %i.xc, %bb.eg ], [ %i.vi, %bb.ge ], [ %i.vi, %bb.gf ] ; 2 uses
  %i.afy = icmp sgt i32 %.0449659, %.04441137
  br i1 %i.afy, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.fp, %cmp.exit618.thread
  %.2686 = phi ptr [ %.2, %cmp.exit618.thread ], [ %i.vi, %bb.fp ] ; 2 uses
  %i.afz = call fastcc i32 @bigcomp(ptr noundef %2, ptr noundef %.1429, ptr noundef %3)
  %.not562 = icmp eq i32 %i.afz, 0
  br i1 %.not562, label %bb.gr, label %s2b.exit.thread

bb.gr:                                            ; preds = %bb.gq, %cmp.exit618.thread
  %.2685 = phi ptr [ %.2686, %bb.gq ], [ %.2, %cmp.exit618.thread ] ; 2 uses
  %.pre1029 = load double, ptr %2, align 8        ; 2 uses
  br i1 %i.qe, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aga = fmul double %.pre1029, f0x3950000000000000
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %bb.ae, %bb.ag, %bb.gs
  %.sink = phi double [ %i.aga, %bb.gs ], [ %i.et, %bb.ag ], [ %i.en, %bb.ae ], [ %i.ec, %bb.ac ] ; 2 uses
  %.3407.ph = phi ptr [ %.2406, %bb.gs ], [ null, %bb.ag ], [ null, %bb.ae ], [ null, %bb.ac ]
  %.2399.ph = phi ptr [ %.1398, %bb.gs ], [ null, %bb.ag ], [ null, %bb.ae ], [ null, %bb.ac ]
  %.0393.ph = phi ptr [ %.031.i, %bb.gs ], [ null, %bb.ag ], [ null, %bb.ae ], [ null, %bb.ac ]
  %.3388.ph = phi ptr [ %.2387, %bb.gs ], [ null, %bb.ag ], [ null, %bb.ae ], [ null, %bb.ac ]
  %.3.ph = phi ptr [ %.2685, %bb.gs ], [ null, %bb.ag ], [ null, %bb.ae ], [ null, %bb.ac ]
  store double %.sink, ptr %2, align 8, !tbaa !11
  br label %bb.gt

bb.gt:                                            ; preds = %.sink.split, %bb.gr, %bb.z, %bb.t
  %i.agb = phi double [ %.pre1029, %bb.gr ], [ 0.000000e+00, %bb.t ], [ %i.du, %bb.z ], [ %.sink, %.sink.split ] ; 2 uses
  %.3407 = phi ptr [ %.2406, %bb.gr ], [ null, %bb.t ], [ null, %bb.z ], [ %.3407.ph, %.sink.split ]
  %.2399 = phi ptr [ %.1398, %bb.gr ], [ null, %bb.t ], [ null, %bb.z ], [ %.2399.ph, %.sink.split ]
  %.0393 = phi ptr [ %.031.i, %bb.gr ], [ null, %bb.t ], [ null, %bb.z ], [ %.0393.ph, %.sink.split ]
  %.3388 = phi ptr [ %.2387, %bb.gr ], [ null, %bb.t ], [ null, %bb.z ], [ %.3388.ph, %.sink.split ]
  %.3 = phi ptr [ %.2685, %bb.gr ], [ null, %bb.t ], [ null, %bb.z ], [ %.3.ph, %.sink.split ]
  %i.agc = fneg double %i.agb
  %i.agd = select i1 %.1439, double %i.agb, double %i.agc
  br label %bb.gv

s2b.exit.thread:                                  ; preds = %.lr.ph49.i, %.lr.ph57.i, %bb.da, %bb.cl, %bb.ch, %bb.ca, %Bfree.exit, %bb.dn, %bb.dm, %bb.dk, %pow5mult.exit605, %bb.cx, %pow5mult.exit, %bb.cc, %Bfree.exit.i, %Bfree.exit.i601, %bb.bp, %bb.gq, %bb.eb
  %.031.i661 = phi ptr [ null, %.lr.ph57.i ], [ %.031.i, %bb.da ], [ %.031.i, %Bfree.exit.i ], [ %.031.i, %Bfree.exit.i601 ], [ null, %bb.bp ], [ %.031.i, %bb.gq ], [ %.031.i, %bb.eb ], [ %.031.i, %bb.cc ], [ %.031.i, %pow5mult.exit ], [ %.031.i, %bb.cx ], [ %.031.i, %pow5mult.exit605 ], [ %.031.i, %bb.dk ], [ %.031.i, %bb.dm ], [ %.031.i, %bb.dn ], [ %.031.i, %Bfree.exit ], [ %.031.i, %bb.ca ], [ %.031.i, %bb.ch ], [ %.031.i, %bb.cl ], [ null, %.lr.ph49.i ]
  %.4408 = phi ptr [ null, %.lr.ph57.i ], [ %.2406, %bb.da ], [ %i.rw, %Bfree.exit.i ], [ %.2406, %Bfree.exit.i601 ], [ null, %bb.bp ], [ %.2406, %bb.gq ], [ %.2406, %bb.eb ], [ %i.rw, %bb.cl ], [ %i.rw, %bb.ch ], [ null, %bb.ca ], [ null, %Bfree.exit ], [ %.2406, %bb.dn ], [ %.2406, %bb.dm ], [ %.2406, %bb.dk ], [ %.2406, %pow5mult.exit605 ], [ null, %bb.cx ], [ %i.rw, %pow5mult.exit ], [ null, %bb.cc ], [ null, %.lr.ph49.i ]
  %.3400 = phi ptr [ null, %.lr.ph57.i ], [ null, %bb.da ], [ %.1.i, %Bfree.exit.i ], [ null, %Bfree.exit.i601 ], [ null, %bb.bp ], [ %.1398, %bb.gq ], [ %.1398, %bb.eb ], [ %.1.i, %bb.cl ], [ %.1.i, %bb.ch ], [ null, %bb.ca ], [ %.1.i, %Bfree.exit ], [ %.1398, %bb.dn ], [ %.1398, %bb.dm ], [ null, %bb.dk ], [ null, %pow5mult.exit605 ], [ %.1.i, %bb.cx ], [ %.1.i, %pow5mult.exit ], [ %.1.i, %bb.cc ], [ null, %.lr.ph49.i ]
  %.4389 = phi ptr [ null, %.lr.ph57.i ], [ %.1386, %bb.da ], [ null, %Bfree.exit.i ], [ %.1386, %Bfree.exit.i601 ], [ null, %bb.bp ], [ %.2387, %bb.gq ], [ %.2387, %bb.eb ], [ null, %bb.cl ], [ null, %bb.ch ], [ null, %bb.ca ], [ %.120.i667, %Bfree.exit ], [ %.2387, %bb.dn ], [ null, %bb.dm ], [ %.1386, %bb.dk ], [ %.1386, %pow5mult.exit605 ], [ %.1386, %bb.cx ], [ null, %pow5mult.exit ], [ null, %bb.cc ], [ null, %.lr.ph49.i ]
  %.4 = phi ptr [ null, %.lr.ph57.i ], [ null, %bb.da ], [ null, %Bfree.exit.i ], [ null, %Bfree.exit.i601 ], [ null, %bb.bp ], [ %.2686, %bb.gq ], [ null, %bb.eb ], [ null, %bb.cc ], [ null, %pow5mult.exit ], [ null, %bb.cx ], [ null, %pow5mult.exit605 ], [ null, %bb.dk ], [ null, %bb.dm ], [ null, %bb.dn ], [ null, %Bfree.exit ], [ null, %bb.ca ], [ null, %bb.ch ], [ null, %bb.cl ], [ null, %.lr.ph49.i ]
  %i.age = tail call ptr @__errno_location() #12
  store i32 12, ptr %i.age, align 4, !tbaa !10
  br label %bb.gv

bb.gu:                                            ; preds = %.thread679, %bb.ep, %bb.fp, %bb.bi, %bb.aw
  %.5409 = phi ptr [ %.2406, %bb.ep ], [ %.2406, %.thread679 ], [ %.2406, %bb.fp ], [ null, %bb.aw ], [ null, %bb.bi ]
  %.4401 = phi ptr [ %.1398, %bb.ep ], [ %.1398, %.thread679 ], [ %.1398, %bb.fp ], [ null, %bb.aw ], [ null, %bb.bi ]
  %.1394 = phi ptr [ %.031.i, %bb.ep ], [ %.031.i, %.thread679 ], [ %.031.i, %bb.fp ], [ null, %bb.aw ], [ null, %bb.bi ]
  %.5390 = phi ptr [ %.2387, %bb.ep ], [ %.2387, %.thread679 ], [ %.2387, %bb.fp ], [ null, %bb.aw ], [ null, %bb.bi ]
  %.5 = phi ptr [ %.1384, %bb.ep ], [ %i.vi, %.thread679 ], [ %i.vi, %bb.fp ], [ null, %bb.aw ], [ null, %bb.bi ]
  %i.agf = select i1 %.1439, double 0.000000e+00, double -0.000000e+00
  br label %bb.gv

.loopexit733:                                     ; preds = %bb.fu, %._crit_edge889, %bb.al
  %.6410 = phi ptr [ null, %bb.al ], [ null, %._crit_edge889 ], [ %.2406, %bb.fu ]
  %.5402 = phi ptr [ null, %bb.al ], [ null, %._crit_edge889 ], [ %.1398, %bb.fu ]
  %.2395 = phi ptr [ null, %bb.al ], [ null, %._crit_edge889 ], [ %.031.i, %bb.fu ]
  %.6391 = phi ptr [ null, %bb.al ], [ null, %._crit_edge889 ], [ %.2387, %bb.fu ]
  %.6 = phi ptr [ null, %bb.al ], [ null, %._crit_edge889 ], [ %i.vi, %bb.fu ]
  %i.agg = tail call ptr @__errno_location() #12
  store i32 34, ptr %i.agg, align 4, !tbaa !10
  %i.agh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 2146435072, ptr %i.agh, align 4, !tbaa !11
  store i32 0, ptr %2, align 8, !tbaa !11
  %i.agi = load double, ptr %2, align 8           ; 2 uses
  %i.agj = fneg double %i.agi
  %i.agk = select i1 %.1439, double %i.agi, double %i.agj
  br label %bb.gv

bb.gv:                                            ; preds = %.loopexit733, %bb.gu, %s2b.exit.thread, %bb.gt
  %.7411 = phi ptr [ %.5409, %bb.gu ], [ %.3407, %bb.gt ], [ %.6410, %.loopexit733 ], [ %.4408, %s2b.exit.thread ] ; 5 uses
  %.6403 = phi ptr [ %.4401, %bb.gu ], [ %.2399, %bb.gt ], [ %.5402, %.loopexit733 ], [ %.3400, %s2b.exit.thread ] ; 5 uses
  %.3396 = phi ptr [ %.1394, %bb.gu ], [ %.0393, %bb.gt ], [ %.2395, %.loopexit733 ], [ %.031.i661, %s2b.exit.thread ] ; 5 uses
  %.7392 = phi ptr [ %.5390, %bb.gu ], [ %.3388, %bb.gt ], [ %.6391, %.loopexit733 ], [ %.4389, %s2b.exit.thread ] ; 5 uses
  %.7 = phi ptr [ %.5, %bb.gu ], [ %.3, %bb.gt ], [ %.6, %.loopexit733 ], [ %.4, %s2b.exit.thread ] ; 5 uses
  %.0380 = phi double [ %i.agf, %bb.gu ], [ %i.agd, %bb.gt ], [ %i.agk, %.loopexit733 ], [ -1.000000e+00, %s2b.exit.thread ] ; 3 uses
  %.not.i647 = icmp eq ptr %.7411, null
  br i1 %.not.i647, label %Bfree.exit648, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.agl = getelementptr i8, ptr %.7411, i64 8
  %i.agm = load i32, ptr %i.agl, align 8, !tbaa !119 ; 2 uses
  %i.agn = icmp sgt i32 %i.agm, 7
  br i1 %i.agn, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  tail call void @PyMem_Free(ptr noundef nonnull %.7411) #11
  br label %Bfree.exit648

bb.gy:                                            ; preds = %bb.gw
  %i.ago = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !25
  %i.agq = getelementptr i8, ptr %i.agp, i64 11960
  %i.agr = sext i32 %i.agm to i64
  %i.ags = getelementptr [8 x i8], ptr %i.agq, i64 %i.agr ; 2 uses
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !27
  store ptr %i.agt, ptr %.7411, align 8, !tbaa !29
  store ptr %.7411, ptr %i.ags, align 8, !tbaa !27
  br label %Bfree.exit648

Bfree.exit648:                                    ; preds = %bb.gv, %bb.gx, %bb.gy
  %.not.i649 = icmp eq ptr %.6403, null
  br i1 %.not.i649, label %Bfree.exit650, label %bb.gz

bb.gz:                                            ; preds = %Bfree.exit648
  %i.agu = getelementptr i8, ptr %.6403, i64 8
  %i.agv = load i32, ptr %i.agu, align 8, !tbaa !119 ; 2 uses
  %i.agw = icmp sgt i32 %i.agv, 7
  br i1 %i.agw, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  tail call void @PyMem_Free(ptr noundef nonnull %.6403) #11
  br label %Bfree.exit650

bb.hb:                                            ; preds = %bb.gz
  %i.agx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !25
  %i.agz = getelementptr i8, ptr %i.agy, i64 11960
  %i.aha = sext i32 %i.agv to i64
  %i.ahb = getelementptr [8 x i8], ptr %i.agz, i64 %i.aha ; 2 uses
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !27
  store ptr %i.ahc, ptr %.6403, align 8, !tbaa !29
  store ptr %.6403, ptr %i.ahb, align 8, !tbaa !27
  br label %Bfree.exit650

Bfree.exit650:                                    ; preds = %Bfree.exit648, %bb.ha, %bb.hb
  %.not.i651 = icmp eq ptr %.7392, null
  br i1 %.not.i651, label %Bfree.exit652, label %bb.hc

bb.hc:                                            ; preds = %Bfree.exit650
  %i.ahd = getelementptr i8, ptr %.7392, i64 8
  %i.ahe = load i32, ptr %i.ahd, align 8, !tbaa !119 ; 2 uses
  %i.ahf = icmp sgt i32 %i.ahe, 7
  br i1 %i.ahf, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  tail call void @PyMem_Free(ptr noundef nonnull %.7392) #11
  br label %Bfree.exit652

bb.he:                                            ; preds = %bb.hc
  %i.ahg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !25
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 11960
  %i.ahj = sext i32 %i.ahe to i64
  %i.ahk = getelementptr [8 x i8], ptr %i.ahi, i64 %i.ahj ; 2 uses
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !27
  store ptr %i.ahl, ptr %.7392, align 8, !tbaa !29
  store ptr %.7392, ptr %i.ahk, align 8, !tbaa !27
  br label %Bfree.exit652

Bfree.exit652:                                    ; preds = %Bfree.exit650, %bb.hd, %bb.he
  %.not.i653 = icmp eq ptr %.3396, null
  br i1 %.not.i653, label %Bfree.exit654, label %bb.hf

bb.hf:                                            ; preds = %Bfree.exit652
  %i.ahm = getelementptr i8, ptr %.3396, i64 8
  %i.ahn = load i32, ptr %i.ahm, align 8, !tbaa !119 ; 2 uses
  %i.aho = icmp sgt i32 %i.ahn, 7
  br i1 %i.aho, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  tail call void @PyMem_Free(ptr noundef nonnull %.3396) #11
  br label %Bfree.exit654

bb.hh:                                            ; preds = %bb.hf
  %i.ahp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !25
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 11960
  %i.ahs = sext i32 %i.ahn to i64
  %i.aht = getelementptr [8 x i8], ptr %i.ahr, i64 %i.ahs ; 2 uses
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !27
  store ptr %i.ahu, ptr %.3396, align 8, !tbaa !29
  store ptr %.3396, ptr %i.aht, align 8, !tbaa !27
  br label %Bfree.exit654

Bfree.exit654:                                    ; preds = %Bfree.exit652, %bb.hg, %bb.hh
  %.not.i655 = icmp eq ptr %.7, null
  br i1 %.not.i655, label %Bfree.exit656, label %bb.hi

bb.hi:                                            ; preds = %Bfree.exit654
  %i.ahv = getelementptr i8, ptr %.7, i64 8
  %i.ahw = load i32, ptr %i.ahv, align 8, !tbaa !119 ; 2 uses
  %i.ahx = icmp sgt i32 %i.ahw, 7
  br i1 %i.ahx, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  tail call void @PyMem_Free(ptr noundef nonnull %.7) #11
  br label %Bfree.exit656

bb.hk:                                            ; preds = %bb.hi
  %i.ahy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !25
  %i.aia = getelementptr i8, ptr %i.ahz, i64 11960
  %i.aib = sext i32 %i.ahw to i64
  %i.aic = getelementptr [8 x i8], ptr %i.aia, i64 %i.aib ; 2 uses
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !27
  store ptr %i.aid, ptr %.7, align 8, !tbaa !29
  store ptr %.7, ptr %i.aic, align 8, !tbaa !27
  br label %Bfree.exit656

Bfree.exit656:                                    ; preds = %bb.i, %bb.h, %bb.l, %bb.k, %Bfree.exit654, %bb.hj, %bb.hk
  %.0380694701712717722 = phi double [ %.0380, %bb.hk ], [ %.0380, %Bfree.exit654 ], [ %.0380, %bb.hj ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret double %.0380694701712717722
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare i32 @llvm.get.rounding() #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @Balloc(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = icmp slt i32 %0, 8
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 11960
  %i.e = sext i32 %0 to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  store ptr %i.h, ptr %i.f, align 8, !tbaa !27
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = shl nuw i32 1, %0                        ; 2 uses
end_hunk_1
