Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/dtoa?download=true
inline.NumInlined: 94
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Py_dg_strtod:bb.a

bb.g:                                             ; preds = %._crit_edge848, %._crit_edge837
  %.6472 = phi i32 [ %.5471.lcssa, %._crit_edge848 ], [ %.2468, %._crit_edge837 ]
  %.1446 = phi i1 [ %.0445, %._crit_edge848 ], [ %i.j, %._crit_edge837 ]
  %.6436 = phi ptr [ %.5435.lcssa, %._crit_edge848 ], [ %.2432.lcssa, %._crit_edge837 ] ; 4 uses
  %.1429 = phi ptr [ %.0428, %._crit_edge848 ], [ %.1431.lcssa, %._crit_edge837 ] ; 33 uses
  %.0382 = phi i64 [ %i.ar, %._crit_edge848 ], [ %i.s, %._crit_edge837 ] ; 3 uses
  %.1 = phi i64 [ %i.as, %._crit_edge848 ], [ 0, %._crit_edge837 ] ; 2 uses
  %i.at = icmp ne i64 %.0382, 0                   ; 2 uses
  %or.cond = or i1 %.1446, %i.at
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not529 = icmp eq ptr %1, null
  br i1 %.not529, label %Bfree.exit656, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr %1, align 8, !tbaa !15
  br label %Bfree.exit656

bb.j:                                             ; preds = %bb.g
  %i.au = icmp ugt i64 %.0382, 1000000000
  %i.av = icmp ugt i64 %.1, 1000000000
  %or.cond3 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond3, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not567 = icmp eq ptr %1, null
  br i1 %.not567, label %Bfree.exit656, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %0, ptr %1, align 8, !tbaa !15
  br label %Bfree.exit656

bb.m:                                             ; preds = %bb.j
  %i.aw = trunc nuw nsw i64 %.0382 to i32         ; 5 uses
  %i.ax = trunc nuw nsw i64 %.1 to i32            ; 2 uses
  %i.ay = sub nsw i32 %i.aw, %i.ax                ; 2 uses
  %i.az = and i32 %.6472, -33
  %or.cond5 = icmp eq i32 %i.az, 69
  br i1 %or.cond5, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %.6436, i64 1     ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11  ; 2 uses
  switch i8 %i.bb, label %bb.q [
    i8 45, label %bb.o
    i8 43, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = phi i1 [ false, %bb.o ], [ true, %bb.n ]
  %i.bd = getelementptr i8, ptr %.6436, i64 2     ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.7473.in = phi i8 [ %i.bb, %bb.n ], [ %i.be, %bb.p ] ; 2 uses
  %.1459 = phi i1 [ true, %bb.n ], [ %i.bc, %bb.p ]
  %.7437 = phi ptr [ %i.ba, %bb.n ], [ %i.bd, %bb.p ] ; 3 uses
  %i.bf = icmp eq i8 %.7473.in, 48
  br i1 %i.bf, label %.lr.ph853, label %._crit_edge854

.lr.ph853:                                        ; preds = %bb.q, %.lr.ph853
  %.8851 = phi ptr [ %i.bg, %.lr.ph853 ], [ %.7437, %bb.q ]
  %i.bg = getelementptr i8, ptr %.8851, i64 1     ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11  ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 48
  br i1 %i.bi, label %.lr.ph853, label %._crit_edge854, !llvm.loop !127

._crit_edge854:                                   ; preds = %.lr.ph853, %bb.q
  %.8474.in.lcssa = phi i8 [ %.7473.in, %bb.q ], [ %i.bh, %.lr.ph853 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7437, %bb.q ], [ %i.bg, %.lr.ph853 ] ; 5 uses
  %i.bj = icmp ne ptr %.8.lcssa, %.7437
  %i.bk = add i8 %.8474.in.lcssa, -48
  %i.bl = icmp ult i8 %i.bk, 10
  br i1 %i.bl, label %.lr.ph861, label %._crit_edge862

.lr.ph861:                                        ; preds = %._crit_edge854, %.lr.ph861
  %.0412859 = phi i32 [ %i.bo, %.lr.ph861 ], [ 0, %._crit_edge854 ]
  %.9858 = phi ptr [ %i.bp, %.lr.ph861 ], [ %.8.lcssa, %._crit_edge854 ]
  %.9475.in857 = phi i8 [ %i.bq, %.lr.ph861 ], [ %.8474.in.lcssa, %._crit_edge854 ]
  %.9475 = zext nneg i8 %.9475.in857 to i32
  %i.bm = mul i32 %.0412859, 10
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
  br i1 %i.at, label %.lr.ph1398, label %bb.gt

.preheader739:                                    ; preds = %.lr.ph1398
  %i.cc = icmp sgt i32 %.04491397, 1
  br i1 %i.cc, label %.lr.ph1398, label %._crit_edge870.thread, !llvm.loop !129

.lr.ph1398:                                       ; preds = %bb.t, %.preheader739
  %.04491397 = phi i32 [ %i.cd, %.preheader739 ], [ %i.aw, %bb.t ] ; 13 uses
  %i.cd = add nsw i32 %.04491397, -1              ; 2 uses
  %.not533 = icmp sgt i32 %.04491397, %spec.select
  %i.ce = select i1 %.not533, i32 %.04491397, i32 %i.cd
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

.lr.ph869.preheader:                              ; preds = %.lr.ph1398
  %i.cj = sub nsw i32 %i.aw, %.04491397
  %i.ck = add i32 %i.cj, %i.ca                    ; 4 uses
  %spec.select5681115 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %.04491397) ; 5 uses
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
  %i.cn = icmp sge i32 %.2451865, %spec.select5681115
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
  %i.cy = icmp sge i32 %.2451865, %spec.select5681115
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
  %exitcond.not = icmp eq i32 %i.dh, %.04491397
  br i1 %exitcond.not, label %._crit_edge870, label %.lr.ph869, !llvm.loop !130

