Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0_@FLAC__lpc_compute_autocorrelation:bb.a
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
  br i1 %min.iters.check506, label %.lr.ph188.preheader526, label %vector.scevcheck504

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
  br i1 %i.bs, label %.lr.ph188.preheader526, label %vector.ph507

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
  br i1 %cmp.n519, label %._crit_edge, label %.lr.ph188.preheader526

.lr.ph188.preheader526:                           ; preds = %vector.scevcheck504, %.lr.ph188.preheader, %middle.block518
  %indvars.iv277.ph = phi i64 [ 0, %vector.scevcheck504 ], [ 0, %.lr.ph188.preheader ], [ %n.vec508, %middle.block518 ]
  br label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.preheader526, %.lr.ph188
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %.lr.ph188 ], [ %indvars.iv277.ph, %.lr.ph188.preheader526 ] ; 3 uses
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
  %i.dc = fpext <2 x float> %i.da to <2 x double> ; 6 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0 ; 2 uses
  %i.de = fmul reassoc nsz arcp double %i.dd, %i.cz
  %i.df = load <2 x float>, ptr %i.cs, align 4, !tbaa !10
  %i.dg = fpext <2 x float> %i.db to <2 x double> ; 4 uses
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dj = load <2 x float>, ptr %i.ct, align 4, !tbaa !10
  %i.dk = fpext <2 x float> %i.df to <2 x double> ; 6 uses
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = extractelement <2 x double> %i.dk, i64 0
  %4 = fmul reassoc nsz arcp double %i.dm, %i.cz
  %i.dn = load <2 x float>, ptr %i.cv, align 4, !tbaa !10
  %i.do = fpext <2 x float> %i.dj to <2 x double> ; 5 uses
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = extractelement <2 x double> %i.do, i64 0
  %i.dr = fmul reassoc nsz arcp double %i.dq, %i.cz
  %i.ds = load <2 x float>, ptr %i.cw, align 4, !tbaa !10
  %i.dt = fpext <2 x float> %i.dn to <2 x double> ; 4 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dv = extractelement <2 x double> %i.dt, i64 0 ; 2 uses
  %5 = fmul reassoc nsz arcp double %i.dv, %i.cz
  %i.dw = fpext <2 x float> %i.ds to <2 x double> ; 4 uses
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
  %i.ep = shufflevector <2 x double> %i.dg, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eq = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.er = insertelement <2 x double> %i.eq, double %4, i64 1
  %i.es = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.ep, <2 x double> %i.er)
  %i.et = shufflevector <2 x double> %i.dk, <2 x double> %i.dg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.et, <2 x double> %i.es)
  %i.ev = shufflevector <2 x double> %i.do, <2 x double> %i.dk, <2 x i32> <i32 0, i32 2>
  %i.ew = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.ev, <2 x double> %i.eu)
  %i.ex = shufflevector <2 x double> %i.dt, <2 x double> %i.do, <2 x i32> <i32 0, i32 2>
  %i.ey = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.ex, <2 x double> %i.ew) ; 4 uses
  store <2 x double> %i.ey, ptr %i.cr, align 8, !tbaa !17
  %i.ez = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dv, double %i.dd, double %i.dr)
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %5, i64 1
  %i.fc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.ep, <2 x double> %i.fb)
  %i.fd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.et, <2 x double> %i.fc) ; 4 uses
  store <2 x double> %i.fd, ptr %i.cu, align 8, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !17
  %i.fg = insertelement <2 x double> %i.dc, double %i.cz, i64 1
  %i.fh = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.ff, i64 1
  %i.fj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.fg, <2 x double> %i.fi) ; 4 uses
  store <2 x double> %i.fj, ptr %i.cx, align 8, !tbaa !17
  %i.fk = icmp sgt i32 %1, 8
  br i1 %i.fk, label %.preheader150.preheader, label %.loopexit

.preheader150.preheader:                          ; preds = %.preheader155.preheader
  %wide.trip.count264 = zext nneg i32 %1 to i64   ; 2 uses
  %i.fl = add nsw i64 %wide.trip.count264, -8     ; 3 uses
  %min.iters.check457 = icmp ult i64 %i.fl, 2
  br i1 %min.iters.check457, label %.preheader150.preheader527, label %vector.ph458

vector.ph458:                                     ; preds = %.preheader150.preheader
  %n.vec459 = and i64 %i.fl, -2                   ; 3 uses
  %i.fm = add nsw i64 %n.vec459, 8
  %i.fn = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fj, <2 x i32> <i32 3, i32 1>
  %i.fo = insertelement <2 x double> %i.fj, double 0.000000e+00, i64 1
  %i.fp = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fd, <2 x i32> <i32 3, i32 1>
  %i.fq = insertelement <2 x double> %i.fd, double 0.000000e+00, i64 1
  %i.fr = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.ey, <2 x i32> <i32 3, i32 1>
  %i.fs = insertelement <2 x double> %i.ey, double 0.000000e+00, i64 1
  %i.ft = insertelement <2 x double> %i.en, double 0.000000e+00, i64 1
  %i.fu = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.en, <2 x i32> <i32 3, i32 1>
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph458
  %index461 = phi i64 [ 0, %vector.ph458 ], [ %index.next478, %vector.body460 ] ; 2 uses
  %vec.phi462 = phi <2 x double> [ %i.fn, %vector.ph458 ], [ %i.gt, %vector.body460 ]
  %vec.phi463 = phi <2 x double> [ %i.fo, %vector.ph458 ], [ %i.gq, %vector.body460 ]
  %vec.phi464 = phi <2 x double> [ %i.fp, %vector.ph458 ], [ %i.gn, %vector.body460 ]
  %vec.phi465 = phi <2 x double> [ %i.fq, %vector.ph458 ], [ %i.gk, %vector.body460 ]
  %vec.phi466 = phi <2 x double> [ %i.fr, %vector.ph458 ], [ %i.gh, %vector.body460 ]
  %vec.phi467 = phi <2 x double> [ %i.fs, %vector.ph458 ], [ %i.ge, %vector.body460 ]
  %vec.phi468 = phi <2 x double> [ %i.ft, %vector.ph458 ], [ %i.gb, %vector.body460 ]
  %vec.phi469 = phi <2 x double> [ %i.fu, %vector.ph458 ], [ %i.fy, %vector.body460 ]
  %i.fv = getelementptr [4 x i8], ptr %0, i64 %index461 ; 8 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 32
  %wide.load470 = load <2 x float>, ptr %i.fw, align 4, !tbaa !10
  %i.fx = fpext reassoc nsz arcp <2 x float> %wide.load470 to <2 x double> ; 9 uses
  %i.fy = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fx, <2 x double> %vec.phi469) ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fv, i64 28
  %wide.load471 = load <2 x float>, ptr %i.fz, align 4, !tbaa !10
  %i.ga = fpext reassoc nsz arcp <2 x float> %wide.load471 to <2 x double>
  %i.gb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.ga, <2 x double> %vec.phi468) ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fv, i64 24
  %wide.load472 = load <2 x float>, ptr %i.gc, align 4, !tbaa !10
  %i.gd = fpext reassoc nsz arcp <2 x float> %wide.load472 to <2 x double>
  %i.ge = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.gd, <2 x double> %vec.phi467) ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fv, i64 20
  %wide.load473 = load <2 x float>, ptr %i.gf, align 4, !tbaa !10
  %i.gg = fpext reassoc nsz arcp <2 x float> %wide.load473 to <2 x double>
  %i.gh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.gg, <2 x double> %vec.phi466) ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fv, i64 16
  %wide.load474 = load <2 x float>, ptr %i.gi, align 4, !tbaa !10
  %i.gj = fpext reassoc nsz arcp <2 x float> %wide.load474 to <2 x double>
  %i.gk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.gj, <2 x double> %vec.phi465) ; 2 uses
  %i.gl = getelementptr i8, ptr %i.fv, i64 12
  %wide.load475 = load <2 x float>, ptr %i.gl, align 4, !tbaa !10
  %i.gm = fpext reassoc nsz arcp <2 x float> %wide.load475 to <2 x double>
  %i.gn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.gm, <2 x double> %vec.phi464) ; 2 uses
  %i.go = getelementptr i8, ptr %i.fv, i64 8
  %wide.load476 = load <2 x float>, ptr %i.go, align 4, !tbaa !10
  %i.gp = fpext reassoc nsz arcp <2 x float> %wide.load476 to <2 x double>
  %i.gq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.gp, <2 x double> %vec.phi463) ; 2 uses
  %i.gr = getelementptr i8, ptr %i.fv, i64 4
  %wide.load477 = load <2 x float>, ptr %i.gr, align 4, !tbaa !10
  %i.gs = fpext reassoc nsz arcp <2 x float> %wide.load477 to <2 x double>
  %i.gt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.gs, <2 x double> %vec.phi462) ; 2 uses
  %index.next478 = add nuw i64 %index461, 2       ; 2 uses
  %i.gu = icmp eq i64 %index.next478, %n.vec459
  br i1 %i.gu, label %middle.block479, label %vector.body460, !llvm.loop !36

