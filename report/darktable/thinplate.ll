inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"rank %d/%d avg DE %g max DE %g\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"error increased!\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"[svd] #rows must be >= #cols \00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"[svd] no convergence after %d iterations\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @thinplate_match(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %8, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %8, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not420 = icmp eq ptr %9, null                 ; 2 uses
  br i1 %.not420, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %9, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = add nsw i32 %2, 4                        ; 21 uses
  %i.b = sext i32 %i.a to i64                     ; 37 uses
  %i.c = shl nsw i64 %i.b, 3                      ; 7 uses
  %i.d = mul i64 %i.c, %i.b
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 19 uses
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.preheader458.preheader, label %.preheader454.thread

.preheader458.preheader:                          ; preds = %bb.e
  %i.g = zext nneg i32 %i.a to i64                ; 4 uses
  %wide.trip.count582 = zext nneg i32 %2 to i64   ; 13 uses
  %i.h = add nsw i64 %wide.trip.count582, -1
  br label %.preheader458

.preheader458:                                    ; preds = %.preheader458.preheader, %.unr-lcssa
  %indvars.iv = phi i64 [ 0, %.preheader458.preheader ], [ %indvars.iv.next, %.unr-lcssa ] ; 11 uses
  %i.i = sub nsw i64 %wide.trip.count582, %indvars.iv
  %.idx717.a = mul nuw nsw i64 %indvars.iv, 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %.idx717.a ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !12 ; 3 uses
  %i.n = mul nuw nsw i64 %indvars.iv, %i.g
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %invariant.gep749.a = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader458
  %.idx718.prol = mul nuw nsw i64 %indvars.iv, 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.idx718.prol ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !12
  %i.q = fsub reassoc nsz arcp contract afn double %i.p, %i.k ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !12
  %i.u = fsub reassoc nsz arcp contract afn <2 x double> %i.t, %i.m ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn <2 x double> %i.u, %i.u ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 0
  %i.x = fadd reassoc nsz arcp contract afn double %i.w, %i.r
  %i.y = extractelement <2 x double> %i.v, i64 1
  %i.z = fadd reassoc nsz arcp contract afn double %i.x, %i.y
  %i.aa = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.z) ; 4 uses
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, %i.aa
  %i.ac = fcmp reassoc nsz arcp contract afn olt double %i.aa, f0x3E45798EE0000000
  %i.ad = select reassoc nsz arcp contract afn i1 %i.ac, double f0x3E45798EE0000000, double %i.aa
  %i.ae = fptrunc reassoc nsz arcp contract afn double %i.ad to float
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ae)
  %i.ag = fpext reassoc nsz arcp contract afn float %i.af to double
  %i.ah = fmul reassoc nsz arcp contract afn double %i.ab, %i.ag ; 2 uses
  %i.ai = mul nuw nsw i64 %indvars.iv, %i.g
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ai
  store double %i.ah, ptr %gep.prol, align 8, !tbaa !12
  %gep750.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749.a, i64 %indvars.iv
  store double %i.ah, ptr %gep750.prol, align 8, !tbaa !12
  %indvars.iv.next579.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader458
  %indvars.iv578.unr = phi i64 [ %indvars.iv, %.preheader458 ], [ %indvars.iv.next579.prol, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i64 %indvars.iv, %i.h
  br i1 %i.aj, label %.unr-lcssa, label %.preheader458.new

.lr.ph:                                           ; preds = %.unr-lcssa
  %i.ak = mul nuw nsw i32 %i.a, %2
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = zext nneg i32 %i.a to i64               ; 9 uses
  %i.an = zext nneg i32 %2 to i64
  %invariant.gep751.a = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.al ; 9 uses
  %invariant.gep753.a = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.an ; 9 uses
  %i.ao = add nsw i64 %wide.trip.count582, -1     ; 4 uses
  %xtraiter2040 = and i64 %wide.trip.count582, 7  ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 7
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count582, 2147483640
  br label %bb.g

.unr-lcssa:                                       ; preds = %.preheader458.new, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond583.not = icmp eq i64 %indvars.iv.next, %wide.trip.count582
  br i1 %exitcond583.not, label %.lr.ph, label %.preheader458

.preheader458.new:                                ; preds = %.prol.loopexit, %.preheader458.new
  %indvars.iv578 = phi i64 [ %indvars.iv.next579.1, %.preheader458.new ], [ %indvars.iv578.unr, %.prol.loopexit ] ; 5 uses
  %.idx718.a = mul nuw nsw i64 %indvars.iv578, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx718.a ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !12
  %i.as = fsub reassoc nsz arcp contract afn double %i.ar, %i.k ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn double %i.as, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load <2 x double>, ptr %i.au, align 8, !tbaa !12
  %i.aw = fsub reassoc nsz arcp contract afn <2 x double> %i.av, %i.m ; 2 uses
  %i.ax = fmul reassoc nsz arcp contract afn <2 x double> %i.aw, %i.aw ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0
  %i.az = fadd reassoc nsz arcp contract afn double %i.ay, %i.at
  %i.ba = extractelement <2 x double> %i.ax, i64 1
  %i.bb = fadd reassoc nsz arcp contract afn double %i.az, %i.ba
  %i.bc = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bb) ; 4 uses
  %i.bd = fmul reassoc nsz arcp contract afn double %i.bc, %i.bc
  %i.be = fcmp reassoc nsz arcp contract afn olt double %i.bc, f0x3E45798EE0000000
  %i.bf = select reassoc nsz arcp contract afn i1 %i.be, double f0x3E45798EE0000000, double %i.bc
  %i.bg = fptrunc reassoc nsz arcp contract afn double %i.bf to float
  %i.bh = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.bg)
  %i.bi = fpext reassoc nsz arcp contract afn float %i.bh to double
  %i.bj = fmul reassoc nsz arcp contract afn double %i.bd, %i.bi ; 2 uses
  %i.bk = mul nuw nsw i64 %indvars.iv578, %i.g
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bk
  store double %i.bj, ptr %gep, align 8, !tbaa !12
  %gep750.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749.a, i64 %indvars.iv578
  store double %i.bj, ptr %gep750.a, align 8, !tbaa !12
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 3 uses
  %.idx718.1.a = mul nuw nsw i64 %indvars.iv.next579, 24
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx718.1.a ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !12
  %i.bn = fsub reassoc nsz arcp contract afn double %i.bm, %i.k ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn double %i.bn, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = load <2 x double>, ptr %i.bp, align 8, !tbaa !12
  %i.br = fsub reassoc nsz arcp contract afn <2 x double> %i.bq, %i.m ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn <2 x double> %i.br, %i.br ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 0
  %i.bu = fadd reassoc nsz arcp contract afn double %i.bt, %i.bo
  %i.bv = extractelement <2 x double> %i.bs, i64 1
  %i.bw = fadd reassoc nsz arcp contract afn double %i.bu, %i.bv
  %i.bx = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bw) ; 4 uses
  %i.by = fmul reassoc nsz arcp contract afn double %i.bx, %i.bx
  %i.bz = fcmp reassoc nsz arcp contract afn olt double %i.bx, f0x3E45798EE0000000
  %i.ca = select reassoc nsz arcp contract afn i1 %i.bz, double f0x3E45798EE0000000, double %i.bx
  %i.cb = fptrunc reassoc nsz arcp contract afn double %i.ca to float
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.cb)
  %i.cd = fpext reassoc nsz arcp contract afn float %i.cc to double
  %i.ce = fmul reassoc nsz arcp contract afn double %i.by, %i.cd ; 2 uses
  %i.cf = mul nuw nsw i64 %indvars.iv.next579, %i.g
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.cf
  store double %i.ce, ptr %gep.1, align 8, !tbaa !12
  %gep750.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749.a, i64 %indvars.iv.next579
  store double %i.ce, ptr %gep750.1.a, align 8, !tbaa !12
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next579.1, %wide.trip.count582
  br i1 %exitcond.not.1, label %.unr-lcssa, label %.preheader458.new

.lr.ph482.unr-lcssa:                              ; preds = %bb.g
  %lcmp.mod2041.not = icmp eq i64 %xtraiter2040, 0
  br i1 %lcmp.mod2041.not, label %.lr.ph482, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph482.unr-lcssa, %.lr.ph
  %indvars.iv584.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next585.7, %.lr.ph482.unr-lcssa ]
  %lcmp.mod2042 = icmp ne i64 %xtraiter2040, 0
  tail call void @llvm.assume(i1 %lcmp.mod2042)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv584.epil = phi i64 [ %indvars.iv584.epil.init, %.epil.preheader ], [ %indvars.iv.next585.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep752.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep751.a, i64 %indvars.iv584.epil
  store double 1.000000e+00, ptr %gep752.epil.a, align 8, !tbaa !12
  %i.cg = mul nuw nsw i64 %indvars.iv584.epil, %i.am
  %gep754.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep753.a, i64 %i.cg
  store double 1.000000e+00, ptr %gep754.epil.a, align 8, !tbaa !12
  %indvars.iv.next585.epil = add nuw nsw i64 %indvars.iv584.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2040
  br i1 %epil.iter.cmp.not, label %.lr.ph482, label %bb.f, !llvm.loop !14

.lr.ph482:                                        ; preds = %bb.f, %.lr.ph482.unr-lcssa
  %i.ch = add nuw nsw i32 %2, 1
  %i.ci = mul nuw nsw i32 %i.ch, %i.a
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = zext nneg i32 %i.a to i64               ; 5 uses
  %i.cl = zext nneg i32 %2 to i64
  %invariant.gep755.a = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cj ; 5 uses
  %invariant.gep757.a = getelementptr [8 x i8], ptr %i.e, i64 %i.cl ; 5 uses
  %xtraiter2044 = and i64 %wide.trip.count582, 3  ; 3 uses
  %i.cm = icmp ult i64 %i.ao, 3
  br i1 %i.cm, label %.epil.preheader2043, label %.lr.ph482.new

.lr.ph482.new:                                    ; preds = %.lr.ph482
  %unroll_iter2048 = and i64 %wide.trip.count582, 2147483644
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv584 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next585.7, %bb.g ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.g ]
  %gep752.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep751.a, i64 %indvars.iv584
  store double 1.000000e+00, ptr %gep752.a, align 8, !tbaa !12
  %i.cn = mul nuw nsw i64 %indvars.iv584, %i.am
  %gep754.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep753.a, i64 %i.cn
  store double 1.000000e+00, ptr %gep754.a, align 8, !tbaa !12
  %indvars.iv.next585 = or disjoint i64 %indvars.iv584, 1 ; 2 uses
  %gep752.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep751.a, i64 %indvars.iv.next585
  store double 1.000000e+00, ptr %gep752.1.a, align 8, !tbaa !12
  %i.co = mul nuw nsw i64 %indvars.iv.next585, %i.am
  %gep754.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep753.a, i64 %i.co
  store double 1.000000e+00, ptr %gep754.1.a, align 8, !tbaa !12
  %indvars.iv.next585.1 = or disjoint i64 %indvars.iv584, 2 ; 2 uses
  %gep752.2.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep751.a, i64 %indvars.iv.next585.1
  store double 1.000000e+00, ptr %gep752.2.a, align 8, !tbaa !12
  %i.cp = mul nuw nsw i64 %indvars.iv.next585.1, %i.am
  %gep754.2.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep753.a, i64 %i.cp
end_hunk_0
begin_hunk_1_@thinplate_match:bb.a
  br label %vec.epilog.scalar.ph1293

vec.epilog.scalar.ph1293:                         ; preds = %vec.epilog.scalar.ph1293.preheader, %vec.epilog.scalar.ph1293
  %indvars.iv997.i.i = phi i64 [ %indvars.iv.next998.i.i, %vec.epilog.scalar.ph1293 ], [ %indvars.iv997.i.i.ph, %vec.epilog.scalar.ph1293.preheader ] ; 3 uses
  %.4678824.i.i = phi double [ %i.apb, %vec.epilog.scalar.ph1293 ], [ %.4678824.i.i.ph, %vec.epilog.scalar.ph1293.preheader ]
  %gep1199.i.i = getelementptr [8 x i8], ptr %i.and, i64 %indvars.iv997.i.i
  %i.aox = load double, ptr %gep1199.i.i, align 8, !tbaa !12
  %i.aoy = mul nsw i64 %indvars.iv997.i.i, %i.oy
  %gep1201.i.i = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.aoy
  %i.aoz = load double, ptr %gep1201.i.i, align 8, !tbaa !12
  %i.apa = fmul reassoc nsz arcp contract afn double %i.aoz, %i.aox
  %i.apb = fadd reassoc nsz arcp contract afn double %i.apa, %.4678824.i.i ; 2 uses
  %indvars.iv.next998.i.i = add nsw i64 %indvars.iv997.i.i, 1 ; 2 uses
  %exitcond1001.not.i.i = icmp eq i64 %indvars.iv.next998.i.i, %i.oy
  br i1 %exitcond1001.not.i.i, label %.lr.ph829.i.i.preheader, label %vec.epilog.scalar.ph1293, !llvm.loop !84

.lr.ph829.i.i.preheader:                          ; preds = %vec.epilog.scalar.ph1293, %vec.epilog.middle.block1312, %middle.block1284
  %.lcssa785 = phi double [ %i.aow, %vec.epilog.middle.block1312 ], [ %i.aop, %middle.block1284 ], [ %i.apb, %vec.epilog.scalar.ph1293 ] ; 5 uses
  br i1 %lcmp.mod2097.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol

