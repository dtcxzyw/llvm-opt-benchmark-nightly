Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0_@FLAC__lpc_window_data_partial_wide:bb.a
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !15
  %i.dm = sitofp reassoc nsz arcp i64 %i.dl to float
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.do = load float, ptr %i.dn, align 4, !tbaa !10
  %i.dp = fmul reassoc nsz arcp float %i.do, %i.dm
  %i.dq = zext i32 %.142 to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dq
  store float %i.dp, ptr %i.dr, align 4, !tbaa !10
  %i.ds = add i32 %.142, 1                        ; 2 uses
  %i.dt = add i32 %i.ds, %5
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !15
  %i.dx = sitofp reassoc nsz arcp i64 %i.dw to float
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !10
  %i.eb = fmul reassoc nsz arcp float %i.ea, %i.dx
  %i.ec = zext i32 %i.ds to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ec
  store float %i.eb, ptr %i.ed, align 4, !tbaa !10
  %i.ee = add i32 %.142, 2                        ; 2 uses
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %exitcond54.not.1 = icmp eq i64 %indvars.iv.next51.1, %wide.trip.count53
  br i1 %exitcond54.not.1, label %._crit_edge46, label %.lr.ph45, !llvm.loop !29

._crit_edge46:                                    ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45, %middle.block76, %._crit_edge
  %.1.lcssa = phi i32 [ %.037., %._crit_edge ], [ %i.ce, %middle.block76 ], [ %.lcssa.unr, %.lr.ph45.prol.loopexit ], [ %i.ee, %.lr.ph45 ] ; 2 uses
  %i.ef = icmp ult i32 %.1.lcssa, %3
  br i1 %i.ef, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge46
  %i.eg = zext i32 %.1.lcssa to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eg
  store float 0.000000e+00, ptr %i.eh, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge46, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_compute_autocorrelation(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 32
  %i.b = icmp ugt i32 %2, 16
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader149.split.preheader, label %.lr.ph185.us.preheader

.lr.ph185.us.preheader:                           ; preds = %bb.b
  %i.c = sub i32 %1, %2
  %i.d = zext i32 %2 to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.e, i1 false), !tbaa !17
  %i.f = zext i32 %i.c to i64
  %wide.trip.count272 = zext i32 %2 to i64        ; 6 uses
  %i.g = add nsw i64 %wide.trip.count272, -1      ; 2 uses
  %min.iters.check491 = icmp ult i32 %2, 4
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp ugt i64 %i.g, 4294967295
  %n.vec493 = and i64 %wide.trip.count272, 4294967292 ; 3 uses
  %cmp.n502 = icmp eq i64 %n.vec493, %wide.trip.count272
  %xtraiter = and i64 %wide.trip.count272, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = add nsw i64 %wide.trip.count272, -1
  br label %.lr.ph185.us

.preheader149.split.preheader:                    ; preds = %bb.b
  %i.k = add i32 %1, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  br label %.preheader

.lr.ph185.us:                                     ; preds = %.lr.ph185.us.preheader, %._crit_edge.us
  %indvars.iv274 = phi i64 [ 0, %.lr.ph185.us.preheader ], [ %indvars.iv.next275, %._crit_edge.us ] ; 8 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv274
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = fpext reassoc nsz arcp float %i.m to double ; 4 uses
  br i1 %min.iters.check491, label %scalar.ph490.preheader, label %vector.scevcheck

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
  %i.fp = shufflevector <2 x double> %i.fl, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.fq = insertelement <2 x double> %i.fl, double 0.000000e+00, i64 1
  %i.fr = shufflevector <2 x double> %i.ff, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.fs = insertelement <2 x double> %i.ff, double 0.000000e+00, i64 1
  %i.ft = shufflevector <2 x double> %i.ez, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.fu = insertelement <2 x double> %i.ez, double 0.000000e+00, i64 1
  %i.fv = insertelement <2 x double> %i.en, double 0.000000e+00, i64 1
  %i.fw = shufflevector <2 x double> %i.en, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
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
end_hunk_0