middle.block479:                                  ; preds = %vector.body460
  %i.gv = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gt)
  %i.gw = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gq)
  %i.gx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gn)
  %i.gy = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gk)
  %i.gz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gh)
  %i.ha = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ge)
  %i.hb = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gb)
  %i.hc = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.fy)
  %cmp.n480 = icmp eq i64 %i.fl, %n.vec459
  %i.hd = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.hc, i64 1 ; 2 uses
  %i.hf = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hg = insertelement <2 x double> %i.hf, double %i.gz, i64 1 ; 2 uses
  %i.hh = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.gx, i64 1 ; 2 uses
  %i.hj = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.gv, i64 1 ; 2 uses
  br i1 %cmp.n480, label %.loopexit.loopexit287, label %.preheader150.preheader527

.preheader150.preheader527:                       ; preds = %.preheader150.preheader, %middle.block479
  %indvars.iv261.ph = phi i64 [ 8, %.preheader150.preheader ], [ %i.fm, %middle.block479 ]
  %.ph = phi <2 x double> [ %i.en, %.preheader150.preheader ], [ %i.he, %middle.block479 ]
  %.ph528 = phi <2 x double> [ %i.ey, %.preheader150.preheader ], [ %i.hg, %middle.block479 ]
  %.ph529 = phi <2 x double> [ %i.fd, %.preheader150.preheader ], [ %i.hi, %middle.block479 ]
  %.ph530 = phi <2 x double> [ %i.fj, %.preheader150.preheader ], [ %i.hk, %middle.block479 ]
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.preheader527, %.preheader150
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.preheader150 ], [ %indvars.iv261.ph, %.preheader150.preheader527 ] ; 5 uses
  %i.hl = phi <2 x double> [ %i.hu, %.preheader150 ], [ %.ph, %.preheader150.preheader527 ]
  %i.hm = phi <2 x double> [ %i.ia, %.preheader150 ], [ %.ph528, %.preheader150.preheader527 ]
  %i.hn = phi <2 x double> [ %i.ig, %.preheader150 ], [ %.ph529, %.preheader150.preheader527 ]
  %i.ho = phi <2 x double> [ %i.im, %.preheader150 ], [ %.ph530, %.preheader150.preheader527 ]
  %i.hp = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.hq = getelementptr i8, ptr %i.hp, i64 -4
  %i.hr = load <2 x float>, ptr %i.hq, align 4, !tbaa !10
  %i.hs = fpext <2 x float> %i.hr to <2 x double> ; 2 uses
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.hu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hs, <2 x double> %i.hl) ; 2 uses
  %i.hv = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.hw = getelementptr i8, ptr %i.hv, i64 -12
  %i.hx = load <2 x float>, ptr %i.hw, align 4, !tbaa !10
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hz = fpext <2 x float> %i.hy to <2 x double>
  %i.ia = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hz, <2 x double> %i.hm) ; 2 uses
  %i.ib = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.ic = getelementptr i8, ptr %i.ib, i64 -20
  %i.id = load <2 x float>, ptr %i.ic, align 4, !tbaa !10
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.if = fpext <2 x float> %i.ie to <2 x double>
  %i.ig = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.if, <2 x double> %i.hn) ; 2 uses
  %i.ih = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.ii = getelementptr i8, ptr %i.ih, i64 -28
  %i.ij = load <2 x float>, ptr %i.ii, align 4, !tbaa !10
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.il = fpext <2 x float> %i.ik to <2 x double>
  %i.im = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.il, <2 x double> %i.ho) ; 2 uses
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit.loopexit287, label %.preheader150, !llvm.loop !37

bb.d:                                             ; preds = %bb.c
  %i.in = icmp samesign ult i32 %2, 13
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.in, label %.preheader161.preheader, label %.preheader167.preheader