.lr.ph829.i.i.prol:                               ; preds = %.lr.ph829.i.i.preheader, %.lr.ph829.i.i.prol
  %indvars.iv1002.i.i.prol = phi i64 [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ], [ %i.anc, %.lr.ph829.i.i.preheader ] ; 2 uses
  %prol.iter2098 = phi i64 [ %prol.iter2098.next, %.lr.ph829.i.i.prol ], [ 0, %.lr.ph829.i.i.preheader ]
  %i.apc = mul nsw i64 %indvars.iv1002.i.i.prol, %i.oy ; 2 uses
  %gep1203.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.apc
  %i.apd = load double, ptr %gep1203.i.i.prol, align 8, !tbaa !12
  %i.ape = fmul reassoc nsz arcp contract afn double %i.apd, %.lcssa785
  %gep1205.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.apc ; 2 uses
  %i.apf = load double, ptr %gep1205.i.i.prol, align 8, !tbaa !12
  %i.apg = fadd reassoc nsz arcp contract afn double %i.apf, %i.ape
  store double %i.apg, ptr %gep1205.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.prol = add nsw i64 %indvars.iv1002.i.i.prol, 1 ; 2 uses
  %prol.iter2098.next = add i64 %prol.iter2098, 1 ; 2 uses
  %prol.iter2098.cmp.not = icmp eq i64 %prol.iter2098.next, %xtraiter2096
  br i1 %prol.iter2098.cmp.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol, !llvm.loop !85

.lr.ph829.i.i.prol.loopexit:                      ; preds = %.lr.ph829.i.i.prol, %.lr.ph829.i.i.preheader
  %indvars.iv1002.i.i.unr = phi i64 [ %i.anc, %.lr.ph829.i.i.preheader ], [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ]
  br i1 %i.anx, label %._crit_edge830.i.i, label %.lr.ph829.i.i

._crit_edge830.i.i:                               ; preds = %.lr.ph829.i.i, %.lr.ph829.i.i.prol.loopexit
  %indvars.iv.next1008.i.i = add nuw nsw i64 %indvars.iv1007.i.i, 1 ; 2 uses
  %exitcond1011.not.i.i = icmp eq i64 %indvars.iv.next1008.i.i, %i.oy
  br i1 %exitcond1011.not.i.i, label %.loopexit747.i.i, label %iter.check1292

.lr.ph829.i.i:                                    ; preds = %.lr.ph829.i.i.prol.loopexit, %.lr.ph829.i.i
  %indvars.iv1002.i.i = phi i64 [ %indvars.iv.next1003.i.i.3, %.lr.ph829.i.i ], [ %indvars.iv1002.i.i.unr, %.lr.ph829.i.i.prol.loopexit ] ; 5 uses
  %i.aph = mul nsw i64 %indvars.iv1002.i.i, %i.oy ; 2 uses
  %gep1203.i.i = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.aph
  %i.api = load double, ptr %gep1203.i.i, align 8, !tbaa !12
  %i.apj = fmul reassoc nsz arcp contract afn double %i.api, %.lcssa785
  %gep1205.i.i = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.aph ; 2 uses
  %i.apk = load double, ptr %gep1205.i.i, align 8, !tbaa !12
  %i.apl = fadd reassoc nsz arcp contract afn double %i.apk, %i.apj
  store double %i.apl, ptr %gep1205.i.i, align 8, !tbaa !12
  %indvars.iv.next1003.i.i = add nsw i64 %indvars.iv1002.i.i, 1
  %i.apm = mul nsw i64 %indvars.iv.next1003.i.i, %i.oy ; 2 uses
  %gep1203.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.apm
  %i.apn = load double, ptr %gep1203.i.i.1, align 8, !tbaa !12
  %i.apo = fmul reassoc nsz arcp contract afn double %i.apn, %.lcssa785
  %gep1205.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.apm ; 2 uses
  %i.app = load double, ptr %gep1205.i.i.1, align 8, !tbaa !12
  %i.apq = fadd reassoc nsz arcp contract afn double %i.app, %i.apo
  store double %i.apq, ptr %gep1205.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.1 = add nsw i64 %indvars.iv1002.i.i, 2
  %i.apr = mul nsw i64 %indvars.iv.next1003.i.i.1, %i.oy ; 2 uses
  %gep1203.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.apr
  %i.aps = load double, ptr %gep1203.i.i.2, align 8, !tbaa !12
  %i.apt = fmul reassoc nsz arcp contract afn double %i.aps, %.lcssa785
  %gep1205.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.apr ; 2 uses
  %i.apu = load double, ptr %gep1205.i.i.2, align 8, !tbaa !12
  %i.apv = fadd reassoc nsz arcp contract afn double %i.apu, %i.apt
  store double %i.apv, ptr %gep1205.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.2 = add nsw i64 %indvars.iv1002.i.i, 3
  %i.apw = mul nsw i64 %indvars.iv.next1003.i.i.2, %i.oy ; 2 uses
  %gep1203.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.apw
  %i.apx = load double, ptr %gep1203.i.i.3, align 8, !tbaa !12
  %i.apy = fmul reassoc nsz arcp contract afn double %i.apx, %.lcssa785
  %gep1205.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.apw ; 2 uses
  %i.apz = load double, ptr %gep1205.i.i.3, align 8, !tbaa !12
  %i.aqa = fadd reassoc nsz arcp contract afn double %i.apz, %i.apy
  store double %i.aqa, ptr %gep1205.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.3 = add nsw i64 %indvars.iv1002.i.i, 4 ; 2 uses
  %exitcond1006.not.i.i.3 = icmp eq i64 %indvars.iv.next1003.i.i.3, %i.oy
  br i1 %exitcond1006.not.i.i.3, label %._crit_edge830.i.i, label %.lr.ph829.i.i

.loopexit747.i.i:                                 ; preds = %._crit_edge830.i.i, %bb.r
  br i1 %i.ana, label %iter.check1227, label %.loopexit745.i.i

iter.check1227:                                   ; preds = %.loopexit747.i.i
  %i.aqb = add i32 %i.amy, %indvars118.i
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = shl nsw i64 %i.aqc, 3
  %scevgep.i.i = getelementptr i8, ptr %i.il, i64 %i.aqd
  %i.aqe = sub i32 %i.ow, %indvars118.i
  %i.aqf = zext i32 %i.aqe to i64
  %i.aqg = shl nuw nsw i64 %i.aqf, 3
  %i.aqh = add nuw nsw i64 %i.aqg, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.aqh, i1 false), !tbaa !12
  %sext174.i = shl i64 %indvars.iv1017.in.i.i, 32
  %i.aqi = ashr exact i64 %sext174.i, 32          ; 5 uses
  %invariant.gep1206.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1017.i.i ; 6 uses
  %min.iters.check1201.a = icmp ult i64 %i.amv, 4
  br i1 %min.iters.check1201.a, label %vec.epilog.scalar.ph1228.preheader, label %vector.main.loop.iter.check1202

vector.main.loop.iter.check1202:                  ; preds = %iter.check1227
  %min.iters.check1203 = icmp ult i64 %i.amv, 16
  br i1 %min.iters.check1203, label %vec.epilog.ph1231, label %vector.ph1204

vector.ph1204:                                    ; preds = %vector.main.loop.iter.check1202
  %i.aqj = and i64 %i.amv, 12
  %n.vec1205 = and i64 %i.amv, -16                ; 4 uses
  %i.aqk = add i64 %i.aqi, %n.vec1205             ; 2 uses
  %broadcast.splatinsert1208 = insertelement <4 x i64> poison, i64 %i.aqi, i64 0
  %broadcast.splat1209 = shufflevector <4 x i64> %broadcast.splatinsert1208, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1210 = add nsw <4 x i64> %broadcast.splat1209, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1204
  %index1212 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1221, %vector.body1211 ]
  %vec.ind1213 = phi <4 x i64> [ %induction1210, %vector.ph1204 ], [ %vec.ind.next1222, %vector.body1211 ] ; 5 uses
  %step.add1214 = add nsw <4 x i64> %vec.ind1213, splat (i64 4)
  %step.add.21215 = add nsw <4 x i64> %vec.ind1213, splat (i64 8)
  %step.add.31216 = add nsw <4 x i64> %vec.ind1213, splat (i64 12)
  %i.aql = mul nsw <4 x i64> %vec.ind1213, %broadcast.splat1207.a
  %i.aqm = mul nsw <4 x i64> %step.add1214, %broadcast.splat1207.a
  %i.aqn = mul nsw <4 x i64> %step.add.21215, %broadcast.splat1207.a
  %i.aqo = mul nsw <4 x i64> %step.add.31216, %broadcast.splat1207.a
  %wide.gep1217.a = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, <4 x i64> %i.aql
  %wide.gep1218.a = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, <4 x i64> %i.aqm
  %wide.gep1219 = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, <4 x i64> %i.aqn
  %wide.gep1220 = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, <4 x i64> %i.aqo
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1217.a, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1218.a, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1219, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1220, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next1221 = add nuw i64 %index1212, 16    ; 2 uses
  %vec.ind.next1222 = add nsw <4 x i64> %vec.ind1213, splat (i64 16)
  %i.aqp = icmp eq i64 %index.next1221, %n.vec1205
  br i1 %i.aqp, label %middle.block1223, label %vector.body1211, !llvm.loop !86

middle.block1223:                                 ; preds = %vector.body1211
  %cmp.n1224 = icmp eq i64 %i.amv, %n.vec1205
  br i1 %cmp.n1224, label %.loopexit745.i.i, label %vec.epilog.iter.check1229

vec.epilog.iter.check1229:                        ; preds = %middle.block1223
  %min.epilog.iters.check1230 = icmp eq i64 %i.aqj, 0
  br i1 %min.epilog.iters.check1230, label %vec.epilog.scalar.ph1228.preheader, label %vec.epilog.ph1231, !prof !22

vec.epilog.ph1231:                                ; preds = %vector.main.loop.iter.check1202, %vec.epilog.iter.check1229
  %vec.epilog.resume.val1225 = phi i64 [ %n.vec1205, %vec.epilog.iter.check1229 ], [ 0, %vector.main.loop.iter.check1202 ]
  %bc.resume.val1226 = phi i64 [ %i.aqk, %vec.epilog.iter.check1229 ], [ %i.aqi, %vector.main.loop.iter.check1202 ]
  %n.vec1232 = and i64 %i.amv, -4                 ; 3 uses
  %i.aqq = add i64 %i.aqi, %n.vec1232
  %broadcast.splatinsert1235 = insertelement <4 x i64> poison, i64 %bc.resume.val1226, i64 0
  %broadcast.splat1236 = shufflevector <4 x i64> %broadcast.splatinsert1235, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1237 = add nsw <4 x i64> %broadcast.splat1236, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1238

vec.epilog.vector.body1238:                       ; preds = %vec.epilog.vector.body1238, %vec.epilog.ph1231
  %index1239 = phi i64 [ %vec.epilog.resume.val1225, %vec.epilog.ph1231 ], [ %index.next1242, %vec.epilog.vector.body1238 ]
  %vec.ind1240 = phi <4 x i64> [ %induction1237, %vec.epilog.ph1231 ], [ %vec.ind.next1243, %vec.epilog.vector.body1238 ] ; 2 uses
  %i.aqr = mul nsw <4 x i64> %vec.ind1240, %broadcast.splat1234.a
  %wide.gep1241 = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, <4 x i64> %i.aqr
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1241, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next1242 = add nuw i64 %index1239, 4     ; 2 uses
  %vec.ind.next1243 = add nsw <4 x i64> %vec.ind1240, splat (i64 4)
  %i.aqs = icmp eq i64 %index.next1242, %n.vec1232
  br i1 %i.aqs, label %vec.epilog.middle.block1244, label %vec.epilog.vector.body1238, !llvm.loop !87

vec.epilog.middle.block1244:                      ; preds = %vec.epilog.vector.body1238
  %cmp.n1245 = icmp eq i64 %i.amv, %n.vec1232
  br i1 %cmp.n1245, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1228.preheader

vec.epilog.scalar.ph1228.preheader:               ; preds = %iter.check1227, %vec.epilog.iter.check1229, %vec.epilog.middle.block1244
  %indvars.iv1012.i.i.ph = phi i64 [ %i.aqi, %iter.check1227 ], [ %i.aqk, %vec.epilog.iter.check1229 ], [ %i.aqq, %vec.epilog.middle.block1244 ]
  br label %vec.epilog.scalar.ph1228

vec.epilog.scalar.ph1228:                         ; preds = %vec.epilog.scalar.ph1228.preheader, %vec.epilog.scalar.ph1228
  %indvars.iv1012.i.i = phi i64 [ %indvars.iv.next1013.i.i, %vec.epilog.scalar.ph1228 ], [ %indvars.iv1012.i.i.ph, %vec.epilog.scalar.ph1228.preheader ] ; 2 uses
  %i.aqt = mul nsw i64 %indvars.iv1012.i.i, %i.oy
  %gep1207.i.i = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, i64 %i.aqt
  store double 0.000000e+00, ptr %gep1207.i.i, align 8, !tbaa !12
  %indvars.iv.next1013.i.i = add nsw i64 %indvars.iv1012.i.i, 1 ; 2 uses
  %exitcond1016.not.i.i = icmp eq i64 %indvars.iv.next1013.i.i, %i.oy
  br i1 %exitcond1016.not.i.i, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1228, !llvm.loop !88