._crit_edge870:                                   ; preds = %bb.x, %bb.v
  %.0415.lcssa.ph = phi i32 [ %.1416, %bb.x ], [ %.0415866, %bb.v ] ; 4 uses
  %.0413.lcssa.ph = phi i32 [ %.1414, %bb.x ], [ %.0413867, %bb.v ]
  %i.di = tail call i32 @llvm.smin.i32(i32 %.04491397, i32 16) ; 4 uses
  %i.dj = uitofp i32 %.0415.lcssa.ph to double    ; 3 uses
  store double %i.dj, ptr %2, align 8, !tbaa !11
  %i.dk = icmp sgt i32 %.04491397, 9
  br i1 %i.dk, label %bb.y, label %.thread

bb.y:                                             ; preds = %._crit_edge870
  %i.dl = uitofp i32 %.0413.lcssa.ph to double
  %i.dm = zext nneg i32 %i.di to i64
  %i.dn = getelementptr [8 x i8], ptr @tens, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -72
  %i.dp = load double, ptr %i.do, align 8, !tbaa !19
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dj, double %i.dl) ; 3 uses
  store double %i.dq, ptr %2, align 8, !tbaa !11
  %i.dr = icmp samesign ult i32 %.04491397, 16
  br i1 %i.dr, label %.thread, label %bb.ah

.thread:                                          ; preds = %._crit_edge870.thread, %._crit_edge870, %bb.y
  %i.ds = phi i32 [ %i.di, %._crit_edge870 ], [ %i.di, %bb.y ], [ 0, %._crit_edge870.thread ] ; 3 uses
  %.0415.lcssa1129 = phi i32 [ %.0415.lcssa.ph, %._crit_edge870 ], [ %.0415.lcssa.ph, %bb.y ], [ 0, %._crit_edge870.thread ] ; 3 uses
  %.0449.lcssa11161127 = phi i32 [ %.04491397, %._crit_edge870 ], [ %.04491397, %bb.y ], [ 0, %._crit_edge870.thread ] ; 5 uses
  %i.dt = phi i32 [ %i.ck, %._crit_edge870 ], [ %i.ck, %bb.y ], [ %i.ci, %._crit_edge870.thread ] ; 11 uses
  %spec.select56811191125 = phi i32 [ %spec.select5681115, %._crit_edge870 ], [ %spec.select5681115, %bb.y ], [ %spec.select568, %._crit_edge870.thread ] ; 3 uses
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
  %i.ed = sub nsw i32 37, %.0449.lcssa11161127
  %.not536 = icmp samesign ugt i32 %i.dt, %i.ed
  br i1 %.not536, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = sub nuw nsw i32 15, %.0449.lcssa11161127 ; 2 uses
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
  %.0415.lcssa1128 = phi i32 [ %.0415.lcssa1129, %bb.ad ], [ %.0415.lcssa1129, %bb.af ], [ %.0415.lcssa1129, %.thread ], [ %.0415.lcssa.ph, %bb.y ] ; 3 uses
  %.0449.lcssa11161126 = phi i32 [ %.0449.lcssa11161127, %bb.ad ], [ %.0449.lcssa11161127, %bb.af ], [ %.0449.lcssa11161127, %.thread ], [ %.04491397, %bb.y ] ; 20 uses
  %i.ev = phi i32 [ %i.dt, %bb.ad ], [ %i.dt, %bb.af ], [ %i.dt, %.thread ], [ %i.ck, %bb.y ] ; 4 uses
  %spec.select56811191124 = phi i32 [ %spec.select56811191125, %bb.ad ], [ %spec.select56811191125, %bb.af ], [ %spec.select56811191125, %.thread ], [ %spec.select5681115, %bb.y ] ; 20 uses
  %i.ew = phi double [ %i.du, %bb.ad ], [ %i.du, %bb.af ], [ %i.du, %.thread ], [ %i.dq, %bb.y ] ; 4 uses
  %i.ex = sub nsw i32 %.0449.lcssa11161126, %i.eu
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
end_hunk_0
begin_hunk_1_@_Py_dg_strtod:bb.a
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

bb.bi:                                            ; preds = %thread-pre-split, %._crit_edge881
  %i.hr = phi double [ %.pr, %thread-pre-split ], [ %.lcssa876, %._crit_edge881 ]
  %i.hs = fcmp une double %i.hr, 0.000000e+00
  br i1 %i.hs, label %bb.bj, label %bb.gu