.preheader167.preheader:                          ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.io, i8 0, i64 72, i1 false), !tbaa !17
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !17
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ji = load float, ptr %0, align 4, !tbaa !10
  %i.jj = fpext reassoc nsz arcp float %i.ji to double ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.jo = load float, ptr %i.jh, align 4, !tbaa !10
  %i.jp = load <2 x float>, ptr %i.it, align 4, !tbaa !10
  %i.jq = fpext <2 x float> %i.jp to <2 x double> ; 11 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 1
  %i.js = load <2 x float>, ptr %i.iv, align 4, !tbaa !10
  %i.jt = load <2 x float>, ptr %i.iw, align 4, !tbaa !10
  %i.ju = fpext <2 x float> %i.js to <2 x double> ; 3 uses
  %i.jv = load <2 x float>, ptr %i.iy, align 4, !tbaa !10
  %i.jw = fpext <2 x float> %i.jt to <2 x double> ; 2 uses
  %i.jx = load <2 x float>, ptr %i.jb, align 4, !tbaa !10
  %i.jy = fpext <2 x float> %i.jv to <2 x double> ; 2 uses
  %i.jz = load <2 x float>, ptr %i.jd, align 4, !tbaa !10
  %i.ka = fpext <2 x float> %i.jx to <2 x double> ; 2 uses
  %i.kb = load <2 x float>, ptr %i.je, align 4, !tbaa !10
  %i.kc = fpext <2 x float> %i.jz to <2 x double> ; 2 uses
  %i.kd = fpext <2 x float> %i.kb to <2 x double> ; 3 uses
  %i.ke = load float, ptr %i.jb, align 4, !tbaa !10
  %i.kf = load <2 x float>, ptr %i.iq, align 4, !tbaa !10
  %i.kg = fpext <2 x float> %i.kf to <2 x double> ; 6 uses
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ki = shufflevector <2 x double> %i.jq, <2 x double> %i.kg, <2 x i32> <i32 0, i32 3>
  %i.kj = shufflevector <2 x double> %i.ju, <2 x double> %i.jq, <2 x i32> <i32 0, i32 2>
  %i.kk = shufflevector <2 x double> %i.jw, <2 x double> %i.ju, <2 x i32> <i32 0, i32 2>
  %i.kl = fpext reassoc nsz arcp float %i.ke to double
  %i.km = insertelement <2 x double> %i.kc, double %i.kl, i64 1
  %i.kn = load <2 x float>, ptr %0, align 4, !tbaa !10
  %i.ko = fpext <2 x float> %i.kn to <2 x double> ; 6 uses
  %i.kp = load <2 x double>, ptr %i.jc, align 8, !tbaa !17
  %i.kq = load <2 x float>, ptr %i.iv, align 4, !tbaa !10
  %i.kr = load <2 x float>, ptr %i.it, align 4, !tbaa !10
  %i.ks = fpext <2 x float> %i.kr to <2 x double> ; 3 uses
  %i.kt = load <2 x float>, ptr %i.iw, align 4, !tbaa !10
  %i.ku = fpext <2 x float> %i.kq to <2 x double> ; 2 uses
  %i.kv = fpext <2 x float> %i.kt to <2 x double> ; 3 uses
  %i.kw = shufflevector <2 x double> %i.kg, <2 x double> %i.ko, <2 x i32> <i32 0, i32 3>
  %i.kx = insertelement <2 x double> %i.ko, double -0.000000e+00, i64 1
  %i.ky = shufflevector <2 x double> %i.ko, <2 x double> %i.kg, <2 x i32> <i32 1, i32 2>
  %i.kz = shufflevector <2 x double> %i.kg, <2 x double> %i.jq, <2 x i32> <i32 1, i32 2>
  %i.la = shufflevector <2 x double> %i.jy, <2 x double> %i.kv, <2 x i32> <i32 0, i32 2>
  %i.lb = shufflevector <2 x double> %i.ka, <2 x double> %i.kv, <2 x i32> <i32 0, i32 3>
  %i.lc = load <2 x double>, ptr %i.jf, align 8, !tbaa !17
  %i.ld = load <2 x float>, ptr %i.ip, align 4, !tbaa !10
  %i.le = load <2 x float>, ptr %i.iq, align 4, !tbaa !10
  %i.lf = fpext <2 x float> %i.ld to <2 x double> ; 3 uses
  %i.lg = fpext <2 x float> %i.le to <2 x double> ; 4 uses
  %i.lh = insertelement <2 x double> %i.ko, double 0.000000e+00, i64 1
  %i.li = shufflevector <2 x double> %i.lg, <2 x double> %i.ks, <2 x i32> <i32 1, i32 2>
  %i.lj = shufflevector <2 x double> %i.ks, <2 x double> %i.ku, <2 x i32> <i32 0, i32 2>
  %i.lk = load float, ptr %i.iq, align 4, !tbaa !10
  %i.ll = load <2 x double>, ptr %i.jk, align 8, !tbaa !17
  %i.lm = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.jj, i64 0
  %i.ln = insertelement <2 x double> %i.lf, double %i.jj, i64 1
  %i.lo = shufflevector <2 x double> %i.lg, <2 x double> %i.lf, <2 x i32> <i32 0, i32 2>
  %i.lp = load <2 x float>, ptr %i.iw, align 4, !tbaa !10
  %i.lq = load <2 x float>, ptr %i.iy, align 4, !tbaa !10
  %i.lr = fpext <2 x float> %i.lp to <2 x double> ; 6 uses
  %i.ls = extractelement <2 x double> %i.lr, i64 0
  %i.lt = load <2 x float>, ptr %i.jb, align 4, !tbaa !10
  %i.lu = fpext <2 x float> %i.lq to <2 x double> ; 4 uses
  %i.lv = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lw = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lx = shufflevector <2 x double> %i.jq, <2 x double> %i.lr, <2 x i32> <i32 1, i32 2>
  %i.ly = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lz = load <2 x float>, ptr %i.jd, align 4, !tbaa !10
  %i.ma = fpext <2 x float> %i.lt to <2 x double> ; 5 uses
  %i.mb = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.mc = insertelement <2 x double> %i.ma, double 0.000000e+00, i64 1
  %i.md = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> %i.kx, <2 x double> %i.kp)
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mf = load <2 x float>, ptr %i.je, align 4, !tbaa !10
  %i.mg = fpext <2 x float> %i.lz to <2 x double> ; 4 uses
  %i.mh = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.mi = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %i.ko, <2 x double> %i.me)
  %i.mj = load <2 x float>, ptr %i.jg, align 4, !tbaa !10
  %i.mk = fpext <2 x float> %i.mf to <2 x double> ; 4 uses
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.mm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ky, <2 x double> %i.mi)
  %i.mn = insertelement <2 x double> %i.mk, double -0.000000e+00, i64 1
  %i.mo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.lh, <2 x double> %i.lc)
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mq = load <2 x float>, ptr %i.jh, align 4, !tbaa !10
  %i.mr = fpext <2 x float> %i.mj to <2 x double> ; 3 uses
  %i.ms = shufflevector <2 x double> %i.mr, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.mt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.kg, <2 x double> %i.mm)
  %i.mu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.ko, <2 x double> %i.mp)
  %i.mv = load <2 x float>, ptr %i.jl, align 4, !tbaa !10
  %i.mw = fpext <2 x float> %i.mq to <2 x double> ; 4 uses
  %i.mx = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.my = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.kz, <2 x double> %i.mt)
  %i.mz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.lf, <2 x double> %i.mu)
  %i.na = insertelement <2 x double> %i.mw, double 0.000000e+00, i64 1
  %i.nb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> %i.lm, <2 x double> %i.ll)
  %i.nc = load <2 x float>, ptr %i.jm, align 4, !tbaa !10
  %i.nd = fpext <2 x float> %i.mv to <2 x double> ; 3 uses
  %i.ne = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.nf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %i.ks, <2 x double> %i.my)
  %i.ng = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %i.lg, <2 x double> %i.mz)
  %i.nh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %i.ln, <2 x double> %i.nb)
  %i.ni = fpext <2 x float> %i.nc to <2 x double> ; 5 uses
  %i.nj = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.nk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.ku, <2 x double> %i.nf)
  %i.nl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.li, <2 x double> %i.ng)
  %i.nm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.lo, <2 x double> %i.nh)
  %i.nn = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.no = load <2 x float>, ptr %i.is, align 4, !tbaa !10
  %i.np = fpext <2 x float> %i.no to <2 x double> ; 11 uses
  %i.nq = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nr = fpext reassoc nsz arcp float %i.jo to double
  %i.ns = shufflevector <2 x double> %i.np, <2 x double> %i.jq, <2 x i32> <i32 1, i32 3>
  %i.nt = shufflevector <2 x double> %i.jq, <2 x double> %i.np, <2 x i32> <i32 1, i32 3>
  %i.nu = load float, ptr %0, align 4, !tbaa !10
  %i.nv = fpext reassoc nsz arcp float %i.nu to double ; 7 uses
  %i.nw = load <2 x float>, ptr %i.ip, align 4, !tbaa !10
  %i.nx = fpext <2 x float> %i.nw to <2 x double> ; 12 uses
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nz = extractelement <2 x double> %i.nx, i64 0 ; 2 uses
  %6 = fmul reassoc nsz arcp double %i.nz, %i.nv
  %i.oa = extractelement <2 x double> %i.nx, i64 1
  %i.ob = fmul reassoc nsz arcp double %i.oa, %i.nv
  %i.oc = fmul reassoc nsz arcp double %i.jr, %i.nv
  %i.od = fmul reassoc nsz arcp double %i.ls, %i.nv
  %i.oe = insertelement <2 x double> %i.nx, double %i.nv, i64 1
  %i.of = insertelement <2 x double> poison, double %i.od, i64 0
  %i.og = insertelement <2 x double> %i.of, double %i.ja, i64 1
  %i.oh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.oe, <2 x double> %i.og)
  %i.oi = insertelement <2 x double> poison, double %i.oc, i64 0
  %i.oj = shufflevector <2 x double> %i.nx, <2 x double> %i.np, <2 x i32> <i32 1, i32 2>
  %i.ok = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mb, <2 x double> %i.kw, <2 x double> %i.oh)
  %i.ol = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %i.kh, <2 x double> %i.ok)
  %i.om = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ki, <2 x double> %i.ol)
  %i.on = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.kj, <2 x double> %i.om)
  %i.oo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.kk, <2 x double> %i.on)
  %i.op = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %i.la, <2 x double> %i.oo)
  %i.oq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.lb, <2 x double> %i.op)
  %i.or = extractelement <2 x double> %i.np, i64 0 ; 2 uses
  %7 = fmul reassoc nsz arcp double %i.or, %i.nv
  %i.os = insertelement <2 x double> %i.nq, double %i.nv, i64 1 ; 2 uses
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ou = fmul reassoc nsz arcp <2 x double> %i.os, %i.ot
  %i.ov = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ow = shufflevector <2 x double> %i.jq, <2 x double> %i.nx, <2 x i32> <i32 1, i32 2>
  %i.ox = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ov, <2 x double> %i.ow, <2 x double> %i.ou) ; 2 uses
  %i.oy = shufflevector <2 x double> %i.oi, <2 x double> %i.ox, <2 x i32> <i32 0, i32 2>
  %i.oz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.nx, <2 x double> %i.oy)
  %i.pa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.oj, <2 x double> %i.oz)
  %i.pb = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pc = insertelement <2 x double> %i.ox, double %6, i64 0
  %i.pd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.nx, <2 x double> %i.pc)
  %i.pe = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pf = shufflevector <2 x double> %i.nx, <2 x double> %i.np, <2 x i32> <i32 1, i32 2>
  %i.pg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pe, <2 x double> %i.pf, <2 x double> %i.pd)
  %i.ph = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.pi = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.np, <2 x double> %i.pg)
  %i.pj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.or, double %i.nz, double %i.ob)
  %i.pk = insertelement <2 x double> poison, double %i.pj, i64 0
  %i.pl = insertelement <2 x double> %i.pk, double %7, i64 1
  %i.pm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.ny, <2 x double> %i.pl)
  %i.pn = shufflevector <2 x double> %i.np, <2 x double> %i.nx, <2 x i32> <i32 0, i32 3>
  %i.po = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.pn, <2 x double> %i.pm)
  %i.pp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.ns, <2 x double> %i.pi)
  %i.pq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.lx, <2 x double> %i.pp)
  %i.pr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.nq, <2 x double> %i.po)
  %i.ps = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.lr, <2 x double> %i.pq)
  %i.pt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.nt, <2 x double> %i.pr)
  %i.pu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mb, <2 x double> %i.lu, <2 x double> %i.ps)
  %i.pv = shufflevector <2 x double> %i.lr, <2 x double> %i.jq, <2 x i32> <i32 0, i32 3>
  %i.pw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mb, <2 x double> %i.pv, <2 x double> %i.pt)
  %i.px = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mb, <2 x double> %i.np, <2 x double> %i.pa)
  %i.py = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %i.ma, <2 x double> %i.pu)
  %i.pz = shufflevector <2 x double> %i.lu, <2 x double> %i.lr, <2 x i32> <i32 0, i32 2>
  %i.qa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %i.pz, <2 x double> %i.pw)
  %i.qb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %i.jq, <2 x double> %i.px)
  %i.qc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.mg, <2 x double> %i.py)
  %i.qd = shufflevector <2 x double> %i.ma, <2 x double> %i.lu, <2 x i32> <i32 0, i32 2>
  %i.qe = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.qd, <2 x double> %i.qa)
  %i.qf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ju, <2 x double> %i.qb)
  %i.qg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.mk, <2 x double> %i.qc)
  %i.qh = shufflevector <2 x double> %i.mg, <2 x double> %i.ma, <2 x i32> <i32 0, i32 2>
  %i.qi = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.qh, <2 x double> %i.qe)
  %i.qj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.jw, <2 x double> %i.qf)
  %i.qk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.mr, <2 x double> %i.qg)
  %i.ql = shufflevector <2 x double> %i.mk, <2 x double> %i.mg, <2 x i32> <i32 0, i32 2>
  %i.qm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.ql, <2 x double> %i.qi)
  %i.qn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.jy, <2 x double> %i.qj)
  %i.qo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %i.mw, <2 x double> %i.qk)
  %i.qp = shufflevector <2 x double> %i.mr, <2 x double> %i.kd, <2 x i32> <i32 0, i32 2>
  %i.qq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %i.qp, <2 x double> %i.qm)
  %i.qr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %i.ka, <2 x double> %i.qn)
  %i.qs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.nd, <2 x double> %i.qo)
  %i.qt = shufflevector <2 x double> %i.mw, <2 x double> %i.kd, <2 x i32> <i32 0, i32 3>
  %i.qu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.qt, <2 x double> %i.qq)
  %i.qv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.kc, <2 x double> %i.qr)
  %i.qw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.ni, <2 x double> %i.qs)
  %i.qx = shufflevector <2 x double> %i.qw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qx, ptr %3, align 8, !tbaa !17
  %i.qy = insertelement <2 x double> %i.nd, double %i.nr, i64 1
  %i.qz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.qy, <2 x double> %i.qu)
  store <2 x double> %i.qz, ptr %i.ir, align 8, !tbaa !17
  %i.ra = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.rb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ra, <2 x double> %i.kd, <2 x double> %i.qv) ; 4 uses
  %i.rc = shufflevector <2 x double> %i.rb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rc, ptr %i.iu, align 8, !tbaa !17
  %i.rd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ra, <2 x double> %i.km, <2 x double> %i.oq) ; 4 uses
  store <2 x double> %i.rd, ptr %i.ix, align 8, !tbaa !17
  %i.re = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ra, <2 x double> %i.kv, <2 x double> %i.nk) ; 4 uses
  %i.rf = shufflevector <2 x double> %i.re, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rf, ptr %i.jc, align 8, !tbaa !17
  %i.rg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ra, <2 x double> %i.lj, <2 x double> %i.nl) ; 4 uses
  %i.rh = shufflevector <2 x double> %i.rg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rh, ptr %i.jf, align 8, !tbaa !17
  %i.ri = fpext reassoc nsz arcp float %i.lk to double
  %i.rj = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.rk = insertelement <2 x double> %i.rj, double %i.ri, i64 1
  %i.rl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ra, <2 x double> %i.rk, <2 x double> %i.nm) ; 4 uses
  store <2 x double> %i.rl, ptr %i.jk, align 8, !tbaa !17
  %i.rm = load <2 x float>, ptr %0, align 4, !tbaa !10
  %i.rn = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ro = fpext <2 x float> %i.rn to <2 x double>
  %i.rp = load <2 x double>, ptr %i.jn, align 8, !tbaa !17
  %i.rq = insertelement <2 x double> %i.ni, double -0.000000e+00, i64 1
  %i.rr = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.jj, i64 0
  %i.rs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rq, <2 x double> %i.rr, <2 x double> %i.rp)
  %i.rt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.ro, <2 x double> %i.rs)
  store <2 x double> %i.rt, ptr %i.jn, align 8, !tbaa !17
  %i.ru = icmp sgt i32 %1, 16
  br i1 %i.ru, label %.preheader162.preheader, label %.loopexit

