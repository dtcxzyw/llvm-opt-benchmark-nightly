inline.NumInlined: 94
inline.NumDeleted: 14
begin_hunk_0_@_Py_dg_strtod:bb.a
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i8 %.2477.in.lcssa, 46
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge834
  %i.u = getelementptr i8, ptr %.2433.lcssa, i64 1 ; 6 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11    ; 2 uses
  %i.w = sext i8 %i.v to i32                      ; 2 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %.preheader737, label %bb.f

.preheader737:                                    ; preds = %bb.e
  %i.x = icmp eq i8 %i.v, 48
  br i1 %i.x, label %.lr.ph838, label %._crit_edge839

.lr.ph838:                                        ; preds = %.preheader737, %.lr.ph838
  %.3434837 = phi ptr [ %i.y, %.lr.ph838 ], [ %i.u, %.preheader737 ]
  %i.y = getelementptr i8, ptr %.3434837, i64 1   ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11    ; 2 uses
  %i.aa = icmp eq i8 %i.z, 48
  br i1 %i.aa, label %.lr.ph838, label %._crit_edge839.loopexit, !llvm.loop !15

._crit_edge839.loopexit:                          ; preds = %.lr.ph838
  %i.ab = sext i8 %i.z to i32
  br label %._crit_edge839

._crit_edge839:                                   ; preds = %._crit_edge839.loopexit, %.preheader737
  %.3478.lcssa = phi i32 [ %i.w, %.preheader737 ], [ %i.ab, %._crit_edge839.loopexit ]
  %.3434.lcssa = phi ptr [ %i.u, %.preheader737 ], [ %i.y, %._crit_edge839.loopexit ] ; 4 uses
  %i.ac = icmp ne ptr %.3434.lcssa, %i.u
  %i.ad = or i1 %i.j, %i.ac
  %i.ae = ptrtoint ptr %.3434.lcssa to i64
  %i.af = ptrtoint ptr %i.u to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge839, %bb.e
  %.4479 = phi i32 [ %i.w, %bb.e ], [ %.3478.lcssa, %._crit_edge839 ] ; 2 uses
  %.0449 = phi i1 [ %i.j, %bb.e ], [ %i.ad, %._crit_edge839 ]
  %.4435 = phi ptr [ %i.u, %bb.e ], [ %.3434.lcssa, %._crit_edge839 ] ; 3 uses
  %.0429 = phi ptr [ %.1432.lcssa, %bb.e ], [ %.3434.lcssa, %._crit_edge839 ]
  %.0382 = phi i64 [ 0, %bb.e ], [ %i.ag, %._crit_edge839 ]
  %i.ah = add nsw i32 %.4479, -48
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %.lr.ph844, label %._crit_edge845

.lr.ph844:                                        ; preds = %bb.f, %.lr.ph844
  %.5436842 = phi ptr [ %i.aj, %.lr.ph844 ], [ %.4435, %bb.f ]
  %i.aj = getelementptr i8, ptr %.5436842, i64 1  ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = sext i8 %i.ak to i32                    ; 2 uses
  %i.am = add nsw i32 %i.al, -48
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %.lr.ph844, label %._crit_edge845, !llvm.loop !16

._crit_edge845:                                   ; preds = %.lr.ph844, %bb.f
  %.5480.lcssa = phi i32 [ %.4479, %bb.f ], [ %i.al, %.lr.ph844 ]
  %.5436.lcssa = phi ptr [ %.4435, %bb.f ], [ %i.aj, %.lr.ph844 ] ; 2 uses
  %i.ao = ptrtoint ptr %.5436.lcssa to i64
  %i.ap = ptrtoint ptr %.4435 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = add i64 %i.aq, %i.s
  %i.as = add i64 %i.aq, %.0382
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge845, %._crit_edge834
  %.6481 = phi i32 [ %.5480.lcssa, %._crit_edge845 ], [ %.2477, %._crit_edge834 ]
  %.1450 = phi i1 [ %.0449, %._crit_edge845 ], [ %i.j, %._crit_edge834 ]
  %.6437 = phi ptr [ %.5436.lcssa, %._crit_edge845 ], [ %.2433.lcssa, %._crit_edge834 ] ; 4 uses
  %.1430 = phi ptr [ %.0429, %._crit_edge845 ], [ %.1432.lcssa, %._crit_edge834 ] ; 33 uses
  %.0383 = phi i64 [ %i.ar, %._crit_edge845 ], [ %i.s, %._crit_edge834 ] ; 4 uses
  %.1 = phi i64 [ %i.as, %._crit_edge845 ], [ 0, %._crit_edge834 ] ; 2 uses
  %i.at = icmp ne i64 %.0383, 0
  %or.cond = or i1 %.1450, %i.at
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not529 = icmp eq ptr %1, null
  br i1 %.not529, label %Bfree.exit653, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr %1, align 8, !tbaa !17
  br label %Bfree.exit653

bb.j:                                             ; preds = %bb.g
  %i.au = icmp ugt i64 %.0383, 1000000000
  %i.av = icmp ugt i64 %.1, 1000000000
  %or.cond3 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond3, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not567 = icmp eq ptr %1, null
  br i1 %.not567, label %Bfree.exit653, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %0, ptr %1, align 8, !tbaa !17
  br label %Bfree.exit653

