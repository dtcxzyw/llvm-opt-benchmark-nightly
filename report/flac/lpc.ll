Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0_@FLAC__lpc_window_data_partial_wide:bb.a
  br i1 %i.dg, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph45 ], [ %indvars.iv50.unr, %.lr.ph45.prol.loopexit ] ; 3 uses
  %.142 = phi i32 [ %i.ed, %.lr.ph45 ], [ %.142.unr, %.lr.ph45.prol.loopexit ] ; 4 uses
  %i.dh = add i32 %.142, %5
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !15
  %i.dl = sitofp reassoc nsz arcp i64 %i.dk to float
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !10
  %i.do = fmul reassoc nsz arcp float %i.dn, %i.dl
  %i.dp = zext i32 %.142 to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dp
  store float %i.do, ptr %i.dq, align 4, !tbaa !10
  %i.dr = add i32 %.142, 1                        ; 2 uses
  %i.ds = add i32 %i.dr, %5
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !15
  %i.dw = sitofp reassoc nsz arcp i64 %i.dv to float
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !10
  %i.ea = fmul reassoc nsz arcp float %i.dz, %i.dw
  %i.eb = zext i32 %i.dr to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eb
  store float %i.ea, ptr %i.ec, align 4, !tbaa !10
  %i.ed = add i32 %.142, 2                        ; 2 uses
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %exitcond54.not.1 = icmp eq i64 %indvars.iv.next51.1, %wide.trip.count53
  br i1 %exitcond54.not.1, label %._crit_edge46, label %.lr.ph45, !llvm.loop !29

._crit_edge46:                                    ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45, %middle.block74, %._crit_edge
  %.1.lcssa = phi i32 [ %.037., %._crit_edge ], [ %i.cd, %middle.block74 ], [ %.lcssa.unr, %.lr.ph45.prol.loopexit ], [ %i.ed, %.lr.ph45 ] ; 2 uses
  %i.ee = icmp ult i32 %.1.lcssa, %3
  br i1 %i.ee, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge46
  %i.ef = zext i32 %.1.lcssa to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ef
  store float 0.000000e+00, ptr %i.eg, align 4, !tbaa !10
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
  %4 = xor i32 %i.bk, -1
  %i.bp = icmp ult i32 %4, %i.bo
  %5 = icmp ugt i64 %i.bn, 4294967295
  %i.bq = or i1 %i.bp, %5
  br i1 %i.bq, label %.lr.ph188.preheader522, label %vector.ph507

vector.ph507:                                     ; preds = %vector.scevcheck504
  %n.vec508 = and i64 %i.bj, 4294967292           ; 3 uses
  %broadcast.splatinsert509 = insertelement <2 x double> poison, double %i.bi, i64 0
  %broadcast.splat510 = shufflevector <2 x double> %broadcast.splatinsert509, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph507
  %index512 = phi i64 [ 0, %vector.ph507 ], [ %index.next517, %vector.body511 ] ; 3 uses
  %i.br = add nuw i64 %index512, %indvars.iv280
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %wide.load513 = load <2 x float>, ptr %i.bt, align 4, !tbaa !10
  %wide.load514 = load <2 x float>, ptr %i.bu, align 4, !tbaa !10
  %i.bv = fpext reassoc nsz arcp <2 x float> %wide.load513 to <2 x double>
  %i.bw = fpext reassoc nsz arcp <2 x float> %wide.load514 to <2 x double>
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index512 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %wide.load515 = load <2 x double>, ptr %i.bx, align 8, !tbaa !17
  %wide.load516 = load <2 x double>, ptr %i.by, align 8, !tbaa !17
  %i.bz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat510, <2 x double> %i.bv, <2 x double> %wide.load515)
  %i.ca = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat510, <2 x double> %i.bw, <2 x double> %wide.load516)
  store <2 x double> %i.bz, ptr %i.bx, align 8, !tbaa !17
  store <2 x double> %i.ca, ptr %i.by, align 8, !tbaa !17
  %index.next517 = add nuw i64 %index512, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next517, %n.vec508
  br i1 %i.cb, label %middle.block518, label %vector.body511, !llvm.loop !33