.preheader161.preheader:                          ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.io, i8 0, i64 40, i1 false), !tbaa !17
  %i.rv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.sa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !17
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sd = load float, ptr %0, align 4, !tbaa !10
  %i.se = fpext reassoc nsz arcp float %i.sd to double ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.si = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.sj = load <2 x float>, ptr %i.it, align 4, !tbaa !10
  %i.sk = load <2 x float>, ptr %i.rw, align 4, !tbaa !10
  %i.sl = fpext <2 x float> %i.sj to <2 x double> ; 7 uses
  %i.sm = shufflevector <2 x double> %i.sl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sn = load <2 x float>, ptr %i.rx, align 4, !tbaa !10
  %i.so = fpext <2 x float> %i.sk to <2 x double> ; 7 uses
  %i.sp = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sq = load <2 x float>, ptr %i.rz, align 4, !tbaa !10
  %i.sr = fpext <2 x float> %i.sn to <2 x double> ; 5 uses
  %i.ss = shufflevector <2 x double> %i.sr, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.st = load <2 x float>, ptr %i.sc, align 4, !tbaa !10
  %i.su = fpext <2 x float> %i.sq to <2 x double> ; 4 uses
  %i.sv = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.sw = load <2 x float>, ptr %i.sg, align 4, !tbaa !10
  %i.sx = fpext <2 x float> %i.st to <2 x double> ; 5 uses
  %i.sy = shufflevector <2 x double> %i.sx, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.sz = load <2 x float>, ptr %i.sh, align 4, !tbaa !10
  %i.ta = fpext <2 x float> %i.sw to <2 x double> ; 3 uses
  %i.tb = shufflevector <2 x double> %i.ta, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.tc = fpext <2 x float> %i.sz to <2 x double> ; 4 uses
  %i.td = shufflevector <2 x double> %i.tc, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.te = shufflevector <2 x double> %i.tc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.tf = load <2 x float>, ptr %i.iq, align 4, !tbaa !10
  %i.tg = fpext <2 x float> %i.tf to <2 x double> ; 13 uses
  %i.th = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ti = extractelement <2 x double> %i.tg, i64 1
  %i.tj = shufflevector <2 x double> %i.tg, <2 x double> %i.sl, <2 x i32> <i32 1, i32 2>
  %i.tk = shufflevector <2 x double> %i.sl, <2 x double> %i.tg, <2 x i32> <i32 0, i32 3>
  %i.tl = shufflevector <2 x double> %i.so, <2 x double> %i.sl, <2 x i32> <i32 0, i32 2>
  %i.tm = shufflevector <2 x double> %i.sr, <2 x double> %i.so, <2 x i32> <i32 0, i32 2>
  %i.tn = shufflevector <2 x double> %i.su, <2 x double> %i.sr, <2 x i32> <i32 0, i32 2>
  %i.to = shufflevector <2 x double> %i.sx, <2 x double> %i.su, <2 x i32> <i32 0, i32 2>
  %i.tp = shufflevector <2 x double> %i.ta, <2 x double> %i.sx, <2 x i32> <i32 0, i32 2>
  %i.tq = load <2 x float>, ptr %i.rw, align 4, !tbaa !10
  %i.tr = load <2 x float>, ptr %i.rx, align 4, !tbaa !10
  %i.ts = fpext <2 x float> %i.tq to <2 x double> ; 2 uses
  %i.tt = shufflevector <2 x double> %i.tg, <2 x double> %i.sl, <2 x i32> <i32 1, i32 2>
  %i.tu = fpext <2 x float> %i.tr to <2 x double>
  %i.tv = load <2 x float>, ptr %i.ip, align 4, !tbaa !10
  %i.tw = load <2 x float>, ptr %i.iq, align 4, !tbaa !10
  %i.tx = fpext <2 x float> %i.tv to <2 x double> ; 3 uses
  %i.ty = load <2 x float>, ptr %i.is, align 4, !tbaa !10
  %i.tz = fpext <2 x float> %i.tw to <2 x double> ; 3 uses
  %i.ua = load <2 x float>, ptr %0, align 4, !tbaa !10
  %i.ub = fpext <2 x float> %i.ua to <2 x double> ; 13 uses
  %i.uc = extractelement <2 x double> %i.ub, i64 1
  %i.ud = fpext <2 x float> %i.ty to <2 x double> ; 4 uses
  %8 = shufflevector <2 x double> %i.ub, <2 x double> %i.so, <2 x i32> <i32 1, i32 2>
  %i.ue = shufflevector <2 x double> %i.ub, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %9 = fmul reassoc nsz arcp <2 x double> %8, %i.ue ; 2 uses
  %foldExtExtBinop.a = fmul reassoc nsz arcp <2 x double> %i.sr, %i.ub
  %i.uf = insertelement <2 x double> poison, double %i.sb, i64 0
  %10 = shufflevector <2 x double> %i.uf, <2 x double> %foldExtExtBinop.a, <2 x i32> <i32 0, i32 2>
  %i.ug = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sv, <2 x double> %i.ub, <2 x double> %10)
  %i.uh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %i.tx, <2 x double> %i.ug)
  %i.ui = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tb, <2 x double> %i.tz, <2 x double> %i.uh)
  %i.uj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.td, <2 x double> %i.ud, <2 x double> %i.ui)
  %foldExtExtBinop522 = fmul reassoc nsz arcp <2 x double> %i.tg, %i.ub
  %11 = extractelement <2 x double> %foldExtExtBinop522, i64 0
  %i.uk = shufflevector <2 x double> %i.sl, <2 x double> %i.ub, <2 x i32> <i32 0, i32 2>
  %i.ul = fmul reassoc nsz arcp <2 x double> %i.ue, %i.uk
  %i.um = shufflevector <2 x double> %i.ub, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.un = shufflevector <2 x double> %i.so, <2 x double> %i.ub, <2 x i32> <i32 0, i32 3>
  %i.uo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.um, <2 x double> %i.un, <2 x double> %i.ul) ; 2 uses
  %i.up = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uq = shufflevector <2 x double> %i.ub, <2 x double> %i.tg, <2 x i32> <i32 1, i32 2>
  %12 = shufflevector <2 x double> %9, <2 x double> %i.uo, <2 x i32> <i32 0, i32 3>
  %i.ur = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.up, <2 x double> %i.uq, <2 x double> %12)
  %i.us = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ut = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> %i.tg, <2 x double> %i.ur)
  %i.uu = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ti, double %i.uc, double %11)
  %foldExtExtBinop524 = fmul reassoc nsz arcp <2 x double> %i.th, %i.ub
  %i.uv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sm, <2 x double> %i.tj, <2 x double> %i.ut)
  %i.uw = shufflevector <2 x double> %i.tg, <2 x double> %i.ub, <2 x i32> <i32 0, i32 3>
  %i.ux = insertelement <2 x double> poison, double %i.uu, i64 0
  %i.uy = shufflevector <2 x double> %i.ux, <2 x double> %foldExtExtBinop524, <2 x i32> <i32 0, i32 2>
  %i.uz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sm, <2 x double> %i.uw, <2 x double> %i.uy)
  %i.va = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sp, <2 x double> %i.sl, <2 x double> %i.uv)
  %i.vb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sp, <2 x double> %i.th, <2 x double> %i.uz)
  %i.vc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ss, <2 x double> %i.so, <2 x double> %i.va)
  %i.vd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ss, <2 x double> %i.tk, <2 x double> %i.vb)
  %i.ve = shufflevector <2 x double> %i.ub, <2 x double> %i.tg, <2 x i32> <i32 1, i32 2>
  %13 = shufflevector <2 x double> %9, <2 x double> %i.uo, <2 x i32> <i32 1, i32 2>
  %i.vf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ss, <2 x double> %i.ve, <2 x double> %13)
  %i.vg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sv, <2 x double> %i.sr, <2 x double> %i.vc)
  %i.vh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sv, <2 x double> %i.tl, <2 x double> %i.vd)
  %i.vi = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sv, <2 x double> %i.tg, <2 x double> %i.vf)
  %i.vj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %i.su, <2 x double> %i.vg)
  %i.vk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %i.tm, <2 x double> %i.vh)
  %i.vl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %i.tt, <2 x double> %i.vi)
  %i.vm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tb, <2 x double> %i.sx, <2 x double> %i.vj)
  %i.vn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tb, <2 x double> %i.tn, <2 x double> %i.vk)
  %i.vo = shufflevector <2 x double> %i.ud, <2 x double> %i.so, <2 x i32> <i32 1, i32 2>
  %i.vp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tb, <2 x double> %i.vo, <2 x double> %i.vl)
  %i.vq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.td, <2 x double> %i.ta, <2 x double> %i.vm)
  %i.vr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.td, <2 x double> %i.to, <2 x double> %i.vn)
  %i.vs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.td, <2 x double> %i.ts, <2 x double> %i.vp)
  %i.vt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.te, <2 x double> %i.tc, <2 x double> %i.vq) ; 4 uses
  %i.vu = shufflevector <2 x double> %i.vt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vu, ptr %3, align 8, !tbaa !17
  %i.vv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.te, <2 x double> %i.tp, <2 x double> %i.vr) ; 4 uses
  store <2 x double> %i.vv, ptr %i.ir, align 8, !tbaa !17
  %i.vw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.te, <2 x double> %i.tu, <2 x double> %i.vs) ; 4 uses
  %i.vx = shufflevector <2 x double> %i.vw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vx, ptr %i.rv, align 8, !tbaa !17
  %i.vy = shufflevector <2 x double> %i.ud, <2 x double> %i.ts, <2 x i32> <i32 1, i32 2>
  %i.vz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.te, <2 x double> %i.vy, <2 x double> %i.uj) ; 4 uses
  %i.wa = shufflevector <2 x double> %i.vz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wa, ptr %i.ry, align 8, !tbaa !17
  %i.wb = load <2 x double>, ptr %i.sf, align 8, !tbaa !17
  %i.wc = insertelement <2 x double> %i.sx, double -0.000000e+00, i64 1
  %i.wd = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.se, i64 0 ; 2 uses
  %i.we = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wc, <2 x double> %i.wd, <2 x double> %i.wb)
  %i.wf = insertelement <2 x double> %i.tx, double %i.se, i64 1 ; 2 uses
  %i.wg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tb, <2 x double> %i.wf, <2 x double> %i.we)
  %i.wh = shufflevector <2 x double> %i.tz, <2 x double> %i.tx, <2 x i32> <i32 0, i32 2>
  %i.wi = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.td, <2 x double> %i.wh, <2 x double> %i.wg)
  %i.wj = shufflevector <2 x double> %i.ud, <2 x double> %i.tz, <2 x i32> <i32 0, i32 2>
  %i.wk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.te, <2 x double> %i.wj, <2 x double> %i.wi) ; 4 uses
  store <2 x double> %i.wk, ptr %i.sf, align 8, !tbaa !17
  %i.wl = load <2 x double>, ptr %i.si, align 8, !tbaa !17
  %i.wm = insertelement <2 x double> %i.tc, double -0.000000e+00, i64 1
  %i.wn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wm, <2 x double> %i.wd, <2 x double> %i.wl)
  %i.wo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.te, <2 x double> %i.wf, <2 x double> %i.wn) ; 4 uses
  store <2 x double> %i.wo, ptr %i.si, align 8, !tbaa !17
  %i.wp = icmp sgt i32 %1, 12
  br i1 %i.wp, label %.preheader156.preheader, label %.loopexit

