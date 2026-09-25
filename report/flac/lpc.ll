Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0_@FLAC__lpc_compute_autocorrelation:bb.a

vector.scevcheck:                                 ; preds = %.lr.ph185.us
  %i.o = trunc i64 %indvars.iv274 to i32
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
  %4 = load <2 x float>, ptr %i.cp, align 4, !tbaa !10
  %5 = fpext reassoc nsz arcp float %i.cy to double ; 7 uses
  %i.cz = load <2 x float>, ptr %i.cq, align 4, !tbaa !10
  %i.da = fpext <2 x float> %4 to <2 x double>    ; 6 uses
  %i.db = extractelement <2 x double> %i.da, i64 0 ; 2 uses
  %i.dc = fmul reassoc nsz arcp double %i.db, %5
  %i.dd = load <2 x float>, ptr %i.cs, align 4, !tbaa !10
  %i.de = fpext <2 x float> %i.cz to <2 x double> ; 4 uses
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.dh = load <2 x float>, ptr %i.ct, align 4, !tbaa !10
  %i.di = fpext <2 x float> %i.dd to <2 x double> ; 6 uses
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = extractelement <2 x double> %i.di, i64 0
  %i.dl = load <2 x float>, ptr %i.cv, align 4, !tbaa !10
  %i.dm = fpext <2 x float> %i.dh to <2 x double> ; 5 uses
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = extractelement <2 x double> %i.dm, i64 0
  %i.dp = fmul reassoc nsz arcp double %i.do, %5
  %i.dq = load <2 x float>, ptr %i.cw, align 4, !tbaa !10
  %i.dr = fpext <2 x float> %i.dl to <2 x double> ; 4 uses
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dt = extractelement <2 x double> %i.dr, i64 0 ; 2 uses
  %i.du = fpext <2 x float> %i.dq to <2 x double> ; 4 uses
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dw = extractelement <2 x double> %i.du, i64 0
  %i.dx = fmul reassoc nsz arcp double %i.dw, %5
  %i.dy = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %6 = fmul reassoc nsz arcp double %i.dk, %5
  %i.dz = insertelement <2 x double> %i.df, double %5, i64 0 ; 2 uses
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul reassoc nsz arcp <2 x double> %i.dz, %i.ea
  %i.ec = shufflevector <2 x double> %i.da, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %i.ed = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.ed, <2 x double> %i.eb) ; 2 uses
  %i.ef = shufflevector <2 x double> %i.dg, <2 x double> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.eg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.da, <2 x double> %i.ef)
  %i.eh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.de, <2 x double> %i.eg)
  %i.ei = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.di, <2 x double> %i.eh)
  %i.ej = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.dm, <2 x double> %i.ei)
  %i.ek = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dr, <2 x double> %i.ej)
  %i.el = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.du, <2 x double> %i.ek) ; 4 uses
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.em, ptr %3, align 8, !tbaa !17
  %i.en = shufflevector <2 x double> %i.de, <2 x double> %i.da, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eo = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ep = insertelement <2 x double> %i.eo, double %6, i64 1
  %i.eq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.en, <2 x double> %i.ep)
  %i.er = shufflevector <2 x double> %i.di, <2 x double> %i.de, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.es = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.er, <2 x double> %i.eq)
  %i.et = shufflevector <2 x double> %i.dm, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %i.eu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.et, <2 x double> %i.es)
  %i.ev = shufflevector <2 x double> %i.dr, <2 x double> %i.dm, <2 x i32> <i32 0, i32 2>
  %i.ew = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.ev, <2 x double> %i.eu) ; 4 uses
  store <2 x double> %i.ew, ptr %i.cr, align 8, !tbaa !17
  %7 = fmul reassoc nsz arcp double %i.dt, %5
  %i.ex = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dt, double %i.db, double %i.dp)
  %i.ey = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.ez = insertelement <2 x double> %i.ey, double %7, i64 1
  %i.fa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.en, <2 x double> %i.ez)
  %i.fb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.er, <2 x double> %i.fa) ; 4 uses
  store <2 x double> %i.fb, ptr %i.cu, align 8, !tbaa !17
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !17
  %i.fe = insertelement <2 x double> %i.da, double %5, i64 1
  %i.ff = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.fd, i64 1
  %i.fh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.fe, <2 x double> %i.fg) ; 4 uses
  store <2 x double> %i.fh, ptr %i.cx, align 8, !tbaa !17
  %i.fi = icmp sgt i32 %1, 8
  br i1 %i.fi, label %.preheader150.preheader, label %.loopexit

.preheader150.preheader:                          ; preds = %.preheader155.preheader
  %wide.trip.count264 = zext nneg i32 %1 to i64   ; 2 uses
  %i.fj = add nsw i64 %wide.trip.count264, -8     ; 3 uses
  %min.iters.check457 = icmp ult i64 %i.fj, 2
  br i1 %min.iters.check457, label %.preheader150.preheader523, label %vector.ph458

