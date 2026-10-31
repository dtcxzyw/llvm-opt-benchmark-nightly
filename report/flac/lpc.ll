Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0_@FLAC__lpc_compute_autocorrelation:bb.a
  %i.p = xor i32 %i.o, -1
  %i.q = icmp ult i32 %i.p, %i.h
  %i.r = or i1 %i.q, %i.i
  br i1 %i.r, label %scalar.ph490.preheader, label %vector.ph492

vector.ph492:                                     ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next500, %vector.body494 ] ; 3 uses
  %i.s = add nuw i64 %index495, %indvars.iv274
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load496 = load <2 x float>, ptr %i.u, align 4, !tbaa !10
  %wide.load497 = load <2 x float>, ptr %i.v, align 4, !tbaa !10
  %i.w = fpext reassoc nsz arcp <2 x float> %wide.load496 to <2 x double>
  %i.x = fpext reassoc nsz arcp <2 x float> %wide.load497 to <2 x double>
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index495 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load498 = load <2 x double>, ptr %i.y, align 8, !tbaa !17
  %wide.load499 = load <2 x double>, ptr %i.z, align 8, !tbaa !17
  %i.aa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.w, <2 x double> %wide.load498)
  %i.ab = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.x, <2 x double> %wide.load499)
  store <2 x double> %i.aa, ptr %i.y, align 8, !tbaa !17
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !17
  %index.next500 = add nuw i64 %index495, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next500, %n.vec493
  br i1 %i.ac, label %middle.block501, label %vector.body494, !llvm.loop !30

middle.block501:                                  ; preds = %vector.body494
  br i1 %cmp.n502, label %._crit_edge.us, label %scalar.ph490.preheader

scalar.ph490.preheader:                           ; preds = %vector.scevcheck, %.lr.ph185.us, %middle.block501
  %indvars.iv269.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph185.us ], [ %n.vec493, %middle.block501 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph490.prol.loopexit, label %scalar.ph490.prol

scalar.ph490.prol:                                ; preds = %scalar.ph490.preheader
  %i.ad = add nuw i64 %indvars.iv269.ph, %indvars.iv274
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = fpext reassoc nsz arcp float %i.ag to double
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv269.ph ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !17
  %i.ak = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.n, double %i.ah, double %i.aj)
  store double %i.ak, ptr %i.ai, align 8, !tbaa !17
  %indvars.iv.next270.prol = or disjoint i64 %indvars.iv269.ph, 1
  br label %scalar.ph490.prol.loopexit

scalar.ph490.prol.loopexit:                       ; preds = %scalar.ph490.prol, %scalar.ph490.preheader
  %indvars.iv269.unr = phi i64 [ %indvars.iv269.ph, %scalar.ph490.preheader ], [ %indvars.iv.next270.prol, %scalar.ph490.prol ]
  %i.al = icmp eq i64 %indvars.iv269.ph, %i.j
  br i1 %i.al, label %._crit_edge.us, label %scalar.ph490

scalar.ph490:                                     ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490
  %indvars.iv269 = phi i64 [ %indvars.iv.next270.1, %scalar.ph490 ], [ %indvars.iv269.unr, %scalar.ph490.prol.loopexit ] ; 4 uses
  %i.am = add nuw i64 %indvars.iv269, %indvars.iv274
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !10
  %i.aq = fpext reassoc nsz arcp float %i.ap to double
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv269 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !17
  %i.at = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.n, double %i.aq, double %i.as)
  store double %i.at, ptr %i.ar, align 8, !tbaa !17
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %i.au = add nuw i64 %indvars.iv.next270, %indvars.iv274
  %i.av = and i64 %i.au, 4294967295
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  %i.ay = fpext reassoc nsz arcp float %i.ax to double
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next270 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !17
  %i.bb = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.n, double %i.ay, double %i.ba)
  store double %i.bb, ptr %i.az, align 8, !tbaa !17
  %indvars.iv.next270.1 = add nuw nsw i64 %indvars.iv269, 2 ; 2 uses
  %exitcond273.not.1 = icmp eq i64 %indvars.iv.next270.1, %wide.trip.count272
  br i1 %exitcond273.not.1, label %._crit_edge.us, label %scalar.ph490, !llvm.loop !31

._crit_edge.us:                                   ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490, %middle.block501
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %.not148.us.not = icmp samesign ult i64 %indvars.iv274, %i.f
  br i1 %.not148.us.not, label %.lr.ph185.us, label %.preheader.loopexit193, !llvm.loop !32

.preheader.loopexit193:                           ; preds = %._crit_edge.us
  %i.bc = trunc nuw i64 %indvars.iv.next275 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit193, %.preheader149.split.preheader
  %.us-phi = phi i32 [ %umax, %.preheader149.split.preheader ], [ %i.bc, %.preheader.loopexit193 ] ; 2 uses
  %i.bd = icmp ult i32 %.us-phi, %1
  br i1 %i.bd, label %.lr.ph190.preheader, label %.loopexit

.lr.ph190.preheader:                              ; preds = %.preheader
  %i.be = zext i32 %.us-phi to i64                ; 2 uses
  %i.bf = zext i32 %1 to i64                      ; 3 uses
  br label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %._crit_edge, %.lr.ph190.preheader
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %.lr.ph190.preheader ] ; 2 uses
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %._crit_edge ], [ %i.be, %.lr.ph190.preheader ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv280
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !10
  %i.bi = fpext reassoc nsz arcp float %i.bh to double ; 2 uses
  %i.bj = sub nuw nsw i64 %i.bf, %indvars.iv280   ; 4 uses
  %min.iters.check506 = icmp samesign ult i64 %i.bj, 4
  br i1 %min.iters.check506, label %.lr.ph188.preheader522, label %vector.scevcheck504

vector.scevcheck504:                              ; preds = %.lr.ph188.preheader
  %i.bk = trunc i64 %indvars.iv280 to i32
  %i.bl = add i64 %indvar, %i.be
  %i.bm = sub i64 %i.bf, %i.bl
  %i.bn = tail call i64 @llvm.usub.sat.i64(i64 %i.bm, i64 1) ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = xor i32 %i.bk, -1
  %i.bq = icmp ult i32 %i.bp, %i.bo
  %i.br = icmp ugt i64 %i.bn, 4294967295
  %i.bs = or i1 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph188.preheader522, label %vector.ph507

vector.ph507:                                     ; preds = %vector.scevcheck504
  %n.vec508 = and i64 %i.bj, 4294967292           ; 3 uses
  %broadcast.splatinsert509 = insertelement <2 x double> poison, double %i.bi, i64 0
  %broadcast.splat510 = shufflevector <2 x double> %broadcast.splatinsert509, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph507
  %index512 = phi i64 [ 0, %vector.ph507 ], [ %index.next517, %vector.body511 ] ; 3 uses
  %i.bt = add nuw i64 %index512, %indvars.iv280
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %wide.load513 = load <2 x float>, ptr %i.bv, align 4, !tbaa !10
  %wide.load514 = load <2 x float>, ptr %i.bw, align 4, !tbaa !10
  %i.bx = fpext reassoc nsz arcp <2 x float> %wide.load513 to <2 x double>
  %i.by = fpext reassoc nsz arcp <2 x float> %wide.load514 to <2 x double>
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index512 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load515 = load <2 x double>, ptr %i.bz, align 8, !tbaa !17
  %wide.load516 = load <2 x double>, ptr %i.ca, align 8, !tbaa !17
  %i.cb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat510, <2 x double> %i.bx, <2 x double> %wide.load515)
  %i.cc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat510, <2 x double> %i.by, <2 x double> %wide.load516)
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !17
  store <2 x double> %i.cc, ptr %i.ca, align 8, !tbaa !17
  %index.next517 = add nuw i64 %index512, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next517, %n.vec508
  br i1 %i.cd, label %middle.block518, label %vector.body511, !llvm.loop !33

middle.block518:                                  ; preds = %vector.body511
  %cmp.n519 = icmp eq i64 %i.bj, %n.vec508
  br i1 %cmp.n519, label %._crit_edge, label %.lr.ph188.preheader522

.lr.ph188.preheader522:                           ; preds = %vector.scevcheck504, %.lr.ph188.preheader, %middle.block518
  %indvars.iv277.ph = phi i64 [ 0, %vector.scevcheck504 ], [ 0, %.lr.ph188.preheader ], [ %n.vec508, %middle.block518 ]
  br label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.preheader522, %.lr.ph188
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %.lr.ph188 ], [ %indvars.iv277.ph, %.lr.ph188.preheader522 ] ; 3 uses
  %i.ce = add nuw i64 %indvars.iv277, %indvars.iv280
  %i.cf = and i64 %i.ce, 4294967295
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !10
  %i.ci = fpext reassoc nsz arcp float %i.ch to double
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv277 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !17
  %i.cl = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bi, double %i.ci, double %i.ck)
  store double %i.cl, ptr %i.cj, align 8, !tbaa !17
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.cm = icmp samesign ult i64 %indvars.iv.next278, %i.bj
  br i1 %i.cm, label %.lr.ph188, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph188, %middle.block518
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %i.bf
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond284.not, label %.loopexit, label %.lr.ph188.preheader, !llvm.loop !35

bb.c:                                             ; preds = %bb.a
  %i.cn = icmp samesign ult i32 %2, 9
  br i1 %i.cn, label %.preheader155.preheader, label %bb.d

.preheader155.preheader:                          ; preds = %bb.c
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.cy = load float, ptr %0, align 4, !tbaa !10
  %i.cz = fpext reassoc nsz arcp float %i.cy to double ; 7 uses
  %i.da = load <2 x float>, ptr %i.cp, align 4, !tbaa !10
  %i.db = load <2 x float>, ptr %i.cq, align 4, !tbaa !10
  %i.dc = fpext reassoc nsz arcp <2 x float> %i.da to <2 x double> ; 6 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0 ; 2 uses
  %i.de = fmul reassoc nsz arcp double %i.dd, %i.cz
  %i.df = load <2 x float>, ptr %i.cs, align 4, !tbaa !10
  %i.dg = fpext reassoc nsz arcp <2 x float> %i.db to <2 x double> ; 4 uses
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dj = load <2 x float>, ptr %i.ct, align 4, !tbaa !10
  %i.dk = fpext reassoc nsz arcp <2 x float> %i.df to <2 x double> ; 6 uses
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = extractelement <2 x double> %i.dk, i64 0
  %i.dn = load <2 x float>, ptr %i.cv, align 4, !tbaa !10
  %i.do = fpext reassoc nsz arcp <2 x float> %i.dj to <2 x double> ; 5 uses
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = extractelement <2 x double> %i.do, i64 0
  %i.dr = fmul reassoc nsz arcp double %i.dq, %i.cz
  %i.ds = load <2 x float>, ptr %i.cw, align 4, !tbaa !10
  %i.dt = fpext reassoc nsz arcp <2 x float> %i.dn to <2 x double> ; 4 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dv = extractelement <2 x double> %i.dt, i64 0 ; 2 uses
  %i.dw = fpext reassoc nsz arcp <2 x float> %i.ds to <2 x double> ; 4 uses
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dy = extractelement <2 x double> %i.dw, i64 0
  %i.dz = fmul reassoc nsz arcp double %i.dy, %i.cz
  %i.ea = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.eb = insertelement <2 x double> %i.dh, double %i.cz, i64 0 ; 2 uses
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul reassoc nsz arcp <2 x double> %i.eb, %i.ec
  %i.ee = shufflevector <2 x double> %i.dc, <2 x double> %i.dk, <2 x i32> <i32 0, i32 2>
  %i.ef = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.ef, <2 x double> %i.ed) ; 2 uses
  %i.eh = shufflevector <2 x double> %i.di, <2 x double> %i.eg, <2 x i32> <i32 0, i32 2>
  %i.ei = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.dc, <2 x double> %i.eh)
  %i.ej = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dg, <2 x double> %i.ei)
  %i.ek = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dk, <2 x double> %i.ej)
  %i.el = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.do, <2 x double> %i.ek)
  %i.em = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.dt, <2 x double> %i.el)
  %i.en = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.dw, <2 x double> %i.em) ; 4 uses
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.eo, ptr %3, align 8, !tbaa !17
  %i.ep = fmul reassoc nsz arcp double %i.dm, %i.cz
  %i.eq = shufflevector <2 x double> %i.dg, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.er = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.es = insertelement <2 x double> %i.er, double %i.ep, i64 1
  %i.et = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.eq, <2 x double> %i.es)
  %i.eu = shufflevector <2 x double> %i.dk, <2 x double> %i.dg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ev = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.eu, <2 x double> %i.et)
  %i.ew = shufflevector <2 x double> %i.do, <2 x double> %i.dk, <2 x i32> <i32 0, i32 2>
  %i.ex = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.ew, <2 x double> %i.ev)
  %i.ey = shufflevector <2 x double> %i.dt, <2 x double> %i.do, <2 x i32> <i32 0, i32 2>
  %i.ez = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.ey, <2 x double> %i.ex) ; 4 uses
  store <2 x double> %i.ez, ptr %i.cr, align 8, !tbaa !17
  %i.fa = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dv, double %i.dd, double %i.dr)
  %i.fb = fmul reassoc nsz arcp double %i.dv, %i.cz
  %i.fc = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.fb, i64 1
  %i.fe = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.eq, <2 x double> %i.fd)
  %i.ff = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.eu, <2 x double> %i.fe) ; 4 uses
  store <2 x double> %i.ff, ptr %i.cu, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !17
  %i.fi = insertelement <2 x double> %i.dc, double %i.cz, i64 1
  %i.fj = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.fk = insertelement <2 x double> %i.fj, double %i.fh, i64 1
  %i.fl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.fi, <2 x double> %i.fk) ; 4 uses
  store <2 x double> %i.fl, ptr %i.cx, align 8, !tbaa !17
  %i.fm = icmp sgt i32 %1, 8
  br i1 %i.fm, label %.preheader150.preheader, label %.loopexit