bb.bj:                                            ; preds = %bb.as, %bb.bi, %bb.av, %bb.ak, %bb.ar, %bb.aq
  %i.ht = phi i32 [ 0, %bb.as ], [ %i.gs, %bb.bi ], [ 0, %bb.av ], [ 0, %bb.ak ], [ 0, %bb.ar ], [ 0, %bb.aq ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %.0449.lcssa11161126, ptr %i.hu, align 4, !tbaa !21
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %spec.select56811191124, ptr %i.hv, align 4, !tbaa !22
  %i.hw = icmp sgt i32 %.0449.lcssa11161126, 40
  br i1 %i.hw, label %.preheader738.preheader, label %.loopexit736

.preheader738.preheader:                          ; preds = %bb.bj
  %.not544 = icmp slt i32 %spec.select, 18
  %i.hx = select i1 %.not544, i64 18, i64 17
  %i.hy = getelementptr i8, ptr %.1429, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !11
  %.not545 = icmp eq i8 %i.hz, 48
  br i1 %.not545, label %.preheader738.1, label %.thread1130

.preheader738.1:                                  ; preds = %.preheader738.preheader
  %.not544.1 = icmp slt i32 %spec.select56811191124, 17
  %i.ia = select i1 %.not544.1, i64 17, i64 16
  %i.ib = getelementptr i8, ptr %.1429, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !11
  %.not545.1 = icmp eq i8 %i.ic, 48
  br i1 %.not545.1, label %.preheader738.2, label %.thread1130

.preheader738.2:                                  ; preds = %.preheader738.1
  %.not544.2 = icmp slt i32 %spec.select56811191124, 16
  %i.id = select i1 %.not544.2, i64 16, i64 15
  %i.ie = getelementptr i8, ptr %.1429, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !11
  %.not545.2 = icmp eq i8 %i.if, 48
  br i1 %.not545.2, label %.preheader738.3, label %.thread1130

.preheader738.3:                                  ; preds = %.preheader738.2
  %.not544.3 = icmp slt i32 %spec.select56811191124, 15
  %i.ig = select i1 %.not544.3, i64 15, i64 14
  %i.ih = getelementptr i8, ptr %.1429, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !11
  %.not545.3 = icmp eq i8 %i.ii, 48
  br i1 %.not545.3, label %.preheader738.4, label %.thread1130

.preheader738.4:                                  ; preds = %.preheader738.3
  %.not544.4 = icmp slt i32 %spec.select56811191124, 14
  %i.ij = select i1 %.not544.4, i64 14, i64 13
  %i.ik = getelementptr i8, ptr %.1429, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !11
  %.not545.4 = icmp eq i8 %i.il, 48
  br i1 %.not545.4, label %.preheader738.5, label %.thread1130

.preheader738.5:                                  ; preds = %.preheader738.4
  %.not544.5 = icmp slt i32 %spec.select56811191124, 13
  %i.im = select i1 %.not544.5, i64 13, i64 12
  %i.in = getelementptr i8, ptr %.1429, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !11
  %.not545.5 = icmp eq i8 %i.io, 48
  br i1 %.not545.5, label %.preheader738.6, label %.thread1130

.preheader738.6:                                  ; preds = %.preheader738.5
  %.not544.6 = icmp slt i32 %spec.select56811191124, 12
  %i.ip = select i1 %.not544.6, i64 12, i64 11
  %i.iq = getelementptr i8, ptr %.1429, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !11
  %.not545.6 = icmp eq i8 %i.ir, 48
  br i1 %.not545.6, label %.preheader738.7, label %.thread1130

.preheader738.7:                                  ; preds = %.preheader738.6
  %.not544.7 = icmp slt i32 %spec.select56811191124, 11
  %i.is = select i1 %.not544.7, i64 11, i64 10
  %i.it = getelementptr i8, ptr %.1429, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !11
  %.not545.7 = icmp eq i8 %i.iu, 48
  br i1 %.not545.7, label %.preheader738.8, label %.thread1130

.preheader738.8:                                  ; preds = %.preheader738.7
  %.not544.8 = icmp slt i32 %spec.select56811191124, 10
  %i.iv = select i1 %.not544.8, i64 10, i64 9
  %i.iw = getelementptr i8, ptr %.1429, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !11
  %.not545.8 = icmp eq i8 %i.ix, 48
  br i1 %.not545.8, label %.preheader738.9, label %.thread1130

.preheader738.9:                                  ; preds = %.preheader738.8
  %.not544.9 = icmp slt i32 %spec.select56811191124, 9
  %i.iy = select i1 %.not544.9, i64 9, i64 8
  %i.iz = getelementptr i8, ptr %.1429, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !11
  %.not545.9 = icmp eq i8 %i.ja, 48
  br i1 %.not545.9, label %.preheader738.10, label %.thread1130

.preheader738.10:                                 ; preds = %.preheader738.9
  %.not544.10 = icmp slt i32 %spec.select56811191124, 8
  %i.jb = select i1 %.not544.10, i64 8, i64 7
  %i.jc = getelementptr i8, ptr %.1429, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !11
  %.not545.10 = icmp eq i8 %i.jd, 48
  br i1 %.not545.10, label %.preheader738.11, label %.preheader737

.preheader738.11:                                 ; preds = %.preheader738.10
  %.not544.11 = icmp slt i32 %spec.select56811191124, 7
  %i.je = select i1 %.not544.11, i64 7, i64 6
  %i.jf = getelementptr i8, ptr %.1429, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !11
  %.not545.11 = icmp eq i8 %i.jg, 48
  br i1 %.not545.11, label %.preheader738.12, label %.preheader737

.preheader738.12:                                 ; preds = %.preheader738.11
  %.not544.12 = icmp slt i32 %spec.select56811191124, 6
  %i.jh = select i1 %.not544.12, i64 6, i64 5
  %i.ji = getelementptr i8, ptr %.1429, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !11
  %.not545.12 = icmp eq i8 %i.jj, 48
  br i1 %.not545.12, label %.preheader738.13, label %.preheader737

.preheader738.13:                                 ; preds = %.preheader738.12
  %.not544.13 = icmp slt i32 %spec.select56811191124, 5
  %i.jk = select i1 %.not544.13, i64 5, i64 4
  %i.jl = getelementptr i8, ptr %.1429, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !11
  %.not545.13 = icmp eq i8 %i.jm, 48
  br i1 %.not545.13, label %.preheader738.14, label %.preheader737

.preheader738.14:                                 ; preds = %.preheader738.13
  %.not544.14 = icmp slt i32 %spec.select56811191124, 4
  %i.jn = select i1 %.not544.14, i64 4, i64 3
  %i.jo = getelementptr i8, ptr %.1429, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !11
  %.not545.14 = icmp eq i8 %i.jp, 48
  br i1 %.not545.14, label %.preheader738.15, label %.preheader737

.preheader738.15:                                 ; preds = %.preheader738.14
  %.not544.15 = icmp slt i32 %spec.select56811191124, 3
  %i.jq = select i1 %.not544.15, i64 3, i64 2
  %i.jr = getelementptr i8, ptr %.1429, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !11
  %.not545.15 = icmp eq i8 %i.js, 48
  br i1 %.not545.15, label %.preheader738.16, label %.preheader737

.preheader738.16:                                 ; preds = %.preheader738.15
  %.not544.16 = icmp slt i32 %spec.select56811191124, 2
  %i.jt = select i1 %.not544.16, i64 2, i64 1
  %i.ju = getelementptr i8, ptr %.1429, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !11
  %.not545.16 = icmp eq i8 %i.jv, 48
  br i1 %.not545.16, label %.preheader738.17, label %.preheader737

.preheader738.17:                                 ; preds = %.preheader738.16
  %i.jw = load i8, ptr %.1429, align 1, !tbaa !11
  %.not545.17 = icmp ne i8 %i.jw, 48
  %spec.select1285 = zext i1 %.not545.17 to i32
  br label %.preheader737

.thread1130:                                      ; preds = %.preheader738.preheader, %.preheader738.9, %.preheader738.1, %.preheader738.2, %.preheader738.3, %.preheader738.4, %.preheader738.5, %.preheader738.6, %.preheader738.7, %.preheader738.8
  %.3452.lcssa.ph = phi i32 [ 10, %.preheader738.8 ], [ 11, %.preheader738.7 ], [ 12, %.preheader738.6 ], [ 13, %.preheader738.5 ], [ 14, %.preheader738.4 ], [ 15, %.preheader738.3 ], [ 16, %.preheader738.2 ], [ 17, %.preheader738.1 ], [ 9, %.preheader738.9 ], [ 18, %.preheader738.preheader ] ; 3 uses
  %i.jx = sub nuw nsw i32 %.0449.lcssa11161126, %.3452.lcssa.ph
  %i.jy = add i32 %i.jx, %i.ev
  %spec.select5691132 = tail call i32 @llvm.smin.i32(i32 %spec.select56811191124, i32 %.3452.lcssa.ph)
  br label %.loopexit736

.preheader737:                                    ; preds = %.preheader738.17, %.preheader738.10, %.preheader738.11, %.preheader738.12, %.preheader738.13, %.preheader738.14, %.preheader738.15, %.preheader738.16
  %.3452.lcssa = phi i32 [ 6, %.preheader738.12 ], [ 8, %.preheader738.10 ], [ 2, %.preheader738.16 ], [ 7, %.preheader738.11 ], [ %spec.select1285, %.preheader738.17 ], [ 3, %.preheader738.15 ], [ 5, %.preheader738.13 ], [ 4, %.preheader738.14 ] ; 7 uses
  %i.jz = sub nuw nsw i32 %.0449.lcssa11161126, %.3452.lcssa
  %i.ka = add i32 %i.jz, %i.ev                    ; 3 uses
  %spec.select569 = tail call i32 @llvm.smin.i32(i32 %spec.select56811191124, i32 %.3452.lcssa) ; 8 uses
  %i.kb = icmp sgt i32 %spec.select569, 0
  br i1 %i.kb, label %.lr.ph894.preheader, label %.preheader

.lr.ph894.preheader:                              ; preds = %.preheader737
  %wide.trip.count.a = zext nneg i32 %spec.select569 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.a, 3       ; 3 uses
  %i.kc = icmp ult i32 %spec.select569, 4
  br i1 %i.kc, label %.lr.ph894.epil.preheader, label %.lr.ph894.preheader.new

.lr.ph894.preheader.new:                          ; preds = %.lr.ph894.preheader
  %unroll_iter = and i64 %wide.trip.count.a, 2147483644
  br label %.lr.ph894

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph894
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph894.epil.preheader

.lr.ph894.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph894.preheader
  %indvars.iv1018.epil.init = phi i64 [ 0, %.lr.ph894.preheader ], [ %indvars.iv.next1019.3, %.preheader.loopexit.unr-lcssa ]
  %.2417893.epil.init = phi i32 [ 0, %.lr.ph894.preheader ], [ %i.lu, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1510 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1510)
  br label %.lr.ph894.epil

.lr.ph894.epil:                                   ; preds = %.lr.ph894.epil, %.lr.ph894.epil.preheader
  %indvars.iv1018.epil = phi i64 [ %indvars.iv1018.epil.init, %.lr.ph894.epil.preheader ], [ %indvars.iv.next1019.epil, %.lr.ph894.epil ] ; 2 uses
  %.2417893.epil = phi i32 [ %.2417893.epil.init, %.lr.ph894.epil.preheader ], [ %i.ki, %.lr.ph894.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph894.epil.preheader ], [ %epil.iter.next, %.lr.ph894.epil ]
  %i.kd = mul i32 %.2417893.epil, 10
  %i.ke = getelementptr i8, ptr %.1429, i64 %indvars.iv1018.epil
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !11
  %i.kg = sext i8 %i.kf to i32
  %i.kh = add i32 %i.kd, -48
  %i.ki = add i32 %i.kh, %i.kg                    ; 2 uses
  %indvars.iv.next1019.epil = add nuw nsw i64 %indvars.iv1018.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph894.epil, !llvm.loop !133

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph894.epil, %.preheader737
  %.5454.lcssa = phi i32 [ 0, %.preheader737 ], [ %spec.select569, %.lr.ph894.epil ], [ %spec.select569, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.2417.lcssa = phi i32 [ 0, %.preheader737 ], [ %i.lu, %.preheader.loopexit.unr-lcssa ], [ %i.ki, %.lr.ph894.epil ] ; 3 uses
  %i.kj = icmp samesign ult i32 %.5454.lcssa, %.3452.lcssa
  br i1 %i.kj, label %.lr.ph899.preheader, label %._crit_edge.thread.i

.lr.ph899.preheader:                              ; preds = %.preheader
  %i.kk = zext nneg i32 %.5454.lcssa to i64       ; 4 uses
  %wide.trip.count1025 = zext nneg i32 %.3452.lcssa to i64 ; 3 uses
  %i.kl = sub nsw i64 %wide.trip.count1025, %i.kk
  %xtraiter1511 = and i64 %i.kl, 3                ; 2 uses
  %lcmp.mod1512.not = icmp eq i64 %xtraiter1511, 0
  br i1 %lcmp.mod1512.not, label %.lr.ph899.prol.loopexit, label %.lr.ph899.prol

.lr.ph899.prol:                                   ; preds = %.lr.ph899.preheader, %.lr.ph899.prol
  %indvars.iv1022.prol = phi i64 [ %indvars.iv.next1023.prol, %.lr.ph899.prol ], [ %i.kk, %.lr.ph899.preheader ]
  %.3418898.prol = phi i32 [ %i.kr, %.lr.ph899.prol ], [ %.2417.lcssa, %.lr.ph899.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph899.prol ], [ 0, %.lr.ph899.preheader ]
  %i.km = mul i32 %.3418898.prol, 10
  %indvars.iv.next1023.prol = add nuw nsw i64 %indvars.iv1022.prol, 1 ; 3 uses
  %i.kn = getelementptr i8, ptr %.1429, i64 %indvars.iv.next1023.prol
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !11
  %i.kp = sext i8 %i.ko to i32
  %i.kq = add i32 %i.km, -48
  %i.kr = add i32 %i.kq, %i.kp                    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1511
  br i1 %prol.iter.cmp.not, label %.lr.ph899.prol.loopexit, label %.lr.ph899.prol, !llvm.loop !134

.lr.ph899.prol.loopexit:                          ; preds = %.lr.ph899.prol, %.lr.ph899.preheader
  %.lcssa1491.unr = phi i32 [ poison, %.lr.ph899.preheader ], [ %i.kr, %.lr.ph899.prol ]
  %indvars.iv1022.unr = phi i64 [ %i.kk, %.lr.ph899.preheader ], [ %indvars.iv.next1023.prol, %.lr.ph899.prol ]
  %.3418898.unr = phi i32 [ %.2417.lcssa, %.lr.ph899.preheader ], [ %i.kr, %.lr.ph899.prol ]
  %i.ks = sub nsw i64 %i.kk, %wide.trip.count1025
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %._crit_edge.thread.i, label %.lr.ph899

.lr.ph894:                                        ; preds = %.lr.ph894, %.lr.ph894.preheader.new
  %indvars.iv1018 = phi i64 [ 0, %.lr.ph894.preheader.new ], [ %indvars.iv.next1019.3, %.lr.ph894 ] ; 5 uses
  %.2417893 = phi i32 [ 0, %.lr.ph894.preheader.new ], [ %i.lu, %.lr.ph894 ]
  %niter = phi i64 [ 0, %.lr.ph894.preheader.new ], [ %niter.next.3, %.lr.ph894 ]
  %i.ku = mul i32 %.2417893, 10
  %i.kv = getelementptr i8, ptr %.1429, i64 %indvars.iv1018
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !11
  %i.kx = sext i8 %i.kw to i32
  %i.ky = add i32 %i.ku, -48
  %i.kz = add i32 %i.ky, %i.kx
  %i.la = mul i32 %i.kz, 10
  %i.lb = getelementptr i8, ptr %.1429, i64 %indvars.iv1018
  %i.lc = getelementptr i8, ptr %i.lb, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !11
  %i.le = sext i8 %i.ld to i32
  %i.lf = add i32 %i.la, -48
  %i.lg = add i32 %i.lf, %i.le
  %i.lh = mul i32 %i.lg, 10
  %i.li = getelementptr i8, ptr %.1429, i64 %indvars.iv1018
  %i.lj = getelementptr i8, ptr %i.li, i64 2
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !11
  %i.ll = sext i8 %i.lk to i32
  %i.lm = add i32 %i.lh, -48
  %i.ln = add i32 %i.lm, %i.ll
  %i.lo = mul i32 %i.ln, 10
  %i.lp = getelementptr i8, ptr %.1429, i64 %indvars.iv1018
  %i.lq = getelementptr i8, ptr %i.lp, i64 3
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !11
  %i.ls = sext i8 %i.lr to i32
  %i.lt = add i32 %i.lo, -48
  %i.lu = add i32 %i.lt, %i.ls                    ; 3 uses
  %indvars.iv.next1019.3 = add nuw nsw i64 %indvars.iv1018, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph894, !llvm.loop !135

.lr.ph899:                                        ; preds = %.lr.ph899.prol.loopexit, %.lr.ph899
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023.3, %.lr.ph899 ], [ %indvars.iv1022.unr, %.lr.ph899.prol.loopexit ] ; 4 uses
  %.3418898 = phi i32 [ %i.mv, %.lr.ph899 ], [ %.3418898.unr, %.lr.ph899.prol.loopexit ]
  %i.lv = mul i32 %.3418898, 10
  %i.lw = getelementptr i8, ptr %.1429, i64 %indvars.iv1022
  %i.lx = getelementptr i8, ptr %i.lw, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !11
  %i.lz = sext i8 %i.ly to i32
  %i.ma = add i32 %i.lv, -48
  %i.mb = add i32 %i.ma, %i.lz
  %i.mc = mul i32 %i.mb, 10
  %i.md = getelementptr i8, ptr %.1429, i64 %indvars.iv1022
  %i.me = getelementptr i8, ptr %i.md, i64 2
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !11
  %i.mg = sext i8 %i.mf to i32
  %i.mh = add i32 %i.mc, -48
  %i.mi = add i32 %i.mh, %i.mg
  %i.mj = mul i32 %i.mi, 10
  %i.mk = getelementptr i8, ptr %.1429, i64 %indvars.iv1022
  %i.ml = getelementptr i8, ptr %i.mk, i64 3
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !11
  %i.mn = sext i8 %i.mm to i32
  %i.mo = add i32 %i.mj, -48
  %i.mp = add i32 %i.mo, %i.mn
  %i.mq = mul i32 %i.mp, 10
  %indvars.iv.next1023.3 = add nuw nsw i64 %indvars.iv1022, 4 ; 3 uses
  %i.mr = getelementptr i8, ptr %.1429, i64 %indvars.iv.next1023.3
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !11
  %i.mt = sext i8 %i.ms to i32
  %i.mu = add i32 %i.mq, -48
  %i.mv = add i32 %i.mu, %i.mt                    ; 2 uses
  %exitcond1026.not.3 = icmp eq i64 %indvars.iv.next1023.3, %wide.trip.count1025
  br i1 %exitcond1026.not.3, label %._crit_edge.thread.i, label %.lr.ph899, !llvm.loop !136

.loopexit736:                                     ; preds = %.thread1130, %bb.bj
  %.3465 = phi i32 [ %i.ev, %bb.bj ], [ %i.jy, %.thread1130 ] ; 3 uses
  %.0444 = phi i32 [ %.0449.lcssa11161126, %bb.bj ], [ %.3452.lcssa.ph, %.thread1130 ] ; 5 uses
  %.3443 = phi i32 [ %spec.select56811191124, %bb.bj ], [ %spec.select5691132, %.thread1130 ] ; 3 uses
  %i.mw = trunc i32 %.0444 to i8
  %.lhs.trunc = add i8 %i.mw, 8
  %i.mx = udiv i8 %.lhs.trunc, 9
  %.zext = zext nneg i8 %i.mx to i32
  %i.my = icmp sgt i32 %.0444, 9
  br i1 %i.my, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.lr.ph899.prol.loopexit, %.lr.ph899, %.preheader, %.loopexit736
  %.44191156 = phi i32 [ %.0415.lcssa1128, %.loopexit736 ], [ %.2417.lcssa, %.preheader ], [ %.lcssa1491.unr, %.lr.ph899.prol.loopexit ], [ %i.mv, %.lr.ph899 ]
  %.34431151 = phi i32 [ %.3443, %.loopexit736 ], [ %spec.select569, %.preheader ], [ %spec.select569, %.lr.ph899 ], [ %spec.select569, %.lr.ph899.prol.loopexit ]
  %.04441146 = phi i32 [ %.0444, %.loopexit736 ], [ %.3452.lcssa, %.preheader ], [ %.3452.lcssa, %.lr.ph899 ], [ %.3452.lcssa, %.lr.ph899.prol.loopexit ]
  %.34651141 = phi i32 [ %.3465, %.loopexit736 ], [ %i.ka, %.preheader ], [ %i.ka, %.lr.ph899 ], [ %i.ka, %.lr.ph899.prol.loopexit ]
  %i.mz = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %bb.bk

.lr.ph.i:                                         ; preds = %.loopexit736, %.lr.ph.i
  %.044.i = phi i32 [ %i.na, %.lr.ph.i ], [ 1, %.loopexit736 ]
  %.02743.i = phi i32 [ %i.nb, %.lr.ph.i ], [ 0, %.loopexit736 ]
  %i.na = shl i32 %.044.i, 1                      ; 2 uses
  %i.nb = add i32 %.02743.i, 1                    ; 5 uses
  %i.nc = icmp slt i32 %i.na, %.zext
  br i1 %i.nc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !137

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.nd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ne = icmp slt i32 %i.nb, 8
  br i1 %i.ne, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.44191155 = phi i32 [ %.44191156, %._crit_edge.thread.i ], [ %.0415.lcssa1128, %._crit_edge.i ] ; 3 uses
  %.34431150 = phi i32 [ %.34431151, %._crit_edge.thread.i ], [ %.3443, %._crit_edge.i ] ; 3 uses
  %.04441145 = phi i32 [ %.04441146, %._crit_edge.thread.i ], [ %.0444, %._crit_edge.i ] ; 3 uses
  %.34651140 = phi i32 [ %.34651141, %._crit_edge.thread.i ], [ %.3465, %._crit_edge.i ] ; 3 uses
  %.in.i = phi ptr [ %i.mz, %._crit_edge.thread.i ], [ %i.nd, %._crit_edge.i ]
  %.027.lcssa76.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %i.nb, %._crit_edge.i ] ; 4 uses
  %i.nf = load ptr, ptr %.in.i, align 8, !tbaa !25 ; 3 uses
  %i.ng = getelementptr i8, ptr %i.nf, i64 11960
  %i.nh = sext i32 %.027.lcssa76.i to i64
  %i.ni = getelementptr [8 x i8], ptr %i.ng, i64 %i.nh ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !27 ; 3 uses
  %.not.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !29
  store ptr %i.nk, ptr %i.ni, align 8, !tbaa !27
  br label %bb.br