.preheader156.preheader:                          ; preds = %.preheader161.preheader
  %wide.trip.count237 = zext nneg i32 %1 to i64   ; 2 uses
  %i.wq = add nsw i64 %wide.trip.count237, -12    ; 3 uses
  %min.iters.check411 = icmp ult i64 %i.wq, 2
  br i1 %min.iters.check411, label %.preheader156.preheader542, label %vector.ph412

vector.ph412:                                     ; preds = %.preheader156.preheader
  %n.vec413 = and i64 %i.wq, -2                   ; 3 uses
  %i.wr = add nsw i64 %n.vec413, 12
  %i.ws = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.wo, <2 x i32> <i32 3, i32 1>
  %i.wt = insertelement <2 x double> %i.wo, double 0.000000e+00, i64 1
  %i.wu = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.wk, <2 x i32> <i32 3, i32 1>
  %i.wv = insertelement <2 x double> %i.wk, double 0.000000e+00, i64 1
  %i.ww = insertelement <2 x double> %i.vz, double 0.000000e+00, i64 1
  %i.wx = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.vz, <2 x i32> <i32 3, i32 1>
  %i.wy = insertelement <2 x double> %i.vw, double 0.000000e+00, i64 1
  %i.wz = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.vw, <2 x i32> <i32 3, i32 1>
  %i.xa = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.vv, <2 x i32> <i32 3, i32 1>
  %i.xb = insertelement <2 x double> %i.vv, double 0.000000e+00, i64 1
  %i.xc = insertelement <2 x double> %i.vt, double 0.000000e+00, i64 1
  %i.xd = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.vt, <2 x i32> <i32 3, i32 1>
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next440, %vector.body414 ] ; 2 uses
  %vec.phi416 = phi <2 x double> [ %i.ws, %vector.ph412 ], [ %i.yo, %vector.body414 ]
  %vec.phi417 = phi <2 x double> [ %i.wt, %vector.ph412 ], [ %i.yl, %vector.body414 ]
  %vec.phi418 = phi <2 x double> [ %i.wu, %vector.ph412 ], [ %i.yi, %vector.body414 ]
  %vec.phi419 = phi <2 x double> [ %i.wv, %vector.ph412 ], [ %i.yf, %vector.body414 ]
  %vec.phi420 = phi <2 x double> [ %i.ww, %vector.ph412 ], [ %i.yc, %vector.body414 ]
  %vec.phi421 = phi <2 x double> [ %i.wx, %vector.ph412 ], [ %i.xz, %vector.body414 ]
  %vec.phi422 = phi <2 x double> [ %i.wy, %vector.ph412 ], [ %i.xw, %vector.body414 ]
  %vec.phi423 = phi <2 x double> [ %i.wz, %vector.ph412 ], [ %i.xt, %vector.body414 ]
  %vec.phi424 = phi <2 x double> [ %i.xa, %vector.ph412 ], [ %i.xq, %vector.body414 ]
  %vec.phi425 = phi <2 x double> [ %i.xb, %vector.ph412 ], [ %i.xn, %vector.body414 ]
  %vec.phi426 = phi <2 x double> [ %i.xc, %vector.ph412 ], [ %i.xk, %vector.body414 ]
  %vec.phi427 = phi <2 x double> [ %i.xd, %vector.ph412 ], [ %i.xh, %vector.body414 ]
  %i.xe = getelementptr [4 x i8], ptr %0, i64 %index415 ; 12 uses
  %i.xf = getelementptr i8, ptr %i.xe, i64 48
  %wide.load428 = load <2 x float>, ptr %i.xf, align 4, !tbaa !10
  %i.xg = fpext reassoc nsz arcp <2 x float> %wide.load428 to <2 x double> ; 13 uses
  %i.xh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.xg, <2 x double> %vec.phi427) ; 2 uses
  %i.xi = getelementptr i8, ptr %i.xe, i64 44
  %wide.load429 = load <2 x float>, ptr %i.xi, align 4, !tbaa !10
  %i.xj = fpext reassoc nsz arcp <2 x float> %wide.load429 to <2 x double>
  %i.xk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.xj, <2 x double> %vec.phi426) ; 2 uses
  %i.xl = getelementptr i8, ptr %i.xe, i64 40
  %wide.load430 = load <2 x float>, ptr %i.xl, align 4, !tbaa !10
  %i.xm = fpext reassoc nsz arcp <2 x float> %wide.load430 to <2 x double>
  %i.xn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.xm, <2 x double> %vec.phi425) ; 2 uses
  %i.xo = getelementptr i8, ptr %i.xe, i64 36
  %wide.load431 = load <2 x float>, ptr %i.xo, align 4, !tbaa !10
  %i.xp = fpext reassoc nsz arcp <2 x float> %wide.load431 to <2 x double>
  %i.xq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.xp, <2 x double> %vec.phi424) ; 2 uses
  %i.xr = getelementptr i8, ptr %i.xe, i64 32
  %wide.load432 = load <2 x float>, ptr %i.xr, align 4, !tbaa !10
  %i.xs = fpext reassoc nsz arcp <2 x float> %wide.load432 to <2 x double>
  %i.xt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.xs, <2 x double> %vec.phi423) ; 2 uses
  %i.xu = getelementptr i8, ptr %i.xe, i64 28
  %wide.load433 = load <2 x float>, ptr %i.xu, align 4, !tbaa !10
  %i.xv = fpext reassoc nsz arcp <2 x float> %wide.load433 to <2 x double>
  %i.xw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.xv, <2 x double> %vec.phi422) ; 2 uses
  %i.xx = getelementptr i8, ptr %i.xe, i64 24
  %wide.load434 = load <2 x float>, ptr %i.xx, align 4, !tbaa !10
  %i.xy = fpext reassoc nsz arcp <2 x float> %wide.load434 to <2 x double>
  %i.xz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.xy, <2 x double> %vec.phi421) ; 2 uses
  %i.ya = getelementptr i8, ptr %i.xe, i64 20
  %wide.load435 = load <2 x float>, ptr %i.ya, align 4, !tbaa !10
  %i.yb = fpext reassoc nsz arcp <2 x float> %wide.load435 to <2 x double>
  %i.yc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.yb, <2 x double> %vec.phi420) ; 2 uses
  %i.yd = getelementptr i8, ptr %i.xe, i64 16
  %wide.load436 = load <2 x float>, ptr %i.yd, align 4, !tbaa !10
  %i.ye = fpext reassoc nsz arcp <2 x float> %wide.load436 to <2 x double>
  %i.yf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.ye, <2 x double> %vec.phi419) ; 2 uses
  %i.yg = getelementptr i8, ptr %i.xe, i64 12
  %wide.load437 = load <2 x float>, ptr %i.yg, align 4, !tbaa !10
  %i.yh = fpext reassoc nsz arcp <2 x float> %wide.load437 to <2 x double>
  %i.yi = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.yh, <2 x double> %vec.phi418) ; 2 uses
  %i.yj = getelementptr i8, ptr %i.xe, i64 8
  %wide.load438 = load <2 x float>, ptr %i.yj, align 4, !tbaa !10
  %i.yk = fpext reassoc nsz arcp <2 x float> %wide.load438 to <2 x double>
  %i.yl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.yk, <2 x double> %vec.phi417) ; 2 uses
  %i.ym = getelementptr i8, ptr %i.xe, i64 4
  %wide.load439 = load <2 x float>, ptr %i.ym, align 4, !tbaa !10
  %i.yn = fpext reassoc nsz arcp <2 x float> %wide.load439 to <2 x double>
  %i.yo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.yn, <2 x double> %vec.phi416) ; 2 uses
  %index.next440 = add nuw i64 %index415, 2       ; 2 uses
  %i.yp = icmp eq i64 %index.next440, %n.vec413
  br i1 %i.yp, label %middle.block441, label %vector.body414, !llvm.loop !38

