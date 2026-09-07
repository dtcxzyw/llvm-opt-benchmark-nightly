Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0_@FLAC__lpc_window_data_partial_wide:bb.a
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader79 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aj = add nsw i64 %wide.trip.count, -1
  %i.ak = icmp eq i64 %indvars.iv.ph, %i.aj
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.al = trunc nuw i64 %indvars.iv to i32
  %i.am = add i32 %5, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.aq = sitofp reassoc nsz arcp i64 %i.ap to float
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !10
  %i.at = fmul reassoc nsz arcp float %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.at, ptr %i.au, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.av = trunc nuw i64 %indvars.iv.next to i32
  %i.aw = add i32 %5, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.ba = sitofp reassoc nsz arcp i64 %i.az to float
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10
  %i.bd = fmul reassoc nsz arcp float %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.bd, ptr %i.be, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %i.bf = sub i32 %3, %4                          ; 3 uses
  %i.bg = sub i32 %i.bf, %5                       ; 2 uses
  %.037. = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.bg) ; 8 uses
  %i.bh = icmp ult i32 %i.bf, %3
  br i1 %i.bh, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %._crit_edge
  %i.bi = zext i32 %i.bf to i64                   ; 8 uses
  %wide.trip.count53 = zext i32 %3 to i64         ; 5 uses
  %i.bj = sub nsw i64 %wide.trip.count53, %i.bi   ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.bj, 18
  br i1 %min.iters.check64, label %.lr.ph45.preheader78, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %.lr.ph45.preheader
  %i.bk = xor i64 %i.bi, -1
  %i.bl = add nsw i64 %i.bk, %wide.trip.count53   ; 2 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = xor i32 %.037., -1
  %i.bo = icmp ult i32 %i.bn, %i.bm
  %i.bp = add i32 %5, %.037.
  %i.bq = xor i32 %i.bp, -1
  %i.br = icmp ult i32 %i.bq, %i.bm
  %i.bs = icmp ugt i64 %i.bl, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  %i.bu = or i1 %i.bo, %i.bt
  br i1 %i.bu, label %.lr.ph45.preheader78, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %i.bv = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.bg)
  %umin = zext i32 %i.bv to i64
  %i.bw = shl nuw nsw i64 %umin, 2
  %i.bx = add i64 %i.bw, %i.b
  %i.by = shl nuw nsw i64 %i.bi, 2
  %i.bz = add i64 %i.by, %i.a
  %i.ca = sub i64 %i.bz, %i.bx
  %diff.check62 = icmp ugt i64 %i.ca, -16
  br i1 %diff.check62, label %.lr.ph45.preheader78, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck61
  %n.vec66 = and i64 %i.bj, -4                    ; 4 uses
  %i.cb = add nsw i64 %n.vec66, %i.bi
  %i.cc = trunc i64 %n.vec66 to i32
  %i.cd = add i32 %.037., %i.cc                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.bi
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 3 uses
  %i.ce = trunc i64 %index68 to i32
  %i.cf = add i32 %.037., %i.ce                   ; 2 uses
  %i.cg = add i32 %i.cf, %5
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load69 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !15
  %wide.load70 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !15
  %i.ck = sitofp reassoc nsz arcp <2 x i64> %wide.load69 to <2 x float>
  %i.cl = sitofp reassoc nsz arcp <2 x i64> %wide.load70 to <2 x float>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index68 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load71 = load <2 x float>, ptr %gep, align 4, !tbaa !10
  %wide.load72 = load <2 x float>, ptr %i.cm, align 4, !tbaa !10
  %i.cn = fmul reassoc nsz arcp <2 x float> %wide.load71, %i.ck
  %i.co = fmul reassoc nsz arcp <2 x float> %wide.load72, %i.cl
  %i.cp = zext i32 %i.cf to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store <2 x float> %i.cn, ptr %i.cq, align 4, !tbaa !10
  store <2 x float> %i.co, ptr %i.cr, align 4, !tbaa !10
  %index.next73 = add nuw i64 %index68, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.cs, label %middle.block74, label %vector.body67, !llvm.loop !28

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bj, %n.vec66
  br i1 %cmp.n75, label %._crit_edge46, label %.lr.ph45.preheader78

.lr.ph45.preheader78:                             ; preds = %vector.memcheck61, %vector.scevcheck60, %.lr.ph45.preheader, %middle.block74
  %indvars.iv50.ph = phi i64 [ %i.bi, %vector.memcheck61 ], [ %i.bi, %vector.scevcheck60 ], [ %i.bi, %.lr.ph45.preheader ], [ %i.cb, %middle.block74 ] ; 5 uses
  %.142.ph = phi i32 [ %.037., %vector.memcheck61 ], [ %.037., %vector.scevcheck60 ], [ %.037., %.lr.ph45.preheader ], [ %i.cd, %middle.block74 ] ; 4 uses
  %i.ct = sub nsw i64 %wide.trip.count53, %indvars.iv50.ph
  %xtraiter80 = and i64 %i.ct, 1
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph45.prol.loopexit, label %.lr.ph45.prol

