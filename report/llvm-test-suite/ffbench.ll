loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@fourn:.preheader6
  %.b = load i1, ptr @main.nsize.0, align 4
  %i.a = select i1 %.b, i32 256, i32 0            ; 3 uses
  %.b1 = load i1, ptr @main.nsize.1, align 4      ; 2 uses
  %i.b = select i1 %.b1, i32 256, i32 0           ; 4 uses
  %i.c = mul nuw nsw i32 %i.b, %i.a               ; 2 uses
  %i.d = sitofp i32 %1 to double
  %i.e = fmul nnan double %i.d, f0x401921FB54442D1C ; 2 uses
  %i.f = shl nuw nsw i32 %i.b, 1                  ; 4 uses
  %i.g = mul nuw nsw i32 %i.f, %i.a               ; 2 uses
  br i1 %.b1, label %.lr.ph19, label %._crit_edge33

.lr.ph19:                                         ; preds = %.preheader6
  %i.h = zext nneg i32 %i.f to i64                ; 2 uses
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  br label %bb.a

.lr.ph32.preheader:                               ; preds = %bb.b
  %i.j = zext nneg i32 %i.g to i64                ; 2 uses
  br label %.lr.ph32

bb.a:                                             ; preds = %.lr.ph19, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph19 ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.014014 = phi i32 [ 1, %.lr.ph19 ], [ %i.ac, %bb.b ] ; 3 uses
  %indvars44 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.k = icmp sgt i32 %.014014, %indvars44
  br i1 %i.k, label %.preheader2.lr.ph, label %.loopexit4.preheader

.preheader2.lr.ph:                                ; preds = %bb.a
  %i.l = sub i32 %.014014, %indvars44
  %i.m = icmp samesign ugt i64 %indvars.iv, %i.i
  br i1 %i.m, label %.loopexit4.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader2.lr.ph, %.lr.ph
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %.lr.ph ], [ %indvars.iv, %.preheader2.lr.ph ] ; 3 uses
  %i.n = trunc nsw i64 %indvars.iv39 to i32
  %i.o = add i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39 ; 3 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 3 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !11
  store double %i.t, ptr %i.p, align 8, !tbaa !11
  store double %i.q, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  store double %i.x, ptr %i.u, align 8, !tbaa !11
  store double %i.v, ptr %i.w, align 8, !tbaa !11
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, %i.h ; 2 uses
  %.not155 = icmp samesign ugt i64 %indvars.iv.next40, %i.i
  br i1 %.not155, label %.loopexit4.preheader, label %.lr.ph, !llvm.loop !20

.loopexit4.preheader:                             ; preds = %.lr.ph, %.preheader2.lr.ph, %bb.a
  br label %.loopexit4

.loopexit4:                                       ; preds = %.loopexit4.preheader, %.loopexit4
  %.0145.in = phi i32 [ %.0145, %.loopexit4 ], [ %i.f, %.loopexit4.preheader ] ; 2 uses
  %.1141 = phi i32 [ %i.ab, %.loopexit4 ], [ %.014014, %.loopexit4.preheader ] ; 3 uses
  %.0145 = lshr i32 %.0145.in, 1                  ; 4 uses
  %i.y = icmp samesign ugt i32 %.0145.in, 3
  %i.z = icmp sgt i32 %.1141, %.0145
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  %i.ab = sub nsw i32 %.1141, %.0145
  br i1 %i.aa, label %.loopexit4, label %bb.b, !llvm.loop !21

bb.b:                                             ; preds = %.loopexit4
  %i.ac = add nsw i32 %.1141, %.0145
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ad = icmp samesign ugt i64 %indvars.iv.next, %i.h
  br i1 %i.ad, label %.lr.ph32.preheader, label %bb.a, !llvm.loop !22