.loopexit745.i.i:                                 ; preds = %vec.epilog.scalar.ph1228, %middle.block1223, %vec.epilog.middle.block1244, %.loopexit747.i.i, %._crit_edge818.i.i
  %i.aqu = mul i32 %.0645699.i.i, %indvars117.i
  %i.aqv = sext i32 %i.aqu to i64
  %i.aqw = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.aqv
  store double 1.000000e+00, ptr %i.aqw, align 8, !tbaa !12
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %indvars.iv1017.i.i
  %i.aqy = load double, ptr %i.aqx, align 8, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond1020.not.i.i = icmp eq i64 %indvars.iv.i, %i.pb
  br i1 %exitcond1020.not.i.i, label %.preheader742.i.i, label %._crit_edge818.i.i

.preheader742.i.i:                                ; preds = %.loopexit745.i.i, %.loopexit735.i.i
  %indvars.iv1055.i.i = phi i64 [ %indvars.iv.next1056.i.i, %.loopexit735.i.i ], [ 0, %.loopexit745.i.i ] ; 10 uses
  %indvars.iv1029.in.i.i = phi i64 [ %indvars.iv1029.i.i, %.loopexit735.i.i ], [ %i.oy, %.loopexit745.i.i ] ; 10 uses
  %i.aqz = add i64 %indvars.iv1055.i.i, %i.b      ; 7 uses
  %i.ara = trunc i64 %indvars.iv1055.i.i to i32
  %i.arb = add i32 %i.iz, %i.ara                  ; 3 uses
  %i.arc = zext i32 %i.arb to i64
  %i.ard = add nuw nsw i64 %i.arc, 1              ; 5 uses
  %i.are = add i64 %indvars.iv1055.i.i, %i.b      ; 7 uses
  %i.arf = mul nsw i64 %indvars.iv1055.i.i, -16   ; 2 uses
  %i.arg = getelementptr i8, ptr %i.in, i64 %i.arf
  %scevgep1069 = getelementptr i8, ptr %i.arg, i64 8
  %i.arh = mul nsw i64 %indvars.iv1055.i.i, -8    ; 2 uses
  %scevgep1072 = getelementptr i8, ptr %i.pk, i64 %i.arh
  %i.ari = trunc i64 %indvars.iv1055.i.i to i32
  %i.arj = add i32 %i.pl, %i.ari
  %i.ark = zext i32 %i.arj to i64
  %i.arl = shl nuw nsw i64 %i.ark, 3
  %scevgep1075.a = getelementptr i8, ptr %scevgep1072, i64 %i.arl
  %scevgep1076 = getelementptr i8, ptr %i.in, i64 %i.arf
  %scevgep1077 = getelementptr i8, ptr %i.pm, i64 %i.arh
  %i.arm = add i64 %indvars.iv1055.i.i, %i.b      ; 7 uses
  %indvars.iv1029.i.i = add nsw i64 %indvars.iv1029.in.i.i, -1 ; 23 uses
  %i.arn = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1029.i.i
  %i.aro = load double, ptr %i.arn, align 8, !tbaa !12 ; 2 uses
  %i.arp = icmp slt i64 %indvars.iv1029.in.i.i, %i.oy ; 2 uses
  br i1 %i.arp, label %.lr.ph841.i.i, label %.loopexit741.i.i

.lr.ph841.i.i:                                    ; preds = %.preheader742.i.i
  %i.arq = shl nuw nsw i64 %indvars.iv1055.i.i, 3
  %i.arr = add nuw nsw i64 %i.arq, 34359738360
  %i.ars = and i64 %i.arr, 34359738360
  %i.art = add nuw nsw i64 %i.ars, 8
  %i.aru = trunc nuw nsw i64 %indvars.iv1055.i.i to i32
  %i.arv = mul i32 %i.aru, %i.iq
  %i.arw = add i32 %i.pd, %i.arv
  %i.arx = sext i32 %i.arw to i64
  %i.ary = shl nsw i64 %i.arx, 3
  %scevgep1023.i.i = getelementptr i8, ptr %i.in, i64 %i.ary
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1023.i.i, i8 0, i64 %i.art, i1 false), !tbaa !12
  br label %.loopexit741.i.i

.loopexit741.i.i:                                 ; preds = %.lr.ph841.i.i, %.preheader742.i.i
  %i.arz = fcmp reassoc nsz arcp contract afn une double %i.aro, 0.000000e+00
  br i1 %i.arz, label %bb.s, label %.preheader738.i.i

.preheader738.i.i:                                ; preds = %.loopexit741.i.i
  %.not1125.i.i = icmp sgt i64 %indvars.iv1029.in.i.i, %i.b
  br i1 %.not1125.i.i, label %.loopexit735.i.i, label %iter.check1186

iter.check1186:                                   ; preds = %.preheader738.i.i
  %invariant.gep1208.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1029.i.i ; 11 uses
  %min.iters.check1174.a = icmp ugt i64 %i.aqz, 3
  %or.cond1937.a = and i1 %min.iters.check1174.a, %ident.check1172.not
  br i1 %or.cond1937.a, label %vector.main.loop.iter.check1175, label %.lr.ph843.i.i.preheader

vector.main.loop.iter.check1175:                  ; preds = %iter.check1186
  %min.iters.check1176 = icmp ult i64 %i.aqz, 16
  br i1 %min.iters.check1176, label %vec.epilog.ph1190, label %vector.ph1177

vector.ph1177:                                    ; preds = %vector.main.loop.iter.check1175
  %i.asa = and i64 %i.aqz, 12
  %n.vec1178 = and i64 %i.aqz, -16                ; 4 uses
  %i.asb = add i64 %indvars.iv1029.i.i, %n.vec1178
  %i.asc = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %indvars.iv1029.i.i
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1177
  %index1180 = phi i64 [ 0, %vector.ph1177 ], [ %index.next1181, %vector.body1179 ] ; 2 uses
  %i.asd = getelementptr [8 x i8], ptr %i.asc, i64 %index1180 ; 4 uses
  %i.ase = getelementptr i8, ptr %i.asd, i64 32
  %i.asf = getelementptr i8, ptr %i.asd, i64 64
  %i.asg = getelementptr i8, ptr %i.asd, i64 96
  store <4 x double> zeroinitializer, ptr %i.asd, align 8, !tbaa !12
  store <4 x double> zeroinitializer, ptr %i.ase, align 8, !tbaa !12
  store <4 x double> zeroinitializer, ptr %i.asf, align 8, !tbaa !12
  store <4 x double> zeroinitializer, ptr %i.asg, align 8, !tbaa !12
  %index.next1181 = add nuw i64 %index1180, 16    ; 2 uses
  %i.ash = icmp eq i64 %index.next1181, %n.vec1178
  br i1 %i.ash, label %middle.block1182, label %vector.body1179, !llvm.loop !89

middle.block1182:                                 ; preds = %vector.body1179
  %cmp.n1183 = icmp eq i64 %i.aqz, %n.vec1178
  br i1 %cmp.n1183, label %.loopexit735.i.i, label %vec.epilog.iter.check1188

vec.epilog.iter.check1188:                        ; preds = %middle.block1182
  %min.epilog.iters.check1189 = icmp eq i64 %i.asa, 0
  br i1 %min.epilog.iters.check1189, label %.lr.ph843.i.i.preheader, label %vec.epilog.ph1190, !prof !22

vec.epilog.ph1190:                                ; preds = %vector.main.loop.iter.check1175, %vec.epilog.iter.check1188
  %vec.epilog.resume.val1184 = phi i64 [ %n.vec1178, %vec.epilog.iter.check1188 ], [ 0, %vector.main.loop.iter.check1175 ]
  %n.vec1191 = and i64 %i.aqz, -4                 ; 3 uses
  %i.asi = add i64 %indvars.iv1029.i.i, %n.vec1191
  %i.asj = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %indvars.iv1029.i.i
  br label %vec.epilog.vector.body1192

vec.epilog.vector.body1192:                       ; preds = %vec.epilog.vector.body1192, %vec.epilog.ph1190
  %index1193 = phi i64 [ %vec.epilog.resume.val1184, %vec.epilog.ph1190 ], [ %index.next1194, %vec.epilog.vector.body1192 ] ; 2 uses
  %i.ask = getelementptr [8 x i8], ptr %i.asj, i64 %index1193
  store <4 x double> zeroinitializer, ptr %i.ask, align 8, !tbaa !12
  %index.next1194 = add nuw i64 %index1193, 4     ; 2 uses
  %i.asl = icmp eq i64 %index.next1194, %n.vec1191
  br i1 %i.asl, label %vec.epilog.middle.block1195, label %vec.epilog.vector.body1192, !llvm.loop !90

vec.epilog.middle.block1195:                      ; preds = %vec.epilog.vector.body1192
  %cmp.n1196 = icmp eq i64 %i.aqz, %n.vec1191
  br i1 %cmp.n1196, label %.loopexit735.i.i, label %.lr.ph843.i.i.preheader

.lr.ph843.i.i.preheader:                          ; preds = %iter.check1186, %vec.epilog.iter.check1188, %vec.epilog.middle.block1195
  %indvars.iv1031.i.i.ph = phi i64 [ %indvars.iv1029.i.i, %iter.check1186 ], [ %i.asb, %vec.epilog.iter.check1188 ], [ %i.asi, %vec.epilog.middle.block1195 ] ; 4 uses
  %i.asm = sub i64 %i.b, %indvars.iv1031.i.i.ph
  %xtraiter2099 = and i64 %i.asm, 7               ; 2 uses
  %lcmp.mod2100.not = icmp eq i64 %xtraiter2099, 0
  br i1 %lcmp.mod2100.not, label %.lr.ph843.i.i.prol.loopexit, label %.lr.ph843.i.i.prol

.lr.ph843.i.i.prol:                               ; preds = %.lr.ph843.i.i.preheader, %.lr.ph843.i.i.prol
  %indvars.iv1031.i.i.prol = phi i64 [ %indvars.iv.next1032.i.i.prol, %.lr.ph843.i.i.prol ], [ %indvars.iv1031.i.i.ph, %.lr.ph843.i.i.preheader ] ; 2 uses
  %prol.iter2101 = phi i64 [ %prol.iter2101.next, %.lr.ph843.i.i.prol ], [ 0, %.lr.ph843.i.i.preheader ]
  %i.asn = mul nsw i64 %indvars.iv1031.i.i.prol, %i.ih
  %gep1209.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.asn
  store double 0.000000e+00, ptr %gep1209.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.prol = add nsw i64 %indvars.iv1031.i.i.prol, 1 ; 2 uses
  %prol.iter2101.next = add i64 %prol.iter2101, 1 ; 2 uses
  %prol.iter2101.cmp.not = icmp eq i64 %prol.iter2101.next, %xtraiter2099
  br i1 %prol.iter2101.cmp.not, label %.lr.ph843.i.i.prol.loopexit, label %.lr.ph843.i.i.prol, !llvm.loop !91

.lr.ph843.i.i.prol.loopexit:                      ; preds = %.lr.ph843.i.i.prol, %.lr.ph843.i.i.preheader
  %indvars.iv1031.i.i.unr = phi i64 [ %indvars.iv1031.i.i.ph, %.lr.ph843.i.i.preheader ], [ %indvars.iv.next1032.i.i.prol, %.lr.ph843.i.i.prol ]
  %i.aso = sub i64 %indvars.iv1031.i.i.ph, %i.b
  %i.asp = icmp ugt i64 %i.aso, -8
  br i1 %i.asp, label %.loopexit735.i.i, label %.lr.ph843.i.i

bb.s:                                             ; preds = %.loopexit741.i.i
  %i.asq = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aro ; 12 uses
  %.not696.i.i = icmp ne i64 %indvars.iv1029.i.i, %i.pb
  %or.cond906.i.i = and i1 %i.arp, %.not696.i.i
  br i1 %or.cond906.i.i, label %.preheader734.lr.ph.i.i, label %.loopexit737.i.i

.preheader734.lr.ph.i.i:                          ; preds = %bb.s
  %i.asr = trunc nuw nsw i64 %indvars.iv1029.i.i to i32
  %i.ass = mul i32 %.0661700.i.i, %i.asr
  %i.ast = sext i32 %i.ass to i64
  %i.asu = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ast
  %invariant.gep1210.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1029.i.i ; 18 uses
  %min.iters.check1127.a = icmp ugt i32 %i.arb, 2
  %or.cond1938.a = and i1 %min.iters.check1127.a, %ident.check1125.not
  %min.iters.check1129 = icmp ult i32 %i.arb, 15
  %i.asv = and i64 %i.ard, 12
  %n.vec1131 = and i64 %i.ard, 8589934576         ; 4 uses
  %i.asw = add i64 %indvars.iv1029.in.i.i, %n.vec1131
  %cmp.n1151 = icmp eq i64 %i.ard, %n.vec1131
  %min.epilog.iters.check1158 = icmp eq i64 %i.asv, 0
  %n.vec1160 = and i64 %i.ard, 8589934588         ; 3 uses
  %i.asx = add i64 %indvars.iv1029.in.i.i, %n.vec1160
  %cmp.n1168 = icmp eq i64 %i.ard, %n.vec1160
  %min.iters.check1082.a = icmp ugt i64 %i.are, 3
  %or.cond1939 = and i1 %min.iters.check1082.a, %ident.check1067.not
  %bound01078 = icmp ult ptr %scevgep1069, %scevgep1077
  %bound11079 = icmp ult ptr %scevgep1076, %scevgep1075.a
  %found.conflict1080 = and i1 %bound01078, %bound11079
  %min.iters.check1084 = icmp ult i64 %i.are, 16
  %i.asy = and i64 %i.are, 12
  %n.vec1086 = and i64 %i.are, -16                ; 4 uses
  %i.asz = add i64 %indvars.iv1029.i.i, %n.vec1086
  %cmp.n1103 = icmp eq i64 %i.are, %n.vec1086
  %min.epilog.iters.check1109 = icmp eq i64 %i.asy, 0
  %n.vec1111 = and i64 %i.are, -4                 ; 3 uses
  %i.ata = add i64 %indvars.iv1029.i.i, %n.vec1111
  %cmp.n1122 = icmp eq i64 %i.are, %n.vec1111
  br label %iter.check1155