middle.block441:                                  ; preds = %vector.body414
  %i.yq = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yo)
  %i.yr = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yl)
  %i.ys = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yi)
  %i.yt = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yf)
  %i.yu = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.yc)
  %i.yv = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xz)
  %i.yw = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xw)
  %i.yx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xt)
  %i.yy = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xq)
  %i.yz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xn)
  %i.za = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xk)
  %i.zb = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xh)
  %cmp.n442 = icmp eq i64 %i.wq, %n.vec413
  %i.zc = insertelement <2 x double> poison, double %i.za, i64 0
  %i.zd = insertelement <2 x double> %i.zc, double %i.zb, i64 1 ; 2 uses
  %i.ze = insertelement <2 x double> poison, double %i.yz, i64 0
  %i.zf = insertelement <2 x double> %i.ze, double %i.yy, i64 1 ; 2 uses
  %i.zg = insertelement <2 x double> poison, double %i.yw, i64 0
  %i.zh = insertelement <2 x double> %i.zg, double %i.yx, i64 1 ; 2 uses
  %i.zi = insertelement <2 x double> poison, double %i.yu, i64 0
  %i.zj = insertelement <2 x double> %i.zi, double %i.yv, i64 1 ; 2 uses
  %i.zk = insertelement <2 x double> poison, double %i.yt, i64 0
  %i.zl = insertelement <2 x double> %i.zk, double %i.ys, i64 1 ; 2 uses
  %i.zm = insertelement <2 x double> poison, double %i.yr, i64 0
  %i.zn = insertelement <2 x double> %i.zm, double %i.yq, i64 1 ; 2 uses
  br i1 %cmp.n442, label %.loopexit.loopexit288, label %.preheader156.preheader542