middle.block518:                                  ; preds = %vector.body511
  %cmp.n519 = icmp eq i64 %i.bj, %n.vec508
  br i1 %cmp.n519, label %._crit_edge, label %.lr.ph188.preheader522

.lr.ph188.preheader522:                           ; preds = %vector.scevcheck504, %.lr.ph188.preheader, %middle.block518
  %indvars.iv277.ph = phi i64 [ 0, %vector.scevcheck504 ], [ 0, %.lr.ph188.preheader ], [ %n.vec508, %middle.block518 ]
  br label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.preheader522, %.lr.ph188
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %.lr.ph188 ], [ %indvars.iv277.ph, %.lr.ph188.preheader522 ] ; 3 uses
  %i.cc = add nuw i64 %indvars.iv277, %indvars.iv280
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !10
  %i.cg = fpext reassoc nsz arcp float %i.cf to double
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv277 ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !17
  %i.cj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bi, double %i.cg, double %i.ci)
  store double %i.cj, ptr %i.ch, align 8, !tbaa !17
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next278, %i.bj
  br i1 %i.ck, label %.lr.ph188, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph188, %middle.block518
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %i.bf
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond284.not, label %.loopexit, label %.lr.ph188.preheader, !llvm.loop !35

bb.c:                                             ; preds = %bb.a
  %i.cl = icmp samesign ult i32 %2, 9
  br i1 %i.cl, label %.preheader155.preheader, label %bb.d

.preheader155.preheader:                          ; preds = %bb.c
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 0, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.cw = load float, ptr %0, align 4, !tbaa !10
  %i.cx = load <2 x float>, ptr %i.cn, align 4, !tbaa !10
  %i.cy = fpext reassoc nsz arcp float %i.cw to double ; 7 uses
  %i.cz = load <2 x float>, ptr %i.co, align 4, !tbaa !10
  %i.da = fpext <2 x float> %i.cx to <2 x double> ; 6 uses
  %i.db = extractelement <2 x double> %i.da, i64 0 ; 2 uses
  %i.dc = fmul reassoc nsz arcp double %i.db, %i.cy
  %i.dd = load <2 x float>, ptr %i.cq, align 4, !tbaa !10
  %i.de = fpext <2 x float> %i.cz to <2 x double> ; 4 uses
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.dh = load <2 x float>, ptr %i.cr, align 4, !tbaa !10
  %i.di = fpext <2 x float> %i.dd to <2 x double> ; 6 uses
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = extractelement <2 x double> %i.di, i64 0
  %i.dl = load <2 x float>, ptr %i.ct, align 4, !tbaa !10
  %i.dm = fpext <2 x float> %i.dh to <2 x double> ; 5 uses
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = extractelement <2 x double> %i.dm, i64 0
  %i.dp = fmul reassoc nsz arcp double %i.do, %i.cy
  %i.dq = load <2 x float>, ptr %i.cu, align 4, !tbaa !10
  %i.dr = fpext <2 x float> %i.dl to <2 x double> ; 4 uses
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dt = extractelement <2 x double> %i.dr, i64 0 ; 2 uses
  %i.du = fpext <2 x float> %i.dq to <2 x double> ; 4 uses
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dw = extractelement <2 x double> %i.du, i64 0
  %i.dx = fmul reassoc nsz arcp double %i.dw, %i.cy
  %i.dy = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.dz = fmul reassoc nsz arcp double %i.dk, %i.cy
  %i.ea = insertelement <2 x double> %i.df, double %i.cy, i64 0 ; 2 uses
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul reassoc nsz arcp <2 x double> %i.ea, %i.eb
  %i.ed = shufflevector <2 x double> %i.da, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %i.ee = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ee, <2 x double> %i.ec) ; 2 uses
  %i.eg = shufflevector <2 x double> %i.dg, <2 x double> %i.ef, <2 x i32> <i32 0, i32 2>
  %i.eh = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.da, <2 x double> %i.eg)
  %i.ei = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.de, <2 x double> %i.eh)
  %i.ej = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.di, <2 x double> %i.ei)
  %i.ek = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.dm, <2 x double> %i.ej)
  %i.el = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dr, <2 x double> %i.ek)
  %i.em = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.du, <2 x double> %i.el) ; 4 uses
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.en, ptr %3, align 8, !tbaa !17
  %i.eo = shufflevector <2 x double> %i.de, <2 x double> %i.da, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ep = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.eq = insertelement <2 x double> %i.ep, double %i.dz, i64 1
  %i.er = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.eo, <2 x double> %i.eq)
  %i.es = shufflevector <2 x double> %i.di, <2 x double> %i.de, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.et = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.es, <2 x double> %i.er)
  %i.eu = shufflevector <2 x double> %i.dm, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %i.ev = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.eu, <2 x double> %i.et)
  %i.ew = shufflevector <2 x double> %i.dr, <2 x double> %i.dm, <2 x i32> <i32 0, i32 2>
  %i.ex = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.ew, <2 x double> %i.ev) ; 4 uses
  store <2 x double> %i.ex, ptr %i.cp, align 8, !tbaa !17
  %i.ey = fmul reassoc nsz arcp double %i.dt, %i.cy
  %i.ez = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dt, double %i.db, double %i.dp)
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ey, i64 1
  %i.fc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.eo, <2 x double> %i.fb)
  %i.fd = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.es, <2 x double> %i.fc) ; 4 uses
  store <2 x double> %i.fd, ptr %i.cs, align 8, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !17
  %i.fg = insertelement <2 x double> %i.da, double %i.cy, i64 1
  %i.fh = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.ff, i64 1
  %i.fj = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.fg, <2 x double> %i.fi) ; 4 uses
  store <2 x double> %i.fj, ptr %i.cv, align 8, !tbaa !17
  %i.fk = icmp sgt i32 %1, 8
  br i1 %i.fk, label %.preheader150.preheader, label %.loopexit