iter.check1155:                                   ; preds = %._crit_edge852.i.loopexit.i, %.preheader734.lr.ph.i.i
  %indvars.iv1045.i.i = phi i64 [ %indvars.iv1029.in.i.i, %.preheader734.lr.ph.i.i ], [ %indvars.iv.next1046.i.i, %._crit_edge852.i.loopexit.i ] ; 2 uses
  %invariant.gep1212.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1045.i.i ; 18 uses
  br i1 %or.cond1938.a, label %vector.main.loop.iter.check1128, label %.lr.ph846.i.i.preheader

vector.main.loop.iter.check1128:                  ; preds = %iter.check1155
  br i1 %min.iters.check1129, label %vec.epilog.ph1159, label %vector.body1132

vector.body1132:                                  ; preds = %vector.main.loop.iter.check1128, %vector.body1132
  %index1133 = phi i64 [ %index.next1146, %vector.body1132 ], [ 0, %vector.main.loop.iter.check1128 ] ; 2 uses
  %vec.phi1134.a = phi <4 x double> [ %i.ato, %vector.body1132 ], [ zeroinitializer, %vector.main.loop.iter.check1128 ]
  %vec.phi1135.a = phi <4 x double> [ %i.atp, %vector.body1132 ], [ zeroinitializer, %vector.main.loop.iter.check1128 ]
  %vec.phi1136 = phi <4 x double> [ %i.atq, %vector.body1132 ], [ zeroinitializer, %vector.main.loop.iter.check1128 ]
  %vec.phi1137 = phi <4 x double> [ %i.atr, %vector.body1132 ], [ zeroinitializer, %vector.main.loop.iter.check1128 ]
  %i.atb = add i64 %indvars.iv1029.in.i.i, %index1133 ; 2 uses
  %i.atc = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.atb ; 4 uses
  %i.atd = getelementptr i8, ptr %i.atc, i64 32
  %i.ate = getelementptr i8, ptr %i.atc, i64 64
  %i.atf = getelementptr i8, ptr %i.atc, i64 96
  %wide.load1138.a = load <4 x double>, ptr %i.atc, align 8, !tbaa !12
  %wide.load1139.a = load <4 x double>, ptr %i.atd, align 8, !tbaa !12
  %wide.load1140.a = load <4 x double>, ptr %i.ate, align 8, !tbaa !12
  %wide.load1141.a = load <4 x double>, ptr %i.atf, align 8, !tbaa !12
  %i.atg = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.atb ; 4 uses
  %i.ath = getelementptr i8, ptr %i.atg, i64 32
  %i.ati = getelementptr i8, ptr %i.atg, i64 64
  %i.atj = getelementptr i8, ptr %i.atg, i64 96
  %wide.load1142.a = load <4 x double>, ptr %i.atg, align 8, !tbaa !12
  %wide.load1143.a = load <4 x double>, ptr %i.ath, align 8, !tbaa !12
  %wide.load1144 = load <4 x double>, ptr %i.ati, align 8, !tbaa !12
  %wide.load1145 = load <4 x double>, ptr %i.atj, align 8, !tbaa !12
  %i.atk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1142.a, %wide.load1138.a
  %i.atl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1143.a, %wide.load1139.a
  %i.atm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1144, %wide.load1140.a
  %i.atn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1145, %wide.load1141.a
  %i.ato = fadd reassoc nsz arcp contract afn <4 x double> %i.atk, %vec.phi1134.a ; 2 uses
  %i.atp = fadd reassoc nsz arcp contract afn <4 x double> %i.atl, %vec.phi1135.a ; 2 uses
  %i.atq = fadd reassoc nsz arcp contract afn <4 x double> %i.atm, %vec.phi1136 ; 2 uses
  %i.atr = fadd reassoc nsz arcp contract afn <4 x double> %i.atn, %vec.phi1137 ; 2 uses
  %index.next1146 = add nuw i64 %index1133, 16    ; 2 uses
  %i.ats = icmp eq i64 %index.next1146, %n.vec1131
  br i1 %i.ats, label %middle.block1147, label %vector.body1132, !llvm.loop !92

middle.block1147:                                 ; preds = %vector.body1132
  %bin.rdx1148.a = fadd reassoc nsz arcp contract afn <4 x double> %i.atp, %i.ato
  %bin.rdx1149 = fadd reassoc nsz arcp contract afn <4 x double> %i.atq, %bin.rdx1148.a
  %bin.rdx1150 = fadd reassoc nsz arcp contract afn <4 x double> %i.atr, %bin.rdx1149
  %i.att = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1150) ; 3 uses
  br i1 %cmp.n1151, label %iter.check1106, label %vec.epilog.iter.check1157

vec.epilog.iter.check1157:                        ; preds = %middle.block1147
  br i1 %min.epilog.iters.check1158, label %.lr.ph846.i.i.preheader, label %vec.epilog.ph1159, !prof !22

vec.epilog.ph1159:                                ; preds = %vector.main.loop.iter.check1128, %vec.epilog.iter.check1157
  %vec.epilog.resume.val1152 = phi i64 [ %n.vec1131, %vec.epilog.iter.check1157 ], [ 0, %vector.main.loop.iter.check1128 ]
  %bc.merge.rdx1154 = phi double [ %i.att, %vec.epilog.iter.check1157 ], [ 0.000000e+00, %vector.main.loop.iter.check1128 ]
  %i.atu = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1154, i64 0
  br label %vec.epilog.vector.body1161

vec.epilog.vector.body1161:                       ; preds = %vec.epilog.vector.body1161, %vec.epilog.ph1159
  %index1162 = phi i64 [ %vec.epilog.resume.val1152, %vec.epilog.ph1159 ], [ %index.next1166, %vec.epilog.vector.body1161 ] ; 2 uses
  %vec.phi1163 = phi <4 x double> [ %i.atu, %vec.epilog.ph1159 ], [ %i.atz, %vec.epilog.vector.body1161 ]
  %i.atv = add i64 %indvars.iv1029.in.i.i, %index1162 ; 2 uses
  %i.atw = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.atv
  %wide.load1164 = load <4 x double>, ptr %i.atw, align 8, !tbaa !12
  %i.atx = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.atv
  %wide.load1165 = load <4 x double>, ptr %i.atx, align 8, !tbaa !12
  %i.aty = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1165, %wide.load1164
  %i.atz = fadd reassoc nsz arcp contract afn <4 x double> %i.aty, %vec.phi1163 ; 2 uses
  %index.next1166 = add nuw i64 %index1162, 4     ; 2 uses
  %i.aua = icmp eq i64 %index.next1166, %n.vec1160
  br i1 %i.aua, label %vec.epilog.middle.block1167, label %vec.epilog.vector.body1161, !llvm.loop !93

vec.epilog.middle.block1167:                      ; preds = %vec.epilog.vector.body1161
  %i.aub = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.atz) ; 2 uses
  br i1 %cmp.n1168, label %iter.check1106, label %.lr.ph846.i.i.preheader

.lr.ph846.i.i.preheader:                          ; preds = %iter.check1155, %vec.epilog.iter.check1157, %vec.epilog.middle.block1167
  %indvars.iv1036.i.i.ph = phi i64 [ %indvars.iv1029.in.i.i, %iter.check1155 ], [ %i.asw, %vec.epilog.iter.check1157 ], [ %i.asx, %vec.epilog.middle.block1167 ] ; 3 uses
  %.5844.i.i.ph = phi double [ 0.000000e+00, %iter.check1155 ], [ %i.att, %vec.epilog.iter.check1157 ], [ %i.aub, %vec.epilog.middle.block1167 ] ; 2 uses
  %i.auc = trunc i64 %indvars.iv1036.i.i.ph to i32 ; 2 uses
  %i.aud = sub i32 %i.jf, %i.auc
  %i.aue = sub i32 %i.jg, %i.auc
  %xtraiter2102 = and i32 %i.aud, 7               ; 2 uses
  %lcmp.mod2103.not = icmp eq i32 %xtraiter2102, 0
  br i1 %lcmp.mod2103.not, label %.lr.ph846.i.i.prol.loopexit, label %.lr.ph846.i.i.prol

.lr.ph846.i.i.prol:                               ; preds = %.lr.ph846.i.i.preheader, %.lr.ph846.i.i.prol
  %indvars.iv1036.i.i.prol = phi i64 [ %indvars.iv.next1037.i.i.prol, %.lr.ph846.i.i.prol ], [ %indvars.iv1036.i.i.ph, %.lr.ph846.i.i.preheader ] ; 2 uses
  %.5844.i.i.prol = phi double [ %i.auj, %.lr.ph846.i.i.prol ], [ %.5844.i.i.ph, %.lr.ph846.i.i.preheader ]
  %prol.iter2104 = phi i32 [ %prol.iter2104.next, %.lr.ph846.i.i.prol ], [ 0, %.lr.ph846.i.i.preheader ]
  %i.auf = mul nsw i64 %indvars.iv1036.i.i.prol, %i.ih ; 2 uses
  %gep1211.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.auf
  %i.aug = load double, ptr %gep1211.i.i.prol, align 8, !tbaa !12
  %gep1213.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.auf
  %i.auh = load double, ptr %gep1213.i.i.prol, align 8, !tbaa !12
  %i.aui = fmul reassoc nsz arcp contract afn double %i.auh, %i.aug
  %i.auj = fadd reassoc nsz arcp contract afn double %i.aui, %.5844.i.i.prol ; 3 uses
  %indvars.iv.next1037.i.i.prol = add nsw i64 %indvars.iv1036.i.i.prol, 1 ; 2 uses
  %prol.iter2104.next = add i32 %prol.iter2104, 1 ; 2 uses
  %prol.iter2104.cmp.not = icmp eq i32 %prol.iter2104.next, %xtraiter2102
  br i1 %prol.iter2104.cmp.not, label %.lr.ph846.i.i.prol.loopexit, label %.lr.ph846.i.i.prol, !llvm.loop !94

.lr.ph846.i.i.prol.loopexit:                      ; preds = %.lr.ph846.i.i.prol, %.lr.ph846.i.i.preheader
  %.lcssa2003.unr = phi double [ poison, %.lr.ph846.i.i.preheader ], [ %i.auj, %.lr.ph846.i.i.prol ]
  %indvars.iv1036.i.i.unr = phi i64 [ %indvars.iv1036.i.i.ph, %.lr.ph846.i.i.preheader ], [ %indvars.iv.next1037.i.i.prol, %.lr.ph846.i.i.prol ]
  %.5844.i.i.unr = phi double [ %.5844.i.i.ph, %.lr.ph846.i.i.preheader ], [ %i.auj, %.lr.ph846.i.i.prol ]
  %i.auk = icmp ult i32 %i.aue, 7
  br i1 %i.auk, label %iter.check1106, label %.lr.ph846.i.i

iter.check1106:                                   ; preds = %.lr.ph846.i.i.prol.loopexit, %.lr.ph846.i.i, %vec.epilog.middle.block1167, %middle.block1147
  %.lcssa786 = phi double [ %i.aub, %vec.epilog.middle.block1167 ], [ %i.att, %middle.block1147 ], [ %.lcssa2003.unr, %.lr.ph846.i.i.prol.loopexit ], [ %i.axw, %.lr.ph846.i.i ]
  %i.aul = load double, ptr %i.asu, align 8, !tbaa !12 ; 7 uses
  %i.aum = fmul reassoc nsz arcp contract afn double %.lcssa786, %i.asq ; 7 uses
  %or.cond1939.not.a = xor i1 %or.cond1939, true
  %brmerge2250 = select i1 %or.cond1939.not.a, i1 true, i1 %found.conflict1080
  br i1 %brmerge2250, label %vec.epilog.scalar.ph1107.preheader, label %vector.main.loop.iter.check1083

vector.main.loop.iter.check1083:                  ; preds = %iter.check1106
  br i1 %min.iters.check1084, label %vec.epilog.ph1110, label %vector.ph1085