.loopexit:                                        ; preds = %._crit_edge26, %.lr.ph32
  %i.ae = icmp slt i32 %i.af, %i.f
  br i1 %i.ae, label %.lr.ph32, label %._crit_edge33.loopexit, !llvm.loop !23

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.loopexit
  %.014331 = phi i32 [ %i.af, %.loopexit ], [ 2, %.lr.ph32.preheader ] ; 4 uses
  %i.af = shl i32 %.014331, 1                     ; 4 uses
  %i.ag = ashr exact i32 %i.af, 1
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = fdiv double %i.e, %i.ah                 ; 2 uses
  %i.aj = fmul double %i.ai, 5.000000e-01
  %i.ak = tail call double @sin(double noundef %i.aj) #11, !tbaa !4 ; 2 uses
  %i.al = tail call double @sin(double noundef %i.ai) #11, !tbaa !4 ; 2 uses
  %.not15127 = icmp slt i32 %.014331, 1
  br i1 %.not15127, label %.loopexit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.lr.ph32
  %i.am = fmul double %i.ak, -2.000000e+00
  %i.an = fmul double %i.ak, %i.am
  %i.ao = fneg double %i.al
  %i.ap = sext i32 %i.af to i64
  %i.aq = zext nneg i32 %.014331 to i64
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.aq
  %i.ar = insertelement <2 x double> poison, double %i.an, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.al, i64 1
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge26
  %indvars.iv45 = phi i64 [ 1, %.preheader1.lr.ph ], [ %indvars.iv.next46, %._crit_edge26 ] ; 4 uses
  %i.av = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.preheader1.lr.ph ], [ %i.bs, %._crit_edge26 ] ; 5 uses
  %indvars56 = trunc i64 %indvars.iv45 to i32
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %indvars55 = trunc i64 %indvars.iv.next46 to i32 ; 2 uses
  %i.aw = add nsw i32 %indvars55, -2
  %.not15224 = icmp slt i32 %i.aw, %indvars56
  %i.ax = icmp samesign ugt i64 %indvars.iv45, %i.j
  %or.cond = select i1 %.not15224, i1 true, i1 %i.ax
  br i1 %or.cond, label %._crit_edge26, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %.preheader1
  %i.ay = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %.lr.ph22
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %.lr.ph22 ], [ %indvars.iv45, %.lr.ph22.preheader ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv49 ; 3 uses
  %i.ba = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv49 ; 3 uses
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bd = load <2 x double>, ptr %gep, align 8, !tbaa !11 ; 2 uses
  %i.be = fneg double %i.bc
  %i.bf = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bg = insertelement <2 x double> %i.bf, double %i.be, i64 0
  %i.bh = fmul <2 x double> %i.ay, %i.bg
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.bd, <2 x double> %i.bh) ; 2 uses
  %i.bj = load <2 x double>, ptr %i.bb, align 8, !tbaa !11
  %i.bk = fsub <2 x double> %i.bj, %i.bi          ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0
  store double %i.bl, ptr %gep, align 8, !tbaa !11
  %i.bm = load <2 x double>, ptr %i.bb, align 8, !tbaa !11
  %i.bn = extractelement <2 x double> %i.bk, i64 1
  store double %i.bn, ptr %i.ba, align 8, !tbaa !11
  %i.bo = fadd <2 x double> %i.bi, %i.bm
  store <2 x double> %i.bo, ptr %i.bb, align 8, !tbaa !11
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, %i.ap ; 2 uses
  %.not153 = icmp sgt i64 %indvars.iv.next50, %i.j
  br i1 %.not153, label %._crit_edge26, label %.lr.ph22, !llvm.loop !24

._crit_edge26:                                    ; preds = %.lr.ph22, %.preheader1
  %i.bp = fmul <2 x double> %i.av, %i.au
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.as, <2 x double> %i.bq)
  %i.bs = fadd <2 x double> %i.av, %i.br
  %.not151 = icmp slt i32 %.014331, %indvars55
  br i1 %.not151, label %.loopexit, label %.preheader1, !llvm.loop !25