vector.ph458:                                     ; preds = %.preheader150.preheader
  %n.vec459 = and i64 %i.fj, -2                   ; 3 uses
  %i.fk = add nsw i64 %n.vec459, 8
  %i.fl = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fh, <2 x i32> <i32 3, i32 1>
  %i.fm = insertelement <2 x double> %i.fh, double 0.000000e+00, i64 1
  %i.fn = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fb, <2 x i32> <i32 3, i32 1>
  %i.fo = insertelement <2 x double> %i.fb, double 0.000000e+00, i64 1
  %i.fp = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.ew, <2 x i32> <i32 3, i32 1>
  %i.fq = insertelement <2 x double> %i.ew, double 0.000000e+00, i64 1
  %i.fr = insertelement <2 x double> %i.el, double 0.000000e+00, i64 1
  %i.fs = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.el, <2 x i32> <i32 3, i32 1>
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph458
  %index461 = phi i64 [ 0, %vector.ph458 ], [ %index.next478, %vector.body460 ] ; 2 uses
  %vec.phi462 = phi <2 x double> [ %i.fl, %vector.ph458 ], [ %i.gr, %vector.body460 ]
  %vec.phi463 = phi <2 x double> [ %i.fm, %vector.ph458 ], [ %i.go, %vector.body460 ]
  %vec.phi464 = phi <2 x double> [ %i.fn, %vector.ph458 ], [ %i.gl, %vector.body460 ]
  %vec.phi465 = phi <2 x double> [ %i.fo, %vector.ph458 ], [ %i.gi, %vector.body460 ]
  %vec.phi466 = phi <2 x double> [ %i.fp, %vector.ph458 ], [ %i.gf, %vector.body460 ]
  %vec.phi467 = phi <2 x double> [ %i.fq, %vector.ph458 ], [ %i.gc, %vector.body460 ]
  %vec.phi468 = phi <2 x double> [ %i.fr, %vector.ph458 ], [ %i.fz, %vector.body460 ]
  %vec.phi469 = phi <2 x double> [ %i.fs, %vector.ph458 ], [ %i.fw, %vector.body460 ]
  %i.ft = getelementptr [4 x i8], ptr %0, i64 %index461 ; 8 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 32
  %wide.load470 = load <2 x float>, ptr %i.fu, align 4, !tbaa !10
  %i.fv = fpext reassoc nsz arcp <2 x float> %wide.load470 to <2 x double> ; 9 uses
  %i.fw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fv, <2 x double> %vec.phi469) ; 2 uses
  %i.fx = getelementptr i8, ptr %i.ft, i64 28
  %wide.load471 = load <2 x float>, ptr %i.fx, align 4, !tbaa !10
  %i.fy = fpext reassoc nsz arcp <2 x float> %wide.load471 to <2 x double>
  %i.fz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fy, <2 x double> %vec.phi468) ; 2 uses
  %i.ga = getelementptr i8, ptr %i.ft, i64 24
  %wide.load472 = load <2 x float>, ptr %i.ga, align 4, !tbaa !10
  %i.gb = fpext reassoc nsz arcp <2 x float> %wide.load472 to <2 x double>
  %i.gc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gb, <2 x double> %vec.phi467) ; 2 uses
  %i.gd = getelementptr i8, ptr %i.ft, i64 20
  %wide.load473 = load <2 x float>, ptr %i.gd, align 4, !tbaa !10
  %i.ge = fpext reassoc nsz arcp <2 x float> %wide.load473 to <2 x double>
  %i.gf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.ge, <2 x double> %vec.phi466) ; 2 uses
  %i.gg = getelementptr i8, ptr %i.ft, i64 16
  %wide.load474 = load <2 x float>, ptr %i.gg, align 4, !tbaa !10
  %i.gh = fpext reassoc nsz arcp <2 x float> %wide.load474 to <2 x double>
  %i.gi = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gh, <2 x double> %vec.phi465) ; 2 uses
  %i.gj = getelementptr i8, ptr %i.ft, i64 12
  %wide.load475 = load <2 x float>, ptr %i.gj, align 4, !tbaa !10
  %i.gk = fpext reassoc nsz arcp <2 x float> %wide.load475 to <2 x double>
  %i.gl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gk, <2 x double> %vec.phi464) ; 2 uses
  %i.gm = getelementptr i8, ptr %i.ft, i64 8
  %wide.load476 = load <2 x float>, ptr %i.gm, align 4, !tbaa !10
  %i.gn = fpext reassoc nsz arcp <2 x float> %wide.load476 to <2 x double>
  %i.go = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gn, <2 x double> %vec.phi463) ; 2 uses
  %i.gp = getelementptr i8, ptr %i.ft, i64 4
  %wide.load477 = load <2 x float>, ptr %i.gp, align 4, !tbaa !10
  %i.gq = fpext reassoc nsz arcp <2 x float> %wide.load477 to <2 x double>
  %i.gr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gq, <2 x double> %vec.phi462) ; 2 uses
  %index.next478 = add nuw i64 %index461, 2       ; 2 uses
  %i.gs = icmp eq i64 %index.next478, %n.vec459
  br i1 %i.gs, label %middle.block479, label %vector.body460, !llvm.loop !36

middle.block479:                                  ; preds = %vector.body460
  %i.gt = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gr)
  %i.gu = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.go)
  %i.gv = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gl)
  %i.gw = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gi)
  %i.gx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gf)
  %i.gy = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.gc)
  %i.gz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.fz)
  %i.ha = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.fw)
  %cmp.n480 = icmp eq i64 %i.fj, %n.vec459
  %i.hb = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.ha, i64 1 ; 2 uses
  %i.hd = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.gx, i64 1 ; 2 uses
  %i.hf = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.hg = insertelement <2 x double> %i.hf, double %i.gv, i64 1 ; 2 uses
  %i.hh = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.gt, i64 1 ; 2 uses
  br i1 %cmp.n480, label %.loopexit.loopexit287, label %.preheader150.preheader523

.preheader150.preheader523:                       ; preds = %.preheader150.preheader, %middle.block479
  %indvars.iv261.ph = phi i64 [ 8, %.preheader150.preheader ], [ %i.fk, %middle.block479 ]
  %.ph = phi <2 x double> [ %i.el, %.preheader150.preheader ], [ %i.hc, %middle.block479 ]
  %.ph524 = phi <2 x double> [ %i.ew, %.preheader150.preheader ], [ %i.he, %middle.block479 ]
  %.ph525 = phi <2 x double> [ %i.fb, %.preheader150.preheader ], [ %i.hg, %middle.block479 ]
  %.ph526 = phi <2 x double> [ %i.fh, %.preheader150.preheader ], [ %i.hi, %middle.block479 ]
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.preheader523, %.preheader150
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.preheader150 ], [ %indvars.iv261.ph, %.preheader150.preheader523 ] ; 5 uses
  %i.hj = phi <2 x double> [ %i.hs, %.preheader150 ], [ %.ph, %.preheader150.preheader523 ]
  %i.hk = phi <2 x double> [ %i.hy, %.preheader150 ], [ %.ph524, %.preheader150.preheader523 ]
  %i.hl = phi <2 x double> [ %i.ie, %.preheader150 ], [ %.ph525, %.preheader150.preheader523 ]
  %i.hm = phi <2 x double> [ %i.ik, %.preheader150 ], [ %.ph526, %.preheader150.preheader523 ]
  %i.hn = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.ho = getelementptr i8, ptr %i.hn, i64 -4
  %i.hp = load <2 x float>, ptr %i.ho, align 4, !tbaa !10
  %i.hq = fpext <2 x float> %i.hp to <2 x double> ; 2 uses
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.hs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.hq, <2 x double> %i.hj) ; 2 uses
  %i.ht = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.hu = getelementptr i8, ptr %i.ht, i64 -12
  %i.hv = load <2 x float>, ptr %i.hu, align 4, !tbaa !10
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hx = fpext <2 x float> %i.hw to <2 x double>
  %i.hy = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.hx, <2 x double> %i.hk) ; 2 uses
  %i.hz = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.ia = getelementptr i8, ptr %i.hz, i64 -20
  %i.ib = load <2 x float>, ptr %i.ia, align 4, !tbaa !10
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.id = fpext <2 x float> %i.ic to <2 x double>
  %i.ie = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.id, <2 x double> %i.hl) ; 2 uses
  %i.if = getelementptr [4 x i8], ptr %0, i64 %indvars.iv261
  %i.ig = getelementptr i8, ptr %i.if, i64 -28
  %i.ih = load <2 x float>, ptr %i.ig, align 4, !tbaa !10
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ij = fpext <2 x float> %i.ii to <2 x double>
  %i.ik = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.ij, <2 x double> %i.hm) ; 2 uses
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit.loopexit287, label %.preheader150, !llvm.loop !37