.lr.ph45.prol:                                    ; preds = %.lr.ph45.preheader78
  %i.cu = add i32 %.142.ph, %5
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !15
  %i.cy = sitofp reassoc nsz arcp i64 %i.cx to float
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50.ph
  %i.da = load float, ptr %i.cz, align 4, !tbaa !10
  %i.db = fmul reassoc nsz arcp float %i.da, %i.cy
  %i.dc = zext i32 %.142.ph to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dc
  store float %i.db, ptr %i.dd, align 4, !tbaa !10
  %i.de = add i32 %.142.ph, 1                     ; 2 uses
  %indvars.iv.next51.prol = add nuw nsw i64 %indvars.iv50.ph, 1
  br label %.lr.ph45.prol.loopexit

.lr.ph45.prol.loopexit:                           ; preds = %.lr.ph45.prol, %.lr.ph45.preheader78
  %.lcssa.unr = phi i32 [ poison, %.lr.ph45.preheader78 ], [ %i.de, %.lr.ph45.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph45.preheader78 ], [ %indvars.iv.next51.prol, %.lr.ph45.prol ]
  %.142.unr = phi i32 [ %.142.ph, %.lr.ph45.preheader78 ], [ %i.de, %.lr.ph45.prol ]
  %i.df = add nsw i64 %wide.trip.count53, -1
  %i.dg = icmp eq i64 %indvars.iv50.ph, %i.df
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
  %4 = sub i32 %1, %2
  %i.c = zext i32 %2 to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.d, i1 false), !tbaa !17
  %i.e = zext i32 %4 to i64
  %wide.trip.count272 = zext i32 %2 to i64        ; 6 uses
  %i.f = add nsw i64 %wide.trip.count272, -1      ; 2 uses
  %min.iters.check491 = icmp ult i32 %2, 4
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ugt i64 %i.f, 4294967295
  %n.vec493 = and i64 %wide.trip.count272, 4294967292 ; 3 uses
  %cmp.n502 = icmp eq i64 %n.vec493, %wide.trip.count272
  %xtraiter = and i64 %wide.trip.count272, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %5 = add nsw i64 %wide.trip.count272, -1
  br label %.lr.ph185.us

.preheader149.split.preheader:                    ; preds = %bb.b
  %i.i = add i32 %1, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1)
  br label %.preheader

.lr.ph185.us:                                     ; preds = %.lr.ph185.us.preheader, %._crit_edge.us
  %indvars.iv274 = phi i64 [ 0, %.lr.ph185.us.preheader ], [ %indvars.iv.next275, %._crit_edge.us ] ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv274
  %i.k = load float, ptr %i.j, align 4, !tbaa !10
  %i.l = fpext reassoc nsz arcp float %i.k to double ; 4 uses
  br i1 %min.iters.check491, label %scalar.ph490.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph185.us
  %i.m = trunc i64 %indvars.iv274 to i32
  %i.n = xor i32 %i.m, -1
  %i.o = icmp ult i32 %i.n, %i.g
  %i.p = or i1 %i.o, %i.h
  br i1 %i.p, label %scalar.ph490.preheader, label %vector.ph492

vector.ph492:                                     ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next500, %vector.body494 ] ; 3 uses
  %i.q = add nuw i64 %index495, %indvars.iv274
  %i.r = and i64 %i.q, 4294967295
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %wide.load496 = load <2 x float>, ptr %i.s, align 4, !tbaa !10
  %wide.load497 = load <2 x float>, ptr %i.t, align 4, !tbaa !10
  %i.u = fpext reassoc nsz arcp <2 x float> %wide.load496 to <2 x double>
  %i.v = fpext reassoc nsz arcp <2 x float> %wide.load497 to <2 x double>
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index495 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load498 = load <2 x double>, ptr %i.w, align 8, !tbaa !17
  %wide.load499 = load <2 x double>, ptr %i.x, align 8, !tbaa !17
  %i.y = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.u, <2 x double> %wide.load498)
  %i.z = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.v, <2 x double> %wide.load499)
  store <2 x double> %i.y, ptr %i.w, align 8, !tbaa !17
  store <2 x double> %i.z, ptr %i.x, align 8, !tbaa !17
  %index.next500 = add nuw i64 %index495, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next500, %n.vec493
  br i1 %i.aa, label %middle.block501, label %vector.body494, !llvm.loop !30

middle.block501:                                  ; preds = %vector.body494
  br i1 %cmp.n502, label %._crit_edge.us, label %scalar.ph490.preheader

scalar.ph490.preheader:                           ; preds = %vector.scevcheck, %.lr.ph185.us, %middle.block501
  %indvars.iv269.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph185.us ], [ %n.vec493, %middle.block501 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph490.prol.loopexit, label %scalar.ph490.prol

scalar.ph490.prol:                                ; preds = %scalar.ph490.preheader
  %i.ab = add nuw i64 %indvars.iv269.ph, %indvars.iv274
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10
  %i.af = fpext reassoc nsz arcp float %i.ae to double
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv269.ph ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !17
  %i.ai = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.l, double %i.af, double %i.ah)
  store double %i.ai, ptr %i.ag, align 8, !tbaa !17
  %indvars.iv.next270.prol = or disjoint i64 %indvars.iv269.ph, 1
  br label %scalar.ph490.prol.loopexit