.preheader150.preheader:                          ; preds = %.preheader155.preheader
  %wide.trip.count264 = zext nneg i32 %1 to i64   ; 2 uses
  %i.fl = add nsw i64 %wide.trip.count264, -8     ; 3 uses
  %min.iters.check457 = icmp ult i64 %i.fl, 2
  br i1 %min.iters.check457, label %.preheader150.preheader523, label %vector.ph458

vector.ph458:                                     ; preds = %.preheader150.preheader
  %n.vec459 = and i64 %i.fl, -2                   ; 3 uses
  %i.fm = add nsw i64 %n.vec459, 8
  %i.fn = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fj, <2 x i32> <i32 3, i32 1>
  %i.fo = insertelement <2 x double> %i.fj, double 0.000000e+00, i64 1
  %i.fp = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fd, <2 x i32> <i32 3, i32 1>
  %i.fq = insertelement <2 x double> %i.fd, double 0.000000e+00, i64 1
  %i.fr = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.ex, <2 x i32> <i32 3, i32 1>
  %i.fs = insertelement <2 x double> %i.ex, double 0.000000e+00, i64 1
  %i.ft = insertelement <2 x double> %i.em, double 0.000000e+00, i64 1
  %i.fu = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.em, <2 x i32> <i32 3, i32 1>
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
end_hunk_0
begin_hunk_1_@FLAC__lpc_restore_signal_wide_33bit:bb.a
  %i.ht = add nsw i64 %i.hs, %.26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.b
  %.27 = phi i64 [ %i.ht, %bb.ad ], [ 0, %bb.b ]
  %i.hu = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.hx = getelementptr i8, ptr %i.hw, i64 -32
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !15
  %i.hz = mul nsw i64 %i.hy, %i.hv
  %i.ia = add nsw i64 %i.hz, %.27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.b
  %.28 = phi i64 [ %i.ia, %bb.ae ], [ 0, %bb.b ]
  %i.ib = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ie = getelementptr i8, ptr %i.id, i64 -24
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !15
  %i.ig = mul nsw i64 %i.if, %i.ic
  %i.ih = add nsw i64 %i.ig, %.28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.b
  %.29 = phi i64 [ %i.ih, %bb.af ], [ 0, %bb.b ]
  %i.ii = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.il = getelementptr i8, ptr %i.ik, i64 -16
  %i.im = load i64, ptr %i.il, align 8, !tbaa !15
  %i.in = mul nsw i64 %i.im, %i.ij
  %i.io = add nsw i64 %i.in, %.29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.b
  %.30 = phi i64 [ %i.io, %bb.ag ], [ 0, %bb.b ]
  %i.ip = load i32, ptr %2, align 4, !tbaa !8
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.is = getelementptr i8, ptr %i.ir, i64 -8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !15
  %i.iu = mul nsw i64 %i.it, %i.iq
  %i.iv = add nsw i64 %i.iu, %.30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.b
  %.31 = phi i64 [ 0, %bb.b ], [ %i.iv, %bb.ah ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !8
  %i.iy = sext i32 %i.ix to i64
  %i.iz = ashr i64 %.31, %i.ag
  %i.ja = add nsw i64 %i.iz, %i.iy
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.ai, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(errnomem: write) uwtable
define hidden double @FLAC__lpc_compute_expected_bits_per_residual_sample(double noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp reassoc nsz arcp ogt double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp reassoc nsz arcp i32 %1 to double
  %i.c = fmul reassoc nnan nsz arcp double %0, 5.000000e-01
  %i.d = fdiv reassoc nsz arcp double %i.c, %i.b
  %i.e = tail call reassoc nsz arcp double @log(double noundef %i.d) #14
  %i.f = fmul reassoc nsz arcp double %i.e, f0x3FE71547652B82FE ; 2 uses
  %.inv.i = fcmp reassoc nsz arcp oge double %i.f, 0.000000e+00
  %..i = select nsz i1 %.inv.i, double %i.f, double 0.000000e+00
  br label %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp reassoc nsz arcp olt double %0, 0.000000e+00
  %.10.i = select nsz i1 %i.g, double 1.000000e+32, double 0.000000e+00
  br label %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit

FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit: ; preds = %bb.b, %bb.c
  %.1.i = phi nsz double [ %..i, %bb.b ], [ %.10.i, %bb.c ]
  ret double %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(errnomem: write) uwtable
define hidden double @FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale(double noundef %0, double noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp reassoc nsz arcp ogt double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fmul reassoc nsz arcp double %1, %0
  %i.c = tail call reassoc nsz arcp double @log(double noundef %i.b) #14
  %i.d = fmul reassoc nsz arcp double %i.c, f0x3FE71547652B82FE ; 2 uses
  %.inv = fcmp reassoc nsz arcp oge double %i.d, 0.000000e+00
  %. = select nsz i1 %.inv, double %i.d, double 0.000000e+00
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp reassoc nsz arcp olt double %0, 0.000000e+00
  %.10 = select nsz i1 %i.e, double 1.000000e+32, double 0.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi nsz double [ %., %bb.b ], [ %.10, %bb.c ]
  ret double %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read, errnomem: write) uwtable
define hidden i32 @FLAC__lpc_compute_best_order(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = uitofp reassoc nsz arcp i32 %2 to double
  %wide.trip.count = zext i32 %1 to i64
  %i.b = fdiv reassoc nsz arcp double 1.000000e+00, %i.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit ] ; 3 uses
  %.024 = phi double [ f0x41EFFFFFFFE00000, %.lr.ph ], [ %.1, %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit ] ; 2 uses
  %.01623 = phi i32 [ 0, %.lr.ph ], [ %.117, %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit ]
  %.01921 = phi i32 [ 1, %.lr.ph ], [ %i.r, %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !17 ; 3 uses
  %i.e = fcmp reassoc nsz arcp ogt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = fmul reassoc nnan nsz arcp double %i.d, 5.000000e-01
  %i.g = fmul reassoc nsz arcp double %i.f, %i.b
  %i.h = tail call reassoc nsz arcp double @log(double noundef %i.g) #14
  %i.i = fmul reassoc nsz arcp double %i.h, f0x3FE71547652B82FE ; 2 uses
  %.inv.i = fcmp reassoc nsz arcp oge double %i.i, 0.000000e+00
  %..i = select nsz i1 %.inv.i, double %i.i, double 0.000000e+00
  br label %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit

bb.d:                                             ; preds = %bb.b
  %i.j = fcmp reassoc nsz arcp olt double %i.d, 0.000000e+00
  %.10.i = select nsz i1 %i.j, double 1.000000e+32, double 0.000000e+00
  br label %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit

FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit: ; preds = %bb.c, %bb.d
  %.1.i = phi nsz double [ %..i, %bb.c ], [ %.10.i, %bb.d ]
  %i.k = sub i32 %2, %.01921
  %i.l = uitofp reassoc nsz arcp i32 %i.k to double
  %i.m = mul i32 %.01921, %3
  %i.n = uitofp reassoc nsz arcp i32 %i.m to double
  %i.o = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %.1.i, double %i.l, double %i.n) ; 2 uses
  %i.p = fcmp reassoc nsz arcp olt double %i.o, %.024 ; 2 uses
  %i.q = trunc nuw i64 %indvars.iv to i32
  %.117 = select i1 %i.p, i32 %i.q, i32 %.01623   ; 2 uses
  %.1 = select nsz i1 %i.p, double %i.o, double %.024
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = add i32 %.01921, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !130

._crit_edge.loopexit:                             ; preds = %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit
  %i.s = add i32 %.117, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.016.lcssa = phi i32 [ 1, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  ret i32 %.016.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v12i32(<12 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #7

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"float", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"double", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12, !13}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12, !13}
!25 = distinct !{!25, !11, !12}
!26 = distinct !{!26, !11, !12, !13}
!27 = distinct !{!27, !11, !12}
!28 = distinct !{!28, !11, !12, !13}
!29 = distinct !{!29, !11, !12}
!30 = distinct !{!30, !11, !12, !13}
!31 = distinct !{!31, !11, !12}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11, !12, !13}
!34 = distinct !{!34, !11, !12}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11, !12, !13}
!37 = distinct !{!37, !11, !13, !12}
!38 = distinct !{!38, !11, !12, !13}
!39 = distinct !{!39, !11, !13, !12}
!40 = distinct !{!40, !11, !12, !13}
!41 = distinct !{!41, !11, !13, !12}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11, !12, !13}
!44 = distinct !{!44, !11, !13, !12}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11, !12, !13}
!47 = distinct !{!47, !11, !13, !12}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11, !12, !13}
!52 = distinct !{!52, !11, !12, !13}
!53 = distinct !{!53, !11, !13, !12}
!54 = distinct !{!54, !11, !13, !12}
!55 = distinct !{!55, !11, !12, !13}
!56 = distinct !{!56, !11, !12, !13}
!57 = distinct !{!57, !11, !13, !12}
!58 = distinct !{!58, !11, !13, !12}
!59 = distinct !{!59, !11, !12, !13}
!60 = distinct !{!60, !11, !12, !13}
!61 = distinct !{!61, !11, !13, !12}
!62 = distinct !{!62, !11, !13, !12}
!63 = distinct !{!63, !11, !12, !13}
!64 = distinct !{!64, !11, !12, !13}
!65 = distinct !{!65, !11, !13, !12}
!66 = distinct !{!66, !11, !13, !12}
!67 = distinct !{!67, !11, !12, !13}
!68 = distinct !{!68, !11, !12, !13}
!69 = distinct !{!69, !11, !13, !12}
!70 = distinct !{!70, !11, !13, !12}
!71 = distinct !{!71, !11, !12, !13}
!72 = distinct !{!72, !11, !12, !13}
!73 = distinct !{!73, !11, !13, !12}
!74 = distinct !{!74, !11, !13, !12}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11, !12, !13}
!92 = distinct !{!92, !11, !13, !12}
!93 = distinct !{!93, !"FLAC__lpc_max_prediction_value_before_shift"}
!94 = distinct !{!94, !93, !"FLAC__lpc_max_prediction_value_before_shift: argument 0"}
!95 = distinct !{!95, !11, !12, !13}
!96 = distinct !{!96, !11, !13, !12}
!97 = !{!94}
!98 = distinct !{!98, !"FLAC__lpc_max_prediction_value_before_shift"}
!99 = distinct !{!99, !98, !"FLAC__lpc_max_prediction_value_before_shift: argument 0"}
!100 = distinct !{!100, !11, !12, !13}
!101 = distinct !{!101, !11, !13, !12}
!102 = !{!99}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, !11}
!106 = distinct !{!106, !11}
!107 = distinct !{!107, !11}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !11}
!110 = distinct !{!110, !11}
!111 = distinct !{!111, !11}
!112 = distinct !{!112, !11}
!113 = distinct !{!113, !11}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !11}
!117 = distinct !{!117, !11}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !11}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = distinct !{!122, !11}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
end_hunk_1