bb.d:                                             ; preds = %bb.c
  %i.il = icmp samesign ult i32 %2, 13
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.il, label %.preheader161.preheader, label %.preheader167.preheader

.preheader167.preheader:                          ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.im, i8 0, i64 72, i1 false), !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !17
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jg = load float, ptr %0, align 4, !tbaa !10
  %i.jh = fpext reassoc nsz arcp float %i.jg to double ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.jm = load float, ptr %i.jf, align 4, !tbaa !10
  %i.jn = load <2 x float>, ptr %i.ir, align 4, !tbaa !10
  %i.jo = fpext <2 x float> %i.jn to <2 x double> ; 11 uses
  %i.jp = extractelement <2 x double> %i.jo, i64 1
  %i.jq = load <2 x float>, ptr %i.it, align 4, !tbaa !10
  %i.jr = load <2 x float>, ptr %i.iu, align 4, !tbaa !10
  %i.js = fpext <2 x float> %i.jq to <2 x double> ; 3 uses
  %i.jt = load <2 x float>, ptr %i.iw, align 4, !tbaa !10
  %i.ju = fpext <2 x float> %i.jr to <2 x double> ; 2 uses
  %i.jv = load <2 x float>, ptr %i.iz, align 4, !tbaa !10
  %i.jw = fpext <2 x float> %i.jt to <2 x double> ; 2 uses
  %i.jx = load <2 x float>, ptr %i.jb, align 4, !tbaa !10
  %i.jy = fpext <2 x float> %i.jv to <2 x double> ; 2 uses
  %i.jz = load <2 x float>, ptr %i.jc, align 4, !tbaa !10
  %i.ka = fpext <2 x float> %i.jx to <2 x double> ; 2 uses
  %i.kb = fpext <2 x float> %i.jz to <2 x double> ; 3 uses
  %i.kc = load float, ptr %i.iz, align 4, !tbaa !10
  %i.kd = load <2 x float>, ptr %i.io, align 4, !tbaa !10
  %i.ke = fpext <2 x float> %i.kd to <2 x double> ; 6 uses
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kg = shufflevector <2 x double> %i.jo, <2 x double> %i.ke, <2 x i32> <i32 0, i32 3>
  %i.kh = shufflevector <2 x double> %i.js, <2 x double> %i.jo, <2 x i32> <i32 0, i32 2>
  %i.ki = shufflevector <2 x double> %i.ju, <2 x double> %i.js, <2 x i32> <i32 0, i32 2>
  %i.kj = fpext reassoc nsz arcp float %i.kc to double
  %i.kk = insertelement <2 x double> %i.ka, double %i.kj, i64 1
  %i.kl = load <2 x float>, ptr %0, align 4, !tbaa !10
  %i.km = fpext <2 x float> %i.kl to <2 x double> ; 6 uses
  %i.kn = load <2 x double>, ptr %i.ja, align 8, !tbaa !17
  %i.ko = load <2 x float>, ptr %i.it, align 4, !tbaa !10
  %i.kp = load <2 x float>, ptr %i.ir, align 4, !tbaa !10
  %i.kq = fpext <2 x float> %i.kp to <2 x double> ; 3 uses
  %i.kr = load <2 x float>, ptr %i.iu, align 4, !tbaa !10
  %i.ks = fpext <2 x float> %i.ko to <2 x double> ; 2 uses
  %i.kt = fpext <2 x float> %i.kr to <2 x double> ; 3 uses
  %i.ku = shufflevector <2 x double> %i.ke, <2 x double> %i.km, <2 x i32> <i32 0, i32 3>
  %i.kv = insertelement <2 x double> %i.km, double -0.000000e+00, i64 1
  %i.kw = shufflevector <2 x double> %i.km, <2 x double> %i.ke, <2 x i32> <i32 1, i32 2>
  %i.kx = shufflevector <2 x double> %i.ke, <2 x double> %i.jo, <2 x i32> <i32 1, i32 2>
  %i.ky = shufflevector <2 x double> %i.jw, <2 x double> %i.kt, <2 x i32> <i32 0, i32 2>
  %i.kz = shufflevector <2 x double> %i.jy, <2 x double> %i.kt, <2 x i32> <i32 0, i32 3>
  %i.la = load <2 x double>, ptr %i.jd, align 8, !tbaa !17
  %i.lb = load <2 x float>, ptr %i.in, align 4, !tbaa !10
  %i.lc = load <2 x float>, ptr %i.io, align 4, !tbaa !10
  %i.ld = fpext <2 x float> %i.lb to <2 x double> ; 3 uses
  %i.le = fpext <2 x float> %i.lc to <2 x double> ; 4 uses
  %i.lf = insertelement <2 x double> %i.km, double 0.000000e+00, i64 1
  %i.lg = shufflevector <2 x double> %i.le, <2 x double> %i.kq, <2 x i32> <i32 1, i32 2>
  %i.lh = shufflevector <2 x double> %i.kq, <2 x double> %i.ks, <2 x i32> <i32 0, i32 2>
  %i.li = load float, ptr %i.io, align 4, !tbaa !10
  %i.lj = load <2 x double>, ptr %i.ji, align 8, !tbaa !17
  %i.lk = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.jh, i64 0
  %i.ll = insertelement <2 x double> %i.ld, double %i.jh, i64 1
  %i.lm = shufflevector <2 x double> %i.le, <2 x double> %i.ld, <2 x i32> <i32 0, i32 2>
  %i.ln = load <2 x float>, ptr %i.iu, align 4, !tbaa !10
  %i.lo = load <2 x float>, ptr %i.iw, align 4, !tbaa !10
  %i.lp = fpext <2 x float> %i.ln to <2 x double> ; 6 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0
  %i.lr = load <2 x float>, ptr %i.iz, align 4, !tbaa !10
  %i.ls = fpext <2 x float> %i.lo to <2 x double> ; 4 uses
  %i.lt = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lu = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lv = shufflevector <2 x double> %i.jo, <2 x double> %i.lp, <2 x i32> <i32 1, i32 2>
  %i.lw = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lx = load <2 x float>, ptr %i.jb, align 4, !tbaa !10
  %i.ly = fpext <2 x float> %i.lr to <2 x double> ; 5 uses
  %i.lz = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %8 = load <2 x float>, ptr %i.jc, align 4, !tbaa !10
  %9 = fpext <2 x float> %i.lx to <2 x double>    ; 4 uses
  %10 = insertelement <2 x double> %i.ly, double 0.000000e+00, i64 1
  %11 = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %i.kv, <2 x double> %i.kn)
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ma = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.mb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.km, <2 x double> %12)
  %i.mc = load <2 x float>, ptr %i.je, align 4, !tbaa !10
  %i.md = fpext <2 x float> %8 to <2 x double>    ; 4 uses
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.mf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.kw, <2 x double> %i.mb)
  %13 = load <2 x float>, ptr %i.jf, align 4, !tbaa !10
  %14 = fpext <2 x float> %i.mc to <2 x double>   ; 3 uses
  %15 = insertelement <2 x double> %i.md, double -0.000000e+00, i64 1
  %16 = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %i.lf, <2 x double> %i.la)
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mg = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.mh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.ke, <2 x double> %i.mf)
  %i.mi = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.km, <2 x double> %17)
  %i.mj = load <2 x float>, ptr %i.jj, align 4, !tbaa !10
  %i.mk = fpext <2 x float> %13 to <2 x double>   ; 4 uses
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.mm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.kx, <2 x double> %i.mh)
  %i.mn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ld, <2 x double> %i.mi)
  %18 = load <2 x float>, ptr %i.jk, align 4, !tbaa !10
  %19 = fpext <2 x float> %i.mj to <2 x double>   ; 3 uses
  %20 = fpext <2 x float> %18 to <2 x double>     ; 5 uses
  %21 = insertelement <2 x double> %i.mk, double 0.000000e+00, i64 1
  %22 = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %i.lk, <2 x double> %i.lj)
  %23 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.mo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.kq, <2 x double> %i.mm)
  %i.mp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.le, <2 x double> %i.mn)
  %24 = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.ll, <2 x double> %22)
  %i.mq = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.mr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.ks, <2 x double> %i.mo)
  %i.ms = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.lg, <2 x double> %i.mp)
  %i.mt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.lm, <2 x double> %24)
  %i.mu = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.mv = load <2 x float>, ptr %i.iq, align 4, !tbaa !10
  %i.mw = fpext <2 x float> %i.mv to <2 x double> ; 11 uses
  %i.mx = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.my = fpext reassoc nsz arcp float %i.jm to double
  %i.mz = shufflevector <2 x double> %i.mw, <2 x double> %i.jo, <2 x i32> <i32 1, i32 3>
  %i.na = shufflevector <2 x double> %i.jo, <2 x double> %i.mw, <2 x i32> <i32 1, i32 3>
  %i.nb = load float, ptr %0, align 4, !tbaa !10
  %25 = load <2 x float>, ptr %i.in, align 4, !tbaa !10
  %26 = fpext reassoc nsz arcp float %i.nb to double ; 7 uses
  %i.nc = fpext <2 x float> %25 to <2 x double>   ; 12 uses
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ne = extractelement <2 x double> %i.nc, i64 0 ; 2 uses
  %i.nf = extractelement <2 x double> %i.nc, i64 1
  %i.ng = fmul reassoc nsz arcp double %i.nf, %26
  %i.nh = fmul reassoc nsz arcp double %i.jp, %26
  %i.ni = fmul reassoc nsz arcp double %i.lq, %26
  %i.nj = insertelement <2 x double> %i.nc, double %26, i64 1
  %i.nk = insertelement <2 x double> poison, double %i.ni, i64 0
  %i.nl = insertelement <2 x double> %i.nk, double %i.iy, i64 1
  %i.nm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.nj, <2 x double> %i.nl)
  %i.nn = insertelement <2 x double> poison, double %i.nh, i64 0
  %i.no = shufflevector <2 x double> %i.nc, <2 x double> %i.mw, <2 x i32> <i32 1, i32 2>
  %i.np = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.ku, <2 x double> %i.nm)
  %i.nq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.kf, <2 x double> %i.np)
  %i.nr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.kg, <2 x double> %i.nq)
  %i.ns = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.kh, <2 x double> %i.nr)
  %i.nt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ki, <2 x double> %i.ns)
  %i.nu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.ky, <2 x double> %i.nt)
  %i.nv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.kz, <2 x double> %i.nu)
  %i.nw = extractelement <2 x double> %i.mw, i64 0 ; 2 uses
  %i.nx = fmul reassoc nsz arcp double %i.ne, %26
  %i.ny = insertelement <2 x double> %i.mx, double %26, i64 1 ; 2 uses
  %i.nz = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oa = fmul reassoc nsz arcp <2 x double> %i.ny, %i.nz
  %i.ob = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = shufflevector <2 x double> %i.jo, <2 x double> %i.nc, <2 x i32> <i32 1, i32 2>
  %i.od = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.oc, <2 x double> %i.oa) ; 2 uses
  %i.oe = shufflevector <2 x double> %i.nn, <2 x double> %i.od, <2 x i32> <i32 0, i32 2>
  %i.of = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.nc, <2 x double> %i.oe)
  %i.og = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.no, <2 x double> %i.of)
  %i.oh = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oi = insertelement <2 x double> %i.od, double %i.nx, i64 0
  %i.oj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.nc, <2 x double> %i.oi)
  %i.ok = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ol = shufflevector <2 x double> %i.nc, <2 x double> %i.mw, <2 x i32> <i32 1, i32 2>
  %i.om = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ok, <2 x double> %i.ol, <2 x double> %i.oj)
  %i.on = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.oo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.mw, <2 x double> %i.om)
  %27 = fmul reassoc nsz arcp double %i.nw, %26
  %i.op = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.nw, double %i.ne, double %i.ng)
  %i.oq = insertelement <2 x double> poison, double %i.op, i64 0
  %i.or = insertelement <2 x double> %i.oq, double %27, i64 1
  %i.os = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.nd, <2 x double> %i.or)
  %i.ot = shufflevector <2 x double> %i.mw, <2 x double> %i.nc, <2 x i32> <i32 0, i32 3>
  %i.ou = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.ot, <2 x double> %i.os)
  %i.ov = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.mz, <2 x double> %i.oo)
  %i.ow = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.lv, <2 x double> %i.ov)
  %i.ox = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.mx, <2 x double> %i.ou)
  %i.oy = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.lp, <2 x double> %i.ow)
  %i.oz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.na, <2 x double> %i.ox)
  %i.pa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.ls, <2 x double> %i.oy)
  %i.pb = shufflevector <2 x double> %i.lp, <2 x double> %i.jo, <2 x i32> <i32 0, i32 3>
  %i.pc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.pb, <2 x double> %i.oz)
  %i.pd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.mw, <2 x double> %i.og)
  %i.pe = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.ly, <2 x double> %i.pa)
  %i.pf = shufflevector <2 x double> %i.ls, <2 x double> %i.lp, <2 x i32> <i32 0, i32 2>
  %i.pg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.pf, <2 x double> %i.pc)
  %i.ph = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.jo, <2 x double> %i.pd)
  %i.pi = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %9, <2 x double> %i.pe)
  %i.pj = shufflevector <2 x double> %i.ly, <2 x double> %i.ls, <2 x i32> <i32 0, i32 2>
  %i.pk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.pj, <2 x double> %i.pg)
  %i.pl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.js, <2 x double> %i.ph)
  %i.pm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.md, <2 x double> %i.pi)
  %i.pn = shufflevector <2 x double> %9, <2 x double> %i.ly, <2 x i32> <i32 0, i32 2>
  %i.po = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.pn, <2 x double> %i.pk)
  %i.pp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.ju, <2 x double> %i.pl)
  %i.pq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %14, <2 x double> %i.pm)
  %i.pr = shufflevector <2 x double> %i.md, <2 x double> %9, <2 x i32> <i32 0, i32 2>
  %i.ps = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.pr, <2 x double> %i.po)
  %i.pt = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.jw, <2 x double> %i.pp)
  %i.pu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.mk, <2 x double> %i.pq)
  %i.pv = shufflevector <2 x double> %14, <2 x double> %i.kb, <2 x i32> <i32 0, i32 2>
  %i.pw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.pv, <2 x double> %i.ps)
  %i.px = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.jy, <2 x double> %i.pt)
  %i.py = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %19, <2 x double> %i.pu)
  %i.pz = shufflevector <2 x double> %i.mk, <2 x double> %i.kb, <2 x i32> <i32 0, i32 3>
  %i.qa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.pz, <2 x double> %i.pw)
  %i.qb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.ka, <2 x double> %i.px)
  %i.qc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %20, <2 x double> %i.py)
  %i.qd = shufflevector <2 x double> %i.qc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qd, ptr %3, align 8, !tbaa !17
  %i.qe = insertelement <2 x double> %19, double %i.my, i64 1
  %i.qf = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.qe, <2 x double> %i.qa)
  store <2 x double> %i.qf, ptr %i.ip, align 8, !tbaa !17
  %i.qg = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.qh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.kb, <2 x double> %i.qb) ; 4 uses
  %i.qi = shufflevector <2 x double> %i.qh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qi, ptr %i.is, align 8, !tbaa !17
  %i.qj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.kk, <2 x double> %i.nv) ; 4 uses
  store <2 x double> %i.qj, ptr %i.iv, align 8, !tbaa !17
  %i.qk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.kt, <2 x double> %i.mr) ; 4 uses
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ql, ptr %i.ja, align 8, !tbaa !17
  %i.qm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.lh, <2 x double> %i.ms) ; 4 uses
  %i.qn = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qn, ptr %i.jd, align 8, !tbaa !17
  %i.qo = fpext reassoc nsz arcp float %i.li to double
  %i.qp = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qq = insertelement <2 x double> %i.qp, double %i.qo, i64 1
  %i.qr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.qq, <2 x double> %i.mt) ; 4 uses
  store <2 x double> %i.qr, ptr %i.ji, align 8, !tbaa !17
  %i.qs = load <2 x float>, ptr %0, align 4, !tbaa !10
  %i.qt = shufflevector <2 x float> %i.qs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qu = fpext <2 x float> %i.qt to <2 x double>
  %i.qv = load <2 x double>, ptr %i.jl, align 8, !tbaa !17
  %i.qw = insertelement <2 x double> %20, double -0.000000e+00, i64 1
  %i.qx = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.jh, i64 0
  %i.qy = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qw, <2 x double> %i.qx, <2 x double> %i.qv)
  %i.qz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.qu, <2 x double> %i.qy)
  store <2 x double> %i.qz, ptr %i.jl, align 8, !tbaa !17
  %i.ra = icmp sgt i32 %1, 16
  br i1 %i.ra, label %.preheader162.preheader, label %.loopexit