vector.ph1085:                                    ; preds = %vector.main.loop.iter.check1083
  %broadcast.splatinsert1087.a = insertelement <4 x double> poison, double %i.aul, i64 0
  %broadcast.splat1088.a = shufflevector <4 x double> %broadcast.splatinsert1087.a, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1089 = insertelement <4 x double> poison, double %i.aum, i64 0
  %broadcast.splat1090 = shufflevector <4 x double> %broadcast.splatinsert1089, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aun = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1088.a
  %i.auo = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1088.a
  %i.aup = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1088.a
  %i.auq = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1088.a
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %vector.ph1085
  %index1092 = phi i64 [ 0, %vector.ph1085 ], [ %index.next1101, %vector.body1091 ] ; 2 uses
  %i.aur = add i64 %indvars.iv1029.i.i, %index1092 ; 2 uses
  %i.aus = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.aur ; 4 uses
  %i.aut = getelementptr i8, ptr %i.aus, i64 32
  %i.auu = getelementptr i8, ptr %i.aus, i64 64
  %i.auv = getelementptr i8, ptr %i.aus, i64 96
  %wide.load1093.a = load <4 x double>, ptr %i.aus, align 8, !tbaa !12, !alias.scope !95
  %wide.load1094.a = load <4 x double>, ptr %i.aut, align 8, !tbaa !12, !alias.scope !95
  %wide.load1095.a = load <4 x double>, ptr %i.auu, align 8, !tbaa !12, !alias.scope !95
  %wide.load1096.a = load <4 x double>, ptr %i.auv, align 8, !tbaa !12, !alias.scope !95
  %i.auw = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1090, %wide.load1093.a
  %i.aux = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1090, %wide.load1094.a
  %i.auy = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1090, %wide.load1095.a
  %i.auz = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1090, %wide.load1096.a
  %i.ava = fmul reassoc nsz arcp contract afn <4 x double> %i.auw, %i.aun
  %i.avb = fmul reassoc nsz arcp contract afn <4 x double> %i.aux, %i.auo
  %i.avc = fmul reassoc nsz arcp contract afn <4 x double> %i.auy, %i.aup
  %i.avd = fmul reassoc nsz arcp contract afn <4 x double> %i.auz, %i.auq
  %i.ave = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.aur ; 5 uses
  %i.avf = getelementptr i8, ptr %i.ave, i64 32   ; 2 uses
  %i.avg = getelementptr i8, ptr %i.ave, i64 64   ; 2 uses
  %i.avh = getelementptr i8, ptr %i.ave, i64 96   ; 2 uses
  %wide.load1097.a = load <4 x double>, ptr %i.ave, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %wide.load1098.a = load <4 x double>, ptr %i.avf, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %wide.load1099 = load <4 x double>, ptr %i.avg, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %wide.load1100 = load <4 x double>, ptr %i.avh, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %i.avi = fadd reassoc nsz arcp contract afn <4 x double> %i.ava, %wide.load1097.a
  %i.avj = fadd reassoc nsz arcp contract afn <4 x double> %i.avb, %wide.load1098.a
  %i.avk = fadd reassoc nsz arcp contract afn <4 x double> %i.avc, %wide.load1099
  %i.avl = fadd reassoc nsz arcp contract afn <4 x double> %i.avd, %wide.load1100
  store <4 x double> %i.avi, ptr %i.ave, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  store <4 x double> %i.avj, ptr %i.avf, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  store <4 x double> %i.avk, ptr %i.avg, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  store <4 x double> %i.avl, ptr %i.avh, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %index.next1101 = add nuw i64 %index1092, 16    ; 2 uses
  %i.avm = icmp eq i64 %index.next1101, %n.vec1086
  br i1 %i.avm, label %middle.block1102, label %vector.body1091, !llvm.loop !100

middle.block1102:                                 ; preds = %vector.body1091
  br i1 %cmp.n1103, label %._crit_edge852.i.loopexit.i, label %vec.epilog.iter.check1108

vec.epilog.iter.check1108:                        ; preds = %middle.block1102
  br i1 %min.epilog.iters.check1109, label %vec.epilog.scalar.ph1107.preheader, label %vec.epilog.ph1110, !prof !22

vec.epilog.ph1110:                                ; preds = %vector.main.loop.iter.check1083, %vec.epilog.iter.check1108
  %vec.epilog.resume.val1104 = phi i64 [ %n.vec1086, %vec.epilog.iter.check1108 ], [ 0, %vector.main.loop.iter.check1083 ]
  %broadcast.splatinsert1112.a = insertelement <4 x double> poison, double %i.aul, i64 0
  %broadcast.splat1113.a = shufflevector <4 x double> %broadcast.splatinsert1112.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1114 = insertelement <4 x double> poison, double %i.aum, i64 0
  %broadcast.splat1115 = shufflevector <4 x double> %broadcast.splatinsert1114, <4 x double> poison, <4 x i32> zeroinitializer
  %i.avn = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1113.a
  br label %vec.epilog.vector.body1116

vec.epilog.vector.body1116:                       ; preds = %vec.epilog.vector.body1116, %vec.epilog.ph1110
  %index1117 = phi i64 [ %vec.epilog.resume.val1104, %vec.epilog.ph1110 ], [ %index.next1120, %vec.epilog.vector.body1116 ] ; 2 uses
  %i.avo = add i64 %indvars.iv1029.i.i, %index1117 ; 2 uses
  %i.avp = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.avo
  %wide.load1118 = load <4 x double>, ptr %i.avp, align 8, !tbaa !12, !alias.scope !95
  %i.avq = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1115, %wide.load1118
  %i.avr = fmul reassoc nsz arcp contract afn <4 x double> %i.avq, %i.avn
  %i.avs = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.avo ; 2 uses
  %wide.load1119 = load <4 x double>, ptr %i.avs, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %i.avt = fadd reassoc nsz arcp contract afn <4 x double> %i.avr, %wide.load1119
  store <4 x double> %i.avt, ptr %i.avs, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %index.next1120 = add nuw i64 %index1117, 4     ; 2 uses
  %i.avu = icmp eq i64 %index.next1120, %n.vec1111
  br i1 %i.avu, label %vec.epilog.middle.block1121, label %vec.epilog.vector.body1116, !llvm.loop !101

vec.epilog.middle.block1121:                      ; preds = %vec.epilog.vector.body1116
  br i1 %cmp.n1122, label %._crit_edge852.i.loopexit.i, label %vec.epilog.scalar.ph1107.preheader

vec.epilog.scalar.ph1107.preheader:               ; preds = %iter.check1106, %vec.epilog.iter.check1108, %vec.epilog.middle.block1121
  %indvars.iv1040.i.i.ph = phi i64 [ %indvars.iv1029.i.i, %iter.check1106 ], [ %i.ata, %vec.epilog.middle.block1121 ], [ %i.asz, %vec.epilog.iter.check1108 ] ; 4 uses
  %i.avv = sub i64 %i.b, %indvars.iv1040.i.i.ph
  %xtraiter2105 = and i64 %i.avv, 3               ; 2 uses
  %lcmp.mod2106.not = icmp eq i64 %xtraiter2105, 0
  br i1 %lcmp.mod2106.not, label %vec.epilog.scalar.ph1107.prol.loopexit, label %vec.epilog.scalar.ph1107.prol.preheader

vec.epilog.scalar.ph1107.prol.preheader:          ; preds = %vec.epilog.scalar.ph1107.preheader
  %i.avw = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aul
  br label %vec.epilog.scalar.ph1107.prol

vec.epilog.scalar.ph1107.prol:                    ; preds = %vec.epilog.scalar.ph1107.prol, %vec.epilog.scalar.ph1107.prol.preheader
  %indvars.iv1040.i.i.prol = phi i64 [ %indvars.iv.next1041.i.i.prol, %vec.epilog.scalar.ph1107.prol ], [ %indvars.iv1040.i.i.ph, %vec.epilog.scalar.ph1107.prol.preheader ] ; 2 uses
  %prol.iter2107 = phi i64 [ %prol.iter2107.next, %vec.epilog.scalar.ph1107.prol ], [ 0, %vec.epilog.scalar.ph1107.prol.preheader ]
  %i.avx = mul nsw i64 %indvars.iv1040.i.i.prol, %i.ih ; 2 uses
  %gep1215.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.avx
  %i.avy = load double, ptr %gep1215.i.i.prol, align 8, !tbaa !12
  %i.avz = fmul reassoc nsz arcp contract afn double %i.aum, %i.avy
  %i.awa = fmul reassoc nsz arcp contract afn double %i.avz, %i.avw
  %gep1217.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.avx ; 2 uses
  %i.awb = load double, ptr %gep1217.i.i.prol, align 8, !tbaa !12
  %i.awc = fadd reassoc nsz arcp contract afn double %i.awa, %i.awb
  store double %i.awc, ptr %gep1217.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1041.i.i.prol = add nsw i64 %indvars.iv1040.i.i.prol, 1 ; 2 uses
  %prol.iter2107.next = add i64 %prol.iter2107, 1 ; 2 uses
  %prol.iter2107.cmp.not = icmp eq i64 %prol.iter2107.next, %xtraiter2105
  br i1 %prol.iter2107.cmp.not, label %vec.epilog.scalar.ph1107.prol.loopexit, label %vec.epilog.scalar.ph1107.prol, !llvm.loop !102

vec.epilog.scalar.ph1107.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1107.prol, %vec.epilog.scalar.ph1107.preheader
  %indvars.iv1040.i.i.unr = phi i64 [ %indvars.iv1040.i.i.ph, %vec.epilog.scalar.ph1107.preheader ], [ %indvars.iv.next1041.i.i.prol, %vec.epilog.scalar.ph1107.prol ]
  %i.awd = sub i64 %indvars.iv1040.i.i.ph, %i.b
  %i.awe = icmp ugt i64 %i.awd, -4
  br i1 %i.awe, label %._crit_edge852.i.loopexit.i, label %vec.epilog.scalar.ph1107.preheader.new

vec.epilog.scalar.ph1107.preheader.new:           ; preds = %vec.epilog.scalar.ph1107.prol.loopexit
  %i.awf = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aul
  %i.awg = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aul
  %i.awh = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aul
  %i.awi = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aul
  br label %vec.epilog.scalar.ph1107

.lr.ph846.i.i:                                    ; preds = %.lr.ph846.i.i.prol.loopexit, %.lr.ph846.i.i
  %indvars.iv1036.i.i = phi i64 [ %indvars.iv.next1037.i.i.7, %.lr.ph846.i.i ], [ %indvars.iv1036.i.i.unr, %.lr.ph846.i.i.prol.loopexit ] ; 9 uses
  %.5844.i.i = phi double [ %i.axw, %.lr.ph846.i.i ], [ %.5844.i.i.unr, %.lr.ph846.i.i.prol.loopexit ]
  %i.awj = mul nsw i64 %indvars.iv1036.i.i, %i.ih ; 2 uses
  %gep1211.i.i = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.awj
  %i.awk = load double, ptr %gep1211.i.i, align 8, !tbaa !12
  %gep1213.i.i = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.awj
  %i.awl = load double, ptr %gep1213.i.i, align 8, !tbaa !12
  %i.awm = fmul reassoc nsz arcp contract afn double %i.awl, %i.awk
  %i.awn = fadd reassoc nsz arcp contract afn double %i.awm, %.5844.i.i
  %indvars.iv.next1037.i.i = add nsw i64 %indvars.iv1036.i.i, 1
  %i.awo = mul nsw i64 %indvars.iv.next1037.i.i, %i.ih ; 2 uses
  %gep1211.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.awo
  %i.awp = load double, ptr %gep1211.i.i.1, align 8, !tbaa !12
  %gep1213.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.awo
  %i.awq = load double, ptr %gep1213.i.i.1, align 8, !tbaa !12
  %i.awr = fmul reassoc nsz arcp contract afn double %i.awq, %i.awp
  %i.aws = fadd reassoc nsz arcp contract afn double %i.awr, %i.awn
  %indvars.iv.next1037.i.i.1 = add nsw i64 %indvars.iv1036.i.i, 2
  %i.awt = mul nsw i64 %indvars.iv.next1037.i.i.1, %i.ih ; 2 uses
  %gep1211.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.awt
  %i.awu = load double, ptr %gep1211.i.i.2, align 8, !tbaa !12
  %gep1213.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.awt
  %i.awv = load double, ptr %gep1213.i.i.2, align 8, !tbaa !12
  %i.aww = fmul reassoc nsz arcp contract afn double %i.awv, %i.awu
  %i.awx = fadd reassoc nsz arcp contract afn double %i.aww, %i.aws
  %indvars.iv.next1037.i.i.2 = add nsw i64 %indvars.iv1036.i.i, 3
  %i.awy = mul nsw i64 %indvars.iv.next1037.i.i.2, %i.ih ; 2 uses
  %gep1211.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.awy
  %i.awz = load double, ptr %gep1211.i.i.3, align 8, !tbaa !12
  %gep1213.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.awy
  %i.axa = load double, ptr %gep1213.i.i.3, align 8, !tbaa !12
  %i.axb = fmul reassoc nsz arcp contract afn double %i.axa, %i.awz
  %i.axc = fadd reassoc nsz arcp contract afn double %i.axb, %i.awx
  %indvars.iv.next1037.i.i.3 = add nsw i64 %indvars.iv1036.i.i, 4
  %i.axd = mul nsw i64 %indvars.iv.next1037.i.i.3, %i.ih ; 2 uses
  %gep1211.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.axd
  %i.axe = load double, ptr %gep1211.i.i.4, align 8, !tbaa !12
  %gep1213.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.axd
  %i.axf = load double, ptr %gep1213.i.i.4, align 8, !tbaa !12
  %i.axg = fmul reassoc nsz arcp contract afn double %i.axf, %i.axe
  %i.axh = fadd reassoc nsz arcp contract afn double %i.axg, %i.axc
  %indvars.iv.next1037.i.i.4 = add nsw i64 %indvars.iv1036.i.i, 5
  %i.axi = mul nsw i64 %indvars.iv.next1037.i.i.4, %i.ih ; 2 uses
  %gep1211.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.axi
  %i.axj = load double, ptr %gep1211.i.i.5, align 8, !tbaa !12
  %gep1213.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.axi
  %i.axk = load double, ptr %gep1213.i.i.5, align 8, !tbaa !12
  %i.axl = fmul reassoc nsz arcp contract afn double %i.axk, %i.axj
  %i.axm = fadd reassoc nsz arcp contract afn double %i.axl, %i.axh
  %indvars.iv.next1037.i.i.5 = add nsw i64 %indvars.iv1036.i.i, 6
  %i.axn = mul nsw i64 %indvars.iv.next1037.i.i.5, %i.ih ; 2 uses
  %gep1211.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.axn
  %i.axo = load double, ptr %gep1211.i.i.6, align 8, !tbaa !12
  %gep1213.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.axn
  %i.axp = load double, ptr %gep1213.i.i.6, align 8, !tbaa !12
  %i.axq = fmul reassoc nsz arcp contract afn double %i.axp, %i.axo
  %i.axr = fadd reassoc nsz arcp contract afn double %i.axq, %i.axm
  %indvars.iv.next1037.i.i.6 = add nsw i64 %indvars.iv1036.i.i, 7
  %i.axs = mul nsw i64 %indvars.iv.next1037.i.i.6, %i.ih ; 2 uses
  %gep1211.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.axs
  %i.axt = load double, ptr %gep1211.i.i.7, align 8, !tbaa !12
  %gep1213.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.axs
  %i.axu = load double, ptr %gep1213.i.i.7, align 8, !tbaa !12
  %i.axv = fmul reassoc nsz arcp contract afn double %i.axu, %i.axt
  %i.axw = fadd reassoc nsz arcp contract afn double %i.axv, %i.axr ; 2 uses
  %indvars.iv.next1037.i.i.7 = add nsw i64 %indvars.iv1036.i.i, 8 ; 2 uses
  %lftr.wideiv.i.i.7 = trunc i64 %indvars.iv.next1037.i.i.7 to i32
  %exitcond1039.not.i.i.7 = icmp eq i32 %i.a, %lftr.wideiv.i.i.7
  br i1 %exitcond1039.not.i.i.7, label %iter.check1106, label %.lr.ph846.i.i, !llvm.loop !103