._crit_edge33.loopexit:                           ; preds = %.loopexit
  %.pre.b = load i1, ptr @main.nsize.0, align 4
  %.pre = select i1 %.pre.b, i32 256, i32 0       ; 2 uses
  %.pre63 = mul nuw nsw i32 %.pre, %i.b
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %.preheader6, %._crit_edge33.loopexit
  %.pre-phi = phi i32 [ %.pre63, %._crit_edge33.loopexit ], [ %i.c, %.preheader6 ]
  %i.bt = phi i32 [ %.pre, %._crit_edge33.loopexit ], [ %i.a, %.preheader6 ]
  %i.bu = sdiv i32 %i.c, %.pre-phi
  %i.bv = shl nuw nsw i32 %i.b, 1                 ; 8 uses
  %i.bw = mul nuw nsw i32 %i.bt, %i.bv            ; 7 uses
  %i.bx = mul nsw i32 %i.bw, %i.bu                ; 4 uses
  %.not13.1 = icmp eq i32 %i.bw, 0
  br i1 %.not13.1, label %.preheader5.1, label %.lr.ph19.1

.lr.ph19.1:                                       ; preds = %._crit_edge33
  %i.by = add nsw i32 %i.bv, -2
  %i.bz = zext nneg i32 %i.bv to i64
  %i.ca = zext nneg i32 %i.bw to i64
  %i.cb = sext i32 %i.bx to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph19.1
  %indvars.iv.1 = phi i64 [ 1, %.lr.ph19.1 ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.014014.1 = phi i32 [ 1, %.lr.ph19.1 ], [ %i.cu, %bb.d ] ; 3 uses
  %indvars44.1 = trunc i64 %indvars.iv.1 to i32   ; 4 uses
  %i.cc = icmp sgt i32 %.014014.1, %indvars44.1
  br i1 %i.cc, label %.preheader3.1, label %.loopexit4.1.preheader

.preheader3.1:                                    ; preds = %bb.c
  %i.cd = add i32 %i.by, %indvars44.1             ; 2 uses
  %.not15411.1 = icmp slt i32 %i.cd, %indvars44.1
  br i1 %.not15411.1, label %.loopexit4.1.preheader, label %.preheader2.lr.ph.1

.preheader2.lr.ph.1:                              ; preds = %.preheader3.1
  %i.ce = sub i32 %.014014.1, %indvars44.1
  br label %.preheader2.1

.preheader2.1:                                    ; preds = %._crit_edge.1, %.preheader2.lr.ph.1
  %indvars.iv37.1 = phi i64 [ %indvars.iv.1, %.preheader2.lr.ph.1 ], [ %indvars.iv.next38.1, %._crit_edge.1 ] ; 3 uses
  %indvars42.1 = trunc i64 %indvars.iv37.1 to i32
  %.not1559.1 = icmp slt i32 %i.bx, %indvars42.1
  br i1 %.not1559.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader2.1, %.lr.ph.1
  %indvars.iv39.1 = phi i64 [ %indvars.iv.next40.1, %.lr.ph.1 ], [ %indvars.iv37.1, %.preheader2.1 ] ; 3 uses
  %i.cf = trunc nsw i64 %indvars.iv39.1 to i32
  %i.cg = add i32 %i.ce, %i.cf
  %i.ch = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv39.1 ; 3 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !11
  %i.cj = sext i32 %i.cg to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cj ; 3 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !11
  store double %i.cl, ptr %i.ch, align 8, !tbaa !11
  store double %i.ci, ptr %i.ck, align 8, !tbaa !11
  %i.cm = getelementptr i8, ptr %i.ch, i64 8      ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !11
  %i.co = getelementptr i8, ptr %i.ck, i64 8      ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !11
  store double %i.cp, ptr %i.cm, align 8, !tbaa !11
  store double %i.cn, ptr %i.co, align 8, !tbaa !11
  %indvars.iv.next40.1 = add nsw i64 %indvars.iv39.1, %i.ca ; 2 uses
  %.not155.1 = icmp sgt i64 %indvars.iv.next40.1, %i.cb
  br i1 %.not155.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !20

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.preheader2.1
  %indvars.iv.next38.1 = add nsw i64 %indvars.iv37.1, 2 ; 2 uses
  %indvars.1 = trunc i64 %indvars.iv.next38.1 to i32
  %.not154.1 = icmp slt i32 %i.cd, %indvars.1
  br i1 %.not154.1, label %.loopexit4.1.preheader, label %.preheader2.1, !llvm.loop !26

.loopexit4.1.preheader:                           ; preds = %._crit_edge.1, %.preheader3.1, %bb.c
  br label %.loopexit4.1

.loopexit4.1:                                     ; preds = %.loopexit4.1.preheader, %.loopexit4.1
  %.0145.in.1 = phi i32 [ %.0145.1, %.loopexit4.1 ], [ %i.bw, %.loopexit4.1.preheader ]
  %.1141.1 = phi i32 [ %i.ct, %.loopexit4.1 ], [ %.014014.1, %.loopexit4.1.preheader ] ; 3 uses
  %.0145.1 = lshr i32 %.0145.in.1, 1              ; 5 uses
  %i.cq = icmp samesign uge i32 %.0145.1, %i.bv
  %i.cr = icmp sgt i32 %.1141.1, %.0145.1
  %i.cs = select i1 %i.cq, i1 %i.cr, i1 false
  %i.ct = sub nsw i32 %.1141.1, %.0145.1
  br i1 %i.cs, label %.loopexit4.1, label %bb.d, !llvm.loop !21

bb.d:                                             ; preds = %.loopexit4.1
  %i.cu = add nsw i32 %.1141.1, %.0145.1
  %indvars.iv.next.1 = add i64 %indvars.iv.1, %i.bz ; 2 uses
  %indvars43.1 = trunc i64 %indvars.iv.next.1 to i32
  %.not.1 = icmp slt i32 %i.bw, %indvars43.1
  br i1 %.not.1, label %.preheader5.1, label %bb.c, !llvm.loop !22

.preheader5.1:                                    ; preds = %bb.d, %._crit_edge33
  %i.cv = icmp samesign ult i32 %i.bv, %i.bw
  br i1 %i.cv, label %.lr.ph32.preheader.1, label %._crit_edge33.1

.lr.ph32.preheader.1:                             ; preds = %.preheader5.1
  %i.cw = zext nneg i32 %i.bv to i64
  %i.cx = sext i32 %i.bx to i64
  br label %.lr.ph32.1

.lr.ph32.1:                                       ; preds = %.loopexit.1, %.lr.ph32.preheader.1
  %.014331.1 = phi i32 [ %i.cy, %.loopexit.1 ], [ %i.bv, %.lr.ph32.preheader.1 ] ; 4 uses
  %i.cy = shl i32 %.014331.1, 1                   ; 4 uses
  %i.cz = sdiv i32 %i.cy, %i.bv
  %i.da = sitofp i32 %i.cz to double
  %i.db = fdiv double %i.e, %i.da                 ; 2 uses
  %i.dc = fmul double %i.db, 5.000000e-01
  %i.dd = tail call double @sin(double noundef %i.dc) #11, !tbaa !4 ; 2 uses
  %i.de = tail call double @sin(double noundef %i.db) #11, !tbaa !4 ; 2 uses
  %.not15127.1 = icmp slt i32 %.014331.1, 1
  br i1 %.not15127.1, label %.loopexit.1, label %.preheader1.lr.ph.1

.preheader1.lr.ph.1:                              ; preds = %.lr.ph32.1
  %i.df = fmul double %i.dd, -2.000000e+00
  %i.dg = fmul double %i.dd, %i.df
  %i.dh = fneg double %i.de
  %i.di = sext i32 %i.cy to i64
  %i.dj = zext nneg i32 %.014331.1 to i64
  %invariant.gep73 = getelementptr [8 x i8], ptr %0, i64 %i.dj
  %i.dk = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.de, i64 1
  br label %.preheader1.1

.preheader1.1:                                    ; preds = %._crit_edge26.1, %.preheader1.lr.ph.1
  %indvars.iv45.1 = phi i64 [ 1, %.preheader1.lr.ph.1 ], [ %indvars.iv.next46.1, %._crit_edge26.1 ] ; 3 uses
  %i.do = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.preheader1.lr.ph.1 ], [ %i.ek, %._crit_edge26.1 ] ; 5 uses
  %indvars56.1 = trunc i64 %indvars.iv45.1 to i32
  %indvars.iv.next46.1 = add i64 %indvars.iv45.1, %i.cw ; 2 uses
  %indvars55.1 = trunc i64 %indvars.iv.next46.1 to i32 ; 2 uses
  %i.dp = add nsw i32 %indvars55.1, -2            ; 2 uses
  %.not15224.1 = icmp slt i32 %i.dp, %indvars56.1
  br i1 %.not15224.1, label %._crit_edge26.1, label %.preheader.1.preheader