.preheader150.preheader:                          ; preds = %.preheader155.preheader
  %wide.trip.count264 = zext nneg i32 %1 to i64   ; 2 uses
  %i.fn = add nsw i64 %wide.trip.count264, -8     ; 3 uses
  %min.iters.check457 = icmp ult i64 %i.fn, 2
  br i1 %min.iters.check457, label %.preheader150.preheader523, label %vector.ph458

vector.ph458:                                     ; preds = %.preheader150.preheader
  %n.vec459 = and i64 %i.fn, -2                   ; 3 uses
  %i.fo = add nsw i64 %n.vec459, 8
  %i.fp = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fl, <2 x i32> <i32 3, i32 1>
  %i.fq = insertelement <2 x double> %i.fl, double 0.000000e+00, i64 1
  %i.fr = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.ff, <2 x i32> <i32 3, i32 1>
  %i.fs = insertelement <2 x double> %i.ff, double 0.000000e+00, i64 1
  %i.ft = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.ez, <2 x i32> <i32 3, i32 1>
  %i.fu = insertelement <2 x double> %i.ez, double 0.000000e+00, i64 1
  %i.fv = insertelement <2 x double> %i.en, double 0.000000e+00, i64 1
  %i.fw = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.en, <2 x i32> <i32 3, i32 1>
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph458
  %index461 = phi i64 [ 0, %vector.ph458 ], [ %index.next478, %vector.body460 ] ; 2 uses
  %vec.phi462 = phi <2 x double> [ %i.fp, %vector.ph458 ], [ %i.gv, %vector.body460 ]
  %vec.phi463 = phi <2 x double> [ %i.fq, %vector.ph458 ], [ %i.gs, %vector.body460 ]
  %vec.phi464 = phi <2 x double> [ %i.fr, %vector.ph458 ], [ %i.gp, %vector.body460 ]
  %vec.phi465 = phi <2 x double> [ %i.fs, %vector.ph458 ], [ %i.gm, %vector.body460 ]
  %vec.phi466 = phi <2 x double> [ %i.ft, %vector.ph458 ], [ %i.gj, %vector.body460 ]
  %vec.phi467 = phi <2 x double> [ %i.fu, %vector.ph458 ], [ %i.gg, %vector.body460 ]
  %vec.phi468 = phi <2 x double> [ %i.fv, %vector.ph458 ], [ %i.gd, %vector.body460 ]
  %vec.phi469 = phi <2 x double> [ %i.fw, %vector.ph458 ], [ %i.ga, %vector.body460 ]
  %i.fx = getelementptr [4 x i8], ptr %0, i64 %index461 ; 8 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 32
  %wide.load470 = load <2 x float>, ptr %i.fy, align 4, !tbaa !10
  %i.fz = fpext reassoc nsz arcp <2 x float> %wide.load470 to <2 x double> ; 9 uses
  %i.ga = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.fz, <2 x double> %vec.phi469) ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fx, i64 28
  %wide.load471 = load <2 x float>, ptr %i.gb, align 4, !tbaa !10
  %i.gc = fpext reassoc nsz arcp <2 x float> %wide.load471 to <2 x double>
  %i.gd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gc, <2 x double> %vec.phi468) ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fx, i64 24
  %wide.load472 = load <2 x float>, ptr %i.ge, align 4, !tbaa !10
  %i.gf = fpext reassoc nsz arcp <2 x float> %wide.load472 to <2 x double>
  %i.gg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gf, <2 x double> %vec.phi467) ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fx, i64 20
  %wide.load473 = load <2 x float>, ptr %i.gh, align 4, !tbaa !10
  %i.gi = fpext reassoc nsz arcp <2 x float> %wide.load473 to <2 x double>
  %i.gj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gi, <2 x double> %vec.phi466) ; 2 uses
  %i.gk = getelementptr i8, ptr %i.fx, i64 16
  %wide.load474 = load <2 x float>, ptr %i.gk, align 4, !tbaa !10
  %i.gl = fpext reassoc nsz arcp <2 x float> %wide.load474 to <2 x double>
  %i.gm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gl, <2 x double> %vec.phi465) ; 2 uses
  %i.gn = getelementptr i8, ptr %i.fx, i64 12
  %wide.load475 = load <2 x float>, ptr %i.gn, align 4, !tbaa !10
  %i.go = fpext reassoc nsz arcp <2 x float> %wide.load475 to <2 x double>
  %i.gp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.go, <2 x double> %vec.phi464) ; 2 uses
  %i.gq = getelementptr i8, ptr %i.fx, i64 8
  %wide.load476 = load <2 x float>, ptr %i.gq, align 4, !tbaa !10
  %i.gr = fpext reassoc nsz arcp <2 x float> %wide.load476 to <2 x double>
  %i.gs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gr, <2 x double> %vec.phi463) ; 2 uses
  %i.gt = getelementptr i8, ptr %i.fx, i64 4
  %wide.load477 = load <2 x float>, ptr %i.gt, align 4, !tbaa !10
  %i.gu = fpext reassoc nsz arcp <2 x float> %wide.load477 to <2 x double>
  %i.gv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gu, <2 x double> %vec.phi462) ; 2 uses
  %index.next478 = add nuw i64 %index461, 2       ; 2 uses
  %i.gw = icmp eq i64 %index.next478, %n.vec459
  br i1 %i.gw, label %middle.block479, label %vector.body460, !llvm.loop !36

middle.block479:                                  ; preds = %vector.body460
  %i.gx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gv)
  %i.gy = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gs)
  %i.gz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gp)
  %i.ha = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gm)
  %i.hb = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gj)
  %i.hc = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gg)
  %i.hd = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gd)
  %i.he = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ga)
  %cmp.n480 = icmp eq i64 %i.fn, %n.vec459
  %i.hf = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hg = insertelement <2 x double> %i.hf, double %i.he, i64 1 ; 2 uses
  %i.hh = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.hb, i64 1 ; 2 uses
  %i.hj = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.gz, i64 1 ; 2 uses
  %i.hl = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.gx, i64 1 ; 2 uses
  br i1 %cmp.n480, label %.loopexit.loopexit287, label %.preheader150.preheader523

.preheader150.preheader523:                       ; preds = %.preheader150.preheader, %middle.block479
  %indvars.iv261.ph = phi i64 [ 8, %.preheader150.preheader ], [ %i.fo, %middle.block479 ]
  %.ph = phi <2 x double> [ %i.en, %.preheader150.preheader ], [ %i.hg, %middle.block479 ]
  %.ph524 = phi <2 x double> [ %i.ez, %.preheader150.preheader ], [ %i.hi, %middle.block479 ]
  %.ph525 = phi <2 x double> [ %i.ff, %.preheader150.preheader ], [ %i.hk, %middle.block479 ]
  %.ph526 = phi <2 x double> [ %i.fl, %.preheader150.preheader ], [ %i.hm, %middle.block479 ]
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.preheader523, %.preheader150
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.preheader150 ], [ %indvars.iv261.ph, %.preheader150.preheader523 ] ; 5 uses
  %i.hn = phi <2 x double> [ %i.hw, %.preheader150 ], [ %.ph, %.preheader150.preheader523 ]
  %i.ho = phi <2 x double> [ %i.ic, %.preheader150 ], [ %.ph524, %.preheader150.preheader523 ]
  %i.hp = phi <2 x double> [ %i.ii, %.preheader150 ], [ %.ph525, %.preheader150.preheader523 ]
  %i.hq = phi <2 x double> [ %i.io, %.preheader150 ], [ %.ph526, %.preheader150.preheader523 ]
  %i.hr = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.hs = getelementptr i8, ptr %i.hr, i64 -4
  %i.ht = load <2 x float>, ptr %i.hs, align 4, !tbaa !10
  %i.hu = fpext reassoc nsz arcp <2 x float> %i.ht to <2 x double> ; 2 uses
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.hw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hu, <2 x double> %i.hn) ; 2 uses
  %i.hx = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.hy = getelementptr i8, ptr %i.hx, i64 -12
  %i.hz = load <2 x float>, ptr %i.hy, align 4, !tbaa !10
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ib = fpext reassoc nsz arcp <2 x float> %i.ia to <2 x double>
  %i.ic = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.ib, <2 x double> %i.ho) ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.ie = getelementptr i8, ptr %i.id, i64 -20
  %i.if = load <2 x float>, ptr %i.ie, align 4, !tbaa !10
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ih = fpext reassoc nsz arcp <2 x float> %i.ig to <2 x double>
  %i.ii = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.ih, <2 x double> %i.hp) ; 2 uses
  %i.ij = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.ik = getelementptr i8, ptr %i.ij, i64 -28
  %i.il = load <2 x float>, ptr %i.ik, align 4, !tbaa !10
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.in = fpext reassoc nsz arcp <2 x float> %i.im to <2 x double>
  %i.io = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.in, <2 x double> %i.hq) ; 2 uses
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit.loopexit287, label %.preheader150, !llvm.loop !37

bb.d:                                             ; preds = %bb.c
  %i.ip = icmp samesign ult i32 %2, 13
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.ip, label %.preheader161.preheader, label %.preheader167.preheader