.preheader156.preheader542:                       ; preds = %.preheader156.preheader, %middle.block441
  %indvars.iv234.ph = phi i64 [ 12, %.preheader156.preheader ], [ %i.wr, %middle.block441 ]
  %.ph543.a = phi <2 x double> [ %i.vt, %.preheader156.preheader ], [ %i.zd, %middle.block441 ]
  %.ph544.a = phi <2 x double> [ %i.vv, %.preheader156.preheader ], [ %i.zf, %middle.block441 ]
  %.ph545 = phi <2 x double> [ %i.vw, %.preheader156.preheader ], [ %i.zh, %middle.block441 ]
  %.ph546 = phi <2 x double> [ %i.vz, %.preheader156.preheader ], [ %i.zj, %middle.block441 ]
  %.ph547 = phi <2 x double> [ %i.wk, %.preheader156.preheader ], [ %i.zl, %middle.block441 ]
  %.ph548 = phi <2 x double> [ %i.wo, %.preheader156.preheader ], [ %i.zn, %middle.block441 ]
  br label %.preheader156

.preheader156:                                    ; preds = %.preheader156.preheader542, %.preheader156
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.preheader156 ], [ %indvars.iv234.ph, %.preheader156.preheader542 ] ; 7 uses
  %i.zo = phi <2 x double> [ %i.zz, %.preheader156 ], [ %.ph543.a, %.preheader156.preheader542 ]
  %i.zp = phi <2 x double> [ %i.aaf, %.preheader156 ], [ %.ph544.a, %.preheader156.preheader542 ]
  %i.zq = phi <2 x double> [ %i.aak, %.preheader156 ], [ %.ph545, %.preheader156.preheader542 ]
  %i.zr = phi <2 x double> [ %i.aap, %.preheader156 ], [ %.ph546, %.preheader156.preheader542 ]
  %i.zs = phi <2 x double> [ %i.aav, %.preheader156 ], [ %.ph547, %.preheader156.preheader542 ]
  %i.zt = phi <2 x double> [ %i.abb, %.preheader156 ], [ %.ph548, %.preheader156.preheader542 ]
  %i.zu = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.zv = getelementptr i8, ptr %i.zu, i64 -4
  %i.zw = load <2 x float>, ptr %i.zv, align 4, !tbaa !10
  %i.zx = fpext <2 x float> %i.zw to <2 x double> ; 2 uses
  %i.zy = shufflevector <2 x double> %i.zx, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.zz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zy, <2 x double> %i.zx, <2 x double> %i.zo) ; 2 uses
  %i.aaa = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.aab = getelementptr i8, ptr %i.aaa, i64 -12
  %i.aac = load <2 x float>, ptr %i.aab, align 4, !tbaa !10
  %i.aad = shufflevector <2 x float> %i.aac, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aae = fpext <2 x float> %i.aad to <2 x double>
  %i.aaf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zy, <2 x double> %i.aae, <2 x double> %i.zp) ; 2 uses
  %i.aag = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.aah = getelementptr i8, ptr %i.aag, i64 -20
  %i.aai = load <2 x float>, ptr %i.aah, align 4, !tbaa !10
  %i.aaj = fpext <2 x float> %i.aai to <2 x double>
  %i.aak = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zy, <2 x double> %i.aaj, <2 x double> %i.zq) ; 2 uses
  %i.aal = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.aam = getelementptr i8, ptr %i.aal, i64 -28
  %i.aan = load <2 x float>, ptr %i.aam, align 4, !tbaa !10
  %i.aao = fpext <2 x float> %i.aan to <2 x double>
  %i.aap = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zy, <2 x double> %i.aao, <2 x double> %i.zr) ; 2 uses
  %i.aaq = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.aar = getelementptr i8, ptr %i.aaq, i64 -36
  %i.aas = load <2 x float>, ptr %i.aar, align 4, !tbaa !10
  %i.aat = shufflevector <2 x float> %i.aas, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aau = fpext <2 x float> %i.aat to <2 x double>
  %i.aav = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zy, <2 x double> %i.aau, <2 x double> %i.zs) ; 2 uses
  %i.aaw = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.aax = getelementptr i8, ptr %i.aaw, i64 -44
  %i.aay = load <2 x float>, ptr %i.aax, align 4, !tbaa !10
  %i.aaz = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aba = fpext <2 x float> %i.aaz to <2 x double>
  %i.abb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zy, <2 x double> %i.aba, <2 x double> %i.zt) ; 2 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count237
  br i1 %exitcond238.not, label %.loopexit.loopexit288, label %.preheader156, !llvm.loop !39