.preheader161.preheader:                          ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.im, i8 0, i64 40, i1 false), !tbaa !17
  %i.rb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !17
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rj = load float, ptr %0, align 4, !tbaa !10
  %i.rk = fpext reassoc nsz arcp float %i.rj to double ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ro = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.rp = load <2 x float>, ptr %i.ir, align 4, !tbaa !10
  %i.rq = load <2 x float>, ptr %i.rc, align 4, !tbaa !10
  %i.rr = fpext <2 x float> %i.rp to <2 x double> ; 7 uses
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rt = load <2 x float>, ptr %i.rd, align 4, !tbaa !10
  %i.ru = fpext <2 x float> %i.rq to <2 x double> ; 7 uses
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rw = load <2 x float>, ptr %i.rf, align 4, !tbaa !10
  %i.rx = fpext <2 x float> %i.rt to <2 x double> ; 5 uses
  %i.ry = shufflevector <2 x double> %i.rx, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.rz = load <2 x float>, ptr %i.ri, align 4, !tbaa !10
  %i.sa = fpext <2 x float> %i.rw to <2 x double> ; 4 uses
  %i.sb = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.sc = load <2 x float>, ptr %i.rm, align 4, !tbaa !10
  %i.sd = fpext <2 x float> %i.rz to <2 x double> ; 5 uses
  %i.se = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.sf = load <2 x float>, ptr %i.rn, align 4, !tbaa !10
  %i.sg = fpext <2 x float> %i.sc to <2 x double> ; 3 uses
  %i.sh = shufflevector <2 x double> %i.sg, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.si = fpext <2 x float> %i.sf to <2 x double> ; 4 uses
  %i.sj = shufflevector <2 x double> %i.si, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.sk = shufflevector <2 x double> %i.si, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.sl = load <2 x float>, ptr %i.io, align 4, !tbaa !10
  %i.sm = fpext <2 x float> %i.sl to <2 x double> ; 13 uses
  %i.sn = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.so = extractelement <2 x double> %i.sm, i64 1
  %i.sp = shufflevector <2 x double> %i.sm, <2 x double> %i.rr, <2 x i32> <i32 1, i32 2>
  %i.sq = shufflevector <2 x double> %i.rr, <2 x double> %i.sm, <2 x i32> <i32 0, i32 3>
  %i.sr = shufflevector <2 x double> %i.ru, <2 x double> %i.rr, <2 x i32> <i32 0, i32 2>
  %i.ss = shufflevector <2 x double> %i.rx, <2 x double> %i.ru, <2 x i32> <i32 0, i32 2>
  %i.st = shufflevector <2 x double> %i.sa, <2 x double> %i.rx, <2 x i32> <i32 0, i32 2>
  %i.su = shufflevector <2 x double> %i.sd, <2 x double> %i.sa, <2 x i32> <i32 0, i32 2>
  %i.sv = shufflevector <2 x double> %i.sg, <2 x double> %i.sd, <2 x i32> <i32 0, i32 2>
  %i.sw = load <2 x float>, ptr %i.rc, align 4, !tbaa !10
  %i.sx = load <2 x float>, ptr %i.rd, align 4, !tbaa !10
  %i.sy = fpext <2 x float> %i.sw to <2 x double> ; 2 uses
  %i.sz = shufflevector <2 x double> %i.sm, <2 x double> %i.rr, <2 x i32> <i32 1, i32 2>
  %i.ta = fpext <2 x float> %i.sx to <2 x double>
  %i.tb = load <2 x float>, ptr %i.in, align 4, !tbaa !10
  %i.tc = load <2 x float>, ptr %i.io, align 4, !tbaa !10
  %i.td = fpext <2 x float> %i.tb to <2 x double> ; 3 uses
  %i.te = load <2 x float>, ptr %i.iq, align 4, !tbaa !10
  %i.tf = fpext <2 x float> %i.tc to <2 x double> ; 3 uses
  %i.tg = load <2 x float>, ptr %0, align 4, !tbaa !10
  %i.th = fpext <2 x float> %i.tg to <2 x double> ; 12 uses
  %i.ti = extractelement <2 x double> %i.th, i64 1
  %i.tj = fpext <2 x float> %i.te to <2 x double> ; 4 uses
  %28 = shufflevector <2 x double> %i.ru, <2 x double> %i.rx, <2 x i32> <i32 0, i32 2>
  %i.tk = shufflevector <2 x double> %i.th, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tl = fmul reassoc nsz arcp <2 x double> %28, %i.tk ; 2 uses
  %i.tm = insertelement <2 x double> %i.tl, double %i.rh, i64 0
  %i.tn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sb, <2 x double> %i.th, <2 x double> %i.tm)
  %i.to = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %i.td, <2 x double> %i.tn)
  %i.tp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> %i.tf, <2 x double> %i.to)
  %i.tq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.tj, <2 x double> %i.tp)
  %29 = shufflevector <2 x double> %i.sm, <2 x double> %i.th, <2 x i32> <i32 0, i32 2>
  %30 = fmul reassoc nsz arcp <2 x double> %29, %i.th ; 2 uses
  %i.tr = shufflevector <2 x double> %i.rr, <2 x double> %i.th, <2 x i32> <i32 0, i32 2>
  %i.ts = fmul reassoc nsz arcp <2 x double> %i.tk, %i.tr
  %i.tt = shufflevector <2 x double> %i.th, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tu = shufflevector <2 x double> %i.ru, <2 x double> %i.th, <2 x i32> <i32 0, i32 3>
  %i.tv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tt, <2 x double> %i.tu, <2 x double> %i.ts) ; 2 uses
  %i.tw = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tx = shufflevector <2 x double> %i.th, <2 x double> %i.sm, <2 x i32> <i32 1, i32 2>
  %31 = shufflevector <2 x double> %30, <2 x double> %i.tv, <2 x i32> <i32 1, i32 3>
  %i.ty = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tw, <2 x double> %i.tx, <2 x double> %31)
  %i.tz = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ua = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tz, <2 x double> %i.sm, <2 x double> %i.ty)
  %32 = extractelement <2 x double> %30, i64 0
  %i.ub = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.so, double %i.ti, double %32)
  %foldExtExtBinop = fmul reassoc nsz arcp <2 x double> %i.sn, %i.th
  %i.uc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rs, <2 x double> %i.sp, <2 x double> %i.ua)
  %i.ud = shufflevector <2 x double> %i.sm, <2 x double> %i.th, <2 x i32> <i32 0, i32 3>
  %i.ue = insertelement <2 x double> poison, double %i.ub, i64 0
  %i.uf = shufflevector <2 x double> %i.ue, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.ug = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rs, <2 x double> %i.ud, <2 x double> %i.uf)
  %i.uh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rv, <2 x double> %i.rr, <2 x double> %i.uc)
  %i.ui = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rv, <2 x double> %i.sn, <2 x double> %i.ug)
  %i.uj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %i.ru, <2 x double> %i.uh)
  %i.uk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %i.sq, <2 x double> %i.ui)
  %i.ul = shufflevector <2 x double> %i.th, <2 x double> %i.sm, <2 x i32> <i32 1, i32 2>
  %33 = shufflevector <2 x double> %i.tl, <2 x double> %i.tv, <2 x i32> <i32 0, i32 2>
  %i.um = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %i.ul, <2 x double> %33)
  %i.un = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sb, <2 x double> %i.rx, <2 x double> %i.uj)
  %i.uo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sb, <2 x double> %i.sr, <2 x double> %i.uk)
  %i.up = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sb, <2 x double> %i.sm, <2 x double> %i.um)
  %i.uq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %i.sa, <2 x double> %i.un)
  %i.ur = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %i.ss, <2 x double> %i.uo)
  %i.us = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %i.sz, <2 x double> %i.up)
  %i.ut = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> %i.sd, <2 x double> %i.uq)
  %i.uu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> %i.st, <2 x double> %i.ur)
  %i.uv = shufflevector <2 x double> %i.tj, <2 x double> %i.ru, <2 x i32> <i32 1, i32 2>
  %i.uw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> %i.uv, <2 x double> %i.us)
  %i.ux = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.sg, <2 x double> %i.ut)
  %i.uy = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.su, <2 x double> %i.uu)
  %i.uz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.sy, <2 x double> %i.uw)
  %i.va = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.si, <2 x double> %i.ux) ; 4 uses
  %i.vb = shufflevector <2 x double> %i.va, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vb, ptr %3, align 8, !tbaa !17
  %i.vc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.sv, <2 x double> %i.uy) ; 4 uses
  store <2 x double> %i.vc, ptr %i.ip, align 8, !tbaa !17
  %i.vd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.ta, <2 x double> %i.uz) ; 4 uses
  %i.ve = shufflevector <2 x double> %i.vd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ve, ptr %i.rb, align 8, !tbaa !17
  %i.vf = shufflevector <2 x double> %i.tj, <2 x double> %i.sy, <2 x i32> <i32 1, i32 2>
  %i.vg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.vf, <2 x double> %i.tq) ; 4 uses
  %i.vh = shufflevector <2 x double> %i.vg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vh, ptr %i.re, align 8, !tbaa !17
  %i.vi = load <2 x double>, ptr %i.rl, align 8, !tbaa !17
  %i.vj = insertelement <2 x double> %i.sd, double -0.000000e+00, i64 1
  %i.vk = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.rk, i64 0 ; 2 uses
  %i.vl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vj, <2 x double> %i.vk, <2 x double> %i.vi)
  %i.vm = insertelement <2 x double> %i.td, double %i.rk, i64 1 ; 2 uses
  %i.vn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> %i.vm, <2 x double> %i.vl)
  %i.vo = shufflevector <2 x double> %i.tf, <2 x double> %i.td, <2 x i32> <i32 0, i32 2>
  %i.vp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.vo, <2 x double> %i.vn)
  %i.vq = shufflevector <2 x double> %i.tj, <2 x double> %i.tf, <2 x i32> <i32 0, i32 2>
  %i.vr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.vq, <2 x double> %i.vp) ; 4 uses
  store <2 x double> %i.vr, ptr %i.rl, align 8, !tbaa !17
  %i.vs = load <2 x double>, ptr %i.ro, align 8, !tbaa !17
  %i.vt = insertelement <2 x double> %i.si, double -0.000000e+00, i64 1
  %i.vu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vt, <2 x double> %i.vk, <2 x double> %i.vs)
  %i.vv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.vm, <2 x double> %i.vu) ; 4 uses
  store <2 x double> %i.vv, ptr %i.ro, align 8, !tbaa !17
  %i.vw = icmp sgt i32 %1, 12
  br i1 %i.vw, label %.preheader156.preheader, label %.loopexit