.preheader167.preheader:                          ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.iq, i8 0, i64 72, i1 false), !tbaa !17
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !17
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jk = load float, ptr %0, align 4, !tbaa !10
  %i.jl = fpext reassoc nsz arcp float %i.jk to double ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.jq = load float, ptr %i.jj, align 4, !tbaa !10
  %i.jr = load <2 x float>, ptr %i.iv, align 4, !tbaa !10
  %i.js = fpext reassoc nsz arcp <2 x float> %i.jr to <2 x double> ; 11 uses
  %i.jt = extractelement <2 x double> %i.js, i64 1
  %i.ju = load <2 x float>, ptr %i.ix, align 4, !tbaa !10
  %i.jv = load <2 x float>, ptr %i.iy, align 4, !tbaa !10
  %i.jw = fpext reassoc nsz arcp <2 x float> %i.ju to <2 x double> ; 3 uses
  %i.jx = load <2 x float>, ptr %i.ja, align 4, !tbaa !10
  %i.jy = fpext reassoc nsz arcp <2 x float> %i.jv to <2 x double> ; 2 uses
  %i.jz = load <2 x float>, ptr %i.jd, align 4, !tbaa !10
  %i.ka = fpext reassoc nsz arcp <2 x float> %i.jx to <2 x double> ; 2 uses
  %i.kb = load <2 x float>, ptr %i.jf, align 4, !tbaa !10
  %i.kc = fpext reassoc nsz arcp <2 x float> %i.jz to <2 x double> ; 2 uses
  %i.kd = load <2 x float>, ptr %i.jg, align 4, !tbaa !10
  %i.ke = fpext reassoc nsz arcp <2 x float> %i.kb to <2 x double> ; 2 uses
  %i.kf = fpext reassoc nsz arcp <2 x float> %i.kd to <2 x double> ; 3 uses
  %i.kg = load float, ptr %i.jd, align 4, !tbaa !10
  %i.kh = load <2 x float>, ptr %i.is, align 4, !tbaa !10
  %i.ki = fpext reassoc nsz arcp <2 x float> %i.kh to <2 x double> ; 6 uses
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kk = shufflevector <2 x double> %i.js, <2 x double> %i.ki, <2 x i32> <i32 0, i32 3>
  %i.kl = shufflevector <2 x double> %i.jw, <2 x double> %i.js, <2 x i32> <i32 0, i32 2>
  %i.km = shufflevector <2 x double> %i.jy, <2 x double> %i.jw, <2 x i32> <i32 0, i32 2>
  %i.kn = fpext reassoc nsz arcp float %i.kg to double
  %i.ko = insertelement <2 x double> %i.ke, double %i.kn, i64 1
  %i.kp = load <2 x float>, ptr %0, align 4, !tbaa !10
  %i.kq = fpext reassoc nsz arcp <2 x float> %i.kp to <2 x double> ; 6 uses
  %i.kr = load <2 x double>, ptr %i.je, align 8, !tbaa !17
  %i.ks = load <2 x float>, ptr %i.ix, align 4, !tbaa !10
  %i.kt = load <2 x float>, ptr %i.iv, align 4, !tbaa !10
  %i.ku = fpext reassoc nsz arcp <2 x float> %i.kt to <2 x double> ; 3 uses
  %i.kv = load <2 x float>, ptr %i.iy, align 4, !tbaa !10
  %i.kw = fpext reassoc nsz arcp <2 x float> %i.ks to <2 x double> ; 2 uses
  %i.kx = fpext reassoc nsz arcp <2 x float> %i.kv to <2 x double> ; 3 uses
  %i.ky = shufflevector <2 x double> %i.ki, <2 x double> %i.kq, <2 x i32> <i32 0, i32 3>
  %i.kz = insertelement <2 x double> %i.kq, double -0.000000e+00, i64 1
  %i.la = shufflevector <2 x double> %i.kq, <2 x double> %i.ki, <2 x i32> <i32 1, i32 2>
  %i.lb = shufflevector <2 x double> %i.ki, <2 x double> %i.js, <2 x i32> <i32 1, i32 2>
  %i.lc = shufflevector <2 x double> %i.ka, <2 x double> %i.kx, <2 x i32> <i32 0, i32 2>
  %i.ld = shufflevector <2 x double> %i.kc, <2 x double> %i.kx, <2 x i32> <i32 0, i32 3>
  %i.le = load <2 x double>, ptr %i.jh, align 8, !tbaa !17
  %i.lf = load <2 x float>, ptr %i.ir, align 4, !tbaa !10
  %i.lg = load <2 x float>, ptr %i.is, align 4, !tbaa !10
  %i.lh = fpext reassoc nsz arcp <2 x float> %i.lf to <2 x double> ; 3 uses
  %i.li = fpext reassoc nsz arcp <2 x float> %i.lg to <2 x double> ; 4 uses
  %i.lj = insertelement <2 x double> %i.kq, double 0.000000e+00, i64 1
  %i.lk = shufflevector <2 x double> %i.li, <2 x double> %i.ku, <2 x i32> <i32 1, i32 2>
  %i.ll = shufflevector <2 x double> %i.ku, <2 x double> %i.kw, <2 x i32> <i32 0, i32 2>
  %i.lm = load float, ptr %i.is, align 4, !tbaa !10
  %i.ln = load <2 x double>, ptr %i.jm, align 8, !tbaa !17
  %i.lo = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.jl, i64 0
  %i.lp = insertelement <2 x double> %i.lh, double %i.jl, i64 1
  %i.lq = shufflevector <2 x double> %i.li, <2 x double> %i.lh, <2 x i32> <i32 0, i32 2>
  %i.lr = load <2 x float>, ptr %i.iy, align 4, !tbaa !10
  %i.ls = load <2 x float>, ptr %i.ja, align 4, !tbaa !10
  %i.lt = fpext reassoc nsz arcp <2 x float> %i.lr to <2 x double> ; 6 uses
  %i.lu = extractelement <2 x double> %i.lt, i64 0
  %i.lv = load <2 x float>, ptr %i.jd, align 4, !tbaa !10
  %i.lw = fpext reassoc nsz arcp <2 x float> %i.ls to <2 x double> ; 4 uses
  %i.lx = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ly = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lz = shufflevector <2 x double> %i.js, <2 x double> %i.lt, <2 x i32> <i32 1, i32 2>
  %i.ma = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.mb = load <2 x float>, ptr %i.jf, align 4, !tbaa !10
  %i.mc = fpext reassoc nsz arcp <2 x float> %i.lv to <2 x double> ; 5 uses
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.me = insertelement <2 x double> %i.mc, double 0.000000e+00, i64 1
  %i.mf = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.kz, <2 x double> %i.kr)
  %i.mg = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mh = load <2 x float>, ptr %i.jg, align 4, !tbaa !10
  %i.mi = fpext reassoc nsz arcp <2 x float> %i.mb to <2 x double> ; 4 uses
  %i.mj = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.mk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.kq, <2 x double> %i.mg)
  %i.ml = load <2 x float>, ptr %i.ji, align 4, !tbaa !10
  %i.mm = fpext reassoc nsz arcp <2 x float> %i.mh to <2 x double> ; 4 uses
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.mo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.la, <2 x double> %i.mk)
  %i.mp = insertelement <2 x double> %i.mm, double -0.000000e+00, i64 1
  %i.mq = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> %i.lj, <2 x double> %i.le)
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ms = load <2 x float>, ptr %i.jj, align 4, !tbaa !10
  %i.mt = fpext reassoc nsz arcp <2 x float> %i.ml to <2 x double> ; 3 uses
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.mv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.ki, <2 x double> %i.mo)
  %i.mw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.kq, <2 x double> %i.mr)
  %i.mx = load <2 x float>, ptr %i.jn, align 4, !tbaa !10
  %i.my = fpext reassoc nsz arcp <2 x float> %i.ms to <2 x double> ; 4 uses
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.na = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.lb, <2 x double> %i.mv)
  %i.nb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.lh, <2 x double> %i.mw)
  %i.nc = insertelement <2 x double> %i.my, double 0.000000e+00, i64 1
  %i.nd = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> %i.lo, <2 x double> %i.ln)
  %i.ne = load <2 x float>, ptr %i.jo, align 4, !tbaa !10
  %i.nf = fpext reassoc nsz arcp <2 x float> %i.mx to <2 x double> ; 3 uses
  %i.ng = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.nh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.ku, <2 x double> %i.na)
  %i.ni = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.li, <2 x double> %i.nb)
  %i.nj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.lp, <2 x double> %i.nd)
  %i.nk = fpext reassoc nsz arcp <2 x float> %i.ne to <2 x double> ; 5 uses
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.nm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.kw, <2 x double> %i.nh)
  %i.nn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.lk, <2 x double> %i.ni)
  %i.no = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.lq, <2 x double> %i.nj)
  %i.np = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.nq = load <2 x float>, ptr %i.iu, align 4, !tbaa !10
  %i.nr = fpext reassoc nsz arcp <2 x float> %i.nq to <2 x double> ; 11 uses
  %i.ns = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nt = fpext reassoc nsz arcp float %i.jq to double
  %i.nu = shufflevector <2 x double> %i.nr, <2 x double> %i.js, <2 x i32> <i32 1, i32 3>
  %i.nv = shufflevector <2 x double> %i.js, <2 x double> %i.nr, <2 x i32> <i32 1, i32 3>
  %i.nw = load float, ptr %0, align 4, !tbaa !10
  %i.nx = fpext reassoc nsz arcp float %i.nw to double ; 7 uses
  %i.ny = load <2 x float>, ptr %i.ir, align 4, !tbaa !10
  %i.nz = fpext reassoc nsz arcp <2 x float> %i.ny to <2 x double> ; 12 uses
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ob = extractelement <2 x double> %i.nz, i64 0 ; 2 uses
  %i.oc = extractelement <2 x double> %i.nz, i64 1
  %i.od = fmul reassoc nsz arcp double %i.oc, %i.nx
  %i.oe = fmul reassoc nsz arcp double %i.jt, %i.nx
  %i.of = fmul reassoc nsz arcp double %i.lu, %i.nx
  %i.og = insertelement <2 x double> %i.nz, double %i.nx, i64 1
  %i.oh = insertelement <2 x double> poison, double %i.of, i64 0
  %i.oi = insertelement <2 x double> %i.oh, double %i.jc, i64 1
  %i.oj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.og, <2 x double> %i.oi)
  %i.ok = insertelement <2 x double> poison, double %i.oe, i64 0
  %i.ol = shufflevector <2 x double> %i.nz, <2 x double> %i.nr, <2 x i32> <i32 1, i32 2>
  %i.om = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.ky, <2 x double> %i.oj)
  %i.on = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.kj, <2 x double> %i.om)
  %i.oo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.kk, <2 x double> %i.on)
  %i.op = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.kl, <2 x double> %i.oo)
  %i.oq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.km, <2 x double> %i.op)
  %i.or = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.lc, <2 x double> %i.oq)
  %i.os = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.ld, <2 x double> %i.or)
  %i.ot = extractelement <2 x double> %i.nr, i64 0 ; 2 uses
  %i.ou = insertelement <2 x double> %i.ns, double %i.nx, i64 1 ; 2 uses
  %i.ov = shufflevector <2 x double> %i.ou, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ow = fmul reassoc nsz arcp <2 x double> %i.ou, %i.ov
  %i.ox = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oy = shufflevector <2 x double> %i.js, <2 x double> %i.nz, <2 x i32> <i32 1, i32 2>
  %i.oz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ox, <2 x double> %i.oy, <2 x double> %i.ow) ; 2 uses
  %i.pa = shufflevector <2 x double> %i.ok, <2 x double> %i.oz, <2 x i32> <i32 0, i32 2>
  %i.pb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.nz, <2 x double> %i.pa)
  %i.pc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.ol, <2 x double> %i.pb)
  %i.pd = fmul reassoc nsz arcp double %i.ob, %i.nx
  %i.pe = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pf = insertelement <2 x double> %i.oz, double %i.pd, i64 0
  %i.pg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pe, <2 x double> %i.nz, <2 x double> %i.pf)
  %i.ph = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pi = shufflevector <2 x double> %i.nz, <2 x double> %i.nr, <2 x i32> <i32 1, i32 2>
  %i.pj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.pi, <2 x double> %i.pg)
  %i.pk = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.pl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.nr, <2 x double> %i.pj)
  %i.pm = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ot, double %i.ob, double %i.od)
  %i.pn = fmul reassoc nsz arcp double %i.ot, %i.nx
  %i.po = insertelement <2 x double> poison, double %i.pm, i64 0
  %i.pp = insertelement <2 x double> %i.po, double %i.pn, i64 1
  %i.pq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.oa, <2 x double> %i.pp)
  %i.pr = shufflevector <2 x double> %i.nr, <2 x double> %i.nz, <2 x i32> <i32 0, i32 3>
  %i.ps = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> %i.pr, <2 x double> %i.pq)
  %i.pt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> %i.nu, <2 x double> %i.pl)
  %i.pu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.lz, <2 x double> %i.pt)
  %i.pv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.ns, <2 x double> %i.ps)
  %i.pw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.lt, <2 x double> %i.pu)
  %i.px = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.nv, <2 x double> %i.pv)
  %i.py = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.lw, <2 x double> %i.pw)
  %i.pz = shufflevector <2 x double> %i.lt, <2 x double> %i.js, <2 x i32> <i32 0, i32 3>
  %i.qa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.pz, <2 x double> %i.px)
  %i.qb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.nr, <2 x double> %i.pc)
  %i.qc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.mc, <2 x double> %i.py)
  %i.qd = shufflevector <2 x double> %i.lw, <2 x double> %i.lt, <2 x i32> <i32 0, i32 2>
  %i.qe = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.qd, <2 x double> %i.qa)
  %i.qf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.js, <2 x double> %i.qb)
  %i.qg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.mi, <2 x double> %i.qc)
  %i.qh = shufflevector <2 x double> %i.mc, <2 x double> %i.lw, <2 x i32> <i32 0, i32 2>
  %i.qi = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.qh, <2 x double> %i.qe)
  %i.qj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.jw, <2 x double> %i.qf)
  %i.qk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.mm, <2 x double> %i.qg)
  %i.ql = shufflevector <2 x double> %i.mi, <2 x double> %i.mc, <2 x i32> <i32 0, i32 2>
  %i.qm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.ql, <2 x double> %i.qi)
  %i.qn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.jy, <2 x double> %i.qj)
  %i.qo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.mt, <2 x double> %i.qk)
  %i.qp = shufflevector <2 x double> %i.mm, <2 x double> %i.mi, <2 x i32> <i32 0, i32 2>
  %i.qq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.qp, <2 x double> %i.qm)
  %i.qr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.ka, <2 x double> %i.qn)
  %i.qs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.my, <2 x double> %i.qo)
  %i.qt = shufflevector <2 x double> %i.mt, <2 x double> %i.kf, <2 x i32> <i32 0, i32 2>
  %i.qu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.qt, <2 x double> %i.qq)
  %i.qv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.kc, <2 x double> %i.qr)
  %i.qw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.nf, <2 x double> %i.qs)
  %i.qx = shufflevector <2 x double> %i.my, <2 x double> %i.kf, <2 x i32> <i32 0, i32 3>
  %i.qy = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.qx, <2 x double> %i.qu)
  %i.qz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.ke, <2 x double> %i.qv)
  %i.ra = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.nk, <2 x double> %i.qw)
  %i.rb = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rb, ptr %3, align 8, !tbaa !17
  %i.rc = insertelement <2 x double> %i.nf, double %i.nt, i64 1
  %i.rd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.rc, <2 x double> %i.qy)
  store <2 x double> %i.rd, ptr %i.it, align 8, !tbaa !17
  %i.re = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.rf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.re, <2 x double> %i.kf, <2 x double> %i.qz) ; 4 uses
  %i.rg = shufflevector <2 x double> %i.rf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rg, ptr %i.iw, align 8, !tbaa !17
  %i.rh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.re, <2 x double> %i.ko, <2 x double> %i.os) ; 4 uses
  store <2 x double> %i.rh, ptr %i.iz, align 8, !tbaa !17
  %i.ri = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.re, <2 x double> %i.kx, <2 x double> %i.nm) ; 4 uses
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rj, ptr %i.je, align 8, !tbaa !17
  %i.rk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.re, <2 x double> %i.ll, <2 x double> %i.nn) ; 4 uses
  %i.rl = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rl, ptr %i.jh, align 8, !tbaa !17
  %i.rm = fpext reassoc nsz arcp float %i.lm to double
  %i.rn = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ro = insertelement <2 x double> %i.rn, double %i.rm, i64 1
  %i.rp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.re, <2 x double> %i.ro, <2 x double> %i.no) ; 4 uses
  store <2 x double> %i.rp, ptr %i.jm, align 8, !tbaa !17
  %i.rq = load <2 x float>, ptr %0, align 4, !tbaa !10
  %i.rr = shufflevector <2 x float> %i.rq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rs = fpext reassoc nsz arcp <2 x float> %i.rr to <2 x double>
  %i.rt = load <2 x double>, ptr %i.jp, align 8, !tbaa !17
  %i.ru = insertelement <2 x double> %i.nk, double -0.000000e+00, i64 1
  %i.rv = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.jl, i64 0
  %i.rw = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ru, <2 x double> %i.rv, <2 x double> %i.rt)
  %i.rx = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.rs, <2 x double> %i.rw)
  store <2 x double> %i.rx, ptr %i.jp, align 8, !tbaa !17
  %i.ry = icmp sgt i32 %1, 16
  br i1 %i.ry, label %.preheader162.preheader, label %.loopexit