.preheader162.preheader:                          ; preds = %.preheader167.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %i.abc = load <2 x double>, ptr %3, align 8, !tbaa !17 ; 3 uses
  %i.abd = load <2 x double>, ptr %i.ir, align 8, !tbaa !17 ; 3 uses
  %i.abe = load <2 x double>, ptr %i.jn, align 8, !tbaa !17 ; 3 uses
  %i.abf = add nsw i64 %wide.trip.count, -16      ; 3 uses
  %min.iters.check = icmp ult i64 %i.abf, 2
  br i1 %min.iters.check, label %.preheader162.preheader567, label %vector.ph

vector.ph:                                        ; preds = %.preheader162.preheader
  %n.vec = and i64 %i.abf, -2                     ; 3 uses
  %i.abg = add nsw i64 %n.vec, 16
  %i.abh = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.abe, <2 x i32> <i32 3, i32 1>
  %i.abi = insertelement <2 x double> %i.abe, double 0.000000e+00, i64 1
  %i.abj = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.abd, <2 x i32> <i32 3, i32 1>
  %i.abk = insertelement <2 x double> %i.abd, double 0.000000e+00, i64 1
  %i.abl = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.abc, <2 x i32> <i32 3, i32 1>
  %i.abm = insertelement <2 x double> %i.abc, double 0.000000e+00, i64 1
  %i.abn = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.rl, <2 x i32> <i32 3, i32 1>
  %i.abo = insertelement <2 x double> %i.rl, double 0.000000e+00, i64 1
  %i.abp = insertelement <2 x double> %i.rg, double 0.000000e+00, i64 1
end_hunk_0