._crit_edge852.i.loopexit.i:                      ; preds = %vec.epilog.scalar.ph1107.prol.loopexit, %vec.epilog.scalar.ph1107, %vec.epilog.middle.block1121, %middle.block1102
  %indvars.iv.next1046.i.i = add nuw nsw i64 %indvars.iv1045.i.i, 1 ; 2 uses
  %lftr.wideiv1048.i.i = trunc i64 %indvars.iv.next1046.i.i to i32
  %exitcond1049.not.i.i = icmp eq i32 %i.ox, %lftr.wideiv1048.i.i
  br i1 %exitcond1049.not.i.i, label %.loopexit737.i.i, label %iter.check1155

vec.epilog.scalar.ph1107:                         ; preds = %vec.epilog.scalar.ph1107, %vec.epilog.scalar.ph1107.preheader.new
  %indvars.iv1040.i.i = phi i64 [ %indvars.iv1040.i.i.unr, %vec.epilog.scalar.ph1107.preheader.new ], [ %indvars.iv.next1041.i.i.3, %vec.epilog.scalar.ph1107 ] ; 5 uses
  %i.axx = mul nsw i64 %indvars.iv1040.i.i, %i.ih ; 2 uses
  %gep1215.i.i = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.axx
  %i.axy = load double, ptr %gep1215.i.i, align 8, !tbaa !12
  %i.axz = fmul reassoc nsz arcp contract afn double %i.aum, %i.axy
  %i.aya = fmul reassoc nsz arcp contract afn double %i.axz, %i.awf
  %gep1217.i.i = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.axx ; 2 uses
  %i.ayb = load double, ptr %gep1217.i.i, align 8, !tbaa !12
  %i.ayc = fadd reassoc nsz arcp contract afn double %i.aya, %i.ayb
  store double %i.ayc, ptr %gep1217.i.i, align 8, !tbaa !12
  %indvars.iv.next1041.i.i = add nsw i64 %indvars.iv1040.i.i, 1
  %i.ayd = mul nsw i64 %indvars.iv.next1041.i.i, %i.ih ; 2 uses
  %gep1215.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.ayd
  %i.aye = load double, ptr %gep1215.i.i.1, align 8, !tbaa !12
  %i.ayf = fmul reassoc nsz arcp contract afn double %i.aum, %i.aye
  %i.ayg = fmul reassoc nsz arcp contract afn double %i.ayf, %i.awg
  %gep1217.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.ayd ; 2 uses
  %i.ayh = load double, ptr %gep1217.i.i.1, align 8, !tbaa !12
  %i.ayi = fadd reassoc nsz arcp contract afn double %i.ayg, %i.ayh
  store double %i.ayi, ptr %gep1217.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1041.i.i.1 = add nsw i64 %indvars.iv1040.i.i, 2
  %i.ayj = mul nsw i64 %indvars.iv.next1041.i.i.1, %i.ih ; 2 uses
  %gep1215.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.ayj
  %i.ayk = load double, ptr %gep1215.i.i.2, align 8, !tbaa !12
  %i.ayl = fmul reassoc nsz arcp contract afn double %i.aum, %i.ayk
  %i.aym = fmul reassoc nsz arcp contract afn double %i.ayl, %i.awh
  %gep1217.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.ayj ; 2 uses
  %i.ayn = load double, ptr %gep1217.i.i.2, align 8, !tbaa !12
  %i.ayo = fadd reassoc nsz arcp contract afn double %i.aym, %i.ayn
  store double %i.ayo, ptr %gep1217.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1041.i.i.2 = add nsw i64 %indvars.iv1040.i.i, 3
  %i.ayp = mul nsw i64 %indvars.iv.next1041.i.i.2, %i.ih ; 2 uses
  %gep1215.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.ayp
  %i.ayq = load double, ptr %gep1215.i.i.3, align 8, !tbaa !12
  %i.ayr = fmul reassoc nsz arcp contract afn double %i.aum, %i.ayq
  %i.ays = fmul reassoc nsz arcp contract afn double %i.ayr, %i.awi
  %gep1217.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.ayp ; 2 uses
  %i.ayt = load double, ptr %gep1217.i.i.3, align 8, !tbaa !12
  %i.ayu = fadd reassoc nsz arcp contract afn double %i.ays, %i.ayt
  store double %i.ayu, ptr %gep1217.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1041.i.i.3 = add nsw i64 %indvars.iv1040.i.i, 4 ; 2 uses
  %exitcond1044.not.i.i.3 = icmp eq i64 %indvars.iv.next1041.i.i.3, %i.b
  br i1 %exitcond1044.not.i.i.3, label %._crit_edge852.i.loopexit.i, label %vec.epilog.scalar.ph1107, !llvm.loop !104

.loopexit737.i.i:                                 ; preds = %._crit_edge852.i.loopexit.i, %bb.s
  %.not1127.i.i = icmp sgt i64 %indvars.iv1029.in.i.i, %i.b
  br i1 %.not1127.i.i, label %.loopexit735.i.i, label %iter.check1051

iter.check1051:                                   ; preds = %.loopexit737.i.i
  %invariant.gep1218.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1029.i.i ; 11 uses
  %min.iters.check1033.a = icmp ugt i64 %i.arm, 3
  %or.cond1940 = and i1 %min.iters.check1033.a, %ident.check1031.not
  br i1 %or.cond1940, label %vector.main.loop.iter.check1034, label %.lr.ph858.i.i.preheader

vector.main.loop.iter.check1034:                  ; preds = %iter.check1051
  %min.iters.check1035 = icmp ult i64 %i.arm, 16
  br i1 %min.iters.check1035, label %vec.epilog.ph1055, label %vector.ph1036

vector.ph1036:                                    ; preds = %vector.main.loop.iter.check1034
  %i.ayv = and i64 %i.arm, 12
  %n.vec1037 = and i64 %i.arm, -16                ; 4 uses
  %i.ayw = add i64 %indvars.iv1029.i.i, %n.vec1037
  %broadcast.splatinsert1038 = insertelement <4 x double> poison, double %i.asq, i64 0
  %broadcast.splat1039 = shufflevector <4 x double> %broadcast.splatinsert1038, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ayx = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %indvars.iv1029.i.i
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %vector.ph1036
  %index1041 = phi i64 [ 0, %vector.ph1036 ], [ %index.next1046, %vector.body1040 ] ; 2 uses
  %i.ayy = getelementptr [8 x i8], ptr %i.ayx, i64 %index1041 ; 5 uses
  %i.ayz = getelementptr i8, ptr %i.ayy, i64 32   ; 2 uses
  %i.aza = getelementptr i8, ptr %i.ayy, i64 64   ; 2 uses
  %i.azb = getelementptr i8, ptr %i.ayy, i64 96   ; 2 uses
  %wide.load1042.a = load <4 x double>, ptr %i.ayy, align 8, !tbaa !12
  %wide.load1043.a = load <4 x double>, ptr %i.ayz, align 8, !tbaa !12
  %wide.load1044 = load <4 x double>, ptr %i.aza, align 8, !tbaa !12
  %wide.load1045 = load <4 x double>, ptr %i.azb, align 8, !tbaa !12
  %i.azc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1042.a, %broadcast.splat1039
  %i.azd = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1043.a, %broadcast.splat1039
  %i.aze = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1044, %broadcast.splat1039
  %i.azf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1045, %broadcast.splat1039
  store <4 x double> %i.azc, ptr %i.ayy, align 8, !tbaa !12
  store <4 x double> %i.azd, ptr %i.ayz, align 8, !tbaa !12
  store <4 x double> %i.aze, ptr %i.aza, align 8, !tbaa !12
  store <4 x double> %i.azf, ptr %i.azb, align 8, !tbaa !12
  %index.next1046 = add nuw i64 %index1041, 16    ; 2 uses
  %i.azg = icmp eq i64 %index.next1046, %n.vec1037
  br i1 %i.azg, label %middle.block1047, label %vector.body1040, !llvm.loop !105

middle.block1047:                                 ; preds = %vector.body1040
  %cmp.n1048 = icmp eq i64 %i.arm, %n.vec1037
  br i1 %cmp.n1048, label %.loopexit735.i.i, label %vec.epilog.iter.check1053

vec.epilog.iter.check1053:                        ; preds = %middle.block1047
  %min.epilog.iters.check1054 = icmp eq i64 %i.ayv, 0
  br i1 %min.epilog.iters.check1054, label %.lr.ph858.i.i.preheader, label %vec.epilog.ph1055, !prof !22

vec.epilog.ph1055:                                ; preds = %vector.main.loop.iter.check1034, %vec.epilog.iter.check1053
  %vec.epilog.resume.val1049 = phi i64 [ %n.vec1037, %vec.epilog.iter.check1053 ], [ 0, %vector.main.loop.iter.check1034 ]
  %n.vec1056 = and i64 %i.arm, -4                 ; 3 uses
  %i.azh = add i64 %indvars.iv1029.i.i, %n.vec1056
  %broadcast.splatinsert1057 = insertelement <4 x double> poison, double %i.asq, i64 0
  %broadcast.splat1058 = shufflevector <4 x double> %broadcast.splatinsert1057, <4 x double> poison, <4 x i32> zeroinitializer
  %i.azi = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %indvars.iv1029.i.i
  br label %vec.epilog.vector.body1059

vec.epilog.vector.body1059:                       ; preds = %vec.epilog.vector.body1059, %vec.epilog.ph1055
  %index1060 = phi i64 [ %vec.epilog.resume.val1049, %vec.epilog.ph1055 ], [ %index.next1062, %vec.epilog.vector.body1059 ] ; 2 uses
  %i.azj = getelementptr [8 x i8], ptr %i.azi, i64 %index1060 ; 2 uses
  %wide.load1061 = load <4 x double>, ptr %i.azj, align 8, !tbaa !12
  %i.azk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1061, %broadcast.splat1058
  store <4 x double> %i.azk, ptr %i.azj, align 8, !tbaa !12
  %index.next1062 = add nuw i64 %index1060, 4     ; 2 uses
  %i.azl = icmp eq i64 %index.next1062, %n.vec1056
  br i1 %i.azl, label %vec.epilog.middle.block1063, label %vec.epilog.vector.body1059, !llvm.loop !106

vec.epilog.middle.block1063:                      ; preds = %vec.epilog.vector.body1059
  %cmp.n1064 = icmp eq i64 %i.arm, %n.vec1056
  br i1 %cmp.n1064, label %.loopexit735.i.i, label %.lr.ph858.i.i.preheader

.lr.ph858.i.i.preheader:                          ; preds = %iter.check1051, %vec.epilog.iter.check1053, %vec.epilog.middle.block1063
  %indvars.iv1050.i.i.ph = phi i64 [ %indvars.iv1029.i.i, %iter.check1051 ], [ %i.ayw, %vec.epilog.iter.check1053 ], [ %i.azh, %vec.epilog.middle.block1063 ] ; 4 uses
  %i.azm = sub i64 %i.b, %indvars.iv1050.i.i.ph
  %xtraiter2108 = and i64 %i.azm, 7               ; 2 uses
  %lcmp.mod2109.not = icmp eq i64 %xtraiter2108, 0
  br i1 %lcmp.mod2109.not, label %.lr.ph858.i.i.prol.loopexit, label %.lr.ph858.i.i.prol