.preheader161.preheader:                          ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iq, i8 0, i64 40, i1 false), !tbaa !17
  %i.rz = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.se = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.sf = load double, ptr %i.se, align 8, !tbaa !17
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sh = load float, ptr %0, align 4, !tbaa !10
  %i.si = fpext reassoc nsz arcp float %i.sh to double ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.sm = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.sn = load <2 x float>, ptr %i.iv, align 4, !tbaa !10
  %i.so = load <2 x float>, ptr %i.sa, align 4, !tbaa !10
  %i.sp = fpext reassoc nsz arcp <2 x float> %i.sn to <2 x double> ; 7 uses
  %i.sq = shufflevector <2 x double> %i.sp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sr = load <2 x float>, ptr %i.sb, align 4, !tbaa !10
  %i.ss = fpext reassoc nsz arcp <2 x float> %i.so to <2 x double> ; 7 uses
  %i.st = shufflevector <2 x double> %i.ss, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.su = load <2 x float>, ptr %i.sd, align 4, !tbaa !10
  %i.sv = fpext reassoc nsz arcp <2 x float> %i.sr to <2 x double> ; 5 uses
  %i.sw = shufflevector <2 x double> %i.sv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.sx = load <2 x float>, ptr %i.sg, align 4, !tbaa !10
  %i.sy = fpext reassoc nsz arcp <2 x float> %i.su to <2 x double> ; 4 uses
  %i.sz = shufflevector <2 x double> %i.sy, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ta = load <2 x float>, ptr %i.sk, align 4, !tbaa !10
  %i.tb = fpext reassoc nsz arcp <2 x float> %i.sx to <2 x double> ; 5 uses
  %i.tc = shufflevector <2 x double> %i.tb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.td = load <2 x float>, ptr %i.sl, align 4, !tbaa !10
  %i.te = fpext reassoc nsz arcp <2 x float> %i.ta to <2 x double> ; 3 uses
  %i.tf = shufflevector <2 x double> %i.te, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.tg = fpext reassoc nsz arcp <2 x float> %i.td to <2 x double> ; 4 uses
  %i.th = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ti = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.tj = load <2 x float>, ptr %i.is, align 4, !tbaa !10
  %i.tk = fpext reassoc nsz arcp <2 x float> %i.tj to <2 x double> ; 13 uses
  %i.tl = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tm = extractelement <2 x double> %i.tk, i64 1
  %i.tn = shufflevector <2 x double> %i.tk, <2 x double> %i.sp, <2 x i32> <i32 1, i32 2>
  %i.to = shufflevector <2 x double> %i.sp, <2 x double> %i.tk, <2 x i32> <i32 0, i32 3>
  %i.tp = shufflevector <2 x double> %i.ss, <2 x double> %i.sp, <2 x i32> <i32 0, i32 2>
  %i.tq = shufflevector <2 x double> %i.sv, <2 x double> %i.ss, <2 x i32> <i32 0, i32 2>
  %i.tr = shufflevector <2 x double> %i.sy, <2 x double> %i.sv, <2 x i32> <i32 0, i32 2>
  %i.ts = shufflevector <2 x double> %i.tb, <2 x double> %i.sy, <2 x i32> <i32 0, i32 2>
  %i.tt = shufflevector <2 x double> %i.te, <2 x double> %i.tb, <2 x i32> <i32 0, i32 2>
  %i.tu = load <2 x float>, ptr %i.sa, align 4, !tbaa !10
  %i.tv = load <2 x float>, ptr %i.sb, align 4, !tbaa !10
  %i.tw = fpext reassoc nsz arcp <2 x float> %i.tu to <2 x double> ; 2 uses
  %i.tx = shufflevector <2 x double> %i.tk, <2 x double> %i.sp, <2 x i32> <i32 1, i32 2>
  %i.ty = fpext reassoc nsz arcp <2 x float> %i.tv to <2 x double>
  %i.tz = load <2 x float>, ptr %i.ir, align 4, !tbaa !10
  %i.ua = load <2 x float>, ptr %i.is, align 4, !tbaa !10
  %i.ub = fpext reassoc nsz arcp <2 x float> %i.tz to <2 x double> ; 3 uses
  %i.uc = load <2 x float>, ptr %i.iu, align 4, !tbaa !10
  %i.ud = fpext reassoc nsz arcp <2 x float> %i.ua to <2 x double> ; 3 uses
  %i.ue = load <2 x float>, ptr %0, align 4, !tbaa !10
  %i.uf = fpext reassoc nsz arcp <2 x float> %i.ue to <2 x double> ; 12 uses
  %i.ug = extractelement <2 x double> %i.uf, i64 1
  %i.uh = fpext reassoc nsz arcp <2 x float> %i.uc to <2 x double> ; 4 uses
  %i.ui = shufflevector <2 x double> %i.ss, <2 x double> %i.sv, <2 x i32> <i32 0, i32 2>
  %i.uj = shufflevector <2 x double> %i.uf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uk = fmul reassoc nsz arcp <2 x double> %i.ui, %i.uj ; 2 uses
  %i.ul = insertelement <2 x double> %i.uk, double %i.sf, i64 0
  %i.um = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sz, <2 x double> %i.uf, <2 x double> %i.ul)
  %i.un = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tc, <2 x double> %i.ub, <2 x double> %i.um)
  %i.uo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.ud, <2 x double> %i.un)
  %i.up = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> %i.uh, <2 x double> %i.uo)
  %i.uq = shufflevector <2 x double> %i.sp, <2 x double> %i.uf, <2 x i32> <i32 0, i32 2>
  %i.ur = fmul reassoc nsz arcp <2 x double> %i.uj, %i.uq
  %i.us = shufflevector <2 x double> %i.uf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ut = shufflevector <2 x double> %i.ss, <2 x double> %i.uf, <2 x i32> <i32 0, i32 3>
  %i.uu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> %i.ut, <2 x double> %i.ur) ; 2 uses
  %i.uv = shufflevector <2 x double> %i.tk, <2 x double> %i.uf, <2 x i32> <i32 0, i32 2>
  %i.uw = fmul reassoc nsz arcp <2 x double> %i.uv, %i.uf ; 2 uses
  %i.ux = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uy = shufflevector <2 x double> %i.uf, <2 x double> %i.tk, <2 x i32> <i32 1, i32 2>
  %i.uz = shufflevector <2 x double> %i.uw, <2 x double> %i.uu, <2 x i32> <i32 1, i32 3>
  %i.va = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ux, <2 x double> %i.uy, <2 x double> %i.uz)
  %i.vb = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vb, <2 x double> %i.tk, <2 x double> %i.va)
  %i.vd = extractelement <2 x double> %i.uw, i64 0
  %i.ve = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.tm, double %i.ug, double %i.vd)
  %foldExtExtBinop = fmul reassoc nsz arcp <2 x double> %i.tl, %i.uf
  %i.vf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sq, <2 x double> %i.tn, <2 x double> %i.vc)
  %i.vg = shufflevector <2 x double> %i.tk, <2 x double> %i.uf, <2 x i32> <i32 0, i32 3>
  %i.vh = insertelement <2 x double> poison, double %i.ve, i64 0
  %i.vi = shufflevector <2 x double> %i.vh, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.vj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sq, <2 x double> %i.vg, <2 x double> %i.vi)
  %i.vk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.st, <2 x double> %i.sp, <2 x double> %i.vf)
  %i.vl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.st, <2 x double> %i.tl, <2 x double> %i.vj)
  %i.vm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sw, <2 x double> %i.ss, <2 x double> %i.vk)
  %i.vn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sw, <2 x double> %i.to, <2 x double> %i.vl)
  %i.vo = shufflevector <2 x double> %i.uf, <2 x double> %i.tk, <2 x i32> <i32 1, i32 2>
  %i.vp = shufflevector <2 x double> %i.uk, <2 x double> %i.uu, <2 x i32> <i32 0, i32 2>
  %i.vq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sw, <2 x double> %i.vo, <2 x double> %i.vp)
  %i.vr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sz, <2 x double> %i.sv, <2 x double> %i.vm)
  %i.vs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sz, <2 x double> %i.tp, <2 x double> %i.vn)
  %i.vt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sz, <2 x double> %i.tk, <2 x double> %i.vq)
  %i.vu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tc, <2 x double> %i.sy, <2 x double> %i.vr)
  %i.vv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tc, <2 x double> %i.tq, <2 x double> %i.vs)
  %i.vw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tc, <2 x double> %i.tx, <2 x double> %i.vt)
  %i.vx = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.tb, <2 x double> %i.vu)
  %i.vy = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.tr, <2 x double> %i.vv)
  %i.vz = shufflevector <2 x double> %i.uh, <2 x double> %i.ss, <2 x i32> <i32 1, i32 2>
  %i.wa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.vz, <2 x double> %i.vw)
  %i.wb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> %i.te, <2 x double> %i.vx)
  %i.wc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> %i.ts, <2 x double> %i.vy)
  %i.wd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> %i.tw, <2 x double> %i.wa)
  %i.we = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ti, <2 x double> %i.tg, <2 x double> %i.wb) ; 4 uses
  %i.wf = shufflevector <2 x double> %i.we, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wf, ptr %3, align 8, !tbaa !17
  %i.wg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ti, <2 x double> %i.tt, <2 x double> %i.wc) ; 4 uses
  store <2 x double> %i.wg, ptr %i.it, align 8, !tbaa !17
  %i.wh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ti, <2 x double> %i.ty, <2 x double> %i.wd) ; 4 uses
  %i.wi = shufflevector <2 x double> %i.wh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wi, ptr %i.rz, align 8, !tbaa !17
  %i.wj = shufflevector <2 x double> %i.uh, <2 x double> %i.tw, <2 x i32> <i32 1, i32 2>
  %i.wk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ti, <2 x double> %i.wj, <2 x double> %i.up) ; 4 uses
  %i.wl = shufflevector <2 x double> %i.wk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wl, ptr %i.sc, align 8, !tbaa !17
  %i.wm = load <2 x double>, ptr %i.sj, align 8, !tbaa !17
  %i.wn = insertelement <2 x double> %i.tb, double -0.000000e+00, i64 1
  %i.wo = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.si, i64 0 ; 2 uses
  %i.wp = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.wo, <2 x double> %i.wm)
  %i.wq = insertelement <2 x double> %i.ub, double %i.si, i64 1 ; 2 uses
  %i.wr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.wq, <2 x double> %i.wp)
  %i.ws = shufflevector <2 x double> %i.ud, <2 x double> %i.ub, <2 x i32> <i32 0, i32 2>
  %i.wt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> %i.ws, <2 x double> %i.wr)
  %i.wu = shufflevector <2 x double> %i.uh, <2 x double> %i.ud, <2 x i32> <i32 0, i32 2>
  %i.wv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ti, <2 x double> %i.wu, <2 x double> %i.wt) ; 4 uses
  store <2 x double> %i.wv, ptr %i.sj, align 8, !tbaa !17
  %i.ww = load <2 x double>, ptr %i.sm, align 8, !tbaa !17
  %i.wx = insertelement <2 x double> %i.tg, double -0.000000e+00, i64 1
  %i.wy = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wx, <2 x double> %i.wo, <2 x double> %i.ww)
  %i.wz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ti, <2 x double> %i.wq, <2 x double> %i.wy) ; 4 uses
  store <2 x double> %i.wz, ptr %i.sm, align 8, !tbaa !17
  %i.xa = icmp sgt i32 %1, 12
  br i1 %i.xa, label %.preheader156.preheader, label %.loopexit