bb.m:                                             ; preds = %bb.j
  %i.aw = trunc nuw nsw i64 %.0383 to i32         ; 5 uses
  %i.ax = trunc nuw nsw i64 %.1 to i32            ; 2 uses
  %i.ay = sub nsw i32 %i.aw, %i.ax                ; 2 uses
  %i.az = and i32 %.6481, -33
  %or.cond5 = icmp eq i32 %i.az, 69
  br i1 %or.cond5, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %.6437, i64 1     ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11  ; 2 uses
  switch i8 %i.bb, label %bb.q [
    i8 45, label %bb.o
    i8 43, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = phi i1 [ false, %bb.o ], [ true, %bb.n ]
  %i.bd = getelementptr i8, ptr %.6437, i64 2     ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.7482.in = phi i8 [ %i.bb, %bb.n ], [ %i.be, %bb.p ] ; 2 uses
  %.1464 = phi i1 [ true, %bb.n ], [ %i.bc, %bb.p ]
  %.7438 = phi ptr [ %i.ba, %bb.n ], [ %i.bd, %bb.p ] ; 3 uses
  %i.bf = icmp eq i8 %.7482.in, 48
  br i1 %i.bf, label %.lr.ph850, label %._crit_edge851

.lr.ph850:                                        ; preds = %bb.q, %.lr.ph850
  %.8848 = phi ptr [ %i.bg, %.lr.ph850 ], [ %.7438, %bb.q ]
  %i.bg = getelementptr i8, ptr %.8848, i64 1     ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11  ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 48
  br i1 %i.bi, label %.lr.ph850, label %._crit_edge851, !llvm.loop !20

._crit_edge851:                                   ; preds = %.lr.ph850, %bb.q
  %.8483.in.lcssa = phi i8 [ %.7482.in, %bb.q ], [ %i.bh, %.lr.ph850 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7438, %bb.q ], [ %i.bg, %.lr.ph850 ] ; 5 uses
  %i.bj = icmp ne ptr %.8.lcssa, %.7438
  %i.bk = add i8 %.8483.in.lcssa, -48
  %i.bl = icmp ult i8 %i.bk, 10
  br i1 %i.bl, label %.lr.ph858, label %._crit_edge859

.lr.ph858:                                        ; preds = %._crit_edge851, %.lr.ph858
  %.0413856 = phi i32 [ %i.bo, %.lr.ph858 ], [ 0, %._crit_edge851 ]
  %.9855 = phi ptr [ %i.bp, %.lr.ph858 ], [ %.8.lcssa, %._crit_edge851 ]
  %.9484.in854 = phi i8 [ %i.bq, %.lr.ph858 ], [ %.8483.in.lcssa, %._crit_edge851 ]
  %.9484 = zext nneg i8 %.9484.in854 to i32
  %i.bm = mul i32 %.0413856, 10
  %i.bn = add nsw i32 %.9484, -48
  %i.bo = add i32 %i.bn, %i.bm                    ; 2 uses
  %i.bp = getelementptr i8, ptr %.9855, i64 1     ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11  ; 2 uses
  %i.br = add i8 %i.bq, -48
  %i.bs = icmp ult i8 %i.br, 10
  br i1 %i.bs, label %.lr.ph858, label %._crit_edge859.loopexit, !llvm.loop !21

._crit_edge859.loopexit:                          ; preds = %.lr.ph858
  %i.bt = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 1100000000)
  br label %._crit_edge859

._crit_edge859:                                   ; preds = %._crit_edge859.loopexit, %._crit_edge851
  %.9.lcssa = phi ptr [ %.8.lcssa, %._crit_edge851 ], [ %i.bp, %._crit_edge859.loopexit ] ; 3 uses
  %.0413.lcssa = phi i32 [ 0, %._crit_edge851 ], [ %i.bt, %._crit_edge859.loopexit ]
  %i.bu = ptrtoint ptr %.9.lcssa to i64
  %i.bv = ptrtoint ptr %.8.lcssa to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp sgt i64 %i.bw, 9
  %..0413 = select i1 %i.bx, i32 1100000000, i32 %.0413.lcssa ; 2 uses
  %i.by = sub nsw i32 0, %..0413
  %.1471 = select i1 %.1464, i32 %..0413, i32 %i.by
  %i.bz = icmp ne ptr %.9.lcssa, %.8.lcssa
  %or.cond9 = or i1 %i.bj, %i.bz
  %spec.select579 = select i1 %or.cond9, ptr %.9.lcssa, ptr %.6437
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge859, %bb.m
  %.2472 = phi i32 [ %.1471, %._crit_edge859 ], [ 0, %bb.m ]
  %.10 = phi ptr [ %spec.select579, %._crit_edge859 ], [ %.6437, %bb.m ]
  %i.ca = sub nsw i32 %.2472, %i.ax               ; 2 uses
  %i.cb = icmp slt i32 %i.ay, 1
  %spec.select = select i1 %i.cb, i32 %i.aw, i32 %i.ay ; 4 uses
  %.not531 = icmp eq ptr %1, null
  br i1 %.not531, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.10, ptr %1, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not532 = icmp eq i64 %.0383, 0
  br i1 %.not532, label %bb.gt, label %.lr.ph1392