scalar.ph490.prol.loopexit:                       ; preds = %scalar.ph490.prol, %scalar.ph490.preheader
  %indvars.iv269.unr = phi i64 [ %indvars.iv269.ph, %scalar.ph490.preheader ], [ %indvars.iv.next270.prol, %scalar.ph490.prol ]
  %i.aj = icmp eq i64 %indvars.iv269.ph, %5
  br i1 %i.aj, label %._crit_edge.us, label %scalar.ph490

scalar.ph490:                                     ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490
  %indvars.iv269 = phi i64 [ %indvars.iv.next270.1, %scalar.ph490 ], [ %indvars.iv269.unr, %scalar.ph490.prol.loopexit ] ; 4 uses
  %i.ak = add nuw i64 %indvars.iv269, %indvars.iv274
  %i.al = and i64 %i.ak, 4294967295
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !10
  %i.ao = fpext reassoc nsz arcp float %i.an to double
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv269 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !17
  %i.ar = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.l, double %i.ao, double %i.aq)
  store double %i.ar, ptr %i.ap, align 8, !tbaa !17
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %i.as = add nuw i64 %indvars.iv.next270, %indvars.iv274
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !10
  %i.aw = fpext reassoc nsz arcp float %i.av to double
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next270 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !17
  %i.az = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.l, double %i.aw, double %i.ay)
  store double %i.az, ptr %i.ax, align 8, !tbaa !17
  %indvars.iv.next270.1 = add nuw nsw i64 %indvars.iv269, 2 ; 2 uses
  %exitcond273.not.1 = icmp eq i64 %indvars.iv.next270.1, %wide.trip.count272
  br i1 %exitcond273.not.1, label %._crit_edge.us, label %scalar.ph490, !llvm.loop !31

._crit_edge.us:                                   ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490, %middle.block501
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %.not148.us.not = icmp samesign ult i64 %indvars.iv274, %i.e
  br i1 %.not148.us.not, label %.lr.ph185.us, label %.preheader.loopexit193, !llvm.loop !32

.preheader.loopexit193:                           ; preds = %._crit_edge.us
  %i.ba = trunc nuw i64 %indvars.iv.next275 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit193, %.preheader149.split.preheader
  %.us-phi = phi i32 [ %umax, %.preheader149.split.preheader ], [ %i.ba, %.preheader.loopexit193 ] ; 2 uses
  %i.bb = icmp ult i32 %.us-phi, %1
  br i1 %i.bb, label %.lr.ph190.preheader, label %.loopexit

.lr.ph190.preheader:                              ; preds = %.preheader
  %i.bc = zext i32 %.us-phi to i64                ; 2 uses
  %i.bd = zext i32 %1 to i64                      ; 3 uses
  br label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %._crit_edge, %.lr.ph190.preheader
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %.lr.ph190.preheader ] ; 2 uses
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %._crit_edge ], [ %i.bc, %.lr.ph190.preheader ] ; 6 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv280
  %i.bf = load float, ptr %i.be, align 4, !tbaa !10
  %i.bg = fpext reassoc nsz arcp float %i.bf to double ; 2 uses
  %i.bh = sub nuw nsw i64 %i.bd, %indvars.iv280   ; 4 uses
  %min.iters.check506 = icmp samesign ult i64 %i.bh, 4
  br i1 %min.iters.check506, label %.lr.ph188.preheader522, label %vector.scevcheck504

vector.scevcheck504:                              ; preds = %.lr.ph188.preheader
  %i.bi = trunc i64 %indvars.iv280 to i32
  %i.bj = add i64 %indvar, %i.bc
  %i.bk = sub i64 %i.bd, %i.bj
  %i.bl = tail call i64 @llvm.usub.sat.i64(i64 %i.bk, i64 1) ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = xor i32 %i.bi, -1
  %i.bo = icmp ult i32 %i.bn, %i.bm
  %i.bp = icmp ugt i64 %i.bl, 4294967295
  %i.bq = or i1 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph188.preheader522, label %vector.ph507

vector.ph507:                                     ; preds = %vector.scevcheck504
  %n.vec508 = and i64 %i.bh, 4294967292           ; 3 uses
  %broadcast.splatinsert509 = insertelement <2 x double> poison, double %i.bg, i64 0
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
  %cmp.n519 = icmp eq i64 %i.bh, %n.vec508
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
  %i.cj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bg, double %i.cg, double %i.ci)
  store double %i.cj, ptr %i.ch, align 8, !tbaa !17
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next278, %i.bh
  br i1 %i.ck, label %.lr.ph188, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph188, %middle.block518
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %i.bd
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
end_hunk_0