.preheader156.preheader:                          ; preds = %.preheader161.preheader
  %wide.trip.count237 = zext nneg i32 %1 to i64   ; 2 uses
  %i.xb = add nsw i64 %wide.trip.count237, -12    ; 3 uses
  %min.iters.check411 = icmp ult i64 %i.xb, 2
  br i1 %min.iters.check411, label %.preheader156.preheader538, label %vector.ph412

vector.ph412:                                     ; preds = %.preheader156.preheader
  %n.vec413 = and i64 %i.xb, -2                   ; 3 uses
  %i.xc = add nsw i64 %n.vec413, 12
  %i.xd = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.wz, <2 x i32> <i32 3, i32 1>
  %i.xe = insertelement <2 x double> %i.wz, double 0.000000e+00, i64 1
  %i.xf = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.wv, <2 x i32> <i32 3, i32 1>
  %i.xg = insertelement <2 x double> %i.wv, double 0.000000e+00, i64 1
  %i.xh = insertelement <2 x double> %i.wk, double 0.000000e+00, i64 1
  %i.xi = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.wk, <2 x i32> <i32 3, i32 1>
  %i.xj = insertelement <2 x double> %i.wh, double 0.000000e+00, i64 1
  %i.xk = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.wh, <2 x i32> <i32 3, i32 1>
  %i.xl = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.wg, <2 x i32> <i32 3, i32 1>
  %i.xm = insertelement <2 x double> %i.wg, double 0.000000e+00, i64 1
  %i.xn = insertelement <2 x double> %i.we, double 0.000000e+00, i64 1
  %i.xo = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.we, <2 x i32> <i32 3, i32 1>
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next440, %vector.body414 ] ; 2 uses
  %vec.phi416 = phi <2 x double> [ %i.xd, %vector.ph412 ], [ %i.yz, %vector.body414 ]
  %vec.phi417 = phi <2 x double> [ %i.xe, %vector.ph412 ], [ %i.yw, %vector.body414 ]
  %vec.phi418 = phi <2 x double> [ %i.xf, %vector.ph412 ], [ %i.yt, %vector.body414 ]
  %vec.phi419 = phi <2 x double> [ %i.xg, %vector.ph412 ], [ %i.yq, %vector.body414 ]
  %vec.phi420 = phi <2 x double> [ %i.xh, %vector.ph412 ], [ %i.yn, %vector.body414 ]
  %vec.phi421 = phi <2 x double> [ %i.xi, %vector.ph412 ], [ %i.yk, %vector.body414 ]
  %vec.phi422 = phi <2 x double> [ %i.xj, %vector.ph412 ], [ %i.yh, %vector.body414 ]
  %vec.phi423 = phi <2 x double> [ %i.xk, %vector.ph412 ], [ %i.ye, %vector.body414 ]
  %vec.phi424 = phi <2 x double> [ %i.xl, %vector.ph412 ], [ %i.yb, %vector.body414 ]
  %vec.phi425 = phi <2 x double> [ %i.xm, %vector.ph412 ], [ %i.xy, %vector.body414 ]
  %vec.phi426 = phi <2 x double> [ %i.xn, %vector.ph412 ], [ %i.xv, %vector.body414 ]
  %vec.phi427 = phi <2 x double> [ %i.xo, %vector.ph412 ], [ %i.xs, %vector.body414 ]
  %i.xp = getelementptr [4 x i8], ptr %0, i64 %index415 ; 12 uses
  %i.xq = getelementptr i8, ptr %i.xp, i64 48
  %wide.load428 = load <2 x float>, ptr %i.xq, align 4, !tbaa !10
  %i.xr = fpext reassoc nsz arcp <2 x float> %wide.load428 to <2 x double> ; 13 uses
  %i.xs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.xr, <2 x double> %vec.phi427) ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xp, i64 44
  %wide.load429 = load <2 x float>, ptr %i.xt, align 4, !tbaa !10
  %i.xu = fpext reassoc nsz arcp <2 x float> %wide.load429 to <2 x double>
  %i.xv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.xu, <2 x double> %vec.phi426) ; 2 uses
  %i.xw = getelementptr i8, ptr %i.xp, i64 40
  %wide.load430 = load <2 x float>, ptr %i.xw, align 4, !tbaa !10
  %i.xx = fpext reassoc nsz arcp <2 x float> %wide.load430 to <2 x double>
  %i.xy = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.xx, <2 x double> %vec.phi425) ; 2 uses
  %i.xz = getelementptr i8, ptr %i.xp, i64 36
  %wide.load431 = load <2 x float>, ptr %i.xz, align 4, !tbaa !10
  %i.ya = fpext reassoc nsz arcp <2 x float> %wide.load431 to <2 x double>
  %i.yb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.ya, <2 x double> %vec.phi424) ; 2 uses
  %i.yc = getelementptr i8, ptr %i.xp, i64 32
  %wide.load432 = load <2 x float>, ptr %i.yc, align 4, !tbaa !10
  %i.yd = fpext reassoc nsz arcp <2 x float> %wide.load432 to <2 x double>
  %i.ye = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.yd, <2 x double> %vec.phi423) ; 2 uses
  %i.yf = getelementptr i8, ptr %i.xp, i64 28
  %wide.load433 = load <2 x float>, ptr %i.yf, align 4, !tbaa !10
  %i.yg = fpext reassoc nsz arcp <2 x float> %wide.load433 to <2 x double>
  %i.yh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.yg, <2 x double> %vec.phi422) ; 2 uses
  %i.yi = getelementptr i8, ptr %i.xp, i64 24
  %wide.load434 = load <2 x float>, ptr %i.yi, align 4, !tbaa !10
  %i.yj = fpext reassoc nsz arcp <2 x float> %wide.load434 to <2 x double>
  %i.yk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.yj, <2 x double> %vec.phi421) ; 2 uses
  %i.yl = getelementptr i8, ptr %i.xp, i64 20
  %wide.load435 = load <2 x float>, ptr %i.yl, align 4, !tbaa !10
  %i.ym = fpext reassoc nsz arcp <2 x float> %wide.load435 to <2 x double>
  %i.yn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.ym, <2 x double> %vec.phi420) ; 2 uses
  %i.yo = getelementptr i8, ptr %i.xp, i64 16
  %wide.load436 = load <2 x float>, ptr %i.yo, align 4, !tbaa !10
  %i.yp = fpext reassoc nsz arcp <2 x float> %wide.load436 to <2 x double>
  %i.yq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.yp, <2 x double> %vec.phi419) ; 2 uses
  %i.yr = getelementptr i8, ptr %i.xp, i64 12
  %wide.load437 = load <2 x float>, ptr %i.yr, align 4, !tbaa !10
  %i.ys = fpext reassoc nsz arcp <2 x float> %wide.load437 to <2 x double>
  %i.yt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.ys, <2 x double> %vec.phi418) ; 2 uses
  %i.yu = getelementptr i8, ptr %i.xp, i64 8
  %wide.load438 = load <2 x float>, ptr %i.yu, align 4, !tbaa !10
  %i.yv = fpext reassoc nsz arcp <2 x float> %wide.load438 to <2 x double>
  %i.yw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.yv, <2 x double> %vec.phi417) ; 2 uses
  %i.yx = getelementptr i8, ptr %i.xp, i64 4
  %wide.load439 = load <2 x float>, ptr %i.yx, align 4, !tbaa !10
  %i.yy = fpext reassoc nsz arcp <2 x float> %wide.load439 to <2 x double>
  %i.yz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.yy, <2 x double> %vec.phi416) ; 2 uses
  %index.next440 = add nuw i64 %index415, 2       ; 2 uses
  %i.za = icmp eq i64 %index.next440, %n.vec413
  br i1 %i.za, label %middle.block441, label %vector.body414, !llvm.loop !38