.preheader.1.preheader:                           ; preds = %.preheader1.1
  %i.dq = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1.preheader, %._crit_edge23.1
  %indvars.iv47.1 = phi i64 [ %indvars.iv.next48.1, %._crit_edge23.1 ], [ %indvars.iv45.1, %.preheader.1.preheader ] ; 3 uses
  %indvars54.1 = trunc i64 %indvars.iv47.1 to i32
  %.not15320.1 = icmp slt i32 %i.bx, %indvars54.1
  br i1 %.not15320.1, label %._crit_edge23.1, label %.lr.ph22.1

.lr.ph22.1:                                       ; preds = %.preheader.1, %.lr.ph22.1
  %indvars.iv49.1 = phi i64 [ %indvars.iv.next50.1, %.lr.ph22.1 ], [ %indvars.iv47.1, %.preheader.1 ] ; 3 uses
  %gep74 = getelementptr [8 x i8], ptr %invariant.gep73, i64 %indvars.iv49.1 ; 3 uses
  %i.ds = getelementptr i8, ptr %gep74, i64 8     ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv49.1 ; 3 uses
  %i.du = load double, ptr %i.ds, align 8, !tbaa !11
  %i.dv = load <2 x double>, ptr %gep74, align 8, !tbaa !11 ; 2 uses
  %i.dw = fneg double %i.du
  %i.dx = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dy = insertelement <2 x double> %i.dx, double %i.dw, i64 0
  %i.dz = fmul <2 x double> %i.dq, %i.dy
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dv, <2 x double> %i.dz) ; 2 uses
  %i.eb = load <2 x double>, ptr %i.dt, align 8, !tbaa !11
  %i.ec = fsub <2 x double> %i.eb, %i.ea          ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 0
  store double %i.ed, ptr %gep74, align 8, !tbaa !11
  %i.ee = load <2 x double>, ptr %i.dt, align 8, !tbaa !11
  %i.ef = extractelement <2 x double> %i.ec, i64 1
  store double %i.ef, ptr %i.ds, align 8, !tbaa !11
  %i.eg = fadd <2 x double> %i.ea, %i.ee
  store <2 x double> %i.eg, ptr %i.dt, align 8, !tbaa !11
  %indvars.iv.next50.1 = add nsw i64 %indvars.iv49.1, %i.di ; 2 uses
  %.not153.1 = icmp sgt i64 %indvars.iv.next50.1, %i.cx
  br i1 %.not153.1, label %._crit_edge23.1, label %.lr.ph22.1, !llvm.loop !24