.lr.ph858.i.i.prol:                               ; preds = %.lr.ph858.i.i.preheader, %.lr.ph858.i.i.prol
  %indvars.iv1050.i.i.prol = phi i64 [ %indvars.iv.next1051.i.i.prol, %.lr.ph858.i.i.prol ], [ %indvars.iv1050.i.i.ph, %.lr.ph858.i.i.preheader ] ; 2 uses
  %prol.iter2110 = phi i64 [ %prol.iter2110.next, %.lr.ph858.i.i.prol ], [ 0, %.lr.ph858.i.i.preheader ]
  %i.azn = mul nsw i64 %indvars.iv1050.i.i.prol, %i.ih
  %gep1219.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.azn ; 2 uses
  %i.azo = load double, ptr %gep1219.i.i.prol, align 8, !tbaa !12
  %i.azp = fmul reassoc nsz arcp contract afn double %i.azo, %i.asq
  store double %i.azp, ptr %gep1219.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.prol = add nsw i64 %indvars.iv1050.i.i.prol, 1 ; 2 uses
  %prol.iter2110.next = add i64 %prol.iter2110, 1 ; 2 uses
  %prol.iter2110.cmp.not = icmp eq i64 %prol.iter2110.next, %xtraiter2108
  br i1 %prol.iter2110.cmp.not, label %.lr.ph858.i.i.prol.loopexit, label %.lr.ph858.i.i.prol, !llvm.loop !107

.lr.ph858.i.i.prol.loopexit:                      ; preds = %.lr.ph858.i.i.prol, %.lr.ph858.i.i.preheader
  %indvars.iv1050.i.i.unr = phi i64 [ %indvars.iv1050.i.i.ph, %.lr.ph858.i.i.preheader ], [ %indvars.iv.next1051.i.i.prol, %.lr.ph858.i.i.prol ]
  %i.azq = sub i64 %indvars.iv1050.i.i.ph, %i.b
  %i.azr = icmp ugt i64 %i.azq, -8
  br i1 %i.azr, label %.loopexit735.i.i, label %.lr.ph858.i.i

.lr.ph858.i.i:                                    ; preds = %.lr.ph858.i.i.prol.loopexit, %.lr.ph858.i.i
  %indvars.iv1050.i.i = phi i64 [ %indvars.iv.next1051.i.i.7, %.lr.ph858.i.i ], [ %indvars.iv1050.i.i.unr, %.lr.ph858.i.i.prol.loopexit ] ; 9 uses
  %i.azs = mul nsw i64 %indvars.iv1050.i.i, %i.ih
  %gep1219.i.i = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.azs ; 2 uses
  %i.azt = load double, ptr %gep1219.i.i, align 8, !tbaa !12
  %i.azu = fmul reassoc nsz arcp contract afn double %i.azt, %i.asq
  store double %i.azu, ptr %gep1219.i.i, align 8, !tbaa !12
  %indvars.iv.next1051.i.i = add nsw i64 %indvars.iv1050.i.i, 1
  %i.azv = mul nsw i64 %indvars.iv.next1051.i.i, %i.ih
  %gep1219.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.azv ; 2 uses
  %i.azw = load double, ptr %gep1219.i.i.1, align 8, !tbaa !12
  %i.azx = fmul reassoc nsz arcp contract afn double %i.azw, %i.asq
  store double %i.azx, ptr %gep1219.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.1 = add nsw i64 %indvars.iv1050.i.i, 2
  %i.azy = mul nsw i64 %indvars.iv.next1051.i.i.1, %i.ih
  %gep1219.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.azy ; 2 uses
  %i.azz = load double, ptr %gep1219.i.i.2, align 8, !tbaa !12
  %i.baa = fmul reassoc nsz arcp contract afn double %i.azz, %i.asq
  store double %i.baa, ptr %gep1219.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.2 = add nsw i64 %indvars.iv1050.i.i, 3
  %i.bab = mul nsw i64 %indvars.iv.next1051.i.i.2, %i.ih
  %gep1219.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.bab ; 2 uses
  %i.bac = load double, ptr %gep1219.i.i.3, align 8, !tbaa !12
  %i.bad = fmul reassoc nsz arcp contract afn double %i.bac, %i.asq
  store double %i.bad, ptr %gep1219.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.3 = add nsw i64 %indvars.iv1050.i.i, 4
  %i.bae = mul nsw i64 %indvars.iv.next1051.i.i.3, %i.ih
  %gep1219.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.bae ; 2 uses
  %i.baf = load double, ptr %gep1219.i.i.4, align 8, !tbaa !12
  %i.bag = fmul reassoc nsz arcp contract afn double %i.baf, %i.asq
  store double %i.bag, ptr %gep1219.i.i.4, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.4 = add nsw i64 %indvars.iv1050.i.i, 5
  %i.bah = mul nsw i64 %indvars.iv.next1051.i.i.4, %i.ih
  %gep1219.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.bah ; 2 uses
  %i.bai = load double, ptr %gep1219.i.i.5, align 8, !tbaa !12
  %i.baj = fmul reassoc nsz arcp contract afn double %i.bai, %i.asq
  store double %i.baj, ptr %gep1219.i.i.5, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.5 = add nsw i64 %indvars.iv1050.i.i, 6
  %i.bak = mul nsw i64 %indvars.iv.next1051.i.i.5, %i.ih
  %gep1219.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.bak ; 2 uses
  %i.bal = load double, ptr %gep1219.i.i.6, align 8, !tbaa !12
  %i.bam = fmul reassoc nsz arcp contract afn double %i.bal, %i.asq
  store double %i.bam, ptr %gep1219.i.i.6, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.6 = add nsw i64 %indvars.iv1050.i.i, 7
  %i.ban = mul nsw i64 %indvars.iv.next1051.i.i.6, %i.ih
  %gep1219.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.ban ; 2 uses
  %i.bao = load double, ptr %gep1219.i.i.7, align 8, !tbaa !12
  %i.bap = fmul reassoc nsz arcp contract afn double %i.bao, %i.asq
  store double %i.bap, ptr %gep1219.i.i.7, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.7 = add nsw i64 %indvars.iv1050.i.i, 8 ; 2 uses
  %exitcond1054.not.i.i.7 = icmp eq i64 %indvars.iv.next1051.i.i.7, %i.b
  br i1 %exitcond1054.not.i.i.7, label %.loopexit735.i.i, label %.lr.ph858.i.i, !llvm.loop !108

.lr.ph843.i.i:                                    ; preds = %.lr.ph843.i.i.prol.loopexit, %.lr.ph843.i.i
  %indvars.iv1031.i.i = phi i64 [ %indvars.iv.next1032.i.i.7, %.lr.ph843.i.i ], [ %indvars.iv1031.i.i.unr, %.lr.ph843.i.i.prol.loopexit ] ; 9 uses
  %i.baq = mul nsw i64 %indvars.iv1031.i.i, %i.ih
  %gep1209.i.i = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.baq
  store double 0.000000e+00, ptr %gep1209.i.i, align 8, !tbaa !12
  %indvars.iv.next1032.i.i = add nsw i64 %indvars.iv1031.i.i, 1
  %i.bar = mul nsw i64 %indvars.iv.next1032.i.i, %i.ih
  %gep1209.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bar
  store double 0.000000e+00, ptr %gep1209.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.1 = add nsw i64 %indvars.iv1031.i.i, 2
  %i.bas = mul nsw i64 %indvars.iv.next1032.i.i.1, %i.ih
  %gep1209.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bas
  store double 0.000000e+00, ptr %gep1209.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.2 = add nsw i64 %indvars.iv1031.i.i, 3
  %i.bat = mul nsw i64 %indvars.iv.next1032.i.i.2, %i.ih
  %gep1209.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bat
  store double 0.000000e+00, ptr %gep1209.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.3 = add nsw i64 %indvars.iv1031.i.i, 4
  %i.bau = mul nsw i64 %indvars.iv.next1032.i.i.3, %i.ih
  %gep1209.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bau
  store double 0.000000e+00, ptr %gep1209.i.i.4, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.4 = add nsw i64 %indvars.iv1031.i.i, 5
  %i.bav = mul nsw i64 %indvars.iv.next1032.i.i.4, %i.ih
  %gep1209.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bav
  store double 0.000000e+00, ptr %gep1209.i.i.5, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.5 = add nsw i64 %indvars.iv1031.i.i, 6
  %i.baw = mul nsw i64 %indvars.iv.next1032.i.i.5, %i.ih
  %gep1209.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.baw
  store double 0.000000e+00, ptr %gep1209.i.i.6, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.6 = add nsw i64 %indvars.iv1031.i.i, 7
  %i.bax = mul nsw i64 %indvars.iv.next1032.i.i.6, %i.ih
  %gep1209.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bax
  store double 0.000000e+00, ptr %gep1209.i.i.7, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.7 = add nsw i64 %indvars.iv1031.i.i, 8 ; 2 uses
  %exitcond1035.not.i.i.7 = icmp eq i64 %indvars.iv.next1032.i.i.7, %i.b
  br i1 %exitcond1035.not.i.i.7, label %.loopexit735.i.i, label %.lr.ph843.i.i, !llvm.loop !109

.loopexit735.i.i:                                 ; preds = %.lr.ph843.i.i.prol.loopexit, %.lr.ph843.i.i, %.lr.ph858.i.i.prol.loopexit, %.lr.ph858.i.i, %middle.block1182, %vec.epilog.middle.block1195, %middle.block1047, %vec.epilog.middle.block1063, %.loopexit737.i.i, %.preheader738.i.i
  %i.bay = trunc nuw nsw i64 %indvars.iv1029.i.i to i32
  %i.baz = mul i32 %.0661700.i.i, %i.bay
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.bba ; 2 uses
  %i.bbc = load double, ptr %i.bbb, align 8, !tbaa !12
  %i.bbd = fadd reassoc nsz arcp contract afn double %i.bbc, 1.000000e+00
  store double %i.bbd, ptr %i.bbb, align 8, !tbaa !12
  %indvars.iv.next1056.i.i = add nuw nsw i64 %indvars.iv1055.i.i, 1 ; 2 uses
  %exitcond1061.not.i.i = icmp eq i64 %indvars.iv.next1056.i.i, %wide.trip.count990.i.i
  br i1 %exitcond1061.not.i.i, label %.preheader731.i.i, label %.preheader742.i.i

.preheader731.i.i:                                ; preds = %.loopexit735.i.i, %.thread721.i.i
  %indvar = phi i32 [ %indvar.next, %.thread721.i.i ], [ 0, %.loopexit735.i.i ] ; 2 uses
  %indvars.iv1098.i.i = phi i64 [ %indvars.iv.next1099.i.i, %.thread721.i.i ], [ %i.pe, %.loopexit735.i.i ] ; 12 uses
  %indvars.iv1074.i.i = phi i32 [ %indvars.iv.next1075.i.i, %.thread721.i.i ], [ %i.ox, %.loopexit735.i.i ] ; 2 uses
  %indvars119.i = trunc i64 %indvars.iv1098.i.i to i32 ; 4 uses
  %i.bbe = tail call i32 @llvm.smax.i32(i32 %indvars119.i, i32 1)
  %i.bbf = add nsw i32 %i.bbe, -1                 ; 3 uses
  %i.bbg = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %indvars.iv1098.i.i ; 2 uses
  %i.bbh = icmp eq i64 %indvars.iv1098.i.i, 0     ; 2 uses
  %i.bbi = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1098.i.i ; 3 uses
  %indvars.iv.next1099.i.i = add nsw i64 %indvars.iv1098.i.i, -1 ; 3 uses
  %i.bbj = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %indvars.iv.next1099.i.i
  %i.bbk = getelementptr inbounds [8 x i8], ptr %i.qr, i64 %indvars.iv.next1099.i.i
  %.pre.i.i = load double, ptr %i.bbg, align 8, !tbaa !12
  %i.bbl = zext nneg i32 %i.bbf to i64
  %i.bbm = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.bbl
  br label %.preheader730.i.i

.preheader730.i.i:                                ; preds = %._crit_edge897.i.i, %.preheader731.i.i
  %i.bbn = phi double [ %.pre.i.i, %.preheader731.i.i ], [ %.0679.lcssa.i.i, %._crit_edge897.i.i ] ; 6 uses
  %.0631900.i.i = phi i32 [ 0, %.preheader731.i.i ], [ %i.bnw, %._crit_edge897.i.i ] ; 2 uses
  %i.bbo = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bbn)
  %i.bbp = fadd reassoc nsz arcp contract afn double %i.bbo, %.0672..i.i
  %i.bbq = fcmp reassoc nsz arcp contract afn oeq double %i.bbp, %.0672..i.i ; 2 uses
  %or.cond706863.i.i = or i1 %i.bbh, %i.bbq
  br i1 %or.cond706863.i.i, label %._crit_edge866.i.i, label %.lr.ph865.i.preheader.i