middle.block441:                                  ; preds = %vector.body414
  %i.zb = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yz)
  %i.zc = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yw)
  %i.zd = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yt)
  %i.ze = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yq)
  %i.zf = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yn)
  %i.zg = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yk)
  %i.zh = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yh)
  %i.zi = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ye)
  %i.zj = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yb)
  %i.zk = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xy)
  %i.zl = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xv)
  %i.zm = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xs)
  %cmp.n442 = icmp eq i64 %i.xb, %n.vec413
  %i.zn = insertelement <2 x double> poison, double %i.zl, i64 0
  %i.zo = insertelement <2 x double> %i.zn, double %i.zm, i64 1 ; 2 uses
  %i.zp = insertelement <2 x double> poison, double %i.zk, i64 0
  %i.zq = insertelement <2 x double> %i.zp, double %i.zj, i64 1 ; 2 uses
  %i.zr = insertelement <2 x double> poison, double %i.zh, i64 0
  %i.zs = insertelement <2 x double> %i.zr, double %i.zi, i64 1 ; 2 uses
  %i.zt = insertelement <2 x double> poison, double %i.zf, i64 0
  %i.zu = insertelement <2 x double> %i.zt, double %i.zg, i64 1 ; 2 uses
  %i.zv = insertelement <2 x double> poison, double %i.ze, i64 0
  %i.zw = insertelement <2 x double> %i.zv, double %i.zd, i64 1 ; 2 uses
  %i.zx = insertelement <2 x double> poison, double %i.zc, i64 0
  %i.zy = insertelement <2 x double> %i.zx, double %i.zb, i64 1 ; 2 uses
  br i1 %cmp.n442, label %.loopexit.loopexit288, label %.preheader156.preheader538

.preheader156.preheader538:                       ; preds = %.preheader156.preheader, %middle.block441
  %indvars.iv234.ph = phi i64 [ 12, %.preheader156.preheader ], [ %i.xc, %middle.block441 ]
  %.ph539 = phi <2 x double> [ %i.we, %.preheader156.preheader ], [ %i.zo, %middle.block441 ]
  %.ph540 = phi <2 x double> [ %i.wg, %.preheader156.preheader ], [ %i.zq, %middle.block441 ]
  %.ph541 = phi <2 x double> [ %i.wh, %.preheader156.preheader ], [ %i.zs, %middle.block441 ]
  %.ph542 = phi <2 x double> [ %i.wk, %.preheader156.preheader ], [ %i.zu, %middle.block441 ]
  %.ph543 = phi <2 x double> [ %i.wv, %.preheader156.preheader ], [ %i.zw, %middle.block441 ]
  %.ph544 = phi <2 x double> [ %i.wz, %.preheader156.preheader ], [ %i.zy, %middle.block441 ]
  br label %.preheader156

.preheader156:                                    ; preds = %.preheader156.preheader538, %.preheader156
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.preheader156 ], [ %indvars.iv234.ph, %.preheader156.preheader538 ] ; 7 uses
  %i.zz = phi <2 x double> [ %i.aak, %.preheader156 ], [ %.ph539, %.preheader156.preheader538 ]
  %i.aaa = phi <2 x double> [ %i.aaq, %.preheader156 ], [ %.ph540, %.preheader156.preheader538 ]
  %i.aab = phi <2 x double> [ %i.aav, %.preheader156 ], [ %.ph541, %.preheader156.preheader538 ]
  %i.aac = phi <2 x double> [ %i.aba, %.preheader156 ], [ %.ph542, %.preheader156.preheader538 ]
  %i.aad = phi <2 x double> [ %i.abg, %.preheader156 ], [ %.ph543, %.preheader156.preheader538 ]
  %i.aae = phi <2 x double> [ %i.abm, %.preheader156 ], [ %.ph544, %.preheader156.preheader538 ]
  %i.aaf = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.aag = getelementptr i8, ptr %i.aaf, i64 -4
  %i.aah = load <2 x float>, ptr %i.aag, align 4, !tbaa !10
  %i.aai = fpext reassoc nsz arcp <2 x float> %i.aah to <2 x double> ; 2 uses
  %i.aaj = shufflevector <2 x double> %i.aai, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.aak = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> %i.aai, <2 x double> %i.zz) ; 2 uses
  %i.aal = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.aam = getelementptr i8, ptr %i.aal, i64 -12
  %i.aan = load <2 x float>, ptr %i.aam, align 4, !tbaa !10
  %i.aao = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aap = fpext reassoc nsz arcp <2 x float> %i.aao to <2 x double>
  %i.aaq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> %i.aap, <2 x double> %i.aaa) ; 2 uses
  %i.aar = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.aas = getelementptr i8, ptr %i.aar, i64 -20
  %i.aat = load <2 x float>, ptr %i.aas, align 4, !tbaa !10
  %i.aau = fpext reassoc nsz arcp <2 x float> %i.aat to <2 x double>
  %i.aav = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> %i.aau, <2 x double> %i.aab) ; 2 uses
  %i.aaw = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.aax = getelementptr i8, ptr %i.aaw, i64 -28
  %i.aay = load <2 x float>, ptr %i.aax, align 4, !tbaa !10
  %i.aaz = fpext reassoc nsz arcp <2 x float> %i.aay to <2 x double>
  %i.aba = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> %i.aaz, <2 x double> %i.aac) ; 2 uses
  %i.abb = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.abc = getelementptr i8, ptr %i.abb, i64 -36
  %i.abd = load <2 x float>, ptr %i.abc, align 4, !tbaa !10
  %i.abe = shufflevector <2 x float> %i.abd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.abf = fpext reassoc nsz arcp <2 x float> %i.abe to <2 x double>
  %i.abg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> %i.abf, <2 x double> %i.aad) ; 2 uses
  %i.abh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.abi = getelementptr i8, ptr %i.abh, i64 -44
  %i.abj = load <2 x float>, ptr %i.abi, align 4, !tbaa !10
  %i.abk = shufflevector <2 x float> %i.abj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.abl = fpext reassoc nsz arcp <2 x float> %i.abk to <2 x double>
  %i.abm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> %i.abl, <2 x double> %i.aae) ; 2 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count237
  br i1 %exitcond238.not, label %.loopexit.loopexit288, label %.preheader156, !llvm.loop !39

.preheader162.preheader:                          ; preds = %.preheader167.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %i.abn = load <2 x double>, ptr %3, align 8, !tbaa !17 ; 3 uses
  %i.abo = load <2 x double>, ptr %i.it, align 8, !tbaa !17 ; 3 uses
  %i.abp = load <2 x double>, ptr %i.jp, align 8, !tbaa !17 ; 3 uses
  %i.abq = add nsw i64 %wide.trip.count, -16      ; 3 uses
  %min.iters.check = icmp ult i64 %i.abq, 2
  br i1 %min.iters.check, label %.preheader162.preheader563, label %vector.ph