.preheader156.preheader:                          ; preds = %.preheader161.preheader
  %wide.trip.count237 = zext nneg i32 %1 to i64   ; 2 uses
  %i.vx = add nsw i64 %wide.trip.count237, -12    ; 3 uses
  %min.iters.check411 = icmp ult i64 %i.vx, 2
  br i1 %min.iters.check411, label %.preheader156.preheader538, label %vector.ph412

vector.ph412:                                     ; preds = %.preheader156.preheader
  %n.vec413 = and i64 %i.vx, -2                   ; 3 uses
  %i.vy = add nsw i64 %n.vec413, 12
  %i.vz = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.vv, <2 x i32> <i32 3, i32 1>
  %i.wa = insertelement <2 x double> %i.vv, double 0.000000e+00, i64 1
  %i.wb = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.vr, <2 x i32> <i32 3, i32 1>
  %i.wc = insertelement <2 x double> %i.vr, double 0.000000e+00, i64 1
  %i.wd = insertelement <2 x double> %i.vg, double 0.000000e+00, i64 1
  %i.we = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.vg, <2 x i32> <i32 3, i32 1>
  %i.wf = insertelement <2 x double> %i.vd, double 0.000000e+00, i64 1
  %i.wg = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.vd, <2 x i32> <i32 3, i32 1>
  %i.wh = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.vc, <2 x i32> <i32 3, i32 1>
  %i.wi = insertelement <2 x double> %i.vc, double 0.000000e+00, i64 1
  %i.wj = insertelement <2 x double> %i.va, double 0.000000e+00, i64 1
  %i.wk = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.va, <2 x i32> <i32 3, i32 1>
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next440, %vector.body414 ] ; 2 uses
  %vec.phi416 = phi <2 x double> [ %i.vz, %vector.ph412 ], [ %i.xv, %vector.body414 ]
  %vec.phi417 = phi <2 x double> [ %i.wa, %vector.ph412 ], [ %i.xs, %vector.body414 ]
  %vec.phi418 = phi <2 x double> [ %i.wb, %vector.ph412 ], [ %i.xp, %vector.body414 ]
  %vec.phi419 = phi <2 x double> [ %i.wc, %vector.ph412 ], [ %i.xm, %vector.body414 ]
  %vec.phi420 = phi <2 x double> [ %i.wd, %vector.ph412 ], [ %i.xj, %vector.body414 ]
  %vec.phi421 = phi <2 x double> [ %i.we, %vector.ph412 ], [ %i.xg, %vector.body414 ]
  %vec.phi422 = phi <2 x double> [ %i.wf, %vector.ph412 ], [ %i.xd, %vector.body414 ]
  %vec.phi423 = phi <2 x double> [ %i.wg, %vector.ph412 ], [ %i.xa, %vector.body414 ]
  %vec.phi424 = phi <2 x double> [ %i.wh, %vector.ph412 ], [ %i.wx, %vector.body414 ]
  %vec.phi425 = phi <2 x double> [ %i.wi, %vector.ph412 ], [ %i.wu, %vector.body414 ]
  %vec.phi426 = phi <2 x double> [ %i.wj, %vector.ph412 ], [ %i.wr, %vector.body414 ]
  %vec.phi427 = phi <2 x double> [ %i.wk, %vector.ph412 ], [ %i.wo, %vector.body414 ]
  %i.wl = getelementptr [4 x i8], ptr %0, i64 %index415 ; 12 uses
  %i.wm = getelementptr i8, ptr %i.wl, i64 48
  %wide.load428 = load <2 x float>, ptr %i.wm, align 4, !tbaa !10
  %i.wn = fpext reassoc nsz arcp <2 x float> %wide.load428 to <2 x double> ; 13 uses
  %i.wo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.wn, <2 x double> %vec.phi427) ; 2 uses
  %i.wp = getelementptr i8, ptr %i.wl, i64 44
  %wide.load429 = load <2 x float>, ptr %i.wp, align 4, !tbaa !10
  %i.wq = fpext reassoc nsz arcp <2 x float> %wide.load429 to <2 x double>
  %i.wr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.wq, <2 x double> %vec.phi426) ; 2 uses
  %i.ws = getelementptr i8, ptr %i.wl, i64 40
  %wide.load430 = load <2 x float>, ptr %i.ws, align 4, !tbaa !10
  %i.wt = fpext reassoc nsz arcp <2 x float> %wide.load430 to <2 x double>
  %i.wu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.wt, <2 x double> %vec.phi425) ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wl, i64 36
  %wide.load431 = load <2 x float>, ptr %i.wv, align 4, !tbaa !10
  %i.ww = fpext reassoc nsz arcp <2 x float> %wide.load431 to <2 x double>
  %i.wx = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.ww, <2 x double> %vec.phi424) ; 2 uses
  %i.wy = getelementptr i8, ptr %i.wl, i64 32
  %wide.load432 = load <2 x float>, ptr %i.wy, align 4, !tbaa !10
  %i.wz = fpext reassoc nsz arcp <2 x float> %wide.load432 to <2 x double>
  %i.xa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.wz, <2 x double> %vec.phi423) ; 2 uses
  %i.xb = getelementptr i8, ptr %i.wl, i64 28
  %wide.load433 = load <2 x float>, ptr %i.xb, align 4, !tbaa !10
  %i.xc = fpext reassoc nsz arcp <2 x float> %wide.load433 to <2 x double>
  %i.xd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.xc, <2 x double> %vec.phi422) ; 2 uses
  %i.xe = getelementptr i8, ptr %i.wl, i64 24
  %wide.load434 = load <2 x float>, ptr %i.xe, align 4, !tbaa !10
  %i.xf = fpext reassoc nsz arcp <2 x float> %wide.load434 to <2 x double>
  %i.xg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.xf, <2 x double> %vec.phi421) ; 2 uses
  %i.xh = getelementptr i8, ptr %i.wl, i64 20
  %wide.load435 = load <2 x float>, ptr %i.xh, align 4, !tbaa !10
  %i.xi = fpext reassoc nsz arcp <2 x float> %wide.load435 to <2 x double>
  %i.xj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.xi, <2 x double> %vec.phi420) ; 2 uses
  %i.xk = getelementptr i8, ptr %i.wl, i64 16
  %wide.load436 = load <2 x float>, ptr %i.xk, align 4, !tbaa !10
  %i.xl = fpext reassoc nsz arcp <2 x float> %wide.load436 to <2 x double>
  %i.xm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.xl, <2 x double> %vec.phi419) ; 2 uses
  %i.xn = getelementptr i8, ptr %i.wl, i64 12
  %wide.load437 = load <2 x float>, ptr %i.xn, align 4, !tbaa !10
  %i.xo = fpext reassoc nsz arcp <2 x float> %wide.load437 to <2 x double>
  %i.xp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.xo, <2 x double> %vec.phi418) ; 2 uses
  %i.xq = getelementptr i8, ptr %i.wl, i64 8
  %wide.load438 = load <2 x float>, ptr %i.xq, align 4, !tbaa !10
  %i.xr = fpext reassoc nsz arcp <2 x float> %wide.load438 to <2 x double>
  %i.xs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.xr, <2 x double> %vec.phi417) ; 2 uses
  %i.xt = getelementptr i8, ptr %i.wl, i64 4
  %wide.load439 = load <2 x float>, ptr %i.xt, align 4, !tbaa !10
  %i.xu = fpext reassoc nsz arcp <2 x float> %wide.load439 to <2 x double>
  %i.xv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.xu, <2 x double> %vec.phi416) ; 2 uses
  %index.next440 = add nuw i64 %index415, 2       ; 2 uses
  %i.xw = icmp eq i64 %index.next440, %n.vec413
  br i1 %i.xw, label %middle.block441, label %vector.body414, !llvm.loop !38