.lr.ph865.i.preheader.i:                          ; preds = %.preheader730.i.i
  %i.bbr = load double, ptr %i.bbm, align 8, !tbaa !12
  %i.bbs = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bbr)
  %i.bbt = fadd reassoc nsz arcp contract afn double %i.bbs, %.0672..i.i
  %i.bbu = fcmp reassoc nsz arcp contract afn oeq double %i.bbt, %.0672..i.i
  br i1 %i.bbu, label %._crit_edge866.i.i, label %.lr.ph.i

.lr.ph865.i.i:                                    ; preds = %.lr.ph.i
  %i.bbv = zext nneg i32 %i.bcd to i64
  %i.bbw = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.bbv
  %i.bbx = load double, ptr %i.bbw, align 8, !tbaa !12
  %i.bby = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bbx)
  %i.bbz = fadd reassoc nsz arcp contract afn double %i.bby, %.0672..i.i
  %i.bca = fcmp reassoc nsz arcp contract afn oeq double %i.bbz, %.0672..i.i
  br i1 %i.bca, label %._crit_edge866.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph865.i.preheader.i, %.lr.ph865.i.i
  %indvars.iv1064.i75.i = phi i32 [ %i.bcb, %.lr.ph865.i.i ], [ %indvars119.i, %.lr.ph865.i.preheader.i ]
  %i.bcb = add i32 %indvars.iv1064.i75.i, -1      ; 6 uses
  %i.bcc = tail call i32 @llvm.smax.i32(i32 %i.bcb, i32 1)
  %i.bcd = add nsw i32 %i.bcc, -1                 ; 3 uses
  %i.bce = zext nneg i32 %i.bcb to i64            ; 3 uses
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.bce
  %i.bcg = load double, ptr %i.bcf, align 8, !tbaa !12
  %i.bch = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bcg)
  %i.bci = fadd reassoc nsz arcp contract afn double %i.bch, %.0672..i.i
  %i.bcj = fcmp reassoc nsz arcp contract afn oeq double %i.bci, %.0672..i.i ; 2 uses
  %i.bck = icmp eq i32 %i.bcb, 0
  %or.cond706.i.i = or i1 %i.bck, %i.bcj
  br i1 %or.cond706.i.i, label %._crit_edge866.i.i, label %.lr.ph865.i.i

._crit_edge866.i.i:                               ; preds = %.lr.ph.i, %.lr.ph865.i.i, %.lr.ph865.i.preheader.i, %.preheader730.i.i
  %.lcssa862.i.i = phi i64 [ %indvars.iv1098.i.i, %.preheader730.i.i ], [ %indvars.iv1098.i.i, %.lr.ph865.i.preheader.i ], [ %i.bce, %.lr.ph865.i.i ], [ %i.bce, %.lr.ph.i ] ; 2 uses
  %.2664.lcssa.i.i = phi i32 [ %indvars119.i, %.preheader730.i.i ], [ %indvars119.i, %.lr.ph865.i.preheader.i ], [ %i.bcb, %.lr.ph865.i.i ], [ %i.bcb, %.lr.ph.i ] ; 3 uses
  %.lcssa765.i.i = phi i32 [ %i.bbf, %.preheader730.i.i ], [ %i.bbf, %.lr.ph865.i.preheader.i ], [ %i.bcd, %.lr.ph865.i.i ], [ %i.bcd, %.lr.ph.i ]
  %.lcssa.i.i = phi i1 [ %i.bbq, %.preheader730.i.i ], [ false, %.lr.ph865.i.preheader.i ], [ %i.bcj, %.lr.ph.i ], [ false, %.lr.ph865.i.i ]
  %i.bcl = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %.lcssa862.i.i
  %i.bcm = sext i32 %.2664.lcssa.i.i to i64       ; 7 uses
  %.not880.i.i = icmp slt i64 %indvars.iv1098.i.i, %i.bcm
  %or.cond907.i.i = or i1 %.lcssa.i.i, %.not880.i.i
  br i1 %or.cond907.i.i, label %.loopexit729.i.i, label %.lr.ph884.preheader.i.i

.lr.ph884.preheader.i.i:                          ; preds = %._crit_edge866.i.i
  %i.bcn = zext i32 %.lcssa765.i.i to i64         ; 2 uses
  %invariant.gep1220.i.i = getelementptr [8 x i8], ptr %i.in, i64 %i.bcn ; 5 uses
  %i.bco = shl nuw nsw i64 %i.bcn, 3
  %scevgep1007 = getelementptr i8, ptr %scevgep1006.a, i64 %i.bco
  %i.bcp = shl nsw i64 %i.bcm, 3
  %scevgep1008 = getelementptr i8, ptr %i.in, i64 %i.bcp
  %i.bcq = add i32 %indvar, %.2664.lcssa.i.i
  %i.bcr = sub i32 %smin1011, %i.bcq
  %i.bcs = zext i32 %i.bcr to i64
  %i.bct = add nsw i64 %i.bcm, %i.bcs
  %i.bcu = shl nsw i64 %i.bct, 3
  %scevgep1012 = getelementptr i8, ptr %scevgep1009, i64 %i.bcu
  %bound0 = icmp ult ptr %invariant.gep1220.i.i, %scevgep1012
  %bound1 = icmp ult ptr %scevgep1008, %scevgep1007
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph884.i.i

.lr.ph884.i.i:                                    ; preds = %.loopexit728.i.i, %.lr.ph884.preheader.i.i
  %indvars.iv1071.i.i = phi i64 [ %i.bcm, %.lr.ph884.preheader.i.i ], [ %indvars.iv.next1072.i.i, %.loopexit728.i.i ] ; 4 uses
  %.6881.i.i = phi double [ 1.000000e+00, %.lr.ph884.preheader.i.i ], [ %.7.i.i, %.loopexit728.i.i ] ; 2 uses
  %i.bcv = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %indvars.iv1071.i.i
  %i.bcw = load double, ptr %i.bcv, align 8, !tbaa !12
  %i.bcx = fmul reassoc nsz arcp contract afn double %i.bcw, %.6881.i.i ; 2 uses
  %i.bcy = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bcx) ; 5 uses
  %i.bcz = fadd reassoc nsz arcp contract afn double %i.bcy, %.0672..i.i
  %i.bda = fcmp reassoc nsz arcp contract afn une double %i.bcz, %.0672..i.i
  br i1 %i.bda, label %bb.t, label %.loopexit728.i.i

bb.t:                                             ; preds = %.lr.ph884.i.i
  %i.bdb = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1071.i.i ; 2 uses
  %i.bdc = load double, ptr %i.bdb, align 8, !tbaa !12 ; 3 uses
  %i.bdd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bdc) ; 4 uses
  %i.bde = fcmp reassoc nsz arcp contract afn ogt double %i.bcy, %i.bdd
  br i1 %i.bde, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bdf = fdiv reassoc nsz arcp contract afn double %i.bdd, %i.bcy ; 2 uses
  %i.bdg = fmul reassoc nsz arcp contract afn double %i.bdf, %i.bdf
  %i.bdh = fadd reassoc nsz arcp contract afn double %i.bdg, 1.000000e+00
  %i.bdi = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bdh)
  %i.bdj = fmul reassoc nsz arcp contract afn double %i.bdi, %i.bcy
  br label %PYTHAG.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.bdk = fcmp reassoc nsz arcp contract afn ueq double %i.bdc, 0.000000e+00
  br i1 %i.bdk, label %PYTHAG.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bdl = fdiv reassoc nsz arcp contract afn double %i.bcy, %i.bdd ; 2 uses
  %i.bdm = fmul reassoc nsz arcp contract afn double %i.bdl, %i.bdl
  %i.bdn = fadd reassoc nsz arcp contract afn double %i.bdm, 1.000000e+00
  %i.bdo = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bdn)
  %i.bdp = fmul reassoc nsz arcp contract afn double %i.bdo, %i.bdd
  br label %PYTHAG.exit.i.i

PYTHAG.exit.i.i:                                  ; preds = %bb.w, %bb.v, %bb.u
  %.0.i.i.i = phi nsz double [ %i.bdj, %bb.u ], [ %i.bdp, %bb.w ], [ 0.000000e+00, %bb.v ] ; 2 uses
  store double %.0.i.i.i, ptr %i.bdb, align 8, !tbaa !12
  %i.bdq = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.0.i.i.i ; 2 uses
  %i.bdr = fmul reassoc nsz arcp contract afn double %i.bdq, %i.bdc ; 7 uses
  %i.bds = fneg reassoc nsz arcp contract afn double %i.bcx
  %i.bdt = fmul reassoc nsz arcp contract afn double %i.bdq, %i.bds ; 10 uses
  %invariant.gep1222.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1071.i.i ; 4 uses
  %or.cond1941.not = xor i1 %or.cond1941, true
  %brmerge2251 = select i1 %or.cond1941.not, i1 true, i1 %found.conflict
  br i1 %brmerge2251, label %.lr.ph879.i.i.preheader, label %vector.ph1014

vector.ph1014:                                    ; preds = %PYTHAG.exit.i.i
  %broadcast.splatinsert1016.a = insertelement <4 x double> poison, double %i.bdr, i64 0
  %broadcast.splat1017.a = shufflevector <4 x double> %broadcast.splatinsert1016.a, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1018 = insertelement <4 x double> poison, double %i.bdt, i64 0
  %broadcast.splat1019 = shufflevector <4 x double> %broadcast.splatinsert1018, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %vector.ph1014
  %index1021 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1026, %vector.body1020 ] ; 3 uses
  %i.bdu = getelementptr [8 x i8], ptr %invariant.gep1220.i.i, i64 %index1021 ; 3 uses
  %i.bdv = getelementptr i8, ptr %i.bdu, i64 32   ; 2 uses
  %wide.load1022.a = load <4 x double>, ptr %i.bdu, align 8, !tbaa !12, !alias.scope !110, !noalias !113 ; 2 uses
  %wide.load1023.a = load <4 x double>, ptr %i.bdv, align 8, !tbaa !12, !alias.scope !110, !noalias !113 ; 2 uses
  %i.bdw = getelementptr [8 x i8], ptr %invariant.gep1222.i.i, i64 %index1021 ; 3 uses
  %i.bdx = getelementptr i8, ptr %i.bdw, i64 32   ; 2 uses
  %wide.load1024 = load <4 x double>, ptr %i.bdw, align 8, !tbaa !12, !alias.scope !113 ; 2 uses
  %wide.load1025 = load <4 x double>, ptr %i.bdx, align 8, !tbaa !12, !alias.scope !113 ; 2 uses
  %i.bdy = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1022.a, %broadcast.splat1017.a
  %i.bdz = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1023.a, %broadcast.splat1017.a
  %i.bea = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1024, %broadcast.splat1019
  %i.beb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1025, %broadcast.splat1019
  %i.bec = fadd reassoc nsz arcp contract afn <4 x double> %i.bea, %i.bdy
  %i.bed = fadd reassoc nsz arcp contract afn <4 x double> %i.beb, %i.bdz
  store <4 x double> %i.bec, ptr %i.bdu, align 8, !tbaa !12, !alias.scope !110, !noalias !113
  store <4 x double> %i.bed, ptr %i.bdv, align 8, !tbaa !12, !alias.scope !110, !noalias !113
  %i.bee = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1024, %broadcast.splat1017.a
  %i.bef = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1025, %broadcast.splat1017.a
  %i.beg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1022.a, %broadcast.splat1019
  %i.beh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1023.a, %broadcast.splat1019
  %i.bei = fsub reassoc nsz arcp contract afn <4 x double> %i.bee, %i.beg
  %i.bej = fsub reassoc nsz arcp contract afn <4 x double> %i.bef, %i.beh
  store <4 x double> %i.bei, ptr %i.bdw, align 8, !tbaa !12, !alias.scope !113
  store <4 x double> %i.bej, ptr %i.bdx, align 8, !tbaa !12, !alias.scope !113
  %index.next1026 = add nuw i64 %index1021, 8     ; 2 uses
  %i.bek = icmp eq i64 %index.next1026, %n.vec1015
  br i1 %i.bek, label %middle.block1027, label %vector.body1020, !llvm.loop !115

middle.block1027:                                 ; preds = %vector.body1020
  br i1 %cmp.n1028, label %.loopexit728.i.i, label %.lr.ph879.i.i.preheader

.lr.ph879.i.i.preheader:                          ; preds = %PYTHAG.exit.i.i, %middle.block1027
  %indvars.iv1066.i.i.ph = phi i64 [ %n.vec1015, %middle.block1027 ], [ 0, %PYTHAG.exit.i.i ] ; 4 uses
  br i1 %lcmp.mod2112.not, label %.lr.ph879.i.i.prol.loopexit, label %.lr.ph879.i.i.prol

.lr.ph879.i.i.prol:                               ; preds = %.lr.ph879.i.i.preheader
  %i.bel = mul nsw i64 %indvars.iv1066.i.i.ph, %i.ih ; 2 uses
  %gep1221.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1220.i.i, i64 %i.bel ; 2 uses
  %i.bem = load double, ptr %gep1221.i.i.prol, align 8, !tbaa !12 ; 2 uses
  %gep1223.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1222.i.i, i64 %i.bel ; 2 uses
  %i.ben = load double, ptr %gep1223.i.i.prol, align 8, !tbaa !12 ; 2 uses
  %i.beo = fmul reassoc nsz arcp contract afn double %i.bem, %i.bdr
  %i.bep = fmul reassoc nsz arcp contract afn double %i.ben, %i.bdt
end_hunk_1