vector.ph:                                        ; preds = %.preheader162.preheader
  %n.vec = and i64 %i.abq, -2                     ; 3 uses
  %i.abr = add nsw i64 %n.vec, 16
  %i.abs = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.abp, <2 x i32> <i32 3, i32 1>
  %i.abt = insertelement <2 x double> %i.abp, double 0.000000e+00, i64 1
  %i.abu = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.abo, <2 x i32> <i32 3, i32 1>
  %i.abv = insertelement <2 x double> %i.abo, double 0.000000e+00, i64 1
  %i.abw = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.abn, <2 x i32> <i32 3, i32 1>
  %i.abx = insertelement <2 x double> %i.abn, double 0.000000e+00, i64 1
  %i.aby = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.rp, <2 x i32> <i32 3, i32 1>
  %i.abz = insertelement <2 x double> %i.rp, double 0.000000e+00, i64 1
  %i.aca = insertelement <2 x double> %i.rk, double 0.000000e+00, i64 1
  %i.acb = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.rk, <2 x i32> <i32 3, i32 1>
  %i.acc = insertelement <2 x double> %i.ri, double 0.000000e+00, i64 1
  %i.acd = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.ri, <2 x i32> <i32 3, i32 1>
  %i.ace = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.rh, <2 x i32> <i32 3, i32 1>
  %i.acf = insertelement <2 x double> %i.rh, double 0.000000e+00, i64 1
  %i.acg = insertelement <2 x double> %i.rf, double 0.000000e+00, i64 1
  %i.ach = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.rf, <2 x i32> <i32 3, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x double> [ %i.abs, %vector.ph ], [ %i.aee, %vector.body ]
  %vec.phi365 = phi <2 x double> [ %i.abt, %vector.ph ], [ %i.aeb, %vector.body ]
  %vec.phi366 = phi <2 x double> [ %i.abu, %vector.ph ], [ %i.acu, %vector.body ]
  %vec.phi367 = phi <2 x double> [ %i.abv, %vector.ph ], [ %i.acr, %vector.body ]
  %vec.phi368 = phi <2 x double> [ %i.abw, %vector.ph ], [ %i.aco, %vector.body ]
  %vec.phi369 = phi <2 x double> [ %i.abx, %vector.ph ], [ %i.acl, %vector.body ]
  %vec.phi370 = phi <2 x double> [ %i.aby, %vector.ph ], [ %i.ady, %vector.body ]
  %vec.phi371 = phi <2 x double> [ %i.abz, %vector.ph ], [ %i.adv, %vector.body ]
  %vec.phi372 = phi <2 x double> [ %i.aca, %vector.ph ], [ %i.ads, %vector.body ]
  %vec.phi373 = phi <2 x double> [ %i.acb, %vector.ph ], [ %i.adp, %vector.body ]
  %vec.phi374 = phi <2 x double> [ %i.acc, %vector.ph ], [ %i.adm, %vector.body ]
  %vec.phi375 = phi <2 x double> [ %i.acd, %vector.ph ], [ %i.adj, %vector.body ]
  %vec.phi376 = phi <2 x double> [ %i.ace, %vector.ph ], [ %i.adg, %vector.body ]
  %vec.phi377 = phi <2 x double> [ %i.acf, %vector.ph ], [ %i.add, %vector.body ]
  %vec.phi378 = phi <2 x double> [ %i.acg, %vector.ph ], [ %i.ada, %vector.body ]
  %vec.phi379 = phi <2 x double> [ %i.ach, %vector.ph ], [ %i.acx, %vector.body ]
  %i.aci = getelementptr [4 x i8], ptr %0, i64 %index ; 16 uses
  %i.acj = getelementptr i8, ptr %i.aci, i64 64
  %wide.load = load <2 x float>, ptr %i.acj, align 4, !tbaa !10
  %i.ack = fpext reassoc nsz arcp <2 x float> %wide.load to <2 x double> ; 17 uses
  %i.acl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.ack, <2 x double> %vec.phi369) ; 2 uses
  %i.acm = getelementptr i8, ptr %i.aci, i64 60
  %wide.load380 = load <2 x float>, ptr %i.acm, align 4, !tbaa !10
  %i.acn = fpext reassoc nsz arcp <2 x float> %wide.load380 to <2 x double>
  %i.aco = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.acn, <2 x double> %vec.phi368) ; 2 uses
  %i.acp = getelementptr i8, ptr %i.aci, i64 56
  %wide.load381 = load <2 x float>, ptr %i.acp, align 4, !tbaa !10
  %i.acq = fpext reassoc nsz arcp <2 x float> %wide.load381 to <2 x double>
  %i.acr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.acq, <2 x double> %vec.phi367) ; 2 uses
  %i.acs = getelementptr i8, ptr %i.aci, i64 52
  %wide.load382 = load <2 x float>, ptr %i.acs, align 4, !tbaa !10
  %i.act = fpext reassoc nsz arcp <2 x float> %wide.load382 to <2 x double>
  %i.acu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.act, <2 x double> %vec.phi366) ; 2 uses
  %i.acv = getelementptr i8, ptr %i.aci, i64 48
  %wide.load383 = load <2 x float>, ptr %i.acv, align 4, !tbaa !10
  %i.acw = fpext reassoc nsz arcp <2 x float> %wide.load383 to <2 x double>
  %i.acx = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.acw, <2 x double> %vec.phi379) ; 2 uses
  %i.acy = getelementptr i8, ptr %i.aci, i64 44
  %wide.load384 = load <2 x float>, ptr %i.acy, align 4, !tbaa !10
  %i.acz = fpext reassoc nsz arcp <2 x float> %wide.load384 to <2 x double>
  %i.ada = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.acz, <2 x double> %vec.phi378) ; 2 uses
  %i.adb = getelementptr i8, ptr %i.aci, i64 40
  %wide.load385 = load <2 x float>, ptr %i.adb, align 4, !tbaa !10
  %i.adc = fpext reassoc nsz arcp <2 x float> %wide.load385 to <2 x double>
  %i.add = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.adc, <2 x double> %vec.phi377) ; 2 uses
  %i.ade = getelementptr i8, ptr %i.aci, i64 36
  %wide.load386 = load <2 x float>, ptr %i.ade, align 4, !tbaa !10
  %i.adf = fpext reassoc nsz arcp <2 x float> %wide.load386 to <2 x double>
  %i.adg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.adf, <2 x double> %vec.phi376) ; 2 uses
  %i.adh = getelementptr i8, ptr %i.aci, i64 32
  %wide.load387 = load <2 x float>, ptr %i.adh, align 4, !tbaa !10
  %i.adi = fpext reassoc nsz arcp <2 x float> %wide.load387 to <2 x double>
  %i.adj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.adi, <2 x double> %vec.phi375) ; 2 uses
  %i.adk = getelementptr i8, ptr %i.aci, i64 28
  %wide.load388 = load <2 x float>, ptr %i.adk, align 4, !tbaa !10
  %i.adl = fpext reassoc nsz arcp <2 x float> %wide.load388 to <2 x double>
  %i.adm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.adl, <2 x double> %vec.phi374) ; 2 uses
  %i.adn = getelementptr i8, ptr %i.aci, i64 24
  %wide.load389 = load <2 x float>, ptr %i.adn, align 4, !tbaa !10
  %i.ado = fpext reassoc nsz arcp <2 x float> %wide.load389 to <2 x double>
  %i.adp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.ado, <2 x double> %vec.phi373) ; 2 uses
  %i.adq = getelementptr i8, ptr %i.aci, i64 20
  %wide.load390 = load <2 x float>, ptr %i.adq, align 4, !tbaa !10
  %i.adr = fpext reassoc nsz arcp <2 x float> %wide.load390 to <2 x double>
  %i.ads = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.adr, <2 x double> %vec.phi372) ; 2 uses
  %i.adt = getelementptr i8, ptr %i.aci, i64 16
  %wide.load391 = load <2 x float>, ptr %i.adt, align 4, !tbaa !10
  %i.adu = fpext reassoc nsz arcp <2 x float> %wide.load391 to <2 x double>
  %i.adv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.adu, <2 x double> %vec.phi371) ; 2 uses
  %i.adw = getelementptr i8, ptr %i.aci, i64 12
  %wide.load392 = load <2 x float>, ptr %i.adw, align 4, !tbaa !10
  %i.adx = fpext reassoc nsz arcp <2 x float> %wide.load392 to <2 x double>
  %i.ady = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.adx, <2 x double> %vec.phi370) ; 2 uses
  %i.adz = getelementptr i8, ptr %i.aci, i64 8
  %wide.load393 = load <2 x float>, ptr %i.adz, align 4, !tbaa !10
  %i.aea = fpext reassoc nsz arcp <2 x float> %wide.load393 to <2 x double>
  %i.aeb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.aea, <2 x double> %vec.phi365) ; 2 uses
  %i.aec = getelementptr i8, ptr %i.aci, i64 4
  %wide.load394 = load <2 x float>, ptr %i.aec, align 4, !tbaa !10
  %i.aed = fpext reassoc nsz arcp <2 x float> %wide.load394 to <2 x double>
  %i.aee = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.aed, <2 x double> %vec.phi) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aef = icmp eq i64 %index.next, %n.vec
  br i1 %i.aef, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %i.aeg = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.aee)
  %i.aeh = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.aeb)
  %i.aei = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.acu)
  %i.aej = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.acr)
  %i.aek = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.aco)
  %i.ael = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.acl)
  %i.aem = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ady)
  %i.aen = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adv)
  %i.aeo = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ads)
  %i.aep = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adp)
  %i.aeq = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adm)
  %i.aer = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adj)
  %i.aes = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adg)
  %i.aet = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.add)
  %i.aeu = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ada)
  %i.aev = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.acx)
  %cmp.n = icmp eq i64 %i.abq, %n.vec
  %i.aew = insertelement <2 x double> poison, double %i.ael, i64 0
  %i.aex = insertelement <2 x double> %i.aew, double %i.aek, i64 1 ; 2 uses
  %i.aey = insertelement <2 x double> poison, double %i.aej, i64 0
  %i.aez = insertelement <2 x double> %i.aey, double %i.aei, i64 1 ; 2 uses
  %i.afa = insertelement <2 x double> poison, double %i.aeu, i64 0
  %i.afb = insertelement <2 x double> %i.afa, double %i.aev, i64 1 ; 2 uses
  %i.afc = insertelement <2 x double> poison, double %i.aet, i64 0
  %i.afd = insertelement <2 x double> %i.afc, double %i.aes, i64 1 ; 2 uses
  %i.afe = insertelement <2 x double> poison, double %i.aeq, i64 0
  %i.aff = insertelement <2 x double> %i.afe, double %i.aer, i64 1 ; 2 uses
  %i.afg = insertelement <2 x double> poison, double %i.aeo, i64 0
  %i.afh = insertelement <2 x double> %i.afg, double %i.aep, i64 1 ; 2 uses
  %i.afi = insertelement <2 x double> poison, double %i.aen, i64 0
  %i.afj = insertelement <2 x double> %i.afi, double %i.aem, i64 1 ; 2 uses
  %i.afk = insertelement <2 x double> poison, double %i.aeh, i64 0
  %i.afl = insertelement <2 x double> %i.afk, double %i.aeg, i64 1 ; 2 uses
  br i1 %cmp.n, label %.loopexit.loopexit289, label %.preheader162.preheader563

.preheader162.preheader563:                       ; preds = %.preheader162.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 16, %.preheader162.preheader ], [ %i.abr, %middle.block ]
  %.ph564 = phi <2 x double> [ %i.abn, %.preheader162.preheader ], [ %i.aex, %middle.block ]
  %.ph565 = phi <2 x double> [ %i.abo, %.preheader162.preheader ], [ %i.aez, %middle.block ]
  %.ph566 = phi <2 x double> [ %i.rf, %.preheader162.preheader ], [ %i.afb, %middle.block ]
  %.ph567 = phi <2 x double> [ %i.rh, %.preheader162.preheader ], [ %i.afd, %middle.block ]
  %.ph568 = phi <2 x double> [ %i.ri, %.preheader162.preheader ], [ %i.aff, %middle.block ]
  %.ph569 = phi <2 x double> [ %i.rk, %.preheader162.preheader ], [ %i.afh, %middle.block ]
  %.ph570 = phi <2 x double> [ %i.rp, %.preheader162.preheader ], [ %i.afj, %middle.block ]
  %.ph571 = phi <2 x double> [ %i.abp, %.preheader162.preheader ], [ %i.afl, %middle.block ]
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader162.preheader563, %.preheader162
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader162 ], [ %indvars.iv.ph, %.preheader162.preheader563 ] ; 9 uses
  %i.afm = phi <2 x double> [ %i.aga, %.preheader162 ], [ %.ph564, %.preheader162.preheader563 ]
  %i.afn = phi <2 x double> [ %i.agg, %.preheader162 ], [ %.ph565, %.preheader162.preheader563 ]
  %i.afo = phi <2 x double> [ %i.agl, %.preheader162 ], [ %.ph566, %.preheader162.preheader563 ]
  %i.afp = phi <2 x double> [ %i.agr, %.preheader162 ], [ %.ph567, %.preheader162.preheader563 ]
  %i.afq = phi <2 x double> [ %i.agw, %.preheader162 ], [ %.ph568, %.preheader162.preheader563 ]
  %i.afr = phi <2 x double> [ %i.ahb, %.preheader162 ], [ %.ph569, %.preheader162.preheader563 ]
  %i.afs = phi <2 x double> [ %i.ahh, %.preheader162 ], [ %.ph570, %.preheader162.preheader563 ]
  %i.aft = phi <2 x double> [ %i.ahn, %.preheader162 ], [ %.ph571, %.preheader162.preheader563 ]
  %i.afu = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.afv = getelementptr i8, ptr %i.afu, i64 -4
  %i.afw = load <2 x float>, ptr %i.afv, align 4, !tbaa !10
  %i.afx = fpext reassoc nsz arcp <2 x float> %i.afw to <2 x double> ; 2 uses
  %i.afy = shufflevector <2 x double> %i.afx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.afz = shufflevector <2 x double> %i.afx, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 8 uses
  %i.aga = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afz, <2 x double> %i.afy, <2 x double> %i.afm) ; 2 uses
  %i.agb = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agc = getelementptr i8, ptr %i.agb, i64 -12
  %i.agd = load <2 x float>, ptr %i.agc, align 4, !tbaa !10
  %i.age = shufflevector <2 x float> %i.agd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agf = fpext reassoc nsz arcp <2 x float> %i.age to <2 x double>
  %i.agg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afz, <2 x double> %i.agf, <2 x double> %i.afn) ; 2 uses
  %i.agh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agi = getelementptr i8, ptr %i.agh, i64 -20
  %i.agj = load <2 x float>, ptr %i.agi, align 4, !tbaa !10
  %i.agk = fpext reassoc nsz arcp <2 x float> %i.agj to <2 x double>
  %i.agl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afz, <2 x double> %i.agk, <2 x double> %i.afo) ; 2 uses
  %i.agm = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agn = getelementptr i8, ptr %i.agm, i64 -28
  %i.ago = load <2 x float>, ptr %i.agn, align 4, !tbaa !10
  %i.agp = shufflevector <2 x float> %i.ago, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agq = fpext reassoc nsz arcp <2 x float> %i.agp to <2 x double>
  %i.agr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afz, <2 x double> %i.agq, <2 x double> %i.afp) ; 2 uses
  %i.ags = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agt = getelementptr i8, ptr %i.ags, i64 -36
  %i.agu = load <2 x float>, ptr %i.agt, align 4, !tbaa !10
  %i.agv = fpext reassoc nsz arcp <2 x float> %i.agu to <2 x double>
  %i.agw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afz, <2 x double> %i.agv, <2 x double> %i.afq) ; 2 uses
  %i.agx = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agy = getelementptr i8, ptr %i.agx, i64 -44
  %i.agz = load <2 x float>, ptr %i.agy, align 4, !tbaa !10
  %i.aha = fpext reassoc nsz arcp <2 x float> %i.agz to <2 x double>
  %i.ahb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afz, <2 x double> %i.aha, <2 x double> %i.afr) ; 2 uses
  %i.ahc = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 -52
  %i.ahe = load <2 x float>, ptr %i.ahd, align 4, !tbaa !10
  %i.ahf = shufflevector <2 x float> %i.ahe, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ahg = fpext reassoc nsz arcp <2 x float> %i.ahf to <2 x double>
  %i.ahh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afz, <2 x double> %i.ahg, <2 x double> %i.afs) ; 2 uses
  %i.ahi = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ahj = getelementptr i8, ptr %i.ahi, i64 -60
  %i.ahk = load <2 x float>, ptr %i.ahj, align 4, !tbaa !10
  %i.ahl = shufflevector <2 x float> %i.ahk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ahm = fpext reassoc nsz arcp <2 x float> %i.ahl to <2 x double>
  %i.ahn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afz, <2 x double> %i.ahm, <2 x double> %i.aft) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit289, label %.preheader162, !llvm.loop !41