bb.bm:                                            ; preds = %._crit_edge.i
  %i.nl = shl nuw i32 1, %i.nb                    ; 2 uses
  %i.nm = add i32 %i.nl, -1
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, 2
  %i.np = add nuw nsw i64 %i.no, 36
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bk
  %i.nq = shl nuw nsw i32 1, %.027.lcssa76.i      ; 3 uses
  %i.nr = add nsw i32 %i.nq, -1
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = shl nuw nsw i64 %i.ns, 2
  %i.nu = add nuw nsw i64 %i.nt, 36               ; 2 uses
  %i.nv = lshr i64 %i.nu, 3                       ; 2 uses
  %i.nw = getelementptr i8, ptr %i.nf, i64 14328  ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !118 ; 3 uses
  %i.ny = getelementptr i8, ptr %i.nf, i64 12024
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = ashr exact i64 %i.ob, 3
  %i.od = add nsw i64 %i.oc, %i.nv
  %i.oe = icmp slt i64 %i.od, 289
  br i1 %i.oe, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.of = getelementptr [8 x i8], ptr %i.nx, i64 %i.nv
  store ptr %i.of, ptr %i.nw, align 8, !tbaa !118
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %.44191154 = phi i32 [ %.44191155, %bb.bn ], [ %.0415.lcssa1128, %bb.bm ]
  %.34431149 = phi i32 [ %.34431150, %bb.bn ], [ %.3443, %bb.bm ]
  %.04441144 = phi i32 [ %.04441145, %bb.bn ], [ %.0444, %bb.bm ]
  %.34651139 = phi i32 [ %.34651140, %bb.bn ], [ %.3465, %bb.bm ]
  %.027.lcssa75.i = phi i32 [ %.027.lcssa76.i, %bb.bn ], [ %i.nb, %bb.bm ]
  %i.og = phi i64 [ %i.nu, %bb.bn ], [ %i.np, %bb.bm ]
  %i.oh = phi i32 [ %i.nq, %bb.bn ], [ %i.nl, %bb.bm ]
  %i.oi = and i64 %i.og, 34359738360
  %i.oj = tail call ptr @PyMem_Malloc(i64 noundef %i.oi) #11 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %s2b.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.44191153 = phi i32 [ %.44191155, %bb.bo ], [ %.44191154, %bb.bp ]
  %.34431148 = phi i32 [ %.34431150, %bb.bo ], [ %.34431149, %bb.bp ]
  %.04441143 = phi i32 [ %.04441145, %bb.bo ], [ %.04441144, %bb.bp ]
  %.34651138 = phi i32 [ %.34651140, %bb.bo ], [ %.34651139, %bb.bp ]
  %.027.lcssa74.i = phi i32 [ %.027.lcssa76.i, %bb.bo ], [ %.027.lcssa75.i, %bb.bp ]
  %i.ol = phi i32 [ %i.nq, %bb.bo ], [ %i.oh, %bb.bp ]
  %.0.i.i = phi ptr [ %i.nx, %bb.bo ], [ %i.oj, %bb.bp ] ; 3 uses
  %i.om = getelementptr i8, ptr %.0.i.i, i64 8
  store i32 %.027.lcssa74.i, ptr %i.om, align 8, !tbaa !119
  %i.on = getelementptr i8, ptr %.0.i.i, i64 12
  store i32 %i.ol, ptr %i.on, align 4, !tbaa !120
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.44191152 = phi i32 [ %.44191155, %bb.bl ], [ %.44191153, %bb.bq ]
  %.34431147 = phi i32 [ %.34431150, %bb.bl ], [ %.34431148, %bb.bq ] ; 3 uses
  %.04441142 = phi i32 [ %.04441145, %bb.bl ], [ %.04441143, %bb.bq ] ; 9 uses
  %.34651137 = phi i32 [ %.34651140, %bb.bl ], [ %.34651138, %bb.bq ] ; 3 uses
  %.1.i.i = phi ptr [ %i.nj, %bb.bl ], [ %.0.i.i, %bb.bq ] ; 6 uses
  %i.oo = getelementptr i8, ptr %.1.i.i, i64 20
  %i.op = getelementptr i8, ptr %.1.i.i, i64 16
  store i32 0, ptr %i.op, align 8, !tbaa !121
  %i.oq = getelementptr i8, ptr %.1.i.i, i64 24
  store i32 %.44191152, ptr %i.oq, align 8, !tbaa !10
  store i32 1, ptr %i.oo, align 4, !tbaa !122
  %i.or = icmp slt i32 %.04441142, 10
  br i1 %i.or, label %s2b.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.os = getelementptr i8, ptr %.1429, i64 9     ; 2 uses
  %i.ot = icmp sgt i32 %.34431147, 9
  br i1 %i.ot, label %.lr.ph49.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bt, %bb.bs
  %.032.lcssa.i = phi ptr [ %i.os, %bb.bs ], [ %i.pa, %bb.bt ]
  %.029.lcssa.i = phi ptr [ %.1.i.i, %bb.bs ], [ %i.oy, %bb.bt ] ; 2 uses
  %.028.lcssa.i = phi i32 [ 9, %bb.bs ], [ %.34431147, %bb.bt ] ; 2 uses
  %i.ou = icmp slt i32 %.028.lcssa.i, %.04441142
  br i1 %i.ou, label %.lr.ph57.i, label %s2b.exit