.preheader736:                                    ; preds = %.lr.ph1392
  %i.cc = icmp sgt i32 %.04541391, 1
  br i1 %i.cc, label %.lr.ph1392, label %._crit_edge867.thread, !llvm.loop !22

.lr.ph1392:                                       ; preds = %bb.t, %.preheader736
  %.04541391 = phi i32 [ %i.cd, %.preheader736 ], [ %i.aw, %bb.t ] ; 13 uses
  %i.cd = add nsw i32 %.04541391, -1              ; 2 uses
  %.not533 = icmp sgt i32 %.04541391, %spec.select
  %i.ce = select i1 %.not533, i32 %.04541391, i32 %i.cd
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr i8, ptr %.1430, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %.not534.a = icmp eq i8 %i.ch, 48
  br i1 %.not534.a, label %.preheader736, label %.lr.ph866.preheader, !llvm.loop !22

._crit_edge867.thread:                            ; preds = %.preheader736
  %i.ci = add i32 %i.ca, %i.aw                    ; 2 uses
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
  %.not535.a = icmp eq i32 %i.dt, 0
  br i1 %.not535.a, label %bb.gt, label %bb.aa

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
  %.not536.a = icmp samesign ugt i32 %i.dt, %i.ed
  br i1 %.not536.a, label %bb.ah, label %bb.ae

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
  %.not542.a = icmp eq i32 %i.fb, 0
  br i1 %.not542.a, label %bb.ak, label %bb.aj

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
  %.not543.a = icmp eq i32 %i.fg, 0
  br i1 %.not543.a, label %bb.bj, label %bb.al

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
  br i1 %i.fr, label %.lr.ph885, label %._crit_edge886.loopexit, !llvm.loop !29

._crit_edge886.loopexit:                          ; preds = %bb.ao
  %sext = shl i64 %indvars.iv.next1013, 32
  %i.fs = ashr exact i64 %sext, 32
  br label %._crit_edge886

._crit_edge886:                                   ; preds = %._crit_edge886.loopexit, %bb.am
  %.lcssa881 = phi double [ %.promoted880, %bb.am ], [ %i.fp, %._crit_edge886.loopexit ] ; 2 uses
  %.0452.lcssa = phi i64 [ 0, %bb.am ], [ %i.fs, %._crit_edge886.loopexit ]
  store double %.lcssa881, ptr %2, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.fu = bitcast double %.lcssa881 to i64
  %i.fv = lshr i64 %i.fu, 32
  %i.fw = trunc nuw i64 %i.fv to i32
  %i.fx = add i32 %i.fw, -55574528
  store i32 %i.fx, ptr %i.ft, align 4, !tbaa !11
  %i.fy = getelementptr [8 x i8], ptr @bigtens, i64 %.0452.lcssa
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !26
  %i.ga = load double, ptr %2, align 8, !tbaa !11
  %i.gb = fmul double %i.fz, %i.ga                ; 2 uses
  store double %i.gb, ptr %2, align 8, !tbaa !11
  %i.gc = bitcast double %i.gb to i64
  %i.gd = lshr i64 %i.gc, 32
  %i.ge = trunc nuw i64 %i.gd to i32              ; 2 uses
  %i.gf = and i32 %i.ge, 2146435072               ; 2 uses
  %i.gg = icmp samesign ugt i32 %i.gf, 2090860544
  br i1 %i.gg, label %.loopexit730, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge886
  %i.gh = icmp samesign ugt i32 %i.gf, 2089811968
  br i1 %i.gh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 2146435071, ptr %i.ft, align 4, !tbaa !11
  store i32 -1, ptr %2, align 8, !tbaa !11
  br label %bb.bj

bb.ar:                                            ; preds = %bb.ap
  %i.gi = add i32 %i.ge, 55574528
  store i32 %i.gi, ptr %i.ft, align 4, !tbaa !11
  br label %bb.bj

bb.as:                                            ; preds = %bb.ah
  %i.gj = icmp slt i32 %i.ey, 0
  br i1 %i.gj, label %bb.at, label %bb.bj

bb.at:                                            ; preds = %bb.as
  %i.gk = sub i32 0, %i.ey                        ; 3 uses
  %i.gl = and i32 %i.gk, 15                       ; 2 uses
  %.not537.a = icmp eq i32 %i.gl, 0
  br i1 %.not537.a, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr [8 x i8], ptr @tens, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !26
  %i.gp = fdiv double %i.ew, %i.go                ; 2 uses
  store double %i.gp, ptr %2, align 8, !tbaa !11
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.promoted = phi double [ %i.gp, %bb.au ], [ %i.ew, %bb.at ] ; 2 uses
  %i.gq = ashr i32 %i.gk, 4                       ; 4 uses
  %.not538.a = icmp eq i32 %i.gq, 0
  br i1 %.not538.a, label %bb.bj, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gr = icmp sgt i32 %i.gq, 31
  br i1 %i.gr, label %bb.gu, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gs = and i32 %i.gk, 256
  %.not539 = icmp eq i32 %i.gs, 0                 ; 2 uses
  br i1 %.not539, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 106, ptr %i.ez, align 4, !tbaa !28
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gt = phi i32 [ 106, %bb.ay ], [ 0, %bb.ax ]
  %i.gu = icmp sgt i32 %i.gq, 0
  br i1 %i.gu, label %.lr.ph877, label %._crit_edge878