.loopexit.loopexit287:                            ; preds = %.preheader150, %middle.block479
  %i.aho = phi <2 x double> [ %i.hg, %middle.block479 ], [ %i.hw, %.preheader150 ]
  %i.ahp = phi <2 x double> [ %i.hi, %middle.block479 ], [ %i.ic, %.preheader150 ]
  %i.ahq = phi <2 x double> [ %i.hk, %middle.block479 ], [ %i.ii, %.preheader150 ]
  %i.ahr = phi <2 x double> [ %i.hm, %middle.block479 ], [ %i.io, %.preheader150 ]
  %i.ahs = shufflevector <2 x double> %i.aho, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahs, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.ahp, ptr %i.cr, align 8, !tbaa !17
  store <2 x double> %i.ahq, ptr %i.cu, align 8, !tbaa !17
  store <2 x double> %i.ahr, ptr %i.cx, align 8, !tbaa !17
  br label %.loopexit

.loopexit.loopexit288:                            ; preds = %.preheader156, %middle.block441
  %i.aht = phi <2 x double> [ %i.zo, %middle.block441 ], [ %i.aak, %.preheader156 ]
  %i.ahu = phi <2 x double> [ %i.zq, %middle.block441 ], [ %i.aaq, %.preheader156 ]
  %i.ahv = phi <2 x double> [ %i.zs, %middle.block441 ], [ %i.aav, %.preheader156 ]
  %i.ahw = phi <2 x double> [ %i.zu, %middle.block441 ], [ %i.aba, %.preheader156 ]
  %i.ahx = phi <2 x double> [ %i.zw, %middle.block441 ], [ %i.abg, %.preheader156 ]
  %i.ahy = phi <2 x double> [ %i.zy, %middle.block441 ], [ %i.abm, %.preheader156 ]
  %i.ahz = shufflevector <2 x double> %i.aht, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahz, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.ahu, ptr %i.it, align 8, !tbaa !17
  %i.aia = shufflevector <2 x double> %i.ahv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aia, ptr %i.rz, align 8, !tbaa !17
  %i.aib = shufflevector <2 x double> %i.ahw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aib, ptr %i.sc, align 8, !tbaa !17
  store <2 x double> %i.ahx, ptr %i.sj, align 8, !tbaa !17
  store <2 x double> %i.ahy, ptr %i.sm, align 8, !tbaa !17
  br label %.loopexit

.loopexit.loopexit289:                            ; preds = %.preheader162, %middle.block
  %i.aic = phi <2 x double> [ %i.aex, %middle.block ], [ %i.aga, %.preheader162 ]
  %i.aid = phi <2 x double> [ %i.aez, %middle.block ], [ %i.agg, %.preheader162 ]
  %i.aie = phi <2 x double> [ %i.afb, %middle.block ], [ %i.agl, %.preheader162 ]
  %i.aif = phi <2 x double> [ %i.afd, %middle.block ], [ %i.agr, %.preheader162 ]
  %i.aig = phi <2 x double> [ %i.aff, %middle.block ], [ %i.agw, %.preheader162 ]
  %i.aih = phi <2 x double> [ %i.afh, %middle.block ], [ %i.ahb, %.preheader162 ]
  %i.aii = phi <2 x double> [ %i.afj, %middle.block ], [ %i.ahh, %.preheader162 ]
  %i.aij = phi <2 x double> [ %i.afl, %middle.block ], [ %i.ahn, %.preheader162 ]
  store <2 x double> %i.aic, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.aid, ptr %i.it, align 8, !tbaa !17
  %i.aik = shufflevector <2 x double> %i.aie, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aik, ptr %i.iw, align 8, !tbaa !17
  store <2 x double> %i.aif, ptr %i.iz, align 8, !tbaa !17
  %i.ail = shufflevector <2 x double> %i.aig, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ail, ptr %i.je, align 8, !tbaa !17
  %i.aim = shufflevector <2 x double> %i.aih, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aim, ptr %i.jh, align 8, !tbaa !17
  store <2 x double> %i.aii, ptr %i.jm, align 8, !tbaa !17
  store <2 x double> %i.aij, ptr %i.jp, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.loopexit289, %.loopexit.loopexit288, %.loopexit.loopexit287, %.preheader167.preheader, %.preheader161.preheader, %.preheader155.preheader, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_compute_lp_coefficients(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x double], align 16           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load i32, ptr %1, align 4, !tbaa !8      ; 2 uses
  %wide.trip.count81 = zext i32 %i.b to i64
  %exitcond82.not84 = icmp eq i32 %i.b, 0
  br i1 %exitcond82.not84, label %.loopexit, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.a
  %i.c = load double, ptr %0, align 8, !tbaa !17
  br label %bb.c

bb.b:                                             ; preds = %.loopexit107
  %indvars.iv.next76 = add i32 %indvars.iv7586, 1
  %i.d = trunc nuw i64 %indvars.iv.next79 to i32  ; 2 uses
  %i.e = lshr i32 %i.d, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.loopexit, label %bb.c, !llvm.loop !42

bb.c:                                             ; preds = %.lr.ph89, %bb.b
  %i.f = phi i32 [ 0, %.lr.ph89 ], [ %i.e, %bb.b ] ; 3 uses
  %i.g = phi i32 [ 0, %.lr.ph89 ], [ %i.d, %bb.b ]
  %.04987 = phi double [ %i.c, %.lr.ph89 ], [ %i.bm, %bb.b ] ; 2 uses
  %indvars.iv7586 = phi i32 [ 1, %.lr.ph89 ], [ %indvars.iv.next76, %bb.b ] ; 2 uses
  %indvars.iv7885 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next79, %bb.b ] ; 13 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv7885, 1 ; 7 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next79
  %i.i = load double, ptr %i.h, align 8, !tbaa !17
  %i.j = fneg reassoc nsz arcp double %i.i        ; 3 uses
  %.not62 = icmp eq i64 %indvars.iv7885, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %min.iters.check92 = icmp samesign ult i64 %indvars.iv7885, 4
  br i1 %min.iters.check92, label %.lr.ph.preheader108, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.preheader
  %n.vec94 = and i64 %indvars.iv7885, 9223372036854775804 ; 3 uses
  %i.k = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.j, i64 0
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next103, %vector.body95 ] ; 3 uses
  %vec.phi = phi <2 x double> [ %i.k, %vector.ph93 ], [ %i.t, %vector.body95 ]
  %vec.phi97 = phi <2 x double> [ zeroinitializer, %vector.ph93 ], [ %i.u, %vector.body95 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load98 = load <2 x double>, ptr %i.l, align 16, !tbaa !17
  %wide.load99 = load <2 x double>, ptr %i.m, align 16, !tbaa !17
  %i.n = sub nuw nsw i64 %indvars.iv7885, %index96
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -24
  %wide.load100 = load <2 x double>, ptr %i.p, align 8, !tbaa !17
  %wide.load101 = load <2 x double>, ptr %i.q, align 8, !tbaa !17
  %reverse = shufflevector <2 x double> %wide.load100, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse102 = shufflevector <2 x double> %wide.load101, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.r = fneg reassoc nsz arcp <2 x double> %wide.load98
  %i.s = fneg reassoc nsz arcp <2 x double> %wide.load99
  %i.t = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %reverse, <2 x double> %vec.phi) ; 2 uses
  %i.u = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %reverse102, <2 x double> %vec.phi97) ; 2 uses
  %index.next103 = add nuw i64 %index96, 4        ; 2 uses
  %i.v = icmp eq i64 %index.next103, %n.vec94
  br i1 %i.v, label %middle.block104, label %vector.body95, !llvm.loop !43

middle.block104:                                  ; preds = %vector.body95
  %bin.rdx = fadd reassoc nsz arcp <2 x double> %i.u, %i.t
  %i.w = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx) ; 2 uses
  %cmp.n105 = icmp eq i64 %indvars.iv7885, %n.vec94
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %.lr.ph.preheader, %middle.block104
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec94, %middle.block104 ]
  %.05055.ph = phi double [ %i.j, %.lr.ph.preheader ], [ %i.w, %middle.block104 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader108, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader108 ] ; 3 uses
  %.05055 = phi double [ %i.ad, %.lr.ph ], [ %.05055.ph, %.lr.ph.preheader108 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !17
  %i.z = sub nuw nsw i64 %indvars.iv7885, %indvars.iv
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !17
  %i.ac = fneg reassoc nsz arcp double %i.y
  %i.ad = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ac, double %i.ab, double %.05055) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv7885
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %middle.block104, %bb.c
  %.050.lcssa = phi double [ %i.j, %bb.c ], [ %i.w, %middle.block104 ], [ %i.ad, %.lr.ph ]
  %i.ae = fdiv reassoc nsz arcp double %.050.lcssa, %.04987 ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv7885
  store double %i.ae, ptr %i.af, align 8, !tbaa !17
  %.not63 = icmp eq i32 %i.f, 0
  br i1 %.not63, label %._crit_edge59, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %wide.trip.count70 = zext nneg i32 %i.f to i64
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv67 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next68, %.lr.ph58 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv67 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.ai = xor i64 %indvars.iv67, -1
  %i.aj = add nsw i64 %indvars.iv7885, %i.ai
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak ; 3 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !17
  %i.an = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ae, double %i.am, double %i.ah)
  store double %i.an, ptr %i.ag, align 8, !tbaa !17
  %i.ao = load double, ptr %i.al, align 8, !tbaa !17
  %i.ap = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ae, double %i.ah, double %i.ao)
  store double %i.ap, ptr %i.al, align 8, !tbaa !17
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge59.loopexit, label %.lr.ph58, !llvm.loop !45

._crit_edge59.loopexit:                           ; preds = %.lr.ph58
  %i.aq = zext nneg i32 %i.f to i64
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %._crit_edge
  %.1.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.aq, %._crit_edge59.loopexit ]
  %i.ar = and i32 %i.g, 1
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge59
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1.lcssa ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.au = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.at, double %i.ae, double %i.at)
end_hunk_0