.lr.ph49.i:                                       ; preds = %bb.bs, %bb.bt
  %.02847.i = phi i32 [ %i.pb, %bb.bt ], [ 9, %bb.bs ]
  %.02946.i = phi ptr [ %i.oy, %bb.bt ], [ %.1.i.i, %bb.bs ]
  %.03245.i = phi ptr [ %i.pa, %bb.bt ], [ %i.os, %bb.bs ] ; 2 uses
  %i.ov = load i8, ptr %.03245.i, align 1, !tbaa !11
  %i.ow = sext i8 %i.ov to i32
  %i.ox = add nsw i32 %i.ow, -48
  %i.oy = tail call fastcc ptr @multadd(ptr noundef nonnull %.02946.i, i32 noundef 10, i32 noundef %i.ox) ; 3 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %s2b.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph49.i
  %i.pa = getelementptr i8, ptr %.03245.i, i64 1  ; 2 uses
  %i.pb = add nuw nsw i32 %.02847.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.pb, %.34431147
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph49.i, !llvm.loop !138

bb.bu:                                            ; preds = %.lr.ph57.i
  %i.pc = add nuw nsw i32 %.155.i, 1              ; 2 uses
  %exitcond65.not.i = icmp eq i32 %i.pc, %.04441142
  br i1 %exitcond65.not.i, label %s2b.exit, label %.lr.ph57.i, !llvm.loop !139

.lr.ph57.i:                                       ; preds = %.preheader.i, %bb.bu
  %.032.pn.pn.i = phi ptr [ %.13356.i, %bb.bu ], [ %.032.lcssa.i, %.preheader.i ]
  %.155.i = phi i32 [ %i.pc, %bb.bu ], [ %.028.lcssa.i, %.preheader.i ]
end_hunk_1