middle.block441:                                  ; preds = %vector.body414
  %i.xx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xv)
  %i.xy = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xs)
  %i.xz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xp)
  %i.ya = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xm)
  %i.yb = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xj)
  %i.yc = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xg)
  %i.yd = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xd)
  %i.ye = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.xa)
  %i.yf = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.wx)
  %i.yg = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.wu)
  %i.yh = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.wr)
  %i.yi = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.wo)
  %cmp.n442 = icmp eq i64 %i.vx, %n.vec413
  %i.yj = insertelement <2 x double> poison, double %i.yh, i64 0
  %i.yk = insertelement <2 x double> %i.yj, double %i.yi, i64 1 ; 2 uses
  %i.yl = insertelement <2 x double> poison, double %i.yg, i64 0
  %i.ym = insertelement <2 x double> %i.yl, double %i.yf, i64 1 ; 2 uses
  %i.yn = insertelement <2 x double> poison, double %i.yd, i64 0
  %i.yo = insertelement <2 x double> %i.yn, double %i.ye, i64 1 ; 2 uses
  %i.yp = insertelement <2 x double> poison, double %i.yb, i64 0
  %i.yq = insertelement <2 x double> %i.yp, double %i.yc, i64 1 ; 2 uses
  %i.yr = insertelement <2 x double> poison, double %i.ya, i64 0
  %i.ys = insertelement <2 x double> %i.yr, double %i.xz, i64 1 ; 2 uses
  %i.yt = insertelement <2 x double> poison, double %i.xy, i64 0
  %i.yu = insertelement <2 x double> %i.yt, double %i.xx, i64 1 ; 2 uses
  br i1 %cmp.n442, label %.loopexit.loopexit288, label %.preheader156.preheader538