.lr.ph877:                                        ; preds = %bb.az, %bb.bb
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bb ], [ 0, %bb.az ] ; 2 uses
  %.1469874 = phi i32 [ %i.hb, %bb.bb ], [ %i.gq, %bb.az ] ; 2 uses
  %i.gv = phi double [ %i.ha, %bb.bb ], [ %.promoted, %bb.az ] ; 2 uses
  %i.gw = and i32 %.1469874, 1
  %.not541 = icmp eq i32 %i.gw, 0
  br i1 %.not541, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph877
  %i.gx = getelementptr [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !26
  %i.gz = fmul double %i.gy, %i.gv
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph877, %bb.ba
  %i.ha = phi double [ %i.gv, %.lr.ph877 ], [ %i.gz, %bb.ba ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.hb = lshr i32 %.1469874, 1                   ; 2 uses
  %.not901 = icmp eq i32 %i.hb, 0
  br i1 %.not901, label %._crit_edge878, label %.lr.ph877, !llvm.loop !30

._crit_edge878:                                   ; preds = %bb.bb, %bb.az
  %.lcssa873 = phi double [ %.promoted, %bb.az ], [ %i.ha, %bb.bb ] ; 3 uses
  store double %.lcssa873, ptr %2, align 8
  %i.hc = bitcast double %.lcssa873 to i64        ; 2 uses
  %i.hd = lshr i64 %i.hc, 32
  %i.he = trunc nuw i64 %i.hd to i32              ; 2 uses
  %i.hf = trunc i64 %i.hc to i32
  br i1 %.not539, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge878
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.hh = lshr i32 %i.he, 20
  %i.hi = and i32 %i.hh, 2047                     ; 5 uses
  %i.hj = sub nsw i32 107, %i.hi
  %i.hk = icmp samesign ult i32 %i.hi, 107
  br i1 %i.hk, label %bb.bd, label %thread-pre-split

bb.bd:                                            ; preds = %bb.bc
  %i.hl = icmp samesign ult i32 %i.hi, 76
  br i1 %i.hl, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %2, align 8, !tbaa !11
  %i.hm = icmp samesign ult i32 %i.hi, 55
  br i1 %i.hm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 57671680, ptr %i.hg, align 4, !tbaa !11
  br label %thread-pre-split

bb.bg:                                            ; preds = %bb.be
  %i.hn = sub nuw nsw i32 75, %i.hi
  %i.ho = shl nsw i32 -1, %i.hn
  %i.hp = and i32 %i.ho, %i.he
  store i32 %i.hp, ptr %i.hg, align 4, !tbaa !11
  br label %thread-pre-split

bb.bh:                                            ; preds = %bb.bd
  %i.hq = shl nsw i32 -1, %i.hj
  %i.hr = and i32 %i.hq, %i.hf
  store i32 %i.hr, ptr %2, align 8, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bc, %bb.bf, %bb.bg, %bb.bh
  %.pr = load double, ptr %2, align 8, !tbaa !11
  br label %bb.bi

bb.bi:                                            ; preds = %thread-pre-split, %._crit_edge878
  %i.hs = phi double [ %.pr, %thread-pre-split ], [ %.lcssa873, %._crit_edge878 ]
  %i.ht = fcmp une double %i.hs, 0.000000e+00
  br i1 %i.ht, label %bb.bj, label %bb.gu

bb.bj:                                            ; preds = %bb.as, %bb.bi, %bb.av, %bb.ak, %bb.ar, %bb.aq
  %i.hu = phi i32 [ 0, %bb.as ], [ %i.gt, %bb.bi ], [ 0, %bb.av ], [ 0, %bb.ak ], [ 0, %bb.ar ], [ 0, %bb.aq ] ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %.0454.lcssa11081118, ptr %i.hv, align 4, !tbaa !31
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %spec.select56811111116, ptr %i.hw, align 4, !tbaa !32
  %i.hx = icmp sgt i32 %.0454.lcssa11081118, 40
  br i1 %i.hx, label %.preheader735.preheader, label %.loopexit733

.preheader735.preheader:                          ; preds = %bb.bj
  %.not544 = icmp slt i32 %spec.select, 18
  %i.hy = select i1 %.not544, i64 18, i64 17
  %i.hz = getelementptr i8, ptr %.1430, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !11
  %.not545.a = icmp eq i8 %i.ia, 48
  br i1 %.not545.a, label %.preheader735.1, label %.thread1122

.preheader735.1:                                  ; preds = %.preheader735.preheader
  %.not544.1 = icmp slt i32 %spec.select56811111116, 17
  %i.ib = select i1 %.not544.1, i64 17, i64 16
  %i.ic = getelementptr i8, ptr %.1430, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !11
  %.not545.1 = icmp eq i8 %i.id, 48
  br i1 %.not545.1, label %.preheader735.2, label %.thread1122

.preheader735.2:                                  ; preds = %.preheader735.1
  %.not544.2 = icmp slt i32 %spec.select56811111116, 16
  %i.ie = select i1 %.not544.2, i64 16, i64 15
  %i.if = getelementptr i8, ptr %.1430, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !11
  %.not545.2 = icmp eq i8 %i.ig, 48
  br i1 %.not545.2, label %.preheader735.3, label %.thread1122

.preheader735.3:                                  ; preds = %.preheader735.2
  %.not544.3 = icmp slt i32 %spec.select56811111116, 15
  %i.ih = select i1 %.not544.3, i64 15, i64 14
  %i.ii = getelementptr i8, ptr %.1430, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !11
  %.not545.3 = icmp eq i8 %i.ij, 48
  br i1 %.not545.3, label %.preheader735.4, label %.thread1122

.preheader735.4:                                  ; preds = %.preheader735.3
  %.not544.4 = icmp slt i32 %spec.select56811111116, 14
  %i.ik = select i1 %.not544.4, i64 14, i64 13
  %i.il = getelementptr i8, ptr %.1430, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !11
  %.not545.4 = icmp eq i8 %i.im, 48
  br i1 %.not545.4, label %.preheader735.5, label %.thread1122

.preheader735.5:                                  ; preds = %.preheader735.4
  %.not544.5 = icmp slt i32 %spec.select56811111116, 13
  %i.in = select i1 %.not544.5, i64 13, i64 12
  %i.io = getelementptr i8, ptr %.1430, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !11
  %.not545.5 = icmp eq i8 %i.ip, 48
  br i1 %.not545.5, label %.preheader735.6, label %.thread1122

.preheader735.6:                                  ; preds = %.preheader735.5
  %.not544.6 = icmp slt i32 %spec.select56811111116, 12
  %i.iq = select i1 %.not544.6, i64 12, i64 11
  %i.ir = getelementptr i8, ptr %.1430, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !11
  %.not545.6 = icmp eq i8 %i.is, 48
  br i1 %.not545.6, label %.preheader735.7, label %.thread1122

.preheader735.7:                                  ; preds = %.preheader735.6
  %.not544.7 = icmp slt i32 %spec.select56811111116, 11
  %i.it = select i1 %.not544.7, i64 11, i64 10
  %i.iu = getelementptr i8, ptr %.1430, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !11
  %.not545.7 = icmp eq i8 %i.iv, 48
  br i1 %.not545.7, label %.preheader735.8, label %.thread1122

.preheader735.8:                                  ; preds = %.preheader735.7
  %.not544.8 = icmp slt i32 %spec.select56811111116, 10
  %i.iw = select i1 %.not544.8, i64 10, i64 9
  %i.ix = getelementptr i8, ptr %.1430, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !11
  %.not545.8 = icmp eq i8 %i.iy, 48
  br i1 %.not545.8, label %.preheader735.9, label %.thread1122

.preheader735.9:                                  ; preds = %.preheader735.8
  %.not544.9 = icmp slt i32 %spec.select56811111116, 9
  %i.iz = select i1 %.not544.9, i64 9, i64 8
  %i.ja = getelementptr i8, ptr %.1430, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !11
  %.not545.9 = icmp eq i8 %i.jb, 48
  br i1 %.not545.9, label %.preheader735.10, label %.thread1122

.preheader735.10:                                 ; preds = %.preheader735.9
  %.not544.10 = icmp slt i32 %spec.select56811111116, 8
  %i.jc = select i1 %.not544.10, i64 8, i64 7
  %i.jd = getelementptr i8, ptr %.1430, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !11
  %.not545.10 = icmp eq i8 %i.je, 48
  br i1 %.not545.10, label %.preheader735.11, label %.preheader734

.preheader735.11:                                 ; preds = %.preheader735.10
  %.not544.11 = icmp slt i32 %spec.select56811111116, 7
  %i.jf = select i1 %.not544.11, i64 7, i64 6
  %i.jg = getelementptr i8, ptr %.1430, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !11
  %.not545.11 = icmp eq i8 %i.jh, 48
  br i1 %.not545.11, label %.preheader735.12, label %.preheader734

.preheader735.12:                                 ; preds = %.preheader735.11
  %.not544.12 = icmp slt i32 %spec.select56811111116, 6
  %i.ji = select i1 %.not544.12, i64 6, i64 5
  %i.jj = getelementptr i8, ptr %.1430, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !11
  %.not545.12 = icmp eq i8 %i.jk, 48
  br i1 %.not545.12, label %.preheader735.13, label %.preheader734

.preheader735.13:                                 ; preds = %.preheader735.12
  %.not544.13 = icmp slt i32 %spec.select56811111116, 5
  %i.jl = select i1 %.not544.13, i64 5, i64 4
  %i.jm = getelementptr i8, ptr %.1430, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !11
  %.not545.13 = icmp eq i8 %i.jn, 48
  br i1 %.not545.13, label %.preheader735.14, label %.preheader734

.preheader735.14:                                 ; preds = %.preheader735.13
  %.not544.14 = icmp slt i32 %spec.select56811111116, 4
  %i.jo = select i1 %.not544.14, i64 4, i64 3
  %i.jp = getelementptr i8, ptr %.1430, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !11
  %.not545.14 = icmp eq i8 %i.jq, 48
  br i1 %.not545.14, label %.preheader735.15, label %.preheader734

.preheader735.15:                                 ; preds = %.preheader735.14
  %.not544.15 = icmp slt i32 %spec.select56811111116, 3
  %i.jr = select i1 %.not544.15, i64 3, i64 2
  %i.js = getelementptr i8, ptr %.1430, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !11
  %.not545.15 = icmp eq i8 %i.jt, 48
  br i1 %.not545.15, label %.preheader735.16, label %.preheader734

.preheader735.16:                                 ; preds = %.preheader735.15
  %.not544.16 = icmp slt i32 %spec.select56811111116, 2
  %i.ju = select i1 %.not544.16, i64 2, i64 1
  %i.jv = getelementptr i8, ptr %.1430, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !11
  %.not545.16 = icmp eq i8 %i.jw, 48
  br i1 %.not545.16, label %.preheader735.17, label %.preheader734

.preheader735.17:                                 ; preds = %.preheader735.16
  %i.jx = load i8, ptr %.1430, align 1, !tbaa !11
  %.not545.17 = icmp ne i8 %i.jx, 48
  %spec.select1277 = zext i1 %.not545.17 to i32
  br label %.preheader734

.thread1122:                                      ; preds = %.preheader735.preheader, %.preheader735.9, %.preheader735.1, %.preheader735.2, %.preheader735.3, %.preheader735.4, %.preheader735.5, %.preheader735.6, %.preheader735.7, %.preheader735.8
  %.3457.lcssa.ph = phi i32 [ 10, %.preheader735.8 ], [ 11, %.preheader735.7 ], [ 12, %.preheader735.6 ], [ 13, %.preheader735.5 ], [ 14, %.preheader735.4 ], [ 15, %.preheader735.3 ], [ 16, %.preheader735.2 ], [ 17, %.preheader735.1 ], [ 9, %.preheader735.9 ], [ 18, %.preheader735.preheader ] ; 3 uses
  %i.jy = sub nuw nsw i32 %.0454.lcssa11081118, %.3457.lcssa.ph
  %i.jz = add i32 %i.jy, %i.ev
  %spec.select5691124 = tail call i32 @llvm.smin.i32(i32 %spec.select56811111116, i32 %.3457.lcssa.ph)
  br label %.loopexit733

.preheader734:                                    ; preds = %.preheader735.17, %.preheader735.10, %.preheader735.11, %.preheader735.12, %.preheader735.13, %.preheader735.14, %.preheader735.15, %.preheader735.16
  %.3457.lcssa = phi i32 [ 6, %.preheader735.12 ], [ 8, %.preheader735.10 ], [ 2, %.preheader735.16 ], [ 7, %.preheader735.11 ], [ %spec.select1277, %.preheader735.17 ], [ 3, %.preheader735.15 ], [ 5, %.preheader735.13 ], [ 4, %.preheader735.14 ] ; 7 uses
  %i.ka = sub nuw nsw i32 %.0454.lcssa11081118, %.3457.lcssa
  %i.kb = add i32 %i.ka, %i.ev                    ; 3 uses
  %spec.select569 = tail call i32 @llvm.smin.i32(i32 %spec.select56811111116, i32 %.3457.lcssa) ; 8 uses
  %i.kc = icmp sgt i32 %spec.select569, 0
  br i1 %i.kc, label %.lr.ph891.preheader, label %.preheader

.lr.ph891.preheader:                              ; preds = %.preheader734
  %wide.trip.count = zext nneg i32 %spec.select569 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.kd = icmp ult i32 %spec.select569, 4
  br i1 %i.kd, label %.lr.ph891.epil.preheader, label %.lr.ph891.preheader.new

.lr.ph891.preheader.new:                          ; preds = %.lr.ph891.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph891

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph891
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph891.epil.preheader

.lr.ph891.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph891.preheader
  %indvars.iv1015.epil.init = phi i64 [ 0, %.lr.ph891.preheader ], [ %indvars.iv.next1016.3, %.preheader.loopexit.unr-lcssa ]
  %.2418890.epil.init = phi i32 [ 0, %.lr.ph891.preheader ], [ %i.lv, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1504 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1504)
  br label %.lr.ph891.epil

.lr.ph891.epil:                                   ; preds = %.lr.ph891.epil, %.lr.ph891.epil.preheader
  %indvars.iv1015.epil = phi i64 [ %indvars.iv1015.epil.init, %.lr.ph891.epil.preheader ], [ %indvars.iv.next1016.epil, %.lr.ph891.epil ] ; 2 uses
  %.2418890.epil = phi i32 [ %.2418890.epil.init, %.lr.ph891.epil.preheader ], [ %i.kj, %.lr.ph891.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph891.epil.preheader ], [ %epil.iter.next, %.lr.ph891.epil ]
  %i.ke = mul i32 %.2418890.epil, 10
  %i.kf = getelementptr i8, ptr %.1430, i64 %indvars.iv1015.epil
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !11
  %i.kh = sext i8 %i.kg to i32
  %i.ki = add i32 %i.ke, -48
  %i.kj = add i32 %i.ki, %i.kh                    ; 2 uses
  %indvars.iv.next1016.epil = add nuw nsw i64 %indvars.iv1015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph891.epil, !llvm.loop !33

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph891.epil, %.preheader734
  %.5459.lcssa = phi i32 [ 0, %.preheader734 ], [ %spec.select569, %.lr.ph891.epil ], [ %spec.select569, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.2418.lcssa = phi i32 [ 0, %.preheader734 ], [ %i.lv, %.preheader.loopexit.unr-lcssa ], [ %i.kj, %.lr.ph891.epil ] ; 3 uses
  %i.kk = icmp samesign ult i32 %.5459.lcssa, %.3457.lcssa
  br i1 %i.kk, label %.lr.ph896.preheader, label %._crit_edge.thread.i

.lr.ph896.preheader:                              ; preds = %.preheader
  %i.kl = zext nneg i32 %.5459.lcssa to i64       ; 4 uses
  %wide.trip.count1022 = zext nneg i32 %.3457.lcssa to i64 ; 3 uses
  %i.km = sub nsw i64 %wide.trip.count1022, %i.kl
  %xtraiter1505 = and i64 %i.km, 3                ; 2 uses
  %lcmp.mod1506.not = icmp eq i64 %xtraiter1505, 0
  br i1 %lcmp.mod1506.not, label %.lr.ph896.prol.loopexit, label %.lr.ph896.prol

.lr.ph896.prol:                                   ; preds = %.lr.ph896.preheader, %.lr.ph896.prol
  %indvars.iv1019.prol = phi i64 [ %indvars.iv.next1020.prol, %.lr.ph896.prol ], [ %i.kl, %.lr.ph896.preheader ]
  %.3419895.prol = phi i32 [ %i.ks, %.lr.ph896.prol ], [ %.2418.lcssa, %.lr.ph896.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph896.prol ], [ 0, %.lr.ph896.preheader ]
  %i.kn = mul i32 %.3419895.prol, 10
  %indvars.iv.next1020.prol = add nuw nsw i64 %indvars.iv1019.prol, 1 ; 3 uses
  %i.ko = getelementptr i8, ptr %.1430, i64 %indvars.iv.next1020.prol
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !11
  %i.kq = sext i8 %i.kp to i32
  %i.kr = add i32 %i.kn, -48
  %i.ks = add i32 %i.kr, %i.kq                    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1505
  br i1 %prol.iter.cmp.not, label %.lr.ph896.prol.loopexit, label %.lr.ph896.prol, !llvm.loop !35

.lr.ph896.prol.loopexit:                          ; preds = %.lr.ph896.prol, %.lr.ph896.preheader
  %.lcssa1485.unr = phi i32 [ poison, %.lr.ph896.preheader ], [ %i.ks, %.lr.ph896.prol ]
  %indvars.iv1019.unr = phi i64 [ %i.kl, %.lr.ph896.preheader ], [ %indvars.iv.next1020.prol, %.lr.ph896.prol ]
  %.3419895.unr = phi i32 [ %.2418.lcssa, %.lr.ph896.preheader ], [ %i.ks, %.lr.ph896.prol ]
  %i.kt = sub nsw i64 %i.kl, %wide.trip.count1022
  %i.ku = icmp ugt i64 %i.kt, -4
  br i1 %i.ku, label %._crit_edge.thread.i, label %.lr.ph896

.lr.ph891:                                        ; preds = %.lr.ph891, %.lr.ph891.preheader.new
  %indvars.iv1015 = phi i64 [ 0, %.lr.ph891.preheader.new ], [ %indvars.iv.next1016.3, %.lr.ph891 ] ; 5 uses
  %.2418890 = phi i32 [ 0, %.lr.ph891.preheader.new ], [ %i.lv, %.lr.ph891 ]
  %niter = phi i64 [ 0, %.lr.ph891.preheader.new ], [ %niter.next.3, %.lr.ph891 ]
  %i.kv = mul i32 %.2418890, 10
  %i.kw = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !11
  %i.ky = sext i8 %i.kx to i32
  %i.kz = add i32 %i.kv, -48
  %i.la = add i32 %i.kz, %i.ky
  %i.lb = mul i32 %i.la, 10
  %i.lc = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.ld = getelementptr i8, ptr %i.lc, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !11
  %i.lf = sext i8 %i.le to i32
  %i.lg = add i32 %i.lb, -48
  %i.lh = add i32 %i.lg, %i.lf
  %i.li = mul i32 %i.lh, 10
  %i.lj = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.lk = getelementptr i8, ptr %i.lj, i64 2
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !11
  %i.lm = sext i8 %i.ll to i32
  %i.ln = add i32 %i.li, -48
  %i.lo = add i32 %i.ln, %i.lm
  %i.lp = mul i32 %i.lo, 10
  %i.lq = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.lr = getelementptr i8, ptr %i.lq, i64 3
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !11
  %i.lt = sext i8 %i.ls to i32
  %i.lu = add i32 %i.lp, -48
  %i.lv = add i32 %i.lu, %i.lt                    ; 3 uses
  %indvars.iv.next1016.3 = add nuw nsw i64 %indvars.iv1015, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph891, !llvm.loop !36

.lr.ph896:                                        ; preds = %.lr.ph896.prol.loopexit, %.lr.ph896
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020.3, %.lr.ph896 ], [ %indvars.iv1019.unr, %.lr.ph896.prol.loopexit ] ; 4 uses
  %.3419895 = phi i32 [ %i.mw, %.lr.ph896 ], [ %.3419895.unr, %.lr.ph896.prol.loopexit ]
  %i.lw = mul i32 %.3419895, 10
  %i.lx = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.ly = getelementptr i8, ptr %i.lx, i64 1
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !11
  %i.ma = sext i8 %i.lz to i32
  %i.mb = add i32 %i.lw, -48
  %i.mc = add i32 %i.mb, %i.ma
  %i.md = mul i32 %i.mc, 10
  %i.me = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.mf = getelementptr i8, ptr %i.me, i64 2
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !11
  %i.mh = sext i8 %i.mg to i32
  %i.mi = add i32 %i.md, -48
  %i.mj = add i32 %i.mi, %i.mh
  %i.mk = mul i32 %i.mj, 10
  %i.ml = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.mm = getelementptr i8, ptr %i.ml, i64 3
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !11
  %i.mo = sext i8 %i.mn to i32
  %i.mp = add i32 %i.mk, -48
  %i.mq = add i32 %i.mp, %i.mo
  %i.mr = mul i32 %i.mq, 10
  %indvars.iv.next1020.3 = add nuw nsw i64 %indvars.iv1019, 4 ; 3 uses
  %i.ms = getelementptr i8, ptr %.1430, i64 %indvars.iv.next1020.3
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !11
  %i.mu = sext i8 %i.mt to i32
  %i.mv = add i32 %i.mr, -48
  %i.mw = add i32 %i.mv, %i.mu                    ; 2 uses
  %exitcond1023.not.3 = icmp eq i64 %indvars.iv.next1020.3, %wide.trip.count1022
  br i1 %exitcond1023.not.3, label %._crit_edge.thread.i, label %.lr.ph896, !llvm.loop !37

.loopexit733:                                     ; preds = %.thread1122, %bb.bj
  %.3473 = phi i32 [ %i.ev, %bb.bj ], [ %i.jz, %.thread1122 ] ; 3 uses
  %.0448 = phi i32 [ %.0454.lcssa11081118, %bb.bj ], [ %.3457.lcssa.ph, %.thread1122 ] ; 5 uses
  %.3447 = phi i32 [ %spec.select56811111116, %bb.bj ], [ %spec.select5691124, %.thread1122 ] ; 3 uses
  %i.mx = add nuw nsw i32 %.0448, 8
  %i.my = udiv i32 %i.mx, 9
  %i.mz = icmp sgt i32 %.0448, 9
  br i1 %i.mz, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.lr.ph896.prol.loopexit, %.lr.ph896, %.preheader, %.loopexit733
  %.44201148 = phi i32 [ %.0416.lcssa1120, %.loopexit733 ], [ %.2418.lcssa, %.preheader ], [ %.lcssa1485.unr, %.lr.ph896.prol.loopexit ], [ %i.mw, %.lr.ph896 ]
  %.34471143 = phi i32 [ %.3447, %.loopexit733 ], [ %spec.select569, %.preheader ], [ %spec.select569, %.lr.ph896 ], [ %spec.select569, %.lr.ph896.prol.loopexit ]
  %.04481138 = phi i32 [ %.0448, %.loopexit733 ], [ %.3457.lcssa, %.preheader ], [ %.3457.lcssa, %.lr.ph896 ], [ %.3457.lcssa, %.lr.ph896.prol.loopexit ]
  %.34731133 = phi i32 [ %.3473, %.loopexit733 ], [ %i.kb, %.preheader ], [ %i.kb, %.lr.ph896 ], [ %i.kb, %.lr.ph896.prol.loopexit ]
  %i.na = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %bb.bk

.lr.ph.i:                                         ; preds = %.loopexit733, %.lr.ph.i
  %.044.i = phi i32 [ %i.nb, %.lr.ph.i ], [ 1, %.loopexit733 ]
  %.02843.i = phi i32 [ %i.nc, %.lr.ph.i ], [ 0, %.loopexit733 ]
  %i.nb = shl i32 %.044.i, 1                      ; 2 uses
  %i.nc = add i32 %.02843.i, 1                    ; 5 uses
  %i.nd = icmp sgt i32 %i.my, %i.nb
  br i1 %i.nd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ne = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.nf = icmp slt i32 %i.nc, 8
  br i1 %i.nf, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %._crit_edge.i, %._crit_edge.thread.i
end_hunk_0