._crit_edge23.1:                                  ; preds = %.lr.ph22.1, %.preheader.1
  %indvars.iv.next48.1 = add nsw i64 %indvars.iv47.1, 2 ; 2 uses
  %indvars53.1 = trunc i64 %indvars.iv.next48.1 to i32
  %.not152.1 = icmp slt i32 %i.dp, %indvars53.1
  br i1 %.not152.1, label %._crit_edge26.1, label %.preheader.1, !llvm.loop !27

._crit_edge26.1:                                  ; preds = %._crit_edge23.1, %.preheader1.1
  %i.eh = fmul <2 x double> %i.do, %i.dn
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.dl, <2 x double> %i.ei)
  %i.ek = fadd <2 x double> %i.do, %i.ej
  %.not151.1 = icmp slt i32 %.014331.1, %indvars55.1
  br i1 %.not151.1, label %.loopexit.1, label %.preheader1.1, !llvm.loop !25

.loopexit.1:                                      ; preds = %._crit_edge26.1, %.lr.ph32.1
  %i.el = icmp slt i32 %i.cy, %i.bw
  br i1 %i.el, label %.lr.ph32.1, label %._crit_edge33.1, !llvm.loop !23

._crit_edge33.1:                                  ; preds = %.loopexit.1, %.preheader5.1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
end_hunk_0