.preheader156.preheader538:                       ; preds = %.preheader156.preheader, %middle.block441
  %indvars.iv234.ph = phi i64 [ 12, %.preheader156.preheader ], [ %i.vy, %middle.block441 ]
  %.ph539 = phi <2 x double> [ %i.va, %.preheader156.preheader ], [ %i.yk, %middle.block441 ]
  %.ph540 = phi <2 x double> [ %i.vc, %.preheader156.preheader ], [ %i.ym, %middle.block441 ]
  %.ph541 = phi <2 x double> [ %i.vd, %.preheader156.preheader ], [ %i.yo, %middle.block441 ]
  %.ph542 = phi <2 x double> [ %i.vg, %.preheader156.preheader ], [ %i.yq, %middle.block441 ]
  %.ph543 = phi <2 x double> [ %i.vr, %.preheader156.preheader ], [ %i.ys, %middle.block441 ]
  %.ph544 = phi <2 x double> [ %i.vv, %.preheader156.preheader ], [ %i.yu, %middle.block441 ]
  br label %.preheader156

.preheader156:                                    ; preds = %.preheader156.preheader538, %.preheader156
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.preheader156 ], [ %indvars.iv234.ph, %.preheader156.preheader538 ] ; 7 uses
  %i.yv = phi <2 x double> [ %i.zg, %.preheader156 ], [ %.ph539, %.preheader156.preheader538 ]
  %i.yw = phi <2 x double> [ %i.zm, %.preheader156 ], [ %.ph540, %.preheader156.preheader538 ]
  %i.yx = phi <2 x double> [ %i.zr, %.preheader156 ], [ %.ph541, %.preheader156.preheader538 ]
  %i.yy = phi <2 x double> [ %i.zw, %.preheader156 ], [ %.ph542, %.preheader156.preheader538 ]
  %i.yz = phi <2 x double> [ %i.aac, %.preheader156 ], [ %.ph543, %.preheader156.preheader538 ]
  %i.za = phi <2 x double> [ %i.aai, %.preheader156 ], [ %.ph544, %.preheader156.preheader538 ]
  %i.zb = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.zc = getelementptr i8, ptr %i.zb, i64 -4
  %i.zd = load <2 x float>, ptr %i.zc, align 4, !tbaa !10
  %i.ze = fpext <2 x float> %i.zd to <2 x double> ; 2 uses
  %i.zf = shufflevector <2 x double> %i.ze, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.zg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zf, <2 x double> %i.ze, <2 x double> %i.yv) ; 2 uses
  %i.zh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.zi = getelementptr i8, ptr %i.zh, i64 -12
  %i.zj = load <2 x float>, ptr %i.zi, align 4, !tbaa !10
  %i.zk = shufflevector <2 x float> %i.zj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.zl = fpext <2 x float> %i.zk to <2 x double>
  %i.zm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zf, <2 x double> %i.zl, <2 x double> %i.yw) ; 2 uses
  %i.zn = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.zo = getelementptr i8, ptr %i.zn, i64 -20
  %i.zp = load <2 x float>, ptr %i.zo, align 4, !tbaa !10
  %i.zq = fpext <2 x float> %i.zp to <2 x double>
  %i.zr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zf, <2 x double> %i.zq, <2 x double> %i.yx) ; 2 uses
  %i.zs = getelementptr [4 x i8], ptr %0, i64 %indvars.iv234
  %i.zt = getelementptr i8, ptr %i.zs, i64 -28
end_hunk_0
